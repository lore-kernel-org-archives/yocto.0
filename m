Return-Path: <mlabernathy80@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ACADE01460
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2012 02:40:54 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so10739099ghb.35
	for <yocto@yoctoproject.org>; Sun, 08 Jul 2012 02:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=7iNZ0UmhdahlN9EporOSTx9WlJOOxH1iimCVNoZloF4=;
	b=vhfldNh3Lbmer8CgI2gUnmbr1prTCeAxwkmRe2u+W1Dt40wF1BcevOD5anwZgEp+pM
	P/JgeekX/1WzrtuHmfAQnRFgYHItwj/fxHClPo3gRnMRlVqdvkrpYUf7E2D4sZ8G69qd
	GDTZ5vJc8mkCnAz3cKoeOGUaVw97ITLbmc9cWBQng5fPLwe8zKnrYAdhaXQAz0I8zgy5
	THBzDjR4ufw0wMaULjk9L/xozV6cjkmCL43vw/e+vcb+9ccgrSJRe6j5kxjXhV0xKA1B
	KyruQoj5uUSE6XrhLlDUhRL6xowts/JyJfgwfzU8txCam2YqrO5TbrOzwcN15LPB94z4
	1iLg==
Received: by 10.100.238.17 with SMTP id l17mr4146665anh.62.1341740453783;
	Sun, 08 Jul 2012 02:40:53 -0700 (PDT)
Received: from [10.0.1.22] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id g22sm57202966yhh.20.2012.07.08.02.40.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 08 Jul 2012 02:40:52 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: James Abernathy <mlabernathy80@gmail.com>
In-Reply-To: <1341726397.6761.186.camel@trz-ThinkPad-T420>
Date: Sun, 8 Jul 2012 05:40:50 -0400
Message-Id: <A66F2EE0-B26E-48CE-BA00-632040B0FBFF@gmail.com>
References: <4FF85CF1.6040900@gmail.com>
	<1341680880.6761.162.camel@trz-ThinkPad-T420>
	<1341726397.6761.186.camel@trz-ThinkPad-T420>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Mailer: Apple Mail (2.1278)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build failure on denzil-7.0 n450 part 2
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
X-List-Received-Date: Sun, 08 Jul 2012 09:40:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 8, 2012, at 1:46 AM, Tom Zanussi wrote:

> On Sat, 2012-07-07 at 12:08 -0500, Tom Zanussi wrote:
>> On Sat, 2012-07-07 at 11:59 -0400, jfabernathy wrote:
>>> Since I started over on my build from the long thread on this =
subject, I=20
>>> thought I'd start another thread on the issue.
>>>=20
>>> I took the tarball for poky-denzil-7.0 and extracted it into my home=20=

