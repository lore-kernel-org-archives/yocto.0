Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3206CE00743
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 14:44:55 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 21 Nov 2011 14:44:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,549,1315206000"; d="scan'208";a="39893502"
Received: from unknown (HELO localhost) ([10.255.15.246])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Nov 2011 14:44:54 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, kishore.k.bodke@intel.com
Date: Mon, 21 Nov 2011 16:44:32 -0600
Message-Id: <95319b408d01ef2fee102e6877e9753a45379f49.1321915193.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321915193.git.tom.zanussi@intel.com>
References: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321915193.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1321915192.git.tom.zanussi@intel.com>
References: <cover.1321915192.git.tom.zanussi@intel.com>
Subject: [PATCH 16/17] meta-fri2: remove common from BBFILES
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
X-List-Received-Date: Mon, 21 Nov 2011 22:44:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

metadata in /common is now pulled in by the meta-intel layer, so
remove it here.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/conf/layer.conf |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/meta-fri2/conf/layer.conf b/meta-fri2/conf/layer.conf
index 261cccc..b30e776 100644
--- a/meta-fri2/conf/layer.conf
+++ b/meta-fri2/conf/layer.conf
@@ -3,9 +3,7 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
-	${LAYERDIR}/recipes-*/*/*.bbappend \
-	${LAYERDIR}/../common/recipes-graphics/*/*.bb \
-	${LAYERDIR}/../common/recipes-graphics/*/*.bbappend"
+	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "fri2"
 BBFILE_PATTERN_fri2 := "^${LAYERDIR}/"
-- 
1.7.0.4


