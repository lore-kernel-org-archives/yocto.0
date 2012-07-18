Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92D5CE002AC
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 07:49:48 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2012 07:49:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170406875"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2012 07:49:48 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Wed, 18 Jul 2012 07:49:16 -0700
Message-Id: <2675de6e815486b6609b3ec9c8492dbf806e2c49.1342622602.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1342622602.git.nitin.a.kamble@intel.com>
References: <cover.1342622602.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/7] crownbay: customize the xorg.conf for the flat panel on the corwnbay kit
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
X-List-Received-Date: Thu, 19 Jul 2012 14:49:48 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The kit has Auo 800x600 LCD screen. Configuring Xorg for it.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../xserver-xf86-config/crownbay/xorg.conf         |   14 ++++++++++++++
 1 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
index 662f60f..f81b466 100644
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
@@ -4,12 +4,26 @@
 ## DriverVer=
 ##
 
+# AUO G084SN05 V8 lcd flat panel
+Section "Monitor"
+    Identifier     "Monitor0"
+    VendorName     "Auo"
+    HorizSync       33.6 - 48.3
+    VertRefresh     60.0 - 60.0
+    Option         "DPMS"
+EndSection
+
 Section "Screen"
     Identifier    "Screen0"
     Device        "IntelEMGD-0"
     Monitor       "Monitor0"
+
+    # for the AUO flat screen
     SubSection    "Display"
+        Depth      24
+        Modes      "800x600"
     EndSubSection
+
 EndSection
 
 # Primary (First/only) display
-- 
1.7.3.4


