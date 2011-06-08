Return-Path: <daryl.spitzer@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C99B4C80334
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2011 08:48:51 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxa37 with SMTP id 37so561744vxa.35
	for <yocto@yoctoproject.org>; Wed, 08 Jun 2011 06:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=DxvDoowqgW7elXahL99K9me+6i1qR1FPDpMQibLHA8Y=;
	b=eyY6LAr7fIhXKtDfnPJ5mAHGCnrVXeX0Cvw+DQKs+GLzdpFm3ZWGjyKBOTkhaGaIEx
	qAqvjIPP47ALpuqBNubQ1aeFNz7+02o1rJxhM+6lCQt2MTI8rNrzZpb1A+aEoRnzHDN+
	BTatcXGQhOV5mEh9FOXgmYfaWX4AUz0BkB09U=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=ES4DwBgvrFP0ZZ5i6VujidzlPcXAD31+fr5X6m2bDcwErhNqbP1aOE5OmWHVUEolCH
	x2Ag+z4G4i+0E3EVMlTa0Y/ZWS/3Kas4zBDVheWDXxtA0Epbq37RomX+KNT2GE75Q/1T
	3HkMfqmwpRguXTde/kPPRWXgPZVukKS9sVU+U=
Received: by 10.52.181.99 with SMTP id dv3mr1321167vdc.14.1307540931112; Wed,
	08 Jun 2011 06:48:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.169.225 with HTTP; Wed, 8 Jun 2011 06:48:11 -0700 (PDT)
In-Reply-To: <4DEF5A32.3060109@mlbassoc.com>
References: <BANLkTikOugs9Yi93zVgMe0vhizJfBN3ZaA@mail.gmail.com>
	<1307507940.2123.9.camel@scimitar> <4DEF5A32.3060109@mlbassoc.com>
