Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A1E5E00AD0; Sun,  2 Apr 2017 19:20:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D0BBE00AA5
	for <yocto@yoctoproject.org>; Sun,  2 Apr 2017 19:20:14 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id o123so26401384pga.1
	for <yocto@yoctoproject.org>; Sun, 02 Apr 2017 19:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=cyW4OiCLwMaJEOBcz/CcMfCzBsa+cahv5kfQ/MhbJpo=;
	b=te1QdLVCdKciYR1+dXhln371+B837QEViZCpuYlT2HMccURiOjq1aIxnPzYBTfIz4w
	rFE2kv1q4c6xiui0PcExsY9qgk7xwf9W341Hi7j8smfmeN9uTWq8kNPFkLyq8bE1ynzV
	f3f+2oS/5naQfvL1TiANbb4v3rCHQ+XABWVjlyMZtoahFZswb4oyKe54lXsOrLNHDLtP
	3/SYkvdPldiNJLf2DXeauYl73USHcU1CdL1esGqwBcnVpTohGf5nM5TnHkVQxTJlY/V7
	t/yqmiFbEyoWnCozzbmzCxOEPBe4EwdvK4+i6fRNrVT/NgpdLvK6MAQJS9CVazyPmK75
	8jSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=cyW4OiCLwMaJEOBcz/CcMfCzBsa+cahv5kfQ/MhbJpo=;
	b=rz+Q+4lybpIs1XURdNJ5XzsMCx1d7/LGMifd2oaug9aE8ILEvEUt2R9OxV6YdkFZJw
	9Ijy/c5I/yZre78j6dzV4oBStize/2hQUVd4EjjFexkNmqLLFFBo6iiXHLJamSif+e/G
	M7T5P5qkjkWUXmkakXzkocTimGdSDmNOKXdxARq0wCu8V1pgaC6D4ewaIChh1IiFhIhI
	3rR1Vkj36BfT3nO5E1BpD60je1ER2IitYyhi6C6E5I1//5UK8NJ4RBhZhtWk1o+CXS9G
	NOvpIXy9FFzXQw9zp0WiXpR1xGbq3mAIbKotdZ10rq1v84iKwQTuaSxo2l/WJ8bEg2YS
	/L1A==
X-Gm-Message-State: AFeK/H0+EbziP3VIT/W4XE2tZG+crMBA+XJLXxDzEJD3hdjwOqTT9DhYGIUUWEMiMtFjXg==
X-Received: by 10.84.141.36 with SMTP id 33mr18708771plu.81.1491186014185;
	Sun, 02 Apr 2017 19:20:14 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	a77sm22109468pfl.91.2017.04.02.19.20.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 02 Apr 2017 19:20:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  2 Apr 2017 19:20:10 -0700
Message-Id: <1491186010-5930-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1491186010-5930-1-git-send-email-akuster808@gmail.com>
References: <1491186010-5930-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] apparmor: update to 2.11.0 plus ptest
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
X-List-Received-Date: Mon, 03 Apr 2017 02:20:17 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/AppArmor/apparmor_2.10.95.bb | 116 -----------------------
 recipes-security/AppArmor/apparmor_2.11.0.bb  | 127 ++++++++++++++++++++++++++
 recipes-security/AppArmor/files/run-ptest     |   4 +
 3 files changed, 131 insertions(+), 116 deletions(-)
 delete mode 100644 recipes-security/AppArmor/apparmor_2.10.95.bb
 create mode 100644 recipes-security/AppArmor/apparmor_2.11.0.bb
 create mode 100644 recipes-security/AppArmor/files/run-ptest

