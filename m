Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FC12E0144C
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 13:28:35 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jun 2012 13:28:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="180177560"
Received: from unknown (HELO localhost) ([10.255.12.51])
	by fmsmga002.fm.intel.com with ESMTP; 14 Jun 2012 13:28:34 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com,
	kishore.k.bodke
Date: Thu, 14 Jun 2012 15:28:29 -0500
Message-Id: <33a532e1eb5de0a7abf637d44ee7c3376d2a3295.1339705524.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <e1f26f8f7ec67ca230258e1790aacc812dc76bf7.1339705524.git.tom.zanussi@intel.com>
References: <e1f26f8f7ec67ca230258e1790aacc812dc76bf7.1339705524.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1339705524.git.tom.zanussi@intel.com>
References: <cover.1339705524.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-intel: update conf/layer.conf BBPATH/BBFILES for BSP layers
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
X-List-Received-Date: Thu, 14 Jun 2012 20:28:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Silence the warning:

WARNING: BBPATH references the current directory

as mentioned in [YOCTO #1465].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-cedartrail/conf/layer.conf   |    4 ++--
 meta-chiefriver/conf/layer.conf   |    4 ++--
 meta-crownbay/conf/layer.conf     |    4 ++--
 meta-emenlow/conf/layer.conf      |    4 ++--
 meta-fishriver/conf/layer.conf    |    4 ++--
 meta-fri2/conf/layer.conf         |    4 ++--
 meta-jasperforest/conf/layer.conf |    4 ++--
 meta-n450/conf/layer.conf         |    4 ++--
 meta-romley/conf/layer.conf       |    4 ++--
 meta-sugarbay/conf/layer.conf     |    4 ++--
 meta-sys940x/conf/layer.conf      |    4 ++--
 meta-tlk/conf/layer.conf          |    4 ++--
 12 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/meta-cedartrail/conf/layer.conf b/meta-cedartrail/conf/layer.conf
index c19c4c1..0166b35 100644
--- a/meta-cedartrail/conf/layer.conf
+++ b/meta-cedartrail/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "cedartrail"
diff --git a/meta-chiefriver/conf/layer.conf b/meta-chiefriver/conf/layer.conf
index 5dc3c02..6164f99 100644
--- a/meta-chiefriver/conf/layer.conf
+++ b/meta-chiefriver/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "chiefriver"
diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
index cb17298..e6cc2a0 100644
--- a/meta-crownbay/conf/layer.conf
+++ b/meta-crownbay/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "crownbay"
diff --git a/meta-emenlow/conf/layer.conf b/meta-emenlow/conf/layer.conf
index dda80c0..7675fbd 100644
--- a/meta-emenlow/conf/layer.conf
+++ b/meta-emenlow/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "emenlow"
diff --git a/meta-fishriver/conf/layer.conf b/meta-fishriver/conf/layer.conf
index 61e292b..977ea8a 100644
--- a/meta-fishriver/conf/layer.conf
+++ b/meta-fishriver/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "fishriver"
diff --git a/meta-fri2/conf/layer.conf b/meta-fri2/conf/layer.conf
index 4d140f9..0bb29a1 100644
--- a/meta-fri2/conf/layer.conf
+++ b/meta-fri2/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "fri2"
diff --git a/meta-jasperforest/conf/layer.conf b/meta-jasperforest/conf/layer.conf
index 09f1647..6d096e7 100644
--- a/meta-jasperforest/conf/layer.conf
+++ b/meta-jasperforest/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "jasperforest"
diff --git a/meta-n450/conf/layer.conf b/meta-n450/conf/layer.conf
index 2c905c2..f4022c9 100644
--- a/meta-n450/conf/layer.conf
+++ b/meta-n450/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "n450"
diff --git a/meta-romley/conf/layer.conf b/meta-romley/conf/layer.conf
index 8ce1a4d..7b6a5bc 100644
--- a/meta-romley/conf/layer.conf
+++ b/meta-romley/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "romley"
diff --git a/meta-sugarbay/conf/layer.conf b/meta-sugarbay/conf/layer.conf
index eb8ec45..9576330 100644
--- a/meta-sugarbay/conf/layer.conf
+++ b/meta-sugarbay/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "sugarbay"
diff --git a/meta-sys940x/conf/layer.conf b/meta-sys940x/conf/layer.conf
index 5d588ad..b14be6d 100644
--- a/meta-sys940x/conf/layer.conf
+++ b/meta-sys940x/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "sys940x"
diff --git a/meta-tlk/conf/layer.conf b/meta-tlk/conf/layer.conf
index 9af646f..5442779 100644
--- a/meta-tlk/conf/layer.conf
+++ b/meta-tlk/conf/layer.conf
@@ -1,6 +1,6 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
-- 
1.7.0.4


