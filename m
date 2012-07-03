Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8CCFE006EA
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:08:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jul 2012 11:07:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="166452234"
Received: from unknown (HELO localhost) ([10.255.12.166])
	by orsmga002.jf.intel.com with ESMTP; 03 Jul 2012 11:07:51 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  3 Jul 2012 13:07:46 -0500
Message-Id: <30bc69ca43950cc3e4a4c028b9b952f3df437b26.1341329269.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <32817b7eb33e9e9359583f824b15cff1b1f99e21.1341329269.git.tom.zanussi@intel.com>
References: <32817b7eb33e9e9359583f824b15cff1b1f99e21.1341329269.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341329269.git.tom.zanussi@intel.com>
References: <cover.1341329269.git.tom.zanussi@intel.com>
Subject: [PATCH 2/4] perf: use pkg-config instead of python-config
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
X-List-Received-Date: Tue, 03 Jul 2012 18:08:20 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Python has build flags available via pkg-config, use those at
build-time instead.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 tools/perf/Makefile |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/Makefile b/tools/perf/Makefile
index 92271d3..35425ab 100644
--- a/tools/perf/Makefile
+++ b/tools/perf/Makefile
@@ -596,10 +596,10 @@ else
 
       PYTHON_CONFIG_SQ := $(call shell-sq,$(PYTHON_CONFIG))
 
-      PYTHON_EMBED_LDOPTS := $(shell $(PYTHON_CONFIG_SQ) --ldflags 2>/dev/null)
+      PYTHON_EMBED_LDOPTS := $(shell pkg-config --libs python 2>/dev/null)
       PYTHON_EMBED_LDFLAGS := $(call strip-libs,$(PYTHON_EMBED_LDOPTS))
       PYTHON_EMBED_LIBADD := $(call grep-libs,$(PYTHON_EMBED_LDOPTS))
-      PYTHON_EMBED_CCOPTS := $(shell $(PYTHON_CONFIG_SQ) --cflags 2>/dev/null)
+      PYTHON_EMBED_CCOPTS := $(shell pkg-config --cflags python 2>/dev/null)
       FLAGS_PYTHON_EMBED := $(PYTHON_EMBED_CCOPTS) $(PYTHON_EMBED_LDOPTS)
 
       ifneq ($(call try-cc,$(SOURCE_PYTHON_EMBED),$(FLAGS_PYTHON_EMBED)),y)
-- 
1.7.0.4


