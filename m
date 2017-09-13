Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14484E00D01; Tue, 12 Sep 2017 19:43:35 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ACB1E00CE8
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:43:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v8D2hHKq007852
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Sep 2017 19:43:17 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 19:43:16 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<Joe_MacDonald@mentor.com>
Date: Tue, 12 Sep 2017 19:43:00 -0700
Message-ID: <9ccfed8852a34cf2ccd6a678d713ea49a88378a5.1505270194.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <cover.1505270194.git.wenzong.fan@windriver.com>
References: <cover.1505270194.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 18/20] setools: uprev to 4.1.1
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
X-List-Received-Date: Wed, 13 Sep 2017 02:43:35 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

SETools v4 is a rewrite of SETools in Python, details refer to:
https://github.com/TresysTechnology/setools/wiki/Changes-Since-SETools-v3

Changes for upreving:
* removed setools_3.3.8.bb and all useless patch
* add patches to fix cross-compiling issues:
  - setools4-fixes-for-cross-compiling.patch
  - setools4-fix-cross-compiling-errors-for-powerpc-mips.patch

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...-Don-t-check-selinux-policies-if-disabled.patch |  25 --
 .../setools-Fix-man-pages-and-getoptions.patch     |  80 ------
 .../setools-Fix-output-to-match-policy-lines.patch |  36 ---
 ...-Fix-python-setools-Makefile.am-for-cross.patch |  33 ---
 ...-sepol-calls-to-work-with-latest-libsepol.patch |  36 ---
 .../setools-Fix-test-bug-for-unary-operator.patch  |  25 --
 .../setools/setools-Remove-unused-variables.patch  | 279 ---------------------
 ...s-Update-for-2015-02-02-Userspace-release.patch | 114 ---------
 .../setools/setools/setools-configure-ac.patch     | 107 --------
 .../setools-configure-with-latest-libsepol.patch   |  33 ---
 .../setools/setools/setools-cross-ar.patch         |  17 --
 .../setools-neverallow-rules-all-always-fail.patch |  31 ---
 ...ols-seinfo-should-exit-with-correct-errno.patch | 134 ----------
 recipes-security/setools/setools/setools.pam       |   4 -
 ...x-cross-compiling-errors-for-powerpc-mips.patch |  35 +++
 .../setools4-fixes-for-cross-compiling.patch       |  40 +++
 recipes-security/setools/setools_3.3.8.bb          | 103 --------
 recipes-security/setools/setools_4.1.1.bb          |  35 +++
 18 files changed, 110 insertions(+), 1057 deletions(-)
 delete mode 100644 recipes-security/setools/setools/setools-Don-t-check-selinux-policies-if-disabled.patch
 delete mode 100644 recipes-security/setools/setools/setools-Fix-man-pages-and-getoptions.patch
 delete mode 100644 recipes-security/setools/setools/setools-Fix-output-to-match-policy-lines.patch
 delete mode 100644 recipes-security/setools/setools/setools-Fix-python-setools-Makefile.am-for-cross.patch
 delete mode 100644 recipes-security/setools/setools/setools-Fix-sepol-calls-to-work-with-latest-libsepol.patch
 delete mode 100644 recipes-security/setools/setools/setools-Fix-test-bug-for-unary-operator.patch
 delete mode 100644 recipes-security/setools/setools/setools-Remove-unused-variables.patch
 delete mode 100644 recipes-security/setools/setools/setools-Update-for-2015-02-02-Userspace-release.patch
 delete mode 100644 recipes-security/setools/setools/setools-configure-ac.patch
 delete mode 100644 recipes-security/setools/setools/setools-configure-with-latest-libsepol.patch
 delete mode 100644 recipes-security/setools/setools/setools-cross-ar.patch
 delete mode 100644 recipes-security/setools/setools/setools-neverallow-rules-all-always-fail.patch
 delete mode 100644 recipes-security/setools/setools/setools-seinfo-should-exit-with-correct-errno.patch
 delete mode 100644 recipes-security/setools/setools/setools.pam
 create mode 100644 recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
 create mode 100644 recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
 delete mode 100644 recipes-security/setools/setools_3.3.8.bb
 create mode 100644 recipes-security/setools/setools_4.1.1.bb

