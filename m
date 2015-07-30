Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1BB9E00AB4; Thu, 30 Jul 2015 01:41:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69426E00A96
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 01:41:21 -0700 (PDT)
Received: from localhost.localdomain (119.3.11.37.dynamic.jazztel.es
	[37.11.3.119])
	by lists.s-osg.org (Postfix) with ESMTPSA id EE2454632A;
	Thu, 30 Jul 2015 01:36:11 -0700 (PDT)
From: Javier Martinez Canillas <javier@osg.samsung.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 30 Jul 2015 10:34:09 +0200
Message-Id: <1438245251-20437-4-git-send-email-javier@osg.samsung.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
X-Mailman-Approved-At: Sun, 02 Aug 2015 23:22:39 -0700
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Javier Martinez Canillas <javier@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: [meta-raspberrypi][PATCH 3/5] sdcard_image-rpi.bbclass: Allocate more space for boot partition
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
X-List-Received-Date: Thu, 30 Jul 2015 08:41:23 -0000

From: Derek Foreman <derekf@osg.samsung.com>

The boot partition currently has a size of 20 MiB but just the start elf
binaries account almost 12 MiB, which means that only 8 MiB is left for
the kernel image. A recent kernel with many of its options built-in can
easily be more than 4 MiB so let's double the boot partition size to 40
MiB to make sure that it has enough room for the kernel image, the DTBs
and possible even a backup kernel.

Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
[javier: Extended the commit message]
Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>

---

 classes/sdcard_image-rpi.bbclass | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 7592cc170451..4211fd438989 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -14,14 +14,14 @@ inherit linux-raspberrypi-base
 #                                                     Default Free space = 1.3x
 #                                                     Use IMAGE_OVERHEAD_FACTOR to add more space
 #                                                     <--------->
-#            4MiB              20MiB           SDIMG_ROOTFS
+#            4MiB              40MiB           SDIMG_ROOTFS
 # <-----------------------> <----------> <---------------------->
 #  ------------------------ ------------ ------------------------
 # | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            |
 #  ------------------------ ------------ ------------------------
 # ^                        ^            ^                        ^
 # |                        |            |                        |
-# 0                      4MiB     4MiB + 20MiB       4MiB + 20Mib + SDIMG_ROOTFS
+# 0                      4MiB     4MiB + 40MiB       4MiB + 40Mib + SDIMG_ROOTFS
 
 # This image depends on the rootfs image
 IMAGE_TYPEDEP_rpi-sdimg = "${SDIMG_ROOTFS_TYPE}"
@@ -40,7 +40,7 @@ SDIMG_KERNELIMAGE_raspberrypi2 ?= "kernel7.img"
 BOOTDD_VOLUME_ID ?= "${MACHINE}"
 
 # Boot partition size [in KiB] (will be rounded up to IMAGE_ROOTFS_ALIGNMENT)
-BOOT_SPACE ?= "20480"
+BOOT_SPACE ?= "40960"
 
 # Set alignment to 4MB [in KiB]
 IMAGE_ROOTFS_ALIGNMENT = "4096"
-- 
2.4.3


