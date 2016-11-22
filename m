Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCA5BE00CD5; Tue, 22 Nov 2016 11:32:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4902E00CC9
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 11:32:42 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,682,1473145200"; d="scan'208";a="34448017"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by orsmga005.jf.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Nov 2016 11:35:47 -0800
Message-Id: <1479843349-195099-5-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
References: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
Subject: [PATCH 4/6][rmc] use RMC_CFLAGS for internal compiler options.
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

The current RMC_CFLAGS worked as an interface for outside .But it
should be better to use this variable to hold internal flags and
respect CFLAGS passed from outside.

Also remove -O2 flag.

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 Makefile     | 6 +++---
 Makefile.efi | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index c5e1d11..9ade775 100644
--- a/Makefile
+++ b/Makefile
@@ -20,18 +20,18 @@ RMC_INSTALL_HEADER_PATH := $(RMC_INSTALL_PREFIX)/include/rmc/
 
 ALL_OBJS := $(RMC_TOOL_OBJ) $(RMC_LIB_OBJ)
 
-CFLAGS := -Wall -O2 -I$(TOPDIR)/inc $(RMC_CFLAGS)
+RMC_CFLAGS := -Wall -I$(TOPDIR)/inc
 
 all: rmc
 
 $(ALL_OBJS): %.o: %.c
-	@$(CC) -c $(CFLAGS) $< -o $@
+	@$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
 
 librmc: $(RMC_LIB_OBJ)
 	@$(AR) rcs src/lib/$@.a $^
 
 rmc: $(RMC_TOOL_OBJ) librmc
-	@$(CC) $(CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) src/lib/librmc.a -o src/$@
+	@$(CC) $(CFLAGS) $(RMC_CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) src/lib/librmc.a -o src/$@
 
 clean:
 	@rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
diff --git a/Makefile.efi b/Makefile.efi
index 73a7ac1..3bd417d 100644
--- a/Makefile.efi
+++ b/Makefile.efi
@@ -13,12 +13,12 @@ RMC_INSTALL_PREFIX := /usr
 
 RMC_INSTALL_LIB_PATH := $(RMC_INSTALL_PREFIX)/lib/
 
-CFLAGS := -DRMC_EFI -Wall -O2 -I$(TOPDIR)/inc -fpic -nostdinc -nostdlib  -fno-builtin -std=gnu90 $(RMC_CFLAGS)
+RMC_CFLAGS := -DRMC_EFI -Wall -I$(TOPDIR)/inc -fpic -nostdinc -nostdlib  -fno-builtin -std=gnu90
 
 all: librmcefi
 
 $(RMC_LIB_OBJ): %.efi.o: %.c
-	@$(CC) -c $(CFLAGS) $< -o $@
+	@$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
 
 librmcefi: $(RMC_LIB_OBJ)
 	@$(AR) rcs src/lib/$@.a $^
-- 
2.7.4


