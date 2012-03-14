Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69D81E013ED
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:58:34 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Mar 2012 20:58:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118600012"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by azsmga001.ch.intel.com with ESMTP; 13 Mar 2012 20:58:33 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:57:42 -0500
Message-Id: <40ea1782c854ec012050946c11d064fd8f813b4b.1331696906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
References: <3d43be48b23af7034669a2df7dd339c48350b1d0.1331696906.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331696906.git.tom.zanussi@intel.com>
References: <cover.1331696906.git.tom.zanussi@intel.com>
Subject: [PATCH 16/17][KERNEL] drm-psb: fix ioremap calls
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
X-List-Received-Date: Wed, 14 Mar 2012 03:58:34 -0000

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


