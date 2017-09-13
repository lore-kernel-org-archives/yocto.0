Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22F89E00CC9; Tue, 12 Sep 2017 19:43:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C26AE00CD0
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:43:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v8D2hAxu007843
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Sep 2017 19:43:10 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 19:43:09 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<Joe_MacDonald@mentor.com>
Date: Tue, 12 Sep 2017 19:42:51 -0700
Message-ID: <1d778da283cab4f12c5c70eea419b67559365faa.1505270194.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
In-Reply-To: <cover.1505270194.git.wenzong.fan@windriver.com>
References: <cover.1505270194.git.wenzong.fan@windriver.com>
Subject: [PATCH 09/20] mcstrans: add package 2.7 (20170804)
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
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

From: Wenzong Fan <wenzong.fan@windriver.com>

Move policycoreutils/mcstrans to mcstrans:

* Move and rebase patches:
  - mcstrans-de-bashify.patch
  - 0001-mcstrans-fix-the-init-script.patch

* Remove useless patch:
  - enable-mcstrans.patch

* Cleanup policycoreutils_2.7.bb and policycoreutils.inc.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/mcstrans.inc              | 49 ++++++++++++++
 .../0001-mcstrans-fix-the-init-script.patch        |  9 +--
 .../selinux/mcstrans/mcstrans-de-bashify.patch     | 26 ++++++++
 recipes-security/selinux/mcstrans_2.7.bb           |  7 ++
 recipes-security/selinux/policycoreutils.inc       | 76 +---------------------
 .../selinux/policycoreutils/enable-mcstrans.patch  | 17 -----
 .../policycoreutils/mcstrans-de-bashify.patch      | 12 ----
 recipes-security/selinux/policycoreutils_2.7.bb    |  2 -
 8 files changed, 88 insertions(+), 110 deletions(-)
 create mode 100644 recipes-security/selinux/mcstrans.inc
 rename recipes-security/selinux/{policycoreutils => mcstrans}/0001-mcstrans-fix-the-init-script.patch (74%)
 create mode 100644 recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch
 create mode 100644 recipes-security/selinux/mcstrans_2.7.bb
 delete mode 100644 recipes-security/selinux/policycoreutils/enable-mcstrans.patch
 delete mode 100644 recipes-security/selinux/policycoreutils/mcstrans-de-bashify.patch

