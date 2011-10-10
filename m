Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EFD3E01350
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2011 20:35:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Oct 2011 20:35:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="60972447"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by orsmga001.jf.intel.com with ESMTP; 09 Oct 2011 20:35:01 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Sun,  9 Oct 2011 22:34:45 -0500
Message-Id: <ad6edab4b625a6c54319bb07c5e83bc1c936f9ff.1318217109.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <913facfef4ffff121bbbad386a4f30e69541455b.1318217109.git.tom.zanussi@intel.com>
References: <913facfef4ffff121bbbad386a4f30e69541455b.1318217109.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318217109.git.tom.zanussi@intel.com>
References: <cover.1318217109.git.tom.zanussi@intel.com>
Subject: [PATCH 5/8][KERNEL] jasperforest: cleanup bsp config
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
X-List-Received-Date: Mon, 10 Oct 2011 03:35:02 -0000

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


