Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2EB7E00939; Mon, 13 Mar 2017 20:08:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDD54E0088B
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 20:08:20 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id g2so16741402pge.2
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 20:08:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=6ez3U8ElY5sTvg02o+YOhHGnYtyhaQfniowOxPhpUiI=;
	b=uUlE/cJtgCCiQs2StMGP1YDPEQietp4sq518koKPVHa7F5hdk15+kyAhbS408A/l5Q
	KvoxU1jX8nSX8IgCLa240Pb8HUBlZcmVmzzaKb+xBoyPFz1SAf/mmzp1AdE5rsGsPKmS
	rsH1a2ApX1iQhev/m86iSRQtlfKiRpbEHZOuaWBNjq+zSMi9W7lTOSfNNI8mNevp1/bm
	CgyxUS4OXbf/+joMr2IumqSBLYmu6wa8qx8c0LGhba3W/PYySPfg0O7NCC9ztVDQDSji
	sGlITl8LtcWdnNg2N55cYCWFy62DqT9UwtzulexxBKIQDdGUxD9jmXLGWOHL8mNtfgp0
	wknA==
X-Gm-Message-State: AMke39me0LjKxR7YVyWZeUNQCIbz4W247DNN4HaWfsDaxQgz6VFFUIVGIkBPvd6dU4HlSw==
X-Received: by 10.98.34.211 with SMTP id p80mr40892958pfj.174.1489460899901;
	Mon, 13 Mar 2017 20:08:19 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	c1sm34933299pfk.112.2017.03.13.20.08.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 Mar 2017 20:08:19 -0700 (PDT)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Mar 2017 11:08:05 +0800
Message-Id: <1489460885-28663-1-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
Cc: Jacob Chen <jacob-chen@iotwrt.com>
Subject: [meta-rockchip][PATCH v2] recipes-graphics: Add recipe for rockchip-mali
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Mar 2017 03:08:29 -0000

* add this recipe to download rockchip mali drivers
* support X11,gbm-only,wayland backend on rk3036,rk3288,rk3399
* provide egl,gles,gbm,opencl library
* depend on mesa to provide dev-package

Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
---
 recipes-graphics/libgles/rockchip-mali_git.bb | 89 +++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 recipes-graphics/libgles/rockchip-mali_git.bb

