Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26D23E011D1
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 01:39:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Feb 2012 01:39:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="114413589"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.123.5])
	by orsmga002.jf.intel.com with ESMTP; 24 Feb 2012 01:38:32 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Feb 2012 09:38:27 +0000
Message-Id: <dc82738b4b31e953f5a0fdd2f1a80b23245dfa2c.1330076070.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1330076070.git.paul.eggleton@linux.intel.com>
References: <cover.1330076070.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1330076070.git.paul.eggleton@linux.intel.com>
References: <cover.1330076070.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] meta-intel: add LAYERDEPENDS for layers needing the meta-intel common layer
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
X-List-Received-Date: Fri, 24 Feb 2012 09:39:52 -0000

These layers all contain machine configuration that depends on having
the meta-intel common layer enabled as well, so use LAYERDEPENDS in the
layer configuration for each one to make this explicit.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-cedartrail/conf/layer.conf   |    2 ++
 meta-crownbay/conf/layer.conf     |    2 ++
 meta-emenlow/conf/layer.conf      |    2 ++
 meta-fishriver/conf/layer.conf    |    2 ++
 meta-fri2/conf/layer.conf         |    2 ++
 meta-jasperforest/conf/layer.conf |    2 ++
 meta-n450/conf/layer.conf         |    2 ++
 meta-romley/conf/layer.conf       |    2 ++
 meta-sugarbay/conf/layer.conf     |    2 ++
 meta-sys940x/conf/layer.conf      |    2 ++
 10 files changed, 20 insertions(+), 0 deletions(-)

diff --git a/meta-cedartrail/conf/layer.conf b/meta-cedartrail/conf/layer.conf
index cb4142d..c19c4c1 100644
--- a/meta-cedartrail/conf/layer.conf
+++ b/meta-cedartrail/conf/layer.conf
@@ -8,3 +8,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "cedartrail"
 BBFILE_PATTERN_cedartrail := "^${LAYERDIR}/"
 BBFILE_PRIORITY_cedartrail = "6"
+
+LAYERDEPENDS_cedartrail = "intel"
diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
index 52581e1..cb17298 100644
--- a/meta-crownbay/conf/layer.conf
+++ b/meta-crownbay/conf/layer.conf
@@ -8,3 +8,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "crownbay"
 BBFILE_PATTERN_crownbay := "^${LAYERDIR}/"
 BBFILE_PRIORITY_crownbay = "6"
+
+LAYERDEPENDS_crownbay = "intel"
diff --git a/meta-emenlow/conf/layer.conf b/meta-emenlow/conf/layer.conf
index 563b9c8..dda80c0 100644
--- a/meta-emenlow/conf/layer.conf
+++ b/meta-emenlow/conf/layer.conf
@@ -8,3 +8,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "emenlow"
 BBFILE_PATTERN_emenlow := "^${LAYERDIR}/"
 BBFILE_PRIORITY_emenlow = "6"
+
+LAYERDEPENDS_emenlow = "intel"
diff --git a/meta-fishriver/conf/layer.conf b/meta-fishriver/conf/layer.conf
index 9162b5e..61e292b 100644
--- a/meta-fishriver/conf/layer.conf
+++ b/meta-fishriver/conf/layer.conf
@@ -8,3 +8,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "fishriver"
 BBFILE_PATTERN_fishriver := "^${LAYERDIR}/"
 BBFILE_PRIORITY_fishriver = "6"
+
+LAYERDEPENDS_fishriver = "intel"
diff --git a/meta-fri2/conf/layer.conf b/meta-fri2/conf/layer.conf
index b30e776..4d140f9 100644
--- a/meta-fri2/conf/layer.conf
+++ b/meta-fri2/conf/layer.conf
@@ -8,3 +8,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "fri2"
 BBFILE_PATTERN_fri2 := "^${LAYERDIR}/"
 BBFILE_PRIORITY_fri2 = "6"
+
+LAYERDEPENDS_fri2 = "intel"
diff --git a/meta-jasperforest/conf/layer.conf b/meta-jasperforest/conf/layer.conf
index bfd7fc3..09f1647 100644
--- a/meta-jasperforest/conf/layer.conf
+++ b/meta-jasperforest/conf/layer.conf
@@ -8,3 +8,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "jasperforest"
 BBFILE_PATTERN_jasperforest := "^${LAYERDIR}/"
 BBFILE_PRIORITY_jasperforest = "6"
+
+LAYERDEPENDS_jasperforest = "intel"
diff --git a/meta-n450/conf/layer.conf b/meta-n450/conf/layer.conf
index f9cc7fe..2c905c2 100644
--- a/meta-n450/conf/layer.conf
+++ b/meta-n450/conf/layer.conf
@@ -8,3 +8,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "n450"
 BBFILE_PATTERN_n450 = "^${LAYERDIR}/"
 BBFILE_PRIORITY_n450 = "6"
+
+LAYERDEPENDS_n450 = "intel"
diff --git a/meta-romley/conf/layer.conf b/meta-romley/conf/layer.conf
index c5eeaab..8ce1a4d 100644
--- a/meta-romley/conf/layer.conf
+++ b/meta-romley/conf/layer.conf
@@ -8,3 +8,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "romley"
 BBFILE_PATTERN_romley := "^${LAYERDIR}/"
 BBFILE_PRIORITY_romley = "6"
+
+LAYERDEPENDS_romley = "intel"
diff --git a/meta-sugarbay/conf/layer.conf b/meta-sugarbay/conf/layer.conf
index 05ef1cd..eb8ec45 100644
--- a/meta-sugarbay/conf/layer.conf
+++ b/meta-sugarbay/conf/layer.conf
@@ -8,3 +8,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "sugarbay"
 BBFILE_PATTERN_sugarbay := "^${LAYERDIR}/"
 BBFILE_PRIORITY_sugarbay = "6"
+
+LAYERDEPENDS_sugarbay = "intel"
diff --git a/meta-sys940x/conf/layer.conf b/meta-sys940x/conf/layer.conf
index 459c710..5d588ad 100644
--- a/meta-sys940x/conf/layer.conf
+++ b/meta-sys940x/conf/layer.conf
@@ -8,3 +8,5 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "sys940x"
 BBFILE_PATTERN_sys940x := "^${LAYERDIR}/"
 BBFILE_PRIORITY_sys940x = "6"
+
+LAYERDEPENDS_sys940x = "intel"
-- 
1.7.5.4


