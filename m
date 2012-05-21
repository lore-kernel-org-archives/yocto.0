Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A522E0044A
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 10:57:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 May 2012 10:57:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="142936393"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by orsmga001.jf.intel.com with ESMTP; 21 May 2012 10:57:10 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon, 21 May 2012 10:55:54 -0700
Message-Id: <7cf57737080726b35716a54c9f602a82a15987ef.1337621438.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1337621438.git.kishore.k.bodke@intel.com>
References: <cover.1337621438.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] meta-cedartrail: Update PVR Graphics drivers.
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
X-List-Received-Date: Mon, 21 May 2012 17:57:10 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Point to the latest version of PVR Graphics
driver.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../xorg-driver/cdv-pvr-driver.inc                 |   14 +++---
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |   46 ++++++++++----------
 2 files changed, 28 insertions(+), 32 deletions(-)

diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
index 0de6cbe..787c1fb 100644
--- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
@@ -6,16 +6,14 @@ before enabling build of the Cedartrail PowerVR Graphics Driver via \
 this recipe.  Please see the README in meta-cedartrail for instructions \
 for enabling the build of the driver "
  
-MEEGO_MIRROR = "http://download.meego.com/live/MeeGo:/1.2.0:/CedarTrail:"
-
 LICENSE_FLAGS = "license_${PN}_${PV}"
 LICENSE = "Intel Free Distribution Binary License"
-LIC_FILES_CHKSUM = " \
-    file://${S}/usr/share/doc/psb-video-cdv-0.12/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65  \
-    file://${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
 
+LIC_FILES_CHKSUM = " \
+    file://${S}/usr/share/doc/psb-video-cdv-0.16/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65  \
+    file://${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_10/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
 
-INC_PR = "r0"
+INC_PR = "r1"
 
 DEPENDS = "rpm-native"
 
@@ -32,8 +30,8 @@ FILES_${PN}-dbg += "${libdir}/.debug"
 
 FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers"
 
-FILES_${PN} += "${datadir}/doc/psb-video-cdv-0.12/license.txt"
-FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-1.7.788837_05/license.txt"
+FILES_${PN} += "${datadir}/doc/psb-video-cdv-0.16/license.txt"
+FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-1.7.788837_10/license.txt"
 
 
                         
diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
index 496da1e..3fb0a4d 100644
--- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
@@ -1,22 +1,21 @@
 require cdv-pvr-driver.inc
 
-PR = "${INC_PR}.0"
+PR = "${INC_PR}.1"
 
 DEPENDS = "libva"
 
-SRC_URI = "${MEEGO_MIRROR}/non-oss/MeeGo_1.2.0_CedarTrail/i586/psb-video-cdv-0.12-1.1.i586.rpm;name=psbrpm \ 
-	   ${MEEGO_MIRROR}/oss/standard/i586/libwsbm-cdv-1.1.0-3.1.i586.rpm;name=wsbmrpm \
-	   ${MEEGO_MIRROR}/non-oss/MeeGo_1.2.0_CedarTrail/i586/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm;name=pvrrpm \
-           "
-
-SRC_URI[pvrrpm.md5sum] = "951fa9edcbc2a3ddb30450079869362e"
-SRC_URI[pvrrpm.sha256sum] = "537dd8a98ac2e3a101063abc62682c3be8c37ac29782a876eafce113ffa5b421"
-
-SRC_URI[psbrpm.md5sum] =  "d4b6b383722264f3b781aeb240c88037"
-SRC_URI[psbrpm.sha256sum] = "e88f95fc73a79adf76ee33d3d9874cec23bb1afe8149d7dc5842d67e58da72f5"
-
-SRC_URI[wsbmrpm.md5sum] = "8d90436b151ddf72f620771f2552b597"
-SRC_URI[wsbmrpm.sha256sum] = "82f78f47c151f0e7d567574ee372504e5b395fb13796caa765f9c30754b5bf63"
+SRC_URI = "http://repo.meego.com/MeeGo/updates/1.2.0/repos/non-oss/ia32/packages/psb-video-cdv-0.16-1.1.i586.rpm;name=psbrpm \
+	   http://repo.meego.com/MeeGo/updates/1.2.0/repos/non-oss/ia32/packages/pvr-bin-cdv-1.7.788837_10-1.1.i586.rpm;name=pvrrpm \
+	   http://repo.meego.com/MeeGo/updates/1.2.0/repos/oss/ia32/packages/libwsbm-cdv-1.1.0-3.1.i586.rpm;name=wsbmrpm \
+		"
+SRC_URI[pvrrpm.md5sum] = "06dbacd7f0f5bb10132eb5477ae9267a" 
+SRC_URI[pvrrpm.sha256sum] = "1e42c57485e46a1712e26f48df44a2f5305a82ca98afc5bf4f90a93c9631f509"
+ 
+SRC_URI[psbrpm.md5sum] =  "fd213baa2af33d35e8b552e586b02b90"
+SRC_URI[psbrpm.sha256sum] = "cda281798ebbd280b6d2caf2a09961db0d719f929b808c6360c81db323aeee71"
+ 
+SRC_URI[wsbmrpm.md5sum] = "b8b21ca8325abd7850d197f9bf3071c7"
+SRC_URI[wsbmrpm.sha256sum] = "f436386967c1adec5211e662251bd542bbe0b8cd55e1d9f9c203da5ee934d4f0"
 
 
 S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
