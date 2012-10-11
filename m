Return-Path: <jfabernathy@gmail.com>
Received: from mail-yh0-f48.google.com (mail-yh0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFEA4E0027E
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 08:10:10 -0700 (PDT)
Received: by mail-yh0-f48.google.com with SMTP id q46so543510yhf.35
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 08:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=QkSrTfBsH0yWun/EG8kHoTlLbTUHGGNlmxVztj+zv3o=;
	b=BeLeSFLYfCqpxOM3b92m2VVnCpeKb1n3qP86NVDEvPCc83I341T+5TGdwvUtnXHZ1Y
	5E4QmeD1NnJfH+PzN5jn1IuPzoMTqzsOh64JVhey0UpQw4nQ86tEbxzsvo3zEjrA+xHx
	ASJ4BEDOQ0bVvV34DuXTxk1v+prIjc6MH7BfUqy7KKCruGK7A0DSK6A8oRC3fg281IKC
	Fkksg19Y06c2VEeoE9VeoTQls12axt/LBZnWWnZ1AYqao6bykRQCug7NjPAaeMaa9b0w
	o3vryGgBnqvNxTxZP7+4Cd8V76tS/ik/6EwbCI1qzOn0dDV1garzOGZ/LcVdn9Yp2nrJ
	0dOA==
Received: by 10.101.136.19 with SMTP id o19mr334348ann.40.1349968207277;
	Thu, 11 Oct 2012 08:10:07 -0700 (PDT)
Received: from [192.168.0.54] (cpe-174-097-157-052.nc.res.rr.com.
	[174.97.157.52])
	by mx.google.com with ESMTPS id p1sm3974019anj.13.2012.10.11.08.10.06
	(version=SSLv3 cipher=OTHER); Thu, 11 Oct 2012 08:10:06 -0700 (PDT)
Message-ID: <5076E14D.4010301@gmail.com>
Date: Thu, 11 Oct 2012 11:10:05 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Build failure using Master branch for Crownbay
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
X-List-Received-Date: Thu, 11 Oct 2012 15:10:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just did a pull today and tried to rebuild Crownbay BSP which I 
successfully built yesterday.  I'm looking for a case where the rebuild 
fails on a previously successful build with just running bitbake 
core-image-sato without deleting any files or cleaning anything, as I've 
been instructed previously.

I got such a failure today and the console log is below.  I'll hold off 
deleting the build directory and rebuilding as I usually do when this 
happens, until I hear from the experts on how to proceed.

JIm A

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "crownbay"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20121011"
TUNE_FEATURES     = "m32 core2"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:df127c9cef334955e72420724fa6e1f6a6d44662"
meta-intel
meta-crownbay     = "master:5d8a05811101f7d69994f4028ec620c4480f6da4"
meta-jfa          = "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 7.11 of mesa-dri not available (for item 
virtual/libgl)
NOTE: versions of mesa-dri available: 2:8.0.4 
2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
NOTE: preferred version 7.11 of mesa-dri not available (for item mesa-dri)
NOTE: versions of mesa-dri available: 2:8.0.4 
2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
NOTE: preferred version 7.11 of mesa-dri not available (for item 
mesa-dri-dev)
NOTE: versions of mesa-dri available: 2:8.0.4 
2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
NOTE: preferred version 7.11 of mesa-dri not available (for item mesa-dri)
NOTE: versions of mesa-dri available: 2:8.0.4 
2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_install (see 
/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/temp/log.do_install.28628 
for further information)
ERROR: Logfile of failure stored in: 
/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/temp/log.do_install.28628
Log data follows:
| DEBUG: Executing shell function do_install
| cpio: ./usr/lib/libgstvabuffer.so.0 not created: newer or same age 
version exists
| cpio: ./usr/lib/libgstvabuffer.so.0.10.8 not created: newer or same 
age version exists
| 19 blocks
| cpio: ./usr/lib/libmixcommon.so.0 not created: newer or same age 
version exists
| cpio: ./usr/lib/libmixcommon.so.0.10.8 not created: newer or same age 
version exists
| 28 blocks
| cpio: ./usr/lib/libmixvbp.so.0 not created: newer or same age version 
exists
| cpio: ./usr/lib/libmixvbp.so.0.10.8 not created: newer or same age 
version exists
| cpio: ./usr/lib/libmixvbp_h264.so.0 not created: newer or same age 
version exists
| cpio: ./usr/lib/libmixvbp_h264.so.0.10.8 not created: newer or same 
age version exists
| cpio: ./usr/lib/libmixvbp_mpeg4.so.0 not created: newer or same age 
version exists
| cpio: ./usr/lib/libmixvbp_mpeg4.so.0.10.8 not created: newer or same 
age version exists
| cpio: ./usr/lib/libmixvbp_vc1.so.0 not created: newer or same age 
version exists
| cpio: ./usr/lib/libmixvbp_vc1.so.0.10.8 not created: newer or same age 
version exists
| 358 blocks
| cpio: ./usr/lib/libmixvideo.so.0 not created: newer or same age 
version exists
| cpio: ./usr/lib/libmixvideo.so.0.10.9 not created: newer or same age 
version exists
| 465 blocks
| install: omitting directory 
`/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/dri'
| install: omitting directory 
`/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/gstreamer-0.10'
| install: cannot stat 
`/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libEGL.so': 
No such file or directory
| install: cannot stat 
`/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libGLES_CM.so': 
No such file or directory
| install: cannot stat 
`/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libGLESv2.so': 
No such file or directory
| install: cannot stat 
`/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libOpenVG.so': 
No such file or directory
| install: cannot stat 
`/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libOpenVGU.so': 
No such file or directory
| install: omitting directory 
`/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/xorg'
| ERROR: Function failed: do_install (see 
/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/temp/log.do_install.28628 
for further information)
ERROR: Task 3814 
(/home/jim/poky/meta-intel/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb, 
do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4452 tasks of which 2802 didn't need to 
be rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
/home/jim/poky/meta-intel/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb, 
do_install
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
jim@jim-ubuntu-x64:/build/crownbay-master$


