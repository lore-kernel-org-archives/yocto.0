Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F02AE009E2; Thu,  2 Feb 2017 14:37:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86E43E00826;
	Thu,  2 Feb 2017 14:37:39 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 02 Feb 2017 14:37:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,326,1477983600"; d="scan'208";a="929565584"
Received: from unknown (HELO localhost.localdomain) ([10.7.197.100])
	by orsmga003.jf.intel.com with ESMTP; 02 Feb 2017 14:37:38 -0800
From: Todor Minchev <todor.minchev@linux.intel.com>
To: yocto@yoctoproject.org, meta-intel@yoctoproject.org,
	jianxun.zhang@linux.intel.com
Date: Thu,  2 Feb 2017 14:37:10 -0800
Message-Id: <20170202223712.8164-2-todor.minchev@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170202223712.8164-1-todor.minchev@linux.intel.com>
References: <20170202223712.8164-1-todor.minchev@linux.intel.com>
Cc: Todor Minchev <todor.minchev@linux.intel.com>
Subject: [PATCH 1/3] Makefile: add verbosity and debug options to Makefile
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
X-List-Received-Date: Thu, 02 Feb 2017 22:37:41 -0000

By default Makefile verbosity is disabled (V=0). Verbosity can be enabled by
setting the V environment variable to any value not equal to 0 (e.g V=1)

Example:
make clean V=1; make V=1

A debug version of the rmc binary can be built by using the debug
Makefile target. This will include debug symbols and will disable compiler
optimizations when compiling rmc.

Example:

make debug

Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
---
 Makefile | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/Makefile b/Makefile
index 9ade775..d85d8e9 100644
--- a/Makefile
+++ b/Makefile
@@ -1,5 +1,12 @@
 # Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
 
+V ?= 0
+ifeq ($(V),0)
+  VERBOSITY = @
+else
+  VERBOSITY =
+endif
+
 TOPDIR = $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; fi)
 
 RMC_TOOL_SRC := $(wildcard src/*.c)
@@ -20,28 +27,32 @@ RMC_INSTALL_HEADER_PATH := $(RMC_INSTALL_PREFIX)/include/rmc/
 
 ALL_OBJS := $(RMC_TOOL_OBJ) $(RMC_LIB_OBJ)
 
+
 RMC_CFLAGS := -Wall -I$(TOPDIR)/inc
 
 all: rmc
+debug: RMC_CFLAGS += -DDEBUG -g -O0
+debug: rmc
 
 $(ALL_OBJS): %.o: %.c
-	@$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
+	$(VERBOSITY)$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
 
 librmc: $(RMC_LIB_OBJ)
-	@$(AR) rcs src/lib/$@.a $^
+	$(VERBOSITY)$(AR) rcs src/lib/$@.a $^
 
 rmc: $(RMC_TOOL_OBJ) librmc
-	@$(CC) $(CFLAGS) $(RMC_CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) src/lib/librmc.a -o src/$@
+	$(VERBOSITY)$(CC) $(CFLAGS) $(RMC_CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) \
+  src/lib/librmc.a -o src/$@
 
 clean:
-	@rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
+	$(VERBOSITY)rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
 
 .PHONY: clean rmc librmc
 
 install:
-	@mkdir -p $(RMC_INSTALL_BIN_PATH)
-	@install -m 755 src/rmc $(RMC_INSTALL_BIN_PATH)
-	@mkdir -p $(RMC_INSTALL_LIB_PATH)
-	@install -m 644 src/lib/librmc.a $(RMC_INSTALL_LIB_PATH)
-	@mkdir -p $(RMC_INSTALL_HEADER_PATH)
-	@install -m 644 $(RMC_INSTALL_HEADERS) $(RMC_INSTALL_HEADER_PATH)
+	$(VERBOSITY)mkdir -p $(RMC_INSTALL_BIN_PATH)
+	$(VERBOSITY)install -m 755 src/rmc $(RMC_INSTALL_BIN_PATH)
+	$(VERBOSITY)mkdir -p $(RMC_INSTALL_LIB_PATH)
+	$(VERBOSITY)install -m 644 src/lib/librmc.a $(RMC_INSTALL_LIB_PATH)
+	$(VERBOSITY)mkdir -p $(RMC_INSTALL_HEADER_PATH)
+	$(VERBOSITY)install -m 644 $(RMC_INSTALL_HEADERS) $(RMC_INSTALL_HEADER_PATH)
-- 
2.11.0


