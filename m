Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79FE7E00CD2; Tue, 22 Nov 2016 11:32:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 530F6E007E8
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 11:32:42 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,682,1473145200"; d="scan'208";a="34448014"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by orsmga005.jf.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Nov 2016 11:35:44 -0800
Message-Id: <1479843349-195099-2-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
References: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
Subject: [PATCH 1/6][rmc] consolidate RSMP and RMCL libraries into one
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
X-List-Received-Date: Tue, 22 Nov 2016 19:32:45 -0000

The two were organized in different libraries from functionality
perspective. This change merges them into a single library to
simplify linking RMC into client. There should not be much extra
footprint on the binary size because they are very small and
always work together.

We move the code into a common directory lib/common with a RULE
readme file.

This change also includes miscellaneous amendments in Makefiles.

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 Makefile                        | 39 ++++++++++++++++++-----------------
 Makefile.efi                    | 45 +++++++++++++++--------------------------
 src/lib/common/RULES            |  4 ++++
 src/{rmcl => lib/common}/rmcl.c |  0
 src/{rsmp => lib/common}/rsmp.c |  0
 5 files changed, 40 insertions(+), 48 deletions(-)
 create mode 100644 src/lib/common/RULES
 rename src/{rmcl => lib/common}/rmcl.c (100%)
 rename src/{rsmp => lib/common}/rsmp.c (100%)

