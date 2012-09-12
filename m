Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4672DE012F0
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 15:09:52 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Sep 2012 15:09:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,413,1344236400"; d="scan'208";a="192037600"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by azsmga001.ch.intel.com with ESMTP; 12 Sep 2012 15:09:51 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Wed, 12 Sep 2012 14:59:30 -0700
Message-Id: <dfb94b5b89b8b660106731c0a9fba6c8300ac7ff.1347486881.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <ff20af9a58834522a9791349a346833f5d574e6a.1347486881.git.rahul.saxena@intel.com>
References: <ff20af9a58834522a9791349a346833f5d574e6a.1347486881.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1347486881.git.rahul.saxena@intel.com>
References: <cover.1347486881.git.rahul.saxena@intel.com>
Subject: [PATCH 2/2] meta-cedartrail: Update PVR graphics driver to version 1.0.3
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
X-List-Received-Date: Wed, 12 Sep 2012 22:09:52 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

This driver update fixes a memory leak bug

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 meta-cedartrail/README                             |    2 +-
 ...pvr-driver_1.0.2.bb => cdv-pvr-driver_1.0.3.bb} |   34 ++++++++++++-------
 2 files changed, 22 insertions(+), 14 deletions(-)
 rename meta-cedartrail/recipes-graphics/xorg-driver/{cdv-pvr-driver_1.0.2.bb => cdv-pvr-driver_1.0.3.bb} (84%)

diff --git a/meta-cedartrail/README b/meta-cedartrail/README
index 715cad9..e47151e 100755
--- a/meta-cedartrail/README
+++ b/meta-cedartrail/README
@@ -61,7 +61,7 @@ Power VR Graphics user-space driver binaries are covered by a
 "Intel Free Distribution Binary License". The build of this driver
 can be enabled by adding the following line to the local.conf file:
 
-LICENSE_FLAGS_WHITELIST += "license_cdv-pvr-driver_1.0.2"
+LICENSE_FLAGS_WHITELIST += "license_cdv-pvr-driver_1.0.3"
 
 To enable the layer that does not support Power VR graphics
 add the following to the local.conf file:
diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
similarity index 84%
rename from meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
rename to meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
index 59998a6..a87ee4f 100644
--- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
@@ -1,4 +1,4 @@
-SUMMARY = "Cedartrail PowerVR Graphics Driver version 1.0.2 binaries"
+SUMMARY = "Cedartrail PowerVR Graphics Driver version 1.0.3 binaries"
 DESCRIPTION = "2D, 3D and Media user space driver for Cedartrail platform \
 The binaries are covered by the Intel Free Distribution Binary License. \
 The user must make himself/herself aware of the Licensing terms \
@@ -10,23 +10,24 @@ LICENSE_FLAGS = "license_${PN}_${PV}"
 LICENSE = "Intel Free Distribution Binary License"
 LIC_FILES_CHKSUM = " \
     file://${S}/usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65  \
-    file://${S}/usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
+    file://${S}/usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
 
 DEPENDS = "rpm-native libva"
 
 PR = "r1"
 
-PSB-VIDEO = "psb-video-cdv-0.17-2.1.i586.rpm"
-PSB-VIDEO-REV = "0.17"
+PSB-VIDEO = "psb-video-cdv-1.0.3-1.1.i586.rpm"
+PSB-VIDEO-REV = "1.0.3"
 
-PVR-BIN = "pvr-bin-cdv-1.7.862890_05-1.1.i586.rpm"
+PVR-BIN = "pvr-bin-cdv-1.0.3-1.1.i586.rpm"
 PVR-BIN-REV = "1.7.862890"
 PVR-BIN-REV_N = "1.7.862890_05"
+PVR-BIN-REV_LIC = "1.0.3"
 
 LIBWSBM = "libwsbm-cdv-1.1.0-3.1.i586.rpm"
 
 
-NON-OSS-PATH = "http://repo.meego.com/MeeGo/builds/1.2.0/1.2.0.10.1.20120723.1/repos/non-oss/ia32/packages/"
+NON-OSS-PATH = "http://repo.meego.com/MeeGo/updates/1.2.0/repos/non-oss/ia32/packages/"
 OSS-PATH =     "http://repo.meego.com/MeeGo/updates/1.2.0/repos/oss/ia32/packages/"
 
 
