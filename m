Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91E3AE013ED
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:57:01 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Apr 2012 11:57:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87478329"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Apr 2012 11:57:01 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Tue, 10 Apr 2012 11:55:33 -0700
Message-Id: <e50f8c1ab527701e50bba5211c23286cd3f639d6.1334083666.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
References: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1334083666.git.kishore.k.bodke@intel.com>
References: <cover.1334083666.git.kishore.k.bodke@intel.com>
Subject: [PATCH 3/9] [meta-intel] Cedartrail: split xorg.conf files.
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
X-List-Received-Date: Tue, 10 Apr 2012 18:57:01 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Have two xorg.conf files.
One for pvr-graphics driver.
One for vesa graphics driver.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../xserver-xf86-config/cedartrail-nopvr/xorg.conf |   26 ++++++++++++++++++++
 .../xserver-xf86-config/cedartrail/xorg.conf       |   25 +++++++------------
 2 files changed, 35 insertions(+), 16 deletions(-)
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf

diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
new file mode 100644
index 0000000..da4fc3c
--- /dev/null
+++ b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
@@ -0,0 +1,26 @@
+Section "Device"
+    Identifier	"Generic VESA"
+    Driver	"vesa"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device	  "Generic VESA"
+    Monitor       "Generic Monitor"
+    DefaultDepth  24
+EndSection
+
+Section "ServerLayout"
+    Identifier     "Default Layout"
+    Screen         "Default Screen"
+EndSection
+
+Section "ServerFlags"
+    Option        "DontZap"  "0"
+    Option        "AutoAddDevices"  "False"
+EndSection
diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
index da4fc3c..d7c6a59 100644
--- a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
+++ b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
@@ -1,26 +1,19 @@
 Section "Device"
-    Identifier	"Generic VESA"
-    Driver	"vesa"
-EndSection
-
-Section "Monitor"
-    Identifier    "Generic Monitor"
-    Option        "DPMS"
-EndSection
-
-Section "Screen"
-    Identifier    "Default Screen"
-    Device	  "Generic VESA"
-    Monitor       "Generic Monitor"
-    DefaultDepth  24
+        Option     "DRIDisableVSync"    "False"
+        Identifier  "Card0"
+        Driver      "pvr"
+        BusID       "PCI:0:2:0"
+        Option      "SoftEXA"           "Off"
+        Option      "FlipChain"         "On"
 EndSection
 
 Section "ServerLayout"
-    Identifier     "Default Layout"
-    Screen         "Default Screen"
+        Identifier "default screen"
+        Option  "AIGLX" "on"
 EndSection
 
 Section "ServerFlags"
     Option        "DontZap"  "0"
     Option        "AutoAddDevices"  "False"
 EndSection
+
-- 
1.7.5.4


