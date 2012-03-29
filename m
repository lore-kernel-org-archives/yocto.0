Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8607BE013BF
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 10:50:50 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 29 Mar 2012 10:50:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83172306"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.164])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Mar 2012 10:50:49 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	rahul.saxena@intel.com
Date: Thu, 29 Mar 2012 10:49:37 -0700
Message-Id: <c5daca080aaabc9698bc7ea7b0e55cea709c1712.1333043012.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1333043012.git.kishore.k.bodke@intel.com>
References: <cover.1333043012.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] Cedartrail: Add pvr graphics driver
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
X-List-Received-Date: Thu, 29 Mar 2012 17:50:50 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Include the PVR Graphics driver to the Cedartrail BSP.
These patch set will add the PVR Graphics driver and
update the SRCREVs for both pvr and nopvr.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 conf/machine/include/ia32-base.inc                 |    2 +
 meta-cedartrail/README                             |   42 ++++++++-
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |   21 ++++
 meta-cedartrail/conf/machine/cedartrail.conf       |   13 ++-
 .../cedartrail-audio/cedartrail-audio.bb           |   30 ++++++
 .../cedartrail-audio/cedartrail-audio              |   42 ++++++++
 .../formfactor/cedartrail-nopvr/machconfig         |    3 +
 .../tasks/task-core-tools-profile.bbappend         |    2 +-
 .../xorg-driver/cdv-pvr-driver.inc                 |   48 +++++++++
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |  101 ++++++++++++++++++++
 .../xserver-xf86-config/cedartrail-nopvr/xorg.conf |   26 +++++
 .../xserver-xf86-config/cedartrail/xorg.conf       |   24 ++---
 .../linux/linux-yocto-rt_3.0.bbappend              |   16 +++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   20 ++++-
 .../ogg-CC-BY-3.0-music-samples_0.1.bb             |   23 +++++
 .../video-samples/bigbuckbunny-ogg.bb              |   24 +++++
 .../images/core-image-sato-dev.bbappend            |    2 +
 .../images/core-image-sato-sdk.bbappend            |    2 +
 .../recipes-sato/images/core-image-sato.bbappend   |    1 +
 19 files changed, 418 insertions(+), 24 deletions(-)
 create mode 100644 meta-cedartrail/conf/machine/cedartrail-nopvr.conf
 create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
 create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio
 create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
 create mode 100644 meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
 create mode 100644 meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato.bbappend

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 9b2ef5a..d1bd0d7 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -64,3 +64,5 @@ XSERVER_IA32_EMGD = "emgd-driver-bin \
            "
 
 XSERVER_IA32_VESA = "xf86-video-vesa"
+
+XSERVER_IA32_PVR = "cdv-pvr-driver"
diff --git a/meta-cedartrail/README b/meta-cedartrail/README
index 295e9ff..9b7ce9b 100755
--- a/meta-cedartrail/README
+++ b/meta-cedartrail/README
@@ -52,10 +52,24 @@ common metadata shared between BSPs) e.g.:
         yocto/meta-intel \  
 	yocto/meta-intel/meta-cedartrail \
 
-To enable the cedartrail layer, add the cedartrail MACHINE to local.conf:
+To enable the cedartrail layer that supports Power VR graphics, 
+add the cedartrail MACHINE to local.conf:
 
   MACHINE ?= "cedartrail"
 
+
+Power VR Graphics user-space driver binaries are covered by a
+"Intel Free Distribution Binary License". The build of this driver
+can be enabled by adding the following line to the local.conf file:
+
+ PVR_LICENSE = "yes"
+
+To enable the layer that does not support Power VR graphics
+add the following to the local.conf file:
+
+ MACHINE ?= "cedartrail-nopvr"
+
+
 You should then be able to build a cedartrail image as such:
 
   $ source oe-init-build-env
@@ -85,7 +99,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
 takes device /dev/sdf, use dd to copy the live image to it.  For
 example:
 
-# dd if=core-image-sato-cedartrail-20120105232035.hddimg of=/dev/sdf
+# dd if=core-image-sato-cedartrail-20120329171409.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
@@ -109,3 +123,27 @@ the syslinux boot: prompt, or the boot: prompt contains strange
 characters), try doing this first:
 
 # dd if=/dev/zero of=/dev/sdf bs=1M count=512
