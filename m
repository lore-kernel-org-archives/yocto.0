Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0419E01302
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 10:52:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Oct 2012 10:52:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,673,1344236400"; d="scan'208";a="241571814"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.87])
	by fmsmga002.fm.intel.com with ESMTP; 29 Oct 2012 10:42:18 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Mon, 29 Oct 2012 10:42:28 -0700
Message-Id: <5c98f74c77c8624d82777b1b257e983f7f14a820.1351532199.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c7294ca4d14e88f50ef4ce0389384bbf75cf1c05.1351532199.git.kishore.k.bodke@intel.com>
References: <c7294ca4d14e88f50ef4ce0389384bbf75cf1c05.1351532199.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1351532199.git.kishore.k.bodke@intel.com>
References: <cover.1351532199.git.kishore.k.bodke@intel.com>
Subject: [PATCH 2/2] [meta-intel] romley: add WEBTITLE & Compliance information
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
X-List-Received-Date: Mon, 29 Oct 2012 17:52:54 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

The WEBTITLE will be used to publish the BSP on the Yocto Project Website.
And adding the Yocto Project Compliance information for the 1.3 release.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-romley/README                   |   11 +++++++++--
 meta-romley/conf/machine/romley.conf |    5 ++++-
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/meta-romley/README b/meta-romley/README
index 6ddbaf2..c35c209 100644
--- a/meta-romley/README
+++ b/meta-romley/README
@@ -2,9 +2,16 @@ This README file contains information on building the meta-romley
 BSP layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
-The 'romley' platform consists of the Intel Sandy Bridge processor,
-plus the Patsburg chipset.  This BSP assumes Matrox graphics is being used.
+The 'romley' platform consists of the Intel Xeon E5-2600 and E5-2400
+Series Processors, plus the Intel C604/C602-J Chipset.
+This BSP assumes Matrox graphics is being used.
 
+Compliance
+==========
+This BSP is compliant with the Yocto Project as per the requirements
+listed here:
+
+  http://www.yoctoproject.org/yocto-project-compatible-registration
 
 Dependencies
 ============
diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index ab4d3c0..18d6757 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -1,8 +1,11 @@
 #@TYPE: Machine
 #@NAME: romley
 
+#@WEBTITLE: Intel Xeon E5-2600 and E5-2400 Series (Formerly Sandy Bridge-EP/EN)
+#Processors with Intel C604/C602-J Chipset (Romley-EP/EN Platform)
+
 #@DESCRIPTION: Machine configuration for Romley systems
-# i.e. Sandy Bridge + Patsburg Chipset
+# i.e. Xeon E5-2600 and E5-2400 + Intel CC604/C602-J
 
 
 PREFERRED_VERSION_linux-yocto ?= "3.2%"
-- 
1.7.9.5


