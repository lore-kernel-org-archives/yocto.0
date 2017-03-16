Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 348BBE0098A; Thu, 16 Mar 2017 05:08:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4AF3E0094C
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 05:08:29 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id A7A3068A01C; Thu, 16 Mar 2017 12:08:25 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 2D12668A019;
	Thu, 16 Mar 2017 12:08:25 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id D81456740255;
	Thu, 16 Mar 2017 13:08:24 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <46d7a45a-16b7-fb3d-12bf-97f54a9c5de6@mlbassoc.com>
Date: Thu, 16 Mar 2017 13:08:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: Random failure
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
X-List-Received-Date: Thu, 16 Mar 2017 12:08:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I've been running the same sequence many times today - basically
updating a source file for a recipe, then rebuilding it.  Out of
the 40+ times I've run it, I get these intermittent errors about
1 in 10 times.  Nothing changed except for one of the source files
included in my recipe.  Here's the output:

===================================================================
$ MACHINE=teton-p7621 bitbake production-tests && MACHINE=teton-p7621 bitbake package-index
NOTE: Started PRServer with DBfile: /build/p7619_2016-02-23/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 44600, PID: 7064
Loading cache: 100% |#############################################################################################| 
Time: 0:00:00
Loaded 1717 entries from dependency cache.
Parsing recipes: 100% |###########################################################################################| 
Time: 0:00:00
Parsing of 1219 .bb files complete (1218 cached, 1 parsed). 1717 targets, 335 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.33.2"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-amltd-linux-gnueabi"
MACHINE           = "teton-p7621"
DISTRO            = "amltd"
DISTRO_VERSION    = "2.2+snapshot-20170316"
TUNE_FEATURES     = "arm armv7ve vfp thumb neon callconvention-hard cortexa7"
TARGET_FPU        = "hard"
meta              = "master:b1f09df0f664052e39d939b759a63b05d767b8ec"
meta-amltd        = "master:a57fa8ec07224f1d1d87e0357158bcbe7a4bc010"
meta-teton-imx6-p761x = "master:a0b1a6c5e1f76ca74d93b26018eb0753a2306a29"

Initialising tasks: 100% |########################################################################################| 
Time: 0:00:00
Checking sstate mirror object availability: 100% |################################################################| 
Time: 0:00:00
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: production-tests-1.0-r0 do_configure: Function failed: do_configure (log file is located at 
/build/p7619_2016-02-23/tmp/work/teton_p7621-amltd-linux-gnueabi/production-tests/1.0-r0/temp/log.do_configure.7131)
ERROR: Logfile of failure stored in: 
/build/p7619_2016-02-23/tmp/work/teton_p7621-amltd-linux-gnueabi/production-tests/1.0-r0/temp/log.do_configure.7131
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Removing manifest: 
/build/p7619_2016-02-23/tmp/sysroots-components/teton_p7621/production-tests/sysroot-providers/production-tests
| DEBUG: Removing manifest: /build/p7619_2016-02-23/tmp/sysroots-components/teton_p7621/production-tests/sysroot-providers/
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| find: ‘/build/p7619_2016-02-23/tmp/work/teton_p7621-amltd-linux-gnueabi/production-tests/1.0-r0/license-destdir’: No 
such file or directory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at 
/build/p7619_2016-02-23/tmp/work/teton_p7621-amltd-linux-gnueabi/production-tests/1.0-r0/temp/log.do_configure.7131)
ERROR: Task (/local/poky-cutting-edge/meta-teton-imx6-p761x/packages/misc/production-tests_1.0.bb:do_configure) failed 
with exit code '1'
NOTE: Tasks Summary: Attempted 454 tasks of which 448 didn't need to be rerun and 1 failed.

===================================================================

If I immediately rerun the same sequence, the error goes away.

Any ideas what might be causing this?  It's more of an annoyance than
anything else, but it also might point to a deeper problem?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

