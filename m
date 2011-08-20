Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A26B6E0120C
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 08:26:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Aug 2011 08:26:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,256,1312182000"; d="scan'208";a="40569356"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2011 08:26:49 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	saul.wold@intel.com,
	yocto@yoctoproject.org
Date: Sat, 20 Aug 2011 10:26:58 -0500
Message-Id: <5fe6708c0210269b0ad1c73d8c4baaff50cdc654.1313853536.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
References: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313853536.git.tom.zanussi@intel.com>
References: <cover.1313853536.git.tom.zanussi@intel.com>
Subject: [PATCH 8/9] meta-fri2: add common/recipes-graphics to BBFILES
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
X-List-Received-Date: Sat, 20 Aug 2011 15:26:50 -0000

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


