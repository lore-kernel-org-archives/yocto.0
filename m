Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A825E00CC9; Tue, 12 Sep 2017 19:43:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3817E00CE7
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:43:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v8D2hCVm007846
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Sep 2017 19:43:12 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 19:43:11 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<Joe_MacDonald@mentor.com>
Date: Tue, 12 Sep 2017 19:42:54 -0700
Message-ID: <ae51829f762db5e04422455e909145c940874847.1505270194.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <cover.1505270194.git.wenzong.fan@windriver.com>
References: <cover.1505270194.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 12/20] selinux-python: add package 2.7 (20170804)
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
X-List-Received-Date: Wed, 13 Sep 2017 02:43:20 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Move packages to python/*:
  - policycoreutils/semanage       -> python/semanage
  - policycoreutils/audit2allow    -> python/audit2allow
  - policycoreutils/sepolgen-ifgen -> python/audit2allow/sepolgen-ifgen
  - policycoreutils/sepolicy       -> python/sepolicy
  - policycoreutils/scripts/chcat  -> python/chcat
  - sepolgen -> python/sepolgen

* Move and rebase patches:
  - policycoreutils-fix-TypeError-for-seobject.py.patch
  - policycoreutils-fix-sepolicy-install-path.patch
  - policycoreutils-process-ValueError-for-sepolicy-seobject.patch

* Cleanup policycoreutils.inc and policycoreutils_2.7.bb

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc       |  80 +---------------
 recipes-security/selinux/policycoreutils_2.7.bb    |   3 -
 recipes-security/selinux/selinux-python.inc        | 106 +++++++++++++++++++++
 .../fix-TypeError-for-seobject.py.patch}           |   0
 .../fix-sepolicy-install-path.patch}               |   0
 ...process-ValueError-for-sepolicy-seobject.patch} |   0
 recipes-security/selinux/selinux-python_2.7.bb     |   7 ++
 7 files changed, 115 insertions(+), 81 deletions(-)
 create mode 100644 recipes-security/selinux/selinux-python.inc
 rename recipes-security/selinux/{policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch => selinux-python/fix-TypeError-for-seobject.py.patch} (100%)
 rename recipes-security/selinux/{policycoreutils/policycoreutils-fix-sepolicy-install-path.patch => selinux-python/fix-sepolicy-install-path.patch} (100%)
 rename recipes-security/selinux/{policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch => selinux-python/process-ValueError-for-sepolicy-seobject.patch} (100%)
 create mode 100644 recipes-security/selinux/selinux-python_2.7.bb

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 9e45e0c..05fd43d 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -23,19 +23,6 @@ inherit selinux pythonnative
 
 DEPENDS += "${@target_selinux(d, 'libpam audit')}"
 
-RDEPENDS_${BPN}-audit2allow = "\
-	python-textutils \
-	libselinux-python \
-	sepolgen \
-"
-RDEPENDS_${BPN}-chcat = "\
-	python-codecs \
-	python-shell \
-	python-stringold \
-	python-unixadmin \
-	${BPN}-python \
-	libselinux-python \
-"
 RDEPENDS_${BPN}-fixfiles += "\
 	${BPN}-setfiles \
 "
@@ -51,27 +38,8 @@ RDEPENDS_${BPN}-newrole += "\
 	libcap-ng \
 	libselinux \
 "
-RDEPENDS_${BPN}-python += "\
-	python-codecs \
-	python-io \
-	python-ipy \
-	python-re \
-	python-stringold \
-	python-syslog \
-	python-unixadmin \
-	libselinux-python \
-	libsemanage-python \
-"
 RDEPENDS_${BPN}-runinit += "libselinux"
 RDEPENDS_${BPN}-secon += "libselinux"
-RDEPENDS_${BPN}-semanage = "\
-	python-core \
-	python-ipy \
-	python-compression \
-	python-xml \
-	${BPN}-python \
-	libselinux-python \
-"
 RDEPENDS_${BPN}-semodule += "\
 	libsepol \
 	libselinux \
@@ -82,16 +50,6 @@ DEPENDS_${BPN}-semodule-deps += "libsepol"
 RDEPENDS_${BPN}-semodule-expand += "libsepol libselinux"
 RDEPENDS_${BPN}-semodule-link += "libsepol libselinux"
 RDEPENDS_${BPN}-semodule-package += "libsepol libselinux"
-RDEPENDS_${BPN}-sepolicy += "\
-	python-argparse \
-	python-codecs \
-	python-core \
-	python-syslog \
-	${BPN}-python \
-"
-# static link to libsepol
-DEPENDS_${BPN}-sepolgen-ifgen += "libsepol"
-RDEPENDS_${BPN}-sepolgen-ifgen += "python libselinux-python"
 RDEPENDS_${BPN}-sestatus += "libselinux"
 RDEPENDS_${BPN}-setfiles += "\
 	libselinux \
@@ -102,43 +60,30 @@ RDEPENDS_${BPN}-setsebool += "\
 	libselinux \
 	libsemanage \
 "
-RDEPENDS_${BPN} += "setools setools-libs ${BPN}-python"
+RDEPENDS_${BPN} += "setools setools-libs selinux-python"
 
 WARN_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${WARN_QA}', d)}"
 ERROR_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${ERROR_QA}', d)}"
 
 
 PACKAGES =+ "\
-	${PN}-audit2allow \
-	${PN}-chcat \
 	${PN}-fixfiles \
 	${PN}-genhomedircon \
 	${PN}-hll \
 	${PN}-loadpolicy \
 	${PN}-newrole \
-	${PN}-python \
 	${PN}-runinit \
 	${PN}-secon \
-	${PN}-semanage \
 	${PN}-semodule \
 	${PN}-semodule-deps \
 	${PN}-semodule-expand \
 	${PN}-semodule-link \
 	${PN}-semodule-package \
-	${PN}-sepolgen-ifgen \
-	${PN}-sepolicy \
 	${PN}-sestatus \
 	${PN}-setfiles \
 	${PN}-setsebool \
 	system-config-selinux \
 "
-FILES_${PN}-audit2allow = "\
-	${bindir}/audit2allow \
-	${bindir}/audit2why \
-"
-FILES_${PN}-chcat = "\
-	${bindir}/chcat \
-"
 FILES_${PN}-fixfiles += "${base_sbindir}/fixfiles"
 FILES_${PN}-genhomedircon += "${sbindir}/genhomedircon"
 FILES_${PN}-loadpolicy += "\
@@ -149,22 +94,13 @@ FILES_${PN}-newrole += "\
 	${bindir}/newrole \
 	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/newrole', '', d)} \
 "
-FILES_${PN}-python = "\
-	${libdir}/python${PYTHON_BASEVERSION}/site-packages/seobject.py* \
-	${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy*.egg-info \
-	${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/* \
-"
 FILES_${PN}-runinit += "\
 	${sbindir}/run_init \
 	${sbindir}/open_init_pty \
 	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/run_init', '', d)} \
 "
-FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/.debug/* ${prefix}/libexec/selinux/hll/.debug"
+FILES_${PN}-dbg += "${prefix}/libexec/selinux/hll/.debug"
 FILES_${PN}-secon += "${bindir}/secon"
-FILES_${PN}-semanage = "\
-	${sbindir}/semanage \
-	${datadir}/bash-completion/completions/semanage \
-"
 FILES_${PN}-semodule += "${sbindir}/semodule"
 FILES_${PN}-semodule-deps += "${bindir}/semodule_deps"
 FILES_${PN}-semodule-expand += "${bindir}/semodule_expand"
@@ -174,17 +110,6 @@ FILES_${PN}-semodule-package += "\
 	${bindir}/semodule_unpackage \
 "
 FILES_${PN}-hll += "${prefix}/libexec/selinux/hll/*"
-
-FILES_${PN}-sepolicy += "\
-	${bindir}/sepolicy \
-	${datadir}/bash-completion/completions/sepolicy \
-	${datadir}/dbus-1/system-services/org.selinux.service \
-	${datadir}/polkit-1/actions/org.selinux.policy \
-"
-FILES_${PN}-sepolgen-ifgen += "\
-	${bindir}/sepolgen-ifgen \
-	${bindir}/sepolgen-ifgen-attr-helper \
-"
 FILES_${PN}-sestatus += "\
 	${sbindir}/sestatus \
 	${sysconfdir}/sestatus.conf \
@@ -199,7 +124,6 @@ FILES_${PN}-setsebool += "\
 "
 
 FILES_system-config-selinux = " \
-    ${bindir}/sepolgen \
     ${datadir}/system-config-selinux/* \
     ${datadir}/icons/hicolor/ \
     ${datadir}/polkit-1/actions/org.selinux.config.policy \
diff --git a/recipes-security/selinux/policycoreutils_2.7.bb b/recipes-security/selinux/policycoreutils_2.7.bb
index 54ec69a..aa4870d 100644
--- a/recipes-security/selinux/policycoreutils_2.7.bb
+++ b/recipes-security/selinux/policycoreutils_2.7.bb
@@ -7,8 +7,5 @@ SRC_URI[md5sum] = "65311b66ae01f7b7ad7c2ea7401b68ed"
 SRC_URI[sha256sum] = "0a1b8a4a323b854981c6755ff025fe98a0f1cff307f109abb260f0490f13e4f4"
 
 SRC_URI += "\
-	file://policycoreutils-fix-sepolicy-install-path.patch \
 	file://policycoreutils-loadpolicy-symlink.patch \
-	file://policycoreutils-process-ValueError-for-sepolicy-seobject.patch \
-	file://policycoreutils-fix-TypeError-for-seobject.py.patch \
 	"
diff --git a/recipes-security/selinux/selinux-python.inc b/recipes-security/selinux/selinux-python.inc
new file mode 100644
index 0000000..cc907ae
--- /dev/null
+++ b/recipes-security/selinux/selinux-python.inc
@@ -0,0 +1,106 @@
+SUMMARY = "Python modules and various SELinux utilities."
+DESCRIPTION = "\
+This package contains Python modules sepolgen, sepolicy; And the \
+SELinux utilities audit2allow, chcat, semanage ..."
+
+SECTION = "base"
+LICENSE = "GPLv2+"
+
+SRC_URI += "file://fix-sepolicy-install-path.patch \
+            file://fix-TypeError-for-seobject.py.patch \
+            file://process-ValueError-for-sepolicy-seobject.patch \
+"
+
+inherit python-dir
+
+DEPENDS += "python-native libsepol"
+RDEPENDS_${BPN}-audit2allow += "\
+        python-textutils \
+        libselinux-python \
+        ${BPN}-sepolgen \
+"
+RDEPENDS_${BPN}-chcat += "\
+        python-codecs \
+        python-shell \
+        python-stringold \
+        python-unixadmin \
+        libselinux-python \
+        ${BPN} \
+"
+RDEPENDS_${BPN} += "\
+        python-codecs \
+        python-io \
+        python-ipy \
+        python-re \
+        python-stringold \
+        python-syslog \
+        python-unixadmin \
+        libselinux-python \
+        libsemanage-python \
+"
+RDEPENDS_${BPN}-semanage += "\
+        python-core \
+        python-ipy \
+        python-compression \
+        python-xml \
+        libselinux-python \
+        ${BPN} \
+"
+RDEPENDS_${BPN}-sepolicy += "\
+        python-argparse \
+        python-codecs \
+        python-core \
+        python-syslog \
+        ${BPN} \
+"
+RDEPENDS_${BPN}-sepolgen-ifgen += "\
+        python \
+        libselinux-python \
+"
+
+PACKAGES =+ "\
+        ${PN}-audit2allow \
+        ${PN}-sepolgen-ifgen \
+        ${PN}-chcat \
+        ${PN}-semanage \
+        ${PN}-sepolgen \
+        ${PN}-sepolicy \
+"
+FILES_${PN}-audit2allow = "\
+        ${bindir}/audit2allow \
+        ${bindir}/audit2why \
+"
+FILES_${PN}-chcat = "\
+        ${bindir}/chcat \
+"
+FILES_${PN}-semanage = "\
+        ${sbindir}/semanage \
+        ${datadir}/bash-completion/completions/semanage \
+"
+# The ${bindir}/sepolgen is a symlink to ${bindir}/sepolicy
+FILES_${PN}-sepolicy += "\
+        ${bindir}/sepolgen \
+        ${bindir}/sepolicy \
+        ${datadir}/bash-completion/completions/sepolicy \
+"
+FILES_${PN}-sepolgen-ifgen += "\
+        ${bindir}/sepolgen-ifgen \
+        ${bindir}/sepolgen-ifgen-attr-helper \
+"
+FILES_${PN}-sepolgen += "\
+        ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolgen* \
+        ${localstatedir}/lib/sepolgen/perm_map \
+"
+# Map to policycoreutils-python in 2.6
+FILES_${PN} += "\
+        ${libdir}/python${PYTHON_BASEVERSION}/site-packages/seobject.py* \
+        ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy*.egg-info \
+        ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/* \
+"
+
+EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
+do_install() {
+        oe_runmake DESTDIR=${D} \
+                PYTHONLIBDIR='${libdir}/python${PYTHON_BASEVERSION}/site-packages' \
+                install
+}
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch b/recipes-security/selinux/selinux-python/fix-TypeError-for-seobject.py.patch
similarity index 100%
rename from recipes-security/selinux/policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch
rename to recipes-security/selinux/selinux-python/fix-TypeError-for-seobject.py.patch
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fix-sepolicy-install-path.patch b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
similarity index 100%
rename from recipes-security/selinux/policycoreutils/policycoreutils-fix-sepolicy-install-path.patch
rename to recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch b/recipes-security/selinux/selinux-python/process-ValueError-for-sepolicy-seobject.patch
similarity index 100%
rename from recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch
rename to recipes-security/selinux/selinux-python/process-ValueError-for-sepolicy-seobject.patch
diff --git a/recipes-security/selinux/selinux-python_2.7.bb b/recipes-security/selinux/selinux-python_2.7.bb
new file mode 100644
index 0000000..f98be5f
--- /dev/null
+++ b/recipes-security/selinux/selinux-python_2.7.bb
@@ -0,0 +1,7 @@
+include selinux_20170804.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "b118229d34a6aec34471c3c2c9cac172"
+SRC_URI[sha256sum] = "4217cb965ecda96c91e15ffcc2e7ddd13ecc2bf5631100f3cd072a7616f140ed"
-- 
2.13.0


