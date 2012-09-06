Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D416E01519
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 18:06:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Sep 2012 18:06:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,382,1344236400"; d="scan'208";a="198326869"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga002.jf.intel.com with ESMTP; 06 Sep 2012 18:06:10 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 17:59:09 -0700
Message-Id: <30372536d05d69007337ef870f3c960b5647b63d.1346893078.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1346893078.git.nitin.a.kamble@intel.com>
References: <cover.1346893078.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] emgd-driver-bin: Fix package naming issue
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
X-List-Received-Date: Fri, 07 Sep 2012 01:06:11 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

emgd-driver-bin is generating rpm package with name libegl1.
This name clashes with a package of mesa-dri recipe. This name
clash blocks installation of emgd user land binaries in the
image. And due to missing emgd user land components X fails start
on BSPs like crownbay.

Fix this problem by specifying package names in the recipe with the
PKG_ vars.

This fixes bug: [YOCTO #3063]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.14.bb           |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
index b1ba1b8..1e01972 100644
--- a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
+++ b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
@@ -7,7 +7,7 @@ to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.14\" to your \
 local.conf in order to enable it in a build."
 LICENSE = "Intel-binary-only"
 LICENSE_FLAGS = "license_${PN}_${PV}"
-PR = "r1"
+PR = "r2"
 
 EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
 EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
@@ -23,6 +23,12 @@ SRC_URI = "https://edc.intel.com/Download.aspx?id=6190;downloadfilename=LIN_IEMG
 SRC_URI[md5sum] = "733a7f237ffce21238ce2c9956df4fd6"
 SRC_URI[sha256sum] = "bcdc333b5edbda7c746a83ef821ded4a0ca55ead30980e4e3680cdb6469f45a2"
 
+# make sure geenrated rpm packages get non conflicting names
+PKG_${PN} = "emgd_driver"
+PKG_${PN}-dev = "emgd_driver-dev"
+PKG_${PN}-dbg = "emgd_driver-dbg"
+PKG_${PN}-doc = "emgd_driver-doc"
+
 # These are closed binaries generated elsewhere so don't check ldflags
 INSANE_SKIP_${PN} = "ldflags"
 
-- 
1.7.3.4


