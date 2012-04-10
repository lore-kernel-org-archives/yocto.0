Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E00ADE013EE
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:57:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Apr 2012 11:57:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="152045431"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2012 11:57:02 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Tue, 10 Apr 2012 11:55:34 -0700
Message-Id: <a1f2ef88fbe157135a53368bee13dadf14adbd1f.1334083666.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
References: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1334083666.git.kishore.k.bodke@intel.com>
References: <cover.1334083666.git.kishore.k.bodke@intel.com>
Subject: [PATCH 4/9] [meta-intel] Cedartrail: Add PVR graphics support.
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
X-List-Received-Date: Tue, 10 Apr 2012 18:57:03 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

New recipe for PVR graphics support.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../xorg-driver/cdv-pvr-driver.inc                 |   39 ++++++++
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |  101 ++++++++++++++++++++
 2 files changed, 140 insertions(+), 0 deletions(-)
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb

diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
new file mode 100644
index 0000000..0de6cbe
--- /dev/null
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
@@ -0,0 +1,39 @@
+SUMMARY = "Cedartrail PowerVR Graphics Driver version [Gold] 1.0 binaries"
+DESCRIPTION = "2D, 3D and Media user space driver for Cedartrail platform \
+The binaries are covered by the Intel Free Distribution Binary License. \ 
+The user must make himself/herself aware of the Licensing terms \
+before enabling build of the Cedartrail PowerVR Graphics Driver via \
+this recipe.  Please see the README in meta-cedartrail for instructions \
+for enabling the build of the driver "
+ 
+MEEGO_MIRROR = "http://download.meego.com/live/MeeGo:/1.2.0:/CedarTrail:"
+
+LICENSE_FLAGS = "license_${PN}_${PV}"
+LICENSE = "Intel Free Distribution Binary License"
+LIC_FILES_CHKSUM = " \
+    file://${S}/usr/share/doc/psb-video-cdv-0.12/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65  \
+    file://${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
+
+
+INC_PR = "r0"
+
+DEPENDS = "rpm-native"
+
+FILES_${PN} += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/pvr/cdv ${libdir}/xorg/modules/drivers"
+FILES_${PN}-dev += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/xorg/modules/drivers"
+FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug ${libdir}/pvr/cdv/dri/.debug"
+
+FILES_${PN} += "${base_libdir}/firmware"
+FILES_${PN} += "${sysconfdir}/X11/xorg.conf.d"
+
+FILES_${PN} += "${libdir}/lib*.so"
+FILES_${PN}-dev += "${libdir}/lib*.so"
+FILES_${PN}-dbg += "${libdir}/.debug"
+
+FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers"
+
+FILES_${PN} += "${datadir}/doc/psb-video-cdv-0.12/license.txt"
+FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-1.7.788837_05/license.txt"
+
+
+                        
diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
new file mode 100644
index 0000000..496da1e
--- /dev/null
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
@@ -0,0 +1,101 @@
+require cdv-pvr-driver.inc
+
+PR = "${INC_PR}.0"
+
+DEPENDS = "libva"
+
+SRC_URI = "${MEEGO_MIRROR}/non-oss/MeeGo_1.2.0_CedarTrail/i586/psb-video-cdv-0.12-1.1.i586.rpm;name=psbrpm \ 
+	   ${MEEGO_MIRROR}/oss/standard/i586/libwsbm-cdv-1.1.0-3.1.i586.rpm;name=wsbmrpm \
+	   ${MEEGO_MIRROR}/non-oss/MeeGo_1.2.0_CedarTrail/i586/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm;name=pvrrpm \
+           "
+
+SRC_URI[pvrrpm.md5sum] = "951fa9edcbc2a3ddb30450079869362e"
+SRC_URI[pvrrpm.sha256sum] = "537dd8a98ac2e3a101063abc62682c3be8c37ac29782a876eafce113ffa5b421"
+
+SRC_URI[psbrpm.md5sum] =  "d4b6b383722264f3b781aeb240c88037"
+SRC_URI[psbrpm.sha256sum] = "e88f95fc73a79adf76ee33d3d9874cec23bb1afe8149d7dc5842d67e58da72f5"
+
+SRC_URI[wsbmrpm.md5sum] = "8d90436b151ddf72f620771f2552b597"
+SRC_URI[wsbmrpm.sha256sum] = "82f78f47c151f0e7d567574ee372504e5b395fb13796caa765f9c30754b5bf63"
+
+
+S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
+
+do_configure () {
+
+# Extract  license files from rpms
+rpm2cpio ${WORKDIR}/psb-video-cdv-0.12-1.1.i586.rpm |cpio -ivd ./usr/share/doc/psb-video-cdv-0.12/license.txt
+rpm2cpio ${WORKDIR}/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm |cpio -ivd ./usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt
+
+}
+
+
+do_install() {
+ 	
+	
+	mv ${WORKDIR}/*.rpm  ${S}	
+				
+	rpm2cpio ${S}/libwsbm-cdv-1.1.0-3.1.i586.rpm | cpio -id
+	
+	install -d -m 0755                                    ${D}${libdir}/dri
+
+	install -m 0755 ${S}/usr/lib/*                        ${D}${libdir}/
+
+	rpm2cpio ${S}/psb-video-cdv-0.12-1.1.i586.rpm | cpio -id
+
+
+	install -d -m 0755				      ${D}${base_libdir}/firmware
+
+	install -m 0755 ${S}/usr/lib/dri/*     		      ${D}${libdir}/dri/
+
+	install -m 0755 ${S}/lib/firmware/*		      ${D}${base_libdir}/firmware
+
+	rpm2cpio ${S}/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm  | cpio -id
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
+	install -m 0755 ${S}/usr/lib/libegl4ogl.so.1.7.788837   			${D}${libdir}/libegl4ogl.so
+	install -m 0755 ${S}/usr/lib/libEGL.so.1.7.788837  				${D}${libdir}/libEGL.so
+	install -m 0755 ${S}/usr/lib/libGLES_CM.so.1.7.788837 				${D}${libdir}/libGLES_CM.so
+	install -m 0755 ${S}/usr/lib/libGLES_CM.so.1.7.788837  				${D}${libdir}/libGLESv1_CM.so
+	install -m 0755 ${S}/usr/lib/libGLESv2.so.1.7.788837  				${D}${libdir}/libGLESv2.so
+	install -m 0755 ${S}/usr/lib/libglslcompiler.so.1.7.788837 			${D}${libdir}/libglslcompiler.so
+	install -m 0755 ${S}/usr/lib/libIMGegl.so.1.7.788837  				${D}${libdir}/libIMGegl.so
+	install -m 0755 ${S}/usr/lib/libOpenVG.so.1.7.788837 				${D}${libdir}/libOpenVG.so
+	install -m 0755 ${S}/usr/lib/libOpenVGU.so.1.7.788837 				${D}${libdir}/libOpenVGU.so
+	install -m 0755 ${S}/usr/lib/libpvr2d.so.1.7.788837  				${D}${libdir}/libpvr2d.so
+	install -m 0755 ${S}/usr/lib/libPVROGL_MESA.so.1.7.788837 			${D}${libdir}/libPVROGL_MESA.so
+	install -m 0755 ${S}/usr/lib/libpvrPVR2D_BLITWSEGL.so.1.7.788837 		${D}${libdir}/libpvrPVR2D_BLITWSEGL.so
+	install -m 0755 ${S}/usr/lib/libpvrPVR2D_DRIWSEGL.so.1.7.788837 		${D}${libdir}/libpvrPVR2D_DRIWSEGL.so
+	install -m 0755 ${S}/usr/lib/libpvrPVR2D_FLIPWSEGL.so.1.7.788837  		${D}${libdir}/libpvrPVR2D_FLIPWSEGL.so
+	install -m 0755 ${S}/usr/lib/libpvrPVR2D_LINUXFBWSEGL.so.1.7.788837  		${D}${libdir}/libpvrPVR2D_LINUXFBWSEGL.so
+	install -m 0755 ${S}/usr/lib/libPVRScopeServices.so.1.7.788837  		${D}${libdir}/libPVRScopeServices.so
+	install -m 0755 ${S}/usr/lib/libsrv_init.so.1.7.788837  			${D}${libdir}/libsrv_init.so
+	install -m 0755 ${S}/usr/lib/libsrv_um.so.1.7.788837 				${D}${libdir}/libsrv_um.so
+	install -m 0755 ${S}/usr/lib/libusc.so.1.7.788837 				${D}${libdir}/libusc.so
+
+	install -m 0755 ${S}/usr/lib/pvr/cdv/*.so.*           				${D}${libdir}/pvr/cdv/    
+
+	install -d -m 0755 ${D}${libdir}/pvr/cdv/xorg/modules/drivers
+	install -m 0755 ${S}/usr/lib/pvr/cdv/xorg/modules/drivers/* 			${D}${libdir}/pvr/cdv/xorg/modules/drivers/
+
+    	install -d -m 0755                                    				${D}${libdir}/xorg/modules/drivers
+   
+	install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   				${D}${libdir}/xorg/modules/drivers/
+   
+	install -d -m 0755 ${D}${datadir}/doc/psb-video-cdv-0.12
+	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_05
+
+    	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-0.12/license.txt 		${D}${datadir}/doc/psb-video-cdv-0.12/license.txt
+	install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt	${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_05/license.txt
+
+}
-- 
1.7.5.4


