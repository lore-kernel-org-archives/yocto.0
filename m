Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67001E01239
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 20:59:59 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Aug 2011 20:59:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,283,1312182000"; d="scan'208";a="44811928"
Received: from unknown (HELO localhost) ([10.255.13.254])
	by fmsmga002.fm.intel.com with ESMTP; 25 Aug 2011 20:59:53 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 25 Aug 2011 22:59:05 -0500
Message-Id: <8f5e8884501967722481615ab9e8f56f73a14c67.1314330614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
References: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1314330614.git.tom.zanussi@intel.com>
References: <cover.1314330614.git.tom.zanussi@intel.com>
Subject: [PATCH 07/10] meta-fri2: add common/recipes-graphics to BBFILES
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
X-List-Received-Date: Fri, 26 Aug 2011 03:59:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add common/recipes-graphics so fri2 can pick up the EMGD bits in
emgd-driver-bin.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/conf/layer.conf |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta-fri2/conf/layer.conf b/meta-fri2/conf/layer.conf
index b30e776..261cccc 100644
--- a/meta-fri2/conf/layer.conf
+++ b/meta-fri2/conf/layer.conf
@@ -3,7 +3,9 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
-	${LAYERDIR}/recipes-*/*/*.bbappend"
+	${LAYERDIR}/recipes-*/*/*.bbappend \
+	${LAYERDIR}/../common/recipes-graphics/*/*.bb \
+	${LAYERDIR}/../common/recipes-graphics/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "fri2"
 BBFILE_PATTERN_fri2 := "^${LAYERDIR}/"
-- 
1.7.0.4


