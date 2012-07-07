Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF21FE01456
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2012 08:59:52 -0700 (PDT)
Received: by yenl5 with SMTP id l5so10581990yen.35
	for <yocto@yoctoproject.org>; Sat, 07 Jul 2012 08:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=q4fYuoRWCweqazEoI6YzEhFk7Sy3rz2uhcWtI5nrzuw=;
	b=ea0IMMsl79otM9c5r/WRV85WxDxCn4Jr7SbrOJvgVVJDnBYz8DS4xogSyGFeyfiJ49
	7z3WxQ4k8prKmo7CDeqFN8GOHc0vgc5vX1y3rWq+SIIt+/3eA/osJqUF6+jzEc2VJ7JC
	0q3M3Ug0LD1aDJZEnYcR4yicdTi9E0rL9I1oP8Uter/AMOTdV8Ui22pG4UcVJafmjm9Q
	4InaOqDVnDXX/IBdPpFrutd26IUzqyAPyjbBNE+/iJmG3gZ1vXVmJ2kh3b4aHKej6L2A
	+vB4iFIpIWJAauYDvn9SPl1cEINAJEYoLH216JFwtlX0vSwFvx/WeEzC5oOMc46rpLxw
	vJcQ==
Received: by 10.101.175.1 with SMTP id c1mr11503197anp.10.1341676792192;
	Sat, 07 Jul 2012 08:59:52 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id w61sm53442880yhi.5.2012.07.07.08.59.48
	(version=SSLv3 cipher=OTHER); Sat, 07 Jul 2012 08:59:51 -0700 (PDT)
Message-ID: <4FF85CF1.6040900@gmail.com>
Date: Sat, 07 Jul 2012 11:59:45 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: build failure on denzil-7.0 n450 part 2
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
X-List-Received-Date: Sat, 07 Jul 2012 15:59:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Since I started over on my build from the long thread on this subject, I 
thought I'd start another thread on the issue.

I took the tarball for poky-denzil-7.0 and extracted it into my home 
directory.  After cd'ing into poky-denzil-7.0, I extracted the 
n450-denzil-7.0 tarball.

I setup to run a standard default n450 core-image-sato, only changing 
the linux-yocto_3.2.bbappend by adding in:

SRCREV_machine_pn-linux-yocto_n450 = 
"9d32bb075e349cc69c7af42b60f6715c5d8c972e"
SRCREV_meta_pn-linux-yocto_n450 ?= 
"ee78519365bdb25287703bbc31c06b193263c654"

I still get build errors similar to the ones I got with the git 
repository cloned poky.  Log file below:


NOTE: make -C 
/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/linux/tools/perf 
CC=i586-poky-linux-gcc  -m32    -march=core2 -msse3 -mtune=generic 
-mfpmath=sse --sysroot=/build/n450-denzil/tmp/sysroots/n450 
LD=i586-poky-linux-ld --sysroot=/build/n450-denzil/tmp/sysroots/n450   
prefix=/usr NO_NEWT=1 NO_DWARF=1
make: Entering directory 
`/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/linux/tools/perf'
Makefile:493: libperl not found, disables Perl scripting support. Please 
install libperl-dev or perl-devel
PERF_VERSION = 3.2.11.629.g382eda3
make: Leaving directory 
`/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/linux/tools/perf'
make: Entering directory 
`/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/linux/tools/perf'
Makefile:493: libperl not found, disables Perl scripting support. Please 
install libperl-dev or perl-devel
     GEN common-cmds.h
     * new build flags or prefix
     CC perf.o
     CC builtin-annotate.o
     CC builtin-bench.o
     CC bench/sched-messaging.o
     CC bench/sched-pipe.o
     CC bench/mem-memcpy.o
     CC builtin-diff.o
     CC builtin-evlist.o
     CC builtin-help.o
     CC builtin-sched.o
     CC builtin-buildid-list.o
     CC builtin-buildid-cache.o
     CC builtin-list.o
     CC builtin-record.o
     CC builtin-report.o
     CC builtin-stat.o
     CC builtin-timechart.o
     CC builtin-top.o
     CC builtin-script.o
     CC builtin-probe.o
     CC builtin-kmem.o
     CC builtin-lock.o
     CC builtin-kvm.o
     CC builtin-test.o
     CC builtin-inject.o
     CC util/abspath.o
     CC util/alias.o
     CC util/annotate.o
     CC util/build-id.o
     CC util/config.o
     CC util/ctype.o
     CC util/debugfs.o
     CC util/environment.o
     CC util/event.o
     CC util/evlist.o
     CC util/evsel.o
     CC util/exec_cmd.o
     CC util/help.o
     CC util/levenshtein.o
     CC util/parse-options.o
     CC util/parse-events.o
     CC util/path.o
     CC util/rbtree.o
     CC util/bitmap.o
     CC util/hweight.o
     CC util/run-command.o
     CC util/quote.o
     CC util/strbuf.o
     CC util/string.o
     CC util/strlist.o
     CC util/strfilter.o
     CC util/top.o
     CC util/usage.o
     CC util/wrapper.o
     CC util/sigchain.o
     CC util/symbol.o
     CC util/color.o
     CC util/pager.o
     CC util/header.o
     CC util/callchain.o
     CC util/values.o
     CC util/debug.o
     CC util/map.o
     CC util/pstack.o
     CC util/session.o
     CC util/thread.o
     CC util/thread_map.o
     CC util/trace-event-parse.o
     CC util/trace-event-read.o
     CC util/trace-event-info.o
     CC util/trace-event-scripting.o
     CC util/svghelper.o
     CC util/sort.o
     CC util/hist.o
     CC util/probe-event.o
     CC util/util.o
     CC util/xyarray.o
     CC util/cpumap.o
     CC util/cgroup.o
     CC arch/x86/util/header.o
     CC util/scripting-engines/trace-event-python.o
     CC scripts/python/Perf-Trace-Util/Context.o
     AR libperf.a
     LINK perf
     GEN perf-archive
     GEN python/perf.so
Traceback (most recent call last):
   File "util/setup.py", line 6, in <module>
     from distutils.command.build_ext   import build_ext   as _build_ext
   File 
"/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/command/build_ext.py", 
line 16, in <module>
     from distutils.sysconfig import customize_compiler, get_python_version
   File 
"/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/sysconfig.py", 
line 22, in <module>
     PREFIX = os.path.normpath(sys.prefix).replace( 
os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )
TypeError: expected a character buffer object
cp: cannot stat `python_ext_build/lib/perf.so': No such file or directory
make: *** [python/perf.so] Error 1
make: Leaving directory `/build/n450-denziERROR: Function failed: 
do_compile_perf (see 
/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/temp/log.do_compile_perf.11461 
for further information)
l/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/linux/tools/perf'
ERROR: oe_runmake failed


