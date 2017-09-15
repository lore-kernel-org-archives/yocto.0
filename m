Return-Path: <msm-oss@mcclintock.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88504E0091D; Fri, 15 Sep 2017 11:39:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 726C3E007EF
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 11:39:08 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id g65so1595260pfe.1
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 11:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=itJ1GoySQA6lKGF8yihsGHOAHkZYqCMAa3UVy5dTsLw=;
	b=nN4B9nQ4HSfmujgICaCdkwGwEUBIKNaDEtdB8n+Qx0cpxWjLa/iPpTx6CudoR/fyOU
	/Zvg4ONhapjs6wFLqm5Pdu7PtKANGKNigDt0yj87UVPiOPouq9YPbxM9eCwg0JER/giq
	GnEdd7eDhhwoWJg7+WWz1i3COQASf1EKh/CyY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=itJ1GoySQA6lKGF8yihsGHOAHkZYqCMAa3UVy5dTsLw=;
	b=pjG8rtpONtMcv3u1BpQr85aQZBHNofB49jwX3CHQ5TQsEJUEnoBnPl3VvyTMukt7/b
	sm0Kaid4+TrPE7xJkeH+U2RIz6atIoSTZGnZuWJZ1Tu6haemIfhgMs+g6lijbrrk4Fbo
	PzS9DNtncUAwwX6qitknNw1kkFwT6tuXjfmy5wfyBYFaaDkukLvBeHZlezU9crEM7iAj
	dYwRFOokUzpHZJpZAvS/UGpBwVCK5TgIvxFGo0PS1TzgPJxihUijsZzItuFvq34XI3Pd
	zJKDEvQoULVKI1Q0kX2Ye8jpXu4y8eGHm6BogVo0ZXg2YgBZaLj/GmQTFBqDXP6XLPkm
	cVnQ==
X-Gm-Message-State: AHPjjUj83FfqSDKgQfmiNyuzpt1CR2VrldKztoYhPBCSnwIessbmVzt/
	QNkOCSC1p5YKzxNZOYQ=
X-Google-Smtp-Source: ADKCNb5tXL1vPconkBRQnltd6kYzgalqmh0WZ5LXeh1PQuW6QDK8ayWx6T/rt1NiTAS/68TUXliMQQ==
X-Received: by 10.98.77.70 with SMTP id a67mr25642442pfb.347.1505500746830;
	Fri, 15 Sep 2017 11:39:06 -0700 (PDT)
Received: from c4.lgirdk.com ([4.16.80.118])
	by smtp.gmail.com with ESMTPSA id 65sm3485190pgh.31.2017.09.15.11.39.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 15 Sep 2017 11:39:06 -0700 (PDT)
From: Matthew McClintock <msm-oss@mcclintock.net>
To: yocto@yoctoproject.org
Date: Fri, 15 Sep 2017 11:39:02 -0700
Message-Id: <20170915183902.6756-1-msm-oss@mcclintock.net>
X-Mailer: git-send-email 2.14.1
Subject: [meta-raspberrypi][PATCH] u-boot: drop upstreamed patches included in v2017.09
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
X-List-Received-Date: Fri, 15 Sep 2017 18:39:09 -0000

These are now in upstream, so they are no longer required here.

Signed-off-by: Matthew McClintock <msm-oss@mcclintock.net>
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
2.14.1


