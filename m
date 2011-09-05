Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2483E01242
	for <yocto@yoctoproject.org>; Sun,  4 Sep 2011 21:11:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Sep 2011 21:11:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="45253929"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by orsmga001.jf.intel.com with ESMTP; 04 Sep 2011 21:11:28 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sun, 04 Sep 2011 23:11:05 -0500
Message-ID: <1315195865.31478.155.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH] crownbay: change preferred display order
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
X-List-Received-Date: Mon, 05 Sep 2011 04:11:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

The current PortOrder value assumes LVDS.  Change the value to first
try SDVO output, and fallback to LVDS if not present.

Fixes [YOCTO #1430]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xserver-xf86-config/crownbay/xorg.conf         |    2 +-
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
index fce58f8..662f60f 100644
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
@@ -23,7 +23,7 @@ Section "Device"
     Option     "PcfVersion"            "1792"
     Option     "ConfigId"              "1"
     Option     "ALL/1/name"                   "e6xx"
-    Option     "ALL/1/General/PortOrder"      "40000"
+    Option     "ALL/1/General/PortOrder"      "24000"
     Option     "ALL/1/General/DisplayConfig"  "1"
     Option     "ALL/1/General/DisplayDetect"  "1"
     Option     "ALL/1/General/TuningWA" "1"
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 1461431..3fe0e9f 100644
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,4 +1,4 @@
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
 
-PR := "${PR}.1"
+PR := "${PR}.2"
-- 
1.7.0.4




