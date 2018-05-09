Return-Path: <ryan.harkin@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6120BE00D53; Wed,  9 May 2018 11:07:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87AD0E00A28
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 11:07:47 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id a8so26379085wmg.5
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 11:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=pHjctuLhj4RyWXT/gQVMVka9bIuGW5gNtveC+j4GPcE=;
	b=HmENK7W/QaD9g5PvH6EFX1r3TeUUm6tdktwKmwjiSROqUO/VdnaIg0hhLVaNB0ZgbZ
	YFdzNVb63jzmmB+MdVrOR3btTtx8ZDFsO6VoRKSv6Pv76BoooFsCO7j/96IDtpHMyL9/
	WugOpVJuqkrUBjdkaRmjFVcQR/noca6vcqvXA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=pHjctuLhj4RyWXT/gQVMVka9bIuGW5gNtveC+j4GPcE=;
	b=kpqQl4MeYV2Tg2pIeI3xDxcMCIyU4OyltQNVXt6Iq1dDdBXSgPjTkgRp9ODkHwH8EH
	mZfBsKHKy/QUCaBFyKjL5Ju4n00HKzSWE761BipED3LgSUtuZVfMUq4UPnvcni6IYRTW
	3u1DJV3+4owgbMk63J2md5pYloFWOtyR1cWIGnsNSkZ17sZJlli3SsDnynTeJrLg/aND
	ApGwg/t3gKUYQoShpCUpATAa1FeM4PsBbsW30PlWFuU3wliHDZKNOkhY7rk2MzH0dMaX
	o/ztTKzldFY8BSPT6lHcNOSHJSwKWDII4wX97y+1sOLcrS+JMNCNedrayadsCjtvd4UD
	zlLA==
X-Gm-Message-State: ALKqPweWwlRDVV4UDOxPcxAeHfF7YDrIFM0sGNsRMIMwVD0pIjL0YXZW
	eq0EYDhhTa52kTqACd5J+CFPqQ==
X-Google-Smtp-Source: AB8JxZpd0chLUNXnfBVAc4vWg/V2uiLgMoBKiKLPxEz55pnrjF6gsrIw96mvfMdkrBE3Jr1OP3xUmw==
X-Received: by 10.28.172.194 with SMTP id v185mr6278831wme.67.1525889266985;
	Wed, 09 May 2018 11:07:46 -0700 (PDT)
Received: from localhost.localdomain (82-69-54-187.dsl.in-addr.zen.co.uk.
	[82.69.54.187]) by smtp.gmail.com with ESMTPSA id
	z63-v6sm33343181wrb.34.2018.05.09.11.07.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 09 May 2018 11:07:46 -0700 (PDT)
From: Ryan Harkin <ryan.harkin@linaro.org>
To: andrei@gherzan.ro,
	yocto@yoctoproject.org
Date: Wed,  9 May 2018 19:07:42 +0100
Message-Id: <1525889262-14990-1-git-send-email-ryan.harkin@linaro.org>
X-Mailer: git-send-email 2.7.4
Cc: drew.moseley@northern.tech, mirza.krak@endian.se
Subject: [PATCH] Revert "u-boot: Update RPi Zero W defconfig to support DTB."
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
X-List-Received-Date: Wed, 09 May 2018 18:07:49 -0000

This reverts commit 72bc798ff548ba610e8dea53c80e39a37de8e043

The following error was encountered when building the Yocto master:

ERROR: u-boot-1_2018.03-r0 do_patch: Command Error: 'quilt --quiltrc
/linaro/mbl/workspace-linaro/build-mbl/tmp-mbl-glibc/work/raspberrypi3-oe-linux-gnueabi/u-boot/1_2018.03-r0/recipe-sysroot-native/etc/quiltrc
push' exited with 0  Output:
Applying patch 0002-rpi_0_w-Add-configs-consistent-with-RpI3.patch
patching file configs/rpi_0_w_defconfig
Hunk #1 FAILED at 12.
1 out of 1 hunk FAILED -- rejects in file configs/rpi_0_w_defconfig
Patch 0002-rpi_0_w-Add-configs-consistent-with-RpI3.patch does not apply
(enforce with -f)
ERROR: u-boot-1_2018.03-r0 do_patch: Function failed: patch_do_patch
ERROR: Logfile of failure stored in:
/linaro/mbl/workspace-linaro/build-mbl/tmp-mbl-glibc/work/raspberrypi3-oe-linux-gnueabi/u-boot/1_2018.03-r0/temp/log.do_patch.13706
ERROR: Task
(/linaro/mbl/workspace-linaro/build-mbl/conf/../../layers/openembedded-core/meta/recipes-bsp/u-boot/u-boot_2018.03.bb:do_patch)
failed with exit code '1'

