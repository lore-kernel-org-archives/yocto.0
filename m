Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D99E0121B
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 08:26:42 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Aug 2011 08:26:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,256,1312182000"; d="scan'208";a="40569338"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2011 08:26:41 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	saul.wold@intel.com,
	yocto@yoctoproject.org
Date: Sat, 20 Aug 2011 10:26:54 -0500
Message-Id: <c8f09991b339a9854b328b62751bc1d328ac29de.1313853536.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
References: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313853536.git.tom.zanussi@intel.com>
References: <cover.1313853536.git.tom.zanussi@intel.com>
Subject: [PATCH 4/9] meta-crownbay: xorg.conf changes
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
X-List-Received-Date: Sat, 20 Aug 2011 15:26:42 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update to the ced-generated xorg.conf for 1.8.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xserver-xf86-config/crownbay/xorg.conf         |    3 ++-
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 +
 2 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
index f78a538..fce58f8 100644
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
@@ -26,11 +26,12 @@ Section "Device"
     Option     "ALL/1/General/PortOrder"      "40000"
     Option     "ALL/1/General/DisplayConfig"  "1"
     Option     "ALL/1/General/DisplayDetect"  "1"
+    Option     "ALL/1/General/TuningWA" "1"
     Option     "ALL/1/Port/4/General/name"           "lvds"
     Option     "ALL/1/Port/4/General/EdidAvail"      "3"
     Option     "ALL/1/Port/4/General/EdidNotAvail"   "1"
     Option     "ALL/1/Port/4/General/Rotation"       "0"
-    Option     "ALL/1/Port/4/General/Edid"           "1"
+    Option     "ALL/1/Port/4/General/Edid"           "0"
 EndSection
 
 Section "ServerLayout"
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..1461431 100644
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1,4 @@
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
 
+PR := "${PR}.1"
-- 
1.7.0.4


