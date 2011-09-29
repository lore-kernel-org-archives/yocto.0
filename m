Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 068C2E01297
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2011 13:17:16 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 29 Sep 2011 13:17:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,463,1312182000"; d="scan'208";a="21922274"
Received: from unknown (HELO localhost) ([10.255.14.216])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Sep 2011 13:17:16 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Thu, 29 Sep 2011 15:17:07 -0500
Message-Id: <763f821310ee187045e73619b99094412c98a0f0.1317326894.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <b33bc7ad590e46d721bdb16adfb1e90c7d74e221.1317326894.git.tom.zanussi@intel.com>
References: <b33bc7ad590e46d721bdb16adfb1e90c7d74e221.1317326894.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317326894.git.tom.zanussi@intel.com>
References: <cover.1317326894.git.tom.zanussi@intel.com>
Subject: [PATCH 5/5][KERNEL] jasperforest: cleanup bsp config
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
X-List-Received-Date: Thu, 29 Sep 2011 20:17:17 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove unnecessary options or options already defined in base configs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    7 ++-----
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |    2 ++
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
index b0f993b..743fc7d 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
@@ -35,20 +35,17 @@ CONFIG_PACKET=y
 
 CONFIG_I2C=y
 CONFIG_AGP=y
-CONFIG_VFAT_FS=y
 CONFIG_PM=y
 CONFIG_ACPI=y
 CONFIG_INPUT=y
 
 # Needed for booting (and using) USB memory sticks
-CONFIG_USB_STORAGE=y
-CONFIG_BLK_DEV_RAM=y
 CONFIG_BLK_DEV_LOOP=y
-CONFIG_BLK_DEV_INITRD=y
-CONFIG_RD_GZIP=y
 CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
 
+CONFIG_RD_GZIP=y
+
 # NUMA support
 CONFIG_NUMA=y
 CONFIG_X86_64_ACPI_NUMA=y
diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
index 9e5ca8d..defddec 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
@@ -1,6 +1,8 @@
 kconf hardware jasperforest.cfg
 
 include features/serial/8250.scc
+include features/framebuffer/vesafb.scc
+include cfg/usb-mass-storage.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


