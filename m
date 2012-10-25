Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65BB0E0032E
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 10:50:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Oct 2012 10:50:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,648,1344236400"; d="scan'208";a="210824636"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga001.jf.intel.com with ESMTP; 25 Oct 2012 10:50:40 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Thu, 25 Oct 2012 10:49:40 -0700
Message-Id: <5e32b732620e38a4f4d32bb77aa49f5b650bfb47.1351187270.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <f079f49b2ed20714daa07b33c49b1bffce70bf0b.1351187270.git.nitin.a.kamble@intel.com>
References: <f079f49b2ed20714daa07b33c49b1bffce70bf0b.1351187270.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351187270.git.nitin.a.kamble@intel.com>
References: <cover.1351187270.git.nitin.a.kamble@intel.com>
Subject: [Patch v3 5/7] jasperforest: add WEBTITLE & Compliance information
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
X-List-Received-Date: Thu, 25 Oct 2012 17:50:52 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The WEBTITLE will be used to publish the BSP on the Yocto Project Website.
And adding the Yocto Project Compliance information for the 1.3 release.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-jasperforest/README                         |    7 +++++++
 meta-jasperforest/conf/machine/jasperforest.conf |    2 ++
 2 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/meta-jasperforest/README b/meta-jasperforest/README
index 12f84c2..deedb28 100644
--- a/meta-jasperforest/README
+++ b/meta-jasperforest/README
@@ -8,6 +8,13 @@ combined with the Intel 3420 PCH chipset (Ibex Peak) make up the
 'Picket Post' CRB this BSP was developed on.
 
 
+Compliance
+==========
+
+This BSP is compliant with Yocto Project as per requirements listed here:
+http://www.yoctoproject.org/yocto-project-compatible-registration
+
+
 Dependencies
 ============
 
diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index d661f7b..ba50b99 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -1,6 +1,8 @@
 #@TYPE: Machine
 #@NAME: jasperforest
 
+#@WEBTITLE: Intel Xeon C5500/C3500 Series Processors With Intel 3420 PCH Chipset (Jasper Forest)
+
 #@DESCRIPTION: Machine configuration for Jasper Forest Picket Post
 # systems i.e. Xeon C5500/C3500 + Intel 3420 chipset (Ibex Peak)
 
-- 
1.7.3.4


