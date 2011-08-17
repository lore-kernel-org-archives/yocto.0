Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F976E01227
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 09:51:06 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 17 Aug 2011 09:51:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,240,1312182000"; 
   d="scan'208";a="8190921"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Aug 2011 09:51:16 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Aug 2011 11:51:06 -0500
Message-Id: <1f9bceabfe32e9db2ea5eba8b4bf73e4ade72ebf.1313598804.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
References: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313598804.git.tom.zanussi@intel.com>
References: <cover.1313598804.git.tom.zanussi@intel.com>
Subject: [PATCH 05/12] meta-crownbay: xorg.conf changes
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
X-List-Received-Date: Wed, 17 Aug 2011 16:51:06 -0000

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


