Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C89FE0144D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 07:02:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jul 2012 07:02:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="190281180"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2012 07:01:56 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com, bruce.ashfield@windriver.com
Date: Sun, 29 Jul 2012 07:00:01 -0700
Message-Id: <213553c095020f73275cc4056f79eeddc9caef9d.1343570184.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cb97bb55ba60e1fa47e8a7f5c6393f97b9ad283f.1343570184.git.nitin.a.kamble@intel.com>
References: <cb97bb55ba60e1fa47e8a7f5c6393f97b9ad283f.1343570184.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1343570184.git.nitin.a.kamble@intel.com>
References: <cover.1343570184.git.nitin.a.kamble@intel.com>
Subject: [PATCH 2/4] crownbay: customize the xorg.conf for the flat panel on the kit
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
X-List-Received-Date: Mon, 30 Jul 2012 14:02:19 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The kit has Auo 800x600 LCD screen. Configuring Xorg for it.

This change also sets the resolution on the external monitor as
800x600

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../xserver-xf86-config/crownbay/xorg.conf         |   14 ++++++++++++++
 1 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
index 662f60f..d71173c 100644
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
@@ -4,12 +4,26 @@
 ## DriverVer=
 ##
 
+# AUO G084SN05 V8 lcd flat panel
+Section "Monitor"
+    Identifier     "Monitor0"
+    VendorName     "Auo"
+#    HorizSync       33.6 - 48.3
+#    VertRefresh     60.0 - 60.0
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