@@ -34,11 +35,11 @@ SRC_URI = "${NON-OSS-PATH}${PSB-VIDEO};name=psbrpm \
 	   ${NON-OSS-PATH}${PVR-BIN};name=pvrrpm \
 	   ${OSS-PATH}${LIBWSBM};name=wsbmrpm \
 		"
-SRC_URI[pvrrpm.md5sum] = "92dbb85a259dff73c6e4de68d158ef10"
-SRC_URI[pvrrpm.sha256sum] = "46356021efa990cde367b2cdec8626db8c1457234771c6459a106b8342c549c1"
+SRC_URI[pvrrpm.md5sum] = "3ae7db98825af642445f75f4b5ddb303"
+SRC_URI[pvrrpm.sha256sum] = "42b97e5d663444f35b1ee51cdf9573e3b1d5a4f49ae854218c5c4c9a66ba95cf"
 
-SRC_URI[psbrpm.md5sum] =  "0300f7485306bb039ee33e6238a00ae3"
-SRC_URI[psbrpm.sha256sum] = "8e71f2ff7464b20823d7f552729d39cb9e3d75badc9b206d43bcc2429849f6c0"
+SRC_URI[psbrpm.md5sum] =  "ec486193dc4b3f91bc7c5e18d9ca9d8a"
+SRC_URI[psbrpm.sha256sum] = "0861d69b44d5ce29a3f778ac82976a22f7726af84d9b2e5438c18da5263ffdac"
 
 SRC_URI[wsbmrpm.md5sum] = "b8b21ca8325abd7850d197f9bf3071c7"
 SRC_URI[wsbmrpm.sha256sum] = "f436386967c1adec5211e662251bd542bbe0b8cd55e1d9f9c203da5ee934d4f0"
@@ -52,6 +53,7 @@ INSANE_SKIP_${PN} = "ldflags"
 # so that they go to ${PN} instead of $PN}-dev
 PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN} ${PN}-dev ${PN}-doc ${PN}-locale"
 
+
 FILES_${PN} += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/pvr/cdv ${libdir}/xorg/modules/drivers"
 
 FILES_${PN} += "${base_libdir}/firmware"
@@ -62,18 +64,23 @@ FILES_${PN} += "${libdir}/lib*.so"
 FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers"
 
 FILES_${PN} += "${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt"
-FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt"
+FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt"
+
 
+TARGET_CC_ARCH += "${CFLAGS}{LDFLAGS}"
+INSANE_SKIP_${PN} += "ldflags"
+INSANE_SKIP_${PN}-dbg += "ldflags"
 
 do_configure () {
 
 # Extract  license files from rpms
 rpm2cpio.sh ${WORKDIR}/${PSB-VIDEO} |cpio -ivd ./usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt
-rpm2cpio.sh ${WORKDIR}/${PVR-BIN} |cpio -ivd ./usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt
+rpm2cpio.sh ${WORKDIR}/${PVR-BIN} |cpio -ivd ./usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt
 
 }
 
 do_install() {
+
 	mv ${WORKDIR}/*.rpm  ${S}
 
 	rpm2cpio.sh ${S}/${LIBWSBM} | cpio -id
@@ -102,6 +109,7 @@ do_install() {
 	install -m 0755 ${S}/usr/lib/dri/pvr_dri.so    	      ${D}${libdir}/dri/
 	install -m 0755 ${S}/usr/lib/*.so.*                   ${D}${libdir}/
 
+
 	install -m 0755 ${S}/usr/lib/libegl4ogl.so.${PVR-BIN-REV}   	${D}${libdir}/libegl4ogl.so
 	install -m 0755 ${S}/usr/lib/libEGL.so.${PVR-BIN-REV}  		${D}${libdir}/libEGL.so
 	install -m 0755 ${S}/usr/lib/libGLES_CM.so.${PVR-BIN-REV} 	${D}${libdir}/libGLES_CM.so
@@ -135,6 +143,6 @@ do_install() {
 	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}
 
 	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt ${D}${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt
-	install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt	${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt
+# install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt	${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt
 
 }
-- 
1.7.4.1


