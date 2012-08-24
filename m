Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0A70E0027F
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 16:24:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Aug 2012 16:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,307,1344236400"; d="scan'208";a="184680635"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by azsmga001.ch.intel.com with ESMTP; 24 Aug 2012 16:24:51 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	dvhart@linux.intel.com
Date: Fri, 24 Aug 2012 16:10:58 -0700
Message-Id: <d72fdca8ef3badc2ab58edcf0d539e14a058b735.1345849179.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1345849179.git.rahul.saxena@intel.com>
References: <cover.1345849179.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1345849179.git.rahul.saxena@intel.com>
References: <cover.1345849179.git.rahul.saxena@intel.com>
Subject: [PATCH 2/2] meta-cedartrail: Update PVR graphics driver to version 1.0.2
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
X-List-Received-Date: Fri, 24 Aug 2012 23:24:52 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

This update of the driver enables support for B3 stepping of
Cedarview processor and also support for DP/eDP ports.

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 meta-cedartrail/README                             |    2 +-
 .../xorg-driver/cdv-pvr-driver.inc                 |   37 -----
 .../xorg-driver/cdv-pvr-driver_1.0.2.bb            |  143 ++++++++++++++++++++
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |   99 --------------
 4 files changed, 144 insertions(+), 137 deletions(-)
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb

diff --git a/meta-cedartrail/README b/meta-cedartrail/README
index 493e831..715cad9 100755
--- a/meta-cedartrail/README
+++ b/meta-cedartrail/README
@@ -61,7 +61,7 @@ Power VR Graphics user-space driver binaries are covered by a
 "Intel Free Distribution Binary License". The build of this driver
 can be enabled by adding the following line to the local.conf file:
 
-LICENSE_FLAGS_WHITELIST += "license_cdv-pvr-driver_1.0"
+LICENSE_FLAGS_WHITELIST += "license_cdv-pvr-driver_1.0.2"
 
 To enable the layer that does not support Power VR graphics
 add the following to the local.conf file:
diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
deleted file mode 100644
index 787c1fb..0000000
--- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
+++ /dev/null
@@ -1,37 +0,0 @@
-SUMMARY = "Cedartrail PowerVR Graphics Driver version [Gold] 1.0 binaries"
-DESCRIPTION = "2D, 3D and Media user space driver for Cedartrail platform \
-The binaries are covered by the Intel Free Distribution Binary License. \ 
-The user must make himself/herself aware of the Licensing terms \
-before enabling build of the Cedartrail PowerVR Graphics Driver via \
-this recipe.  Please see the README in meta-cedartrail for instructions \
-for enabling the build of the driver "
- 
-LICENSE_FLAGS = "license_${PN}_${PV}"
-LICENSE = "Intel Free Distribution Binary License"
-
-LIC_FILES_CHKSUM = " \
-    file://${S}/usr/share/doc/psb-video-cdv-0.16/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65  \
-    file://${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_10/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
-
-INC_PR = "r1"
-
-DEPENDS = "rpm-native"
-
-FILES_${PN} += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/pvr/cdv ${libdir}/xorg/modules/drivers"
-FILES_${PN}-dev += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/xorg/modules/drivers"
-FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug ${libdir}/pvr/cdv/dri/.debug"
-
-FILES_${PN} += "${base_libdir}/firmware"
-FILES_${PN} += "${sysconfdir}/X11/xorg.conf.d"
-
-FILES_${PN} += "${libdir}/lib*.so"
-FILES_${PN}-dev += "${libdir}/lib*.so"
-FILES_${PN}-dbg += "${libdir}/.debug"
-
-FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers"
-
-FILES_${PN} += "${datadir}/doc/psb-video-cdv-0.16/license.txt"
-FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-1.7.788837_10/license.txt"
-
-
-                        
diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
new file mode 100644
index 0000000..d62c1d2
--- /dev/null
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
@@ -0,0 +1,143 @@
+SUMMARY = "Cedartrail PowerVR Graphics Driver version 1.0.2 binaries"
+DESCRIPTION = "2D, 3D and Media user space driver for Cedartrail platform \
+The binaries are covered by the Intel Free Distribution Binary License. \ 
+The user must make himself/herself aware of the Licensing terms \
+before enabling build of the Cedartrail PowerVR Graphics Driver via \
+this recipe.  Please see the README in meta-cedartrail for instructions \
+for enabling the build of the driver "
+ 
+LICENSE_FLAGS = "license_${PN}_${PV}"
+LICENSE = "Intel Free Distribution Binary License"
+LIC_FILES_CHKSUM = " \
+    file://${S}/usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65  \
+    file://${S}/usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
+
+DEPENDS = "rpm-native libva"
+
+PR = "r1"
+
+PSB-VIDEO = "psb-video-cdv-0.17-2.1.i586.rpm"
+PSB-VIDEO-REV = "0.17"
+
+PVR-BIN = "pvr-bin-cdv-1.7.862890_05-1.1.i586.rpm"
+PVR-BIN-REV = "1.7.862890"
+PVR-BIN-REV_N = "1.7.862890_05"
+
+LIBWSBM = "libwsbm-cdv-1.1.0-3.1.i586.rpm"
+
+
+NON-OSS-PATH = "http://repo.meego.com/MeeGo/builds/1.2.0/1.2.0.10.1.20120723.1/repos/non-oss/ia32/packages/"
+OSS-PATH =     "http://repo.meego.com/MeeGo/updates/1.2.0/repos/oss/ia32/packages/"
+
+
+SRC_URI = "${NON-OSS-PATH}${PSB-VIDEO};name=psbrpm \
+	   ${NON-OSS-PATH}${PVR-BIN};name=pvrrpm \
+	   ${OSS-PATH}${LIBWSBM};name=wsbmrpm \
+		"
+SRC_URI[pvrrpm.md5sum] = "92dbb85a259dff73c6e4de68d158ef10"
+SRC_URI[pvrrpm.sha256sum] = "46356021efa990cde367b2cdec8626db8c1457234771c6459a106b8342c549c1"
+
+SRC_URI[psbrpm.md5sum] =  "0300f7485306bb039ee33e6238a00ae3"
+SRC_URI[psbrpm.sha256sum] = "8e71f2ff7464b20823d7f552729d39cb9e3d75badc9b206d43bcc2429849f6c0"
+
+SRC_URI[wsbmrpm.md5sum] = "b8b21ca8325abd7850d197f9bf3071c7"
+SRC_URI[wsbmrpm.sha256sum] = "f436386967c1adec5211e662251bd542bbe0b8cd55e1d9f9c203da5ee934d4f0"
+
+S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
+
+# These are closed binaries generated elsewhere so don't check ldflags
+INSANE_SKIP_${PN} = "ldflags"
+
+# .so files in these binaries are not symlinks. Rearange package order
+# so that they go to ${PN} instead of $PN}-dev
+ 
+PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN} ${PN}-dev ${PN}-doc ${PN}-locale"
+
+FILES_${PN} += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/pvr/cdv ${libdir}/xorg/modules/drivers"
+
+FILES_${PN} += "${base_libdir}/firmware"
+FILES_${PN} += "${sysconfdir}/X11/xorg.conf.d"
+
+FILES_${PN} += "${libdir}/lib*.so"
+
+FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers"
+
+FILES_${PN} += "${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt"
+FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt"
+
+
+do_configure () {
+
+# Extract  license files from rpms
+rpm2cpio.sh ${WORKDIR}/${PSB-VIDEO} |cpio -ivd ./usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt
+rpm2cpio.sh ${WORKDIR}/${PVR-BIN} |cpio -ivd ./usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt
+
+}
+
+do_install() {
+	
+	mv ${WORKDIR}/*.rpm  ${S}	
+				
+	rpm2cpio.sh ${S}/${LIBWSBM} | cpio -id
+	
+	install -d -m 0755                                    ${D}${libdir}/dri
+
+	install -m 0755 ${S}/usr/lib/*                        ${D}${libdir}/
+
+	rpm2cpio.sh ${S}/${PSB-VIDEO} | cpio -id
+
+	install -d -m 0755				      ${D}${base_libdir}/firmware
+
+	install -m 0755 ${S}/usr/lib/dri/*     		      ${D}${libdir}/dri/
+
+	install -m 0755 ${S}/lib/firmware/*		      ${D}${base_libdir}/firmware
+
+	rpm2cpio.sh  ${S}/${PVR-BIN}  | cpio -id
+
+	install -d -m 0755                                    ${D}${libdir}/pvr/cdv/dri
+
+	install -m 0755 ${S}/usr/lib/pvr/cdv/dri/*            ${D}${libdir}/pvr/cdv/dri
+
+	install -d -m 0755                                    ${D}${sysconfdir}/X11/xorg.conf.d
+	install -m 0755 ${S}/etc/powervr.ini		      ${D}${sysconfdir}/	
+	install -m 0755 ${S}/etc/X11/xorg.conf.d/*            ${D}${sysconfdir}/X11/xorg.conf.d/
+	install -m 0755 ${S}/usr/lib/dri/pvr_dri.so    	      ${D}${libdir}/dri/
+	install -m 0755 ${S}/usr/lib/*.so.*                   ${D}${libdir}/    
+
+	
+	install -m 0755 ${S}/usr/lib/libegl4ogl.so.${PVR-BIN-REV}   	${D}${libdir}/libegl4ogl.so
+	install -m 0755 ${S}/usr/lib/libEGL.so.${PVR-BIN-REV}  		${D}${libdir}/libEGL.so
+	install -m 0755 ${S}/usr/lib/libGLES_CM.so.${PVR-BIN-REV} 	${D}${libdir}/libGLES_CM.so
+	install -m 0755 ${S}/usr/lib/libGLES_CM.so.${PVR-BIN-REV}  	${D}${libdir}/libGLESv1_CM.so
+	install -m 0755 ${S}/usr/lib/libGLESv2.so.${PVR-BIN-REV}  	${D}${libdir}/libGLESv2.so
+	install -m 0755 ${S}/usr/lib/libglslcompiler.so.${PVR-BIN-REV} 	${D}${libdir}/libglslcompiler.so
+	install -m 0755 ${S}/usr/lib/libIMGegl.so.${PVR-BIN-REV}  	${D}${libdir}/libIMGegl.so
+	install -m 0755 ${S}/usr/lib/libOpenVG.so.${PVR-BIN-REV} 	${D}${libdir}/libOpenVG.so
+	install -m 0755 ${S}/usr/lib/libOpenVGU.so.${PVR-BIN-REV} 	${D}${libdir}/libOpenVGU.so
+	install -m 0755 ${S}/usr/lib/libpvr2d.so.${PVR-BIN-REV}  	${D}${libdir}/libpvr2d.so
+	install -m 0755 ${S}/usr/lib/libPVROGL_MESA.so.${PVR-BIN-REV} 	${D}${libdir}/libPVROGL_MESA.so
+	install -m 0755 ${S}/usr/lib/libpvrPVR2D_BLITWSEGL.so.${PVR-BIN-REV} 	${D}${libdir}/libpvrPVR2D_BLITWSEGL.so
+	install -m 0755 ${S}/usr/lib/libpvrPVR2D_DRIWSEGL.so.${PVR-BIN-REV} 	${D}${libdir}/libpvrPVR2D_DRIWSEGL.so
+	install -m 0755 ${S}/usr/lib/libpvrPVR2D_FLIPWSEGL.so.${PVR-BIN-REV}  	${D}${libdir}/libpvrPVR2D_FLIPWSEGL.so
+	install -m 0755 ${S}/usr/lib/libpvrPVR2D_LINUXFBWSEGL.so.${PVR-BIN-REV}	${D}${libdir}/libpvrPVR2D_LINUXFBWSEGL.so
+	install -m 0755 ${S}/usr/lib/libPVRScopeServices.so.${PVR-BIN-REV}  	${D}${libdir}/libPVRScopeServices.so
+	install -m 0755 ${S}/usr/lib/libsrv_init.so.${PVR-BIN-REV}  	${D}${libdir}/libsrv_init.so
+	install -m 0755 ${S}/usr/lib/libsrv_um.so.${PVR-BIN-REV} 	${D}${libdir}/libsrv_um.so
+	install -m 0755 ${S}/usr/lib/libusc.so.${PVR-BIN-REV} 		${D}${libdir}/libusc.so
+
+	install -m 0755 ${S}/usr/lib/pvr/cdv/*.so.*           		${D}${libdir}/pvr/cdv/    
+
+	install -d -m 0755 ${D}${libdir}/pvr/cdv/xorg/modules/drivers
+	install -m 0755 ${S}/usr/lib/pvr/cdv/xorg/modules/drivers/* 	${D}${libdir}/pvr/cdv/xorg/modules/drivers/
+
+    	install -d -m 0755                                    		${D}${libdir}/xorg/modules/drivers
+   
+	install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   		${D}${libdir}/xorg/modules/drivers/
+   
+	install -d -m 0755 ${D}${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}
+	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}
+
+	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt ${D}${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt
+	install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt	${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt
+
+}
diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
deleted file mode 100644
index 9af0eb8..0000000
--- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
+++ /dev/null
@@ -1,99 +0,0 @@
-require cdv-pvr-driver.inc
-
-PR = "${INC_PR}.1"
-
-DEPENDS = "libva"
-
-SRC_URI = "http://repo.meego.com/MeeGo/updates/1.2.0/repos/non-oss/ia32/packages/psb-video-cdv-0.16-1.1.i586.rpm;name=psbrpm \
-	   http://repo.meego.com/MeeGo/updates/1.2.0/repos/non-oss/ia32/packages/pvr-bin-cdv-1.7.788837_10-1.1.i586.rpm;name=pvrrpm \
-	   http://repo.meego.com/MeeGo/updates/1.2.0/repos/oss/ia32/packages/libwsbm-cdv-1.1.0-3.1.i586.rpm;name=wsbmrpm \
-		"
-SRC_URI[pvrrpm.md5sum] = "06dbacd7f0f5bb10132eb5477ae9267a"
-SRC_URI[pvrrpm.sha256sum] = "1e42c57485e46a1712e26f48df44a2f5305a82ca98afc5bf4f90a93c9631f509"
-
-SRC_URI[psbrpm.md5sum] =  "fd213baa2af33d35e8b552e586b02b90"
-SRC_URI[psbrpm.sha256sum] = "cda281798ebbd280b6d2caf2a09961db0d719f929b808c6360c81db323aeee71"
-
-SRC_URI[wsbmrpm.md5sum] = "b8b21ca8325abd7850d197f9bf3071c7"
-SRC_URI[wsbmrpm.sha256sum] = "f436386967c1adec5211e662251bd542bbe0b8cd55e1d9f9c203da5ee934d4f0"
-
-
-S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
-
-do_configure () {
-
-# Extract  license files from rpms
-rpm2cpio ${WORKDIR}/psb-video-cdv-0.16-1.1.i586.rpm |cpio -ivd ./usr/share/doc/psb-video-cdv-0.16/license.txt
-rpm2cpio ${WORKDIR}/pvr-bin-cdv-1.7.788837_10-1.1.i586.rpm |cpio -ivd ./usr/share/doc/pvr-bin-cdv-1.7.788837_10/license.txt
-
-}
-
-
-do_install() {
- 	
-	
-	mv ${WORKDIR}/*.rpm  ${S}	
-				
-	rpm2cpio ${S}/libwsbm-cdv-1.1.0-3.1.i586.rpm | cpio -id
-	
-	install -d -m 0755                                    ${D}${libdir}/dri
-
-	install -m 0755 ${S}/usr/lib/*                        ${D}${libdir}/
-
-	rpm2cpio ${S}/psb-video-cdv-0.16-1.1.i586.rpm | cpio -id
-
-	install -d -m 0755				      ${D}${base_libdir}/firmware
-
-	install -m 0755 ${S}/usr/lib/dri/*     		      ${D}${libdir}/dri/
-
-	install -m 0755 ${S}/lib/firmware/*		      ${D}${base_libdir}/firmware
-
-	rpm2cpio ${S}/pvr-bin-cdv-1.7.788837_10-1.1.i586.rpm  | cpio -id
-
-	install -d -m 0755                                    ${D}${libdir}/pvr/cdv/dri
-
-	install -m 0755 ${S}/usr/lib/pvr/cdv/dri/*            ${D}${libdir}/pvr/cdv/dri
-
-	install -d -m 0755                                    ${D}${sysconfdir}/X11/xorg.conf.d
-	install -m 0755 ${S}/etc/powervr.ini		      ${D}${sysconfdir}/	
-	install -m 0755 ${S}/etc/X11/xorg.conf.d/*            ${D}${sysconfdir}/X11/xorg.conf.d/
-	install -m 0755 ${S}/usr/lib/dri/pvr_dri.so    	      ${D}${libdir}/dri/
-	install -m 0755 ${S}/usr/lib/*.so.*                   ${D}${libdir}/    
-
-	
-	install -m 0755 ${S}/usr/lib/libegl4ogl.so.1.7.788837   			${D}${libdir}/libegl4ogl.so
-	install -m 0755 ${S}/usr/lib/libEGL.so.1.7.788837  				${D}${libdir}/libEGL.so
-	install -m 0755 ${S}/usr/lib/libGLES_CM.so.1.7.788837 				${D}${libdir}/libGLES_CM.so
-	install -m 0755 ${S}/usr/lib/libGLES_CM.so.1.7.788837  				${D}${libdir}/libGLESv1_CM.so
-	install -m 0755 ${S}/usr/lib/libGLESv2.so.1.7.788837  				${D}${libdir}/libGLESv2.so
-	install -m 0755 ${S}/usr/lib/libglslcompiler.so.1.7.788837 			${D}${libdir}/libglslcompiler.so
-	install -m 0755 ${S}/usr/lib/libIMGegl.so.1.7.788837  				${D}${libdir}/libIMGegl.so
-	install -m 0755 ${S}/usr/lib/libOpenVG.so.1.7.788837 				${D}${libdir}/libOpenVG.so
-	install -m 0755 ${S}/usr/lib/libOpenVGU.so.1.7.788837 				${D}${libdir}/libOpenVGU.so
-	install -m 0755 ${S}/usr/lib/libpvr2d.so.1.7.788837  				${D}${libdir}/libpvr2d.so
-	install -m 0755 ${S}/usr/lib/libPVROGL_MESA.so.1.7.788837 			${D}${libdir}/libPVROGL_MESA.so
-	install -m 0755 ${S}/usr/lib/libpvrPVR2D_BLITWSEGL.so.1.7.788837 		${D}${libdir}/libpvrPVR2D_BLITWSEGL.so
-	install -m 0755 ${S}/usr/lib/libpvrPVR2D_DRIWSEGL.so.1.7.788837 		${D}${libdir}/libpvrPVR2D_DRIWSEGL.so
-	install -m 0755 ${S}/usr/lib/libpvrPVR2D_FLIPWSEGL.so.1.7.788837  		${D}${libdir}/libpvrPVR2D_FLIPWSEGL.so
-	install -m 0755 ${S}/usr/lib/libpvrPVR2D_LINUXFBWSEGL.so.1.7.788837  		${D}${libdir}/libpvrPVR2D_LINUXFBWSEGL.so
-	install -m 0755 ${S}/usr/lib/libPVRScopeServices.so.1.7.788837  		${D}${libdir}/libPVRScopeServices.so
-	install -m 0755 ${S}/usr/lib/libsrv_init.so.1.7.788837  			${D}${libdir}/libsrv_init.so
-	install -m 0755 ${S}/usr/lib/libsrv_um.so.1.7.788837 				${D}${libdir}/libsrv_um.so
-	install -m 0755 ${S}/usr/lib/libusc.so.1.7.788837 				${D}${libdir}/libusc.so
-
-	install -m 0755 ${S}/usr/lib/pvr/cdv/*.so.*           				${D}${libdir}/pvr/cdv/    
-
-	install -d -m 0755 ${D}${libdir}/pvr/cdv/xorg/modules/drivers
-	install -m 0755 ${S}/usr/lib/pvr/cdv/xorg/modules/drivers/* 			${D}${libdir}/pvr/cdv/xorg/modules/drivers/
-
-    	install -d -m 0755                                    				${D}${libdir}/xorg/modules/drivers
-   
-	install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   				${D}${libdir}/xorg/modules/drivers/
-   
-	install -d -m 0755 ${D}${datadir}/doc/psb-video-cdv-0.16
-	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_10
-
-	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-0.16/license.txt 		${D}${datadir}/doc/psb-video-cdv-0.16/license.txt
-	install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_10/license.txt	${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_10/license.txt
-
-}
-- 
1.7.4.1