diff --git a/recipes-security/setools/setools/setools-Don-t-check-selinux-policies-if-disabled.patch b/recipes-security/setools/setools/setools-Don-t-check-selinux-policies-if-disabled.patch
deleted file mode 100644
index ed841e8..0000000
--- a/recipes-security/setools/setools/setools-Don-t-check-selinux-policies-if-disabled.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-From 7515aa80e7ead8d3016ea161e5d0eb9c59399278 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Wed, 7 Mar 2012 14:36:19 +0800
-Subject: [PATCH] setools: Don't check selinux policies if disabled.
-
----
- configure.ac |    2 +-
- 1 files changed, 1 insertions(+), 1 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index e1db271..899e5e9 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -390,7 +390,7 @@ if test "x${enable_selinux_check}" = "xyes"; then
-       use_selinux=yes
-   fi
- else
--      use_selinux=yes
-+      use_selinux=no
- fi
- 
- AC_CACHE_SAVE
--- 
-1.7.5.4
-
diff --git a/recipes-security/setools/setools/setools-Fix-man-pages-and-getoptions.patch b/recipes-security/setools/setools/setools-Fix-man-pages-and-getoptions.patch
deleted file mode 100644
index 455da1e..0000000
--- a/recipes-security/setools/setools/setools-Fix-man-pages-and-getoptions.patch
+++ /dev/null
@@ -1,80 +0,0 @@
-From ecaccf49ee95fe2c3a57a0d2184aaec98a967172 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Wed, 7 Mar 2012 10:53:36 +0800
-Subject: [PATCH 3/7] setools: Fix man pages and getoptions
-
-Integrated from Fedora:
-https://community.dev.fedoraproject.org/packages/setools/sources/patches/
----
- man/replcon.1            |    2 ++
- man/seinfo.1             |    6 +++++-
- seaudit/seaudit-report.c |    2 +-
- sediff/sediff.c          |    2 +-
- 4 files changed, 9 insertions(+), 3 deletions(-)
-
-diff --git a/man/replcon.1 b/man/replcon.1
-index 8aca08a..478dc51 100644
---- a/man/replcon.1
-+++ b/man/replcon.1
-@@ -44,6 +44,8 @@ Search for files which include PATH.
- .IP "-c CLASS, --class=CLASS"
- Search only files of object class CLASS.
- .SH OPTIONS
-+.IP "-R, --regex"
-+Enable regular expressions
- .IP "-v, --verbose"
- Display context info during replacement.
- .IP "-h, --help"
-diff --git a/man/seinfo.1 b/man/seinfo.1
-index 8612119..6bc17db 100644
---- a/man/seinfo.1
-+++ b/man/seinfo.1
-@@ -76,6 +76,10 @@ There is no expanded information for this component.
- .IP "--nodecon[=ADDR]"
- Print a list of node contexts or, if ADDR is provided, print the statement for the node with address ADDR.
- There is no expanded information for this component.
-+.IP "--polcap"
-+Print policy capabilities.
-+.IP "--permissive"
-+Print permissive types.
- .IP "--portcon[=PORT]"
- Print a list of port contexts or, if PORT is provided, print the statement for port PORT.
- There is no expanded information for this component.
-@@ -93,7 +97,7 @@ These details include the types assigned to an attribute or role and the permiss
- This option is not available for all component types; see the description of each component for the details this option will provide.
- .IP "--stats"
- Print policy statistics including policy type and version information and counts of all components and rules.
--.IP "-l"
-+.IP "-l, --line-breaks"
- Print line breaks when displaying constraint statements.
- .IP "-h, --help"
- Print help information and exit.
-diff --git a/seaudit/seaudit-report.c b/seaudit/seaudit-report.c
-index af3c6fb..d436c18 100644
---- a/seaudit/seaudit-report.c
-+++ b/seaudit/seaudit-report.c
-@@ -100,7 +100,7 @@ static void seaudit_report_info_usage(const char *program_name, int brief)
- 	printf("  -s, --stdin              read log data from standard input\n");
- 	printf("  -m, --malformed          include malformed log messages\n");
- 	printf("  -o FILE, --output=FILE   output to FILE\n");
--	printf("  --config=FILE            read configuration from FILE\n");
-+	printf("  -c FILE, --config=FILE   read configuration from FILE\n");
- 	printf("  --html                   set output format to HTML\n");
- 	printf("  --stylesheet=FILE        HTML style sheet for formatting HTML report\n");
- 	printf("                           (ignored if --html is not given)\n");
-diff --git a/sediff/sediff.c b/sediff/sediff.c
-index 6022775..341c650 100644
---- a/sediff/sediff.c
-+++ b/sediff/sediff.c
-@@ -420,7 +420,7 @@ int main(int argc, char **argv)
- 	poldiff_t *diff = NULL;
- 	size_t total = 0;
- 
--	while ((optc = getopt_long(argc, argv, "ctarubANDLMCRqhV", longopts, NULL)) != -1) {
-+	while ((optc = getopt_long(argc, argv, "ctarubAqhV", longopts, NULL)) != -1) {
- 		switch (optc) {
- 		case 0:
- 			break;
--- 
-1.7.5.4
-
diff --git a/recipes-security/setools/setools/setools-Fix-output-to-match-policy-lines.patch b/recipes-security/setools/setools/setools-Fix-output-to-match-policy-lines.patch
deleted file mode 100644
index c397aa6..0000000
--- a/recipes-security/setools/setools/setools-Fix-output-to-match-policy-lines.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From 81f2221ab707ca8d5e204b0f9be61d537888e439 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Wed, 7 Mar 2012 11:03:00 +0800
-Subject: [PATCH 7/7] setools: Fix output to match policy lines
-
-Integrated from Fedora:
-https://community.dev.fedoraproject.org/packages/setools/sources/patches/
----
- libapol/src/ftrule-query.c |    4 ++--
- 1 files changed, 2 insertions(+), 2 deletions(-)
-
-diff --git a/libapol/src/ftrule-query.c b/libapol/src/ftrule-query.c
-index 9c7a23b..1d5f5c8 100644
---- a/libapol/src/ftrule-query.c
-+++ b/libapol/src/ftrule-query.c
-@@ -282,7 +282,7 @@ char *apol_filename_trans_render(const apol_policy_t * policy, const qpol_filena
- 		error = errno;
- 		goto err;
- 	}
--	if (apol_str_appendf(&tmp, &tmp_sz, "transition_type %s ", tmp_name)) {
-+	if (apol_str_appendf(&tmp, &tmp_sz, "type_transition %s ", tmp_name)) {
- 		error = errno;
- 		ERR(policy, "%s", strerror(error));
- 		goto err;
-@@ -338,7 +338,7 @@ char *apol_filename_trans_render(const apol_policy_t * policy, const qpol_filena
- 		goto err;
- 	}
- 
--	if (apol_str_appendf(&tmp, &tmp_sz, " %s", tmp_name)) {
-+	if (apol_str_appendf(&tmp, &tmp_sz, " \"%s\"", tmp_name)) {
- 		error = errno;
- 		ERR(policy, "%s", strerror(error));
- 		goto err;
--- 
-1.7.5.4
-
diff --git a/recipes-security/setools/setools/setools-Fix-python-setools-Makefile.am-for-cross.patch b/recipes-security/setools/setools/setools-Fix-python-setools-Makefile.am-for-cross.patch
deleted file mode 100644
index c4d062a..0000000
--- a/recipes-security/setools/setools/setools-Fix-python-setools-Makefile.am-for-cross.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 7d386c429202b393aa4ca281a11b5e1f2259b109 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Wed, 7 Mar 2012 15:43:41 +0800
-Subject: [PATCH] setools: Fix python/setools/Makefile.am for cross.
-
----
- python/setools/Makefile.am |    6 +++---
- 1 files changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/python/setools/Makefile.am b/python/setools/Makefile.am
-index c4635fb..80aa385 100644
---- a/python/setools/Makefile.am
-+++ b/python/setools/Makefile.am
-@@ -22,13 +22,13 @@ sesearch_SOURCES = sesearch.c
- python-build: sesearch.c seinfo.c
- 	@mkdir -p setools
- 	@cp __init__.py setools
--	LIBS="$(QPOL_LIB_FLAG) $(APOL_LIB_FLAG)" INCLUDES="$(QPOL_CFLAGS) $(APOL_CFLAGS)" $(PYTHON) setup.py build
-+	CC="${CC}" LDSHARED="$(CC) -shared" LIBS="$(QPOL_LIB_FLAG) $(APOL_LIB_FLAG) $(PYTHON_LDFLAGS)" INCLUDES="$(QPOL_CFLAGS) $(APOL_CFLAGS) $(PYTHON_CPPFLAGS)" ${PYTHON} setup.py build 
- 
- install-exec-hook:
--	$(PYTHON) setup.py install `test -n "$(DESTDIR)" && echo --root $(DESTDIR)`
-+	$(PYTHON) setup.py install `test -n "$(DESTDIR)" && echo --root $(DESTDIR) --install-lib=$(PYTHON_SITE_PKG)`
- 
- uninstall-hook: 
--	$(PYTHON) setup.py uninstall `test -n "$(DESTDIR)" && echo --root $(DESTDIR)`
-+	$(PYTHON) setup.py uninstall `test -n "$(DESTDIR)" && echo --root $(DESTDIR) --install-lib=$(PYTHON_SITE_PKG)`
- 
- clean-local:
- 	$(PYTHON) setup.py clean -a 
--- 
-1.7.5.4
-
diff --git a/recipes-security/setools/setools/setools-Fix-sepol-calls-to-work-with-latest-libsepol.patch b/recipes-security/setools/setools/setools-Fix-sepol-calls-to-work-with-latest-libsepol.patch
deleted file mode 100644
index 8519ab2..0000000
--- a/recipes-security/setools/setools/setools-Fix-sepol-calls-to-work-with-latest-libsepol.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From 16d3a0b41273be4289f70d1d63fb983721bb60c0 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Wed, 7 Mar 2012 10:54:55 +0800
-Subject: [PATCH 4/7] setools: Fix sepol calls to work with latest libsepol
-
-Integrated from Fedora:
-https://community.dev.fedoraproject.org/packages/setools/sources/patches/
----
- configure.ac |    4 ++--
- 1 files changed, 2 insertions(+), 2 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index e837e03..3c11e23 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -505,7 +505,7 @@ AC_COMPILE_IFELSE(
-                   [AC_LANG_SOURCE([
- #include <sepol/policydb/expand.h>
- int main () {
--  return role_set_expand(NULL, NULL, NULL, NULL);
-+  return role_set_expand(NULL, NULL, NULL, NULL, NULL);
- }])],
-                   sepol_new_user_role_mapping="yes",
-                   sepol_new_user_role_mapping="no")
-@@ -541,7 +541,7 @@ if test ${sepol_check_boolmap} = "yes"; then
-                          [AC_LANG_SOURCE([
- #include <sepol/policydb/expand.h>
- int main () {
--  return expand_module_avrules(NULL, NULL, NULL, NULL, NULL, 0, 0);
-+  return expand_module_avrules(NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0);
- }])],
-                          AC_MSG_RESULT([yes]),
-                          AC_MSG_ERROR([this version of libsepol is incompatible with SETools]))
--- 
-1.7.5.4
-
diff --git a/recipes-security/setools/setools/setools-Fix-test-bug-for-unary-operator.patch b/recipes-security/setools/setools/setools-Fix-test-bug-for-unary-operator.patch
deleted file mode 100644
index 7b6e539..0000000
--- a/recipes-security/setools/setools/setools-Fix-test-bug-for-unary-operator.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-From 5f574dc0fb68fe07c5b611ca34c01b8484735aab Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Wed, 7 Mar 2012 14:47:44 +0800
-Subject: [PATCH] setools: Fix "test" bug for unary operator.
-
-configure: line 22969: test: =: unary operator expected
----
- configure.ac |    1 +
- 1 files changed, 1 insertions(+), 0 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index 899e5e9..6854c69 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -233,6 +233,7 @@ if test ${do_swigify} = "yes"; then
-    AC_PROG_SWIG(2.0.0)
- fi
- build_apol=yes
-+do_swigify_tcl=no
- AC_ARG_ENABLE(swig-tcl,
-               AC_HELP_STRING([--enable-swig-tcl],
-                              [build SWIG interfaces for Tcl (default)]),
--- 
-1.7.5.4
-
diff --git a/recipes-security/setools/setools/setools-Remove-unused-variables.patch b/recipes-security/setools/setools/setools-Remove-unused-variables.patch
deleted file mode 100644
index f991819..0000000
--- a/recipes-security/setools/setools/setools-Remove-unused-variables.patch
+++ /dev/null
@@ -1,279 +0,0 @@
-From d8a4502fae7118796558e523a6dc0a6a5f9adec9 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Wed, 7 Mar 2012 11:02:10 +0800
-Subject: [PATCH 6/7] setools: Remove unused variables
-
-Integrated from Fedora:
-https://community.dev.fedoraproject.org/packages/setools/sources/patches/
----
- libapol/src/ftrule-query.c |   11 ++----
- libqpol/src/ftrule_query.c |    2 -
- secmds/sesearch.c          |   86 +++++++++++++++++++++++++++++++++-----------
- 3 files changed, 68 insertions(+), 31 deletions(-)
-
-diff --git a/libapol/src/ftrule-query.c b/libapol/src/ftrule-query.c
-index dc248de..9c7a23b 100644
---- a/libapol/src/ftrule-query.c
-+++ b/libapol/src/ftrule-query.c
-@@ -45,14 +45,11 @@ struct apol_filename_trans_query
- int apol_filename_trans_get_by_query(const apol_policy_t * p, const apol_filename_trans_query_t * t, apol_vector_t ** v)
- {
- 	apol_vector_t *source_list = NULL, *target_list = NULL, *class_list = NULL, *default_list = NULL;
--	int retval = -1, source_as_any = 0, is_regex = 0, append_filename_trans;
--	char *bool_name = NULL;
-+	int retval = -1, source_as_any = 0, is_regex = 0;
- 	*v = NULL;
--	unsigned int flags = 0;
--	qpol_iterator_t *iter = NULL, *type_iter = NULL;
-+	qpol_iterator_t *iter = NULL;
- 
- 	if (t != NULL) {
--		flags = t->flags;
- 		is_regex = t->flags & APOL_QUERY_REGEX;
- 		if (t->source != NULL &&
- 		    (source_list =
-@@ -104,7 +101,7 @@ int apol_filename_trans_get_by_query(const apol_policy_t * p, const apol_filenam
- 		if (qpol_iterator_get_item(iter, (void **)&filename_trans) < 0) {
- 			goto cleanup;
- 		}
--		int match_source = 0, match_target = 0, match_default = 0, match_bool = 0;
-+		int match_source = 0, match_target = 0, match_default = 0;
- 		size_t i;
- 
- 		if (source_list == NULL) {
-@@ -265,10 +262,8 @@ char *apol_filename_trans_render(const apol_policy_t * policy, const qpol_filena
- {
- 	char *tmp = NULL;
- 	const char *tmp_name = NULL;
--	const char *filename_trans_type_str;
- 	int error = 0;
- 	size_t tmp_sz = 0;
--	uint32_t filename_trans_type = 0;
- 	const qpol_type_t *type = NULL;
- 	const qpol_class_t *obj_class = NULL;
- 
-diff --git a/libqpol/src/ftrule_query.c b/libqpol/src/ftrule_query.c
-index d6db848..3148d30 100644
---- a/libqpol/src/ftrule_query.c
-+++ b/libqpol/src/ftrule_query.c
-@@ -254,7 +254,6 @@ int qpol_filename_trans_get_default_type(const qpol_policy_t * policy, const qpo
- 
- int qpol_filename_trans_get_filename(const qpol_policy_t * policy, const qpol_filename_trans_t * rule, const char ** name)
- {
--	policydb_t *db = NULL;
- 	filename_trans_t *ft = NULL;
- 
- 	if (name) {
-@@ -267,7 +266,6 @@ int qpol_filename_trans_get_filename(const qpol_policy_t * policy, const qpol_fi
- 		return STATUS_ERR;
- 	}
- 
--	db = &policy->p->p;
- 	ft = (filename_trans_t *) rule;
- 
- 	*name = ft->name;
-diff --git a/secmds/sesearch.c b/secmds/sesearch.c
-index e44b3bc..319ffe7 100644
---- a/secmds/sesearch.c
-+++ b/secmds/sesearch.c
-@@ -72,6 +72,7 @@ static struct option const longopts[] = {
- 
- 	{"source", required_argument, NULL, 's'},
- 	{"target", required_argument, NULL, 't'},
-+	{"default", required_argument, NULL, 'D'},
- 	{"role_source", required_argument, NULL, EXPR_ROLE_SOURCE},
- 	{"role_target", required_argument, NULL, EXPR_ROLE_TARGET},
- 	{"class", required_argument, NULL, 'c'},
-@@ -92,6 +93,7 @@ typedef struct options
- {
- 	char *src_name;
- 	char *tgt_name;
-+	char *default_name;
- 	char *src_role_name;
- 	char *tgt_role_name;
- 	char *class_name;
-@@ -293,7 +295,8 @@ static void print_syn_av_results(const apol_policy_t * policy, const options_t *
- 				tmp = apol_cond_expr_render(policy, cond);
- 				enable_char = (enabled ? 'E' : 'D');
- 				branch_char = ((is_true && enabled) || (!is_true && !enabled) ? 'T' : 'F');
--				asprintf(&expr, "[ %s ]", tmp);
-+				if (asprintf(&expr, "[ %s ]", tmp) < 0)
-+					goto cleanup;
- 				free(tmp);
- 				tmp = NULL;
- 				if (!expr)
-@@ -356,7 +359,8 @@ static void print_av_results(const apol_policy_t * policy, const options_t * opt
- 				qpol_iterator_destroy(&iter);
- 				enable_char = (enabled ? 'E' : 'D');
- 				branch_char = (list ? 'T' : 'F');
--				asprintf(&expr, "[ %s ]", tmp);
-+				if (asprintf(&expr, "[ %s ]", tmp) < 0)
-+					goto cleanup;
- 				free(tmp);
- 				tmp = NULL;
- 				if (!expr)
-@@ -488,7 +492,8 @@ static void print_syn_te_results(const apol_policy_t * policy, const options_t *
- 				tmp = apol_cond_expr_render(policy, cond);
- 				enable_char = (enabled ? 'E' : 'D');
- 				branch_char = ((is_true && enabled) || (!is_true && !enabled) ? 'T' : 'F');
--				asprintf(&expr, "[ %s ]", tmp);
-+				if (asprintf(&expr, "[ %s ]", tmp) < 0)
-+					goto cleanup;
- 				free(tmp);
- 				tmp = NULL;
- 				if (!expr)
-@@ -553,7 +558,8 @@ static void print_te_results(const apol_policy_t * policy, const options_t * opt
- 				qpol_iterator_destroy(&iter);
- 				enable_char = (enabled ? 'E' : 'D');
- 				branch_char = (list ? 'T' : 'F');
--				asprintf(&expr, "[ %s ]", tmp);
-+				if (asprintf(&expr, "[ %s ]", tmp) < 0)
-+					goto cleanup;
- 				free(tmp);
- 				tmp = NULL;
- 				if (!expr)
-@@ -586,7 +592,7 @@ static int perform_ft_query(const apol_policy_t * policy, const options_t * opt,
- 		return -1;
- 	}
- 
--	if (!opt->type == QPOL_RULE_TYPE_TRANS && !opt->all) {
-+	if (!opt->type && !opt->all) {
- 		*v = NULL;
- 		return 0;	       /* no search to do */
- 	}
-@@ -600,17 +606,44 @@ static int perform_ft_query(const apol_policy_t * policy, const options_t * opt,
- 
- 	apol_filename_trans_query_set_regex(policy, ftq, opt->useregex);
- 	if (opt->src_name) {
--		if (apol_filename_trans_query_set_source(policy, ftq, opt->src_name)) {
-+		if (apol_filename_trans_query_set_source(policy, ftq, opt->src_name, opt->indirect)) {
- 			error = errno;
- 			goto err;
- 		}
- 	}
-+
- 	if (opt->tgt_name) {
- 		if (apol_filename_trans_query_set_target(policy, ftq, opt->tgt_name, opt->indirect)) {
- 			error = errno;
- 			goto err;
- 		}
- 	}
-+	if (opt->default_name) {
-+		if (apol_filename_trans_query_set_default(policy, ftq, opt->default_name)) {
-+			error = errno;
-+			goto err;
-+		}
-+	}
-+
-+	if (opt->class_name) {
-+		if (opt->class_vector == NULL) {
-+			if (apol_filename_trans_query_append_class(policy, ftq, opt->class_name)) {
-+				error = errno;
-+				goto err;
-+			}
-+		} else {
-+			for (size_t i = 0; i < apol_vector_get_size(opt->class_vector); ++i) {
-+				char *class_name;
-+				class_name = apol_vector_get_element(opt->class_vector, i);
-+				if (!class_name)
-+					continue;
-+				if (apol_filename_trans_query_append_class(policy, ftq, class_name)) {
-+					error = errno;
-+					goto err;
-+				}
-+			}
-+		}
-+	}
- 
- 	if (apol_filename_trans_get_by_query(policy, ftq, v)) {
- 		error = errno;
-@@ -630,37 +663,36 @@ static int perform_ft_query(const apol_policy_t * policy, const options_t * opt,
- 
- static void print_ft_results(const apol_policy_t * policy, const options_t * opt, const apol_vector_t * v)
- {
--	qpol_policy_t *q = apol_policy_get_qpol(policy);
--	size_t i, num_rules = 0;
--	const qpol_filename_trans_t *rule = NULL;
--	char *tmp = NULL, *rule_str = NULL, *expr = NULL;
-+	size_t i, num_filename_trans = 0;
-+	const qpol_filename_trans_t *filename_trans = NULL;
-+	char *tmp = NULL, *filename_trans_str = NULL, *expr = NULL;
- 	char enable_char = ' ', branch_char = ' ';
- 	qpol_iterator_t *iter = NULL;
- 	const qpol_cond_t *cond = NULL;
- 	uint32_t enabled = 0, list = 0;
- 
--	if (!(num_rules = apol_vector_get_size(v)))
-+	if (!(num_filename_trans = apol_vector_get_size(v)))
- 		goto cleanup;
- 
--	fprintf(stdout, "Found %zd named file transition rules:\n", num_rules);
-+	fprintf(stdout, "Found %zd named file transition filename_trans:\n", num_filename_trans);
- 
--	for (i = 0; i < num_rules; i++) {
-+	for (i = 0; i < num_filename_trans; i++) {
- 		enable_char = branch_char = ' ';
--		if (!(rule = apol_vector_get_element(v, i)))
-+		if (!(filename_trans = apol_vector_get_element(v, i)))
- 			goto cleanup;
- 
--		if (!(rule_str = apol_filename_trans_render(policy, rule)))
-+		if (!(filename_trans_str = apol_filename_trans_render(policy, filename_trans)))
- 			goto cleanup;
--		fprintf(stdout, "%s %s\n", rule_str, expr ? expr : "");
--		free(rule_str);
--		rule_str = NULL;
-+		fprintf(stdout, "%s %s\n", filename_trans_str, expr ? expr : "");
-+		free(filename_trans_str);
-+		filename_trans_str = NULL;
- 		free(expr);
- 		expr = NULL;
- 	}
- 
-       cleanup:
- 	free(tmp);
--	free(rule_str);
-+	free(filename_trans_str);
- 	free(expr);
- }
- 
-@@ -930,7 +962,7 @@ int main(int argc, char **argv)
- 
- 	memset(&cmd_opts, 0, sizeof(cmd_opts));
- 	cmd_opts.indirect = true;
--	while ((optc = getopt_long(argc, argv, "ATs:t:c:p:b:dRnSChV", longopts, NULL)) != -1) {
-+	while ((optc = getopt_long(argc, argv, "ATs:t:c:p:b:dD:RnSChV", longopts, NULL)) != -1) {
- 		switch (optc) {
- 		case 0:
- 			break;
-@@ -946,6 +978,18 @@ int main(int argc, char **argv)
- 				exit(1);
- 			}
- 			break;
-+		case 'D':	       /* source */
-+			if (optarg == 0) {
-+				usage(argv[0], 1);
-+				printf("Missing source default type for -D (--default)\n");
-+				exit(1);
-+			}
-+			cmd_opts.default_name = strdup(optarg);
-+			if (!cmd_opts.default_name) {
-+		
-+				exit(1);
-+			}
-+			break;
- 		case 't':	       /* target */
- 			if (optarg == 0) {
- 				usage(argv[0], 1);
-@@ -1218,7 +1262,7 @@ int main(int argc, char **argv)
- 		fprintf(stdout, "\n");
- 	}
- 
--	if (cmd_opts.all || cmd_opts.type == QPOL_RULE_TYPE_TRANS) {
-+	if (cmd_opts.all || cmd_opts.type) {
- 		apol_vector_destroy(&v);
- 		if (perform_ft_query(policy, &cmd_opts, &v)) {
- 			rt = 1;
--- 
-1.7.5.4
-
diff --git a/recipes-security/setools/setools/setools-Update-for-2015-02-02-Userspace-release.patch b/recipes-security/setools/setools/setools-Update-for-2015-02-02-Userspace-release.patch
deleted file mode 100644
index c8fc3f5..0000000
--- a/recipes-security/setools/setools/setools-Update-for-2015-02-02-Userspace-release.patch
+++ /dev/null
@@ -1,114 +0,0 @@
-From f1e5b208d507171968ca4d2eeefd7980f1004a3c Mon Sep 17 00:00:00 2001
-From: Chris PeBenito <cpebenito@tresys.com>
-Date: Thu, 12 Feb 2015 08:55:12 -0500
-Subject: [PATCH] Update for 2015-02-02 Userspace release (2.4)
-
-SETools now requires libsepol 2.4 and libselinux 2.4.
----
- configure.ac                 | 6 +++---
- libqpol/src/policy_define.c  | 4 ++--
- libqpol/src/policy_extend.c  | 4 ++--
- libqpol/src/syn_rule_query.c | 6 +++---
- secmds/replcon.cc            | 2 +-
- 5 files changed, 11 insertions(+), 11 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index 80395e6..ae20da7 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -25,9 +25,9 @@ libseaudit_version=4.5
- setoolsdir='${prefix}/share/setools-3.3'
- javadir='${prefix}/share/java'
- 
--version_min_sepol_major=1
--version_min_sepol_minor=12
--version_min_sepol_patch=27
-+version_min_sepol_major=2
-+version_min_sepol_minor=4
-+version_min_sepol_patch=0
- 
- dnl *** end of tunable values ***
- 
-diff --git a/libqpol/src/policy_define.c b/libqpol/src/policy_define.c
-index 229779c..15f70ba 100644
---- a/libqpol/src/policy_define.c
-+++ b/libqpol/src/policy_define.c
-@@ -1661,7 +1661,7 @@ int define_compute_type_helper(int which, avrule_t ** rule)
- 				goto bad;
- 			}
- 			class_perm_node_init(perm);
--			perm->class = i + 1;
-+			perm->tclass = i + 1;
- 			perm->data = datum->s.value;
- 			perm->next = avrule->perms;
- 			avrule->perms = perm;
-@@ -1901,7 +1901,7 @@ int define_te_avtab_helper(int which, avrule_t ** rule)
- 			goto out;
- 		}
- 		class_perm_node_init(cur_perms);
--		cur_perms->class = i + 1;
-+		cur_perms->tclass = i + 1;
- 		if (!perms)
- 			perms = cur_perms;
- 		if (tail)
-diff --git a/libqpol/src/policy_extend.c b/libqpol/src/policy_extend.c
-index 5325a87..1417271 100644
---- a/libqpol/src/policy_extend.c
-+++ b/libqpol/src/policy_extend.c
-@@ -843,7 +843,7 @@ static int qpol_syn_rule_table_insert_sepol_avrule(qpol_policy_t * policy, qpol_
- 			for (class_node = rule->perms; class_node; class_node = class_node->next) {
- 				key.rule_type = rule->specified;
- 				key.source_val = key.target_val = i + 1;
--				key.class_val = class_node->class;
-+				key.class_val = class_node->tclass;
- 				key.cond = cond;
- 				if (qpol_syn_rule_table_insert_entry(policy, table, &key, new_rule))
- 					goto err;
-@@ -856,7 +856,7 @@ static int qpol_syn_rule_table_insert_sepol_avrule(qpol_policy_t * policy, qpol_
- 				key.rule_type = rule->specified;
- 				key.source_val = i + 1;
- 				key.target_val = j + 1;
--				key.class_val = class_node->class;
-+				key.class_val = class_node->tclass;
- 				key.cond = cond;
- 				if (qpol_syn_rule_table_insert_entry(policy, table, &key, new_rule))
- 					goto err;
-diff --git a/libqpol/src/syn_rule_query.c b/libqpol/src/syn_rule_query.c
-index 3e63204..d7578f1 100644
---- a/libqpol/src/syn_rule_query.c
-+++ b/libqpol/src/syn_rule_query.c
-@@ -67,7 +67,7 @@ static void *syn_rule_class_state_get_cur(const qpol_iterator_t * iter)
- 		return NULL;
- 	}
- 
--	return db->class_val_to_struct[srcs->cur->class - 1];
-+	return db->class_val_to_struct[srcs->cur->tclass - 1];
- }
- 
- static int syn_rule_class_state_next(qpol_iterator_t * iter)
-@@ -465,10 +465,10 @@ int qpol_syn_avrule_get_perm_iter(const qpol_policy_t * policy, const qpol_syn_a
- 	}
- 
- 	for (node = internal_rule->perms; node; node = node->next) {
--		for (i = 0; i < db->class_val_to_struct[node->class - 1]->permissions.nprim; i++) {
-+		for (i = 0; i < db->class_val_to_struct[node->tclass - 1]->permissions.nprim; i++) {
- 			if (!(node->data & (1 << i)))
- 				continue;
--			tmp = sepol_av_to_string(db, node->class, (sepol_access_vector_t) (1 << i));
-+			tmp = sepol_av_to_string(db, node->tclass, (sepol_access_vector_t) (1 << i));
- 			if (tmp) {
- 				tmp++; /* remove prepended space */
- 				for (cur = 0; cur < perm_list_sz; cur++)
-diff --git a/secmds/replcon.cc b/secmds/replcon.cc
-index 34f7c1a..307c39f 100644
---- a/secmds/replcon.cc
-+++ b/secmds/replcon.cc
-@@ -60,7 +60,7 @@ static struct option const longopts[] = {
- 	{NULL, 0, NULL, 0}
- };
- 
--extern int lsetfilecon_raw(const char *, security_context_t) __attribute__ ((weak));
-+extern int lsetfilecon_raw(const char *, const char *) __attribute__ ((weak));
- 
- /**
-  * As that setools must work with older libselinux versions that may
diff --git a/recipes-security/setools/setools/setools-configure-ac.patch b/recipes-security/setools/setools/setools-configure-ac.patch
deleted file mode 100644
index 5b8e440..0000000
--- a/recipes-security/setools/setools/setools-configure-ac.patch
+++ /dev/null
@@ -1,107 +0,0 @@
----
- configure.ac |   37 ++++++++++++++-----------------------
- 1 file changed, 14 insertions(+), 23 deletions(-)
-
---- a/configure.ac
-+++ b/configure.ac
-@@ -216,9 +216,6 @@
-    do_swigify_java=yes
-    do_swigify=yes
- fi
--
--AM_PATH_PYTHON(2.7)
--
- AC_ARG_ENABLE(swig-python,
-               AC_HELP_STRING([--enable-swig-python],
-                              [build SWIG interfaces for Python]),
-@@ -227,6 +224,7 @@
-    if test ${do_swigify} = no; then
-       AC_PROG_SWIG(2.0.0)
-    fi
-+   AM_PATH_PYTHON(2.7)
-    SWIG_PYTHON
-    do_swigify_python=yes
-    do_swigify=yes
-@@ -411,32 +409,19 @@
-             selinux_devel="/usr")
- sepol_devel_incdir="${sepol_devel}/include"
- selinux_devel_incdir="${selinux_devel}/include"
--dnl if /lib64 exists then use that directory, otherwise revert to just /lib
--for dir in lib64 lib ; do
--  sepol_devel_libdir="${sepol_devel}/${dir}"
--  if test -f ${sepol_devel_libdir}/libsepol.so ; then
--    break
--  fi
--done
--for dir in lib64 lib ; do
--  selinux_devel_libdir="${selinux_devel}/${dir}"
--  if test -f ${selinux_devel_libdir}/libselinux.so ; then
--    break
--  fi
--done
-+dnl We pass in sepol_devel of usr/lib{32/64}/.., dirname strips the ..
-+sepol_devel_libdir=`dirname ${sepol_devel}`
-+selinux_devel_libdir=`dirname ${selinux_devel}`
- AC_MSG_CHECKING([for sepol/sepol.h])
- selinux_save_CFLAGS="${CFLAGS}"
- selinux_save_CPPFLAGS="${CPPFLAGS}"
- CFLAGS="${CFLAGS} -I${sepol_devel_incdir} -I${selinux_devel_incdir}"
- CPPFLAGS="${CPPFLAGS} -I${sepol_devel_incdir} -I${selinux_devel_incdir}"
- AC_CHECK_HEADER([sepol/sepol.h], , AC_MSG_ERROR([could not find sepol headers at $sepol_devel_incdir - make sure libsepol-devel is installed]))
--AC_CHECK_LIB([sepol], [sepol_policydb_read], ,
--             AC_MSG_ERROR([could not find libsepol at $sepol_devel_libdir]))
-+LIBS="-lsepol $LIBS"
- AC_CHECK_HEADER([selinux/selinux.h], , AC_MSG_ERROR([could not find selinux headers at $selinux_devel_incdir - make sure libselinux-devel is installed]))
- AC_CHECK_HEADER([selinux/context.h], , AC_MSG_ERROR([could not find selinux headers at $selinux_devel_incdir - make sure libselinux-devel is installed]))
--AC_CHECK_LIB([selinux], [selinux_policy_root], ,
--AC_MSG_ERROR([could not find libselinux at $selinux_devel_libdir]),
--             -lsepol)
-+LIBS="-lselinux $LIBS"
- SELINUX_LIB_FLAG="-L${sepol_devel_libdir} -L${selinux_devel_libdir}"
- CFLAGS="${selinux_save_CFLAGS}"
- CPPFLAGS="${selinux_save_CPPFLAGS}"
-@@ -448,8 +433,6 @@
-               sepol_srcdir="")
- if test "x${sepol_srcdir}" = "x"; then
-    sepol_srcdir=${sepol_devel_libdir}
--   AC_CHECK_FILE([${sepol_srcdir}/libsepol.a],,
--      AC_MSG_ERROR([make sure libsepol-static is installed]))
- else
-    AC_MSG_CHECKING([for compatible sepol source tree])
-    sepol_version=${sepol_srcdir}/VERSION
-@@ -556,6 +539,7 @@
- 	        sepol_new_errcodes="yes",
-                 sepol_new_errcodes="no")
- 
-+if test x"${ac_cv_policydb_version_max}" = x ; then
- AC_RUN_IFELSE(
-    [AC_LANG_SOURCE([
- #include <sepol/policydb/policydb.h>
-@@ -571,6 +555,9 @@
- }])],
-     sepol_policy_version_max=`cat conftest.data`,
-     AC_MSG_FAILURE([could not determine maximum libsepol policy version]))
-+else
-+    sepol_policy_version_max=${ac_cv_policydb_version_max}
-+fi
- AC_DEFINE_UNQUOTED(SEPOL_POLICY_VERSION_MAX, ${sepol_policy_version_max}, [maximum policy version supported by libsepol])
- CFLAGS="${sepol_save_CFLAGS}"
- CPPFLAGS="${sepol_save_CPPFLAGS}"
-@@ -578,6 +565,7 @@
- if test ${use_selinux} = "yes"; then
- dnl Locate selinux policy root directory
-     AC_MSG_CHECKING([for selinux policy root])
-+    if test x"${ac_cv_selinux_policy_root}" = x ; then
-     changequote(<<<,>>>)dnl
-     cat > ./conftest.c <<EOF
- #include <stdlib.h>
-@@ -596,6 +584,9 @@
-     CFLAGS="${SELINUX_CFLAGS} ${SELINUX_LIB_FLAG} -lselinux -lsepol ${CFLAGS}"
-     gcc ${CFLAGS} -o conftest conftest.c >&5
-     selinux_policy_dir=`./conftest`
-+    else
-+        selinux_policy_dir=${ac_cv_selinux_policy_root}
-+    fi
-     AC_MSG_RESULT(${selinux_policy_dir})
-     CFLAGS="${selinux_save_CFLAGS}"
- fi
diff --git a/recipes-security/setools/setools/setools-configure-with-latest-libsepol.patch b/recipes-security/setools/setools/setools-configure-with-latest-libsepol.patch
deleted file mode 100644
index 84ac3dc..0000000
--- a/recipes-security/setools/setools/setools-configure-with-latest-libsepol.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 2b58d92add64b53b16cbb438e7b69e85d046afd1 Mon Sep 17 00:00:00 2001
-From: Dan Walsh <dwalsh@redhat.com>
-Date: Tue, 20 Sep 2011 15:46:38 -0400
-Subject: [PATCH 5/6] Fix sepol calls to work with latest libsepol
-
----
- configure.ac |    4 ++--
- 1 files changed, 2 insertions(+), 2 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index e837e03..3c11e23 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -505,7 +505,7 @@ AC_COMPILE_IFELSE(
-                   [AC_LANG_SOURCE([
- #include <sepol/policydb/expand.h>
- int main () {
--  return role_set_expand(NULL, NULL, NULL, NULL);
-+  return role_set_expand(NULL, NULL, NULL, NULL, NULL);
- }])],
-                   sepol_new_user_role_mapping="yes",
-                   sepol_new_user_role_mapping="no")
-@@ -541,7 +541,7 @@ if test ${sepol_check_boolmap} = "yes"; then
-                          [AC_LANG_SOURCE([
- #include <sepol/policydb/expand.h>
- int main () {
--  return expand_module_avrules(NULL, NULL, NULL, NULL, NULL, 0, 0);
-+  return expand_module_avrules(NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0);
- }])],
-                          AC_MSG_RESULT([yes]),
-                          AC_MSG_ERROR([this version of libsepol is incompatible with SETools]))
--- 
-1.7.6.2
diff --git a/recipes-security/setools/setools/setools-cross-ar.patch b/recipes-security/setools/setools/setools-cross-ar.patch
deleted file mode 100644
index eba24c2..0000000
--- a/recipes-security/setools/setools/setools-cross-ar.patch
+++ /dev/null
@@ -1,17 +0,0 @@
-Use the specified $(AR), not "ar", for cross-compiling.
-
----
- libqpol/src/Makefile.am |    2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
---- a/libqpol/src/Makefile.am
-+++ b/libqpol/src/Makefile.am
-@@ -64,7 +64,7 @@
- 	mkdir -p $@
- 	rm -f $@/*
- 	cp $< $@
--	(cd $@; ar x libsepol.a)
-+	(cd $@; $(AR) x libsepol.a)
- 
- $(qpolso_DATA): $(tmp_sepol) $(libqpol_so_OBJS) libqpol.map
- 	$(CC) -shared -o $@ $(libqpol_so_OBJS) $(AM_LDFLAGS) $(LDFLAGS) -Wl,-soname,$(LIBQPOL_SONAME),--version-script=$(srcdir)/libqpol.map,-z,defs -Wl,--whole-archive $(sepol_srcdir)/libsepol.a -Wl,--no-whole-archive @SELINUX_LIB_FLAG@ -lselinux -lsepol -lbz2
diff --git a/recipes-security/setools/setools/setools-neverallow-rules-all-always-fail.patch b/recipes-security/setools/setools/setools-neverallow-rules-all-always-fail.patch
deleted file mode 100644
index a165dae..0000000
--- a/recipes-security/setools/setools/setools-neverallow-rules-all-always-fail.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From 4360fae5a6fbee9c8866573fe5a8af2fdae4944d Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Fri, 9 Mar 2012 10:18:35 +0800
-Subject: [PATCH] setools: neverallow rules all always fail.
-
-Since we do not ship neverallow rules all always fail.
-ERROR: Cannot get avrules: Neverallow rules requested but not available
-ERROR: Operation not supported
----
- libqpol/src/avrule_query.c |    3 +++
- 1 files changed, 3 insertions(+), 0 deletions(-)
-
-diff --git a/libqpol/src/avrule_query.c b/libqpol/src/avrule_query.c
-index 749565b..e7d42fc 100644
---- a/libqpol/src/avrule_query.c
-+++ b/libqpol/src/avrule_query.c
-@@ -57,8 +57,11 @@ int qpol_policy_get_avrule_iter(const qpol_policy_t * policy, uint32_t rule_type
- 
- 	if ((rule_type_mask & QPOL_RULE_NEVERALLOW) && !qpol_policy_has_capability(policy, QPOL_CAP_NEVERALLOW)) {
- 		ERR(policy, "%s", "Cannot get avrules: Neverallow rules requested but not available");
-+		/*
- 		errno = ENOTSUP;
- 		return STATUS_ERR;
-+		*/
-+		return STATUS_SUCCESS;
- 	}
- 
- 	db = &policy->p->p;
--- 
-1.7.5.4
-
diff --git a/recipes-security/setools/setools/setools-seinfo-should-exit-with-correct-errno.patch b/recipes-security/setools/setools/setools-seinfo-should-exit-with-correct-errno.patch
deleted file mode 100644
index a9cec6e..0000000
--- a/recipes-security/setools/setools/setools-seinfo-should-exit-with-correct-errno.patch
+++ /dev/null
@@ -1,134 +0,0 @@
-From 65ff2020dd1119cf45ad4eb74e63b21fb8f63389 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Wed, 7 Mar 2012 10:48:07 +0800
-Subject: [PATCH 2/7] setools: seinfo should exit with correct errno.
-
-Integrated from Fedora:
-https://community.dev.fedoraproject.org/packages/setools/sources/patches/
----
- secmds/seinfo.c |   51 +++++++++++++++++++++++++++------------------------
- 1 files changed, 27 insertions(+), 24 deletions(-)
-
-diff --git a/secmds/seinfo.c b/secmds/seinfo.c
-index fdf23e9..3088f88 100644
---- a/secmds/seinfo.c
-+++ b/secmds/seinfo.c
-@@ -827,7 +827,7 @@ static int print_sens(FILE * fp, const char *name, int expand, const apol_policy
-  */
- static int print_cats(FILE * fp, const char *name, int expand, const apol_policy_t * policydb)
- {
--	int retval = 0;
-+	int retval = -1;
- 	apol_cat_query_t *query = NULL;
- 	apol_vector_t *v = NULL;
- 	const qpol_cat_t *cat_datum = NULL;
-@@ -911,9 +911,10 @@ static int print_fsuse(FILE * fp, const char *type, const apol_policy_t * policy
- 		fprintf(fp, "   %s\n", tmp);
- 		free(tmp);
- 	}
--	if (type && !apol_vector_get_size(v))
-+	if (type && !apol_vector_get_size(v)) {
- 		ERR(policydb, "No fs_use statement for filesystem of type %s.", type);
--
-+		goto cleanup;
-+	}
- 	retval = 0;
-       cleanup:
- 	apol_fs_use_query_destroy(&query);
-@@ -949,7 +950,6 @@ static int print_genfscon(FILE * fp, const char *type, const apol_policy_t * pol
- 		ERR(policydb, "%s", strerror(ENOMEM));
- 		goto cleanup;
- 	}
--
- 	if (apol_genfscon_query_set_filesystem(policydb, query, type))
- 		goto cleanup;
- 	if (apol_genfscon_get_by_query(policydb, query, &v))
-@@ -967,8 +967,10 @@ static int print_genfscon(FILE * fp, const char *type, const apol_policy_t * pol
- 		free(tmp);
- 	}
- 
--	if (type && !apol_vector_get_size(v))
-+	if (type && !apol_vector_get_size(v)) {
- 		ERR(policydb, "No genfscon statement for filesystem of type %s.", type);
-+		goto cleanup;
-+	}
- 
- 	retval = 0;
-       cleanup:
-@@ -1646,6 +1648,7 @@ cleanup:	// close and destroy iterators etc.
- 
- int main(int argc, char **argv)
- {
-+	int rc = 0;
- 	int classes, types, attribs, roles, users, all, expand, stats, rt, optc, isids, bools, sens, cats, fsuse, genfs, netif,
- 		node, port, permissives, polcaps, constrain, linebreaks;
- 	apol_policy_t *policydb = NULL;
-@@ -1851,46 +1854,46 @@ int main(int argc, char **argv)
- 
- 	/* display requested info */
- 	if (stats || all)
--		print_stats(stdout, policydb);
-+		rc = print_stats(stdout, policydb);
- 	if (classes || all)
--		print_classes(stdout, class_name, expand, policydb);
-+		rc = print_classes(stdout, class_name, expand, policydb);
- 	if (types || all)
--		print_types(stdout, type_name, expand, policydb);
-+		rc = print_types(stdout, type_name, expand, policydb);
- 	if (attribs || all)
--		print_attribs(stdout, attrib_name, expand, policydb);
-+		rc = print_attribs(stdout, attrib_name, expand, policydb);
- 	if (roles || all)
--		print_roles(stdout, role_name, expand, policydb);
-+		rc = print_roles(stdout, role_name, expand, policydb);
- 	if (users || all)
--		print_users(stdout, user_name, expand, policydb);
-+		rc = print_users(stdout, user_name, expand, policydb);
- 	if (bools || all)
--		print_booleans(stdout, bool_name, expand, policydb);
-+		rc = print_booleans(stdout, bool_name, expand, policydb);
- 	if (sens || all)
--		print_sens(stdout, sens_name, expand, policydb);
-+		rc = print_sens(stdout, sens_name, expand, policydb);
- 	if (cats || all)
--		print_cats(stdout, cat_name, expand, policydb);
-+		rc = print_cats(stdout, cat_name, expand, policydb);
- 	if (fsuse || all)
--		print_fsuse(stdout, fsuse_type, policydb);
-+		rc = print_fsuse(stdout, fsuse_type, policydb);
- 	if (genfs || all)
--		print_genfscon(stdout, genfs_type, policydb);
-+		rc = print_genfscon(stdout, genfs_type, policydb);
- 	if (netif || all)
--		print_netifcon(stdout, netif_name, policydb);
-+		rc = print_netifcon(stdout, netif_name, policydb);
- 	if (node || all)
--		print_nodecon(stdout, node_addr, policydb);
-+		rc = print_nodecon(stdout, node_addr, policydb);
- 	if (port || all)
--		print_portcon(stdout, port_num, protocol, policydb);
-+		rc = print_portcon(stdout, port_num, protocol, policydb);
- 	if (isids || all)
--		print_isids(stdout, isid_name, expand, policydb);
-+		rc = print_isids(stdout, isid_name, expand, policydb);
- 	if (permissives || all)
--		print_permissives(stdout, permissive_name, expand, policydb);
-+		rc = print_permissives(stdout, permissive_name, expand, policydb);
- 	if (polcaps || all)
--		print_polcaps(stdout, polcap_name, expand, policydb);
-+		rc = print_polcaps(stdout, polcap_name, expand, policydb);
- 	if (constrain || all)
--		print_constraints(stdout, expand, policydb, linebreaks);
-+		rc = print_constraints(stdout, expand, policydb, linebreaks);
- 
- 	apol_policy_destroy(&policydb);
- 	apol_policy_path_destroy(&pol_path);
- 	free(policy_file);
--	exit(0);
-+	exit(rc);
- }
- 
- /**
--- 
-1.7.5.4
-
diff --git a/recipes-security/setools/setools/setools.pam b/recipes-security/setools/setools/setools.pam
deleted file mode 100644
index c7d67e3..0000000
--- a/recipes-security/setools/setools/setools.pam
+++ /dev/null
@@ -1,4 +0,0 @@
-#%PAM-1.0
-auth		include		config-util
-account		include		config-util
-session		include		config-util
diff --git a/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch b/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
new file mode 100644
index 0000000..88b8c8c
--- /dev/null
+++ b/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
@@ -0,0 +1,35 @@
+From dc86d880ae0d66233679112a2bf0115c39df68f1 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Fri, 17 Feb 2017 08:57:35 +0000
+Subject: [PATCH] setools4: fix cross-compiling errors for powerpc, mips
+
+Fix build errors:
+| libqpol/policy.c: In function 'qpol_binpol_version':
+| libqpol/policy.c:95:24: error: implicit declaration of function 'bswap_32' [-Werror=implicit-function-declaration]
+| #define le32_to_cpu(x) bswap_32(x)
+
+Upstream-Status: Pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ libqpol/policy.c | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/libqpol/policy.c b/libqpol/policy.c
+index ae3acb5..b5b87f9 100644
+--- a/libqpol/policy.c
++++ b/libqpol/policy.c
+@@ -45,6 +45,10 @@
+ # include <asm/types.h>
+ #endif
+ 
++#if defined(_ARCH_PPC) || defined(mips)
++#include <byteswap.h>
++#endif
++
+ #include <sepol/debug.h>
+ #include <sepol/handle.h>
+ #include <sepol/policydb/flask_types.h>
+-- 
+2.11.0
+
diff --git a/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch b/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
new file mode 100644
index 0000000..18bb055
--- /dev/null
+++ b/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
@@ -0,0 +1,40 @@
+From a104374147b398838edc04e937c92e762ea3f5d9 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Tue, 14 Feb 2017 06:32:35 +0000
+Subject: [PATCH] setools4: fixes for cross compiling
+
+* search libsepol from $STAGING_LIBDIR
+* fix manual install path as '/usr/share/man/man1'
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ setup.py | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/setup.py b/setup.py
+index 2ca44c9..300ff70 100644
+--- a/setup.py
++++ b/setup.py
+@@ -77,7 +77,7 @@ class BuildExtCommand(build_ext):
+         build_ext.run(self)
+ 
+ 
+-base_lib_dirs = ['.', '/usr/lib64', '/usr/lib', '/usr/local/lib']
++base_lib_dirs = [os.environ["STAGING_LIBDIR"]]
+ include_dirs = ['libqpol', 'libqpol/include']
+ 
+ try:
+@@ -182,7 +182,7 @@ setup(name='setools',
+                 'build_qhc': QtHelpCommand},
+       packages=['setools', 'setools.diff', 'setools.policyrep', 'setoolsgui', 'setoolsgui.apol'],
+       scripts=['apol', 'sediff', 'seinfo', 'seinfoflow', 'sesearch', 'sedta'],
+-      data_files=[(join(sys.prefix, 'share/man/man1'), glob.glob("man/*.1"))],
++      data_files=[('/usr/share/man/man1', glob.glob("man/*.1"))],
+       package_data={'': ['*.ui', '*.qhc', '*.qch'], 'setools': ['perm_map']},
+       ext_modules=ext_py_mods,
+       test_suite='tests',
+-- 
+2.13.0
+
diff --git a/recipes-security/setools/setools_3.3.8.bb b/recipes-security/setools/setools_3.3.8.bb
deleted file mode 100644
index 99296ca..0000000
--- a/recipes-security/setools/setools_3.3.8.bb
+++ /dev/null
@@ -1,103 +0,0 @@
-SUMMARY = "Policy analysis tools for SELinux"
-DESCRIPTION = "\
-SETools is a collection of graphical tools, command-line tools, and \
-libraries designed to facilitate SELinux policy analysis. \
-\n\
-This meta-package depends upon the main packages necessary to run \
-SETools."
-SECTION = "base"
-LICENSE = "GPLv2 & LGPLv2.1"
-
-SRC_URI = "https://raw.githubusercontent.com/wiki/TresysTechnology/setools3/files/dists/setools-${PV}/setools-${PV}.tar.bz2"
-SRC_URI[md5sum] = "d68d0d4e4da0f01da0f208782ff04b91"
-SRC_URI[sha256sum] = "44387ecc9a231ec536a937783440cd8960a72c51f14bffc1604b7525e341e999"
-
-SRC_URI += "file://setools-neverallow-rules-all-always-fail.patch"
-SRC_URI += "file://setools-Fix-sepol-calls-to-work-with-latest-libsepol.patch"
-
-SRC_URI += "file://setools-Don-t-check-selinux-policies-if-disabled.patch"
-SRC_URI += "file://setools-configure-ac.patch"
-SRC_URI += "file://setools-cross-ar.patch"
-
-SRC_URI += "file://setools-Fix-test-bug-for-unary-operator.patch"
-SRC_URI += "file://setools-Fix-python-setools-Makefile.am-for-cross.patch"
-
-SRC_URI += "file://setools-Update-for-2015-02-02-Userspace-release.patch"
-
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=26035c503c68ae1098177934ac0cc795 \
-                    file://${S}/COPYING.GPL;md5=751419260aa954499f7abaabaa882bbe \
-                    file://${S}/COPYING.LGPL;md5=fbc093901857fcd118f065f900982c24"
-
-CFLAGS_append = " -fPIC"
-CXXFLAGS_append = " -fPIC"
-
-DEPENDS += "bison-native flex-native python libsepol libselinux libxml2"
-
-PACKAGE_BEFORE_PN += "${PN}-libs"
-
-RPROVIDES_${PN} += "${PN}-console"
-
-FILES_${PN}-dbg += "\
-	${libdir}/python${PYTHON_BASEVERSION}/site-packages/setools/.debug \
-	"
-
-FILES_${PN}-libs = "\
-	${libdir}/libqpol.so.* \
-	${libdir}/libapol.so.* \
-	${libdir}/libpoldiff.so.* \
-	${libdir}/libsefs.so.* \
-	${libdir}/libseaudit.so.* \
-	${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.egg-info \
-	${libdir}/python${PYTHON_BASEVERSION}/site-packages/setools/*.so* \
-	${libdir}/python${PYTHON_BASEVERSION}/site-packages/setools/*.py* \
-	"
-
-FILES_${PN} += "\
-	${bindir}/seinfo \
-	${bindir}/sesearch \
-	${bindir}/indexcon \
-	${bindir}/findcon \
-	${bindir}/replcon \
-	${bindir}/sechecker \
-	${bindir}/sediff \
-	${datadir}/setools-3.3/sechecker-profiles \
-	${datadir}/setools-3.3/sechecker_help.txt \
-	${datadir}/setools-3.3/sediff_help.txt \
-	${datadir}/setools-3.3/sediffx* \
-	${mandir}/man1/findcon.1.gz \
-	${mandir}/man1/indexcon.1.gz \
-	${mandir}/man1/replcon.1.gz \
-	${mandir}/man1/sechecker.1.gz \
-	${mandir}/man1/sediff.1.gz \
-	${mandir}/man1/seinfo.1.gz \
-	${mandir}/man1/sesearch.1.gz \
-	"
-
-inherit autotools pythonnative
-
-# need to export these variables for python-config to work
-export BUILD_SYS
-export HOST_SYS
-export STAGING_INCDIR
-export STAGING_LIBDIR
-
-EXTRA_OECONF = "-disable-bwidget-check --disable-selinux-check \
-                --disable-swig-python --disable-swig-java --disable-swig-tcl \
-                --disable-profiling --disable-gui --with-tk=no --with-tcl=no \
-                --with-sepol-devel=${STAGING_LIBDIR}/.. \
-                --with-selinux-devel=${STAGING_LIBDIR}/.."
-
-do_configure_prepend() {
-	export ac_cv_policydb_version_max=26
-	export PYTHON=python
-	export PYLIBVER='python${PYTHON_BASEVERSION}'
-	export PYTHON_CPPFLAGS="-I${STAGING_INCDIR}/${PYLIBVER}"
-	export PYTHON_LDFLAGS="${STAGING_LIBDIR}/lib${PYLIBVER}.so"
-	export PYTHON_SITE_PKG="${libdir}/${PYLIBVER}/site-packages"
-}
-
-do_install_append() {
-	rm -f ${D}/${libdir}/*.a
-}
-
-BBCLASSEXTEND = "native"
diff --git a/recipes-security/setools/setools_4.1.1.bb b/recipes-security/setools/setools_4.1.1.bb
new file mode 100644
index 0000000..0bbc52b
--- /dev/null
+++ b/recipes-security/setools/setools_4.1.1.bb
@@ -0,0 +1,35 @@
+SUMMARY = "Policy analysis tools for SELinux"
+DESCRIPTION = "\
+SETools is a collection of graphical tools, command-line tools, and \
+libraries designed to facilitate SELinux policy analysis. \
+\n\
+This meta-package depends upon the main packages necessary to run \
+SETools."
+SECTION = "base"
+LICENSE = "GPLv2 & LGPLv2.1"
+
+SRC_URI = "https://github.com/TresysTechnology/setools/archive/${PV}.tar.gz;downloadfilename=setools-${PV}.tar.gz \
+           file://setools4-fixes-for-cross-compiling.patch \
+           file://setools4-fix-cross-compiling-errors-for-powerpc-mips.patch \
+"
+
+SRC_URI[md5sum] = "54cf5c0ca2aa4ef7c6ac153981af34cd"
+SRC_URI[sha256sum] = "46a927ea2b163cbe1d35cc35da43e45853e13720c7e02d4cf75a498783c19610"
+
+LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
+                    file://${S}/COPYING.GPL;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
+                    file://${S}/COPYING.LGPL;md5=4fbd65380cdd255951079008b364516c"
+
+DEPENDS += "bison-native flex-native swig-native python libsepol"
+# TODO: depends on meta-python, disable the RDEPENDS for now:
+# RDEPENDS_${PN} += "python-networkx python-enum34 python-decorator python-setuptools"
+
+RPROVIDES_${PN} += "${PN}-console"
+
+inherit setuptools
+
+do_install_append() {
+	# Need PyQt5 support, disable gui tools
+	rm -f ${D}${bindir}/apol
+	rm -rf ${D}${libdir}/${PYTHON_DIR}/site-packages/setoolsgui
+}
-- 
2.13.0