diff --git a/recipes-graphics/libgles/rockchip-mali_git.bb b/recipes-graphics/libgles/rockchip-mali_git.bb
new file mode 100644
index 0000000..02ba5e1
--- /dev/null
+++ b/recipes-graphics/libgles/rockchip-mali_git.bb
@@ -0,0 +1,89 @@
+DESCRIPTION = "GLES libraries for Rockchip SoCs for a family of Mali GPU"
+SECTION = "libs"
+LICENSE = "BINARY"
+LIC_FILES_CHKSUM = "file://LICENSE.TXT;md5=564e729dd65db6f65f911ce0cd340cf9"
+NO_GENERIC_LICENSE[BINARY] = "LICENSE.TXT"
+
+COMPATIBLE_MACHINE = "(rk3036|rk3288|rk3399)"
+
+# There's only hardfp version available
+python __anonymous() {
+    tunes = d.getVar("TUNE_FEATURES", True)
+    if not tunes:
+        return
+    if "callconvention-hard" not in tunes:
+        pkgn = d.getVar("PN", True)
+        pkgv = d.getVar("PV", True)
+        raise bb.parse.SkipPackage("%s-%s ONLY supports hardfp mode for now" % (pkgn, pkgv))
+}
+
+DEPENDS = "libdrm mesa"
+
+PROVIDES += "virtual/egl virtual/libgles1 virtual/libgles2 virtual/libopencl libgbm"
+PROVIDES += "${@bb.utils.contains("DISTRO_FEATURES", "wayland", " virtual/libwayland-egl", " ", d)}"
+
+S = "${WORKDIR}/git"
+
+SRC_URI = "git://github.com/rockchip-linux/libmali.git;branch=rockchip;"
+SRCREV_pn-${PN} = "${AUTOREV}"
+
+INSANE_SKIP_${PN} = "already-stripped ldflags dev-so"
+
+INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
+INHIBIT_PACKAGE_STRIP = "1"
+
+USE_X11 = "${@bb.utils.contains("DISTRO_FEATURES", "x11", "yes", "no", d)}"
+USE_WL = "${@bb.utils.contains("DISTRO_FEATURES", "wayland", "yes", "no", d)}"
+
+MALI_X11_rk3288 = "arm-linux-gnueabihf/libmali-midgard-r9p0-r0p0.so"
+MALI_WAYLAND_rk3288 = "arm-linux-gnueabihf/libmali-midgard-r13p0-r0p0-wayland.so "
+MALI_GBM_rk3288 = "arm-linux-gnueabihf/libmali-midgard-r13p0-r0p0-gbm.so "
+
+MALI_X11_rk3036 = "arm-linux-gnueabihf/libmali-utgard-r6p0.so"
+MALI_WAYLAND_rk3036 = "arm-linux-gnueabihf/libmali-utgard-r7p0-wayland.so"
+MALI_GBM_rk3036 = "arm-linux-gnueabihf/libmali-utgard-r7p0-gbm.so"
+
+MALI_X11_rk3399 = "aarch64-linux-gnu/libmali-midgard-4th-r9p0.so"
+MALI_WAYLAND_rk3399 = "aarch64-linux-gnu/libmali-midgard-4th-r9p0-wayland.so"
+MALI_GBM_rk3399 = "aarch64-linux-gnu/libmali-midgard-4th-r9p0-gbm.so"
+
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+
+do_install () {
+	# Create MALI manifest
+	install -m 755 -d ${D}/${libdir}
+	if [ "${USE_X11}" = "yes" ]; then
+		install ${S}/lib/${MALI_X11} ${D}/${libdir}/libmali.so
+	elif [ "${USE_WL}" = "yes" ]; then
+		install ${S}/lib/${MALI_WAYLAND} ${D}/${libdir}/libmali.so
+	else
+		install ${S}/lib/${MALI_GBM} ${D}/${libdir}/libmali.so
+	fi
+
+	ln -sf libmali.so ${D}/${libdir}/libEGL.so
+	ln -sf libmali.so ${D}/${libdir}/libEGL.so.1
+	ln -sf libmali.so ${D}/${libdir}/libGLESv1_CM.so
+	ln -sf libmali.so ${D}/${libdir}/libGLESv1_CM.so.1
+	ln -sf libmali.so ${D}/${libdir}/libGLESv2.so
+	ln -sf libmali.so ${D}/${libdir}/libGLESv2.so.2
+	ln -sf libmali.so ${D}/${libdir}/libOpenCL.so
+	ln -sf libmali.so ${D}/${libdir}/libOpenCL.so.1
+	ln -sf libmali.so ${D}/${libdir}/libgbm.so
+	ln -sf libmali.so ${D}/${libdir}/libgbm.so.1
+
+	if [ "${USE_WL}" = "yes" ]; then
+		ln -sf libmali.so ${D}/${libdir}/libwayland-egl.so
+	fi
+}
+
+PACKAGES = "${PN}"
+FILES_${PN} += "${libdir}/*.so"
+
+RREPLACES_${PN} = "libegl libgles1 libglesv1-cm1 libgles2 libglesv2-2 libgbm"
+RCONFLICTS_${PN} = "libegl libgles1 libglesv1-cm1 libgles2 libglesv2-2 libgbm"
+RPROVIDES_${PN} += "libegl libgles1 libglesv1-cm1 libgles2 libglesv2-2 libgbm"
+
+# Workaround: libmali.so provided by rk having no SONAME field in it
+# so add it to fix rdepends problems
+RPROVIDES_${PN} += "libwayland-egl.so libgbm.so libGLESv1_CM.so libGLESv2.so libEGL.so libOpenCL.so"
-- 
2.7.4


