Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BD48E01461
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 16:32:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Oct 2012 16:32:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,573,1344236400"; d="scan'208";a="233777288"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 11 Oct 2012 16:32:14 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Thu, 11 Oct 2012 16:31:02 -0700
Message-Id: <11ebd15a4c764eecb1f498934de7661027b13692.1349998086.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <0ee691e2e0857cd3f26fe535d67c214817062392.1349998086.git.nitin.a.kamble@intel.com>
References: <0ee691e2e0857cd3f26fe535d67c214817062392.1349998086.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1349998086.git.nitin.a.kamble@intel.com>
References: <cover.1349998086.git.nitin.a.kamble@intel.com>
Subject: [PATCHv4 5/8] update maintainers of various BSPs
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
X-List-Received-Date: Thu, 11 Oct 2012 23:32:52 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

BSP maintainership for following BSPs is now transitioned from Tom to Nitin
 sugarbay, emenlow, crownbay, jasperforest, chiefriver

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 MAINTAINERS              |   12 ++++++------
 meta-chiefriver/README   |   11 +++++++++++
 meta-crownbay/README     |    2 +-
 meta-emenlow/README      |    2 +-
 meta-jasperforest/README |    2 +-
 meta-sugarbay/README     |    2 +-
 6 files changed, 21 insertions(+), 10 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3bf0add..d63ed31 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -37,15 +37,15 @@ M:      Kishore Bodke <kishore.k.bodke@intel.com>
 F:      meta-cedartrail/
 
 CHIEFRIVER
-M:	Tom Zanussi <tom.zanussi@intel.com>
+M:	Nitin A Kamble<nitin.a.kamble@intel.com>
 F:	meta-chiefriver/
 
 COMMON
-M:	Tom Zanussi <tom.zanussi@intel.com>
+M:	Nitin A Kamble<nitin.a.kamble@intel.com>
 F:	common/recipes-core/
 
 CROWNBAY
-M:	Tom Zanussi <tom.zanussi@intel.com>
+M:	Nitin A Kamble<nitin.a.kamble@intel.com>
 F:	meta-crownbay/
 
 CRYSTALFOREST
@@ -53,7 +53,7 @@ M:      Kishore Bodke <kishore.k.bodke@intel.com>
 F:      meta-crystalforest/
 
 EMENLOW
-M:	Tom Zanussi <tom.zanussi@intel.com>
+M:	Nitin A Kamble<nitin.a.kamble@intel.com>
 F:	meta-emenlow/
 
 FRI2
@@ -61,7 +61,7 @@ M:	Darren Hart <dvhart@linux.intel.com>
 F:	meta-fri2/
 
 JASPERFOREST
-M:	Tom Zanussi <tom.zanussi@intel.com>
+M:	Nitin A Kamble<nitin.a.kamble@intel.com>
 F:	meta-jasperforest/
 
 N450
@@ -73,6 +73,6 @@ M:      Kishore Bodke <kishore.k.bodke@intel.com>
 F:      meta-romley/
 
 SUGARBAY
-M:	Tom Zanussi <tom.zanussi@intel.com>
+M:	Nitin A Kamble<nitin.a.kamble@intel.com>
 F:	meta-sugarbay/
 
diff --git a/meta-chiefriver/README b/meta-chiefriver/README
index 438c293..7c47b02 100644
--- a/meta-chiefriver/README
+++ b/meta-chiefriver/README
@@ -24,6 +24,17 @@ This layer depends on:
   branch: master
 
 
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: Nitin A Kamble <nitin.a.kamble@intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
 Table of Contents
 =================
 
diff --git a/meta-crownbay/README b/meta-crownbay/README
index f7aeffa..4bc9f31 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -32,7 +32,7 @@ Patches
 Please submit any patches against this BSP to the Yocto mailing list
 (yocto@yoctoproject.org) and cc: the maintainer:
 
-Maintainer: Tom Zanussi <tom.zanussi@intel.com>
+Maintainer: Nitin A Kamble <nitin.a.kamble@intel.com>
 
 Please see the meta-intel/MAINTAINERS file for more details.
 
diff --git a/meta-emenlow/README b/meta-emenlow/README
index 9bef671..3932718 100644
--- a/meta-emenlow/README
+++ b/meta-emenlow/README
@@ -36,7 +36,7 @@ Patches
 Please submit any patches against this BSP to the Yocto mailing list
 (yocto@yoctoproject.org) and cc: the maintainer:
 
-Maintainer: Tom Zanussi <tom.zanussi@intel.com>
+Maintainer: Nitin A Kamble <nitin.a.kamble@intel.com>
 
 Please see the meta-intel/MAINTAINERS file for more details.
 
diff --git a/meta-jasperforest/README b/meta-jasperforest/README
index 78852bd..12f84c2 100644
--- a/meta-jasperforest/README
+++ b/meta-jasperforest/README
@@ -31,7 +31,7 @@ Patches
 Please submit any patches against this BSP to the Yocto mailing list
 (yocto@yoctoproject.org) and cc: the maintainer:
 
-Maintainer: Tom Zanussi <tom.zanussi@intel.com>
+Maintainer: Nitin A Kamble <nitin.a.kamble@intel.com>
 
 Please see the meta-intel/MAINTAINERS file for more details.
 
diff --git a/meta-sugarbay/README b/meta-sugarbay/README
index 80833c1..c8a99d7 100644
--- a/meta-sugarbay/README
+++ b/meta-sugarbay/README
@@ -30,7 +30,7 @@ Patches
 Please submit any patches against this BSP to the Yocto mailing list
 (yocto@yoctoproject.org) and cc: the maintainer:
 
-Maintainer: Tom Zanussi <tom.zanussi@intel.com>
+Maintainer: Nitin A Kamble <nitin.a.kamble@intel.com>
 
 Please see the meta-intel/MAINTAINERS file for more details.
 
-- 
1.7.3.4


