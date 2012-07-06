Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE71FE006AD
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 12:00:55 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so9526100yhf.35
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2012 12:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=JfmFc/I3fvGnp9c/2mxMJCBVhPheChcJALPm3Bvv3eU=;
	b=cbFWJJHcqv58h6KyMxJcMfVfP4RZY2mskvoqSck5FiEdWLC7XfebVEKupEni/wIUqi
	GfYKmFACYSy/8itfRLu+lqzDRq1Wlin4sHhypw+FUwFvGPhZ2C8dnqifEhXhSYgC4yqQ
	2ilAwOO9jjFWoQ7NINTlCZ9dLnelSJGGQaAqh7te83w5CpxcWpDtoiN9t6jZsTUEaFJr
	RQGRKUmp+6swV4JLJiZyPMdySh4qdCIk3DG0mwWle9+2dJHKrgosADz3TB9zHsAyP1Lw
	5EB2SFyrQdzOah/q/r3h7RJf3D527/7TURGVB9g1SkRPzJ6XUHc7W0/0WFjCCfEGIk6G
	L2Lg==
Received: by 10.236.182.7 with SMTP id n7mr36944888yhm.61.1341601255404;
	Fri, 06 Jul 2012 12:00:55 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id t22sm23264855anh.20.2012.07.06.12.00.54
	(version=SSLv3 cipher=OTHER); Fri, 06 Jul 2012 12:00:55 -0700 (PDT)
Message-ID: <4FF735E6.3060803@gmail.com>
Date: Fri, 06 Jul 2012 15:00:54 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <4FF6F44B.6090605@gmail.com>
	<1341585872.6761.118.camel@trz-ThinkPad-T420>
	<4FF6FA72.3030101@gmail.com>
	<1341586756.6761.124.camel@trz-ThinkPad-T420>
	<4FF7220E.6030306@gmail.com>
	<1341599756.6761.132.camel@trz-ThinkPad-T420>
	<4FF73309.9050903@gmail.com>
	<1341601067.6761.135.camel@trz-ThinkPad-T420>
In-Reply-To: <1341601067.6761.135.camel@trz-ThinkPad-T420>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build failure on denzil - n450
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
X-List-Received-Date: Fri, 06 Jul 2012 19:00:56 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/06/2012 02:57 PM, Tom Zanussi wrote:
> On Fri, 2012-07-06 at 14:48 -0400, jfabernathy wrote:
>> On 07/06/2012 02:35 PM, Tom Zanussi wrote:
>>> On Fri, 2012-07-06 at 13:36 -0400, jfabernathy wrote:
>>>> On 07/06/2012 10:59 AM, Tom Zanussi wrote:
>>>>> On Fri, 2012-07-06 at 10:47 -0400, jfabernathy wrote:
>>>>>> On 07/06/2012 10:44 AM, Tom Zanussi wrote:
>>>>>>> On Fri, 2012-07-06 at 10:20 -0400, jfabernathy wrote:
>>>>>>>> Something has changes very recently.  I was building with a fresh clone
>>>>>>>> of poky and meta-intel.  checked out Denzil on both. only modified to
>>>>>>>> support the meta-n450 layer, the parallel options and the local download
>>>>>>>> directory.
>>>>>>>>
>>>>>>> Are you using a local clone of the kernel i.e. using AUTOREV?  There are
>>>>>>> currently a few patches that you'd only get with AUTOREV that the
>>>>>>> offical SRCREVs in the recipe prevent from getting into normal builds at
>>>>>>> the moment.
>>>>>>>
>>>>>>> Tom
>>>>>> I have local kernels on the system, but I hope I'm not using them. The
>>>>>> last good build I did used a local kernel.  However, I started by
>>>>>> blowing away the poky dir and the /build dir.  I did a new clone of poky
>>>>>> and meta-intel and checkout the denzil branch in both (not tag)
>>>>>>
>>>>> Oh, I see now, 450 doesn't specify a kernel SRCREV like the other BSPs.
>>>>> You can fix that locally by changing the empty SRCREVs in the n450
>>>>> kernel recipe e.g.
>>>>>
>>>>> SRCREV_machine_pn-linux-yocto_n450 = 9d32bb075e349cc69c7af42b60f6715c5d8c972e
>>>>> SRCREV_meta_pn-linux-yocto_n450 ?= 	ee78519365bdb25287703bbc31c06b193263c654
>>>>>
>>>>> This is exactly the reason it's not good to use floating kernel SRCREVs.
>>>> So this fixes the issue, but I just want to know how you knew which
>>>> commit strings to use is this case?  I finally found them, but not sure
>>>> why you pick these particular ones.
>>> Well, it's kind of a long story already.  Basically, there was a
>>> patchset yesterday that got partially pulled in, and part of that was a
>>> set of changes to the kernel.  If you have a hard-coded SRCREV, this
>>> isn't a problem, for the n450 that's not the case.
>>>
>>> So how I figured out which ones to use was that I looked at the n450
>>> machine branch and the meta branch and picked out the SRCREVs
>>> immediately preceding those changes.
>>>
>>> Tom
>> It's interesting. I got the standard build to complete without any
>> changes except the SRCREV statements. It booted on the Netbook just
>> fine, but without networking.  I went back to the bbappend file and added:
>>
>> SRC_URI += "file://my_wifi.cfg"
>>
>> Then created the my_wifi.cfg file to say:
>>
>> CONFIG_ATH9K_PCI=y
>>
>> after cleaning sstate and bitbake linux-yocto -c compile -f
>> successfully, I couldn't seem to continue.  That when I got the libperl
>> error again like I did originally before I added the SRCREV.
>>
> OK, I have no idea what happened there, but I can say that that if
> you're seeing that message, you're seeing commits that you shouldn't be
> according to the SRCREV i.e. that libperl message was itself added as
> part of the patchset:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.2/commit/?h=standard/base&id=18ad076590b30347af31224304ee58986bd178cf
>
> Tom
>