diff --git a/recipes-security/selinux/mcstrans.inc b/recipes-security/selinux/mcstrans.inc
new file mode 100644
index 0000000..590e6d2
--- /dev/null
+++ b/recipes-security/selinux/mcstrans.inc
@@ -0,0 +1,49 @@
+SUMMARY = "Daemon to translate SELinux MCS/MLS sensitivity labels"
+DESCRIPTION = "\
+mcstrans provides an translation daemon to translate SELinux categories \
+from internal representations to user defined representation."
+
+SECTION = "base"
+LICENSE = "GPLv2+"
+
+SRC_URI += "file://mcstrans-de-bashify.patch \
+            file://0001-mcstrans-fix-the-init-script.patch \
+"
+
+inherit systemd update-rc.d
+
+DEPENDS += "libsepol libselinux libcap"
+
+EXTRA_OEMAKE += "SYSTEMDDIR=${D}${systemd_unitdir}"
+do_install_append() {
+    install -d ${D}${sbindir}
+    install -m 755 utils/untranscon ${D}${sbindir}/
+    install -m 755 utils/transcon ${D}${sbindir}/
+
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+        install -d ${D}${sysconfdir}/tmpfiles.d
+        echo "d ${localstatedir}/run/setrans - - - -" \
+            > ${D}${sysconfdir}/tmpfiles.d/setrans.conf
+    else
+        install -d ${D}${sysconfdir}/default/volatiles
+        echo "d root root 0755 /var/run/setrans none" \
+            >${D}${sysconfdir}/default/volatiles/volatiles.80_mcstrans
+    fi
+    install -d ${D}${datadir}/mcstrans
+    cp -r share/* ${D}${datadir}/mcstrans/.
+}
+
+SYSTEMD_SERVICE_mcstrans = "mcstrans.service"
+INITSCRIPT_PACKAGES = "mcstrans"
+INITSCRIPT_NAME_mcstrans = "mcstrans"
+INITSCRIPT_PARAMS_mcstrans = "defaults"
+
+pkg_postinst_mcstrans () {
+    if [ -z "$D" ]; then
+        if command -v systemd-tmpfiles >/dev/null; then
+            systemd-tmpfiles --create ${sysconfdir}/tmpfiles.d/setrans.conf
+        elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
+            ${sysconfdir}/init.d/populate-volatile.sh update
+        fi
+    fi
+}
diff --git a/recipes-security/selinux/policycoreutils/0001-mcstrans-fix-the-init-script.patch b/recipes-security/selinux/mcstrans/0001-mcstrans-fix-the-init-script.patch
similarity index 74%
rename from recipes-security/selinux/policycoreutils/0001-mcstrans-fix-the-init-script.patch
rename to recipes-security/selinux/mcstrans/0001-mcstrans-fix-the-init-script.patch
index 39be80a..5f7163d 100644
--- a/recipes-security/selinux/policycoreutils/0001-mcstrans-fix-the-init-script.patch
+++ b/recipes-security/selinux/mcstrans/0001-mcstrans-fix-the-init-script.patch
@@ -5,14 +5,15 @@ Upstream-Status: Inappropriate [embedded specific]
 replace daemon with start-stop-daemon, due to not daemon functions
 
 Signed-off-by: Roy Li <rongqing.li@windriver.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
- mcstrans/src/mcstrans.init | 2 +-
+ src/mcstrans.init | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
-diff --git a/mcstrans/src/mcstrans.init b/mcstrans/src/mcstrans.init
+diff --git a/src/mcstrans.init b/src/mcstrans.init
 index 2804ec0..c660290 100644
---- a/mcstrans/src/mcstrans.init
-+++ b/mcstrans/src/mcstrans.init
+--- a/src/mcstrans.init
++++ b/src/mcstrans.init
 @@ -51,7 +51,7 @@ start(){
  	fi
  
diff --git a/recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch b/recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch
new file mode 100644
index 0000000..805d7e5
--- /dev/null
+++ b/recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch
@@ -0,0 +1,26 @@
+commit 54875dcb50f5e40fc86d6fe98dde244bfe4751af
+Author: Joe MacDonald <joe_macdonald@mentor.com>
+Date:   Fri Aug 7 15:16:45 2015 -0400
+
+    mcstrans: remove dependency on bash in initscript
+
+    There were no apparent bashisms in mcstrans.init, so remove the dependency
+    on bash.
+
+    Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+
+Upstream-Status: Pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ src/mcstrans.init |    2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+--- a/src/mcstrans.init
++++ b/src/mcstrans.init
+@@ -1,4 +1,4 @@
+-#!/bin/bash
++#!/bin/sh
+ #
+ # mcstransd        This starts and stops mcstransd
+ #
diff --git a/recipes-security/selinux/mcstrans_2.7.bb b/recipes-security/selinux/mcstrans_2.7.bb
new file mode 100644
index 0000000..2d5bbfd
--- /dev/null
+++ b/recipes-security/selinux/mcstrans_2.7.bb
@@ -0,0 +1,7 @@
+include selinux_20170804.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
+SRC_URI[md5sum] = "edba0f72fdf7fdd1ad0a2c6d102e8cfa"
+SRC_URI[sha256sum] = "cdca003282d160b50ad695ab5b013c05ca21387a419b2f89288534184d16e1e2"
diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index fe01004..e8f6e5f 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -10,7 +10,6 @@ LICENSE = "GPLv2+"
 SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', '', d)} \
             file://policycoreutils-fixfiles-de-bashify.patch \
             file://policycoreutils-sandbox-de-bashify.patch \
-            file://mcstrans-de-bashify.patch \
            "
 
 PAM_SRC_URI = "file://pam.d/newrole \
@@ -21,9 +20,7 @@ DEPENDS += "libsepol libselinux libsemanage libcap gettext-native"
 EXTRA_DEPENDS = "libcap-ng libcgroup setools"
 DEPENDS += "${@['', '${EXTRA_DEPENDS}']['${PN}' != '${BPN}-native']}"
 
-inherit selinux systemd pythonnative update-rc.d
-
-PROVIDES += "mcstrans"
+inherit selinux pythonnative
 
 DEPENDS += "${@target_selinux(d, 'libpam audit')}"
 
@@ -144,31 +141,8 @@ PACKAGES =+ "\
 	${PN}-sestatus \
 	${PN}-setfiles \
 	${PN}-setsebool \
-	mcstrans \
-	mcstrans-doc \
 	system-config-selinux \
 "
-PKGV_mcstrans = "0.3.2"
-PKGV_mcstrans-doc = "0.3.2"
-SUMMARY_mcstrans = "Daemon to translate SELinux MCS/MLS sensitivity labels"
-DESCRIPTION_mcstrans = "\
-        Security-enhanced Linux is a feature of the Linux kernel and a number \
-        of utilities with enhanced security functionality designed to add \
-        mandatory access controls to Linux.  The Security-enhanced Linux \
-        kernel contains new architectural components originally developed to \
-        improve the security of the Flask operating system. These \
-        architectural components provide general support for the enforcement \
-        of many kinds of mandatory access control policies, including those \
-        based on the concepts of Type Enforcement®, Role-based Access \
-        Control, and Multi-level Security. \
-         \
-        mcstrans provides an translation daemon to translate SELinux categories \
-        from internal representations to user defined representation. \
-        "
-SUMMARY_mcstrans-doc = "${SUMMARY_mcstrans} man pages and examples"
-DESCRIPTION_mcstrans-doc = "${DESCRIPTION_mcstrans} \
-        This package contains man pages and examples. \
-        "
 FILES_${PN}-audit2allow = "\
 	${bindir}/audit2allow \
 	${bindir}/audit2why \
@@ -240,22 +214,6 @@ FILES_${PN}-setsebool += "\
 	${sbindir}/setsebool \
 	${datadir}/bash-completion/completions/setsebool \
 "
-FILES_mcstrans = "\
-	${base_sbindir}/mcstransd \
-	${sbindir}/untranscon \
-	${sbindir}/transcon \
-	${sysconfdir}/init.d/mcstrans \
-	${systemd_unitdir}/system/mcstrans.service \
-	${sysconfdir}/default/volatiles/volatiles.80_mcstrans \
-	${sysconfdir}/tmpfiles.d/setrans.conf \
-"
-
-FILES_mcstrans-doc = "\
-    /usr/share/man/man8/mcstransd.8 \
-    /usr/share/man/man8/mcs.8 \
-    /usr/share/man/man8/setrans.conf.8 \
-    ${datadir}/mcstrans \
-"
 
 FILES_system-config-selinux = " \
     ${bindir}/sepolgen \
@@ -304,23 +262,6 @@ do_install_prepend() {
 	export SEMODULE_PATH=${sbindir} SYSTEMDDIR=${D}/${systemd_unitdir}
 }
 
-do_install_append_class-target() {
-	install -m 755 mcstrans/utils/untranscon ${D}${sbindir}/
-	install -m 755 mcstrans/utils/transcon ${D}${sbindir}/
-
-	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
-		install -d ${D}${sysconfdir}/tmpfiles.d
-		echo "d ${localstatedir}/run/setrans - - - -" \
-		    > ${D}${sysconfdir}/tmpfiles.d/setrans.conf
-	else
-		install -d ${D}${sysconfdir}/default/volatiles
-		echo "d root root 0755 /var/run/setrans none" \
-			>${D}${sysconfdir}/default/volatiles/volatiles.80_mcstrans
-	fi
-	install -d ${D}${datadir}/mcstrans
-	cp -r mcstrans/share/* ${D}${datadir}/mcstrans/.
-}
-
 do_install_virtclass-native() {
 	for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
 	     oe_runmake -C $PCU_CMD install \
@@ -342,18 +283,3 @@ do_install_append_class-target() {
 	#   $ semanage permissive [OPTS]
 	install -d ${D}${localstatedir}/lib/selinux
 }
-
-SYSTEMD_SERVICE_mcstrans = "mcstrans.service"
-INITSCRIPT_PACKAGES = "mcstrans"
-INITSCRIPT_NAME_mcstrans = "mcstrans"
-INITSCRIPT_PARAMS_mcstrans = "defaults"
-
-pkg_postinst_mcstrans () {
-    if [ -z "$D" ]; then
-        if command -v systemd-tmpfiles >/dev/null; then
-            systemd-tmpfiles --create ${sysconfdir}/tmpfiles.d/setrans.conf
-        elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
-            ${sysconfdir}/init.d/populate-volatile.sh update
-        fi
-    fi
-}
diff --git a/recipes-security/selinux/policycoreutils/enable-mcstrans.patch b/recipes-security/selinux/policycoreutils/enable-mcstrans.patch
deleted file mode 100644
index e923903..0000000
--- a/recipes-security/selinux/policycoreutils/enable-mcstrans.patch
+++ /dev/null
@@ -1,17 +0,0 @@
-Add the "mcstrans" subdir so it gets built too.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Roy Li <rongqing.li@windriver.com>
-diff --git a/Makefile b/Makefile
-index 83ebd45..3ae784f 100644
---- a/Makefile
-+++ b/Makefile
-@@ -1,5 +1,7 @@
- SUBDIRS = sepolicy setfiles semanage load_policy newrole run_init sandbox secon audit2allow sestatus semodule_package semodule semodule_link semodule_expand semodule_deps sepolgen-ifgen setsebool scripts po man gui
- 
-+SUBDIRS += mcstrans
-+
- INOTIFYH = $(shell ls /usr/include/sys/inotify.h 2>/dev/null)
- 
- ifeq (${INOTIFYH}, /usr/include/sys/inotify.h)
diff --git a/recipes-security/selinux/policycoreutils/mcstrans-de-bashify.patch b/recipes-security/selinux/policycoreutils/mcstrans-de-bashify.patch
deleted file mode 100644
index 86141a2..0000000
--- a/recipes-security/selinux/policycoreutils/mcstrans-de-bashify.patch
+++ /dev/null
@@ -1,12 +0,0 @@
----
- mcstrans/src/mcstrans.init |    2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
---- a/mcstrans/src/mcstrans.init
-+++ b/mcstrans/src/mcstrans.init
-@@ -1,4 +1,4 @@
--#!/bin/bash
-+#!/bin/sh
- #
- # mcstransd        This starts and stops mcstransd
- #
diff --git a/recipes-security/selinux/policycoreutils_2.7.bb b/recipes-security/selinux/policycoreutils_2.7.bb
index 50f15d0..d407ac3 100644
--- a/recipes-security/selinux/policycoreutils_2.7.bb
+++ b/recipes-security/selinux/policycoreutils_2.7.bb
@@ -12,6 +12,4 @@ SRC_URI += "\
 	file://policycoreutils-loadpolicy-symlink.patch \
 	file://policycoreutils-process-ValueError-for-sepolicy-seobject.patch \
 	file://policycoreutils-fix-TypeError-for-seobject.py.patch \
-	file://0001-mcstrans-fix-the-init-script.patch \
-	file://enable-mcstrans.patch \
 	"
-- 
2.13.0


