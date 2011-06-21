Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73C674C80AC3
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 02:19:25 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Jun 2011 00:19:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,399,1304319600"; d="scan'208";a="16006692"
Received: from unknown (HELO localhost) ([10.255.12.247])
	by azsmga001.ch.intel.com with ESMTP; 21 Jun 2011 00:19:24 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	koen@dominion.thruhere.net
Date: Tue, 21 Jun 2011 00:19:08 -0700
Message-Id: <ddfdbc4c00aabe482a251959c65cf5243e77cef1.1308639171.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1308639171.git.dvhart@linux.intel.com>
References: <cover.1308639171.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1308639171.git.dvhart@linux.intel.com>
References: <cover.1308639171.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/3] beagleboard: cleanup machine config commentary
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
X-List-Received-Date: Tue, 21 Jun 2011 07:19:25 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/machine/beagleboard.conf |    8 +++-----
 1 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index d6eee6f..2670691 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -6,19 +6,19 @@ TARGET_ARCH = "arm"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
 XSERVER = "xserver-kdrive-fbdev"
 
-#Ship all kernel modules till the board support has matured enough
+# Ship all kernel modules by default
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
 # Allow for MMC booting (required by the NAND-less Beagleboard XM)
 EXTRA_IMAGEDEPENDS += "u-boot x-load"
 
-#include conf/machine/include/tune-arm1136jf-s.inc
 include conf/machine/include/tune-cortexa8.inc
 
 IMAGE_FSTYPES += "tar.bz2 jffs2"
 EXTRA_IMAGECMD_jffs2 = "-lnp "
 
-# Guesswork
+# 2.6.37 and later kernels use OMAP_SERIAL, ttyO2
+# earlier kernels use ttyS2
 SERIAL_CONSOLE = "115200 ttyO2"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
@@ -30,6 +30,4 @@ UBOOT_MACHINE = "omap3_beagle_config"
 UBOOT_ENTRYPOINT = "0x80008000"
 UBOOT_LOADADDRESS = "0x80008000"
 
-
-# and sdio
 MACHINE_FEATURES = "kernel26 apm usbgadget usbhost vfat alsa"
-- 
1.7.1


