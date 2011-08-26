Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25232E01239
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 20:59:35 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Aug 2011 20:59:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,283,1312182000"; d="scan'208";a="44811869"
Received: from unknown (HELO localhost) ([10.255.13.254])
	by fmsmga002.fm.intel.com with ESMTP; 25 Aug 2011 20:59:34 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 25 Aug 2011 22:59:02 -0500
Message-Id: <51baa983b3505dcd0084611d6181a125e91ee063.1314330614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
References: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1314330614.git.tom.zanussi@intel.com>
References: <cover.1314330614.git.tom.zanussi@intel.com>
Subject: [PATCH 04/10] meta-crownbay: xorg.conf changes
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
X-List-Received-Date: Fri, 26 Aug 2011 03:59:35 -0000

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


