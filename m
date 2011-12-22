Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BDBDE006DD
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 19:51:10 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Dec 2011 19:51:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="99073278"
Received: from unknown (HELO localhost) ([10.255.12.82])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2011 19:51:09 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 21 Dec 2011 21:48:30 -0600
Message-Id: <97e00bc6db2e3f2be4222c836e4c5d446e88d0d5.1324525137.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <950dae279cb0925fe80ad1f10be7eb36bc45eea5.1324525137.git.tom.zanussi@intel.com>
References: <950dae279cb0925fe80ad1f10be7eb36bc45eea5.1324525137.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1324525136.git.tom.zanussi@intel.com>
References: <cover.1324525136.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-intel: change EMGD xserver libva dependency to libva-x11
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
X-List-Received-Date: Thu, 22 Dec 2011 03:51:10 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

XSERVER_IA32_EMGD should depend on libva-x11, which in turn depends on
libva, instead of just libva.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/machine/include/ia32-base.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 6522c9c..84693e2 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -54,7 +54,7 @@ XSERVER_IA32_I915 = "xf86-video-intel \
            "
 
 XSERVER_IA32_EMGD = "emgd-driver-bin \
-           libva \
+           libva-x11 \
            "
 
 XSERVER_IA32_VESA = "xf86-video-vesa"
-- 
1.7.0.4


