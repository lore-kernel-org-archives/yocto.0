Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE007E013DB
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 17:41:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Mar 2012 17:41:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="120707180"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by orsmga001.jf.intel.com with ESMTP; 22 Mar 2012 17:41:29 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 22 Mar 2012 10:32:18 -0700
Message-Id: <d3913f7a27354f30569bbb99cc77b99314c6ef20.1332459306.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332459306.git.rahul.saxena@intel.com>
References: <cover.1332459306.git.rahul.saxena@intel.com>
Subject: [PATCH 05/13] meta-cedartrail: seperate xorg.conf files for pvr and no-pvr cases
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
X-List-Received-Date: Fri, 23 Mar 2012 00:41:30 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Seperate xserver configuration files, one file each for  the case of with pvr graphics
driver and for "no pvr" (i.e. with VESA driver)

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 .../xserver-xf86-config/cedartrail-nopvr/xorg.conf |   26 ++++++++++++++++++++
 .../xserver-xf86-config/cedartrail/xorg.conf       |   24 ++++++------------
 2 files changed, 34 insertions(+), 16 deletions(-)
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
 mode change 100755 => 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf

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
old mode 100755
new mode 100644
index da4fc3c..1d085a4
--- a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
+++ b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
@@ -1,23 +1,15 @@
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
-- 
1.7.4.1


