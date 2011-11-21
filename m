Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B079CE00306
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 08:40:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pALGdxX4002927
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 08:39:59 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 21 Nov 2011 08:39:58 -0800
Message-ID: <4ECA7EDD.3080702@windriver.com>
Date: Mon, 21 Nov 2011 10:39:57 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAMRMzCCzyoJp3JBk94hxmH8tpaAuACCedZnhYPWC6+7=nDqAOw@mail.gmail.com>
	<CAMKF1srwodrwuUUt4aL5paOEkk=Omiz4UwWUR03Ar51wOXcfmQ@mail.gmail.com>
	<CAMRMzCAG2Z_Y-494o-9UNkVp7ykyKpXZHr+x0hyduUOzFQ7gYQ@mail.gmail.com>
In-Reply-To: <CAMRMzCAG2Z_Y-494o-9UNkVp7ykyKpXZHr+x0hyduUOzFQ7gYQ@mail.gmail.com>
Subject: Re: Adding line to ld.so.conf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 Nov 2011 16:40:01 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/21/11 10:17 AM, Marc Ferland wrote:
> On Mon, Nov 21, 2011 at 11:04 AM, Khem Raj <raj.khem@gmail.com
> <mailto:raj.khem@gmail.com>> wrote:
>
>     On Mon, Nov 21, 2011 at 7:35 AM, Marc Ferland <marc.ferland@gmail.com
>     <mailto:marc.ferland@gmail.com>> wrote:
>      > Hi,
>      >
>      > What's the proper way to add a line to the ld.so.conf file for a new library
>      > I am adding?
>      >
>
>     if the libraries is in standard paths you dont have to add it but if
>     its in a special path
>     then just add the absolute path to the library e.g. /opt/lib if your
>     library is in /opt/lib
>     and then run ldconfig
>
>
> What I meant was how to do it in a recipe file. I don't want to modify
> ld.so.conf and run ldconfig each time I create a new image.

There are issues with playing with ld.so.conf when doing a cross image 
generation.  ldconfig doesn't always work during the rootfs process, most people 
don't notice since it's simply not necessary to be run in most cases!

Lets assume for a minute that it does work in all cases.. (I'll explain a better 
solution in a bit.)

You would want a post install script that:

checks to see if the ld.so.conf already contains the line you need, if it does 
NOT, you would then add the line to the ld.so.conf file.  Then you would run 
ldconfig within the post install script -- if you are not doing a cross install. 
  (Cross installs automatically attempt to run ldconfig.)

Something like...

grep -q /opt/lib ${D}/etc/ld.so.conf || echo /opt/lib >> /etc/ld.so.conf

if [ -z "${D}" ]; then
  ldconfig
fi


The above may work in your local projects, but will likely be rejected from 
submissions to the upstream project as being too fragile.

.....

But there is a better way to do this and avoid using ldconfig.  ldconfig was 
designed to be an optimization, but instead it's turned into a hack to cover up 
mistakes.  It's primary use seems to be to cover up when people forget to create 
symlinks and/or don't specify an SONAME within a library.  The secondary use is 
to add library information for libraries residing in non-standard locations... 
and the tertiary use is to simplify the lookup of the packages to avoid 
iterating over a filesystem.

Instead of using ldconfig, inform the application on the locations of the 
non-standard items.  This will then add them to the search path and ldconfig 
will no longer be necessary for a functional system, and instead become the 
optimization it was originally designed to be.

One way to do this, when you are repackaging something you didn't create and 
only have the binaries for, is to create a wrapper script that sets 
"LD_LIBRARY_PATH=<path to library>" and then executes the action binary..

or

If you are doing the compilation, use a built-in RPATH to specify where your 
application libraries exist.  See: http://itee.uq.edu.au/~daniel/using_origin/ 
for a good explanation of what to pass to the linker and how to use "$ORIGIN" to 
make it easier -- and your application relocatable on the target.  But in short 
you hard-code at compile time the location of your libraries based on the 
location of your executables.

--Mark

> Regards,
>
> Marc
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


