Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E254E00739
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 10:05:50 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 Dec 2011 10:05:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,279,1320652800"; d="scan'208";a="42986715"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Dec 2011 10:05:48 -0800
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com, kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Thu,  1 Dec 2011 12:05:50 -0600
Message-Id: <e742a76993d01b4b8799a0a853c4e533bce955be.1322762434.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <05cda5202784ef61c52e8237590a31de988f4834.1322762434.git.tom.zanussi@intel.com>
References: <05cda5202784ef61c52e8237590a31de988f4834.1322762434.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322762434.git.tom.zanussi@intel.com>
References: <cover.1322762434.git.tom.zanussi@intel.com>
Subject: [PATCH 2/4] meta-intel: add Patches section to BSP READMEs
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
X-List-Received-Date: Thu, 01 Dec 2011 18:05:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Based on community input, it might be more user-friendly to have some
basic information about submitting patches in the BSP README itself.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/README     |   11 +++++++++++
 meta-emenlow/README      |   11 +++++++++++
 meta-fishriver/README    |   11 +++++++++++
 meta-fri2/README         |   11 +++++++++++
 meta-jasperforest/README |   11 +++++++++++
 meta-n450/ReleaseNotes   |   11 +++++++++++
 meta-romley/README       |   11 +++++++++++
 meta-sugarbay/README     |   11 +++++++++++
 8 files changed, 88 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index c0e8119..e1cf28d 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -26,6 +26,17 @@ This layer depends on:
   branch: master
 
 
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: Tom Zanussi <tom.zanussi@intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
 Table of Contents
 =================
 
diff --git a/meta-emenlow/README b/meta-emenlow/README
index 53c0528..9bef671 100644
--- a/meta-emenlow/README
+++ b/meta-emenlow/README
@@ -30,6 +30,17 @@ This layer depends on:
   branch: master
 
 
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: Tom Zanussi <tom.zanussi@intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
 Table of Contents
 =================
 
diff --git a/meta-fishriver/README b/meta-fishriver/README
index 77262de..1dd0a4c 100644
--- a/meta-fishriver/README
+++ b/meta-fishriver/README
@@ -20,6 +20,17 @@ This layer depends on:
   branch: master
 
 
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: Tom Zanussi <tom.zanussi@intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
 Table of Contents
 =================
 
diff --git a/meta-fri2/README b/meta-fri2/README
index d337b2a..2f8a5a4 100644
--- a/meta-fri2/README
+++ b/meta-fri2/README
@@ -28,6 +28,17 @@ This layer depends on:
   branch: master
 
 
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: Darren Hart <dvhart@linux.intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
 Table of Contents
 =================
 
diff --git a/meta-jasperforest/README b/meta-jasperforest/README
index 6af4b37..78852bd 100644
--- a/meta-jasperforest/README
+++ b/meta-jasperforest/README
@@ -25,6 +25,17 @@ This layer depends on:
   branch: master
 
 
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: Tom Zanussi <tom.zanussi@intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
 Table of Contents
 =================
 
diff --git a/meta-n450/ReleaseNotes b/meta-n450/ReleaseNotes
index 2d08f1c..67e3ff2 100644
--- a/meta-n450/ReleaseNotes
+++ b/meta-n450/ReleaseNotes
@@ -38,6 +38,17 @@ poky repository can at the present time be used to satisfy all
 meta-intel dependencies.
 
 
+PATCHES
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: Darren Hart <dvhart@linux.intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
 FEATURES AND UPDATES
 ====================
 
diff --git a/meta-romley/README b/meta-romley/README
index a6be1d5..6ddbaf2 100644
--- a/meta-romley/README
+++ b/meta-romley/README
@@ -23,6 +23,17 @@ This layer depends on:
   branch: master
 
 
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: Kishore Bodke <kishore.k.bodke@intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
 Table of Contents
 =================
 
diff --git a/meta-sugarbay/README b/meta-sugarbay/README
index d198f61..413b2ab 100644
--- a/meta-sugarbay/README
+++ b/meta-sugarbay/README
@@ -24,6 +24,17 @@ This layer depends on:
   branch: master
 
 
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: Tom Zanussi <tom.zanussi@intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
 Table of Contents
 =================
 
-- 
1.7.0.4


