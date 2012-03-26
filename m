Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6DC1E013A8
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:58:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Mar 2012 14:58:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="133370813"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by fmsmga001.fm.intel.com with ESMTP; 26 Mar 2012 14:58:58 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon, 26 Mar 2012 07:49:26 -0700
Message-Id: <314c73d314bea709a8c7a35733a533303ea51613.1332797429.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332797429.git.rahul.saxena@intel.com>
References: <cover.1332797429.git.rahul.saxena@intel.com>
Subject: [PATCH 08/14] meta-cedartrail: add libva recipe
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
X-List-Received-Date: Mon, 26 Mar 2012 21:58:59 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

The libva recipe is based on libva recipe published by Tom Zanussi
in meta-intel/common area in the 1.2_Mx branches. The main difference is
that this recipe sources the packages from the Cedar Trail section of
the MeeGo download website.

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 meta-cedartrail/recipes-multimedia/libva/libva.inc |   59 ++++++++++++++++++++
 .../recipes-multimedia/libva/libva_1.0.15.bb       |   31 ++++++++++
 2 files changed, 90 insertions(+), 0 deletions(-)
 create mode 100644 meta-cedartrail/recipes-multimedia/libva/libva.inc
 create mode 100644 meta-cedartrail/recipes-multimedia/libva/libva_1.0.15.bb

diff --git a/meta-cedartrail/recipes-multimedia/libva/libva.inc b/meta-cedartrail/recipes-multimedia/libva/libva.inc
new file mode 100644
index 0000000..2c1c75d
--- /dev/null
+++ b/meta-cedartrail/recipes-multimedia/libva/libva.inc
@@ -0,0 +1,59 @@
+SUMMARY = "Video Acceleration (VA) API for Linux"
+DESCRIPTION = "Video Acceleration API (VA API) is a library (libVA) \
+and API specification which enables and provides access to graphics \
+hardware (GPU) acceleration for video processing on Linux and UNIX \
+based operating systems. Accelerated processing includes video \
+decoding, video encoding, subpicture blending and rendering. The \
+specification was originally designed by Intel for its GMA (Graphics \
+Media Accelerator) series of GPU hardware, the API is however not \
+limited to GPUs or Intel specific hardware, as other hardware and \
+manufacturers can also freely use this API for hardware accelerated \
+video decoding."
+
+HOMEPAGE = "http://www.freedesktop.org/wiki/Software/vaapi"
+BUGTRACKER = "https://bugs.freedesktop.org"
+
+SECTION = "x11"
+
+INC_PR = "r1"
+
+DEPENDS = "libxext libxfixes libdrm mesa-dri"
+
+inherit autotools pkgconfig
+
+PACKAGES =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
+PROVIDES =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
+PACKAGES =+ "${PN}-x11-dev ${PN}-tpi-dev ${PN}-glx-dev ${PN}-egl-dev"
+PACKAGES =+ "${PN}-x11-dbg ${PN}-tpi-dbg ${PN}-glx-dbg ${PN}-egl-dbg"
+RPROVIDES_${PN}-dev =+ "${PN}-x11-dev ${PN}-tpi-dev ${PN}-glx-dev ${PN}-egl-dev"
+
+RDEPENDS_${PN}-tpi =+ "${PN}"
+RDEPENDS_${PN}-x11 =+ "${PN}"
+RDEPENDS_${PN}-glx =+ "${PN}-x11"
+RDEPENDS_${PN}-egl =+ "${PN}-x11"
+
+FILES_${PN}-dbg += "${libdir}/dri/.debug"
+FILES_${PN} += "${libdir}/dri"
+
+FILES_${PN}-x11 =+ "${libdir}/libva-x11*${SOLIBS}"
+FILES_${PN}-tpi =+ "${libdir}/libva-tpi*${SOLIBS}"
+FILES_${PN}-glx =+ "${libdir}/libva-glx*${SOLIBS}"
+FILES_${PN}-egl =+ "${libdir}/libva-egl*${SOLIBS}"
+
+FILES_${PN}-x11-dev =+ "${libdir}/libva-x11*${SOLIBSDEV}"
+FILES_${PN}-tpi-dev =+ "${libdir}/libva-tpi*${SOLIBSDEV}"
+FILES_${PN}-glx-dev =+ "${libdir}/libva-glx*${SOLIBSDEV}"
+FILES_${PN}-egl-dev =+ "${libdir}/libva-egl*${SOLIBSDEV}"
+FILES_${PN}-x11-dev =+ "${libdir}/libva-x11*.la"
+FILES_${PN}-tpi-dev =+ "${libdir}/libva-tpi*.la"
+FILES_${PN}-glx-dev =+ "${libdir}/libva-glx*.la"
+FILES_${PN}-egl-dev =+ "${libdir}/libva-egl*.la"
+FILES_${PN}-x11-dev =+ "${libdir}/pkgconfig/libva-x11*.pc"
+FILES_${PN}-tpi-dev =+ "${libdir}/pkgconfig/libva-tpi*.pc"
+FILES_${PN}-glx-dev =+ "${libdir}/pkgconfig/libva-glx*.pc"
+FILES_${PN}-egl-dev =+ "${libdir}/pkgconfig/libva-egl*.pc"
+
+FILES_${PN}-x11-dbg =+ "${libdir}/.debug/libva-x11.*"
+FILES_${PN}-tpi-dbg =+ "${libdir}/.debug/libva-tpi.*"
+FILES_${PN}-glx-dbg =+ "${libdir}/.debug/libva-glx.*"
+FILES_${PN}-egl-dbg =+ "${libdir}/.debug/libva-egl.*"
diff --git a/meta-cedartrail/recipes-multimedia/libva/libva_1.0.15.bb b/meta-cedartrail/recipes-multimedia/libva/libva_1.0.15.bb
new file mode 100644
index 0000000..2800464
--- /dev/null
+++ b/meta-cedartrail/recipes-multimedia/libva/libva_1.0.15.bb
@@ -0,0 +1,31 @@
+require libva.inc
+
+LICENSE = "CC-BY-3.0"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
+
+PR = R0 
+
+CDR_TRAIL = "download.meego.com/live/MeeGo:/1.2.0:/CedarTrail:"
+
+SRC_URI = " \
+    http://${CDR_TRAIL}/oss/standard/i586/libva-1.0.15-1.1.i586.rpm;name=binary  \
+    http://${CDR_TRAIL}/oss/standard/i586/libva-devel-1.0.15-1.1.i586.rpm;name=devel  \
+"
+
+SRC_URI[binary.md5sum] = "cb326945cec5ea4d1d369efc7a56e4f4"
+SRC_URI[binary.sha256sum] = "e96f44647d5e9a4e2a7c769ed24d6bc142d928041300ea3e2e76e6af2d154926"
+SRC_URI[devel.md5sum] = "799348cf8b6d239076d1b11844b94299"
+SRC_URI[devel.sha256sum] = "f1ae4028d471790a1e7d601b69106824e4628e6db380e91eaaf08fa493e1a802"
+
+do_install() {
+
+install -m 0644 ${WORKDIR}/libva-1.0.15-1.1.i586.rpm ${D}
+install -m 0644 ${WORKDIR}/libva-devel-1.0.15-1.1.i586.rpm ${D}
+
+cd ${D}
+
+rpm2cpio libva-1.0.15-1.1.i586.rpm | cpio -idmv
+rpm2cpio libva-devel-1.0.15-1.1.i586.rpm | cpio -idmv
+
+rm -f *.rpm
+}
-- 
1.7.4.1