>>> directory.  After cd'ing into poky-denzil-7.0, I extracted the=20
>>> n450-denzil-7.0 tarball.
>>>=20
>>> I setup to run a standard default n450 core-image-sato, only =
changing=20
>>> the linux-yocto_3.2.bbappend by adding in:
>>>=20
>>> SRCREV_machine_pn-linux-yocto_n450 =3D=20
>>> "9d32bb075e349cc69c7af42b60f6715c5d8c972e"
>>> SRCREV_meta_pn-linux-yocto_n450 ?=3D=20
>>> "ee78519365bdb25287703bbc31c06b193263c654"
>>>=20
>>> I still get build errors similar to the ones I got with the git=20
>>> repository cloned poky.  Log file below:
>>>=20
>>>=20
>>> NOTE: make -C=20
>>> =
/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee7851=
9365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c9=
72e-r1/linux/tools/perf=20
>>> CC=3Di586-poky-linux-gcc  -m32    -march=3Dcore2 -msse3 =
-mtune=3Dgeneric=20
>>> -mfpmath=3Dsse --sysroot=3D/build/n450-denzil/tmp/sysroots/n450=20
>>> LD=3Di586-poky-linux-ld =
--sysroot=3D/build/n450-denzil/tmp/sysroots/n450  =20
>>> prefix=3D/usr NO_NEWT=3D1 NO_DWARF=3D1
>>> make: Entering directory=20
>>> =
`/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee785=
19365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c=
972e-r1/linux/tools/perf'
>>> Makefile:493: libperl not found, disables Perl scripting support. =
Please=20
>>> install libperl-dev or perl-devel
>>> PERF_VERSION =3D 3.2.11.629.g382eda3
>>> make: Leaving directory=20
>>> =
`/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee785=
19365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c=
972e-r1/linux/tools/perf'
>>> make: Entering directory=20
>>> =
`/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee785=
19365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c=
972e-r1/linux/tools/perf'
>>> Makefile:493: libperl not found, disables Perl scripting support. =
Please=20
>>> install libperl-dev or perl-devel
>>=20
>>=20
>> Yeah, you're still getting the new kernel commits, though you =
shouldn't
>> be, I'll try the same thing here...
>>=20
>=20
> I tried the same thing here, poky denzil and n450 denzil and it built
> fine with no changes at all.
>=20
> Somehow your setup is causing the last SRCREVS to be picked up instead
> of what should be - since n450 specifies no SRCREVs, the default =
SRCREVs
> from linux-yocto_3.2.bb should be getting picked up, and you should =
see
> those in the build directory name for the kernel as well:
>=20
> recipes-kernel/linux/linux-yocto_3.2.bb:SRCREV_meta ?=3D =
"b14a08f5c7b469a5077c10942f4e1aec171faa9d"
> recipes-kernel/linux/linux-yocto_3.2.bb:SRCREV_machine ?=3D =
"01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a"
>=20
> =
build/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077=
c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1
>=20
> Since the default SRCREVs use ?=3D to assign, the likely problem is =
that
> you already have them assigned to something else before those.
>=20
> Tom =20
>=20
Well, that is strange.  Before I started I deleted the /build directory, =
so there are no previous build on the computer. I deleted the common =
download area, so there are no previous downloads.  I started with the =
BSP tarballs for poky denzil and n450 denzil. =20

Not sure where it could be getting assigned. I'm using Ubuntu 12.04.

Jim A


>> Tom
>>=20
>>>     GEN common-cmds.h
>>>     * new build flags or prefix
>>>     CC perf.o
>>>     CC builtin-annotate.o
>>>     CC builtin-bench.o
>>>     CC bench/sched-messaging.o
>>>     CC bench/sched-pipe.o
>>>     CC bench/mem-memcpy.o
>>>     CC builtin-diff.o
>>>     CC builtin-evlist.o
>>>     CC builtin-help.o
>>>     CC builtin-sched.o
>>>     CC builtin-buildid-list.o
>>>     CC builtin-buildid-cache.o
>>>     CC builtin-list.o
>>>     CC builtin-record.o
>>>     CC builtin-report.o
>>>     CC builtin-stat.o
>>>     CC builtin-timechart.o
>>>     CC builtin-top.o
>>>     CC builtin-script.o
>>>     CC builtin-probe.o
>>>     CC builtin-kmem.o
>>>     CC builtin-lock.o
>>>     CC builtin-kvm.o
>>>     CC builtin-test.o
>>>     CC builtin-inject.o
>>>     CC util/abspath.o
>>>     CC util/alias.o
>>>     CC util/annotate.o
>>>     CC util/build-id.o
>>>     CC util/config.o
>>>     CC util/ctype.o
>>>     CC util/debugfs.o
>>>     CC util/environment.o
>>>     CC util/event.o
>>>     CC util/evlist.o
>>>     CC util/evsel.o
>>>     CC util/exec_cmd.o
>>>     CC util/help.o
>>>     CC util/levenshtein.o
>>>     CC util/parse-options.o
>>>     CC util/parse-events.o
>>>     CC util/path.o
>>>     CC util/rbtree.o
>>>     CC util/bitmap.o
>>>     CC util/hweight.o
>>>     CC util/run-command.o
>>>     CC util/quote.o
>>>     CC util/strbuf.o
>>>     CC util/string.o
>>>     CC util/strlist.o
>>>     CC util/strfilter.o
>>>     CC util/top.o
>>>     CC util/usage.o
>>>     CC util/wrapper.o
>>>     CC util/sigchain.o
>>>     CC util/symbol.o
>>>     CC util/color.o
>>>     CC util/pager.o
>>>     CC util/header.o
>>>     CC util/callchain.o
>>>     CC util/values.o
>>>     CC util/debug.o
>>>     CC util/map.o
>>>     CC util/pstack.o
>>>     CC util/session.o
>>>     CC util/thread.o
>>>     CC util/thread_map.o
>>>     CC util/trace-event-parse.o
>>>     CC util/trace-event-read.o
>>>     CC util/trace-event-info.o
>>>     CC util/trace-event-scripting.o
>>>     CC util/svghelper.o
>>>     CC util/sort.o
>>>     CC util/hist.o
>>>     CC util/probe-event.o
>>>     CC util/util.o
>>>     CC util/xyarray.o
>>>     CC util/cpumap.o
>>>     CC util/cgroup.o
>>>     CC arch/x86/util/header.o
>>>     CC util/scripting-engines/trace-event-python.o
>>>     CC scripts/python/Perf-Trace-Util/Context.o
>>>     AR libperf.a
>>>     LINK perf
>>>     GEN perf-archive
>>>     GEN python/perf.so
>>> Traceback (most recent call last):
>>>   File "util/setup.py", line 6, in <module>
>>>     from distutils.command.build_ext   import build_ext   as =
_build_ext
>>>   File=20
>>> =
"/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/=
command/build_ext.py",=20
>>> line 16, in <module>
>>>     from distutils.sysconfig import customize_compiler, =
get_python_version
>>>   File=20
>>> =
"/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/=
sysconfig.py",=20
>>> line 22, in <module>
>>>     PREFIX =3D os.path.normpath(sys.prefix).replace(=20
>>> os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )
>>> TypeError: expected a character buffer object
>>> cp: cannot stat `python_ext_build/lib/perf.so': No such file or =
directory
>>> make: *** [python/perf.so] Error 1
>>> make: Leaving directory `/build/n450-denziERROR: Function failed:=20
>>> do_compile_perf (see=20
>>> =
/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee7851=
9365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c9=
72e-r1/temp/log.do_compile_perf.11461=20
>>> for further information)
>>> =
l/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bb=
c31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/linux/tool=
s/perf'
>>> ERROR: oe_runmake failed
>>>=20
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>=20
>=20