+
+Miscellaneous Notes
+====================
+
+Video and Music Samples
+-----------------------
+This BSP includes recipes to download Ogg format video and
+music files that can be played-back with the Video and music players
+included in the sato images.  The sample files are installed in
+/home/Music and /home/Videos directories.  
+
+
+Adding Glxgears to image
+-------------------------
+Glxgears can be added to the generated image by adding "debug-tweaks"
+option to the extra image features variable in the default local.conf
+before building the BSP.
+
+e.g. to add Glxgears, locate the following line in local.conf
+EXTRA_IMAGE_FEATURES = "debug-tweaks"
+
+and change above line to..
+
+EXTRA_IMAGE_FEATURES = "debug-tweaks tools-testapps"
diff --git a/meta-cedartrail/conf/machine/cedartrail-nopvr.conf b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
new file mode 100644
index 0000000..5041a9a
--- /dev/null
+++ b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
@@ -0,0 +1,21 @@
+#@TYPE: Machine
+#@NAME: Cedartrail
+
+#@DESCRIPTION: Machine configuration for Cedartrail systems
+# i.e. Cedarview processor + Tiger Point Chipset
+
+require conf/machine/include/tune-atom.inc
+require conf/machine/include/ia32-base.inc
+
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+           ${XSERVER_IA32_VESA} \
+           "
+
+APPEND += "video=vesafb vga=0x318"
+
+MACHINE_EXTRA_RRECOMMENDS = "cedartrail-audio"
+
+SYSLINUX_OPTS = "serial 0 115200"
+SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index 3bd5cf8..d0850f8 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -7,9 +7,18 @@
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
+MACHINE_FEATURES += "pcbios efi"
+
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
-           ${XSERVER_IA32_VESA} \
+           ${XSERVER_IA32_PVR} \
            "
 
-APPEND += "video=vesafb vga=0x318"
+PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
+PREFERRED_VERSION_mesa-dri ?= "7.11"
+
+MACHINE_EXTRA_RRECOMMENDS = "cedartrail-audio"
+
+SYSLINUX_OPTS = "serial 0 115200"
+SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
diff --git a/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
new file mode 100644
index 0000000..9a43f02
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
@@ -0,0 +1,30 @@
+SUMMARY = "Provide a basic init script to enable audio"
+DESCRIPTION = "Set the volume and unmute the Front mixer setting during boot."
+SECTION = "base"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
+
+PR = "r0"
+
+inherit update-rc.d
+
+RDEPENDS = "alsa-utils-amixer"
+
+SRC_URI = "file://cedartrail-audio"
+
+INITSCRIPT_NAME = "cedartrail-audio"
+INITSCRIPT_PARAMS = "defaults 90"
+
+do_install() {
+	install -d ${D}${sysconfdir} \
+	           ${D}${sysconfdir}/init.d
+	install -m 0755 ${WORKDIR}/cedartrail-audio ${D}${sysconfdir}/init.d
+        cat ${WORKDIR}/${INITSCRIPT_NAME} | \
+            sed -e 's,/etc,${sysconfdir},g' \
+                -e 's,/usr/sbin,${sbindir},g' \
+                -e 's,/var,${localstatedir},g' \
+                -e 's,/usr/bin,${bindir},g' \
+                -e 's,/usr,${prefix},g' > ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+        chmod 755 ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+}
+
diff --git a/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio
new file mode 100644
index 0000000..efd08d3
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio
@@ -0,0 +1,42 @@
+#!/bin/sh
+### BEGIN INIT INFO
+# Provides:          cedartrail mixer setup
+# Required-Start:    $syslog
+# Required-Stop:     $syslog
+# Default-Start:     2 3 4 5
+# Default-Stop:      0 1 6
+# Short-Description: Initialize the cedartrail audio mixer
+# Description:       Unmute FRONT and set volume 
+### END INIT INFO
+
+# Author: Darren Hart <dvhart@linux.intel.com>
+# Based on /etc/init.d/skeleton
+
+PATH=/sbin:/usr/sbin:/bin:/usr/bin
+DESC="Audio mixer settings"
+NAME=cedartrail-audio
+AMIXER=`which amixer`
+SCRIPTNAME=/etc/init.d/$NAME
+
+# Exit if amixer is not installed
+[ -x "$AMIXER" ] || exit 0
+
+do_start() {
+	# Enable the "Front" simple controls (black phones jack)
+	$AMIXER sset Front 90 on > /dev/null
+}
+
+case "$1" in
+start)
+	echo "$NAME: setting default mixer settings."
+	do_start
+	;;
+stop)
+	;;
+*)
+	echo "Usage: $SCRIPTNAME {start|stop}" >&2
+	exit 3
+	;;
+esac
+
+exit 0
diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
index e972712..d49a3f5 100644
--- a/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
+++ b/meta-cedartrail/recipes-core/tasks/task-core-tools-profile.bbappend
@@ -1,2 +1,2 @@
 RRECOMMENDS_task-core-tools-profile_append_cedartrail = " systemtap"
