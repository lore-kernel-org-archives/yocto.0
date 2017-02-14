Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12A0EE0082A; Tue, 14 Feb 2017 14:37:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D3E5E006EA;
	Tue, 14 Feb 2017 14:37:07 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Feb 2017 14:37:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,163,1484035200"; d="scan'208";a="44502737"
Received: from unknown (HELO localhost.localdomain) ([10.7.197.100])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2017 14:37:06 -0800
From: Todor Minchev <todor.minchev@linux.intel.com>
To: jianxun.zhang@linux.intel.com, yocto@yoctoproject.org,
	meta-intel@yoctoproject.org
Date: Tue, 14 Feb 2017 14:36:48 -0800
Message-Id: <20170214223652.88931-2-todor.minchev@linux.intel.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170214223652.88931-1-todor.minchev@linux.intel.com>
References: <20170214223652.88931-1-todor.minchev@linux.intel.com>
Cc: Todor Minchev <todor.minchev@linux.intel.com>
Subject: [PATCH v3 1/5] Makefile: disable silent mode in Makefiles
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
X-List-Received-Date: Tue, 14 Feb 2017 22:37:09 -0000

By default make will output the commands that are executed for each
target. Silent mode can be enabled with the '-s' option.

Example:
make -s

Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
---
 Makefile     | 21 +++++++++++----------
 Makefile.efi | 10 +++++-----
 2 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/Makefile b/Makefile
index 9ade775..c58047a 100644
--- a/Makefile
+++ b/Makefile
@@ -25,23 +25,24 @@ RMC_CFLAGS := -Wall -I$(TOPDIR)/inc
 all: rmc
 
 $(ALL_OBJS): %.o: %.c
-	@$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
+	$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
 
 librmc: $(RMC_LIB_OBJ)
-	@$(AR) rcs src/lib/$@.a $^
+	$(AR) rcs src/lib/$@.a $^
 
 rmc: $(RMC_TOOL_OBJ) librmc
-	@$(CC) $(CFLAGS) $(RMC_CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) src/lib/librmc.a -o src/$@
+	$(CC) $(CFLAGS) $(RMC_CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) \
+  src/lib/librmc.a -o src/$@
 
 clean:
-	@rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
+	rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
 
 .PHONY: clean rmc librmc
 
 install:
-	@mkdir -p $(RMC_INSTALL_BIN_PATH)
-	@install -m 755 src/rmc $(RMC_INSTALL_BIN_PATH)
-	@mkdir -p $(RMC_INSTALL_LIB_PATH)
-	@install -m 644 src/lib/librmc.a $(RMC_INSTALL_LIB_PATH)
-	@mkdir -p $(RMC_INSTALL_HEADER_PATH)
-	@install -m 644 $(RMC_INSTALL_HEADERS) $(RMC_INSTALL_HEADER_PATH)
+	mkdir -p $(RMC_INSTALL_BIN_PATH)
+	install -m 755 src/rmc $(RMC_INSTALL_BIN_PATH)
+	mkdir -p $(RMC_INSTALL_LIB_PATH)
+	install -m 644 src/lib/librmc.a $(RMC_INSTALL_LIB_PATH)
+	mkdir -p $(RMC_INSTALL_HEADER_PATH)
+	install -m 644 $(RMC_INSTALL_HEADERS) $(RMC_INSTALL_HEADER_PATH)
diff --git a/Makefile.efi b/Makefile.efi
index 3bd417d..66081d7 100644
--- a/Makefile.efi
+++ b/Makefile.efi
@@ -18,16 +18,16 @@ RMC_CFLAGS := -DRMC_EFI -Wall -I$(TOPDIR)/inc -fpic -nostdinc -nostdlib  -fno-bu
 all: librmcefi
 
 $(RMC_LIB_OBJ): %.efi.o: %.c
-	@$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
+	$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
 
 librmcefi: $(RMC_LIB_OBJ)
-	@$(AR) rcs src/lib/$@.a $^
+	$(AR) rcs src/lib/$@.a $^
 
 clean:
-	@rm -f $(RMC_LIB_OBJ) src/lib/librmcefi.a
+	rm -f $(RMC_LIB_OBJ) src/lib/librmcefi.a
 
 .PHONY: clean librmcefi
 
 install:
-	@mkdir -p $(RMC_INSTALL_LIB_PATH)
-	@install -m 644 $(RMC_INSTALL_LIBS) $(RMC_INSTALL_LIB_PATH)
+	mkdir -p $(RMC_INSTALL_LIB_PATH)
+	install -m 644 $(RMC_INSTALL_LIBS) $(RMC_INSTALL_LIB_PATH)
-- 
2.11.1


