Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A7CEE011DB
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 15:11:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Oct 2012 15:10:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="224566349"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga002.jf.intel.com with ESMTP; 09 Oct 2012 15:11:11 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Tue,  9 Oct 2012 15:10:03 -0700
Message-Id: <3259734fca50f6ffd7e70ed7829c0a398d4795b0.1349820369.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1349820369.git.nitin.a.kamble@intel.com>
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/5] xf86-video-intel: Bring 2.20.0 version to match released graphics stack
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
X-List-Received-Date: Tue, 09 Oct 2012 22:11:11 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The Intel Linux graphics stack version 12.07 released on 2012-07-24
requires version 2.20.0 as seen here:
   http://intellinuxgraphics.org/2012.07.html

Currently oecore has 2.19.0 version. So get this 2.20.0 version in
meta-intel layer to be used by sugarbay and other BSPs using the
Intel graphics stack.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../xorg-driver/xf86-video-intel_2.20.0.bb         |   26 +++++++++++++++
 .../xorg-driver/xorg-driver-common.inc             |   33 ++++++++++++++++++++
 .../xorg-driver/xorg-driver-video.inc              |    4 ++
 3 files changed, 63 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
 create mode 100644 common/recipes-graphics/xorg-driver/xorg-driver-common.inc
 create mode 100644 common/recipes-graphics/xorg-driver/xorg-driver-video.inc

diff --git a/common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb b/common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
new file mode 100644
index 0000000..a7bf45a
--- /dev/null
+++ b/common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
@@ -0,0 +1,26 @@
+require xorg-driver-video.inc
+
+SUMMARY = "X.Org X server -- Intel integrated graphics chipsets driver"
+
+DESCRIPTION = "intel is an Xorg driver for Intel integrated graphics \
+chipsets. The driver supports depths 8, 15, 16 and 24. On some chipsets, \
+the driver supports hardware accelerated 3D via the Direct Rendering \
+Infrastructure (DRI)."
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=8730ad58d11c7bbad9a7066d69f7808e"
+
+PR = "${INC_PR}.0"
+
+DEPENDS += "virtual/libx11 drm xf86driproto glproto \
+	    virtual/libgl xineramaproto xf86driproto libpciaccess"
+
+
+EXTRA_OECONF += "--disable-xvmc"
+
+# --enable-kms-only option is required by ROOTLESS_X
+EXTRA_OECONF += '${@base_conditional( "ROOTLESS_X", "1", " --enable-kms-only", "", d )}'
+
+COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
+
+SRC_URI[md5sum] = "070bb866b05a16366bd9bb844c9b91aa"
+SRC_URI[sha256sum] = "21949297220ceda32bba430f778c6409002079dc717c7190dbd1062ab4a56783"
diff --git a/common/recipes-graphics/xorg-driver/xorg-driver-common.inc b/common/recipes-graphics/xorg-driver/xorg-driver-common.inc
new file mode 100644
index 0000000..1ed2742
--- /dev/null
+++ b/common/recipes-graphics/xorg-driver/xorg-driver-common.inc
@@ -0,0 +1,33 @@
+DESCRIPTION = "X driver"
+HOMEPAGE = "http://www.x.org"
+BUGTRACKER = "https://bugs.freedesktop.org"
+SECTION = "x11/drivers"
+LICENSE = "MIT-X"
+
+PE = "2"
+INC_PR = "r0"
+
+DEPENDS = "virtual/xserver xproto randrproto util-macros"
+
+SRC_URI = "${XORG_MIRROR}/individual/driver/${BPN}-${PV}.tar.bz2"
+
+S = "${WORKDIR}/${BPN}-${PV}"
+
+FILES_${PN} += " ${libdir}/xorg/modules/drivers/*.so"
+FILES_${PN}-dbg += " ${libdir}/xorg/modules/drivers/.debug"
+
+inherit autotools pkgconfig
+
+# AC_CHECK_FILE doesn't work when cross compiling, so we create a replacement
+# macro that simply assumes the test succeeds. 
+do_configure_prepend () {
+    echo 'AC_DEFUN(CC_AC_CHECK_FILE, $2)' > configure.ac.new
+    sed 's/AC_CHECK_FILE/CC_AC_CHECK_FILE/g' configure.ac >> configure.ac.new
+    mv configure.ac.new configure.ac
+}
+
+# FIXME: We don't want to include the libtool archives (*.la) from modules
+# directory, as they serve no useful purpose. Upstream should fix Makefile.am
+do_install_append() {
+	find ${D}${libdir}/xorg/modules -regex ".*\.la$" | xargs rm -f --
+}
diff --git a/common/recipes-graphics/xorg-driver/xorg-driver-video.inc b/common/recipes-graphics/xorg-driver/xorg-driver-video.inc
new file mode 100644
index 0000000..57c80d1
--- /dev/null
+++ b/common/recipes-graphics/xorg-driver/xorg-driver-video.inc
@@ -0,0 +1,4 @@
+include xorg-driver-common.inc
+
+DEPENDS =+ "renderproto videoproto xextproto fontsproto"
+
-- 
1.7.3.4


