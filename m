Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D690EE009FA; Thu,  8 Dec 2016 14:59:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37558E0098A
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 14:59:44 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id u144so201055wmu.0
	for <yocto@yoctoproject.org>; Thu, 08 Dec 2016 14:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=QyamwCTXZs/nXgOnL2UwvDKwTY9KCEREXFoOnS0wImA=;
	b=YaIO9RRGps9XqXgWYzZsGhQg1GoHxypZ2SNoe9ufpkqwBtN98U4BB45sULnp3NxTjA
	Gre5KqhbBbLxs6xqk1I0d7Y9o4grb4kqD1XiiociYn/hQAKDMatgf88jTpbXNyHZT4WA
	y2fXFuEyFAffv5+NBW4MmbFtQJEwWnY1WQuz8BoGQGhWKfJXIFkI26MZ8fZa1RWLPpHY
	5L59F2oLDXihGo0rZvHsy2LxdspyaNeXv0OMjT3uzjGTdxRea66OjRPKjTUivq29hYa6
	hkrJ0DLWuOQBsJmf9oPSjzQMonYgxE7mV8Vp3CP6BVfxPF3n3vztaXUrIym7JW0SfVkP
	6ItQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=QyamwCTXZs/nXgOnL2UwvDKwTY9KCEREXFoOnS0wImA=;
	b=gvvoJJDfSKU9aQdHhUOAz4sOUo3IjhOFlTRWHrw/FjnUDwuJryOzTP9KGDXHa6kkxj
	tLv0Dlx21EGZs8labkzxYwGCUNEfqaTL/1B+wcR78M+9nRol5ujS+Zxgq+tcyM5QZ0Tt
	DZDekYgm7fPnz5PuNxEppgCDJczksmt5FbTLDng/FucjJOazr0318ZooOw9BL1T94HzD
	H5Wb68NT7s799OSFfRw3qIeWdnAAfH4Ojj6cmHikWgU7PkNztQdgWXm/PqKq+4W20t6G
	x4lDyz2XPSa3KJ2I/b1NaI/02yiiyesm9krSNeGDud2mWe9xrYFN+5HBuupRUmuWGQ0H
	rKIQ==
X-Gm-Message-State: AKaTC02nVMoqjycr/VrwNqtS+DTRul50e4perPaT1kcopWOCklhKFvpTNZIPYEdS06nG6w==
X-Received: by 10.25.210.147 with SMTP id j141mr21898345lfg.78.1481237983736; 
	Thu, 08 Dec 2016 14:59:43 -0800 (PST)
Received: from debian.lan (78-71-171-99-no154.tbcn.telia.com. [78.71.171.99])
	by smtp.gmail.com with ESMTPSA id
	b76sm5960064lfg.41.2016.12.08.14.59.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 08 Dec 2016 14:59:43 -0800 (PST)
From: Mirza Krak <mirza.krak@gmail.com>
X-Google-Original-From: Mirza Krak < mirza.krak@gmail.com >
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2016 23:00:19 +0100
Message-Id: <1481234419-30578-1-git-send-email-mirza.krak@gmail.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] u-boot: drop patch to include lowlevel_init
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
X-List-Received-Date: Thu, 08 Dec 2016 22:59:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Mirza Krak <mirza.krak@gmail.com>

U-boot has been updated to 2016.11 in OE-core Which means that we can
use the upstream patches instead of the backports and no need for the third
patch which causes a build error when used with 2016.11.

Signed-off-by: Mirza Krak <mirza.krak@gmail.com>
---
 ...0001-arm-add-save_boot_params-for-ARM1176.patch |  4 +---
 ...through-of-the-firmware-provided-FDT-blob.patch |  7 ++----
 .../0003-Include-lowlevel_init.o-for-rpi2.patch    | 25 ----------------------
 recipes-bsp/u-boot/u-boot_%.bbappend               |  1 -
 4 files changed, 3 insertions(+), 34 deletions(-)
 delete mode 100644 recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch

diff --git a/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176.patch b/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176.patch
index a5ebff5..97a4144 100644
--- a/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176.patch
+++ b/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176.patch
@@ -1,7 +1,7 @@
 From 3e10fcde3f3c24a488866dd33fa3f5d46ff3d7a3 Mon Sep 17 00:00:00 2001
 From: =?UTF-8?q?C=C3=A9dric=20Schieli?= <cschieli@gmail.com>
 Date: Fri, 11 Nov 2016 11:59:06 +0100
-Subject: [PATCH] arm: add save_boot_params for ARM1176
+Subject: [PATCH 1/1] arm: add save_boot_params for ARM1176
 MIME-Version: 1.0
 Content-Type: text/plain; charset=UTF-8
 Content-Transfer-Encoding: 8bit
@@ -13,8 +13,6 @@ feature mirrors the equivalent ARMv7 feature.

 Signed-off-by: Cédric Schieli <cschieli@gmail.com>
 Acked-by: Stephen Warren <swarren@nvidia.com>
-Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
-Upstream-status: Backport
 ---
  arch/arm/cpu/arm1176/start.S | 10 ++++++++++
  1 file changed, 10 insertions(+)
diff --git a/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch b/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch
index 323b7ab..95ad94c 100644
--- a/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch
+++ b/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch
@@ -1,7 +1,7 @@
 From ade243a211d62327e9ebadce27bbbff7981e37f0 Mon Sep 17 00:00:00 2001
 From: =?UTF-8?q?C=C3=A9dric=20Schieli?= <cschieli@gmail.com>
 Date: Fri, 11 Nov 2016 11:59:07 +0100
-Subject: [PATCH] rpi: passthrough of the firmware provided FDT blob
+Subject: [PATCH 1/1] rpi: passthrough of the firmware provided FDT blob
 MIME-Version: 1.0
 Content-Type: text/plain; charset=UTF-8
 Content-Transfer-Encoding: 8bit
@@ -34,11 +34,8 @@ ${fdt_addr} and pass it to the kernel.

 [1] https://www.raspberrypi.org/forums//viewtopic.php?f=107&t=134018

-Upstream-Status: Backport
-
 Signed-off-by: Cédric Schieli <cschieli@gmail.com>
 Acked-by: Stephen Warren <swarren@nvidia.com>
-Signed-off-by: Jonathan Liu <net147@gmail.com>
 ---
  board/raspberrypi/rpi/Makefile        |  1 +
  board/raspberrypi/rpi/lowlevel_init.S | 36 +++++++++++++++++++++++++++++++++++
@@ -152,5 +149,5 @@ index 6245b36..ffd6d31 100644
  	set_usbethaddr();
  #ifdef CONFIG_ENV_VARS_UBOOT_RUNTIME_CONFIG
 --
-2.10.2
+2.1.4

diff --git a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch b/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
deleted file mode 100644
index ce0273f..0000000
--- a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-From 1eb01436bc57ad32519a4567a1c9ec82d52d60a1 Mon Sep 17 00:00:00 2001
-From: Paul Barker <paul@paulbarker.me.uk>
-Date: Tue, 29 Nov 2016 19:47:49 +0000
-Subject: [PATCH] Include lowlevel_init.o for rpi2
-
-Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
-Upstream-status: Inappropriate
-    (not needed upstream as rpi_2 board directory is removed in latest
-    version)
----
- board/raspberrypi/rpi_2/Makefile | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/board/raspberrypi/rpi_2/Makefile b/board/raspberrypi/rpi_2/Makefile
-index d82cd21..9f865c5 100644
---- a/board/raspberrypi/rpi_2/Makefile
-+++ b/board/raspberrypi/rpi_2/Makefile
-@@ -5,3 +5,4 @@
- #
-
- obj-y	:= ../rpi/rpi.o
-+obj-y	+= ../rpi/lowlevel_init.o
---
-2.1.4
-
diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
index a4545f0..0edc8dc 100644
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -3,5 +3,4 @@ RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
 SRC_URI_append_rpi = " \
     file://0001-arm-add-save_boot_params-for-ARM1176.patch \
     file://0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch \
-    file://0003-Include-lowlevel_init.o-for-rpi2.patch \
     "
--
2.1.4


