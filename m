Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1D13E0145B
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:09:28 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Jul 2012 11:09:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="163668198"
Received: from unknown (HELO localhost) ([10.255.12.166])
	by azsmga001.ch.intel.com with ESMTP; 03 Jul 2012 11:09:27 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  3 Jul 2012 13:09:23 -0500
Message-Id: <c6dcb6b7a2b527e02e2576d2e00885df789125d1.1341337418.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <406331faf03f6772742c9a2b2fb7db34c01968e6.1341337418.git.tom.zanussi@intel.com>
References: <406331faf03f6772742c9a2b2fb7db34c01968e6.1341337418.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341337418.git.tom.zanussi@intel.com>
References: <cover.1341337418.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Tue, 03 Jul 2012 18:09:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Python has build flags available via pkg-config, use those at
build-time instead.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 tools/perf/Makefile |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/Makefile b/tools/perf/Makefile
index b98e307..b8cb4d4 100644
--- a/tools/perf/Makefile
+++ b/tools/perf/Makefile
@@ -537,10 +537,10 @@ else
 
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


