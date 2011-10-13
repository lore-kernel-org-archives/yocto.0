Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD1E0E01390
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 22:07:45 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Oct 2011 22:07:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,338,1315206000"; d="scan'208";a="25860360"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Oct 2011 22:07:45 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 00:07:20 -0500
Message-Id: <7cd77ba4df49c757d21c9eb991a1c97f67f69e38.1318481569.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <57876222731972088b7d40943f78e960efc2562a.1318481569.git.tom.zanussi@intel.com>
References: <57876222731972088b7d40943f78e960efc2562a.1318481569.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318481569.git.tom.zanussi@intel.com>
References: <cover.1318481569.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Thu, 13 Oct 2011 05:07:46 -0000

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


