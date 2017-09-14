Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20210E0091D; Thu, 14 Sep 2017 14:22:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3B59E0078E
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 14:22:09 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id x17so1174372wmd.5
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 14:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=4JYzCynGPzdaAkhi8kwWmNtv3MyZBM0XZeS3sOssBMI=;
	b=Mptx5c7ClDg+uPWyeqrkEvz2rZw+OiC7UBeR3ZANE5vgIjjYJqvrBrKIygcVi1dL5R
	KBKJ1hPBydBTWLQ1Scdn6LG46FOiS0sWzlRGKpTAuIK3XaRdYdkBc9A7EKZJV+ay6z7o
	9Qvn8IBZ0TG1F4vdqmkYSk7T8XlBWwVDfmdtYFwW8P4L9cy1AZiCZ7wy+qV85gyCzQc8
	mzu7wzVZWXjQUMGaSWEgoueQBQb+q+PoyD9QuLA7iMSxcjqtOfxrgKbkiioSyHg7x/oj
	d5xq9/Za2l1aLxU9RUOCGrGWkZLjPEGErD8WPsPaiQOETsiQQFLWyZLBO/oI1ZEZyfta
	2wfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=4JYzCynGPzdaAkhi8kwWmNtv3MyZBM0XZeS3sOssBMI=;
	b=IKYezU8WQJJqRD5tYHFlLZmt51ffiubXSwLuweFGRX2GJzHqDuuxdEkwNxNFCMghLq
	D42jnyxU7AalBDkWnyljGP6LPVBGfop6ZVaXGnxi94I2oEVQAQDpb41wCz5TY1Nqrmn0
	0CnTsuFiEiaWfjy2v63nTbeU6h+6eCdfbYaHJgkvZuA3jdmteBNrHlidE4386UqXIzfn
	7p/k1l74CSP5hr7O/A6z+/efzdNVuktMeHWvb6g6TVOV7G3efC6aO/OWvWKpAduUw+NP
	u1sBroDMkpNHH4wtOIHFNFk31+TCdti32XP3qweNWwi0iDQxWHeXIOG80i2miDq2R7TP
	eS6g==
X-Gm-Message-State: AHPjjUhJFgy3sEaEX4tRFZtT6YtmbcbaYUqXTnWSl516e6co81MDJVx+
	90809z/FlXMXvEdDW6BGJZGVUg==
X-Google-Smtp-Source: AOwi7QC93/sZnYoCVZ3Kyut0g+wjsZJKBJNvuxqvVlNU4MEISLzGXTdo9Dw/Um/tN65QtccEsGVBVg==
X-Received: by 10.28.46.16 with SMTP id u16mr973960wmu.125.1505424128366;
	Thu, 14 Sep 2017 14:22:08 -0700 (PDT)
Received: from localhost.localdomain
	(host193-245-static.58-79-b.business.telecomitalia.it.
	[79.58.245.193])
	by smtp.gmail.com with ESMTPSA id q18sm9930604wre.4.2017.09.14.14.22.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 14 Sep 2017 14:22:07 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Sep 2017 23:22:00 +0200
Message-Id: <1505424120-28986-1-git-send-email-gizero@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] u-boot: drop now upstreamed patches
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
X-List-Received-Date: Thu, 14 Sep 2017 21:22:11 -0000

oe-core now provides v2017.09 of u-boot which already merged both patches
introduced by commit 94e2929f746f7e49a7870f7ea889dcbed05296c7 so we can
drop them from meta-raspberrypi.

Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 ...01-Revert-dm-arm-rpi-Drop-CONFIG_OF_EMBED.patch | 67 --------------------
 .../0002-rpi-Enable-USB-keyboard-support.patch     | 71 ----------------------
 recipes-bsp/u-boot/u-boot_%.bbappend               |  7 ---
 3 files changed, 145 deletions(-)
 delete mode 100644 recipes-bsp/u-boot/u-boot/0001-Revert-dm-arm-rpi-Drop-CONFIG_OF_EMBED.patch
 delete mode 100644 recipes-bsp/u-boot/u-boot/0002-rpi-Enable-USB-keyboard-support.patch