@@ -24,8 +23,8 @@ S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
 do_configure () {
 
 # Extract  license files from rpms
-rpm2cpio ${WORKDIR}/psb-video-cdv-0.12-1.1.i586.rpm |cpio -ivd ./usr/share/doc/psb-video-cdv-0.12/license.txt
-rpm2cpio ${WORKDIR}/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm |cpio -ivd ./usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt
+rpm2cpio ${WORKDIR}/psb-video-cdv-0.16-1.1.i586.rpm |cpio -ivd ./usr/share/doc/psb-video-cdv-0.16/license.txt
+rpm2cpio ${WORKDIR}/pvr-bin-cdv-1.7.788837_10-1.1.i586.rpm |cpio -ivd ./usr/share/doc/pvr-bin-cdv-1.7.788837_10/license.txt
 
 }
 
@@ -41,8 +40,7 @@ do_install() {
 
 	install -m 0755 ${S}/usr/lib/*                        ${D}${libdir}/
 
-	rpm2cpio ${S}/psb-video-cdv-0.12-1.1.i586.rpm | cpio -id
-
+	rpm2cpio ${S}/psb-video-cdv-0.16-1.1.i586.rpm | cpio -id
 
 	install -d -m 0755				      ${D}${base_libdir}/firmware
 
@@ -50,8 +48,8 @@ do_install() {
 
 	install -m 0755 ${S}/lib/firmware/*		      ${D}${base_libdir}/firmware
 
-	rpm2cpio ${S}/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm  | cpio -id
-	
+	rpm2cpio ${S}/pvr-bin-cdv-1.7.788837_10-1.1.i586.rpm  | cpio -id
+
 	install -d -m 0755                                    ${D}${libdir}/pvr/cdv/dri
 
 	install -m 0755 ${S}/usr/lib/pvr/cdv/dri/*            ${D}${libdir}/pvr/cdv/dri
@@ -92,10 +90,10 @@ do_install() {
    
 	install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   				${D}${libdir}/xorg/modules/drivers/
    
-	install -d -m 0755 ${D}${datadir}/doc/psb-video-cdv-0.12
-	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_05
+	install -d -m 0755 ${D}${datadir}/doc/psb-video-cdv-0.16
+	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_10
 
-    	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-0.12/license.txt 		${D}${datadir}/doc/psb-video-cdv-0.12/license.txt
-	install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt	${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_05/license.txt
+    	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-0.16/license.txt 		${D}${datadir}/doc/psb-video-cdv-0.16/license.txt
+	install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_10/license.txt	${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_10/license.txt
 
 }
-- 
1.7.9.5


