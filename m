Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 54AE04C80A7C
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:47:08 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 May 2011 13:47:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; d="scan'208";a="10112474"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2011 13:47:07 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:46:12 -0500
Message-Id: <0305e4770d91f36a28cb300304edbda43941834e.1306514719.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <603e71a1badfdaac8b49913f9e60f2b0e8712287.1306514719.git.tom.zanussi@intel.com>
References: <603e71a1badfdaac8b49913f9e60f2b0e8712287.1306514719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306514719.git.tom.zanussi@intel.com>
References: <cover.1306514719.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3][KERNEL] x86/PCI: irq and pci_ids patch for Intel Patsburg
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
X-List-Received-Date: Fri, 27 May 2011 20:47:08 -0000

From: Seth Heasley

commit 9b444b36fee16d2aaae9cc91ce594ecb15d922a9 upstream

This patch adds an additional LPC Controller DeviceID for the Intel
Patsburg PCH.

Signed-off-by: Seth Heasley
Signed-off-by: Jesse Barnes
Integrated-by: Tom Zanussi
---
 arch/x86/pci/irq.c      |    3 ++-
 include/linux/pci_ids.h |    3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/x86/pci/irq.c b/arch/x86/pci/irq.c
index 9f9bfb7..87e6c83 100644
--- a/arch/x86/pci/irq.c
+++ b/arch/x86/pci/irq.c
@@ -589,7 +589,8 @@ static __init int intel_router_probe(struct irq_router *r, struct pci_dev *route
 	case PCI_DEVICE_ID_INTEL_ICH10_1:
 	case PCI_DEVICE_ID_INTEL_ICH10_2:
 	case PCI_DEVICE_ID_INTEL_ICH10_3:
-	case PCI_DEVICE_ID_INTEL_PATSBURG_LPC:
+	case PCI_DEVICE_ID_INTEL_PATSBURG_LPC_0:
+	case PCI_DEVICE_ID_INTEL_PATSBURG_LPC_1:
 		r->name = "PIIX/ICH";
 		r->get = pirq_piix_get;
 		r->set = pirq_piix_set;
diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
index cb845c1..d830106 100644
--- a/include/linux/pci_ids.h
+++ b/include/linux/pci_ids.h
@@ -2468,7 +2468,8 @@
 #define PCI_DEVICE_ID_INTEL_COUGARPOINT_LPC_MIN	0x1c41
 #define PCI_DEVICE_ID_INTEL_COUGARPOINT_LPC_MAX	0x1c5f
 #define PCI_DEVICE_ID_INTEL_PATSBURG_SMBUS	0x1d22
-#define PCI_DEVICE_ID_INTEL_PATSBURG_LPC	0x1d40
+#define PCI_DEVICE_ID_INTEL_PATSBURG_LPC_0	0x1d40
+#define PCI_DEVICE_ID_INTEL_PATSBURG_LPC_1	0x1d41
 #define PCI_DEVICE_ID_INTEL_82801AA_0	0x2410
 #define PCI_DEVICE_ID_INTEL_82801AA_1	0x2411
 #define PCI_DEVICE_ID_INTEL_82801AA_3	0x2413
-- 
1.7.0.4