diff --git a/recipes-bsp/u-boot/u-boot/0001-Revert-dm-arm-rpi-Drop-CONFIG_OF_EMBED.patch b/recipes-bsp/u-boot/u-boot/0001-Revert-dm-arm-rpi-Drop-CONFIG_OF_EMBED.patch
deleted file mode 100644
index ffabe89..0000000
--- a/recipes-bsp/u-boot/u-boot/0001-Revert-dm-arm-rpi-Drop-CONFIG_OF_EMBED.patch
+++ /dev/null
@@ -1,67 +0,0 @@
-From 46035d84eb75d54e524d068c29a42c4f562f757a Mon Sep 17 00:00:00 2001
-From: Paul Barker <pbarker@toganlabs.com>
-Date: Wed, 2 Aug 2017 11:37:30 +0100
-Subject: [PATCH 1/2] Revert "dm: arm: rpi: Drop CONFIG_OF_EMBED"
-
-This reverts commit 25877d4e4c45451c5398aec3de50e0d5befe0e9f.
-
-Signed-off-by: Paul Barker <pbarker@toganlabs.com>
-Upstream-status: Pending
----
- configs/rpi_2_defconfig     | 1 +
- configs/rpi_3_32b_defconfig | 1 +
- configs/rpi_3_defconfig     | 1 +
- configs/rpi_defconfig       | 1 +
- 4 files changed, 4 insertions(+)
-
-diff --git a/configs/rpi_2_defconfig b/configs/rpi_2_defconfig
-index 862203f..6aa0532 100644
---- a/configs/rpi_2_defconfig
-+++ b/configs/rpi_2_defconfig
-@@ -13,6 +13,7 @@ CONFIG_CMD_MMC=y
- CONFIG_CMD_USB=y
- # CONFIG_CMD_FPGA is not set
- CONFIG_CMD_GPIO=y
-+CONFIG_OF_EMBED=y
- CONFIG_DM_MMC=y
- CONFIG_MMC_SDHCI=y
- CONFIG_MMC_SDHCI_BCM2835=y
-diff --git a/configs/rpi_3_32b_defconfig b/configs/rpi_3_32b_defconfig
-index 95b1677..7396925 100644
---- a/configs/rpi_3_32b_defconfig
-+++ b/configs/rpi_3_32b_defconfig
-@@ -14,6 +14,7 @@ CONFIG_CMD_MMC=y
- CONFIG_CMD_USB=y
- # CONFIG_CMD_FPGA is not set
- CONFIG_CMD_GPIO=y
-+CONFIG_OF_EMBED=y
- CONFIG_DM_MMC=y
- CONFIG_MMC_SDHCI=y
- CONFIG_MMC_SDHCI_BCM2835=y
-diff --git a/configs/rpi_3_defconfig b/configs/rpi_3_defconfig
-index f91b53d..1b1ee67 100644
---- a/configs/rpi_3_defconfig
-+++ b/configs/rpi_3_defconfig
-@@ -14,6 +14,7 @@ CONFIG_CMD_MMC=y
- CONFIG_CMD_USB=y
- # CONFIG_CMD_FPGA is not set
- CONFIG_CMD_GPIO=y
-+CONFIG_OF_EMBED=y
- CONFIG_DM_MMC=y
- CONFIG_MMC_SDHCI=y
- CONFIG_MMC_SDHCI_BCM2835=y
-diff --git a/configs/rpi_defconfig b/configs/rpi_defconfig
-index e2d81ab..c7cf6e0 100644
---- a/configs/rpi_defconfig
-+++ b/configs/rpi_defconfig
-@@ -13,6 +13,7 @@ CONFIG_CMD_MMC=y
- CONFIG_CMD_USB=y
- # CONFIG_CMD_FPGA is not set
- CONFIG_CMD_GPIO=y
-+CONFIG_OF_EMBED=y
- CONFIG_DM_MMC=y
- CONFIG_MMC_SDHCI=y
- CONFIG_MMC_SDHCI_BCM2835=y
--- 
-2.7.4
-
diff --git a/recipes-bsp/u-boot/u-boot/0002-rpi-Enable-USB-keyboard-support.patch b/recipes-bsp/u-boot/u-boot/0002-rpi-Enable-USB-keyboard-support.patch
deleted file mode 100644
index 675d7d9..0000000
--- a/recipes-bsp/u-boot/u-boot/0002-rpi-Enable-USB-keyboard-support.patch
+++ /dev/null
@@ -1,71 +0,0 @@
-From e4ddccdcf2360c104de502db140a2dbb90b63cfe Mon Sep 17 00:00:00 2001
-From: Simon Glass <sjg@chromium.org>
-Date: Thu, 24 Aug 2017 19:45:31 -0600
-Subject: [PATCH 2/2] rpi: Enable USB keyboard support
-
-This is currently disabled, so USB keyboards are not detected in U_Boot.
-Enable this option to fix that.
-
-Backported to v2017.07.
-
-Signed-off-by: Simon Glass <sjg@chromium.org>
-Signed-off-by: Paul Barker <pbarker@toganlabs.com>
-Upstream-status: Backport
----
- configs/rpi_2_defconfig     | 1 +
- configs/rpi_3_32b_defconfig | 1 +
- configs/rpi_3_defconfig     | 1 +
- configs/rpi_defconfig       | 1 +
- 4 files changed, 4 insertions(+)
-
-diff --git a/configs/rpi_2_defconfig b/configs/rpi_2_defconfig
-index 6aa0532..9851836 100644
---- a/configs/rpi_2_defconfig
-+++ b/configs/rpi_2_defconfig
-@@ -22,6 +22,7 @@ CONFIG_USB=y
- CONFIG_DM_USB=y
- CONFIG_USB_STORAGE=y
- CONFIG_USB_KEYBOARD=y
-+CONFIG_DM_KEYBOARD=y
- CONFIG_DM_VIDEO=y
- CONFIG_SYS_WHITE_ON_BLACK=y
- CONFIG_CONSOLE_SCROLL_LINES=10
-diff --git a/configs/rpi_3_32b_defconfig b/configs/rpi_3_32b_defconfig
-index 7396925..c9bdcd7 100644
---- a/configs/rpi_3_32b_defconfig
-+++ b/configs/rpi_3_32b_defconfig
-@@ -24,6 +24,7 @@ CONFIG_USB=y
- CONFIG_DM_USB=y
- CONFIG_USB_STORAGE=y
- CONFIG_USB_KEYBOARD=y
-+CONFIG_DM_KEYBOARD=y
- CONFIG_DM_VIDEO=y
- CONFIG_SYS_WHITE_ON_BLACK=y
- CONFIG_CONSOLE_SCROLL_LINES=10
-diff --git a/configs/rpi_3_defconfig b/configs/rpi_3_defconfig
-index 1b1ee67..e9c9806 100644
---- a/configs/rpi_3_defconfig
-+++ b/configs/rpi_3_defconfig
-@@ -24,6 +24,7 @@ CONFIG_USB=y
- CONFIG_DM_USB=y
- CONFIG_USB_STORAGE=y
- CONFIG_USB_KEYBOARD=y
-+CONFIG_DM_KEYBOARD=y
- CONFIG_DM_VIDEO=y
- CONFIG_SYS_WHITE_ON_BLACK=y
- CONFIG_CONSOLE_SCROLL_LINES=10
-diff --git a/configs/rpi_defconfig b/configs/rpi_defconfig
-index c7cf6e0..59d8c58 100644
---- a/configs/rpi_defconfig
-+++ b/configs/rpi_defconfig
-@@ -22,6 +22,7 @@ CONFIG_USB=y
- CONFIG_DM_USB=y
- CONFIG_USB_STORAGE=y
- CONFIG_USB_KEYBOARD=y
-+CONFIG_DM_KEYBOARD=y
- CONFIG_DM_VIDEO=y
- CONFIG_SYS_WHITE_ON_BLACK=y
- CONFIG_CONSOLE_SCROLL_LINES=10
--- 
-2.7.4
-
diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
index 8d0a531..3781666 100644
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -1,8 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/u-boot:"
-
-SRC_URI_append_rpi = " \
-    file://0001-Revert-dm-arm-rpi-Drop-CONFIG_OF_EMBED.patch \
-    file://0002-rpi-Enable-USB-keyboard-support.patch \
-    "
-
 RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
-- 
2.7.4