-
+RRECOMMENDS_task-core-tools-profile_append_cedartrail-nopvr = " systemtap"
diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
new file mode 100644
index 0000000..c3db144
--- /dev/null
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
@@ -0,0 +1,48 @@
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
+addtask check_pvr_license before do_fetch
+ 
+python do_check_pvr_license() {
+    pn = bb.data.getVar('PN', d, 1)
+    pvr_license = bb.data.getVar('PVR_LICENSE', d, 1)
+    if not pvr_license or not pvr_license.lower() == "yes":
+        bb.debug(1, "Skipping %s because it has a non-free license" % pn)
+        raise bb.parse.SkipPackage("because it requires PVR_LICENSE = \"yes\" in local.conf to ship")
+}
+
+
+                        
diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
new file mode 100644
index 0000000..2af60f5
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
+	install -m 0755 ${S}/usr/lib/pvr/cdv/*.so.*           ${D}${libdir}/pvr/cdv/    
+
+	install -d -m 0755 ${D}${libdir}/pvr/cdv/xorg/modules/drivers
+	install -m 0755 ${S}/usr/lib/pvr/cdv/xorg/modules/drivers/* ${D}${libdir}/pvr/cdv/xorg/modules/drivers/
+
+    	install -d -m 0755                                    ${D}${libdir}/xorg/modules/drivers
+   
+	install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   ${D}${libdir}/xorg/modules/drivers/
+   
+	install -d -m 0755 ${D}${datadir}/doc/psb-video-cdv-0.12
+	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_05
+
+    	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-0.12/license.txt 	${D}${datadir}/doc/psb-video-cdv-0.12/license.txt
+	install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt	${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_05/license.txt
+
+}
diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
new file mode 100644
index 0000000..da4fc3c
--- /dev/null
+++ b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
@@ -0,0 +1,26 @@
+Section "Device"
+    Identifier	"Generic VESA"
+    Driver	"vesa"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device	  "Generic VESA"
+    Monitor       "Generic Monitor"
+    DefaultDepth  24
+EndSection
+
+Section "ServerLayout"
+    Identifier     "Default Layout"
+    Screen         "Default Screen"
+EndSection
+
+Section "ServerFlags"
+    Option        "DontZap"  "0"
+    Option        "AutoAddDevices"  "False"
+EndSection
diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
index da4fc3c..1d085a4 100644
--- a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
+++ b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
@@ -1,23 +1,15 @@
 Section "Device"
-    Identifier	"Generic VESA"
-    Driver	"vesa"
-EndSection
-
-Section "Monitor"
-    Identifier    "Generic Monitor"
-    Option        "DPMS"
-EndSection
-
-Section "Screen"
-    Identifier    "Default Screen"
-    Device	  "Generic VESA"
-    Monitor       "Generic Monitor"
-    DefaultDepth  24
+        Option     "DRIDisableVSync"    "False"
+        Identifier  "Card0"
+        Driver      "pvr"
+        BusID       "PCI:0:2:0"
+        Option      "SoftEXA"           "Off"
+        Option      "FlipChain"         "On"
 EndSection
 
 Section "ServerLayout"
-    Identifier     "Default Layout"
-    Screen         "Default Screen"
+        Identifier "default screen"
+        Option  "AIGLX" "on"
 EndSection
 
 Section "ServerFlags"
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 5a95d3e..ac56364 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,10 +1,26 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "cedartrail"
 
 KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
+KERNEL_FEATURES_append_cedartrail += " cfg/drm-cdvpvr.scc"
+KERNEL_FEATURES_append_cedartrail += " bsp/cedartrail/cedartrail-pvr-merge.scc"
+KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
+
+COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
+KMACHINE_cedartrail-nopvr  = "cedartrail"
+KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
 
 # Update the following to use a different BSP branch or meta SRCREV
 #KBRANCH_cedartrail  = "yocto/standard/preempt-rt/base"
 #SRCREV_machine_pn-linux-yocto-rt_cedartrail ?= XXXX
 #SRCREV_meta_pn-linux-yocto-rt_cedartrail ?= XXXX
+
+
+
+
+
+
+
+
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index ca59e72..49b3de7 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -2,7 +2,21 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "yocto/standard/cedartrail"
-KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
+KERNEL_FEATURES_append_cedartrail += "cfg/smp.scc"
+KERNEL_FEATURES_append_cedartrail += "cfg/drm-cdvpvr.scc"
+KERNEL_FEATURES_append_cedartrail += "bsp/cedartrail/cedartrail-pvr-merge.scc"
+KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
+
+COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
+KMACHINE_cedartrail-nopvr  = "yocto/standard/cedartrail"
+KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_cedartrail ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
+SRCREV_meta_pn-linux-yocto_cedartrail ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
+
+SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
+SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
+
+
+
 
-SRCREV_machine_pn-linux-yocto_cedartrail ?= "f389d310965a56091f688b28ea8be6d9cbb7fbbe"
-SRCREV_meta_pn-linux-yocto_cedartrail ?= "04a52a32cbdf0972033b97b83eaa83eb275dfdc9"
diff --git a/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb b/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
new file mode 100644
index 0000000..fd65cc7
--- /dev/null
+++ b/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
@@ -0,0 +1,23 @@
+SUMMARY = "ogg file format music samples"
+DESCRIPTION = "Installs ogg file format music samples in /home/Music dir"
+
+LICENSE = "CC-BY-3.0"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
+
+DEPENDS += " " 
+
+PR = "r0"
+
+SRC_URI = "http://downloads.yoctoproject.org/releases/media/music/ogg-CC-BY-3.0-music-samples-${PV}.tar.bz2 \
+            "
+
+SRC_URI[md5sum] = "dc3dd4adca69996edaffe8828e1ee165"
+SRC_URI[sha256sum] = "86381f8474d5ac2c80f54c951a8c22f67d352daa977341d3dfb4161e39ca3975"
+
+do_install() {
+
+install -d ${D}${base_prefix}/home/music
+install -m 0644  ${WORKDIR}/ogg-CC-BY-3.0-music-samples-${PV}/*/*.ogg ${D}${base_prefix}/home/music
+}
+
+FILES_${PN} += "${base_prefix}/home/music/*.ogg"
diff --git a/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb b/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
new file mode 100644
index 0000000..036721c
--- /dev/null
+++ b/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
@@ -0,0 +1,24 @@
+SUMMARY = "Big Buck Bunny video OGG sample "
+DESCRIPTION = "Installs Big Buck Bunny Video OGG file samples in /home/video dir "
+
+LICENSE = "CC-BY-3.0"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
+
+DEPENDS += " " 
+
+PR = "r0"
+
+SRC_URI = "http://blender-mirror.kino3d.org/peach/bigbuckbunny_movies/big_buck_bunny_720p_stereo.ogg \
+            "
+
+
+SRC_URI[md5sum] = "576424c653da53e31b86c027e55758ae"
+SRC_URI[sha256sum] = "785b09a585be55f81326a3fcef2cdeeb7ebbc33932b6305fd84209928df67f28"
+
+do_install() {
+
+install -d ${D}${base_prefix}/home/Videos
+install -m 0644  ${WORKDIR}/*.ogg ${D}${base_prefix}/home/Videos
+}
+
+FILES_${PN} += "${base_prefix}/home/Videos/*.ogg"
diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
new file mode 100644
index 0000000..33283f4
--- /dev/null
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
@@ -0,0 +1,2 @@
+IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg ogg-CC-BY-3.0-music-samples"
+
diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
new file mode 100644
index 0000000..33283f4
--- /dev/null
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
@@ -0,0 +1,2 @@
+IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg ogg-CC-BY-3.0-music-samples"
+
diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend
new file mode 100644
index 0000000..4c1ccac
--- /dev/null
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend
@@ -0,0 +1 @@
+IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg  ogg-CC-BY-3.0-music-samples"
-- 
1.7.5.4


