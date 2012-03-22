Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FFCBE013D9
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 17:41:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Mar 2012 17:41:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="124096713"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by orsmga002.jf.intel.com with ESMTP; 22 Mar 2012 17:41:29 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 22 Mar 2012 10:32:15 -0700
Message-Id: <f0f02d4eca7747542d6b5454dc55a6398ecd2ecd.1332459306.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332459306.git.rahul.saxena@intel.com>
References: <cover.1332459306.git.rahul.saxena@intel.com>
Subject: [PATCH 02/13] meta-cedartrail: update BBFILES to include meta-intel/common path
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
X-List-Received-Date: Fri, 23 Mar 2012 00:41:29 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Update BBFILES to include the path to xserver-xf86-dri-lite_1.9.3.bb
Cedar Trail PVR driver is dependent on Version 1.9.3 of xserver.

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 meta-cedartrail/conf/layer.conf |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta-cedartrail/conf/layer.conf b/meta-cedartrail/conf/layer.conf
index cb4142d..c506c5b 100755
--- a/meta-cedartrail/conf/layer.conf
+++ b/meta-cedartrail/conf/layer.conf
@@ -3,7 +3,9 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
-	${LAYERDIR}/recipes-*/*/*.bbappend"
+	${LAYERDIR}/recipes-*/*/*.bbappend \ 
+        ${LAYERDIR}/../common/recipes-graphics/*/*.bb \
+        ${LAYERDIR}/../common/recipes-graphics/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "cedartrail"
 BBFILE_PATTERN_cedartrail := "^${LAYERDIR}/"
-- 
1.7.4.1


