Return-Path: <king.lijin@huawei.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B094E007C3; Wed,  2 Dec 2015 21:54:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [119.145.14.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 Dec 2015 21:54:37 PST
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [119.145.14.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 917EAE00748
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 21:54:37 -0800 (PST)
Received: from 172.24.1.48 (EHLO szxeml427-hub.china.huawei.com)
	([172.24.1.48])
	by szxrg02-dlp.huawei.com (MOS 4.3.7-GA FastPath queued)
	with ESMTP id CXG83607; Thu, 03 Dec 2015 13:53:29 +0800 (CST)
Received: from [127.0.0.1] (10.177.34.120) by szxeml427-hub.china.huawei.com
	(10.82.67.182) with Microsoft SMTP Server id 14.3.235.1; Thu, 3 Dec 2015
	13:53:25 +0800
Message-ID: <565FD8D4.5070803@huawei.com>
Date: Thu, 3 Dec 2015 13:53:24 +0800
From: Jin Li <lijin14@huawei.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [10.177.34.120]
X-CFilter-Loop: Reflected
X-Mirapoint-Virus-RAPID-Raw: score=unknown(0),
	refid=str=0001.0A090201.565FD8D9.0083, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0, ip=0.0.0.0,
	so=2013-06-18 04:22:30, dmn=2013-03-21 17:37:32
X-Mirapoint-Loop-Id: 72abec884b19f0ad5c15ae3befa00846
Subject: Big Endian set for qemuarm64 build based on poky
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
X-List-Received-Date: Thu, 03 Dec 2015 05:54:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Hi,

There is build error when I'm trying to build qemuarm64 project based on default poky git repo with the big endian set as follows:

l00356543@hulk-test1:~/poky$ git diff meta/conf/machine/include/arm/arch-arm64.inc
diff --git a/meta/conf/machine/include/arm/arch-arm64.inc b/meta/conf/machine/include/arm/arch-arm64.inc
index 866b71f..8fe6660 100644
--- a/meta/conf/machine/include/arm/arch-arm64.inc
+++ b/meta/conf/machine/include/arm/arch-arm64.inc
@@ -1,4 +1,4 @@
-DEFAULTTUNE ?= "aarch64"
+DEFAULTTUNE ?= "aarch64_be"

 require conf/machine/include/arm/arch-armv7a.inc

l00356543@hulk-test1:~/poky$

--------------------------------------------------------------------

Attach the build log:

l00356543@hulk-test1:~/qemuarm64_be$ bitbake core-image-sato
Parsing recipes: 100% |###############################################################################################################| ETA:  00:00:00
Parsing of 888 .bb files complete (0 cached, 888 parsed). 1310 targets, 61 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.28.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "aarch64_be-poky-linux"
MACHINE           = "qemuarm64"
DISTRO            = "poky"
DISTRO_VERSION    = "2.0"
TUNE_FEATURES     = "aarch64 bigendian"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:698c74c373110ed081a7586e21d4a27b8b44c89b"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL http://downloads.sourceforge.net/libusb/libusb-1.0.20.tar.bz2, attempting MIRRORS if available
WARNING: Failed to fetch URL http://bitmath.org/code/mtdev/mtdev-1.1.5.tar.bz2, attempting MIRRORS if available
WARNING: Failed to fetch URL http://wiki.qemu-project.org/download/qemu-2.4.0.1.tar.bz2, attempting MIRRORS if available
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (log file is located at /home/l00356543/qemuarm64_be/tmp/work/qemuarm64-poky-linux/linux-yocto/4.1.13+gitAUTOINC+30c4b4bd79_c22dc676d6-r0/temp/log.do_compile.43788)
ERROR: Logfile of failure stored in: /home/l00356543/qemuarm64_be/tmp/work/qemuarm64-poky-linux/linux-yocto/4.1.13+gitAUTOINC+30c4b4bd79_c22dc676d6-r0/temp/log.do_compile.43788

...

|   LD      arch/arm64/kernel/vdso/built-in.o
| aarch64_be-poky-linux-ld.bfd: usr/initramfs_data.o: compiled for a little endian system and target is big endian
| aarch64_be-poky-linux-ld.bfd: failed to merge target specific data of file usr/initramfs_data.o
| make[3]: *** [usr/built-in.o] Error 1



