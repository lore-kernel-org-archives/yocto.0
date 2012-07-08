Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51701E0145F
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2012 22:46:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Jul 2012 22:46:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="168572110"
Received: from unknown (HELO [10.255.13.33]) ([10.255.13.33])
	by orsmga002.jf.intel.com with ESMTP; 07 Jul 2012 22:46:40 -0700
Message-ID: <1341726397.6761.186.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: jfabernathy <jfabernathy@gmail.com>
Date: Sun, 08 Jul 2012 00:46:37 -0500
In-Reply-To: <1341680880.6761.162.camel@trz-ThinkPad-T420>
References: <4FF85CF1.6040900@gmail.com>
	<1341680880.6761.162.camel@trz-ThinkPad-T420>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
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
X-List-Received-Date: Sun, 08 Jul 2012 05:46:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2012-07-07 at 12:08 -0500, Tom Zanussi wrote:
> On Sat, 2012-07-07 at 11:59 -0400, jfabernathy wrote:
> > Since I started over on my build from the long thread on this subject, I 
> > thought I'd start another thread on the issue.
> > 
> > I took the tarball for poky-denzil-7.0 and extracted it into my home 
> > directory.  After cd'ing into poky-denzil-7.0, I extracted the 
> > n450-denzil-7.0 tarball.
> > 
> > I setup to run a standard default n450 core-image-sato, only changing 
> > the linux-yocto_3.2.bbappend by adding in:
> > 
> > SRCREV_machine_pn-linux-yocto_n450 = 
> > "9d32bb075e349cc69c7af42b60f6715c5d8c972e"
> > SRCREV_meta_pn-linux-yocto_n450 ?= 
> > "ee78519365bdb25287703bbc31c06b193263c654"
> > 
> > I still get build errors similar to the ones I got with the git 
> > repository cloned poky.  Log file below:
> > 
> > 
> > NOTE: make -C 
> > /build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/linux/tools/perf 
> > CC=i586-poky-linux-gcc  -m32    -march=core2 -msse3 -mtune=generic 
> > -mfpmath=sse --sysroot=/build/n450-denzil/tmp/sysroots/n450 
> > LD=i586-poky-linux-ld --sysroot=/build/n450-denzil/tmp/sysroots/n450   
> > prefix=/usr NO_NEWT=1 NO_DWARF=1
> > make: Entering directory 
> > `/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/linux/tools/perf'
> > Makefile:493: libperl not found, disables Perl scripting support. Please 
> > install libperl-dev or perl-devel
> > PERF_VERSION = 3.2.11.629.g382eda3
> > make: Leaving directory 
> > `/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/linux/tools/perf'
> > make: Entering directory 
> > `/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/linux/tools/perf'
> > Makefile:493: libperl not found, disables Perl scripting support. Please 
> > install libperl-dev or perl-devel
> 
> 
> Yeah, you're still getting the new kernel commits, though you shouldn't
> be, I'll try the same thing here...
> 

I tried the same thing here, poky denzil and n450 denzil and it built
fine with no changes at all.

Somehow your setup is causing the last SRCREVS to be picked up instead
of what should be - since n450 specifies no SRCREVs, the default SRCREVs
from linux-yocto_3.2.bb should be getting picked up, and you should see
those in the build directory name for the kernel as well:

recipes-kernel/linux/linux-yocto_3.2.bb:SRCREV_meta ?= "b14a08f5c7b469a5077c10942f4e1aec171faa9d"
recipes-kernel/linux/linux-yocto_3.2.bb:SRCREV_machine ?= "01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a"

build/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1

Since the default SRCREVs use ?= to assign, the likely problem is that
you already have them assigned to something else before those.

Tom  

> Tom
> 
> >      GEN common-cmds.h
> >      * new build flags or prefix
> >      CC perf.o
> >      CC builtin-annotate.o
> >      CC builtin-bench.o
> >      CC bench/sched-messaging.o
> >      CC bench/sched-pipe.o
> >      CC bench/mem-memcpy.o
> >      CC builtin-diff.o
> >      CC builtin-evlist.o
> >      CC builtin-help.o
> >      CC builtin-sched.o
> >      CC builtin-buildid-list.o
> >      CC builtin-buildid-cache.o
> >      CC builtin-list.o
> >      CC builtin-record.o
> >      CC builtin-report.o
> >      CC builtin-stat.o
> >      CC builtin-timechart.o
> >      CC builtin-top.o
> >      CC builtin-script.o
> >      CC builtin-probe.o
> >      CC builtin-kmem.o
> >      CC builtin-lock.o
> >      CC builtin-kvm.o
> >      CC builtin-test.o
> >      CC builtin-inject.o
> >      CC util/abspath.o
> >      CC util/alias.o
> >      CC util/annotate.o
> >      CC util/build-id.o
> >      CC util/config.o
> >      CC util/ctype.o
> >      CC util/debugfs.o
> >      CC util/environment.o
> >      CC util/event.o
> >      CC util/evlist.o
> >      CC util/evsel.o
> >      CC util/exec_cmd.o
> >      CC util/help.o
> >      CC util/levenshtein.o
> >      CC util/parse-options.o
> >      CC util/parse-events.o
> >      CC util/path.o
> >      CC util/rbtree.o
> >      CC util/bitmap.o
> >      CC util/hweight.o
> >      CC util/run-command.o
> >      CC util/quote.o
> >      CC util/strbuf.o
> >      CC util/string.o
> >      CC util/strlist.o
> >      CC util/strfilter.o
> >      CC util/top.o
> >      CC util/usage.o
> >      CC util/wrapper.o
> >      CC util/sigchain.o
> >      CC util/symbol.o
> >      CC util/color.o
> >      CC util/pager.o
> >      CC util/header.o
> >      CC util/callchain.o
> >      CC util/values.o
> >      CC util/debug.o
> >      CC util/map.o
> >      CC util/pstack.o
> >      CC util/session.o
> >      CC util/thread.o
> >      CC util/thread_map.o
> >      CC util/trace-event-parse.o
> >      CC util/trace-event-read.o
> >      CC util/trace-event-info.o
> >      CC util/trace-event-scripting.o
> >      CC util/svghelper.o
> >      CC util/sort.o
> >      CC util/hist.o
> >      CC util/probe-event.o
> >      CC util/util.o
> >      CC util/xyarray.o
> >      CC util/cpumap.o
> >      CC util/cgroup.o
> >      CC arch/x86/util/header.o
> >      CC util/scripting-engines/trace-event-python.o
> >      CC scripts/python/Perf-Trace-Util/Context.o
> >      AR libperf.a
> >      LINK perf
> >      GEN perf-archive
> >      GEN python/perf.so
> > Traceback (most recent call last):
> >    File "util/setup.py", line 6, in <module>
> >      from distutils.command.build_ext   import build_ext   as _build_ext
> >    File 
> > "/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/command/build_ext.py", 
> > line 16, in <module>
> >      from distutils.sysconfig import customize_compiler, get_python_version
> >    File 
> > "/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/sysconfig.py", 
> > line 22, in <module>
> >      PREFIX = os.path.normpath(sys.prefix).replace( 
> > os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )
> > TypeError: expected a character buffer object
> > cp: cannot stat `python_ext_build/lib/perf.so': No such file or directory
> > make: *** [python/perf.so] Error 1
> > make: Leaving directory `/build/n450-denziERROR: Function failed: 
> > do_compile_perf (see 
> > /build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/temp/log.do_compile_perf.11461 
> > for further information)
> > l/tmp/work/n450-poky-linux/linux-yocto-3.2.11+git1+ee78519365bdb25287703bbc31c06b193263c654_1+9d32bb075e349cc69c7af42b60f6715c5d8c972e-r1/linux/tools/perf'
> > ERROR: oe_runmake failed
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 



