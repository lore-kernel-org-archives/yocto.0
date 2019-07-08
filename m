Return-Path: <luca.boccassi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A53D5E00C02; Mon,  8 Jul 2019 08:42:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (luca.boccassi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 893E3E00BAD
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 08:42:19 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id c2so17647594wrm.8
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2019 08:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=YNwm+bvpd04l4zmnxEVg8lcXxv5aY21mRQnVKpwNoJI=;
	b=KBgi/Eu4Q3oJmVAg8bVsMpvOCpRDE8duR2g87lir1qbQbcMawj8xdOc5T21GkSzAcf
	DCUX6go8DsfUArZIQY9kj2FhBJ7GGuv0mt3n9kWbl5L/X5GllRhIYr5OeJ0vnMWxFRCq
	p19py62YR6mcHzB3z0kSN+WdWI5RUSaE5wCnrXmdWM9aiA24cqkg/FNdW983rmygX4nA
	qODTcTdzg3WZ9VWp/KQ8rlBUGEK2q3YQpvR9npEwIKAzI6notMkuyap4uhTisQzf46kS
	T/wp2e+O+ebh9/+Uf4drbEiHNz/K2oDIPmnth9AUOvXg28HhqRQGaVzKrpOl+h3lBC+C
	4FSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=YNwm+bvpd04l4zmnxEVg8lcXxv5aY21mRQnVKpwNoJI=;
	b=uKboB2j481xgePVmS9D4o49yQGf7a3iVK7ZCUnVDYGEWQFZlclYe6Go8o8k9/Rdjy0
	poX3yCMoo9iC/PYBD+nehvgkTilxHVxB7P2X5bhyPIgfjVZ4BRv0wxCCWMMOP26curDn
	FeL9UHIF1da1JELG9otHnrGQIbhrfHqvai5NIy4rTsSry+BrZ0gTjFJrdDSvwcfEAyp2
	Vo8qr8oEviEDAq6ZrK9ys1CYoAxVP3MOnhFRNv7a39l7yR3yABJpmsJRsK3OSzSV63wH
	qhZ5d2mMRGhvUO+O4UfUeFQx2+MEIt3+fopQ9b9apRCnIEI+oeh0ZV3BVPD3aVM5KQnM
	O5FQ==
X-Gm-Message-State: APjAAAUFzE/mjgi3tKYreZmwaaI7WSNMaWDN2qfW0y+EaRlRjuSu7BME
	r/+ILZ8JMjkHJYNY4XKuQ5RKtojr
X-Google-Smtp-Source: APXvYqyJRHVcldwayw7PhAPtEObRRxU9Dgeq4YWQ/+f374MGhwHme2gQNBn8M/23q0G1PGFN7CPZKw==
X-Received: by 2002:adf:f3cc:: with SMTP id g12mr18768790wrp.149.1562600537827;
	Mon, 08 Jul 2019 08:42:17 -0700 (PDT)
Received: from localhost ([88.98.246.218]) by smtp.gmail.com with ESMTPSA id
	g19sm21362197wrb.52.2019.07.08.08.42.16
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 08 Jul 2019 08:42:17 -0700 (PDT)
From: luca.boccassi@gmail.com
To: yocto@yoctoproject.org
Date: Mon,  8 Jul 2019 16:42:12 +0100
Message-Id: <20190708154212.20598-1-luca.boccassi@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH meta-selinux] selinux: add nativesdk support for libselinux, libsepol and setfiles
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
X-List-Received-Date: Mon, 08 Jul 2019 15:42:20 -0000
Content-Transfer-Encoding: 8bit

From: Luca Boccassi <luca.boccassi@microsoft.com>

It is useful to be able to set labels at build time, via the SDK.
Add support for building a nativesdk package for
policycoreutils-setfiles and its dependencies, libselinux and libsepol.
---
 recipes-security/selinux/libselinux.inc      | 37 +++++++++++++++-----
 recipes-security/selinux/libsepol.inc        |  2 +-
 recipes-security/selinux/policycoreutils.inc | 31 ++++++++++++++--
 3 files changed, 57 insertions(+), 13 deletions(-)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index 6e115e3..c7da6f4 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -7,11 +7,12 @@ LICENSE = "PD"
 
 inherit lib_package pythonnative
 
-DEPENDS += "libsepol python libpcre swig-native"
+DEPENDS += "libsepol libpcre"
+DEPENDS += "${@['', ' python swig-native']['${PN}' != 'nativesdk-${BPN}']}"
 DEPENDS_append_libc-musl = " fts"
 RDEPENDS_${PN}-python += "python-core python-shell"
 
