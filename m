Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F55FE0072A; Thu, 11 Dec 2014 04:36:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8CEAE002F9
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 04:36:30 -0800 (PST)
Received: from localhost.localdomain (unknown [78.10.193.111])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 6D7181C84F8;
	Thu, 11 Dec 2014 13:36:29 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org, Bruce Ashfield <bruce.ashfield@windriver.com>,
	Denys Dmytriyenko <denis@denix.org>
Date: Thu, 11 Dec 2014 13:36:15 +0100
Message-Id: <1418301375-10904-1-git-send-email-maciej.borzecki@open-rnd.pl>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1418139871-21134-1-git-send-email-maciej.borzecki@open-rnd.pl>
References: <1418139871-21134-1-git-send-email-maciej.borzecki@open-rnd.pl>
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: [meta-yocto-bsp][PATCH] README.hardware: update beaglebone entry to match KERNEL_IMAGETYPE
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
X-List-Received-Date: Thu, 11 Dec 2014 12:36:36 -0000

U-boot 2014.07 defaults to using a gzip compressed kernel
image (zImage). A proper change upading KERNEL_IMAGETYPE has already
been introduced to beaglebone machine config. This patch updates manual
steps to creating a SD card image with proper kernel image name.

Signed-off-by: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Signed-off-by: Maciek Borzecki <maciek.borzecki@gmail.com>
---
 README.hardware | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/README.hardware b/README.hardware
index d8faaa3..a97f104 100644
--- a/README.hardware
+++ b/README.hardware
@@ -251,14 +251,14 @@ if used via a usb card reader):
   5. If using core-image-minimal rootfs, install the modules
      # tar x -C /media/root -f modules-beaglebone.tgz
 
-  6. If using core-image-minimal rootfs, install the kernel uImage into /boot
+  6. If using core-image-minimal rootfs, install the kernel zImage into /boot
      directory of rootfs
-     # cp uImage-beaglebone.bin /media/root/boot/uImage
+     # cp zImage-beaglebone.bin /media/root/boot/zImage
 
   7. If using core-image-minimal rootfs, also install device tree (DTB) files
      into /boot directory of rootfs
-     # cp uImage-am335x-bone.dtb /media/root/boot/am335x-bone.dtb
-     # cp uImage-am335x-boneblack.dtb /media/root/boot/am335x-boneblack.dtb
+     # cp zImage-am335x-bone.dtb /media/root/boot/am335x-bone.dtb
+     # cp zImage-am335x-boneblack.dtb /media/root/boot/am335x-boneblack.dtb
 
   8. Unmount the SD partitions, insert the SD card into the Beaglebone, and
      boot the Beaglebone
-- 
1.9.3


