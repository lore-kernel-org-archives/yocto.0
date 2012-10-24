Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0977E0032E
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 13:27:10 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Oct 2012 13:26:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,642,1344236400"; d="scan'208";a="237817659"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 24 Oct 2012 13:26:51 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Wed, 24 Oct 2012 13:25:48 -0700
Message-Id: <f1a7d9cde11e622392859625fed95edde1a28db5.1351110208.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1d3856156110f722e46f1960851d1ed67e2f30f0.1351110208.git.nitin.a.kamble@intel.com>
References: <1d3856156110f722e46f1960851d1ed67e2f30f0.1351110208.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351110208.git.nitin.a.kamble@intel.com>
References: <cover.1351110208.git.nitin.a.kamble@intel.com>
Subject: [PATCH v2 2/6] chiefriver: add WEBTITLE & Compliance information
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
X-List-Received-Date: Wed, 24 Oct 2012 20:27:11 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The WEBTITLE will be used to publish the BSP on the Yocto Project Website.
And adding the Yocto Project Compliance information for the 1.3 release.
Also specifying all the layers used from meta-intel repository.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-chiefriver/README                       |    8 +++++++-
 meta-chiefriver/conf/machine/chiefriver.conf |    2 ++
 2 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/meta-chiefriver/README b/meta-chiefriver/README
index 7c47b02..249a389 100644
--- a/meta-chiefriver/README
+++ b/meta-chiefriver/README
@@ -7,6 +7,12 @@ plus the Panther Point PCH.  This BSP assumes that the Ivy Bridge
 integrated graphics are being used.
 
 
+Compliance
+==========
+This BSP is compliant with Yocto Project as per requirements listed here:
+http://www.yoctoproject.org/yocto-project-compatible-registration
+
+
 Dependencies
 ============
 
@@ -20,7 +26,7 @@ This layer depends on:
   branch: master
 
   URI: git://git.yoctoproject.org/meta-intel
-  layers: intel
+  layers: meta-intel, meta-chiefriver
   branch: master
 
 
diff --git a/meta-chiefriver/conf/machine/chiefriver.conf b/meta-chiefriver/conf/machine/chiefriver.conf
index b8b8754..5005ce0 100644
--- a/meta-chiefriver/conf/machine/chiefriver.conf
+++ b/meta-chiefriver/conf/machine/chiefriver.conf
@@ -1,6 +1,8 @@
 #@TYPE: Machine
 #@NAME: chiefriver
 
+#@WEBTITLE: Intel 3rd Generations Core Platforms: Core i3, i5, i7 (Ivy Bridge)
+
 #@DESCRIPTION: Machine configuration for Chief River systems
 # i.e. Ivy Bridge + Panther Point
 
-- 
1.7.3.4


