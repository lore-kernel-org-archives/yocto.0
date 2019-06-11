Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58C9FE00D6C; Mon, 10 Jun 2019 20:07:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDDB6E00D6E
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 20:07:38 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5B372AY020738
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 10 Jun 2019 20:07:12 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Mon, 10 Jun 2019 20:06:51 -0700
From: <zhe.he@windriver.com>
To: <anuj.mittal@intel.com>, <yocto@yoctoproject.org>
Date: Tue, 11 Jun 2019 11:06:49 +0800
Message-ID: <1560222410-414851-1-git-send-email-zhe.he@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-dpdk][PATCH] dpdk: mk: disable warning for packed member pointer
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
X-List-Received-Date: Tue, 11 Jun 2019 03:07:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

From: He Zhe <zhe.he@windriver.com>

Backport a patch from upstream to fix the following build failure.

x86_64-native-linuxapp-gcc/include/rte_ether.h:178:2: error:
converting a packed 'const struct ether_addr' pointer (alignment 1) to a 'unaligned_uint16_t' {aka 'const short
 unsigned int'} pointer (alignment 2) may result in an unaligned pointer value [-Werror=address-of-packed-member]
|   178 |  const unaligned_uint16_t *ea_words = (const unaligned_uint16_t *)ea;
|       |  ^~~~~

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 ...disable-warning-for-packed-member-pointer.patch | 48 ++++++++++++++++++++++
 recipes-extended/dpdk/dpdk_17.11.3.bb              |  1 +
 2 files changed, 49 insertions(+)
 create mode 100644 recipes-extended/dpdk/dpdk/dpdk-17.11-mk-disable-warning-for-packed-member-pointer.patch

diff --git a/recipes-extended/dpdk/dpdk/dpdk-17.11-mk-disable-warning-for-packed-member-pointer.patch b/recipes-extended/dpdk/dpdk/dpdk-17.11-mk-disable-warning-for-packed-member-pointer.patch
new file mode 100644
index 0000000..70a8dec
--- /dev/null
+++ b/recipes-extended/dpdk/dpdk/dpdk-17.11-mk-disable-warning-for-packed-member-pointer.patch
@@ -0,0 +1,48 @@
+From a385972c3675dd2b4792ab5b3cf7a536e6f9846c Mon Sep 17 00:00:00 2001
+From: Reshma Pattan <reshma.pattan@intel.com>
+Date: Thu, 2 May 2019 10:33:34 +0100
+Subject: [PATCH] mk: disable warning for packed member pointer
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+gcc 9 on Fedora 30 gives an error
+"taking address of packed member may result in an
+unaligned pointer value" warnings.
+
+For clang builds this warning is already disabled,
+so disable "-Waddress-of-packed-member" for gcc builds
+also.
+
+Snippet of build error:
+lib/librte_eal/linux/eal/eal_memalloc.c: In function ‘alloc_seg_walk’:
+lib/librte_eal/linux/eal/eal_memalloc.c:768:12: error:
+taking address of packed member of ‘struct rte_mem_config’ may result
+in an unaligned pointer value [-Werror=address-of-packed-member]
+  768 |  cur_msl = &mcfg->memsegs[msl_idx];
+      |            ^~~~~~~~~~~~~~~~~~~~~~~
+
+Signed-off-by: Reshma Pattan <reshma.pattan@intel.com>
+Tested-by: David Marchand <david.marchand@redhat.com>
+Upstream-Status: Backport
+Signed-off-by: He Zhe <zhe.he@windriver.com>
+---
+ mk/toolchain/gcc/rte.vars.mk | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/mk/toolchain/gcc/rte.vars.mk b/mk/toolchain/gcc/rte.vars.mk
+index d8b99fa..b852fcf 100644
+--- a/mk/toolchain/gcc/rte.vars.mk
++++ b/mk/toolchain/gcc/rte.vars.mk
+@@ -87,5 +87,8 @@ WERROR_FLAGS += -Wimplicit-fallthrough=2
+ WERROR_FLAGS += -Wno-format-truncation
+ endif
+ 
++# disable packed member unalign warnings
++WERROR_FLAGS += -Wno-address-of-packed-member
++
+ export CC AS AR LD OBJCOPY OBJDUMP STRIP READELF
+ export TOOLCHAIN_CFLAGS TOOLCHAIN_LDFLAGS TOOLCHAIN_ASFLAGS
+-- 
+2.7.4
+
diff --git a/recipes-extended/dpdk/dpdk_17.11.3.bb b/recipes-extended/dpdk/dpdk_17.11.3.bb
index 7fc89d2..af42ad8 100644
--- a/recipes-extended/dpdk/dpdk_17.11.3.bb
+++ b/recipes-extended/dpdk/dpdk_17.11.3.bb
@@ -12,4 +12,5 @@ SRC_URI += "\
         file://dpdk-16.07-dpdk-fix-for-parellel-make-issue.patch \
         file://dpdk-17.02-dpdk-fix-installation-warning-and-issue.patch \
         file://dpdk-17.11-Fix-strncpy-error-for-GCC8.patch \
+        file://dpdk-17.11-mk-disable-warning-for-packed-member-pointer.patch \
 "
-- 
2.7.4


