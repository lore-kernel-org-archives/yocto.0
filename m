Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01BDBE0137A
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:50:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 May 2012 14:50:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="171420126"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga002.fm.intel.com with ESMTP; 25 May 2012 14:50:18 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:29 -0500
Message-Id: <4acf55f417f0b2ebb600062aa954ce5b14b79732.1337981719.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 04/22] meta-intel: new intel-driver-1.0.15 recipe
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
X-List-Received-Date: Fri, 25 May 2012 21:50:19 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

libva was split in 1.0.15 into general and Intel-specific parts.  This
recipe addresses the intel-specific part.  The general part is
addressed in the separate libva_1.0.15.bb recipe.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../libva/libva-intel-driver.inc                   |   24 ++++++++++++++++++++
 .../libva/libva-intel-driver_1.0.15.bb             |    8 ++++++
 2 files changed, 32 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-multimedia/libva/libva-intel-driver.inc
 create mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb

diff --git a/common/recipes-multimedia/libva/libva-intel-driver.inc b/common/recipes-multimedia/libva/libva-intel-driver.inc
new file mode 100644
index 0000000..f0c6b9a
--- /dev/null
+++ b/common/recipes-multimedia/libva/libva-intel-driver.inc
@@ -0,0 +1,24 @@
+SUMMARY = "VA driver for Intel G45 & HD Graphics family"
+DESCRIPTION = "libva-driver-intel is the VA-API implementation \
+for Intel G45 chipsets and Intel HD Graphics for Intel Core \
+processor family."
+
+HOMEPAGE = "http://www.freedesktop.org/wiki/Software/vaapi"
+BUGTRACKER = "https://bugs.freedesktop.org"
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=2e48940f94acb0af582e5ef03537800f"
+
+COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
+
+INC_PR = "r0"
+
+DEPENDS = "libva"
+
+S = "${WORKDIR}/intel-driver-${PV}"
+
+inherit autotools pkgconfig
+
+FILES_${PN} += "${libdir}/dri/*.so"
+FILES_${PN}-dev += "${libdir}/dri/*.la"
+FILES_${PN}-dbg += "${libdir}/dri/.debug"
diff --git a/common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb b/common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
new file mode 100644
index 0000000..6fdd6a9
--- /dev/null
+++ b/common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
@@ -0,0 +1,8 @@
+require libva-intel-driver.inc
+
+PR = "${INC_PR}.0"
+
+SRC_URI = "http://cgit.freedesktop.org/vaapi/intel-driver/snapshot/intel-driver-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "9dbd642f18993335146480a3a2987874"
+SRC_URI[sha256sum] = "52f16f78129af00ec40afc6a1b8fb07c7b6c6c0da7f43a54e19afd2a41791098"
-- 
1.7.0.4


