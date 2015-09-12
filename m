Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BBCBE00D64; Fri, 11 Sep 2015 22:18:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A88C3E00D01
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 22:18:42 -0700 (PDT)
Received: from c-50-137-125-184.hsd1.ma.comcast.net ([50.137.125.184]
	helo=localhost.localdomain)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZadBS-0000yR-SO; Sat, 12 Sep 2015 05:17:09 +0000
From: Philip Tricca <flihp@twobit.us>
To: Joe_MacDonald@mentor.com
Date: Fri, 11 Sep 2015 22:18:24 -0700
Message-Id: <1442035106-9671-7-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1442035106-9671-1-git-send-email-flihp@twobit.us>
References: <1442035106-9671-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.137.125.184
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [PATCH][meta-selinux 6/8] policycoreutuils: Bump version to 2.4.
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
X-List-Received-Date: Sat, 12 Sep 2015 05:18:51 -0000

This integrates the new hll tool for compiling pp files into cil.
The hack to stage pp into the sysroot is a bit weird but the libexec
dir seems to be something bitbake doesn't account for.
Had to pull one patch from upstream to build the MLS policy. This fixes
an error where the auditadm_r and secadm_r roles end up defined twice in
the CIL.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/selinux/policycoreutils.inc       | 11 +++-
 .../policycoreutils-pp-builtin-roles.patch         | 70 ++++++++++++++++++++++
 recipes-security/selinux/policycoreutils_2.3.bb    | 19 ------
 recipes-security/selinux/policycoreutils_2.4.bb    | 20 +++++++
 4 files changed, 99 insertions(+), 21 deletions(-)
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-pp-builtin-roles.patch
 delete mode 100644 recipes-security/selinux/policycoreutils_2.3.bb
 create mode 100644 recipes-security/selinux/policycoreutils_2.4.bb

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 3427bec..7b75efe 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -126,6 +126,7 @@ PACKAGES =+ "\
 	${PN}-chcat \
 	${PN}-fixfiles \
 	${PN}-genhomedircon \
+	${PN}-hll \
 	${PN}-loadpolicy \
 	${PN}-newrole \
 	${PN}-python \
@@ -195,7 +196,7 @@ FILES_${PN}-runinit += "\
 	${sbindir}/open_init_pty \
 	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/run_init', '', d)} \
 "
-FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/.debug/*"
+FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/.debug/* ${prefix}/libexec/selinux/hll/.debug"
 FILES_${PN}-sandbox += "\
 	${datadir}/sandbox/* \
 	${bindir}/sandbox \
@@ -215,6 +216,8 @@ FILES_${PN}-semodule-package += "\
 	${bindir}/semodule_package \
 	${bindir}/semodule_unpackage \
 "
+FILES_${PN}-hll += "${prefix}/libexec/selinux/hll/*"
+
 FILES_${PN}-sepolicy += "\
 	${bindir}/sepolicy \
 	${datadir}/bash-completion/completions/sepolicy \
@@ -274,7 +277,7 @@ EXTRA_OEMAKE += "INITDIR=${D}/etc/init.d"
 
 BBCLASSEXTEND = "native"
 
-PCU_NATIVE_CMDS = "setfiles semodule_package semodule semodule_link semodule_expand semodule_deps"
+PCU_NATIVE_CMDS = "setfiles semodule_package semodule semodule_link semodule_expand semodule_deps hll"
 
 do_compile_virtclass-native() {
 	for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
@@ -284,6 +287,10 @@ do_compile_virtclass-native() {
 	done
 }
 
+sysroot_stage_dirs_append_virtclass-native() {
+	cp -R $from/${prefix}/libexec $to/${prefix}/libexec
+}
+
 do_compile_prepend() {
 	export PYTHON=python
 	export PYLIBVER='python${PYTHON_BASEVERSION}'
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-pp-builtin-roles.patch b/recipes-security/selinux/policycoreutils/policycoreutils-pp-builtin-roles.patch
new file mode 100644
index 0000000..f01cc3a
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-pp-builtin-roles.patch
@@ -0,0 +1,70 @@
+libsepol: with pp to CIL, always write auditadm_r and secadm_r roles to the base module
+
+In fedora and refpolicy, the auditadm_r and secadm_r roles can be in
+either the base module or a non-base module, or they could be in both.
+This means that it is possible for duplicate role declarations to exist.
+CIL does not allow duplicate declarations of anything, but there is no
+way for the pp compiler to know if the roles are declared in which
+module, or if they are in both when compiling a single module. This
+means we cannot use the same hack that we use for user_r, staff_r, etc.,
+to generate CIL role declarations (i.e. only create role declarations
+for these when defined in base).
+
+So only for these two roles, always declare them as part of base,
+regardless of where or if they are defined. This means that turning off
+the auditadm module will never remove the auditamd_r role (likewise for
+secadm), whereas right now, in some cases it would. This also means that
+role allow rules will still exist for these roles even with the modules
+removed. However, this is okay because the roles would not have any
+types associated with them so no access would be allowed.
+
+Signed-off-by: Steve Lawrence <slawrence@tresys.com>
+Reported-by: Miroslav Grepl <mgrepl@redhat.com>
+
+Index: policycoreutils-2.4/hll/pp/pp.c
+===================================================================
+--- policycoreutils-2.4.orig/hll/pp/pp.c
++++ policycoreutils-2.4/hll/pp/pp.c
+@@ -2000,7 +2000,10 @@ static int role_to_cil(int indent, struc
+ 			                    !strcmp(key, "sysadm_r") ||
+ 			                    !strcmp(key, "system_r") ||
+ 			                    !strcmp(key, "unconfined_r"));
+-			if ((is_base_role && pdb->policy_type == SEPOL_POLICY_BASE) || !is_base_role) {
++			int is_builtin_role = (!strcmp(key, "auditadm_r") ||
++						!strcmp(key, "secadm_r"));
++			if ((is_base_role && pdb->policy_type == SEPOL_POLICY_BASE) ||
++				(!is_base_role && !is_builtin_role)) {
+ 				cil_println(indent, "(role %s)", key);
+ 			}
+ 		}
+@@ -3594,6 +3597,17 @@ static int generate_default_object(void)
+ 	return 0;
+ }
+ 
++static int generate_builtin_roles(void)
++{
++	// due to inconsistentencies between policies and CIL not allowing
++	// duplicate roles, some roles are always created, regardless of if they
++	// are declared in modules or not
++	cil_println(0, "(role auditadm_r)");
++	cil_println(0, "(role secadm_r)");
++
++	return 0;
++}
++
+ static int generate_gen_require_attribute(void)
+ {
+ 	cil_println(0, "(typeattribute " GEN_REQUIRE_ATTR ")");
+@@ -3678,6 +3692,12 @@ static int module_package_to_cil(struct
+ 		if (rc != 0) {
+ 			goto exit;
+ 		}
++
++		// roles that can exist in base, non-base module or both
++		rc = generate_builtin_roles();
++		if (rc != 0) {
++			goto exit;
++		}
+ 
+ 		// default attribute to be used to mimic gen_require in CIL
+ 		rc = generate_gen_require_attribute();
diff --git a/recipes-security/selinux/policycoreutils_2.3.bb b/recipes-security/selinux/policycoreutils_2.3.bb
deleted file mode 100644
index c001ba0..0000000
--- a/recipes-security/selinux/policycoreutils_2.3.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-include selinux_20140506.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "9a5db20adfe2250f53833b277ac796ae"
-SRC_URI[sha256sum] = "864cfaee58b5d2f15b140c354e59666e57143293c89f2b2e85bc0d0e4beefcd2"
-
-SRC_URI += "\
-	file://policycoreutils-fix-sepolicy-install-path.patch \
-	file://policycoreutils-make-O_CLOEXEC-optional.patch \
-	file://policycoreutils-loadpolicy-symlink.patch \
-	file://policycoreutils-semanage-edit-user.patch \
-	file://policycoreutils-process-ValueError-for-sepolicy-seobject.patch \
-	file://policycoreutils-fix-TypeError-for-seobject.py.patch \
-	file://0001-mcstrans-fix-the-init-script.patch \
-	file://enable-mcstrans.patch \
-	file://policycoreutils-fts_flags-FTS_NOCHDIR.patch \
-	"
diff --git a/recipes-security/selinux/policycoreutils_2.4.bb b/recipes-security/selinux/policycoreutils_2.4.bb
new file mode 100644
index 0000000..2937c62
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils_2.4.bb
@@ -0,0 +1,20 @@
+include selinux_20150202.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "795b05c3ad58253cba61249ec65b28ef"
+SRC_URI[sha256sum] = "b819f876f12473783ccce9f63b9a79cd77177477cd6d46818441f808cc4c3479"
+
+SRC_URI += "\
+	file://policycoreutils-fix-sepolicy-install-path.patch \
+	file://policycoreutils-make-O_CLOEXEC-optional.patch \
+	file://policycoreutils-loadpolicy-symlink.patch \
+	file://policycoreutils-semanage-edit-user.patch \
+	file://policycoreutils-process-ValueError-for-sepolicy-seobject.patch \
+	file://policycoreutils-fix-TypeError-for-seobject.py.patch \
+	file://0001-mcstrans-fix-the-init-script.patch \
+	file://enable-mcstrans.patch \
+	file://policycoreutils-fts_flags-FTS_NOCHDIR.patch \
+	file://policycoreutils-pp-builtin-roles.patch \
+	"
-- 
2.1.4


