Return-Path: <jarraj400@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D508E00C7C; Thu, 12 Nov 2015 20:43:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jarraj400[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 204C0E00C75
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 20:43:12 -0800 (PST)
Received: by lbblt2 with SMTP id lt2so47559535lbb.3
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 20:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ueMcvgrpQvYaKrVGgKDPjxM26sV7I1dEGDZ0sueeq+Y=;
	b=dX+bklGHx1BJv9RfGQy7wfMrd1kkhyzcWZH5wPpR1BLno6p0SrjKK/GqQ9nqLYT2As
	e+wo126yes5ydvAF1pO/EB6ddEvpqSa+9EeACG4cUIrFkrPJAbx7RDpc1btW5SPgqA12
	/y2LPuKnmVWtJZExEJgSxqUsy0CyLdxS1s+GfS0wrCao/SP/2xxmMiGyG3833e2zhQ4b
	Z86KNMKoy6GyBQ0FN1hfAxxSzqPkdfsEZA+xrbpX/vfZ0LoukM4rZ6vrdEkHld6qoGIe
	oqVcnhAOZBhKk/yb+lhPEhLYIpKFuMmfapXOO5y/QVxh80chVnYf4k7fV5xfonOjxIfI
	OpWQ==
MIME-Version: 1.0
X-Received: by 10.112.150.4 with SMTP id ue4mr8968350lbb.40.1447389791247;
	Thu, 12 Nov 2015 20:43:11 -0800 (PST)
Received: by 10.25.25.13 with HTTP; Thu, 12 Nov 2015 20:43:11 -0800 (PST)
Date: Fri, 13 Nov 2015 10:13:11 +0530
Message-ID: <CAK3ATuEWnEdvmK=qiFBsOAzVSDP0gx8HYipwqiN4FJEv2ZFRyQ@mail.gmail.com>
From: Raj Jar <jarraj400@gmail.com>
To: yocto@yoctoproject.org
Subject: raspberrypi create_image.rpi-sdimg fails
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
X-List-Received-Date: Fri, 13 Nov 2015 04:43:14 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

This is my poky version

Build Configuration:
BB_VERSION        = "1.26.0"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi"
DISTRO            = "poky"
DISTRO_VERSION    = "1.8.1"
TUNE_FEATURES     = "arm armv6 vfp arm1176jzfs callconvention-hard"
TARGET_FPU        = "vfp"
meta
meta-yocto
meta-yocto-bsp    = "fido:b74ea963cefffad9fbd91d4eb9b240f6a8c86cd0"
meta-raspberrypi  = "fido:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"

>
> I have 60GB space in my build system still i face
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Error: The image creation script
> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
> returned 1:
> Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> 0+0 records in
> 0+0 records out
> 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> Model:  (file)
> Disk
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
> 105MB
> Sector size (logical/physical): 512B/512B
> Partition Table: msdos
> Disk Flags:
>
> Number  Start  End    Size    Type    File system  Flags
>  1      4194kB  25.2MB  21.0MB  primary              boot, lba
>  2      25.2MB  105MB  79.7MB  primary
>
> mkfs.vfat 2.11 (12 Mar 2005)
> Disk full
> WARNING:
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
> exit 1 from
>  mcopy -i
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
> -s
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
> ::kernel.img
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> ERROR: Task 7
> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
> rerun and 1 failed.
> No currently running tasks (1953 of 1955)
>
> Summary: 1 task failed:
>
> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> rpi-hwup-image.bb, do_rootfs
>

-- 
Regards,
RAJ M
Mob. # +91-9597208150


Have a great day ahead.