-PACKAGES += "${PN}-python"
+PACKAGES += "${@['', '${PN}-python']['${PN}' != 'nativesdk-${BPN}']}"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/selinux/.debug/*"
 
@@ -27,18 +28,36 @@ EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre' LIBSEPOLA='${STAGING_LIBDIR}/libsep
 EXTRA_OEMAKE_append_libc-musl = " FTS_LDLIBS=-lfts"
 
 do_compile_append() {
-    oe_runmake pywrap -j1 \
-            INCLUDEDIR='${STAGING_INCDIR}' \
-            LIBDIR='${STAGING_LIBDIR}' \
-            PYINC='-I${STAGING_INCDIR}/python${PYTHON_BASEVERSION}'
+    if '${PN}' != 'nativesdk-${BPN}'; then
+        oe_runmake pywrap -j1 \
+                INCLUDEDIR='${STAGING_INCDIR}' \
+                LIBDIR='${STAGING_LIBDIR}' \
+                PYINC='-I${STAGING_INCDIR}/python${PYTHON_BASEVERSION}'
+    fi
 }
 
 do_install_append() {
-    oe_runmake install-pywrap swigify \
-            PYTHONLIBDIR=${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages
+    if '${PN}' != 'nativesdk-${BPN}'; then
+        oe_runmake install-pywrap swigify \
+                PYTHONLIBDIR=${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages
+    fi
     if ! ${@bb.utils.contains('DISTRO_FEATURES','usrmerge','true','false',d)}; then
         rm -rf ${D}${base_sbindir}
     fi
 }
 
-BBCLASSEXTEND = "native"
+do_compile_class-nativesdk() {
+    oe_runmake INCLUDEDIR='${STAGING_INCDIR}' LIBDIR='${STAGING_LIBDIR}'
+}
+
+do_install_class-nativesdk() {
+    oe_runmake install \
+        DESTDIR="${D}" \
+        PREFIX="${prefix}" \
+        INCLUDEDIR="${includedir}" \
+        LIBDIR="${libdir}" \
+        SHLIBDIR="${base_libdir}" \
+        SBINDIR="${base_sbindir}"
+}
+
+BBCLASSEXTEND = "native nativesdk"
diff --git a/recipes-security/selinux/libsepol.inc b/recipes-security/selinux/libsepol.inc
index a8ee749..041dadd 100644
--- a/recipes-security/selinux/libsepol.inc
+++ b/recipes-security/selinux/libsepol.inc
@@ -14,4 +14,4 @@ EXTRA_OEMAKE += "RANLIB='$(AR) s'"
 
 DEPENDS += "flex-native"
 
-BBCLASSEXTEND = "native"
+BBCLASSEXTEND = "native nativesdk"
diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 85ff164..1310804 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -15,9 +15,11 @@ PAM_SRC_URI = "file://pam.d/newrole \
                file://pam.d/run_init \
 "
 
-DEPENDS += "libsepol libselinux libsemanage libcap gettext-native"
+DEPENDS += "libsepol libselinux libcap"
 EXTRA_DEPENDS = "libcap-ng libcgroup"
-DEPENDS += "${@['', '${EXTRA_DEPENDS}']['${PN}' != '${BPN}-native']}"
+DEPENDS += "${@['', '${EXTRA_DEPENDS}']['${PN}' != '${BPN}-native' and '${PN}' != 'nativesdk-${BPN}']}"
+TARGET_DEPENDS = " libsemanage gettext-native"
+DEPENDS += "${@['', '${TARGET_DEPENDS}']['${PN}' != 'nativesdk-${BPN}']}"
 
 inherit selinux pythonnative
 
@@ -78,6 +80,13 @@ PACKAGES =+ "\
 	${PN}-setfiles \
 	${PN}-setsebool \
 "
+
+# only policycoreutils-setfiles is supported for the native SDK target
+python () {
+    if d.getVar("PN").startswith("nativesdk-"):
+        d.setVar("PACKAGES", d.getVar("PN") + "-setfiles")
+}
+
 FILES_${PN}-fixfiles += "${base_sbindir}/fixfiles"
 FILES_${PN}-genhomedircon += "${base_sbindir}/genhomedircon"
 FILES_${PN}-loadpolicy += "\
@@ -100,9 +109,17 @@ FILES_${PN}-sestatus += "\
 	${base_sbindir}/sestatus \
 	${sysconfdir}/sestatus.conf \
 "
+# Install the debug files and manpages in the SDK, so that they can be used
+# by developers
 FILES_${PN}-setfiles += "\
 	${base_sbindir}/restorecon \
 	${base_sbindir}/setfiles \
+	${@['', '${base_sbindir}/restorecon_xattr']['${PN}' == 'nativesdk-${BPN}']} \
+	${@['', '${datadir}/man/man8/restorecon.8']['${PN}' == 'nativesdk-${BPN}']} \
+	${@['', '${datadir}/man/man8/restorecon_xattr.8']['${PN}' == 'nativesdk-${BPN}']} \
+	${@['', '${datadir}/man/man8/setfiles.8']['${PN}' == 'nativesdk-${BPN}']} \
+	${@['', '${base_sbindir}/.debug/restorecon_xattr']['${PN}' == 'nativesdk-${BPN}']} \
+	${@['', '${base_sbindir}/.debug/setfiles']['${PN}' == 'nativesdk-${BPN}']} \
 "
 FILES_${PN}-setsebool += "\
 	${base_sbindir}/setsebool \
@@ -130,7 +147,7 @@ EXTRA_OEMAKE += "\
         SBINDIR=${base_sbindir} \
 "
 
-BBCLASSEXTEND = "native"
+BBCLASSEXTEND = "native nativesdk"
 
 PCU_NATIVE_CMDS = "setfiles semodule hll"
 
@@ -142,6 +159,10 @@ do_compile_class-native() {
 	done
 }
 
+do_compile_class-nativesdk() {
+	oe_runmake -C setfiles INCLUDEDIR='${STAGING_INCDIR}' LIBDIR='${STAGING_LIBDIR}'
+}
+
 sysroot_stage_dirs_append_class-native() {
 	cp -R $from/${prefix}/libexec $to/${prefix}/libexec
 }
@@ -168,6 +189,10 @@ do_install_class-native() {
 	done
 }
 
+do_install_class-nativesdk() {
+	oe_runmake -C setfiles install DESTDIR="${D}" PREFIX="${prefix}" SBINDIR="${base_sbindir}"
+}
+
 do_install_append_class-target() {
 	if [ -e ${WORKDIR}/pam.d ]; then
 		install -d ${D}${sysconfdir}/pam.d/
-- 
2.20.1


