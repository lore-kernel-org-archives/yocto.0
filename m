Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1712FE011DB
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 15:11:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Oct 2012 15:10:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="224566363"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga002.jf.intel.com with ESMTP; 09 Oct 2012 15:11:11 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Tue,  9 Oct 2012 15:10:07 -0700
Message-Id: <c742ba99fbc412dd02ab831149d7fc13ac695ad7.1349820369.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <3259734fca50f6ffd7e70ed7829c0a398d4795b0.1349820369.git.nitin.a.kamble@intel.com>
References: <3259734fca50f6ffd7e70ed7829c0a398d4795b0.1349820369.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1349820369.git.nitin.a.kamble@intel.com>
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
Subject: [PATCH 5/5] update maintainers of various BSPs
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
X-List-Received-Date: Tue, 09 Oct 2012 22:11:12 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Nitin has taken over maintainership from Tom for these BSPs
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


