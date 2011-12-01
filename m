Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C761E0073D
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 13:35:10 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Dec 2011 13:35:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,280,1320652800"; d="scan'208";a="81253589"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by azsmga001.ch.intel.com with ESMTP; 01 Dec 2011 13:35:09 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  1 Dec 2011 15:35:06 -0600
Message-Id: <6d5ec48ff2aa9f5052e6e9a86ccd8797a5014aab.1322775053.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1554c200a74a8105ccc8f872edad422a5bf13835.1322775053.git.tom.zanussi@intel.com>
References: <1554c200a74a8105ccc8f872edad422a5bf13835.1322775053.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322775053.git.tom.zanussi@intel.com>
References: <cover.1322775053.git.tom.zanussi@intel.com>
Subject: [PATCH 6/6] meta-intel: add libva to EGMD xserver
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
X-List-Received-Date: Thu, 01 Dec 2011 21:35:10 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

EMGD requires libva, so add the dependency here.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/machine/include/ia32-base.inc |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 5cf2f4f..6522c9c 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -53,6 +53,8 @@ XSERVER_IA32_I915 = "xf86-video-intel \
            mesa-dri-driver-i965 \
            "
 
-XSERVER_IA32_EMGD = "emgd-driver-bin"
+XSERVER_IA32_EMGD = "emgd-driver-bin \
+           libva \
+           "
 
 XSERVER_IA32_VESA = "xf86-video-vesa"
-- 
1.7.0.4


