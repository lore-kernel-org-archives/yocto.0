Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A010E01207
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 12:33:50 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Aug 2011 12:34:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="37282119"
Received: from unknown (HELO localhost) ([10.255.14.198])
	by orsmga002.jf.intel.com with ESMTP; 12 Aug 2011 12:33:59 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 12 Aug 2011 14:33:49 -0500
Message-Id: <fd590b5cd0034dcd7f96e5347eeae9d215c37ee9.1313172146.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <bbf43b0c5f15b04eba02debf43d19ed1899423ab.1313172146.git.tom.zanussi@intel.com>
References: <bbf43b0c5f15b04eba02debf43d19ed1899423ab.1313172146.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313172146.git.tom.zanussi@intel.com>
References: <cover.1313172146.git.tom.zanussi@intel.com>
Subject: [PATCH 3/6] meta-crownbay: select emgd 1.8
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
X-List-Received-Date: Fri, 12 Aug 2011 19:33:50 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Change preferred version of emgd binaries to 1.8.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index b4ea4b4..28d2902 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -28,7 +28,7 @@ XSERVER ?= "xserver-xf86-dri-lite \
            xf86-video-vesa"
 
 PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.6"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-- 
1.7.0.4


