Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A856E002AC
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 22:29:08 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jul 2012 22:29:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="175857462"
Received: from unknown (HELO localhost) ([10.255.12.200])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jul 2012 22:29:06 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	richard.purdie@linuxfoundation.org, saul.wold@intel.com
Date: Wed, 11 Jul 2012 00:28:59 -0500
Message-Id: <38ed941453324ce2bc0d700fb73904dc6a48689a.1341983825.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7fb5dd9589b3c47b7fb2098ac68e3ddc4ec7fcf6.1341983825.git.tom.zanussi@intel.com>
References: <7fb5dd9589b3c47b7fb2098ac68e3ddc4ec7fcf6.1341983825.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341983825.git.tom.zanussi@intel.com>
References: <cover.1341983825.git.tom.zanussi@intel.com>
Subject: [PATCH 2/6] perf tools: Add support to install perf python extension
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Jul 2012 05:29:08 -0000

From: Jiri Olsa <jolsa@redhat.com>

Adding install-python_ext target to install python extension related
files.  Installation directory is governed by python distutils package
and follows the DESTDIR variable settings.

Also moving python extension build output into '$(O)python_ext_build'
directory and making it configurable via PYTHON_EXTBUILD variable.

Keeping the '$(O)python/perf.so' file, so it could be used for testing
as of until now.

Cc: Ingo Molnar <mingo@elte.hu>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Peter Zijlstra <a.p.zijlstra@chello.nl>
Link: http://lkml.kernel.org/r/20110722113307.GA1931@jolsa.brq.redhat.com
Signed-off-by: Jiri Olsa <jolsa@redhat.com>
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/Makefile      |   19 +++++++++++++------
 tools/perf/util/setup.py |   21 ++++++++++++++++++++-
 2 files changed, 33 insertions(+), 7 deletions(-)

diff --git a/tools/perf/Makefile b/tools/perf/Makefile
index c168366..db7ec20 100644
--- a/tools/perf/Makefile
+++ b/tools/perf/Makefile
@@ -181,9 +181,9 @@ strip-libs = $(filter-out -l%,$(1))
 
 $(OUTPUT)python/perf.so: $(PYRF_OBJS)
 	$(QUIET_GEN)CFLAGS='$(BASIC_CFLAGS)' $(PYTHON_WORD) util/setup.py \
-	  --quiet build_ext \
-	  --build-lib='$(OUTPUT)python' \
-	  --build-temp='$(OUTPUT)python/temp'
+	  --quiet build_ext; \
+	mkdir -p $(OUTPUT)python && \
+	cp $(PYTHON_EXTBUILD_LIB)perf.so $(OUTPUT)python/
 #
 # No Perl scripts right now:
 #
@@ -507,9 +507,13 @@ else
 
   PYTHON_WORD := $(call shell-wordify,$(PYTHON))
 
-  python-clean := $(PYTHON_WORD) util/setup.py clean \
-    --build-lib='$(OUTPUT)python' \
-    --build-temp='$(OUTPUT)python/temp'
+  # python extension build directories
+  PYTHON_EXTBUILD     := $(OUTPUT)python_ext_build/
+  PYTHON_EXTBUILD_LIB := $(PYTHON_EXTBUILD)lib/
+  PYTHON_EXTBUILD_TMP := $(PYTHON_EXTBUILD)tmp/
+  export PYTHON_EXTBUILD_LIB PYTHON_EXTBUILD_TMP
+
+  python-clean := rm -rf $(PYTHON_EXTBUILD) $(OUTPUT)python/perf.so
 
   ifdef NO_LIBPYTHON
     $(call disable-python)
@@ -866,6 +870,9 @@ install: all
 	$(INSTALL) scripts/python/*.py -t '$(DESTDIR_SQ)$(perfexec_instdir_SQ)/scripts/python'
 	$(INSTALL) scripts/python/bin/* -t '$(DESTDIR_SQ)$(perfexec_instdir_SQ)/scripts/python/bin'
 
+install-python_ext:
+	$(PYTHON_WORD) util/setup.py --quiet install --root='/$(DESTDIR_SQ)'
+
 install-doc:
 	$(MAKE) -C Documentation install
 
diff --git a/tools/perf/util/setup.py b/tools/perf/util/setup.py
index bbc982f..95d3700 100644
--- a/tools/perf/util/setup.py
+++ b/tools/perf/util/setup.py
@@ -3,9 +3,27 @@
 from distutils.core import setup, Extension
 from os import getenv
 
+from distutils.command.build_ext   import build_ext   as _build_ext
+from distutils.command.install_lib import install_lib as _install_lib
+
+class build_ext(_build_ext):
+    def finalize_options(self):
+        _build_ext.finalize_options(self)
+        self.build_lib  = build_lib
+        self.build_temp = build_tmp
+
+class install_lib(_install_lib):
+    def finalize_options(self):
+        _install_lib.finalize_options(self)
+        self.build_dir = build_lib
+
+
 cflags = ['-fno-strict-aliasing', '-Wno-write-strings']
 cflags += getenv('CFLAGS', '').split()
 
+build_lib = getenv('PYTHON_EXTBUILD_LIB')
+build_tmp = getenv('PYTHON_EXTBUILD_TMP')
+
 perf = Extension('perf',
 		  sources = ['util/python.c', 'util/ctype.c', 'util/evlist.c',
 			     'util/evsel.c', 'util/cpumap.c', 'util/thread_map.c',
@@ -21,4 +39,5 @@ setup(name='perf',
       author_email='acme@redhat.com',
       license='GPLv2',
       url='http://perf.wiki.kernel.org',
-      ext_modules=[perf])
+      ext_modules=[perf],
+      cmdclass={'build_ext': build_ext, 'install_lib': install_lib})
-- 
1.7.0.4


