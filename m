Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CEC4E00B97; Mon,  7 Mar 2016 12:54:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [63.239.67.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emvm-gh1-uea09.nsa.gov (emvm-gh1-uea09.nsa.gov [63.239.67.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADABBE008C6
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:54:07 -0800 (PST)
X-TM-IMSS-Message-ID: <5220b85500020aa1@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	5220b85500020aa1 ; Mon, 7 Mar 2016 15:57:04 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGJ003618; Mon, 7 Mar 2016 15:53:52 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:45 -0500
Message-Id: <1457383972-6283-6-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 06/13] policycoreutils: uprev to 2.5 (20160223)
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
X-List-Received-Date: Mon, 07 Mar 2016 20:54:14 -0000

Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
---
 ...cycoreutils-fix-TypeError-for-seobject.py.patch | 27 ++++-----
 .../policycoreutils-pp-builtin-roles.patch         | 70 ----------------------
 ...-process-ValueError-for-sepolicy-seobject.patch | 23 ++++---
 .../policycoreutils-semanage-edit-user.patch       | 21 -------
 recipes-security/selinux/policycoreutils_2.4.bb    | 20 -------
 recipes-security/selinux/policycoreutils_2.5.bb    | 18 ++++++
 6 files changed, 41 insertions(+), 138 deletions(-)
 delete mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-pp-builtin-roles.patch
 delete mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-semanage-edit-user.patch
 delete mode 100644 recipes-security/selinux/policycoreutils_2.4.bb
 create mode 100644 recipes-security/selinux/policycoreutils_2.5.bb

diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch b/recipes-security/selinux/policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch
index dd6ca6d..993ff7e 100644
--- a/recipes-security/selinux/policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-fix-TypeError-for-seobject.py.patch
@@ -14,19 +14,16 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  semanage/seobject.py |    2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
-diff --git a/semanage/seobject.py b/semanage/seobject.py
-index f8d2243..66653e6 100644
---- a/semanage/seobject.py
-+++ b/semanage/seobject.py
-@@ -105,7 +105,7 @@ except:
+Index: policycoreutils-2.5/semanage/seobject.py
+===================================================================
+--- policycoreutils-2.5.orig/semanage/seobject.py	2016-02-25 13:41:38.035974459 -0500
++++ policycoreutils-2.5/semanage/seobject.py	2016-02-25 13:43:42.075974072 -0500
+@@ -121,7 +121,7 @@
  
- 		def log(self, msg, name = "", sename = "", serole = "", serange = "", oldsename = "", oldserole = "", oldserange = ""):
- 			message = " %s name=%s" % (msg, name)
--			if sename != "":
-+			if sename != "" and sename != None:
- 				message += " sename=" + sename
- 			if oldsename != "":
- 				message += " oldsename=" + oldsename
--- 
-1.7.9.5
-
+         def log(self, msg, name="", sename="", serole="", serange="", oldsename="", oldserole="", oldserange=""):
+             message = " %s name=%s" % (msg, name)
+-            if sename != "":
++            if sename != "" and sename != None:
+                 message += " sename=" + sename
+             if oldsename != "":
+                 message += " oldsename=" + oldsename
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-pp-builtin-roles.patch b/recipes-security/selinux/policycoreutils/policycoreutils-pp-builtin-roles.patch
deleted file mode 100644
index f01cc3a..0000000
--- a/recipes-security/selinux/policycoreutils/policycoreutils-pp-builtin-roles.patch
+++ /dev/null
@@ -1,70 +0,0 @@
-libsepol: with pp to CIL, always write auditadm_r and secadm_r roles to the base module
-
-In fedora and refpolicy, the auditadm_r and secadm_r roles can be in
-either the base module or a non-base module, or they could be in both.
-This means that it is possible for duplicate role declarations to exist.
-CIL does not allow duplicate declarations of anything, but there is no
-way for the pp compiler to know if the roles are declared in which
-module, or if they are in both when compiling a single module. This
-means we cannot use the same hack that we use for user_r, staff_r, etc.,
-to generate CIL role declarations (i.e. only create role declarations
-for these when defined in base).
-
-So only for these two roles, always declare them as part of base,
-regardless of where or if they are defined. This means that turning off
-the auditadm module will never remove the auditamd_r role (likewise for
-secadm), whereas right now, in some cases it would. This also means that
-role allow rules will still exist for these roles even with the modules
-removed. However, this is okay because the roles would not have any
-types associated with them so no access would be allowed.
-
-Signed-off-by: Steve Lawrence <slawrence@tresys.com>
-Reported-by: Miroslav Grepl <mgrepl@redhat.com>
-
-Index: policycoreutils-2.4/hll/pp/pp.c
-===================================================================
---- policycoreutils-2.4.orig/hll/pp/pp.c
-+++ policycoreutils-2.4/hll/pp/pp.c
-@@ -2000,7 +2000,10 @@ static int role_to_cil(int indent, struc
- 			                    !strcmp(key, "sysadm_r") ||
- 			                    !strcmp(key, "system_r") ||
- 			                    !strcmp(key, "unconfined_r"));
--			if ((is_base_role && pdb->policy_type == SEPOL_POLICY_BASE) || !is_base_role) {
-+			int is_builtin_role = (!strcmp(key, "auditadm_r") ||
-+						!strcmp(key, "secadm_r"));
-+			if ((is_base_role && pdb->policy_type == SEPOL_POLICY_BASE) ||
-+				(!is_base_role && !is_builtin_role)) {
- 				cil_println(indent, "(role %s)", key);
- 			}
- 		}
-@@ -3594,6 +3597,17 @@ static int generate_default_object(void)
- 	return 0;
- }
- 
-+static int generate_builtin_roles(void)
-+{
-+	// due to inconsistentencies between policies and CIL not allowing
-+	// duplicate roles, some roles are always created, regardless of if they
-+	// are declared in modules or not
-+	cil_println(0, "(role auditadm_r)");
-+	cil_println(0, "(role secadm_r)");
-+
-+	return 0;
-+}
-+
- static int generate_gen_require_attribute(void)
- {
- 	cil_println(0, "(typeattribute " GEN_REQUIRE_ATTR ")");
-@@ -3678,6 +3692,12 @@ static int module_package_to_cil(struct
- 		if (rc != 0) {
- 			goto exit;
- 		}
-+
-+		// roles that can exist in base, non-base module or both
-+		rc = generate_builtin_roles();
-+		if (rc != 0) {
-+			goto exit;
-+		}
- 
- 		// default attribute to be used to mimic gen_require in CIL
- 		rc = generate_gen_require_attribute();
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch b/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch
index 933f2b2..e52e1d3 100644
--- a/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-process-ValueError-for-sepolicy-seobject.patch
@@ -14,10 +14,10 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  semanage/semanage |    9 +++++++--
  1 file changed, 7 insertions(+), 2 deletions(-)
 
-diff --git a/semanage/semanage b/semanage/semanage
-index 36b41cd..a36a3f9 100644
---- a/semanage/semanage
-+++ b/semanage/semanage
+Index: policycoreutils-2.5/semanage/semanage
+===================================================================
+--- policycoreutils-2.5.orig/semanage/semanage	2016-02-25 13:38:39.947975015 -0500
++++ policycoreutils-2.5/semanage/semanage	2016-02-25 13:40:50.627974607 -0500
 @@ -24,9 +24,15 @@
  #
  
@@ -32,17 +32,16 @@ index 36b41cd..a36a3f9 100644
 +        print "Error: %s\n" % e
 +        sys.exit(1)
 +
- PROGNAME="policycoreutils"
+ PROGNAME = "policycoreutils"
  try:
-        gettext.install(PROGNAME,
-@@ -59,7 +65,6 @@ usage_interface_dict = {' --add':('-t TYPE','-r RANGE','interface'),' --modify':
+     kwargs = {}
+@@ -66,9 +72,6 @@
  usage_boolean = "semanage boolean [-h] [-n] [-N] [-s STORE] ["
- usage_boolean_dict = {' --modify':('(','--on','|','--off',')','boolean'), ' --list':('-C',), '  --extract':('',), ' --deleteall':('',)}
+ usage_boolean_dict = {' --modify': ('(', '--on', '|', '--off', ')', 'boolean'), ' --list': ('-C',), '  --extract': ('',), ' --deleteall': ('',)}
  
 -import sepolicy
+-
+-
  class CheckRole(argparse.Action):
+ 
      def __call__(self, parser, namespace, value, option_string=None):
-         newval = getattr(namespace, self.dest)
--- 
-1.7.9.5
-
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-semanage-edit-user.patch b/recipes-security/selinux/policycoreutils/policycoreutils-semanage-edit-user.patch
deleted file mode 100644
index f5aaa74..0000000
--- a/recipes-security/selinux/policycoreutils/policycoreutils-semanage-edit-user.patch
+++ /dev/null
@@ -1,21 +0,0 @@
-policycoreutils: semanage
-
-When modifying selinux login records, self.sename might not be
-needed, but it IS passed to a log function, so it must be set
-to something or the log attempt will fail.
-
-Upstream-Status: Pending
-
-Signed-off-by: Joe Slater <jslater@windriver.com>
-
-
---- a/semanage/seobject.py
-+++ b/semanage/seobject.py
-@@ -576,6 +576,7 @@ class loginRecords(semanageRecords):
- 
- 		if sename != "":
- 			semanage_seuser_set_sename(self.sh, u, sename)
-+			self.sename = sename
- 		else:
- 			self.sename = self.oldsename
- 			
diff --git a/recipes-security/selinux/policycoreutils_2.4.bb b/recipes-security/selinux/policycoreutils_2.4.bb
deleted file mode 100644
index 2937c62..0000000
--- a/recipes-security/selinux/policycoreutils_2.4.bb
+++ /dev/null
@@ -1,20 +0,0 @@
-include selinux_20150202.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "795b05c3ad58253cba61249ec65b28ef"
-SRC_URI[sha256sum] = "b819f876f12473783ccce9f63b9a79cd77177477cd6d46818441f808cc4c3479"
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
-	file://policycoreutils-pp-builtin-roles.patch \
-	"
diff --git a/recipes-security/selinux/policycoreutils_2.5.bb b/recipes-security/selinux/policycoreutils_2.5.bb
new file mode 100644
index 0000000..37d3870
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils_2.5.bb
@@ -0,0 +1,18 @@
+include selinux_20160223.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "9ad9331b2133262fb3f774359a7f4761"
+SRC_URI[sha256sum] = "329382cfe9fa977678abf541dcd8fe3847cf0c83b24654c8f7322343907078a1"
+
+SRC_URI += "\
+	file://policycoreutils-fix-sepolicy-install-path.patch \
+	file://policycoreutils-make-O_CLOEXEC-optional.patch \
+	file://policycoreutils-loadpolicy-symlink.patch \
+	file://policycoreutils-process-ValueError-for-sepolicy-seobject.patch \
+	file://policycoreutils-fix-TypeError-for-seobject.py.patch \
+	file://0001-mcstrans-fix-the-init-script.patch \
+	file://enable-mcstrans.patch \
+	file://policycoreutils-fts_flags-FTS_NOCHDIR.patch \
+	"
-- 
2.4.3


