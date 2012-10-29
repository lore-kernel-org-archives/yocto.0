Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FF12E0133F
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 16:42:46 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 29 Oct 2012 16:42:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,675,1344236400"; d="scan'208";a="162127143"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.87])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Oct 2012 16:42:42 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Mon, 29 Oct 2012 16:44:05 -0700
Message-Id: <cc35d8e8fa6eb4c756368a64d4007175e1516a7b.1351553989.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1351553989.git.kishore.k.bodke@intel.com>
References: <cover.1351553989.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/2] [meta-intel] crystalforest: add WEBTITLE & Compliance information
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
X-List-Received-Date: Mon, 29 Oct 2012 23:42:46 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

The WEBTITLE will be used to publish the BSP on the Yocto Project Website.
And adding the Yocto Project Compliance information for the 1.3 release.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-crystalforest/README                          |   16 +++++++++++++---
 .../conf/machine/crystalforest-gladden.conf        |    8 ++++++--
 .../conf/machine/crystalforest-server.conf         |    8 ++++++--
 3 files changed, 25 insertions(+), 7 deletions(-)

diff --git a/meta-crystalforest/README b/meta-crystalforest/README
index 2a25edc..a938193 100644
--- a/meta-crystalforest/README
+++ b/meta-crystalforest/README
@@ -6,12 +6,22 @@ The 'Crystal Forest' platform consists of two versions.
 1. GLADDEN
 2. SERVER
 
-Gladden Platform is based on Intel Sandy Bridge Gladden Processor,plus the Cave Creek chipset.
-Server Platform is based on two Intel Sandy Bridge (SNB-EP ES2 Grade and SNB-EN ES2 Grade)
-Processors plus two Cave Creek Chipsets.
+The Gladden Platform consists of Intel Xeon E3-1125C/E3-1105C Processor,
+plus the Intel Communication Chipset 89xx for Smaller Form Factor
+Communication Infrastructure.
+
+The Server Platform consists of Intel Xeon E5-2600 and E5-2400 Processors,
+plus the Intel Communication Chipset 89xx for Large-Scale Communications
+Infrastructure.
 
 Both Platforms uses Matrox graphics Card.
 
+Compliance
+==========
+This BSP is compliant with the Yocto Project as per the requirements
+listed here:
+
+  http://www.yoctoproject.org/yocto-project-compatible-registration
 
 Dependencies
 ============
diff --git a/meta-crystalforest/conf/machine/crystalforest-gladden.conf b/meta-crystalforest/conf/machine/crystalforest-gladden.conf
index a84088a..6d2c81f 100644
--- a/meta-crystalforest/conf/machine/crystalforest-gladden.conf
+++ b/meta-crystalforest/conf/machine/crystalforest-gladden.conf
@@ -1,8 +1,12 @@
 #@TYPE: Machine
 #@NAME: crystalforest-gladden
 
-#@DESCRIPTION: Machine configuration for Crystal Forest (GLADDEN) systems
-# i.e. One Sandy Bridge based Gladden Processor + One Cave Creek Chipset
+#@WEBTITLE: Intel Xeon E3-1125C/E3-1105C (Formerly Sandy Bridge-Gladden)
+#Processors with Intel Communication Chipset 89xx (Crystal Forest Gladden Platform)
+
+#@DESCRIPTION: Machine configuration for Crystal Forest Gladden systems
+#for Smaller Form Factor Communication Infrastructure
+# i.e. Xeon E3-1125C/E3-1105C + Intel 89xx communication Chipset
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
diff --git a/meta-crystalforest/conf/machine/crystalforest-server.conf b/meta-crystalforest/conf/machine/crystalforest-server.conf
index 2bbc4f3..cdcc4d0 100644
--- a/meta-crystalforest/conf/machine/crystalforest-server.conf
+++ b/meta-crystalforest/conf/machine/crystalforest-server.conf
@@ -1,8 +1,12 @@
 #@TYPE: Machine
 #@NAME: crystalforest-server
 
-#@DESCRIPTION: Machine configuration for Crystal Forest  Server systems
-# i.e. Two Sandy Bridge Jaketown processors (SNB-EP ES2 Grade and SNB-EN ES2 Grade) + Two Cave Creek Chipsets.
+#@WEBTITLE: Intel Xeon E5-2600 and E5-2400 (Formerly Sandy Bridge-EP/EN)
+#Processors with Intel Communication Chipset 89xx (Crystal Forest Server Platform)
+
+#@DESCRIPTION: Machine configuration for Crystal Forest Server systems
+#for Large-Scale Communications Infrastructure
+# i.e. Xeon E5-2600 and E5-2400 + Intel 89xx Communication Chipsets
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
-- 
1.7.9.5