Okay, for my experiment, I can just use the BSP tarballs. Thanks,

Jim A

>> Jim A
>>
>>>> Jim A
>>>>
>>>>> Tom
>>>>>
>>>>>> Jim A
>>>>>>
>>>>>>>> I got an error compiling the kernel.  It didn't fail yesterday early,
>>>>>>>> but now I get the same failure on Ubuntu 12.04 and Fedora 16.
>>>>>>>>
>>>>>>>> Jim A
>>>>>>>>
>>>>>>>>
>>>>>>>> NOTE: make -C
>>>>>>>> /build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf
>>>>>>>> CC=i586-poky-linux-gcc  -m32    -march=core2 -msse3 -mtune=generic
>>>>>>>> -mfpmath=sse --sysroot=/build/n450-denzil/tmp/sysroots/n450
>>>>>>>> LD=i586-poky-linux-ld --sysroot=/build/n450-denzil/tmp/sysroots/n450
>>>>>>>> prefix=/usr NO_NEWT=1 NO_DWARF=1
>>>>>>>> make: Entering directory
>>>>>>>> `/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
>>>>>>>> Makefile:493: libperl not found, disables Perl scripting support. Please
>>>>>>>> install libperl-dev or perl-devel
>>>>>>>> PERF_VERSION = 3.2.11.629.g382eda3
>>>>>>>> make: Leaving directory
>>>>>>>> `/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
>>>>>>>> make: Entering directory
>>>>>>>> `/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
>>>>>>>> Makefile:493: libperl not found, disables Perl scripting support. Please
>>>>>>>> install libperl-dev or perl-devel
>>>>>>>>          GEN common-cmds.h
>>>>>>>>          * new build flags or prefix
>>>>>>>>          CC perf.o
>>>>>>>>          CC builtin-annotate.o
>>>>>>>>          CC builtin-bench.o
>>>>>>>>          CC bench/sched-messaging.o
>>>>>>>>          CC bench/sched-pipe.o
>>>>>>>>          CC bench/mem-memcpy.o
>>>>>>>>          CC builtin-diff.o
>>>>>>>>          CC builtin-evlist.o
>>>>>>>>          CC builtin-help.o
>>>>>>>>          CC builtin-sched.o
>>>>>>>>          CC builtin-buildid-list.o
>>>>>>>>          CC builtin-buildid-cache.o
>>>>>>>>          CC builtin-list.o
>>>>>>>>          CC builtin-record.o
>>>>>>>>          CC builtin-report.o
>>>>>>>>          CC builtin-stat.o
>>>>>>>>          CC builtin-timechart.o
>>>>>>>>          CC builtin-top.o
>>>>>>>>          CC builtin-script.o
>>>>>>>>          CC builtin-probe.o
>>>>>>>>          CC builtin-kmem.o
>>>>>>>>          CC builtin-lock.o
>>>>>>>>          CC builtin-kvm.o
>>>>>>>>          CC builtin-test.o
>>>>>>>>          CC builtin-inject.o
>>>>>>>>          CC util/abspath.o
>>>>>>>>          CC util/alias.o
>>>>>>>>          CC util/annotate.o
>>>>>>>>          CC util/build-id.o
>>>>>>>>          CC util/config.o
>>>>>>>>          CC util/ctype.o
>>>>>>>>          CC util/debugfs.o
>>>>>>>>          CC util/environment.o
>>>>>>>>          CC util/event.o
>>>>>>>>          CC util/evlist.o
>>>>>>>>          CC util/evsel.o
>>>>>>>>          CC util/exec_cmd.o
>>>>>>>>          CC util/help.o
>>>>>>>>          CC util/levenshtein.o
>>>>>>>>          CC util/parse-options.o
>>>>>>>>          CC util/parse-events.o
>>>>>>>>          CC util/path.o
>>>>>>>>          CC util/rbtree.o
>>>>>>>>          CC util/bitmap.o
>>>>>>>>          CC util/hweight.o
>>>>>>>>          CC util/run-command.o
>>>>>>>>          CC util/quote.o
>>>>>>>>          CC util/strbuf.o
>>>>>>>>          CC util/string.o
>>>>>>>>          CC util/strlist.o
>>>>>>>>          CC util/strfilter.o
>>>>>>>>          CC util/top.o
>>>>>>>>          CC util/usage.o
>>>>>>>>          CC util/wrapper.o
>>>>>>>>          CC util/sigchain.o
>>>>>>>>          CC util/symbol.o
>>>>>>>>          CC util/color.o
>>>>>>>>          CC util/pager.o
>>>>>>>>          CC util/header.o
>>>>>>>>          CC util/callchain.o
>>>>>>>>          CC util/values.o
>>>>>>>>          CC util/debug.o
>>>>>>>>          CC util/map.o
>>>>>>>>          CC util/pstack.o
>>>>>>>>          CC util/session.o
>>>>>>>>          CC util/thread.o
>>>>>>>>          CC util/thread_map.o
>>>>>>>>          CC util/trace-event-parse.o
>>>>>>>>          CC util/trace-event-read.o
>>>>>>>>          CC util/trace-event-info.o
>>>>>>>>          CC util/trace-event-scripting.o
>>>>>>>>          CC util/svghelper.o
>>>>>>>>          CC util/sort.o
>>>>>>>>          CC util/hist.o
>>>>>>>>          CC util/probe-event.o
>>>>>>>>          CC util/util.o
>>>>>>>>          CC util/xyarray.o
>>>>>>>>          CC util/cpumap.o
>>>>>>>>          CC util/cgroup.o
>>>>>>>>          CC arch/x86/util/header.o
>>>>>>>>          CC util/scripting-engines/trace-event-python.o
>>>>>>>>          CC scripts/python/Perf-Trace-Util/Context.o
>>>>>>>>          AR libperf.a
>>>>>>>>          LINK perf
>>>>>>>>          GEN perf-archive
>>>>>>>>          GEN python/perf.so
>>>>>>>> Traceback (most recent call last):
>>>>>>>>        File "util/setup.py", line 6, in <module>
>>>>>>>>          from distutils.command.build_ext   import build_ext   as _build_ext
>>>>>>>>        File
>>>>>>>> "/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/command/build_ext.py",
>>>>>>>> line 16, in <module>
>>>>>>>>          from distutils.sysconfig import customize_compiler, get_python_version
>>>>>>>>        File
>>>>>>>> "/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/sysconfig.py",
>>>>>>>> line 22, in <module>
>>>>>>>>          PREFIX = os.path.normpath(sys.prefix).replace(
>>>>>>>> os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )
>>>>>>>> TypeError: expected a character buffer object
>>>>>>>> cp: cannot stat `python_ext_build/lib/perf.so': No such file or directory
>>>>>>>> make: *** [python/perf.so] Error 1
>>>>>>>> make: Leaving directory `/build/n450-denziERROR: Function failed:
>>>>>>>> do_compile_perf (see
>>>>>>>> /build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/temp/log.do_compile_perf.7739
>>>>>>>> for further information)
>>>>>>>> l/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
>>>>>>>> ERROR: oe_runmake failed
>>>>>>>> _______________________________________________
>>>>>>>> yocto mailing list
>>>>>>>> yocto@yoctoproject.org
>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>



