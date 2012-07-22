Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74E60E00349
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 19:22:54 -0700 (PDT)
Received: by qabg27 with SMTP id g27so742815qab.14
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 19:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=x6X4aGIHBcLwhudTbyw2nJ6YMLXCdRrR3UfouWucxbM=;
	b=Dz8ac6hmXUxz2oTuSHFIwU+DIxWPdheQ9SIWEj+jr/bnUweSM0+hJK25C0vosvIlRG
	Z1jlCLB6W3CdYe0b8ZpYEB6yesllz2XVKSj7YBW1ICPLGeSlK+bp+Mj3AL5hfrgEv/h2
	O7A3OXAtm3lW1s5C9+N/R0YiwFQkVSXrfew2GncMnj/mQgK+KUZ2IlbUrIrz+fT8UBL4
	HI9XEpLnd8Ub/UaWqAM+6UPC7VlDAFC4KrJijgoFK5A/66FYzo7Sz0OK96CdHZi7e/tV
	Sr6SIXGTUG/GTVcqisJ6yQV/C/CfSsypzo5ME7Qk4QY3dRU0Xs0zqvgwvNJJdMV+vtRy
	4XqQ==
MIME-Version: 1.0
Received: by 10.229.147.193 with SMTP id m1mr5101610qcv.128.1342923773731;
	Sat, 21 Jul 2012 19:22:53 -0700 (PDT)
Received: by 10.229.8.78 with HTTP; Sat, 21 Jul 2012 19:22:53 -0700 (PDT)
In-Reply-To: <1342915247.6963.12.camel@trz-ThinkPad-T420>
References: <63ECFF2A2302B44093D7CE9E9962C490032E3CB9@ORSMSX103.amr.corp.intel.com>
	<1342837226.2274.24.camel@trz-ThinkPad-T420>
	<D956029D25CF204F948EA0FB515E1EE20AD3C237@ORSMSX105.amr.corp.intel.com>
	<1342915247.6963.12.camel@trz-ThinkPad-T420>
Date: Sat, 21 Jul 2012 22:22:53 -0400
Message-ID: <CADkTA4NkvLs9_P6UB_BdLNtOHT-fBq97z1hyfs+mqszV_zhaBQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ERROR: Function failed: do_install_perf
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
X-List-Received-Date: Sun, 22 Jul 2012 02:22:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Jul 21, 2012 at 8:00 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Sat, 2012-07-21 at 15:01 -0700, Bodke, Kishore K wrote:
>>
>> >-----Original Message-----
>> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> >bounces@yoctoproject.org] On Behalf Of Tom Zanussi
>> >Sent: Friday, July 20, 2012 7:20 PM
>> >To: Saxena, Rahul
>> >Cc: yocto@yoctoproject.org
>> >Subject: Re: [yocto] ERROR: Function failed: do_install_perf
>> >
>> >On Sat, 2012-07-21 at 00:02 +0000, Saxena, Rahul wrote:
>> >> Hi,
>> >>
>> >>
>> >>
>> >> I suddenly started to get the following error when  running bitbake. I
>> >> am using Denzil branches of poky, meta-intel and poky-extras. I
>> >> installed libper-dev as suggested by the error message, but it made no
>> >> difference.
>> >>
>> >>
>> >>
>> >> Any suggestions ?
>> >>
>> >I think the meta-kernel-dev with denzil is causing the problem i.e the
>> >AUTOREV is causing the tip of linux-yocto-3.0 to get picked up.  So just
>> >removing poky-extras from your layers should fix the problem.
>>
>> Is there any work around if we want to use meta-kernel-dev with denzil?
>> I see the same issue now with these combination on Linux-yocto-3.2 as well.
>>
>
> One workaround would be to revert the perf commits in the cedartrail
> branch of whatever kernel you're using e.g.:

This is my suggestion as well. If meta-kernel-dev is more being used for the
local vs remote repository, commenting out SRCREV=${AUTOREV} is also
an option, since that should freeze at a known good point.

Cheers,

Bruce

