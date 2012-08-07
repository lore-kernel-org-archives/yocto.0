Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B1C5E013BB
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 16:58:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 07 Aug 2012 16:58:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="194437332"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.174])
	by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2012 16:58:54 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	nitin.a.kamble@intel.com,
	tom.zanussi@intel.com
Date: Tue,  7 Aug 2012 16:58:51 -0700
Message-Id: <50df046efebda7b41415932ddf66c877bd9026ee.1344383407.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344383407.git.kishore.k.bodke@intel.com>
References: <cover.1344383407.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] meta-intel: Move Matrox MGA Xorg driver to common
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
X-List-Received-Date: Tue, 07 Aug 2012 23:58:55 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

    Matrox MGA Xorg driver is being used by other meta-intel
    BSPs.  So move this to meta-intel/common/recipes-graphics
    and include in the machine.conf

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../xorg-xserver}/xf86-video-mga_1.4.13.bb         |    0
 conf/machine/include/ia32-base.inc                 |    4 ++++
 meta-romley/conf/machine/romley.conf               |    3 +--
 3 files changed, 5 insertions(+), 2 deletions(-)
 rename {meta-romley/recipes-graphics/xorg-driver => common/recipes-graphics/xorg-xserver}/xf86-video-mga_1.4.13.bb (100%)

diff --git a/meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb b/common/recipes-graphics/xorg-xserver/xf86-video-mga_1.4.13.bb
similarity index 100%
rename from meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
rename to common/recipes-graphics/xorg-xserver/xf86-video-mga_1.4.13.bb
diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 99ac352..47bd9fb 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -60,3 +60,7 @@ XSERVER_IA32_EMGD = "emgd-driver-bin \
            "
 
 XSERVER_IA32_VESA = "xf86-video-vesa"
+
+XSERVER_IA32_MATROX_MGA = "xserver-xorg-module-xaa \
+		xf86-video-mga \
+		"
diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index e6a755b..f7cfa18 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -12,6 +12,5 @@ require conf/machine/include/ia32-base.inc
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
-           xserver-xorg-module-xaa \
-	   xf86-video-mga \
+	   ${XSERVER_IA32_MATROX_MGA} \
            "
-- 
1.7.9.5


