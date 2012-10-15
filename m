Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3AA6E00293
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 13:36:05 -0700 (PDT)
Received: by mail-gg0-f176.google.com with SMTP id e5so1538240ggk.35
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 13:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=QGAkW6tKQT8FmIk3jogDnEewBM5rWM1GMEsBUMT2DBo=;
	b=BfKR27+SXcqN+tGqsOmLOE9o+hgpDEFzdk0V3V07DcpEoe+kN9f1SQBHBoHQIbba7h
	phgxZLR7BOJUo7b2PezGTrUpLA4gryHzH1OEWlUtLIF+Q7TcXfmxAWAtiuNuvDhJHxHG
	oqFoArCJ9OHgCxCazBxdIlO7wlNCtkuYNjoHG7ew0u8p20cWrBGopLa47dONMPBb81VI
	AVjkq05nohqVnfQCpkSiO77fVsjiw/MH1juxGnRizI2VxlDx0ZjGT1MtEMvKp0gc9Mry
	PAimZZgHKkRibJ5X5oB96KLzF2MecfqzRIyxoHMdLRAOmNDB8sb+TYa5BfRnslcbIBT+
	PYBw==
Received: by 10.236.118.17 with SMTP id k17mr11654805yhh.69.1350333363104;
	Mon, 15 Oct 2012 13:36:03 -0700 (PDT)
Received: from [192.168.0.54] (cpe-174-097-157-052.nc.res.rr.com.
	[174.97.157.52])
	by mx.google.com with ESMTPS id h22sm16129518yhk.13.2012.10.15.13.36.01
	(version=SSLv3 cipher=OTHER); Mon, 15 Oct 2012 13:36:02 -0700 (PDT)
Message-ID: <507C73B1.5040509@gmail.com>
Date: Mon, 15 Oct 2012 16:36:01 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121011 Thunderbird/16.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5076E14D.4010301@gmail.com>
In-Reply-To: <5076E14D.4010301@gmail.com>
Subject: Re: Build failure using Master branch for Crownbay
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
X-List-Received-Date: Mon, 15 Oct 2012 20:36:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/11/2012 11:10 AM, Jim Abernathy wrote:
> I just did a pull today and tried to rebuild Crownbay BSP which I 
> successfully built yesterday.  I'm looking for a case where the 
> rebuild fails on a previously successful build with just running 
> bitbake core-image-sato without deleting any files or cleaning 
> anything, as I've been instructed previously.
>
> I got such a failure today and the console log is below.  I'll hold 
> off deleting the build directory and rebuilding as I usually do when 
> this happens, until I hear from the experts on how to proceed.
>
> JIm A
>
Since I didn't get any response, I went ahead and did "bitbake -c 
cleansstate emgd-driver-bin" and then did a "bitbake core-image-sato".  
The image built fine and booted fine.

Jim A


> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "crownbay"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3+snapshot-20121011"
> TUNE_FEATURES     = "m32 core2"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "master:df127c9cef334955e72420724fa6e1f6a6d44662"
> meta-intel
> meta-crownbay     = "master:5d8a05811101f7d69994f4028ec620c4480f6da4"
> meta-jfa          = "<unknown>:<unknown>"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: preferred version 7.11 of mesa-dri not available (for item 
> virtual/libgl)
> NOTE: versions of mesa-dri available: 2:8.0.4 
> 2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
> NOTE: preferred version 7.11 of mesa-dri not available (for item 
> mesa-dri)
> NOTE: versions of mesa-dri available: 2:8.0.4 
> 2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
> NOTE: preferred version 7.11 of mesa-dri not available (for item 
> mesa-dri-dev)
> NOTE: versions of mesa-dri available: 2:8.0.4 
> 2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
> NOTE: preferred version 7.11 of mesa-dri not available (for item 
> mesa-dri)
> NOTE: versions of mesa-dri available: 2:8.0.4 
> 2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: do_install (see 
> /build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/temp/log.do_install.28628 
> for further information)
> ERROR: Logfile of failure stored in: 
> /build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/temp/log.do_install.28628
> Log data follows:
> | DEBUG: Executing shell function do_install
> | cpio: ./usr/lib/libgstvabuffer.so.0 not created: newer or same age 
> version exists
> | cpio: ./usr/lib/libgstvabuffer.so.0.10.8 not created: newer or same 
> age version exists
> | 19 blocks
> | cpio: ./usr/lib/libmixcommon.so.0 not created: newer or same age 
> version exists
> | cpio: ./usr/lib/libmixcommon.so.0.10.8 not created: newer or same 
> age version exists
> | 28 blocks
> | cpio: ./usr/lib/libmixvbp.so.0 not created: newer or same age 
> version exists
> | cpio: ./usr/lib/libmixvbp.so.0.10.8 not created: newer or same age 
> version exists
> | cpio: ./usr/lib/libmixvbp_h264.so.0 not created: newer or same age 
> version exists
> | cpio: ./usr/lib/libmixvbp_h264.so.0.10.8 not created: newer or same 
> age version exists
> | cpio: ./usr/lib/libmixvbp_mpeg4.so.0 not created: newer or same age 
> version exists
> | cpio: ./usr/lib/libmixvbp_mpeg4.so.0.10.8 not created: newer or same 
> age version exists
> | cpio: ./usr/lib/libmixvbp_vc1.so.0 not created: newer or same age 
> version exists
> | cpio: ./usr/lib/libmixvbp_vc1.so.0.10.8 not created: newer or same 
> age version exists
> | 358 blocks
> | cpio: ./usr/lib/libmixvideo.so.0 not created: newer or same age 
> version exists
> | cpio: ./usr/lib/libmixvideo.so.0.10.9 not created: newer or same age 
> version exists
> | 465 blocks
> | install: omitting directory 
> `/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/dri'
> | install: omitting directory 
> `/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/gstreamer-0.10'
> | install: cannot stat 
> `/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libEGL.so': 
> No such file or directory
> | install: cannot stat 
> `/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libGLES_CM.so': 
> No such file or directory
> | install: cannot stat 
> `/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libGLESv2.so': 
> No such file or directory
> | install: cannot stat 
> `/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libOpenVG.so': 
> No such file or directory
> | install: cannot stat 
> `/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libOpenVGU.so': 
> No such file or directory
> | install: omitting directory 
> `/build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/xorg'
> | ERROR: Function failed: do_install (see 
> /build/crownbay-master/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/temp/log.do_install.28628 
> for further information)
> ERROR: Task 3814 
> (/home/jim/poky/meta-intel/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb, 
> do_install) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 4452 tasks of which 2802 didn't need to 
> be rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
> /home/jim/poky/meta-intel/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb, 
> do_install
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> jim@jim-ubuntu-x64:/build/crownbay-master$
>