>
> perf: add sgidefs.h to for mips builds
> perf: change --root to --prefix for python install
> perf: add 'libperl not found' warning
> perf: use pkg-config instead of python-config
> perf tools: Add support to install perf python extension
> Revert "perf: hard-code NO_LIBPERL/NO_LIBPYTHON"
>
> Or create a new cedartrail branch e.g. cedartrail-denzil with those
> commits lopped off and use that instead...
>
> Or use master...
>
> Tom
>
>> Thanks
>> Kishore.
>>
>> >
>> >Using the meta-kernel-dev AUTOREV with master should be fine though, and
>> >in fact I did update the cedartrail SRCREVs in master to catch the perf
>> >updates in linux-yocto-3.0, so advancing them won't hurt anything.  I
>> >guess master is where you want to make new kernel changes anyway...
>> >
>> >Tom
>> >
>> >>
>> >>
>> >> Thanks
>> >>
>> >> Rahul
>> >>
>> >>
>> >>
>> >> ERROR: Function failed: do_install_perf
>> >> (see /home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/cedartrail-
>> >poky-linux/linux-yocto-
>> >3.0.32+git1+46e8fc2bbbe73514e8d99101adaaa373f760ffa7_1+81fd8c307997aff
>> >37916828dc8b4ef72f5d35a94-r4/temp/log.do_install_perf.69672 for further
>> >information)
>> >>
>> >> NOTE: make
>> >> -C /home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/cedartrail-poky-
>> >linux/linux-yocto-
>> >3.0.32+git1+46e8fc2bbbe73514e8d99101adaaa373f760ffa7_1+81fd8c307997aff
>> >37916828dc8b4ef72f5d35a94-r4/linux/tools/perf CC=i586-poky-linux-gcc  -m32
>> >-march=core2 -msse3 -mtune=generic -mfpmath=sse --
>> >sysroot=/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/sysroots/cedartrail
>> >LD=i586-poky-linux-ld --
>> >sysroot=/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/sysroots/cedartrail
>> >prefix=/usr
>> >DESTDIR=/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/cedartrail-
>> >poky-linux/linux-yocto-
>> >3.0.32+git1+46e8fc2bbbe73514e8d99101adaaa373f760ffa7_1+81fd8c307997aff
>> >37916828dc8b4ef72f5d35a94-r4/image install NO_NEWT=1 NO_DWARF=1
>> >>
>> >> make: Entering directory
>> >> `/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/cedartrail-poky-
>> >linux/linux-yocto-
>> >3.0.32+git1+46e8fc2bbbe73514e8d99101adaaa373f760ffa7_1+81fd8c307997aff
>> >37916828dc8b4ef72f5d35a94-r4/linux/tools/perf'
>> >>
>> >> Makefile:484: libperl not found, disables Perl scripting support.
>> >> Please install libperl-dev or perl-devel
>> >>
>> >>     * new build flags or prefix
>> >>
>> >>     CC perf.o
>> >>
>> >>     CC builtin-annotate.o
>> >>
>> >>     CC builtin-bench.o
>> >>
>> >>     CC bench/sched-messaging.o
>> >>
>> >>     CC bench/sched-pipe.o
>> >>
>> >>     CC bench/mem-memcpy.o
>> >>
>> >>     CC builtin-diff.o
>> >>
>> >>     CC builtin-evlist.o
>> >>
>> >>     CC builtin-help.o
>> >>
>> >>     CC builtin-sched.o
>> >>
>> >>     CC builtin-buildid-list.o
>> >>
>> >>     CC builtin-buildid-cache.o
>> >>
>> >>     CC builtin-list.o
>> >>
>> >>     CC builtin-record.o
>> >>
>> >>     CC builtin-report.o
>> >>
>> >>     CC builtin-stat.o
>> >>
>> >>     CC builtin-timechart.o
>> >>
>> >>     CC builtin-top.o
>> >>
>> >>     CC builtin-script.o
>> >>
>> >>     CC builtin-probe.o
>> >>
>> >>     CC builtin-kmem.o
>> >>
>> >>     CC builtin-lock.o
>> >>
>> >>     CC builtin-kvm.o
>> >>
>> >>     CC builtin-test.o
>> >>
>> >>     CC builtin-inject.o
>> >>
>> >>     CC util/abspath.o
>> >>
>> >>     CC util/alias.o
>> >>
>> >>     CC util/annotate.o
>> >>
>> >>     CC util/build-id.o
>> >>
>> >>     CC util/config.o
>> >>
>> >>     CC util/ctype.o
>> >>
>> >>     CC util/debugfs.o
>> >>
>> >>     CC util/environment.o
>> >>
>> >>     CC util/event.o
>> >>
>> >>     CC util/evlist.o
>> >>
>> >>     CC util/evsel.o
>> >>
>> >>     CC util/exec_cmd.o
>> >>
>> >>     CC util/help.o
>> >>
>> >>     CC util/levenshtein.o
>> >>
>> >>     CC util/parse-options.o
>> >>
>> >>     CC util/parse-events.o
>> >>
>> >>     CC util/path.o
>> >>
>> >>     CC util/rbtree.o
>> >>
>> >>     CC util/bitmap.o
>> >>
>> >>     CC util/hweight.o
>> >>
>> >>     CC util/run-command.o
>> >>
>> >>     CC util/quote.o
>> >>
>> >>     CC util/strbuf.o
>> >>
>> >>     CC util/string.o
>> >>
>> >>     CC util/strlist.o
>> >>
>> >>     CC util/strfilter.o
>> >>
>> >>     CC util/top.o
>> >>
>> >>     CC util/usage.o
>> >>
>> >>     CC util/wrapper.o
>> >>
>> >>     CC util/sigchain.o
>> >>
>> >>     CC util/symbol.o
>> >>
>> >>     CC util/color.o
>> >>
>> >>     CC util/pager.o
>> >>
>> >>     CC util/header.o
>> >>
>> >>     CC util/callchain.o
>> >>
>> >>     CC util/values.o
>> >>
>> >>     CC util/debug.o
>> >>
>> >>     CC util/map.o
>> >>
>> >>     CC util/pstack.o
>> >>
>> >>     CC util/session.o
>> >>
>> >>     CC util/thread.o
>> >>
>> >>     CC util/thread_map.o
>> >>
>> >>     CC util/trace-event-parse.o
>> >>
>> >>     CC util/trace-event-read.o
>> >>
>> >>     CC util/trace-event-info.o
>> >>
>> >>     CC util/trace-event-scripting.o
>> >>
>> >>     CC util/svghelper.o
>> >>
>> >>     CC util/sort.o
>> >>
>> >>     CC util/hist.o
>> >>
>> >>     CC util/probe-event.o
>> >>
>> >>     CC util/util.o
>> >>
>> >>     CC util/xyarray.o
>> >>
>> >>     CC util/cpumap.o
>> >>
>> >>     CC util/cgroup.o
>> >>
>> >>     CC util/scripting-engines/trace-event-python.o
>> >>
>> >>     CC scripts/python/Perf-Trace-Util/Context.o
>> >>
>> >>     AR libperf.a
>> >>
>> >>     LINK perf
>> >>
>> >>     GEN python/perf.so
>> >>
>> >> Traceback (most recent call last):
>> >>
>> >>   File "util/setup.py", line 6, in <module>
>> >>
>> >>     from distutils.command.build_ext   import build_ext   as
>> >> _build_ext
>> >>
>> >>   File
>> >> "/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/sysroots/x86_64-
>> >linux/usr/lib/python2.7/distutils/command/build_ext.py", line 16, in
>> ><module>
>> >>
>> >>     from distutils.sysconfig import customize_compiler,
>> >> get_python_version
>> >>
>> >>   File
>> >> "/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/sysroots/x86_64-
>> >linux/usr/lib/python2.7/distutils/sysconfig.py", line 22, in <module>
>> >>
>> >>     PREFIX =
>> >> os.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"),
>> >> os.getenv("HOST_SYS") )
>> >>
>> >> TypeError: expected a character buffer object
>> >>
>> >> cp: cannot stat `python_ext_build/lib/perf.so': No such file or
>> >> directory
>> >>
>> >> make: *** [python/perf.so] Error 1
>> >>
>> >> make: Leaving directory
>> >> `/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/cedartrail-poky-
>> >linux/linux-yocto-
>> >3.0.32+git1+46e8fc2bbbe73514e8d99101adaaa373f760ffa7_1+81fd8c307997aff
>> >37916828dc8b4ef72f5d35a94-r4/linux/tools/perf'
>> >>
>> >> ERROR: oe_runmake failed
>> >>
>> >>
>> >>
>> >>
>> >>
>> >>
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >
>> >
>> >_______________________________________________
>> >yocto mailing list
>> >yocto@yoctoproject.org
>> >https://lists.yoctoproject.org/listinfo/yocto
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

