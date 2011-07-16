Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9AE374C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 19:20:42 -0500 (CDT)
Received: from mail-gy0-f180.google.com ([209.85.160.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 15 Jul 2011 17:20:41 -0700
Received: by gyg4 with SMTP id 4so766892gyg.25
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 17:20:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.184.33 with SMTP id r21mr5221797yhm.11.1310775641200; Fri,
	15 Jul 2011 17:20:41 -0700 (PDT)
Received: by 10.236.108.9 with HTTP; Fri, 15 Jul 2011 17:20:41 -0700 (PDT)
In-Reply-To: <1310775031.2309.16.camel@scimitar>
References: <888DA70AE496A645A106B23AEC7F2A99B465F1B7@irsmsx505.ger.corp.intel.com>
	<1310775031.2309.16.camel@scimitar>
Date: Fri, 15 Jul 2011 17:20:41 -0700
Message-ID: <CAPhnLPCXjGgqWDyv_GBowZX2LDzeq3WRH8gLgYYcOzh-3+7YDg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: mark.d.gray@intel.com, yocto@yoctoproject.org
Subject: Re: yocto build fails
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
X-List-Received-Date: Sat, 16 Jul 2011 00:20:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 15, 2011 at 5:10 PM, Joshua Lock <josh@linux.intel.com> wrote:
> On Fri, 2011-07-15 at 11:44 +0100, Gray, Mark D wrote:
> This would lead me to make a guess at your proxy settings not being
> configured correctly for git with nc.
>
>
>> On closer inspection, the file
>> http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux=
-yocto-2.6.37.tar.gz is unavailable in the repo. I did a search and I could=
 only find http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.o=
rg.linux-yocto-2.6.37.tar.gz.bad
>>
>
> Looks like we have a bad mirrored tarball. :-/

I had blown the tarball away yesterday working on bug #1207. The rsync
should have run by now to pull it back up but for some reason, hasn't.
I'll look at this on Monday but in the meantime, i've forced the
rsync.

-b

