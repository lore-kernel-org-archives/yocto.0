Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BA26E0050B; Mon,  6 Mar 2017 19:34:47 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EF11E003C1
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 19:34:35 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 77so8809422pgc.0
	for <yocto@yoctoproject.org>; Mon, 06 Mar 2017 19:34:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=dqjBF99Yp8WV9rBOnGYeXwwGDZoI34FW0arJklx5i7c=;
	b=twHSSPm7SVA5/z80IeURUdnmFUTmfos52e9+FjS0eZ43xaSxJoTozak/Ht0fc1W50+
	8FNpB2+eEOWTfpXDQmvR8Kqy1OwLEfqJmnioHsh92FosQds72e4Ezp84FsY0Z9KNT5MZ
	8mejqb2NDv6Ttz3vVLso275i52eWrynADTS7/I+SCZIE0YDeA5DUS64EZyIhZqHenh97
	bFL36jXbqRa9oHMMayvW/GijWzu/hyrw01FCQvRpIzzE7+sIx22HDn2rbh3R9yp0CWh/
	Cees52kFkK9aRWAO9KVAevB/9+w6Osl3RF1pbBq+yeEfkNTaAaO0cIn07NDTNL8SRYvW
	N7+g==
X-Gm-Message-State: AMke39mVaGg6iCy4s1XAF6YGgEWk4nvBBSKf/bS6pHs9x6Zu4rXavHy9RFlYvMAirmkJdQ==
X-Received: by 10.99.102.135 with SMTP id a129mr24970814pgc.220.1488857674738; 
	Mon, 06 Mar 2017 19:34:34 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	t133sm42472773pgc.24.2017.03.06.19.34.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 06 Mar 2017 19:34:34 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: twoerner@gmail.com
Date: Tue,  7 Mar 2017 11:34:08 +0800
Message-Id: <1488857648-12633-1-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
Cc: yocto@yoctoproject.org, eddie.cai@rock-chips.com,
	Jacob Chen <jacob-chen@iotwrt.com>
Subject: [meta-rockchip][PATCH v2] recipes-graphics: mali-userspace: add
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
X-List-Received-Date: Tue, 07 Mar 2017 03:34:47 -0000

Do some modifying according to meta-sunxi

* add COMPATIBLE_MACHINE statement
* detect hard-float
* combine to one bb file

The difference is it depend on mesa to provide dev-package rather than offer it
by itself, which can save some time to solve the compile errors.

Change-Id: If81c363d4cfb11ade08b6c7cfcbfbe56e9d8824b
---
 .../mali-userspace/mali-userspace_git.bb           | 83 ++++++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 recipes-graphics/mali-userspace/mali-userspace_git.bb

diff --git a/recipes-graphics/mali-userspace/mali-userspace_git.bb b/recipes-graphics/mali-userspace/mali-userspace_git.bb
new file mode 100644
index 0000000..787f79d
--- /dev/null
+++ b/recipes-graphics/mali-userspace/mali-userspace_git.bb
@@ -0,0 +1,83 @@
+SUMMARY = "Userspace mali driver"
+DESCRIPTION = "Userspace mali driver"
+LICENSE = "CLOSED"
+SECTION = "libs"
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
+MALI_X11_rk3288 = "arm-linux-gnueabihf/libmali-midgard-r13p0-r0p0.so"
+MALI_WAYLAND_rk3288 = "arm-linux-gnueabihf/libmali-midgard-r13p0-r0p0-wayland.so "
+MALI_GBM_rk3288 = "arm-linux-gnueabihf/libmali-midgard-r13p0-r0p0-gbm.so "
+
+MALI_X11_rk3036 = "arm-linux-gnueabihf/libmali-utgard-r6p0.so"
+
+MALI_X11_rk3399 = "aarch64-linux-gnu/libmali-midgard-4th-r9p0.so"
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
+
+# Workaround: libmali.so provided by rk having no SONAME field in it
+# so add it to fix rdepends problems
+RPROVIDES_${PN} += "libwayland-egl.so libgbm.so libGLESv1_CM.so libGLESv2.so libEGL.so libOpenCL.so"
-- 
2.7.4


