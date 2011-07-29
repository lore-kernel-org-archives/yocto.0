Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 298484C800D8
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2011 02:24:01 -0500 (CDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mreu2) with ESMTP (Nemesis)
	id 0MZ9ey-1R7XhM0MSi-00Kwun; Fri, 29 Jul 2011 09:24:00 +0200
Date: Fri, 29 Jul 2011 09:23:59 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: yocto@yoctoproject.org
Message-ID: <20110729072359.GA5109@localhost.localdomain>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:dNixX84i56AtiytMglUO/rv47w02fAch2vBoxK/Iwik
	mEImHZYjPkVc0eQ0Ai6oFwFQhLwjYEPeNryXwrh0eK/yKQayMH
	l5YvySXDUYcQSeiIUdVETtb99pjBbpOrtLRowW7pwKvHyo4kwp
	tqO8K+apAkv2OTTH4OVVy27B4XBWD1BFNPj7A+R7w3SBn95PEe
	wyhXVWsESDIeiMH44RKq96dW5VjZvfpnB5GsmrMreo=
Subject: crownbay-noemgd poky-image-minimal fails to build
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
X-List-Received-Date: Fri, 29 Jul 2011 07:24:02 -0000
X-Groupsio-MsgNum: 2118
Content-Type: multipart/mixed; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline

--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I am trying to build a poky bernard image for crownbay-noemgd.
For this i checked out the bernard branch of both poky and meta-intel
from git.yoctoproject.org.

Bitbake fails during the kernels compile_perf task complaining that it can not
find libdw.h and bfd.h and that using /usr/local/include as include
location is unsafe for cross compilation (full log attached).

What do i miss here?

Btw, the build host is fedora 13.
(this time on real hardware, not in a virtual machine)

thanks,

Andre

--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="log.do_compile_perf.12050"

NOTE: make -C /home/ahaupt/yocto-git/builds/crownbay-noemgd/tmp/work/crownbay_noemgd-poky-linux/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_1+56fe215d3f1a2cc3a5a26482ac9809ba44495695-r1/linux/tools/perf CC=ccache i586-poky-linux-gcc -m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse --sysroot=/home/ahaupt/yocto-git/builds/crownbay-noemgd/tmp/sysroots/crownbay-noemgd LD=i586-poky-linux-ld --sysroot=/home/ahaupt/yocto-git/builds/crownbay-noemgd/tmp/sysroots/crownbay-noemgd prefix=/usr NO_NEWT=1 NO_DWARF=1
make: Entering directory `/home/ahaupt/yocto-git/builds/crownbay-noemgd/tmp/work/crownbay_noemgd-poky-linux/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_1+56fe215d3f1a2cc3a5a26482ac9809ba44495695-r1/linux/tools/perf'
Makefile:508: No libdw.h found or old libdw.h found, disables dwarf support. Please install elfutils-devel/elfutils-dev
Makefile:563: No bfd.h/libbfd found, install binutils-dev[el]/zlib-static to gain symbol demangling
PERF_VERSION = 0.0.2.PERF
make: Leaving directory `/home/ahaupt/yocto-git/builds/crownbay-noemgd/tmp/work/crownbay_noemgd-poky-linux/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_1+56fe215d3f1a2cc3a5a26482ac9809ba44495695-r1/linux/tools/perf'
make: Entering directory `/home/ahaupt/yocto-git/builds/crownbay-noemgd/tmp/work/crownbay_noemgd-poky-linux/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_1+56fe215d3f1a2cc3a5a26482ac9809ba44495695-r1/linux/tools/perf'
Makefile:508: No libdw.h found or old libdw.h found, disables dwarf support. Please install elfutils-devel/elfutils-dev
Makefile:563: No bfd.h/libbfd found, install binutils-dev[el]/zlib-static to gain symbol demangling
    GEN common-cmds.h
    * new build flags or prefix
    CC perf.o
    CC builtin-annotate.o
    CC builtin-bench.o
    CC bench/sched-messaging.o
    CC bench/sched-pipe.o
    CC bench/mem-memcpy.o
    CC builtin-diff.o
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
    CC builtin-trace.o
    CC builtin-probe.o
    CC builtin-kmem.o
    CC builtin-lock.o
    CC util/abspath.o
    CC util/alias.o
    CC util/build-id.o
    CC util/config.o
    CC util/ctype.o
    CC util/debugfs.o
    CC util/environment.o
    CC util/event.o
    CC util/exec_cmd.o
    CC util/help.o
    CC util/levenshtein.o
    CC util/parse-options.o
    CC util/parse-events.o
    CC util/path.o
    CC util/rbtree.o
    CC util/bitmap.o
    CC util/hweight.o
    CC util/find_next_bit.o
    CC util/run-command.o
    CC util/quote.o
    CC util/strbuf.o
    CC util/string.o
    CC util/strlist.o
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
    CC util/session.o
    CC util/thread.o
    CC util/trace-event-parse.o
    CC util/trace-event-read.o
    CC util/trace-event-info.o
    CC util/trace-event-scripting.o
    CC util/svghelper.o
    CC util/sort.o
    CC util/hist.o
    CC util/probe-event.o
    CC util/util.o
    CC util/cpumap.o
    CC util/scripting-engines/trace-event-perl.o
cc1: warnings being treated as errors
cc1: error: include location "/usr/local/include" is unsafe for cross-compilation
make: *** [util/scripting-engines/trace-event-perl.o] Error 1
make: Leaving directory `/home/ahaupt/yocto-git/builds/crownbay-noemgd/tmp/work/crownbay_noemgd-poky-linux/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_1+56fe215d3f1a2cc3a5a26482ac9809ba44495695-r1/linux/tools/perf'
FATAL: oe_runmake failed
ERROR: Function 'do_compile_perf' failed (see /home/ahaupt/yocto-git/builds/crownbay-noemgd/tmp/work/crownbay_noemgd-poky-linux/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_1+56fe215d3f1a2cc3a5a26482ac9809ba44495695-r1/temp/log.do_compile_perf.12050 for further information)

--jRHKVT23PllUwdXP--
