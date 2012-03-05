Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E6F7E01374
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 11:45:28 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2012 11:45:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="133803371"
Received: from unknown (HELO localhost) ([10.255.15.97])
	by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2012 11:45:28 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2012 13:45:17 -0600
Message-Id: <4ca9c01ec7f32e1054d34958e60608c16128164c.1330975070.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <c080bfe6bc54e09f05c78a47d1f471f238367828.1330975070.git.tom.zanussi@linux.intel.com>
References: <c080bfe6bc54e09f05c78a47d1f471f238367828.1330975070.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1330975070.git.tom.zanussi@linux.intel.com>
References: <cover.1330975070.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 3/5] meta-emenlow: add SRC_URI checksums to xserver-xorg-video-psb
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
X-List-Received-Date: Mon, 05 Mar 2012 19:45:28 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Add md5 and sha256 checksums to the recipe.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../xserver-xorg-video-psb_0.32.1.bb               |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb
index 1ff92bb..9de68f4 100644
--- a/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb
+++ b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb
@@ -19,6 +19,9 @@ SRC_URI = "https://launchpad.net/~gma500/+archive/ppa/+files/xserver-xorg-video-
 	file://dri-h.patch \
 	file://libdrm-poulsbo.patch"
 
+SRC_URI[md5sum] = "67bd808960db4fe9b3a7ff2582da1608"
+SRC_URI[sha256sum] = "deeaf6e4d059e709d8a4268bd013a172f7fbd70778236d7d1e2712d1951de72c"
+
 export DRI_CFLAGS="-I${STAGING_INCDIR}/psb -I${STAGING_INCDIR}/psb/drm \
 	-I${STAGING_INCDIR}/X11/dri"
 
-- 
1.7.1


