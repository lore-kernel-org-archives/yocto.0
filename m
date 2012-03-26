Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF106E013EA
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:58:59 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Mar 2012 14:58:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="125359654"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by orsmga002.jf.intel.com with ESMTP; 26 Mar 2012 14:58:59 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon, 26 Mar 2012 07:49:32 -0700
Message-Id: <cecbcedb6dc0251b3dd2b0c3ddae803a5b37f6c1.1332797429.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332797429.git.rahul.saxena@intel.com>
References: <cover.1332797429.git.rahul.saxena@intel.com>
Subject: [PATCH 14/14] meta-cedartrail: change libva license to MIT
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
X-List-Received-Date: Mon, 26 Mar 2012 21:59:00 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

The license type in libva recipe was incorrect. Changed it to MIT

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 .../recipes-multimedia/libva/libva_1.0.15.bb       |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-cedartrail/recipes-multimedia/libva/libva_1.0.15.bb b/meta-cedartrail/recipes-multimedia/libva/libva_1.0.15.bb
index 2800464..3a4cb0c 100644
--- a/meta-cedartrail/recipes-multimedia/libva/libva_1.0.15.bb
+++ b/meta-cedartrail/recipes-multimedia/libva/libva_1.0.15.bb
@@ -1,9 +1,9 @@
 require libva.inc
 
-LICENSE = "CC-BY-3.0"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
 
-PR = R0 
+PR = "R0" 
 
 CDR_TRAIL = "download.meego.com/live/MeeGo:/1.2.0:/CedarTrail:"
 
-- 
1.7.4.1


