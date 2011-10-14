Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3D21E013BE
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 21:09:15 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Oct 2011 21:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="62839564"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by orsmga001.jf.intel.com with ESMTP; 13 Oct 2011 21:09:15 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 23:08:46 -0500
Message-Id: <72c20bd8f691b7dce7e4acedba5c7d15c6cfb68c.1318564650.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fb53ad3e4b7ec6e21823fb1848636af057f6e73.1318564650.git.tom.zanussi@intel.com>
References: <0fb53ad3e4b7ec6e21823fb1848636af057f6e73.1318564650.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318564650.git.tom.zanussi@intel.com>
References: <cover.1318564650.git.tom.zanussi@intel.com>
Subject: [PATCH 09/10] meta-jasperforest: remove obsolete xserver-xf86-dri-lite .bbappend
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
X-List-Received-Date: Fri, 14 Oct 2011 04:09:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The recipe and what it does no longer needed, so remove it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)
 delete mode 100644 meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend

diff --git a/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend b/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
deleted file mode 100644
index b2808ef..0000000
--- a/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-EXTRA_OECONF += "--enable-dga"
-- 
1.7.0.4


