Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97158E014AD
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 19:41:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r3B2fjQ5002953
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 10 Apr 2013 19:41:45 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.74) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Wed, 10 Apr 2013 19:41:44 -0700
Message-ID: <516622E7.90509@windriver.com>
Date: Wed, 10 Apr 2013 22:41:43 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Trevor Woerner <twoerner@gmail.com>
References: <CAPhnLPAmLKbfehcGK3NPZFbNCja6H3TG=Y9q9r=A1PsjURy4gg@mail.gmail.com>
	<CAHUNapTQhQNb+DRf7Z6HvtcQmQ+Jo2jtJiqKt8u6frUEvM-UaQ@mail.gmail.com>
In-Reply-To: <CAHUNapTQhQNb+DRf7Z6HvtcQmQ+Jo2jtJiqKt8u6frUEvM-UaQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.4_M6.rc1 started
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Apr 2013 02:41:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-10 10:34 PM, Trevor Woerner wrote:
> On Wed, Apr 10, 2013 at 6:48 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com>  wrote:
>> Our first release candidate for dylan has been started.
>>
>> Repo               Branch      Hash
>> poky                dylan         adb63ca02348af72a30cef2f20de2234b74a7200
>
> I did a little bit of my own ad-hoc testing and wanted to share my
> results. Maybe others could give it a try and see if they come up with
> the same?
>
> Checking out the dylan branch of poky I just wanted to perform a
> simple "bitbake console-image-minimal" for each of the supported qemu
> targets, run the resulting image under qemu, log in as root, and run
> "uname -a".
>
> Here are my results:
>
> qemux86
>          bitbake core-image-minimal
>                  - okay
>          runqemu qemux86
>                  - okay
>
> qemuarm
>          bitbake core-image-minimal
>                  - okay
>          runqemu qemuarm
>                  - segfault
>
> qemumips
>          bitbake core-image-minimal
>                  - okay
>          runqemu qemumips
>                  - couldn't log in on main terminal
>                  - but could log in using Ctrl+Alt+3 terminal

Fixed. A few hours ago.

>
> qemuppc
>          bitbake core-image-minimal
>                  - okay
>          runqemu qemuppc
>                  - okay
>
> qemux86-64
>          bitbake core-image-minimal
>                  - okay
>          runqemu qemux86-64
>                  - okay
>
> I have attached a png of my qemuarm output. Right now I'm deleting its
> tmp directory and trying again.

Known problem. And I've got a fix already tested and on it's way to
Richard.

Cheers,

Bruce

>
> Next I want to try a "bitbake world" of all the targets to see whether
> they can all succeed (they did a couple commits ago).
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


