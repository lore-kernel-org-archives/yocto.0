Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00739E013A8
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:58:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Mar 2012 14:58:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="133370804"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by fmsmga001.fm.intel.com with ESMTP; 26 Mar 2012 14:58:57 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon, 26 Mar 2012 07:49:20 -0700
Message-Id: <f0f02d4eca7747542d6b5454dc55a6398ecd2ecd.1332797429.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332797429.git.rahul.saxena@intel.com>
References: <cover.1332797429.git.rahul.saxena@intel.com>
Subject: [PATCH 02/14] meta-cedartrail: update BBFILES to include meta-intel/common path
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
X-List-Received-Date: Mon, 26 Mar 2012 21:58:58 -0000

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


