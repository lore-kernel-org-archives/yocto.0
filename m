Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EBEDE00E4F; Wed, 13 Nov 2019 17:50:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08977E00E5E
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:50:07 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1o548014518
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:50:05 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:50:04 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:49:00 +0800
Message-ID: <20191114014901.22862-19-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 18/19] setools: upgrade 4.1.1 -> 4.2.2
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
X-List-Received-Date: Thu, 14 Nov 2019 01:50:11 -0000
Content-Type: text/plain

* Switch to python3

* Drop patches:
  Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
  setools4-fix-cross-compiling-errors-for-powerpc-mips.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...e-with-GCC-7-due-to-possible-truncat.patch | 105 ------------------
 ...ss-compiling-errors-for-powerpc-mips.patch |  35 ------
 .../setools4-fixes-for-cross-compiling.patch  |  34 +++---
 .../{setools_4.1.1.bb => setools_4.2.2.bb}    |  14 +--
 4 files changed, 19 insertions(+), 169 deletions(-)
 delete mode 100644 recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
 delete mode 100644 recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
 rename recipes-security/setools/{setools_4.1.1.bb => setools_4.2.2.bb} (61%)

diff --git a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch b/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
deleted file mode 100644
index a5af041..0000000
--- a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
+++ /dev/null
@@ -1,105 +0,0 @@
-Upstream-Status: Backport [https://github.com/TresysTechnology/setools/commit/e41adf0]
-
-Signed-off-by: Kai Kang <kai.kang@windriver.com>
-
-From e41adf01647c695b80b112b337e76021bb9f30c3 Mon Sep 17 00:00:00 2001
-From: Laurent Bigonville <bigon@bigon.be>
-Date: Tue, 26 Sep 2017 15:15:30 +0200
-Subject: [PATCH] Fix build failure with GCC 7 due to possible truncation of
- snprintf output
-
-setools fails to build under GCC7 -Wformat -Werror with the following error:
-
-x86_64-linux-gnu-gcc -pthread -DNDEBUG -g -fwrapv -O2 -Wall -Wstrict-prototypes -g -O2 -fdebug-prefix-map=/<<PKGBUILDDIR>>=. -fstack-protector-strong -Wformat -Werror=format-security -Wno-sign-compare -Wdate-time -D_FORTIFY_SOURCE=2 -fPIC -Ilibqpol -Ilibqpol/include -I/usr/include/python3.6m -c libqpol/policy_extend.c -o build/temp.linux-amd64-3.6/libqpol/policy_extend.o -Werror -Wextra -Waggregate-return -Wfloat-equal -Wformat -Wformat=2 -Winit-self -Wmissing-format-attribute -Wmissing-include-dirs -Wnested-externs -Wold-style-definition -Wpointer-arith -Wredundant-decls -Wstrict-prototypes -Wunknown-pragmas -Wwrite-strings -Wno-missing-field-initializers -Wno-unused-parameter -Wno-cast-qual -Wno-shadow -Wno-unreachable-code -fno-exceptions
-libqpol/policy_extend.c: In function 'policy_extend':
-libqpol/policy_extend.c:161:27: error: '%04zd' directive output may be truncated writing between 4 and 10 bytes into a region of size 5 [-Werror=format-truncation=]
-    snprintf(buff, 9, "@ttr%04zd", i + 1);
-                           ^~~~~
-libqpol/policy_extend.c:161:22: note: directive argument in the range [1, 4294967295]
-    snprintf(buff, 9, "@ttr%04zd", i + 1);
-                      ^~~~~~~~~~~
-
-Increase the size of the buffer to avoid collisions
-
-Closes: https://github.com/TresysTechnology/setools/issues/174
-Signed-off-by: Laurent Bigonville <bigon@bigon.be>
----
- libqpol/policy_extend.c | 16 ++++++++--------
- 1 file changed, 8 insertions(+), 8 deletions(-)
-
-diff --git a/libqpol/policy_extend.c b/libqpol/policy_extend.c
-index 742819b..739e184 100644
---- a/libqpol/policy_extend.c
-+++ b/libqpol/policy_extend.c
-@@ -110,7 +110,7 @@ static int qpol_policy_remove_bogus_aliases(qpol_policy_t * policy)
-  *  Builds data for the attributes and inserts them into the policydb.
-  *  This function modifies the policydb. Names created for attributes
-  *  are of the form @ttr<value> where value is the value of the attribute
-- *  as a four digit number (prepended with 0's as needed).
-+ *  as a ten digit number (prepended with 0's as needed).
-  *  @param policy The policy from which to read the attribute map and
-  *  create the type data for the attributes. This policy will be altered
-  *  by this function.
-@@ -125,7 +125,7 @@ static int qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
- 	uint32_t bit = 0, count = 0;
- 	ebitmap_node_t *node = NULL;
- 	type_datum_t *tmp_type = NULL, *orig_type;
--	char *tmp_name = NULL, buff[10];
-+	char *tmp_name = NULL, buff[16];
- 	int error = 0, retv;
- 
- 	INFO(policy, "%s", "Generating attributes for policy. (Step 4 of 5)");
-@@ -137,7 +137,7 @@ static int qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
- 
- 	db = &policy->p->p;
- 
--	memset(&buff, 0, 10 * sizeof(char));
-+	memset(&buff, 0, 16 * sizeof(char));
- 
- 	for (i = 0; i < db->p_types.nprim; i++) {
- 		/* skip types */
-@@ -158,7 +158,7 @@ static int qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
- 		 * with this attribute */
- 		/* Does not exist */
- 		if (db->p_type_val_to_name[i] == NULL){
--			snprintf(buff, 9, "@ttr%04zd", i + 1);
-+			snprintf(buff, 15, "@ttr%010zd", i + 1);
- 			tmp_name = strdup(buff);
- 			if (!tmp_name) {
- 				error = errno;
-@@ -240,7 +240,7 @@ static int qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
-  *  Builds data for empty attributes and inserts them into the policydb.
-  *  This function modifies the policydb. Names created for the attributes
-  *  are of the form @ttr<value> where value is the value of the attribute
-- *  as a four digit number (prepended with 0's as needed).
-+ *  as a ten digit number (prepended with 0's as needed).
-  *  @param policy The policy to which to add type data for attributes.
-  *  This policy will be altered by this function.
-  *  @return Returns 0 on success and < 0 on failure; if the call fails,
-@@ -251,7 +251,7 @@ static int qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
- static int qpol_policy_fill_attr_holes(qpol_policy_t * policy)
- {
- 	policydb_t *db = NULL;
--	char *tmp_name = NULL, buff[10];
-+	char *tmp_name = NULL, buff[16];
- 	int error = 0, retv = 0;
- 	ebitmap_t tmp_bmap = { NULL, 0 };
- 	type_datum_t *tmp_type = NULL;
-@@ -265,12 +265,12 @@ static int qpol_policy_fill_attr_holes(qpol_policy_t * policy)
- 
- 	db = &policy->p->p;
- 
--	memset(&buff, 0, 10 * sizeof(char));
-+	memset(&buff, 0, 16 * sizeof(char));
- 
- 	for (i = 0; i < db->p_types.nprim; i++) {
- 		if (db->type_val_to_struct[i])
- 			continue;
--		snprintf(buff, 9, "@ttr%04zd", i + 1);
-+		snprintf(buff, 15, "@ttr%010zd", i + 1);
- 		tmp_name = strdup(buff);
- 		if (!tmp_name) {
- 			error = errno;
--- 
-2.20.1
-
diff --git a/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch b/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
deleted file mode 100644
index 9a6b818..0000000
--- a/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From dc86d880ae0d66233679112a2bf0115c39df68f1 Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Fri, 17 Feb 2017 08:57:35 +0000
-Subject: [meta-selinux][PATCH] setools4: fix cross-compiling errors for powerpc, mips
-
-Fix build errors:
-| libqpol/policy.c: In function 'qpol_binpol_version':
-| libqpol/policy.c:95:24: error: implicit declaration of function 'bswap_32' [-Werror=implicit-function-declaration]
-| #define le32_to_cpu(x) bswap_32(x)
-
-Upstream-Status: Pending
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
----
- libqpol/policy.c | 4 ++++
- 1 file changed, 4 insertions(+)
-
-diff --git a/libqpol/policy.c b/libqpol/policy.c
-index ae3acb5..b5b87f9 100644
---- a/libqpol/policy.c
-+++ b/libqpol/policy.c
-@@ -45,6 +45,10 @@
- # include <asm/types.h>
- #endif
- 
-+#if defined(_ARCH_PPC) || defined(mips)
-+#include <byteswap.h>
-+#endif
-+
- #include <sepol/debug.h>
- #include <sepol/handle.h>
- #include <sepol/policydb/flask_types.h>
--- 
-2.11.0
-
diff --git a/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch b/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
index 5c43c49..51c7603 100644
--- a/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
+++ b/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
@@ -1,7 +1,7 @@
-From a104374147b398838edc04e937c92e762ea3f5d9 Mon Sep 17 00:00:00 2001
+From e0a112874d10dbf741c27b107edddedd86d51529 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Tue, 14 Feb 2017 06:32:35 +0000
-Subject: [meta-selinux][PATCH] setools4: fixes for cross compiling
+Subject: [PATCH] setools4: fixes for cross compiling
 
 * search libsepol from $STAGING_LIBDIR
 * fix manual install path as '/usr/share/man/man1'
@@ -9,32 +9,24 @@ Subject: [meta-selinux][PATCH] setools4: fixes for cross compiling
 Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- setup.py | 4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
+ setup.py | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/setup.py b/setup.py
-index 2ca44c9..300ff70 100644
+index ac8a876..df7ebbc 100644
 --- a/setup.py
 +++ b/setup.py
-@@ -77,7 +77,7 @@ class BuildExtCommand(build_ext):
-         build_ext.run(self)
+@@ -78,7 +78,7 @@ class QtHelpCommand(Command):
  
  
--base_lib_dirs = ['.', '/usr/lib64', '/usr/lib', '/usr/local/lib']
-+base_lib_dirs = [os.environ["STAGING_LIBDIR"]]
- include_dirs = ['libqpol', 'libqpol/include']
+ # Library linkage
+-lib_dirs = ['.', '/usr/lib64', '/usr/lib', '/usr/local/lib']
++lib_dirs = [os.environ["STAGING_LIBDIR"]]
+ include_dirs = []
  
- try:
-@@ -182,7 +182,7 @@ setup(name='setools',
-                 'build_qhc': QtHelpCommand},
-       packages=['setools', 'setools.diff', 'setools.policyrep', 'setoolsgui', 'setoolsgui.apol'],
-       scripts=['apol', 'sediff', 'seinfo', 'seinfoflow', 'sesearch', 'sedta'],
--      data_files=[(join(sys.prefix, 'share/man/man1'), glob.glob("man/*.1"))],
-+      data_files=[('/usr/share/man/man1', glob.glob("man/*.1"))],
-       package_data={'': ['*.ui', '*.qhc', '*.qch'], 'setools': ['perm_map']},
-       ext_modules=ext_py_mods,
-       test_suite='tests',
+ with suppress(KeyError):
 -- 
-2.13.0
+2.7.4
 
diff --git a/recipes-security/setools/setools_4.1.1.bb b/recipes-security/setools/setools_4.2.2.bb
similarity index 61%
rename from recipes-security/setools/setools_4.1.1.bb
rename to recipes-security/setools/setools_4.2.2.bb
index db529f4..6e5a950 100644
--- a/recipes-security/setools/setools_4.1.1.bb
+++ b/recipes-security/setools/setools_4.2.2.bb
@@ -9,26 +9,24 @@ SECTION = "base"
 LICENSE = "GPLv2 & LGPLv2.1"
 
 S = "${WORKDIR}/git"
-SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.1 \
+SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.2 \
            file://setools4-fixes-for-cross-compiling.patch \
-           file://setools4-fix-cross-compiling-errors-for-powerpc-mips.patch \
-           file://Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch \
 "
 
-SRCREV = "e03617eb7ab5a035633bff66500b95d25232e331"
+SRCREV = "15bffa7823b9a999f9d51533785ade18fe44df08"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
                     file://${S}/COPYING.GPL;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
                     file://${S}/COPYING.LGPL;md5=4fbd65380cdd255951079008b364516c"
 
-DEPENDS += "bison-native flex-native swig-native python libsepol"
+DEPENDS += "bison-native flex-native swig-native python3 python3-cython-native libsepol"
 
-RDEPENDS_${PN} += "python-networkx python-enum34 python-decorator python-setuptools \
-                   python-logging python-json python-argparse libselinux-python"
+RDEPENDS_${PN} += "python3-networkx python3-decorator python3-setuptools \
+                   python3-logging python3-json libselinux-python"
 
 RPROVIDES_${PN} += "${PN}-console"
 
-inherit setuptools
+inherit setuptools3
 
 do_install_append() {
 	# Need PyQt5 support, disable gui tools
-- 
2.17.1


