Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8BD3E01412
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:07:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Jul 2012 11:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="163667709"
Received: from unknown (HELO localhost) ([10.255.12.166])
	by azsmga001.ch.intel.com with ESMTP; 03 Jul 2012 11:07:49 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  3 Jul 2012 13:07:45 -0500
Message-Id: <32817b7eb33e9e9359583f824b15cff1b1f99e21.1341329269.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1341329269.git.tom.zanussi@intel.com>
References: <cover.1341329269.git.tom.zanussi@intel.com>
Subject: [PATCH 1/4] Revert "perf: hard-code NO_LIBPERL/NO_LIBPYTHON"
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
X-List-Received-Date: Tue, 03 Jul 2012 18:07:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This reverts commit 7c35c402e5bc2df6907b8f5d8a495dd6937a1b50.

LIBPERL and LIBPYTHON can now be enabled using the 'perf-scripting'
feature.
---
 tools/perf/Makefile |   87 +++++++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 85 insertions(+), 2 deletions(-)

diff --git a/tools/perf/Makefile b/tools/perf/Makefile
index bb1b364..92271d3 100644
--- a/tools/perf/Makefile
+++ b/tools/perf/Makefile
@@ -539,14 +539,97 @@ else
 	endif
 endif
 
-BASIC_CFLAGS += -DNO_LIBPERL
-BASIC_CFLAGS += -DNO_LIBPYTHON
+ifdef NO_LIBPERL
+	BASIC_CFLAGS += -DNO_LIBPERL
+else
+       PERL_EMBED_LDOPTS = $(shell perl -MExtUtils::Embed -e ldopts 2>/dev/null)
+       PERL_EMBED_LDFLAGS = $(call strip-libs,$(PERL_EMBED_LDOPTS))
+       PERL_EMBED_LIBADD = $(call grep-libs,$(PERL_EMBED_LDOPTS))
+	PERL_EMBED_CCOPTS = `perl -MExtUtils::Embed -e ccopts 2>/dev/null`
+	FLAGS_PERL_EMBED=$(PERL_EMBED_CCOPTS) $(PERL_EMBED_LDOPTS)
+
+	ifneq ($(call try-cc,$(SOURCE_PERL_EMBED),$(FLAGS_PERL_EMBED)),y)
+		BASIC_CFLAGS += -DNO_LIBPERL
+	else
+               ALL_LDFLAGS += $(PERL_EMBED_LDFLAGS)
+               EXTLIBS += $(PERL_EMBED_LIBADD)
+		LIB_OBJS += $(OUTPUT)util/scripting-engines/trace-event-perl.o
+		LIB_OBJS += $(OUTPUT)scripts/perl/Perf-Trace-Util/Context.o
+	endif
+endif
+
+disable-python = $(eval $(disable-python_code))
+define disable-python_code
+  BASIC_CFLAGS += -DNO_LIBPYTHON
+  $(if $(1),$(warning No $(1) was found))
+  $(warning Python support won't be built)
+endef
 
 override PYTHON := \
   $(call get-executable-or-default,PYTHON,python)
 
 ifndef PYTHON
   $(call disable-python,python interpreter)
+  python-clean :=
+else
+
+  PYTHON_WORD := $(call shell-wordify,$(PYTHON))
+
+  # python extension build directories
+  PYTHON_EXTBUILD     := $(OUTPUT)python_ext_build/
+  PYTHON_EXTBUILD_LIB := $(PYTHON_EXTBUILD)lib/
+  PYTHON_EXTBUILD_TMP := $(PYTHON_EXTBUILD)tmp/
+  export PYTHON_EXTBUILD_LIB PYTHON_EXTBUILD_TMP
+
+  python-clean := rm -rf $(PYTHON_EXTBUILD) $(OUTPUT)python/perf.so
+
+  ifdef NO_LIBPYTHON
+    $(call disable-python)
+  else
+
+    override PYTHON_CONFIG := \
+      $(call get-executable-or-default,PYTHON_CONFIG,$(PYTHON)-config)
+
+    ifndef PYTHON_CONFIG
+      $(call disable-python,python-config tool)
+    else
+
+      PYTHON_CONFIG_SQ := $(call shell-sq,$(PYTHON_CONFIG))
+
+      PYTHON_EMBED_LDOPTS := $(shell $(PYTHON_CONFIG_SQ) --ldflags 2>/dev/null)
+      PYTHON_EMBED_LDFLAGS := $(call strip-libs,$(PYTHON_EMBED_LDOPTS))
+      PYTHON_EMBED_LIBADD := $(call grep-libs,$(PYTHON_EMBED_LDOPTS))
+      PYTHON_EMBED_CCOPTS := $(shell $(PYTHON_CONFIG_SQ) --cflags 2>/dev/null)
+      FLAGS_PYTHON_EMBED := $(PYTHON_EMBED_CCOPTS) $(PYTHON_EMBED_LDOPTS)
+
+      ifneq ($(call try-cc,$(SOURCE_PYTHON_EMBED),$(FLAGS_PYTHON_EMBED)),y)
+        $(call disable-python,Python.h (for Python 2.x))
+      else
+
+        ifneq ($(call try-cc,$(SOURCE_PYTHON_VERSION),$(FLAGS_PYTHON_EMBED)),y)
+          $(warning Python 3 is not yet supported; please set)
+          $(warning PYTHON and/or PYTHON_CONFIG appropriately.)
+          $(warning If you also have Python 2 installed, then)
+          $(warning try something like:)
+          $(warning $(and ,))
+          $(warning $(and ,)  make PYTHON=python2)
+          $(warning $(and ,))
+          $(warning Otherwise, disable Python support entirely:)
+          $(warning $(and ,))
+          $(warning $(and ,)  make NO_LIBPYTHON=1)
+          $(warning $(and ,))
+          $(error   $(and ,))
+        else
+          ALL_LDFLAGS += $(PYTHON_EMBED_LDFLAGS)
+          EXTLIBS += $(PYTHON_EMBED_LIBADD)
+          LIB_OBJS += $(OUTPUT)util/scripting-engines/trace-event-python.o
+          LIB_OBJS += $(OUTPUT)scripts/python/Perf-Trace-Util/Context.o
+          LANG_BINDINGS += $(OUTPUT)python/perf.so
+        endif
+
+      endif
+    endif
+  endif
 endif
 
 ifdef NO_DEMANGLE
-- 
1.7.0.4


