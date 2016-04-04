Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ED99E00AD8; Sun,  3 Apr 2016 17:22:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EC4EE00A9C
	for <yocto@yoctoproject.org>; Sun,  3 Apr 2016 17:22:06 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1amsFt-0002qF-Uv; Mon, 04 Apr 2016 00:20:36 +0000
From: Philip Tricca <flihp@twobit.us>
To: mark.hatle@windriver.com, Joe_MacDonald@mentor.com, yocto@yoctoproject.org
Date: Mon,  4 Apr 2016 00:21:34 +0000
Message-Id: <1459729295-79553-3-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1459729295-79553-1-git-send-email-flihp@twobit.us>
References: <1459729295-79553-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 2/3] Integrate selinux-config into refpolicy_common.
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
X-List-Received-Date: Mon, 04 Apr 2016 00:22:07 -0000

With the virutal package there's no need for a separate recipe to build
the config. This can be generated and included as part of the policy
package.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../packagegroups/packagegroup-core-selinux.bb     |  1 -
 .../packagegroups/packagegroup-selinux-minimal.bb  |  1 -
 recipes-security/refpolicy/refpolicy_common.inc    | 30 ++++++++++++++--
 recipes-security/selinux/selinux-config_0.1.bb     | 40 ----------------------
 4 files changed, 28 insertions(+), 44 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-config_0.1.bb

diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index 62c5a76..c6d22b7 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -22,7 +22,6 @@ RDEPENDS_${PN} = " \
 	packagegroup-selinux-policycoreutils \
 	setools \
 	setools-console \
-	selinux-config \
 	selinux-autorelabel \
 	selinux-init \
 	selinux-labeldev \
diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
index 87ae686..451ae8b 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
@@ -21,7 +21,6 @@ RDEPENDS_${PN} = "\
 	policycoreutils-semodule \
 	policycoreutils-sestatus \
 	policycoreutils-setfiles \
-	selinux-config \
 	selinux-labeldev \
 	virtual/refpolicy \
 "
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index ba887e4..305675f 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -1,3 +1,5 @@
+DEFAULT_ENFORCING ??= "enforcing"
+
 SECTION = "base"
 LICENSE = "GPLv2"
 
@@ -14,7 +16,8 @@ SRC_URI += "file://customizable_types \
 
 S = "${WORKDIR}/refpolicy"
 
-FILES_${PN} = " \
+CONFFILES_${PN} += "${sysconfdir}/selinux/config"
+FILES_${PN} += " \
 	${sysconfdir}/selinux/${POLICY_NAME}/ \
 	${datadir}/selinux/${POLICY_NAME}/*.pp \
 	${localstatedir}/lib/selinux/${POLICY_NAME}/ \
@@ -25,7 +28,6 @@ FILES_${PN}-dev =+ " \
 "
 
 DEPENDS += "checkpolicy-native policycoreutils-native m4-native"
-RDEPENDS_${PN} += "selinux-config"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 
@@ -137,13 +139,37 @@ install_misc_files () {
 	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install-headers
 }
 
+install_config () {
+	echo "\
+# This file controls the state of SELinux on the system.
+# SELINUX= can take one of these three values:
+#     enforcing - SELinux security policy is enforced.
+#     permissive - SELinux prints warnings instead of enforcing.
+#     disabled - No SELinux policy is loaded.
+SELINUX=${DEFAULT_ENFORCING}
+# SELINUXTYPE= can take one of these values:
+#     standard - Standard Security protection.
+#     mls - Multi Level Security protection.
+#     targeted - Targeted processes are protected.
+#     mcs - Multi Category Security protection.
+SELINUXTYPE=${POLICY_TYPE}
+" > ${WORKDIR}/config
+	install -d ${D}/${sysconfdir}/selinux
+	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
+}
+
 do_install () {
 	prepare_policy_store
 	rebuild_policy
 	install_misc_files
+	install_config
 }
 
 do_install_append(){
 	# While building policies on target, Makefile will be searched from SELINUX_DEVEL_PATH
 	echo "SELINUX_DEVEL_PATH=${datadir}/selinux/${POLICY_NAME}/include" > ${D}${sysconfdir}/selinux/sepolgen.conf
 }
+
+sysroot_stage_all_append () {
+	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
+}
diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-security/selinux/selinux-config_0.1.bb
deleted file mode 100644
index e902e98..0000000
--- a/recipes-security/selinux/selinux-config_0.1.bb
+++ /dev/null
@@ -1,40 +0,0 @@
-DEFAULT_ENFORCING ??= "enforcing"
-
-SUMMARY = "SELinux configuration"
-DESCRIPTION = "\
-SELinux configuration files for Yocto. \
-"
-
-SECTION = "base"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-PR = "r4"
-
-S = "${WORKDIR}"
-
-CONFFILES_${PN} += "${sysconfdir}/selinux/config"
-
-PACKAGE_ARCH = "${MACHINE_ARCH}"
-
-do_install () {
-	echo "\
-# This file controls the state of SELinux on the system.
-# SELINUX= can take one of these three values:
-#     enforcing - SELinux security policy is enforced.
-#     permissive - SELinux prints warnings instead of enforcing.
-#     disabled - No SELinux policy is loaded.
-SELINUX=${DEFAULT_ENFORCING}
-# SELINUXTYPE= can take one of these values:
-#     standard - Standard Security protection.
-#     mls - Multi Level Security protection.
-#     targeted - Targeted processes are protected.
-#     mcs - Multi Category Security protection.
-SELINUXTYPE=${@d.getVar("PREFERRED_PROVIDER_virtual/refpolicy", False)[len("refpolicy-"):]}
-" > ${WORKDIR}/config
-	install -d ${D}/${sysconfdir}/selinux
-	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
-}
-
-sysroot_stage_all_append () {
-	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
-}
-- 
2.1.4