diff --git a/Makefile b/Makefile
index 6c68a51..365dfac 100644
--- a/Makefile
+++ b/Makefile
@@ -5,42 +5,43 @@ TOPDIR = $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; fi)
 RMC_TOOL_SRC := $(wildcard src/*.c)
 RMC_TOOL_OBJ := $(patsubst %.c,%.o,$(RMC_TOOL_SRC))
 
-RMCL_SRC :=$(wildcard src/rmcl/*.c)
-RMCL_OBJ := $(patsubst %.c,%.o,$(RMCL_SRC))
+RMC_LIB_SRC := $(wildcard src/lib/common/*.c)
+RMC_LIB_OBJ := $(patsubst %.c,%.o,$(RMC_LIB_SRC))
 
-RSMP_SRC :=$(wildcard src/rsmp/*.c)
-RSMP_OBJ := $(patsubst %.c,%.o,$(RSMP_SRC))
+RMC_INSTALL_HEADERS := inc/rmcl.h inc/rsmp.h
 
-ifeq ($(strip $(RMC_INSTALL_PREFIX)),)
 RMC_INSTALL_PREFIX := /usr
-endif
 
 RMC_INSTALL_BIN_PATH := $(RMC_INSTALL_PREFIX)/bin/
 
-ALL_OBJS := $(RMC_TOOL_OBJ) $(RMCL_OBJ) $(RSMP_OBJ)
+RMC_INSTALL_LIB_PATH := $(RMC_INSTALL_PREFIX)/lib/
+
+RMC_INSTALL_HEADER_PATH := $(RMC_INSTALL_PREFIX)/include/
+
+ALL_OBJS := $(RMC_TOOL_OBJ) $(RMC_LIB_OBJ)
 
 CFLAGS := -Wall -O2 -I$(TOPDIR)/inc $(RMC_CFLAGS)
 
-all: rmc librmcl librsmp
+all: rmc
 
 $(ALL_OBJS): %.o: %.c
-	$(CC) -c $(CFLAGS) $< -o $@
-
-librmcl: $(RMCL_OBJ)
-	@$(AR) rcs src/rmcl/$@.a $<
+	@$(CC) -c $(CFLAGS) $< -o $@
 
-librsmp: $(RSMP_OBJ)
-	@$(AR) rcs src/rsmp/$@.a $<
+librmc: $(RMC_LIB_OBJ)
+	@$(AR) rcs src/lib/$@.a $^
 
-rmc: $(RMC_TOOL_OBJ) librsmp librmcl
-	$(CC) $(CFLAGS) -Lsrc/rsmp -Lsrc/rmcl -lrsmp -lrmcl $(RMC_TOOL_OBJ) src/rmcl/librmcl.a src/rsmp/librsmp.a -o src/$@
+rmc: $(RMC_TOOL_OBJ) librmc
+	@$(CC) $(CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) src/lib/librmc.a -o src/$@
 
 clean:
-	@rm -f $(ALL_OBJS) src/rmc src/rmcl/librmcl.a src/rsmp/librsmp.a
+	@rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
 
-.PHONY: clean rmc librmcl librsmp
+.PHONY: clean rmc librmc
 
-# Only install RMC tool in user space build, no librmcl, librsmp and headers.
 install:
 	@mkdir -p $(RMC_INSTALL_BIN_PATH)
 	@install -m 755 src/rmc $(RMC_INSTALL_BIN_PATH)
+	@mkdir -p $(RMC_INSTALL_LIB_PATH)
+	@install -m 644 src/lib/librmc.a $(RMC_INSTALL_LIB_PATH)
+	@mkdir -p $(RMC_INSTALL_HEADER_PATH)
+	@install -m 644 $(RMC_INSTALL_HEADERS) $(RMC_INSTALL_HEADER_PATH)
diff --git a/Makefile.efi b/Makefile.efi
index 2af85cb..a94b964 100644
--- a/Makefile.efi
+++ b/Makefile.efi
@@ -2,15 +2,13 @@
 
 TOPDIR = $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; fi)
 
-RMCL_SRC :=$(wildcard src/rmcl/*.c)
-RMCL_OBJ := $(patsubst %.c,%.efi.o,$(RMCL_SRC))
+RMC_LIB_SRC := $(wildcard src/lib/common/*.c) \
+               $(wildcard src/util/*.c)
 
-RSMP_SRC :=$(wildcard src/rsmp/*.c)
-RSMP_OBJ := $(patsubst %.c,%.efi.o,$(RSMP_SRC))
+RMC_LIB_OBJ := $(patsubst %.c,%.efi.o,$(RMC_LIB_SRC))
 
-# install rmcl (UEFI) libraries and necessary headers for rmcl.
 RMC_INSTALL_HEADERS := inc/rmcl.h inc/rmc_types.h inc/rsmp.h inc/rmc_util.h
-RMC_INSTALL_LIBS := src/rmcl/librmclefi.a src/rsmp/librsmpefi.a
+RMC_INSTALL_LIBS := src/lib/librmcefi.a
 
 ifeq ($(strip $(RMC_EFI_ARCH)),)
 $(error "Missing: You must specify RMC_EFI_ARCH (ia32 or x86_64) for host")
@@ -22,43 +20,32 @@ else
 $(error "Unknown RMC_EFI_ARCH $(RMC_EFI_ARCH): it must be ia32 or x86_64")
 endif
 
-ifeq ($(strip $(RMC_INSTALL_PREFIX)),)
-RMC_INSTALL_PREFIX := /usr
-endif
-
 ifeq ($(strip $(RMC_EFI_HEADER_PREFIX)),)
 RMC_EFI_HEADER_PREFIX := /usr/include/efi/
 endif
 
+RMC_INSTALL_PREFIX := /usr
 RMC_INSTALL_HEADER_PATH := $(RMC_INSTALL_PREFIX)/include/rmc/efi/
-RMC_INSTALL_LIBS_PATH := $(RMC_INSTALL_PREFIX)/lib/
-
-SHARED_OBJS := src/util/util.efi.o
-ALL_OBJS := $(RMCL_OBJ) $(RSMP_OBJ) $(SHARED_OBJS)
+RMC_INSTALL_LIB_PATH := $(RMC_INSTALL_PREFIX)/lib/
 
 CFLAGS := -DRMC_EFI -Wall -O2 -I$(TOPDIR)/inc -fpic -nostdinc -nostdlib  -fno-builtin -std=gnu90 \
 	   -I$(RMC_EFI_HEADER_PREFIX) -I$(RMC_EFI_HEADER_PREFIX)/$(RMC_EFI_ARCH) $(RMC_CFLAGS)
 
-all: librmclefi librsmpefi
-
-$(ALL_OBJS): %.efi.o: %.c
-	$(CC) -c $(CFLAGS) $< -o $@
+all: librmcefi
 
-librmclefi: $(RMCL_OBJ) $(SHARED_OBJS)
-	@$(AR) rcs src/rmcl/$@.a $^
+$(RMC_LIB_OBJ): %.efi.o: %.c
+	@$(CC) -c $(CFLAGS) $< -o $@
 
-librsmpefi: $(RSMP_OBJ) $(SHARED_OBJS)
-	@$(AR) rcs src/rsmp/$@.a $^
+librmcefi: $(RMC_LIB_OBJ)
+	@$(AR) rcs src/lib/$@.a $^
 
 clean:
-	@rm -f $(ALL_OBJS) src/rmcl/librmclefi.a src/rsmp/librsmpefi.a
+	@rm -f $(RMC_LIB_OBJ) src/lib/librmcefi.a
 
-.PHONY: clean librmclefi librsmpefi
+.PHONY: clean librmcefi
 
 install:
 	@mkdir -p $(RMC_INSTALL_HEADER_PATH)
-	@for each in $(RMC_INSTALL_HEADERS); do \
-		install -m 644 $$each $(RMC_INSTALL_HEADER_PATH); done
-	@mkdir -p $(RMC_INSTALL_LIBS_PATH)
-	@for each in $(RMC_INSTALL_LIBS); do \
-		install -m 644 $$each $(RMC_INSTALL_LIBS_PATH); done
+	@install -m 644 $(RMC_INSTALL_HEADERS) $(RMC_INSTALL_HEADER_PATH)
+	@mkdir -p $(RMC_INSTALL_LIB_PATH)
+	@install -m 644 $(RMC_INSTALL_LIBS) $(RMC_INSTALL_LIB_PATH)
diff --git a/src/lib/common/RULES b/src/lib/common/RULES
new file mode 100644
index 0000000..c134a89
--- /dev/null
+++ b/src/lib/common/RULES
@@ -0,0 +1,4 @@
+Source code in this directory are core implementation of RMC project. They shall
+be shared with both UEFI and user space contexts, so that we can unify behaviors
+of RMC at runtime across different universes. Consequently, these code shall be
+maintained and changed that way.
diff --git a/src/rmcl/rmcl.c b/src/lib/common/rmcl.c
similarity index 100%
rename from src/rmcl/rmcl.c
rename to src/lib/common/rmcl.c
diff --git a/src/rsmp/rsmp.c b/src/lib/common/rsmp.c
similarity index 100%
rename from src/rsmp/rsmp.c
rename to src/lib/common/rsmp.c
-- 
2.7.4


