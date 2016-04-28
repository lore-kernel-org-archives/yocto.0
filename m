Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BA3AE00E26; Thu, 28 Apr 2016 06:05:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1406EE00DE1
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:34 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230476"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:34 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:03:07 +0300
Message-Id: <815392cc448ced641c06ded8e35b14d433608785.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
References: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 14/16] build: update git.mk
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
X-List-Received-Date: Thu, 28 Apr 2016 13:05:39 -0000

From: Ross Burton <ross.burton@intel.com>

---
 Makefile.am |  10 ++----
 git.mk      | 115 +++++++++++++++++++++++++++++++++++++++++++++++-------------
 2 files changed, 93 insertions(+), 32 deletions(-)

diff --git a/Makefile.am b/Makefile.am
index 9f1df6e..6a2cec9 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -1,12 +1,8 @@
 SUBDIRS = libtaku src
 
 MAINTAINERCLEANFILES = \
-	$(srcdir)/INSTALL \
-	$(srcdir)/aclocal.m4 \
-	$(srcdir)/config.h.in \
-	$(srcdir)/depcomp \
-	$(srcdir)/install-sh \
-	$(srcdir)/missing \
-	`find "$(srcdir)" -type f -name Makefile.in -print`
+	$(GITIGNORE_MAINTAINERCLEANFILES_TOPLEVEL) \
+	$(GITIGNORE_MAINTAINERCLEANFILES_MAKEFILE_IN) \
+	$(GITIGNORE_MAINTAINERCLEANFILES_M4_LIBTOOL)
 
 -include $(top_srcdir)/git.mk
diff --git a/git.mk b/git.mk
index 99540e1..7667636 100644
--- a/git.mk
+++ b/git.mk
@@ -1,14 +1,17 @@
 # git.mk
 #
 # Copyright 2009, Red Hat, Inc.
-# Copyright 2010,2011 Behdad Esfahbod
+# Copyright 2010,2011,2012,2013 Behdad Esfahbod
 # Written by Behdad Esfahbod
 #
 # Copying and distribution of this file, with or without modification,
 # is permitted in any medium without royalty provided the copyright
 # notice and this notice are preserved.
 #
-# The canonical source for this file is https://github.com/behdad/git.mk.
+# The latest version of this file can be downloaded from:
+#   https://raw.github.com/behdad/git.mk/master/git.mk
+# Bugs, etc, should be reported upstream at:
+#   https://github.com/behdad/git.mk
 #
 # To use in your project, import this file in your git repo's toplevel,
 # then do "make -f git.mk".  This modifies all Makefile.am files in
@@ -61,14 +64,62 @@
 #   example.
 #
 
+
+
+###############################################################################
+# Variables user modules may want to add to toplevel MAINTAINERCLEANFILES:
+###############################################################################
+
+#
+# Most autotools-using modules should be fine including this variable in their
+# toplevel MAINTAINERCLEANFILES:
+GITIGNORE_MAINTAINERCLEANFILES_TOPLEVEL = \
+	$(srcdir)/aclocal.m4 \
+	$(srcdir)/ar-lib \
+	$(srcdir)/autoscan.log \
+	$(srcdir)/compile \
+	$(srcdir)/config.guess \
+	$(srcdir)/config.h.in \
+	$(srcdir)/config.sub \
+	$(srcdir)/configure.scan \
+	$(srcdir)/depcomp \
+	$(srcdir)/install-sh \
+	$(srcdir)/ltmain.sh \
+	$(srcdir)/missing \
+	$(srcdir)/mkinstalldirs
+#
+# All modules should also be fine including the following variable, which
+# removes automake-generated Makefile.in files:
+GITIGNORE_MAINTAINERCLEANFILES_MAKEFILE_IN = \
+	`$(AUTOCONF) --trace 'AC_CONFIG_FILES:$$1' $(srcdir)/configure.ac | \
+	while read f; do \
+	  case $$f in Makefile|*/Makefile) \
+	    test -f "$(srcdir)/$$f.am" && echo "$(srcdir)/$$f.in";; esac; \
+	done`
+#
+# Modules that use libtool /and/ use  AC_CONFIG_MACRO_DIR([m4]) may also
+# include this:
+GITIGNORE_MAINTAINERCLEANFILES_M4_LIBTOOL = \
+	$(srcdir)/m4/libtool.m4 \
+	$(srcdir)/m4/ltoptions.m4 \
+	$(srcdir)/m4/ltsugar.m4 \
+	$(srcdir)/m4/ltversion.m4 \
+	$(srcdir)/m4/lt~obsolete.m4
+
+
+
+###############################################################################
+# Default rule is to install ourselves in all Makefile.am files:
+###############################################################################
+
 git-all: git-mk-install
 
 git-mk-install:
-	@echo Installing git makefile
+	@echo "Installing git makefile"
 	@any_failed=; \
 		find "`test -z "$(top_srcdir)" && echo . || echo "$(top_srcdir)"`" -name Makefile.am | while read x; do \
 		if grep 'include .*/git.mk' $$x >/dev/null; then \
-			echo $$x already includes git.mk; \
+			echo "$$x already includes git.mk"; \
 		else \
 			failed=; \
 			echo "Updating $$x"; \
@@ -80,7 +131,7 @@ git-mk-install:
 				mv $$x.tmp $$x || failed=1; \
 			fi; \
 			if test x$$failed = x; then : else \
-				echo Failed updating $$x; >&2 \
+				echo "Failed updating $$x"; >&2 \
 				any_failed=1; \
 			fi; \
 	fi; done; test -z "$$any_failed"
@@ -88,11 +139,14 @@ git-mk-install:
 .PHONY: git-all git-mk-install
 
 
-### .gitignore generation
+
+###############################################################################
+# Actual .gitignore generation:
+###############################################################################
 
 $(srcdir)/.gitignore: Makefile.am $(top_srcdir)/git.mk
-	$(AM_V_GEN) \
-	{ \
+	@echo "git.mk: Generating $@"
+	@{ \
 		if test "x$(DOC_MODULE)" = x -o "x$(DOC_MAIN_SGML_FILE)" = x; then :; else \
 			for x in \
 				$(DOC_MODULE)-decl-list.txt \
@@ -100,7 +154,7 @@ $(srcdir)/.gitignore: Makefile.am $(top_srcdir)/git.mk
 				tmpl/$(DOC_MODULE)-unused.sgml \
 				"tmpl/*.bak" \
 				xml html \
-			; do echo /$$x; done; \
+			; do echo "/$$x"; done; \
 		fi; \
 		if test "x$(DOC_MODULE)$(DOC_ID)" = x -o "x$(DOC_LINGUAS)" = x; then :; else \
 			for lc in $(DOC_LINGUAS); do \
@@ -108,7 +162,7 @@ $(srcdir)/.gitignore: Makefile.am $(top_srcdir)/git.mk
 					$(if $(DOC_MODULE),$(DOC_MODULE).xml) \
 					$(DOC_PAGES) \
 					$(DOC_INCLUDES) \
-				; do echo /$$lc/$$x; done; \
+				; do echo "/$$lc/$$x"; done; \
 			done; \
 			for x in \
 				$(_DOC_OMF_ALL) \
@@ -126,30 +180,36 @@ $(srcdir)/.gitignore: Makefile.am $(top_srcdir)/git.mk
 					$(HELP_FILES) \
 					"$$lc.stamp" \
 					"$$lc.mo" \
-				; do echo /$$lc/$$x; done; \
+				; do echo "/$$lc/$$x"; done; \
 			done; \
 		fi; \
 		if test "x$(gsettings_SCHEMAS)" = x; then :; else \
 			for x in \
 				$(gsettings_SCHEMAS:.xml=.valid) \
 				$(gsettings__enum_file) \
-			; do echo /$$x; done; \
+			; do echo "/$$x"; done; \
 		fi; \
 		if test -f $(srcdir)/po/Makefile.in.in; then \
 			for x in \
 				po/Makefile.in.in \
+				po/Makefile.in.in~ \
 				po/Makefile.in \
 				po/Makefile \
+				po/Makevars.template \
 				po/POTFILES \
+				po/Rules-quot \
 				po/stamp-it \
 				po/.intltool-merge-cache \
 				"po/*.gmo" \
+				"po/*.header" \
 				"po/*.mo" \
+				"po/*.sed" \
+				"po/*.sin" \
 				po/$(GETTEXT_PACKAGE).pot \
 				intltool-extract.in \
 				intltool-merge.in \
 				intltool-update.in \
-			; do echo /$$x; done; \
+			; do echo "/$$x"; done; \
 		fi; \
 		if test -f $(srcdir)/configure; then \
 			for x in \
@@ -159,28 +219,33 @@ $(srcdir)/.gitignore: Makefile.am $(top_srcdir)/git.mk
 				stamp-h1 \
 				libtool \
 				config.lt \
-			; do echo /$$x; done; \
+			; do echo "/$$x"; done; \
 		fi; \
 		if test "x$(DEJATOOL)" = x; then :; else \
 			for x in \
 				$(DEJATOOL) \
-			; do echo /$$x.sum; echo /$$x.log; done; \
+			; do echo "/$$x.sum"; echo "/$$x.log"; done; \
 			echo /site.exp; \
 		fi; \
+		if test "x$(am__dirstamp)" = x; then :; else \
+			echo "$(am__dirstamp)"; \
+		fi; \
+		if test "x$(LTCOMPILE)" = x; then :; else \
+			for x in \
+				"*.lo" \
+				".libs" "_libs" \
+			; do echo "$$x"; done; \
+		fi; \
 		for x in \
 			.gitignore \
 			$(GITIGNOREFILES) \
 			$(CLEANFILES) \
-			$(PROGRAMS) \
-			$(check_PROGRAMS) \
-			$(EXTRA_PROGRAMS) \
-			$(LIBRARIES) \
-			$(LTLIBRARIES) \
+			$(PROGRAMS) $(check_PROGRAMS) $(EXTRA_PROGRAMS) \
+			$(LIBRARIES) $(check_LIBRARIES) $(EXTRA_LIBRARIES) \
+			$(LTLIBRARIES) $(check_LTLIBRARIES) $(EXTRA_LTLIBRARIES) \
 			so_locations \
-			.libs _libs \
 			$(MOSTLYCLEANFILES) \
 			"*.$(OBJEXT)" \
-			"*.lo" \
 			$(DISTCLEANFILES) \
 			$(am__CONFIG_DISTCLEAN_FILES) \
 			$(CONFIG_CLEAN_FILES) \
@@ -197,7 +262,7 @@ $(srcdir)/.gitignore: Makefile.am $(top_srcdir)/git.mk
 			"*~" \
 			".*.sw[nop]" \
 			".dirstamp" \
-		; do echo /$$x; done; \
+		; do echo "/$$x"; done; \
 	} | \
 	sed "s@^/`echo "$(srcdir)" | sed 's/\(.\)/[\1]/g'`/@/@" | \
 	sed 's@/[.]/@/@g' | \
@@ -211,12 +276,12 @@ gitignore-recurse-maybe:
 	@for subdir in $(DIST_SUBDIRS); do \
 	  case " $(SUBDIRS) " in \
 	    *" $$subdir "*) :;; \
-	    *) test "$$subdir" = . || (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) .gitignore gitignore-recurse-maybe || echo "Skipping $$subdir");; \
+	    *) test "$$subdir" = . -o -e "$$subdir/.git" || (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) .gitignore gitignore-recurse-maybe || echo "Skipping $$subdir");; \
 	  esac; \
 	done
 gitignore-recurse:
 	@for subdir in $(DIST_SUBDIRS); do \
-	    test "$$subdir" = . || (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) .gitignore gitignore-recurse || echo "Skipping $$subdir"); \
+	    test "$$subdir" = . -o -e "$$subdir/.git" || (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) .gitignore gitignore-recurse || echo "Skipping $$subdir"); \
 	done
 
 maintainer-clean: gitignore-clean
-- 
2.8.1


