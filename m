Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18BCAE0032E
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 10:50:49 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Oct 2012 10:50:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,648,1344236400"; d="scan'208";a="210824632"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga001.jf.intel.com with ESMTP; 25 Oct 2012 10:50:40 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Thu, 25 Oct 2012 10:49:39 -0700
Message-Id: <2337a7a353102f0c997624fc406f27ae80fc34a4.1351187270.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <f079f49b2ed20714daa07b33c49b1bffce70bf0b.1351187270.git.nitin.a.kamble@intel.com>
References: <f079f49b2ed20714daa07b33c49b1bffce70bf0b.1351187270.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351187270.git.nitin.a.kamble@intel.com>
References: <cover.1351187270.git.nitin.a.kamble@intel.com>
Subject: [Patch v3 4/7] emenlow: add WEBTITLE & Compliance information
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
X-List-Received-Date: Thu, 25 Oct 2012 17:50:49 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The WEBTITLE will be used to publish the BSP on the Yocto Project Website.
And adding the Yocto Project Compliance information for the 1.3 release.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-emenlow/README                    |    8 ++++++++
 meta-emenlow/conf/machine/emenlow.conf |    2 ++
 2 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/meta-emenlow/README b/meta-emenlow/README
index 3932718..8795864 100644
--- a/meta-emenlow/README
+++ b/meta-emenlow/README
@@ -13,6 +13,14 @@ depending on which BSP tarball you downloaded.
 Please see the corresponding sections below for details.
 
 
+Compliance
+==========
+
+This BSP is compliant with Yocto Project as per the requirements listed
+here:
+  http://www.yoctoproject.org/yocto-project-compatible-registration
+
+
 Dependencies
 ============
 
diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index d1efbc3..1a4aa81 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -1,6 +1,8 @@
 #@TYPE: Machine
 #@NAME: emenlow
 
+#@WEBTITLE: Intel Atom Z5xx Processor With Intel US15W Controller Hub (eMenlow)
+
 #@DESCRIPTION: Machine configuration for eMenlow based systems, like the
 # Webs-2120 box.
 
-- 
1.7.3.4


