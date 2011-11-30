Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C429BE0030A
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 08:38:57 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Nov 2011 08:38:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="81648583"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by orsmga002.jf.intel.com with ESMTP; 30 Nov 2011 08:38:56 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 30 Nov 2011 10:38:53 -0600
Message-Id: <7da6b2be458f0c479334d3bf87b2c76b57563a54.1322670614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1322670614.git.tom.zanussi@intel.com>
References: <cover.1322670614.git.tom.zanussi@intel.com>
Subject: [PATCH 1/6] libva: new recipe for video acceleration
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
X-List-Received-Date: Wed, 30 Nov 2011 16:38:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds the libva_1.0.10 recipe based on the poky-contrib recipe
by Yu Ke (commit msg copied below).

The original recipe was in meta/recipes-graphics; this patch moves it
to meta-intel/recipes-multimedia since it's multimedia- and
Intel-specific.

The original commit messages (indented):

    libva: add new recpies libva

    libva is a library implementation of "Video Acceleration (VA) API for Linux".
    libva enables and provides access to graphics hardware (GPU) acceleration for
    video processing on Linux and UNIX, includes video decoding, video encoding,
    subpicture blending and rendering.

    This patch add the libva recipes.

    Signed-off-by: Yu Ke <ke.yu@intel.com>

    libva: install some missing .so files

    Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-multimedia/libva/libva_1.0.10.bb |   38 +++++++++++++++++++++++
 1 files changed, 38 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-multimedia/libva/libva_1.0.10.bb

diff --git a/common/recipes-multimedia/libva/libva_1.0.10.bb b/common/recipes-multimedia/libva/libva_1.0.10.bb
new file mode 100644
index 0000000..0cd0444
--- /dev/null
+++ b/common/recipes-multimedia/libva/libva_1.0.10.bb
@@ -0,0 +1,38 @@
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
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=2e48940f94acb0af582e5ef03537800f"
+
+PR = "r1"
+
+DEPENDS = "libxext libxfixes libdrm"
+
+SRC_URI = "http://cgit.freedesktop.org/libva/snapshot/libva-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "959de03d47654adab855e10bff614df3"
+SRC_URI[sha256sum] = "05f757f0043dce9f753d354d15e0cb772b1240cc9d29d26bbb5526285a203693"
+
+inherit autotools pkgconfig
+
+LEAD_SONAME = "libva.so"
+
+PACKAGES =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
+RDEPENDS_${PN} =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
+FILES_${PN}-x11 =+ "${libdir}/libva-x11.*"
+FILES_${PN}-tpi =+ "${libdir}/libva-tpi.*"
+FILES_${PN}-glx =+ "${libdir}/libva-glx.*"
+FILES_${PN}-egl =+ "${libdir}/libva-egl.*"
-- 
1.7.0.4


