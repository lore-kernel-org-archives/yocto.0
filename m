Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 880C9E0144D
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 15:32:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Sep 2012 15:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,407,1344236400"; d="scan'208";a="220923134"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by fmsmga001.fm.intel.com with ESMTP; 11 Sep 2012 15:32:37 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org
Date: Tue, 11 Sep 2012 15:22:14 -0700
Message-Id: <28ae4508f4c15eb290b4f541f06b1492b59ccb09.1347401448.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1347401448.git.rahul.saxena@intel.com>
References: <cover.1347401448.git.rahul.saxena@intel.com>
Subject: [PATCH 1/1] meta-cedartrail: Update PVR graphics driver to version 1.0.3
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
X-List-Received-Date: Tue, 11 Sep 2012 22:32:39 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

This driver update fixes a memory leak bug

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 meta-cedartrail/README                             |    2 +-
 ...pvr-driver_1.0.2.bb => cdv-pvr-driver_1.0.3.bb} |   27 ++++++++++---------
 2 files changed, 15 insertions(+), 14 deletions(-)
 rename meta-cedartrail/recipes-graphics/xorg-driver/{cdv-pvr-driver_1.0.2.bb => cdv-pvr-driver_1.0.3.bb} (85%)

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
similarity index 85%
rename from meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
rename to meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
index f91b235..19b6c74 100644
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
 
 PR = "r0"
 
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
@@ -55,7 +56,7 @@ FILES_${PN} += "${libdir}/lib*.so"
 FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers"
 
 FILES_${PN} += "${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt"
-FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt"
+FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt"
 
 
 TARGET_CC_ARCH += "${CFLAGS}{LDFLAGS}"
@@ -66,7 +67,7 @@ do_configure () {
 
 # Extract  license files from rpms
 rpm2cpio.sh ${WORKDIR}/${PSB-VIDEO} |cpio -ivd ./usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt
-rpm2cpio.sh ${WORKDIR}/${PVR-BIN} |cpio -ivd ./usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt
+rpm2cpio.sh ${WORKDIR}/${PVR-BIN} |cpio -ivd ./usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt
 
 }
 
@@ -134,6 +135,6 @@ do_install() {
 	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}
 
 	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt ${D}${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt
-	install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt	${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt
+# install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt	${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt
 
 }
-- 
1.7.4.1


