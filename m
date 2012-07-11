Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F24EE002A8
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 22:29:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Jul 2012 22:29:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="164111208"
Received: from unknown (HELO localhost) ([10.255.12.200])
	by orsmga001.jf.intel.com with ESMTP; 10 Jul 2012 22:29:04 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	richard.purdie@linuxfoundation.org, saul.wold@intel.com
Date: Wed, 11 Jul 2012 00:28:58 -0500
Message-Id: <7fb5dd9589b3c47b7fb2098ac68e3ddc4ec7fcf6.1341983825.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1341983825.git.tom.zanussi@intel.com>
References: <cover.1341983825.git.tom.zanussi@intel.com>
Subject: [PATCH 1/6] Revert "perf: hard-code NO_LIBPERL/NO_LIBPYTHON"
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
X-List-Received-Date: Wed, 11 Jul 2012 05:29:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This reverts commit 3216e7d5c3cada16161481826cdb39c930457587.

LIBPERL and LIBPYTHON can now be enabled using the 'perf-scripting'
feature.
---
 tools/perf/Makefile |   82 +++++++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 80 insertions(+), 2 deletions(-)

diff --git a/tools/perf/Makefile b/tools/perf/Makefile
index e3eb19e..c168366 100644
--- a/tools/perf/Makefile
+++ b/tools/perf/Makefile
@@ -471,8 +471,31 @@ else
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
@@ -480,6 +503,61 @@ override PYTHON := \
 ifndef PYTHON
   $(call disable-python,python interpreter)
   python-clean :=
+else
+
+  PYTHON_WORD := $(call shell-wordify,$(PYTHON))
+
+  python-clean := $(PYTHON_WORD) util/setup.py clean \
+    --build-lib='$(OUTPUT)python' \
+    --build-temp='$(OUTPUT)python/temp'
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