diff --git a/recipes-security/AppArmor/apparmor_2.10.95.bb b/recipes-security/AppArmor/apparmor_2.10.95.bb
deleted file mode 100644
index de09e29..0000000
--- a/recipes-security/AppArmor/apparmor_2.10.95.bb
+++ /dev/null
@@ -1,116 +0,0 @@
-SUMMARY = "AppArmor another MAC control system"
-DESCRIPTION = "user-space parser utility for AppArmor \
- This provides the system initialization scripts needed to use the \
- AppArmor Mandatory Access Control system, including the AppArmor Parser \
- which is required to convert AppArmor text profiles into machine-readable \
- policies that are loaded into the kernel for use with the AppArmor Linux \
- Security Module."
-HOMEAPAGE = "http://apparmor.net/"
-SECTION = "admin"
-
-LICENSE = "GPLv2 & GPLv2+ & BSD-3-Clause & LGPLv2.1+"
-LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=fd57a4b0bc782d7b80fd431f10bbf9d0"
-
-DEPENDS = "bison-native apr apache2"
-
-SRC_URI = " \
-	http://archive.ubuntu.com/ubuntu/pool/main/a/${BPN}/${BPN}_${PV}.orig.tar.gz \
-	file://disable_pdf.patch \
-	file://apparmor.rc \
-	file://functions \
-	file://apparmor \
-	file://apparmor.service \
-	"
-
-SRC_URI[md5sum] = "71a13b9d6ae0bca4f5375984df1a51e7"
-SRC_URI[sha256sum] = "3f659a599718f4a5e2a33140916715f574a5cb3634a6b9ed6d29f7b0617e4d1a"
-
-PARALLEL_MAKE = ""
-
-inherit pkgconfig autotools-brokensep update-rc.d python-dir ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
-
-S = "${WORKDIR}/apparmor-${PV}"
-
-PACKAGECONFIG ?="man"
-PACKAGECONFIG[man] = "--enable-man-pages, --disable-man-pages"
-
-PAMLIB="${@bb.utils.contains('DISTRO_FEATURES', 'pam', '1', '0', d)}"
-
-do_configure() {
-	cd ${S}/libraries/libapparmor
-	autoconf --force
-	libtoolize --automake -c
-	automake -ac
-	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
-	sed -i -e 's#^YACC.*#YACC := bison#' ${S}/parser/Makefile
-	sed -i -e 's#^LEX.*#LEX := flex#' ${S}/parser/Makefile
-}
-
-do_compile () {
-	cd ${S}/libraries/libapparmor
-	oe_runmake
-        cd ${S}/binutils
-        oe_runmake
-        cd ${S}/utils
-        oe_runmake
-	cd ${S}/parser
-        oe_runmake
-	cd ${S}/profiles
-        oe_runmake
-
- 	cd ${S}/changehat/mod_apparmor
-        oe_runmake
-
-	if test -z "${PAMLIB}" ; then
-		cd ${S}/changehat/pam_apparmor
-        	oe_runmake
-	fi
-}
-
-do_install () {
-	install -d ${D}/${INIT_D_DIR}
-	install -d ${D}/lib/apparmor
-		
-	cd ${S}/libraries/libapparmor
-	oe_runmake DESTDIR="${D}" install
-
-        cd ${S}/binutils
-	oe_runmake DESTDIR="${D}" install
-
-        cd ${S}/utils
-	oe_runmake DESTDIR="${D}" install
-
-	cd ${S}/parser
-	oe_runmake DESTDIR="${D}" install
-
-	cd ${S}/profiles
-	oe_runmake DESTDIR="${D}" install
-
- 	cd ${S}/changehat/mod_apparmor
-	oe_runmake DESTDIR="${D}" install
-
-	if test -z "${PAMLIB}" ; then
-		cd ${S}/changehat/pam_apparmor
-		oe_runmake DESTDIR="${D}" install
-	fi
-
-	install ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
-
-	install ${WORKDIR}/functions ${D}/lib/apparmor
-}
-
-INITSCRIPT_PACKAGES = "${PN}"
-INITSCRIPT_NAME = "apparmor"
-INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
-
-SYSTEMD_PACKAGES = "${PN}"
-SYSTEMD_SERVICE_${PN} = "apparmor.service"
-SYSTEMD_AUTO_ENABLE = "disable"
-
-PACKAGES += "python-${PN} mod-${PN}"
-
-FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor"
-FILES_mod-${PN} = "${libdir}/apache2/modules/*"
-FILES_python-${PN} = "${PYTHON_SITEPACKAGES_DIR}"
-
-RDEPENDS_${PN} += "bash perl"
diff --git a/recipes-security/AppArmor/apparmor_2.11.0.bb b/recipes-security/AppArmor/apparmor_2.11.0.bb
new file mode 100644
index 0000000..0e6b920
--- /dev/null
+++ b/recipes-security/AppArmor/apparmor_2.11.0.bb
@@ -0,0 +1,127 @@
+SUMMARY = "AppArmor another MAC control system"
+DESCRIPTION = "user-space parser utility for AppArmor \
+ This provides the system initialization scripts needed to use the \
+ AppArmor Mandatory Access Control system, including the AppArmor Parser \
+ which is required to convert AppArmor text profiles into machine-readable \
+ policies that are loaded into the kernel for use with the AppArmor Linux \
+ Security Module."
+HOMEAPAGE = "http://apparmor.net/"
+SECTION = "admin"
+
+LICENSE = "GPLv2 & GPLv2+ & BSD-3-Clause & LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=fd57a4b0bc782d7b80fd431f10bbf9d0"
+
+DEPENDS = "bison-native apr apache2 gettext-native coreutils-native"
+
+SRC_URI = " \
+	http://archive.ubuntu.com/ubuntu/pool/main/a/${BPN}/${BPN}_${PV}.orig.tar.gz \
+	file://apparmor.rc \
+	file://functions \
+	file://apparmor \
+	file://apparmor.service \
+        file://ptest_install.patch \
+        file://run-ptest \
+	"
+
+SRC_URI[md5sum] = "899fd834dc5c8ebf2d52b97e4a174af7"
+SRC_URI[sha256sum] = "b1c489ea11e7771b8e6b181532cafbf9ebe6603e3cb00e2558f21b7a5bdd739a"
+
+PARALLEL_MAKE = ""
+
+inherit pkgconfig autotools-brokensep update-rc.d python3-dir perlnative ptest
+inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+
+S = "${WORKDIR}/apparmor-${PV}"
+
+PACKAGECONFIG ?="man"
+PACKAGECONFIG[man] = "--enable-man-pages, --disable-man-pages"
+PACKAGECONFIG[python3] = "--with-python, --without-python, python3 swig-native"
+PACKAGECONFIG[perl] = "--with-perl, --without-perl, perl perl-native"
+
+PAMLIB="${@bb.utils.contains('DISTRO_FEATURES', 'pam', '1', '0', d)}"
+
+do_configure() {
+	cd ${S}/libraries/libapparmor
+	autoconf --force
+	libtoolize --automake -c
+	automake -ac
+	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
+	sed -i -e 's#^YACC.*#YACC := bison#' ${S}/parser/Makefile
+	sed -i -e 's#^LEX.*#LEX := flex#' ${S}/parser/Makefile
+}
+
+do_compile () {
+	oe_runmake -C ${B}/libraries/libapparmor
+        oe_runmake -C ${B}/binutils
+        oe_runmake -C ${B}/utils
+        oe_runmake -C ${B}/parser
+        oe_runmake -C ${B}/profiles
+        oe_runmake -C ${B}/changehat/mod_apparmor
+
+	if test -z "${PAMLIB}" ; then
+        	oe_runmake -C ${B}/changehat/pam_apparmor
+	fi
+}
+
+do_install () {
+	install -d ${D}/${INIT_D_DIR}
+	install -d ${D}/lib/apparmor
+		
+	oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" install
+	oe_runmake -C ${B}/binutils DESTDIR="${D}" install
+	oe_runmake -C ${B}/utils DESTDIR="${D}" install
+	oe_runmake -C ${B}/parser DESTDIR="${D}" install
+	oe_runmake -C ${B}/profiles DESTDIR="${D}" install
+	oe_runmake -C ${B}/changehat/mod_apparmor DESTDIR="${D}" install
+
+	if test -z "${PAMLIB}" ; then
+		oe_runmake -C ${B}/changehat/pam_apparmor DESTDIR="${D}" install
+	fi
+
+	install ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
+	install ${WORKDIR}/functions ${D}/lib/apparmor
+}
+
+do_compile_ptest () {
+        oe_runmake -C ${B}/tests/regression/apparmor
+        oe_runmake -C ${B}/parser/tst
+        oe_runmake -C ${B}/libraries/libapparmor
+}
+
+do_install_ptest () {
+	t=${D}/${PTEST_PATH}/testsuite
+	install -d ${t}
+	install -d ${t}/tests/regression/apparmor
+	cp -rf ${B}/tests/regression/apparmor ${t}/tests/regression
+
+	install -d ${t}/parser/tst
+	cp -rf ${B}/parser/tst ${t}/parser
+	cp ${B}/parser/apparmor_parser ${t}/parser
+	cp ${B}/parser/frob_slack_rc ${t}/parser
+
+	install -d ${t}/libraries/libapparmor
+	cp -rf ${B}/libraries/libapparmor ${t}/libraries
+
+	install -d ${t}/common
+	cp -rf ${B}/common ${t}
+
+	install -d ${t}/binutils
+	cp -rf ${B}/binutils ${t}
+}
+
+INITSCRIPT_PACKAGES = "${PN}"
+INITSCRIPT_NAME = "apparmor"
+INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
+
+SYSTEMD_PACKAGES = "${PN}"
+SYSTEMD_SERVICE_${PN} = "apparmor.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
+PACKAGES += "python-${PN} mod-${PN}"
+
+FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor"
+FILES_mod-${PN} = "${libdir}/apache2/modules/*"
+FILES_python-${PN} = "${PYTHON_SITEPACKAGES_DIR}"
+
+RDEPENDS_${PN} += "bash lsb"
+RDEPENDS_${PN}-ptest += "coreutils dbus-lib"
diff --git a/recipes-security/AppArmor/files/run-ptest b/recipes-security/AppArmor/files/run-ptest
new file mode 100644
index 0000000..3b8e427
--- /dev/null
+++ b/recipes-security/AppArmor/files/run-ptest
@@ -0,0 +1,4 @@
+#! /bin/sh
+cd testsuite
+
+make -C  tests/regression/apparmor tests
-- 
2.7.4