The u-boot patch the original commit was attempting to apply has gone
upstream, so remove this commit as it is no longer necessary.

Signed-off-by: Ryan Harkin <ryan.harkin@linaro.org>
---
 ...-rpi_0_w-Add-configs-consistent-with-RpI3.patch | 41 ----------------------
 recipes-bsp/u-boot/u-boot_%.bbappend               |  8 +----
 2 files changed, 1 insertion(+), 48 deletions(-)
 delete mode 100644 recipes-bsp/u-boot/u-boot/0002-rpi_0_w-Add-configs-consistent-with-RpI3.patch

diff --git a/recipes-bsp/u-boot/u-boot/0002-rpi_0_w-Add-configs-consistent-with-RpI3.patch b/recipes-bsp/u-boot/u-boot/0002-rpi_0_w-Add-configs-consistent-with-RpI3.patch
deleted file mode 100644
index e98fd85..0000000
--- a/recipes-bsp/u-boot/u-boot/0002-rpi_0_w-Add-configs-consistent-with-RpI3.patch
+++ /dev/null
@@ -1,41 +0,0 @@
-From 5d113dc0130ea2ea9faaa000fba9c737266b9747 Mon Sep 17 00:00:00 2001
-From: Drew Moseley <drew.moseley@northern.tech>
-Date: Fri, 9 Feb 2018 18:10:09 -0500
-Subject: [PATCH] rpi_0_w: Add configs consistent with RpI3
-
-Upstream-Status: Accepted [https://patchwork.ozlabs.org/patch/856572/]
-
-Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
----
- configs/rpi_0_w_defconfig | 7 +++++++
- 1 file changed, 7 insertions(+)
-
-diff --git a/configs/rpi_0_w_defconfig b/configs/rpi_0_w_defconfig
-index 9a6d24b..1248294 100644
---- a/configs/rpi_0_w_defconfig
-+++ b/configs/rpi_0_w_defconfig
-@@ -12,14 +12,21 @@ CONFIG_SYS_PROMPT="U-Boot> "
- CONFIG_CMD_GPIO=y
- CONFIG_CMD_MMC=y
- CONFIG_CMD_USB=y
-+CONFIG_OF_EMBED=y
-+CONFIG_ENV_FAT_INTERFACE="mmc"
-+CONFIG_ENV_FAT_DEVICE_AND_PART="0:1"
-+CONFIG_DM_KEYBOARD=y
- CONFIG_DM_MMC=y
- CONFIG_MMC_SDHCI=y
- CONFIG_MMC_SDHCI_BCM2835=y
- CONFIG_DM_ETH=y
- CONFIG_USB=y
- CONFIG_DM_USB=y
-+CONFIG_USB_DWC2=y
- CONFIG_USB_STORAGE=y
- CONFIG_USB_KEYBOARD=y
-+CONFIG_USB_HOST_ETHER=y
-+CONFIG_USB_ETHER_SMSC95XX=y
- CONFIG_DM_VIDEO=y
- CONFIG_SYS_WHITE_ON_BLACK=y
- CONFIG_CONSOLE_SCROLL_LINES=10
--- 
-2.7.4
-
diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
index 7d4a49e..3781666 100644
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -1,7 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/u-boot:"
-
-SRC_URI_append_rpi = " \
-    file://0002-rpi_0_w-Add-configs-consistent-with-RpI3.patch \
-"
-
-DEPENDS_append_rpi = " rpi-u-boot-scr"
+RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
-- 
2.7.4


