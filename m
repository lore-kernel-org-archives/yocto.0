Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E4564C804F7
	for <yocto@yoctoproject.org>; Thu, 26 May 2011 10:41:19 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 May 2011 08:41:18 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost) ([10.255.12.115])
	by orsmga002.jf.intel.com with ESMTP; 26 May 2011 08:41:18 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 26 May 2011 10:40:46 -0500
Message-Id: <f113449eb132df7c8a4c45ad8719ecc3ec84a6b5.1306420608.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306420608.git.tom.zanussi@intel.com>
References: <cover.1306420608.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-intel: fix BBFILE_COLLECTIONS overrides
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
X-List-Received-Date: Thu, 26 May 2011 15:41:19 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Several BBFILE_COLLECTIONS assignments in the layer.confs for these
meta-intel layers added unwanted machine overrides, resulting in
truncated values for this variable - remove them.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/layer.conf     |    4 ++--
 meta-fishriver/conf/layer.conf    |    2 +-
 meta-jasperforest/conf/layer.conf |    2 +-
 meta-sugarbay/conf/layer.conf     |    2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
index cee4ba2..d15579d 100644
--- a/meta-crownbay/conf/layer.conf
+++ b/meta-crownbay/conf/layer.conf
@@ -5,10 +5,10 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
-BBFILE_COLLECTIONS_crownbay += "crownbay"
+BBFILE_COLLECTIONS_append_crownbay += "crownbay"
 BBFILE_PATTERN_crownbay := "^${LAYERDIR}/"
 BBFILE_PRIORITY_crownbay = "6"
 
-BBFILE_COLLECTIONS_crownbay-noemgd += "crownbay-noemgd"
+BBFILE_COLLECTIONS_append_crownbay-noemgd += "crownbay-noemgd"
 BBFILE_PATTERN_crownbay-noemgd := "^${LAYERDIR}/"
 BBFILE_PRIORITY_crownbay-noemgd = "6"
diff --git a/meta-fishriver/conf/layer.conf b/meta-fishriver/conf/layer.conf
index 595bbe3..9162b5e 100644
--- a/meta-fishriver/conf/layer.conf
+++ b/meta-fishriver/conf/layer.conf
@@ -5,6 +5,6 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
-BBFILE_COLLECTIONS_fishriver += "fishriver"
+BBFILE_COLLECTIONS += "fishriver"
 BBFILE_PATTERN_fishriver := "^${LAYERDIR}/"
 BBFILE_PRIORITY_fishriver = "6"
diff --git a/meta-jasperforest/conf/layer.conf b/meta-jasperforest/conf/layer.conf
index 564bb1d..8125659 100644
--- a/meta-jasperforest/conf/layer.conf
+++ b/meta-jasperforest/conf/layer.conf
@@ -7,6 +7,6 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/../common/recipes-*/*/*.bb \
 	${LAYERDIR}/../common/recipes-*/*/*.bbappend"
 
-BBFILE_COLLECTIONS_jasperforest += "jasperforest"
+BBFILE_COLLECTIONS += "jasperforest"
 BBFILE_PATTERN_jasperforest := "^${LAYERDIR}/"
 BBFILE_PRIORITY_jasperforest = "6"
diff --git a/meta-sugarbay/conf/layer.conf b/meta-sugarbay/conf/layer.conf
index e23d123..d5f78e1 100644
--- a/meta-sugarbay/conf/layer.conf
+++ b/meta-sugarbay/conf/layer.conf
@@ -7,6 +7,6 @@ BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/../common/recipes-*/*/*.bb \
 	${LAYERDIR}/../common/recipes-*/*/*.bbappend"
 
-BBFILE_COLLECTIONS_sugarbay += "sugarbay"
+BBFILE_COLLECTIONS += "sugarbay"
 BBFILE_PATTERN_sugarbay := "^${LAYERDIR}/"
 BBFILE_PRIORITY_sugarbay = "6"
-- 
1.7.0.4


