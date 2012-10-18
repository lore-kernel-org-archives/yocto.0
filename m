Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F5CCE013EB
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 17:40:48 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Oct 2012 17:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,603,1344236400"; d="scan'208";a="235306434"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2012 17:40:27 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	nitin.a.kamble@intel.com,
	tom.zanussi@intel.com
Date: Wed, 17 Oct 2012 17:28:05 -0700
Message-Id: <7ee8868e97d023a960bc6b1fd0469079ce0a955b.1350519099.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <eb8e569d055ddfd14425ec7472be8f9eb7b075fc.1350519099.git.rahul.saxena@intel.com>
References: <eb8e569d055ddfd14425ec7472be8f9eb7b075fc.1350519099.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1350519099.git.rahul.saxena@intel.com>
References: <cover.1350519099.git.rahul.saxena@intel.com>
Subject: [PATCH 3/3] meta-cedartrail: Add development packages to pvr driver recipe
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
X-List-Received-Date: Thu, 18 Oct 2012 00:40:48 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Add header files from development packages

Signed-off-by: Rahul Saxena <Rahul.Saxena@intel.com>
---
 .../xorg-driver/cdv-pvr-driver_1.0.3.bb            |   33 +++++++++++++++++++-
 1 files changed, 32 insertions(+), 1 deletions(-)

diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
index 2f44649..e9d4ede 100644
--- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
@@ -14,7 +14,7 @@ LIC_FILES_CHKSUM = " \
 
 DEPENDS = "rpm-native libva"
 
-PR = "r3"
+PR = "r4"
 
 PSB-VIDEO = "psb-video-cdv-1.0.3-1.1.i586.rpm"
 PSB-VIDEO-REV = "1.0.3"
@@ -23,8 +23,10 @@ PVR-BIN = "pvr-bin-cdv-1.0.3-1.1.i586.rpm"
 PVR-BIN-REV = "1.7.862890"
 PVR-BIN-REV_N = "1.7.862890_05"
 PVR-BIN-REV_LIC = "1.0.3"
+PVR-BIN-DEV = "pvr-bin-cdv-devel-1.0.3-1.1.i586.rpm"
 
 LIBWSBM = "libwsbm-cdv-1.1.0-3.1.i586.rpm"
+LIBWSBM-DEV = "libwsbm-cdv-devel-1.1.0-3.1.i586.rpm"
 
 
 NON-OSS-PATH = "http://repo.meego.com/MeeGo/updates/1.2.0/repos/non-oss/ia32/packages/"
@@ -33,17 +35,26 @@ OSS-PATH =     "http://repo.meego.com/MeeGo/updates/1.2.0/repos/oss/ia32/package
 
 SRC_URI = "${NON-OSS-PATH}${PSB-VIDEO};name=psbrpm;unpack=0 \
 	   ${NON-OSS-PATH}${PVR-BIN};name=pvrrpm;unpack=0 \
+	   ${NON-OSS-PATH}${PVR-BIN-DEV};name=pvrrpmdev;unpack=0 \
 	   ${OSS-PATH}${LIBWSBM};name=wsbmrpm;unpack=0 \
+	   ${OSS-PATH}${LIBWSBM-DEV};name=wsbmrpmdev;unpack=0 \
 		"
 SRC_URI[pvrrpm.md5sum] = "3ae7db98825af642445f75f4b5ddb303"
 SRC_URI[pvrrpm.sha256sum] = "42b97e5d663444f35b1ee51cdf9573e3b1d5a4f49ae854218c5c4c9a66ba95cf"
 
+SRC_URI[pvrrpmdev.md5sum] = "e8f0815b5bbf94311a7cf229451f651f"
+SRC_URI[pvrrpmdev.sha256sum] = "facb67f6b8413504e7ba570a4e3e3ee20cb90d7bd02b303653f9ce5cc4fd7b20"
+
 SRC_URI[psbrpm.md5sum] =  "ec486193dc4b3f91bc7c5e18d9ca9d8a"
 SRC_URI[psbrpm.sha256sum] = "0861d69b44d5ce29a3f778ac82976a22f7726af84d9b2e5438c18da5263ffdac"
 
 SRC_URI[wsbmrpm.md5sum] = "b8b21ca8325abd7850d197f9bf3071c7"
 SRC_URI[wsbmrpm.sha256sum] = "f436386967c1adec5211e662251bd542bbe0b8cd55e1d9f9c203da5ee934d4f0"
 
+SRC_URI[wsbmrpmdev.md5sum] = "895d0cafd878fcbe4e2f845b8e09eea3"
+SRC_URI[wsbmrpmdev.sha256sum] = "605ba605a2617ee67863d5becac114ce7f4ea440854543f75465e16f463bad70"
+
+
 # make sure generated rpm packages get non conflicting names
 PKG_${PN} = "cdv-pvr-driver"
 PKG_${PN}-dev = "cdv-pvr-driver-dev"
@@ -149,6 +160,26 @@ do_install() {
 	install -d -m 0755 ${D}${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}
 	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}
 
+        rpm2cpio.sh  ${S}/${PVR-BIN-DEV}  | cpio -id
+	install -d -m 0644 ${D}${includedir}
+	install -d -m 0644 ${D}${includedir}/GLES
+	install -d -m 0644 ${D}${includedir}/VG
+	install -d -m 0644 ${D}${includedir}/GLES2
+	install -d -m 0644 ${D}${includedir}/KHR
+	install -d -m 0644 ${D}${includedir}/EGL
+
+        install -m 0644 ${S}/${includedir}/GLES/*.h				${D}${includedir}/GLES
+        install -m 0644 ${S}/${includedir}/VG/*.h				${D}${includedir}/VG
+        install -m 0644 ${S}/${includedir}/GLES2/*.h				${D}${includedir}/GLES2
+        install -m 0644 ${S}/${includedir}/KHR/*.h				${D}${includedir}/KHR
+        install -m 0644 ${S}/${includedir}/EGL/*.h				${D}${includedir}/EGL
+
+	rpm2cpio.sh ${S}/${LIBWSBM-DEV} | cpio -id
+	install -d -m 0644 ${D}${includedir}/wsbm
+
+        install -m 0644 ${S}/${includedir}/wsbm/*.h				${D}${includedir}/wsbm
+        install -m 0644 ${S}/${libdir}/libwsbm.so				${D}${libdir}/libwsbm.so
+
 	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt ${D}${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt
 
 }
-- 
1.7.4.1


