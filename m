Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98FB9E006CF
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 13:33:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Sep 2011 13:33:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,419,1312182000"; d="scan'208";a="58416225"
Received: from unknown (HELO localhost) ([10.255.14.159])
	by fmsmga002.fm.intel.com with ESMTP; 21 Sep 2011 13:33:53 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 15:33:18 -0500
Message-Id: <32b75bf072568eb3e4e8efdd5fec7b8b15725146.1316615344.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
References: <0fa4664e00412c0ef3f7d1ce991d8c7b5e7c0052.1316615343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316615343.git.tom.zanussi@intel.com>
References: <cover.1316615343.git.tom.zanussi@intel.com>
Subject: [PATCH 16/16][KERNEL] drm-psb: fix ioremap calls
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
X-List-Received-Date: Wed, 21 Sep 2011 20:33:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Mapping the opregion non-cacheable fails, so use acpi_os_ioremap
instead.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/intel_lvds.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm-psb/intel_lvds.c b/drivers/gpu/drm-psb/intel_lvds.c
index 9511c04..218e895 100644
--- a/drivers/gpu/drm-psb/intel_lvds.c
+++ b/drivers/gpu/drm-psb/intel_lvds.c
@@ -36,6 +36,8 @@
 
 #include <acpi/acpi_drivers.h>
 
+#include <linux/acpi_io.h>
+
 int drm_intel_ignore_acpi = 0;
 MODULE_PARM_DESC(ignore_acpi, "Ignore ACPI");
 module_param_named(ignore_acpi, drm_intel_ignore_acpi, int, 0600);
@@ -673,7 +675,7 @@ void intel_lvds_init(struct drm_device *dev)
 		pci_read_config_dword(dev->pdev, 0xFC, &OpRegion_Phys);
 
 		//dev_OpRegion =  phys_to_virt(OpRegion_Phys);
-		dev_OpRegion = ioremap(OpRegion_Phys, OpRegion_Size);
+		dev_OpRegion = acpi_os_ioremap(OpRegion_Phys, OpRegion_Size);
 		dev_OpRegionSize = OpRegion_Size;
 
 		OpRegion = (OpRegionPtr) dev_OpRegion;
@@ -686,7 +688,7 @@ void intel_lvds_init(struct drm_device *dev)
 			dev_OpRegionSize = OpRegion_NewSize;
 			
 			iounmap(dev_OpRegion);
-			dev_OpRegion = ioremap(OpRegion_Phys, OpRegion_NewSize);
+			dev_OpRegion = acpi_os_ioremap(OpRegion_Phys, OpRegion_NewSize);
 		} else {
 			iounmap(dev_OpRegion);
 			dev_OpRegion = NULL;
-- 
1.7.0.4


