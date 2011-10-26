Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5748E006D1
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 16:25:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Oct 2011 16:25:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,411,1315206000"; d="scan'208";a="67383502"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.157])
	by azsmga001.ch.intel.com with ESMTP; 26 Oct 2011 16:25:43 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org
Date: Wed, 26 Oct 2011 16:25:26 -0700
Message-Id: <984745b379f52574faeccbc3b4e2ee3288f8384a.1319666230.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
References: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1319666230.git.kishore.k.bodke@intel.com>
References: <cover.1319666230.git.kishore.k.bodke@intel.com>
Subject: [PATCH 2/7] meta-romley: remove meta-intel/common from BBFILES
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
X-List-Received-Date: Wed, 26 Oct 2011 23:25:44 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

There's nothing in meta-intel/common used by romley, and is too broad
anyway, so remove it from BBFILES.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-romley/conf/layer.conf |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/meta-romley/conf/layer.conf b/meta-romley/conf/layer.conf
index f9dd569..c5eeaab 100644
--- a/meta-romley/conf/layer.conf
+++ b/meta-romley/conf/layer.conf
@@ -3,9 +3,7 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
-	${LAYERDIR}/recipes-*/*/*.bbappend \
-	${LAYERDIR}/../common/recipes-*/*/*.bb \
-	${LAYERDIR}/../common/recipes-*/*/*.bbappend"
+	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "romley"
 BBFILE_PATTERN_romley := "^${LAYERDIR}/"
-- 
1.7.5.4


