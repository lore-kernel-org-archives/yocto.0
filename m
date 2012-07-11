Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5820FE00342
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 22:29:10 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jul 2012 22:29:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="166597434"
Received: from unknown (HELO localhost) ([10.255.12.200])
	by azsmga001.ch.intel.com with ESMTP; 10 Jul 2012 22:29:09 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	richard.purdie@linuxfoundation.org, saul.wold@intel.com
Date: Wed, 11 Jul 2012 00:29:00 -0500
Message-Id: <85f361bf28b4d0d22923fc9efd33e93c833da5d3.1341983825.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7fb5dd9589b3c47b7fb2098ac68e3ddc4ec7fcf6.1341983825.git.tom.zanussi@intel.com>
References: <7fb5dd9589b3c47b7fb2098ac68e3ddc4ec7fcf6.1341983825.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1341983825.git.tom.zanussi@intel.com>
References: <cover.1341983825.git.tom.zanussi@intel.com>
Subject: [PATCH 3/6] perf: use pkg-config instead of python-config
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
X-List-Received-Date: Wed, 11 Jul 2012 05:29:10 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Python has build flags available via pkg-config, use those at
build-time instead.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 tools/perf/Makefile |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/Makefile b/tools/perf/Makefile
index db7ec20..3eda00d 100644
--- a/tools/perf/Makefile
+++ b/tools/perf/Makefile
@@ -528,10 +528,10 @@ else
 
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


