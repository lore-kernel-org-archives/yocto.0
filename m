Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 540F8E00A51; Thu, 19 Jan 2017 06:05:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 448A7E00A39
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:18 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id f144so3433774pfa.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=gbJixhP+IC/NAn0GlwK/MygrPd6whRPgGQfIJfOb3OM=;
	b=VrLyTacbPTWfj1kL3GjZfN/3OW8uCAfWuQKnApLzO0yKj8yKGWB6jriDVFmV3qedfh
	2wfbrJVfCRySByFfMgqIQX0CFmhV0SB6xkYml7UcyUHFUNh7zN1RghH4pa0XsXx+yZcu
	VK0wFmyOmCnCZOwyCWHINy+sAJQif7H492UeOXOWompcOvwiEgBbWU8E9ppMbvdF3GsW
	soKABRcCPa4Iu9JsF3THs1aV14UR4S5JwXZMM5/MOd8iaKHihQdrezJnYwKCAs4Hefai
	bTsnGKesu8GSp62h5ymc57f8FQEZVJdwcHa4sD6Ec48uZJ2AMw8RpGhglDvkgrfxdw1C
	BnKw==
X-Gm-Message-State: AIkVDXKMPBqM0RlRPsDT3iSeT2ZAped/X5ek/OU2Hifa1M92ZgYGDheGlyvbz8ATZeDPDQ==
X-Received: by 10.99.131.65 with SMTP id h62mr10468753pge.41.1484834718342;
	Thu, 19 Jan 2017 06:05:18 -0800 (PST)
Received: from localhost.localdomain ([27.155.138.228])
	by smtp.gmail.com with ESMTPSA id
	u78sm9259496pfa.53.2017.01.19.06.05.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 06:05:17 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 22:04:44 +0800
Message-Id: <1484834687-15746-5-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com
Subject: [meta-rockchip][PATCH 4/7] recipes-graphics: Add support for mali-userspace
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
X-List-Received-Date: Thu, 19 Jan 2017 14:05:21 -0000

Add support for mali userspace which are binaries that can be run
with weston and X11.

Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
---
 recipes-graphics/mali-userspace/mali-userspace.inc | 57 ++++++++++++++++++++++
 .../mali-userspace/mali-userspace_t76x.bb          | 18 +++++++
 recipes-graphics/mesa/mesa_%.bbappend              |  9 ++++
 3 files changed, 84 insertions(+)
 create mode 100644 recipes-graphics/mali-userspace/mali-userspace.inc
 create mode 100644 recipes-graphics/mali-userspace/mali-userspace_t76x.bb
 create mode 100644 recipes-graphics/mesa/mesa_%.bbappend

diff --git a/recipes-graphics/mali-userspace/mali-userspace.inc b/recipes-graphics/mali-userspace/mali-userspace.inc
new file mode 100644
index 0000000..d40f583
--- /dev/null
+++ b/recipes-graphics/mali-userspace/mali-userspace.inc
@@ -0,0 +1,57 @@
+SUMMARY = "Userspace mali driver for Midgard-T76x"
+DESCRIPTION = "Userspace mali driver for Midgard-T76x"
+LICENSE = "CLOSED"
+SECTION = "libs"
+
+DEPENDS = "libdrm"
+DEPENDS += "${@bb.utils.contains("DISTRO_FEATURES", "wayland", " mesa", " ", d)}"
+
+PROVIDES += "virtual/egl virtual/libgles1 virtual/libgles2 virtual/libopencl libgbm"
+PROVIDES += "${@bb.utils.contains("DISTRO_FEATURES", "wayland", " virtual/libwayland-egl", " ", d)}"
+
+S = "${WORKDIR}"
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
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+
+do_install () {
+	# Create MALI manifest
+	install -m 755 -d ${D}/${libdir}
+	if [ "${USE_X11}" = "yes" ]; then
+		install ${S}/x11/libmali.so ${D}/${libdir}
+	elif [ "${USE_WL}" = "yes" ]; then
+		install ${S}/wayland/libmali.so ${D}/${libdir}
+	fi
+
+	ln -sf libmali.so ${D}/${libdir}/libEGL.so
+	ln -sf libmali.so ${D}/${libdir}/libGLESv1_CM.so
+	ln -sf libmali.so ${D}/${libdir}/libGLESv2.so
+	ln -sf libmali.so ${D}/${libdir}/libOpenCL.so
+	ln -sf libmali.so ${D}/${libdir}/libgbm.so
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
+RPROVIDES_${PN} = "libegl libgles1 libglesv1-cm1 libgles2 libglesv2-2 libgbm"
+RCONFLICTS_${PN} = "libegl libgles1 libglesv1-cm1 libgles2 libglesv2-2 libgbm"
+
+# Workaround: libmali.so provided by rk having no SONAME field in it
+# so add it to fix rdepends problems
+RPROVIDES_${PN} += "libwayland-egl.so libgbm.so libGLESv1_CM.so libGLESv2.so libEGL.so libOpenCL.so"
diff --git a/recipes-graphics/mali-userspace/mali-userspace_t76x.bb b/recipes-graphics/mali-userspace/mali-userspace_t76x.bb
new file mode 100644
index 0000000..3281ac0
--- /dev/null
+++ b/recipes-graphics/mali-userspace/mali-userspace_t76x.bb
@@ -0,0 +1,18 @@
+require mali-userspace.inc
+
+TYPE = "midgard"
+SW_VER = "r13p0"
+HW_VER = "r0p0"
+
+LIB_PATH = "arm-linux-gnueabihf"
+
+MALI_X11 = "libmali-${TYPE}-${SW_VER}-${HW_VER}.so"
+MALI_WAYLAND = "libmali-${TYPE}-${SW_VER}-${HW_VER}-wayland.so"
+
+do_install_prepend () {
+	mkdir -p x11
+	cp git/lib/${LIB_PATH}/${MALI_X11} x11/libmali.so
+
+	mkdir -p wayland
+	cp git/lib/${LIB_PATH}/${MALI_WAYLAND}  wayland/libmali.so
+}
diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
new file mode 100644
index 0000000..d9cab75
--- /dev/null
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -0,0 +1,9 @@
+PROVIDES_remove = "virtual/libgles1 virtual/libgles2 virtual/egl virtual/libwayland-egl"
+
+do_install_append () {
+    rm -f ${D}/${libdir}/libEGL*
+    rm -f ${D}/${libdir}/libGLESv1_CM.*
+    rm -f ${D}/${libdir}/libGLESv2.*
+    rm -f ${D}/${libdir}/libgbm*
+    rm -f ${D}/${libdir}/libwayland-egl*
+}
-- 
2.7.4


