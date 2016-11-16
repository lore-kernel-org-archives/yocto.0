Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C034AE00BF8; Tue, 15 Nov 2016 20:53:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A97EE00B71
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 20:53:26 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP; 15 Nov 2016 20:53:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,646,1473145200"; d="scan'208";a="1085842345"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by fmsmga002.fm.intel.com with ESMTP; 15 Nov 2016 20:53:21 -0800
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 15 Nov 2016 20:56:19 -0800
Message-Id: <1479272179-145521-1-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] rmc: Fix include path and type definitions
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
X-List-Received-Date: Wed, 16 Nov 2016 04:53:33 -0000

Add detection of current path for -I option, also update
type definitions for EFI compiling.

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 Makefile        | 4 +++-
 Makefile.efi    | 4 +++-
 inc/rmc_types.h | 9 ++++++---
 3 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index f152829..6c68a51 100644
--- a/Makefile
+++ b/Makefile
@@ -1,5 +1,7 @@
 # Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
 
+TOPDIR = $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; fi)
+
 RMC_TOOL_SRC := $(wildcard src/*.c)
 RMC_TOOL_OBJ := $(patsubst %.c,%.o,$(RMC_TOOL_SRC))
 
@@ -17,7 +19,7 @@ RMC_INSTALL_BIN_PATH := $(RMC_INSTALL_PREFIX)/bin/
 
 ALL_OBJS := $(RMC_TOOL_OBJ) $(RMCL_OBJ) $(RSMP_OBJ)
 
-CFLAGS := -Wall -O2 -Iinc $(RMC_CFLAGS)
+CFLAGS := -Wall -O2 -I$(TOPDIR)/inc $(RMC_CFLAGS)
 
 all: rmc librmcl librsmp
 
diff --git a/Makefile.efi b/Makefile.efi
index 4c2aada..2af85cb 100644
--- a/Makefile.efi
+++ b/Makefile.efi
@@ -1,5 +1,7 @@
 # Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
 
+TOPDIR = $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; fi)
+
 RMCL_SRC :=$(wildcard src/rmcl/*.c)
 RMCL_OBJ := $(patsubst %.c,%.efi.o,$(RMCL_SRC))
 
@@ -34,7 +36,7 @@ RMC_INSTALL_LIBS_PATH := $(RMC_INSTALL_PREFIX)/lib/
 SHARED_OBJS := src/util/util.efi.o
 ALL_OBJS := $(RMCL_OBJ) $(RSMP_OBJ) $(SHARED_OBJS)
 
-CFLAGS := -DRMC_EFI -Wall -O2 -Iinc -fpic -nostdinc -nostdlib  -fno-builtin -std=gnu90 \
+CFLAGS := -DRMC_EFI -Wall -O2 -I$(TOPDIR)/inc -fpic -nostdinc -nostdlib  -fno-builtin -std=gnu90 \
 	   -I$(RMC_EFI_HEADER_PREFIX) -I$(RMC_EFI_HEADER_PREFIX)/$(RMC_EFI_ARCH) $(RMC_CFLAGS)
 
 all: librmclefi librsmpefi
diff --git a/inc/rmc_types.h b/inc/rmc_types.h
index b6e4521..9154231 100644
--- a/inc/rmc_types.h
+++ b/inc/rmc_types.h
@@ -7,14 +7,17 @@
 #define INC_RMC_TYPES_H_
 
 #ifndef RMC_EFI
+#include <sys/types.h>
 #include <stdint.h>
 #include <stddef.h>
 #include <string.h>
 #else
 #include <efi.h>
-/* Fixme: we define (s)size_t here for both 32 and 64 bit because gnu-efi doesn't provide these */
-typedef uint64_t size_t;
-typedef uint64_t ssize_t;
+/* we specify -nostdinc in C flag and provide these in rmc
+ * for EFI applications that don't want to use standard headers.
+ */
+typedef unsigned long size_t;
+typedef long ssize_t;
 #endif
 
 typedef uint8_t BYTE;
-- 
2.7.4


