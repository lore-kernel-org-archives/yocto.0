Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1890EE00D60; Fri,  2 Dec 2016 23:33:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D6D1E009CA
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 23:33:43 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 4E60268A019; Sat,  3 Dec 2016 07:33:42 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 8660968A019;
	Sat,  3 Dec 2016 07:33:41 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id D16F76740355;
	Sat,  3 Dec 2016 08:33:40 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
Date: Sat, 3 Dec 2016 08:33:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
Subject: [meta-raspberrypi] Current master broken
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
X-List-Received-Date: Sat, 03 Dec 2016 07:33:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm currently unable to build for the RaspberryPi-3 using the master branch:

Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-amltd-linux-gnueabi"
MACHINE           = "raspberrypi3"
DISTRO            = "amltd"
DISTRO_VERSION    = "2.2+snapshot-20161202"
TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7"
TARGET_FPU        = "hard"
meta              = "master:9e63f81c78e284c9b325fe04a1b59e61c7ad8a1a"
meta-amltd        = "master:074120ab3a82cea0ac50d4e9eec89130a860a4fa"
meta-raspberrypi  = "master:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9"

Initialising tasks: 100% |#############################################################| Time: 0:00:00
Checking sstate mirror object availability: 100% |#####################################| Time: 0:00:00
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 do_kernel_metadata: Function failed: do_kernel_metadata (log 
file is located at 
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647)
ERROR: Logfile of failure stored in: 
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647
Log data follows:
| DEBUG: Executing shell function do_kernel_metadata
| [ERROR]: processing of file /tmp/tmp.bXPr8PVPz3 failed
| /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd: line 29: : No such file or directory
|
| Context around the error is:
|
|     #
|     prefix /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
|     kconf non-hardware /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
|     prefix /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
|     patch "/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
|     # run time: 0 seconds
|     # processed files:
|     # _cfg /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
|     # _cfg /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
|
| See pre-processed file /tmp/tmp.bXPr8PVPz3 for more details
| #
| # scc v0.8
| # processed: Fri Dec  2 04:12:25 CET 2016
| #
| # This is a scc output file, do not edit
| #
| [ERROR]: processing of file /tmp/tmp.eTLAT789Q2 failed
| # _reloc_dir /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
| # _reloc_dir /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
| /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd: line 29: : No such file or directory
|
| Context around the error is:
|
|     #
|     prefix /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
|     kconf non-hardware /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
|     prefix /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
|     patch "/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
|     # run time: 1 seconds
|     # processed files:
|     # _cfg /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
|     # _cfg /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
|
| See pre-processed file /tmp/tmp.eTLAT789Q2 for more details
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_kernel_metadata (log file is located at 
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647)
ERROR: Task (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb:do_kernel_metadata) 
failed with exit code '1'

I also tried kernel version 4.7:
ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: Fetcher failure: Unable to find revision 
a45a35c08598b23f9fd82e49c83b46c7d536244f in branch rpi-4.7.y even from upstream
ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: Fetcher failure for URL: 
'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y'. Unable to fetch URL from any source.
ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in: 
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+a45a35c085-r0/temp/log.do_fetch.6133
ERROR: Task (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.7.bb:do_fetch) failed 
with exit code '1'

I was able to build with 4.8, but X didn't come up :-(

Any ideas?

Note: I changed the 4.7 recipe to use a good revision (c2cbd9c611)
but then I suffered the same problem installing the .dtbo patch :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

