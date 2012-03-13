Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80DA1E013A3
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 21:37:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Mar 2012 21:37:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118085212"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by azsmga001.ch.intel.com with ESMTP; 12 Mar 2012 21:37:49 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 12 Mar 2012 23:37:38 -0500
Message-Id: <162f3d1d3c538d7582a5e81205a9cdab74125b2b.1331610171.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <86eeec9f1963b57809b988e148ddf43562e2f0bc.1331610171.git.tom.zanussi@intel.com>
References: <86eeec9f1963b57809b988e148ddf43562e2f0bc.1331610171.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1331610171.git.tom.zanussi@intel.com>
References: <cover.1331610171.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] ia32-base: add libva display dependencies to emgd xserver
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
X-List-Received-Date: Tue, 13 Mar 2012 04:37:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

libgstmixvideoplugin.so is being blacklisted due to a missing
libva-tpi library, so add it and make the other two libva display
libraries available while we're at it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/machine/include/ia32-base.inc |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 1fb09b1..7da53f6 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -54,6 +54,9 @@ XSERVER_IA32_I915 = "xf86-video-intel \
 
 XSERVER_IA32_EMGD = "emgd-driver-bin \
            libva-x11 \
+           libva-tpi \
+           libva-glx \
+           libva-egl \
            "
 
 XSERVER_IA32_VESA = "xf86-video-vesa"
-- 
1.7.0.4


