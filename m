Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03B48E00294
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 10:50:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Oct 2012 10:50:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,648,1344236400"; d="scan'208";a="210824626"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga001.jf.intel.com with ESMTP; 25 Oct 2012 10:50:40 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Thu, 25 Oct 2012 10:49:37 -0700
Message-Id: <4ae20167c92d9210c42a53cdfc429bb16b2b5791.1351187270.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <f079f49b2ed20714daa07b33c49b1bffce70bf0b.1351187270.git.nitin.a.kamble@intel.com>
References: <f079f49b2ed20714daa07b33c49b1bffce70bf0b.1351187270.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351187270.git.nitin.a.kamble@intel.com>
References: <cover.1351187270.git.nitin.a.kamble@intel.com>
Subject: [Patch v3 2/7] chiefriver: add WEBTITLE & Compliance information
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
 meta-chiefriver/README                       |    8 ++++++++
 meta-chiefriver/conf/machine/chiefriver.conf |    2 ++
 2 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/meta-chiefriver/README b/meta-chiefriver/README
index 7c47b02..43050de 100644
--- a/meta-chiefriver/README
+++ b/meta-chiefriver/README
@@ -7,6 +7,14 @@ plus the Panther Point PCH.  This BSP assumes that the Ivy Bridge
 integrated graphics are being used.
 
 
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
 
diff --git a/meta-chiefriver/conf/machine/chiefriver.conf b/meta-chiefriver/conf/machine/chiefriver.conf
index 6d8d3a5..754acda 100644
--- a/meta-chiefriver/conf/machine/chiefriver.conf
+++ b/meta-chiefriver/conf/machine/chiefriver.conf
@@ -1,6 +1,8 @@
 #@TYPE: Machine
 #@NAME: chiefriver
 
+#@WEBTITLE: Intel 3rd Generation Core Platforms: Core i3, i5, i7 (Ivy Bridge)
+
 #@DESCRIPTION: Machine configuration for Chief River systems
 # i.e. Ivy Bridge + Panther Point
 
-- 
1.7.3.4


