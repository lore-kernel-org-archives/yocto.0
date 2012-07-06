Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66ACFE0070C
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 07:21:01 -0700 (PDT)
Received: by yenl5 with SMTP id l5so9783811yen.35
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2012 07:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=QW3Xjir3zYtrR8Nj43uTHDRS27nr8PegKO7uFB53rmI=;
	b=x50MM6a0UCv9th23AxJicZF1/uuT2RXsFO+ToYaV09cGoIj54aLxe6Jr8K1hW3vqXD
	IIK/BOhJNLuIxlzuwRTzgQymg1/t+AwyfCLuaMICsNeO6Et8gEx3+9iZA5ALaI1f4OVL
	Pi9PKyzZJVODG0pGB0IitnnAX1v9um3A05hlrQ8HnDB2ZKKoPQYQiGMUNK9dny8z3krj
	OD0Qp8oU8ormcdqkoLgpR6Zw46MUxMJ6WPYgCQuMmrjndZ0nokW7mX7XKWeS9EBIyPMw
	ejZI5ownR0E0utdyP0IIY6lenOKSJf8lPwG5CrX1sOuS7cn/FSM9dZTzjbZVuXFvgeoc
	hd7w==
Received: by 10.236.74.74 with SMTP id w50mr34752930yhd.34.1341584460565;
	Fri, 06 Jul 2012 07:21:00 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id r25sm31974283yhi.13.2012.07.06.07.20.59
	(version=SSLv3 cipher=OTHER); Fri, 06 Jul 2012 07:21:00 -0700 (PDT)
Message-ID: <4FF6F44B.6090605@gmail.com>
Date: Fri, 06 Jul 2012 10:20:59 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: build failure on denzil - n450
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
X-List-Received-Date: Fri, 06 Jul 2012 14:21:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Something has changes very recently.  I was building with a fresh clone 
of poky and meta-intel.  checked out Denzil on both. only modified to 
support the meta-n450 layer, the parallel options and the local download 
directory.

I got an error compiling the kernel.  It didn't fail yesterday early, 
but now I get the same failure on Ubuntu 12.04 and Fedora 16.

Jim A


NOTE: make -C 
/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf 
CC=i586-poky-linux-gcc  -m32    -march=core2 -msse3 -mtune=generic 
-mfpmath=sse --sysroot=/build/n450-denzil/tmp/sysroots/n450 
LD=i586-poky-linux-ld --sysroot=/build/n450-denzil/tmp/sysroots/n450   
prefix=/usr NO_NEWT=1 NO_DWARF=1
make: Entering directory 
`/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
Makefile:493: libperl not found, disables Perl scripting support. Please 
install libperl-dev or perl-devel
PERF_VERSION = 3.2.11.629.g382eda3
make: Leaving directory 
`/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
make: Entering directory 
`/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
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
/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/temp/log.do_compile_perf.7739 
for further information)
l/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
ERROR: oe_runmake failed