From: Daryl Spitzer <daryl.spitzer@gmail.com>
Date: Wed, 8 Jun 2011 06:48:11 -0700
Message-ID: <BANLkTimg3S5E45Lrb+QHCUaWC2FxNLV3RA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: undefined reference to `pthread_getspecific' in perl-native_5.12.2.bb task do_compile?
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
X-List-Received-Date: Wed, 08 Jun 2011 13:48:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

>>> Does this look familiar? =A0Why would I be getting these errors when
>>> following the Yocto Project Quick Start instructions, without changes?
>>> =A0Did I miss something?
>>
>> It does not. However this is when trying to build perl-native, i.e. Poky
>> is trying to build its own version of Perl but linked against your
>> system libraries etc and is unable to find some pthread functions to
>> link to.
>>
>> Can you tell us which distribution/version combination you are using?
>>
>> Could be that we need to patch perl-native to -lpthread ?
>
> Is your host Ubuntu 11.04 on x86 (not x86_64)? =A0There was a patch for t=
his
> that I'm not sure got back ported into Bernard.

Oops.  I forgot to provide those details...

My host is Ubuntu 11.04 64 bit:

$ cat /etc/lsb-release
DISTRIB_ID=3DUbuntu
DISTRIB_RELEASE=3D11.04
DISTRIB_CODENAME=3Dnatty
DISTRIB_DESCRIPTION=3D"Ubuntu 11.04"
$ uname -m
x86_64

I ran `wget http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar=
.bz2`
(as directed in the Yocto Project Quick Start).  Does that 5.0
correspond to Yocto Project 1.0.1?

I found http://bit.ly/lzyY5b (an email on the gumstix-users mailing
list, archived on old.nabble.com), which appears to be the same
problem.  I ran:

$ sudo apt-get install pthread*
Reading package lists... Done
Building dependency tree
Reading state information... Done
Note, selecting 'libpthread-stubs0' for regex 'pthread*'
Note, selecting 'libpthread-stubs0-dev' for regex 'pthread*'
libpthread-stubs0 is already the newest version.
libpthread-stubs0 set to manually installed.
libpthread-stubs0-dev is already the newest version.
libpthread-stubs0-dev set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

I'll read through the rest of that thread to see if can find a
solution.  But I thought I'd send this information off in case it
triggers someone to suggest a solution specific to the Yocto Project.

--
Daryl


On Wed, Jun 8, 2011 at 4:17 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 06/07/2011 10:38 PM, Joshua Lock wrote:
>>
>> On Tue, 2011-06-07 at 19:41 -0700, Daryl Spitzer wrote:
>>>
>>> The good news is that following the instructions in
>>> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
>>> seems to have solved my proxy problems. =A0But unfortunately I'm gettin=
g
>>> errors after running `bitbake -k poky-image-sato`, following the
>>> "Building an Image" instructions in the Yocto Project Quick Start. =A0(=
I
>>> didn't make any changes to the conf/local.conf file generated by
>>> `source poky-bernard-5.0/poky-init-build-env poky-5.0-build`, except
>>> to add the CVS setup lines as directed in the
>>> Working_Behind_a_Network_Proxy wiki page.) =A0When I repeat `bitbake -k
>>> poky-image-sato` I believe I get the same results.
>>>
>>> Here's the output, up to and including the first error:
>>>
>>>
>>> Loading cache...done.
>>> Loaded 980 entries from dependency cache.
>>> Parsing recipes...done.
>>> Parsing of 783 .bb files complete (772 cached, 11 parsed). 991
>>> targets, 11 skipped, 0 masked, 0 errors.
>>>
>>> OE Build Configuration:
>>> BB_VERSION =A0 =A0 =A0 =A0=3D "1.11.0"
>>> METADATA_BRANCH =A0 =3D "<unknown>"
>>> METADATA_REVISION =3D "<unknown>"
>>> TARGET_ARCH =A0 =A0 =A0 =3D "i586"
>>> TARGET_OS =A0 =A0 =A0 =A0 =3D "linux"
>>> MACHINE =A0 =A0 =A0 =A0 =A0 =3D "qemux86"
>>> DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D "poky"
>>> DISTRO_VERSION =A0 =A0=3D "1.0"
>>> TARGET_FPU =A0 =A0 =A0 =A0=3D ""
>>>
>>> NOTE: Resolving any missing task queue dependencies
>>> NOTE: Preparing runqueue
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> NOTE: Running task 632 of 4961 (ID: 387,
>>>
>>> /home/daryls/yocto/poky-bernard-5.0/meta/recipes-devtools/perl/perl-nat=
ive_5.12.2.bb,
>>> do_compile)
>>> NOTE: package perl-native-5.12.2-r7: task do_compile: Started
>>> ERROR: Function 'do_compile' failed (see
>>>
>>> /home/daryls/yocto/poky-5.0-build/tmp/work/x86_64-linux/perl-native-5.1=
2.2-r7/temp/log.do_compile.27994
>>> for further information)
>>> ...
>>>
>>> ----------
>>>
>>> And here's the head of log.do_compile.27994:
>>>
>>>
>>> OTE: make -e MAKEFLAGS=3D
>>> gcc -L/home/daryls/yocto/poky-5.0-build/tmp/sysroots/x86_64-linux/usr/l=
ib
>>>
>>> -Wl,-rpath-link,/home/daryls/yocto/poky-5.0-build/tmp/sysroots/x86_64-l=
inux/usr/lib
>>>
>>> -Wl,-rpath,/home/daryls/yocto/poky-5.0-build/tmp/sysroots/x86_64-linux/=
usr/lib
>>> -Wl,-O1 -fstack-protector -L/usr/local/lib -o miniperl \
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0gv.o toke.o perly.o pad.o regcomp.o dump.o u=
til.o mg.o
>>> reentr.o
>>> mro.o hv.o av.o run.o pp_hot.o sv.o pp.o scope.o pp_ctl.o pp_sys.o
>>> doop.o doio.o regexec.o utf8.o taint.o deb.o universal.o globals.o
>>> perlio.o perlapi.o numeric.o mathoms.o locale.o pp_pack.o pp_sort.o
>>> \
>>> =A0 =A0 =A0 =A0 =A0 =A0miniperlmain.o opmini.o perlmini.o
>>> util.o: In function `Perl_safesysmalloc':
>>> util.c:(.text+0x558): undefined reference to `pthread_getspecific'
>>> util.o: In function `Perl_safesysrealloc':
>>> util.c:(.text+0x5f0): undefined reference to `pthread_getspecific'
>>> util.o: In function `Perl_croak_nocontext':
>>> util.c:(.text+0x19b6): undefined reference to `pthread_getspecific'
>>>
>>> ----------
>>>
>>> Does this look familiar? =A0Why would I be getting these errors when
>>> following the Yocto Project Quick Start instructions, without changes?
>>> =A0Did I miss something?
>>
>> It does not. However this is when trying to build perl-native, i.e. Poky
>> is trying to build its own version of Perl but linked against your
>> system libraries etc and is unable to find some pthread functions to
>> link to.
>>
>> Can you tell us which distribution/version combination you are using?
>>
>> Could be that we need to patch perl-native to -lpthread ?
>
> Is your host Ubuntu 11.04 on x86 (not x86_64)? =A0There was a patch for t=
his
> that I'm not sure got back ported into Bernard.
>
> --
> ------------------------------------------------------------
> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
> ------------------------------------------------------------
>

