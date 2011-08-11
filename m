Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 632D8E011DA
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:23:50 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Aug 2011 01:23:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="36690110"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by orsmga002.jf.intel.com with ESMTP; 11 Aug 2011 01:23:59 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:46 -0700
Message-Id: <5ebbe24b1558c5e3a3412ea387555bd6702d0946.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
Subject: [PATCH 15/17] mpc8315e-rdb: remove boot -Os patch which is now in base
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
X-List-Received-Date: Thu, 11 Aug 2011 08:23:50 -0000

I asked for this patch to be pushed down to standard/base so
that it would be available in the preempt-rt build as well.
Turns out it would have been and now that I have the rt scc files
right, this patch was getting double applied and do_patch was
failing.

We can use this patch to remove it from the mpc8315 config, or
we can revert pushing it down into standard/base.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc      |    1 -
 .../powerpc-boot-remove-Os-from-BOOTFLAGS.patch    |   35 --------------------
 2 files changed, 0 insertions(+), 36 deletions(-)
 delete mode 100644 meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/powerpc-boot-remove-Os-from-BOOTFLAGS.patch

diff --git a/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc b/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc
index 4819a368..4a4d432 100644
--- a/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc
+++ b/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc
@@ -4,6 +4,5 @@ include cfg/usb-mass-storage.scc
 include cfg/vfat.scc
 include features/dmaengine/dmaengine.scc
 
-patch powerpc-boot-remove-Os-from-BOOTFLAGS.patch
 patch fsl-mpc8315e-rdb-Enable-EEPROM.patch
 patch mpc8315erdb-fix-ethernet-at-boot-time.patch
diff --git a/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/powerpc-boot-remove-Os-from-BOOTFLAGS.patch b/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/powerpc-boot-remove-Os-from-BOOTFLAGS.patch
deleted file mode 100644
index de0787c..0000000
--- a/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/powerpc-boot-remove-Os-from-BOOTFLAGS.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 986e6eb66c26007cee7916d5d12f4756e6b5436f Mon Sep 17 00:00:00 2001
-From: Bruce Ashfield <bruce.ashfield@windriver.com>
-Date: Thu, 14 Oct 2010 16:38:00 -0400
-Subject: [PATCH] powerpc/boot: remove -Os from BOOTFLAGS
-
-Some variants of gcc 4.5 have issues with -Os and will
-throw:
-
-  cc1: error: Do not use -Os option if --enable-target-optspace is not set.
-
--Os is not required to build a valid boot environment,
-so the easiest solution is to simply remove the boot
-flag.
-
-Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
----
- arch/powerpc/boot/Makefile |    2 +-
- 1 files changed, 1 insertions(+), 1 deletions(-)
-
-diff --git a/arch/powerpc/boot/Makefile b/arch/powerpc/boot/Makefile
-index bb2465b..c05f7ac 100644
---- a/arch/powerpc/boot/Makefile
-+++ b/arch/powerpc/boot/Makefile
-@@ -20,7 +20,7 @@
- all: $(obj)/zImage
- 
- BOOTCFLAGS    := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
--		 -fno-strict-aliasing -Os -msoft-float -pipe \
-+		 -fno-strict-aliasing -msoft-float -pipe \
- 		 -fomit-frame-pointer -fno-builtin -fPIC -nostdinc \
- 		 -isystem $(shell $(CROSS32CC) -print-file-name=include)
- BOOTAFLAGS	:= -D__ASSEMBLY__ $(BOOTCFLAGS) -traditional -nostdinc
--- 
-1.7.0.4
-
-- 
1.7.6


