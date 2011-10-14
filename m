Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81BD1E013BA
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 21:09:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Oct 2011 21:09:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,344,1315206000"; d="scan'208";a="77985582"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by fmsmga002.fm.intel.com with ESMTP; 13 Oct 2011 21:09:11 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 23:08:44 -0500
Message-Id: <ec77b598cad5c0d58825188f96345fc1994a7852.1318564650.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fb53ad3e4b7ec6e21823fb1848636af057f6e73.1318564650.git.tom.zanussi@intel.com>
References: <0fb53ad3e4b7ec6e21823fb1848636af057f6e73.1318564650.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318564650.git.tom.zanussi@intel.com>
References: <cover.1318564650.git.tom.zanussi@intel.com>
Subject: [PATCH 07/10] meta-jasperforest: remove meta-intel/common from BBFILES
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
X-List-Received-Date: Fri, 14 Oct 2011 04:09:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

There's nothing in meta-intel/common used by jasperforest any longer,
and is too broad anyway, so remove it from BBFILES.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/conf/layer.conf |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/meta-jasperforest/conf/layer.conf b/meta-jasperforest/conf/layer.conf
index 8125659..bfd7fc3 100644
--- a/meta-jasperforest/conf/layer.conf
+++ b/meta-jasperforest/conf/layer.conf
@@ -3,9 +3,7 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
-	${LAYERDIR}/recipes-*/*/*.bbappend \
-	${LAYERDIR}/../common/recipes-*/*/*.bb \
-	${LAYERDIR}/../common/recipes-*/*/*.bbappend"
+	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "jasperforest"
 BBFILE_PATTERN_jasperforest := "^${LAYERDIR}/"
-- 
1.7.0.4


