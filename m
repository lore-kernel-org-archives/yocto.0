Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93470E0127D
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 16:31:40 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Dec 2011 16:31:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="99868447"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2011 16:31:29 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 16:31:30 -0800
Message-Id: <25d49e759b838c6bca5ec9f431b516d95a9ed3f8.1323303673.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
Subject: [PATCH 2/7] fri2: change preferred display order
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
X-List-Received-Date: Thu, 08 Dec 2011 00:31:40 -0000

The current PortOrder value assumes LVDS. Change the value to first try the
primary SDVO output, then the secondary SDVO, and fallback to LVDS if neither
are present.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../xserver-xf86-config/fri2/xorg.conf             |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
index fce58f8..73736ac 100644
--- a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
+++ b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
@@ -23,7 +23,7 @@ Section "Device"
     Option     "PcfVersion"            "1792"
     Option     "ConfigId"              "1"
     Option     "ALL/1/name"                   "e6xx"
-    Option     "ALL/1/General/PortOrder"      "40000"
+    Option     "ALL/1/General/PortOrder"      "32400"
     Option     "ALL/1/General/DisplayConfig"  "1"
     Option     "ALL/1/General/DisplayDetect"  "1"
     Option     "ALL/1/General/TuningWA" "1"
-- 
1.7.6.4


