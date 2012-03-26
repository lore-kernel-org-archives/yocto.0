Return-Path: <rahul.saxena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84606E013E6
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:59:17 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 26 Mar 2012 14:58:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="81842986"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Mar 2012 14:58:58 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon, 26 Mar 2012 07:49:24 -0700
Message-Id: <21e39753a511362655d19373ea2d9b9713f97036.1332797429.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332797429.git.rahul.saxena@intel.com>
References: <cover.1332797429.git.rahul.saxena@intel.com>
Subject: [PATCH 06/14] meta-cedartrail: add Cedar Trail PVR driver
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
X-List-Received-Date: Mon, 26 Mar 2012 21:59:17 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

The Cedar Trail PVR driver consists of user-space  binaries that enable
the Video and Graphics acceleration capabilites of the Power VR SGX545
Integrated Graphics Controller in the Cedarview processor.
The driver binaries are provided under "Intel Free Distribution Binary License"
The instructions to enable the build of this driver are provided in the
meta-cedartrail/README file

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 .../xorg-driver/cdv-graphics-drivers_1.0.bb        |   89 ++++++++++++++++++++
 1 files changed, 89 insertions(+), 0 deletions(-)
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-graphics-drivers_1.0.bb

diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-graphics-drivers_1.0.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-graphics-drivers_1.0.bb
new file mode 100644
index 0000000..249246b
--- /dev/null
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-graphics-drivers_1.0.bb
@@ -0,0 +1,89 @@
+SUMMARY = "Cedartrail PowerVR Graphics Driver version [Gold] 1.0 binaries"
+DESCRIPTION = "2D, 3D and Media user space driver for Cedartrail platform \
+The binaries are covered by the Intel Free Distribution Binary License. \ 
+The user must make himself/herself aware of the Licensing terms \
+before enabling build of the Cedartrail PowerVR Graphics Driver via \
+this recipe.  Please see the README in meta-cedartrail for instructions \
+for enabling the build of the driver "
+
+ 
+PR = r0
+
+S  = ${WORKDIR}/cdv-graphics-drivers_${PV}
+
+LICENSE = "Intel Free Distribution Binary License"
+LIC_FILES_CHKSUM = " \
+    file://${S}/usr/share/doc/psb-video-cdv-0.12/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65  \
+    file://${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
+
+DEPENDS = "libva"
+
+CDR_TRAIL = "download.meego.com/live/MeeGo:/1.2.0:/CedarTrail:"
+
+SRC_URI = " \
+  http://${CDR_TRAIL}/non-oss/MeeGo_1.2.0_CedarTrail/i586/psb-video-cdv-0.12-1.1.i586.rpm;name=psb  \
+  http://${CDR_TRAIL}/non-oss/MeeGo_1.2.0_CedarTrail/i586/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm;name=pvr \
+  http://${CDR_TRAIL}/oss/standard/i586/libwsbm-cdv-1.1.0-3.1.i586.rpm;name=libwsbm \
+            "
+SRC_URI[psb.md5sum] = "d4b6b383722264f3b781aeb240c88037"
+SRC_URI[psb.sha256sum] = "e88f95fc73a79adf76ee33d3d9874cec23bb1afe8149d7dc5842d67e58da72f5"
+SRC_URI[pvr.md5sum] = "951fa9edcbc2a3ddb30450079869362e"
+SRC_URI[pvr.sha256sum] = "537dd8a98ac2e3a101063abc62682c3be8c37ac29782a876eafce113ffa5b421"
+SRC_URI[libwsbm.md5sum] = "8d90436b151ddf72f620771f2552b597"
+SRC_URI[libwsbm.sha256sum] = "82f78f47c151f0e7d567574ee372504e5b395fb13796caa765f9c30754b5bf63"
+
+do_configure () {
+
+# Extract  license files from rpms
+rpm2cpio ${WORKDIR}/psb-video-cdv-0.12-1.1.i586.rpm |cpio -ivd ./usr/share/doc/psb-video-cdv-0.12/license.txt
+rpm2cpio ${WORKDIR}/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm |cpio -ivd ./usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt
+
+}
+
+do_install() {
+
+install -m 0644 ${WORKDIR}/psb-video-cdv-0.12-1.1.i586.rpm ${D}
+install -m 0644 ${WORKDIR}/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm ${D}
+install -m 0644 ${WORKDIR}/libwsbm-cdv-1.1.0-3.1.i586.rpm ${D}
+
+cd ${D}
+
+rpm2cpio psb-video-cdv-0.12-1.1.i586.rpm | cpio -idmv
+rpm2cpio pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm | cpio -idmv
+rpm2cpio libwsbm-cdv-1.1.0-3.1.i586.rpm | cpio -idmv
+
+install -m 0755 ${D}/${libdir}/libpvr2d.so.1.7.788837  ${D}/${libdir}/libpvr2d.so
+install -m 0755 ${D}/${libdir}/libsrv_um.so.1.7.788837 ${D}/${libdir}/libsrv_um.so
+install -m 0755 ${D}/${libdir}/libegl4ogl.so.1.7.788837 ${D}/${libdir}/libegl4ogl.so
+install -m 0755 ${D}/${libdir}/libPVROGL_MESA.so.1.7.788837 ${D}/${libdir}/libPVROGL_MESA.so
+install -m 0755 ${D}/${libdir}/libIMGegl.so.1.7.788837 ${D}/${libdir}/libIMGegl.so
+install -m 0755 ${D}/${libdir}/libusc.so.1.7.788837 ${D}/${libdir}/libusc.so
+install -m 0755 ${D}/${libdir}/libOpenVG.so.1.7.788837 ${D}/${libdir}/libOpenVG.so
+
+install -m 0644 ${S}/usr/share/doc/psb-video-cdv-0.12/license.txt ${WORKDIR}/license-destdir/cdv-graphics-drivers/license.txt  
+
+rm -f *.rpm
+}
+
+FILES_${PN} += "${libdir}/pvr/cdv/lib*.so.*"
+FILES_${PN} += "${base_libdir}/firmware"
+FILES_${PN} += "${libdir}/debug/usr/bin"
+FILES_${PN} += "${libdir}/debug/usr/lib"
+FILES_${PN} += "${libdir}/lib*.so"
+
+FILES_${PN} += "${libdir}/dri/*.so"
+FILES_${PN} += "${libdir}/pvr/cdv/dri/*.so"
+FILES_${PN} += "${libdir}/xorg/modules/drivers/*.so"
+FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers/*.so"
+
+FILES_${PN}-dbg += "${libdir}/dri/.debug/*"
+
+addtask check_pvr_license before do_fetch
+
+python do_check_pvr_license() {
+    pn = bb.data.getVar('PN', d, 1)
+    pvr_license = bb.data.getVar('PVR_LICENSE', d, 1)
+    if not pvr_license or not pvr_license.lower() == "yes":
+        bb.debug(1, "Skipping %s because it may have a non-free license" % pn)
+        raise bb.parse.SkipPackage("because it requires PVR_LICENSE = \"yes\" in local.conf to ship")
+}
-- 
1.7.4.1


