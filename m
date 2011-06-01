Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D022F4C8086F
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 14:58:17 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Jun 2011 12:58:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; d="scan'208";a="12142237"
Received: from unknown (HELO localhost) ([10.255.13.85])
	by fmsmga001.fm.intel.com with ESMTP; 01 Jun 2011 12:58:08 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 14:55:57 -0500
Message-Id: <5b509a5e7bc0fc37844d684ef3fb870d45e1b3ef.1306958045.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306958045.git.tom.zanussi@intel.com>
References: <cover.1306958045.git.tom.zanussi@intel.com>
Subject: [PATCH 1/6] meta-crownbay: new recipe for emgd 1.6 driver binaries
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
X-List-Received-Date: Wed, 01 Jun 2011 19:58:18 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds a new recipe for the emgd 1.6 driver binaries.  For emgd
1.6, the layout of the binaries has changed, making them easier to
install, and we also take the opportunity to sanitize the naming and
make it more apparent that these are the emgd driver bits
corresponding to a particular emgd release, 1.6 in this case.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.6.bb            |   25 ++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6/.gitignore
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.bb

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6/.gitignore b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.bb b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.bb
new file mode 100644
index 0000000..4d5d1e2
--- /dev/null
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.bb
@@ -0,0 +1,25 @@
+SUMMARY = "EMGD 1.6 xserver binaries"
+DESCRIPTION = "EMGD 1.6 includes some userspace binaries that use non-free licensing.  Intel Open Source Technology Center unfortunately has no power to change that, but tries to make their use as painless as possible.  Please see the README in meta-crownbay/ for instructions on the (simple) manual steps necessary to make the necessary binaries available to this recipe.  Please do that before building an image."
+
+LICENSE = "Intel-binary-only"
+LIC_FILES_CHKSUM = "file://${WORKDIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
+PR = "r0"
+
+FILESPATH = "${FILE_DIRNAME}/emgd-driver-bin-1.6"
+
+FILES_${PN} = "${libdir}/*.so.* ${libdir}/dri ${libdir}/xorg/modules/drivers"
+
+SRC_URI = "file://lib \
+           file://License.txt"
+
+S = "${WORKDIR}"
+
+do_install () {
+	install -d -m 0755 ${D}/${libdir}/dri ${D}/${libdir}/xorg/modules/drivers
+
+	cp -PR	${S}/lib/lib*					${D}${libdir}
+	install -m 0755	${S}/lib/xorg/modules/drivers/*		${D}${libdir}/xorg/modules/drivers/
+	install -m 0755	${S}/lib/dri/*				${D}${libdir}/dri/
+}
+
+LEAD_SONAME = "libEGL.so"
-- 
1.7.0.4


