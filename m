Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D730E01346
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 17:55:07 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Sep 2012 17:54:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,505,1344236400"; d="scan'208";a="215820051"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga002.jf.intel.com with ESMTP; 28 Sep 2012 17:55:06 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 28 Sep 2012 17:55:04 -0700
Message-Id: <669cf9164ac539711bc06006be798855f7a44c43.1348880058.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH V2][meta-intel] fri2: Update xorg.conf per EMGD 1.14 user guide
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
X-List-Received-Date: Sat, 29 Sep 2012 00:55:07 -0000

Correct the port order to only list SDVOB and LVDS.

Update the Edid flags as appropriate. No EDID over LVDS. Enable built-in
and edid timings as well as DTDs for the SDVOB port.

Force 24-bit mode for LVDS port to work around an apparent bug with EMGD
in which the default 18-bit mode results in a dim display using the
secondary (LVDS) HDMI port (lower port).

Add backlight intensity and inverter frequency specifications for the
LVDS port per the note in the EMGD 1.14 User Guide (p 184) for E6xx
CPUs.

V2: Update PRINC
    Applies to both master and denzil

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../xserver-xf86-config/fri2/xorg.conf             |   29 +++++++++++++++----
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    2 +-
 2 files changed, 24 insertions(+), 7 deletions(-)

diff --git a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
index 73736ac..8c31565 100644
--- a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
+++ b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
@@ -23,15 +23,32 @@ Section "Device"
     Option     "PcfVersion"            "1792"
     Option     "ConfigId"              "1"
     Option     "ALL/1/name"                   "e6xx"
-    Option     "ALL/1/General/PortOrder"      "32400"
+    Option     "ALL/1/General/PortOrder"      "24000"
     Option     "ALL/1/General/DisplayConfig"  "1"
     Option     "ALL/1/General/DisplayDetect"  "1"
-    Option     "ALL/1/General/TuningWA" "1"
-    Option     "ALL/1/Port/4/General/name"           "lvds"
-    Option     "ALL/1/Port/4/General/EdidAvail"      "3"
-    Option     "ALL/1/Port/4/General/EdidNotAvail"   "1"
-    Option     "ALL/1/Port/4/General/Rotation"       "0"
+    Option     "ALL/1/General/TuningWA"       "1"
+
+    # Primary display (upper HDMI port, driven by sDVOB)
+    Option     "ALL/1/Port/2/General/name"           "Primary"
+    Option     "ALL/1/Port/2/General/Edid"           "1"
+    Option     "ALL/1/Port/2/General/EdidAvail"      "7"
+    Option     "ALL/1/Port/2/General/EdidNotAvail"   "5"
+    Option     "ALL/1/Port/2/General/Rotation"       "0"
+    Option     "ALL/1/Port/2/Attr/71"                "20300"
+
+    # Secondary display (lower HDMI port, driven by LVDS, 1366x768)
+    Option     "ALL/1/Port/4/General/name"           "Secondary"
     Option     "ALL/1/Port/4/General/Edid"           "0"
+    Option     "ALL/1/Port/4/General/Rotation"       "0"
+
+    # Panel depth (the default 18 results in a dim display)
+    # Force dither off for 24-bit panels
+    Option     "ALL/1/Port/4/Attr/26"                "24"
+    Option     "ALL/1/Port/4/Attr/45"                "0"
+
+    # Backlight intensity and inverter frequency for E6xx CPUs
+    Option     "ALL/1/Port/4/Attr/70"                "100"
+    Option     "ALL/1/Port/4/Attr/71"                "20300"
 EndSection
 
 Section "ServerLayout"
diff --git a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..a6d7d8e 100644
--- a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1,3 @@
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+PRINC := "${@int(PRINC) + 1}"
-- 
1.7.5.4


