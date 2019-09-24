Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4439AE00D00; Mon, 23 Sep 2019 19:40:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5767FE00A48
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 19:40:54 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8O2emWI011222
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 23 Sep 2019 19:40:48 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Mon, 23 Sep 2019 19:40:47 -0700
From: <zhe.he@windriver.com>
To: <yocto@yoctoproject.org>, <anuj.mittal@intel.com>
Date: Tue, 24 Sep 2019 10:40:46 +0800
Message-ID: <1569292846-12595-1-git-send-email-zhe.he@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-dpdk][PATCH] [RFC] dpdk: Remove v17
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
X-List-Received-Date: Tue, 24 Sep 2019 02:40:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

From: He Zhe <zhe.he@windriver.com>

openvswith used not to be able to work with dpdk v18. That's one of the reasons
why we keep v17. Now that openvswitch in meta-virtulization has been upgraded to
v2.11, officially claimed support of dpdk18, we can drop dpdk v17.

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 ...dk-16.07-dpdk-fix-for-parellel-make-issue.patch | 40 ------------------
 ...disable-warning-for-packed-member-pointer.patch | 48 ----------------------
 recipes-extended/dpdk/dpdk_17.11.6.bb              | 19 ---------
 3 files changed, 107 deletions(-)
 delete mode 100644 recipes-extended/dpdk/dpdk/dpdk-16.07-dpdk-fix-for-parellel-make-issue.patch
 delete mode 100644 recipes-extended/dpdk/dpdk/dpdk-17.11-mk-disable-warning-for-packed-member-pointer.patch
 delete mode 100644 recipes-extended/dpdk/dpdk_17.11.6.bb

diff --git a/recipes-extended/dpdk/dpdk/dpdk-16.07-dpdk-fix-for-parellel-make-issue.patch b/recipes-extended/dpdk/dpdk/dpdk-16.07-dpdk-fix-for-parellel-make-issue.patch
deleted file mode 100644
index 55f0c15..0000000
--- a/recipes-extended/dpdk/dpdk/dpdk-16.07-dpdk-fix-for-parellel-make-issue.patch
+++ /dev/null
@@ -1,40 +0,0 @@
-From 4a86048d44cae812b227b857772aeeb839502706 Mon Sep 17 00:00:00 2001
-From: Rahul Kumar Gupta <rahul.kumarxx.gupta@intel.com>
-Date: Fri, 2 Sep 2016 15:48:52 +0800
-Subject: [PATCH] dpdk: fix for parellel make issue
-
-To make sure that the path of libraries should be correct and
-libraries will be build before, And available at the time of
-linking example apps.
-
-Signed-off-by: Rahul Kumar Gupta <rahul.kumarxx.gupta@intel.com>
-
----
- examples/Makefile                     | 1 +
- examples/ethtool/ethtool-app/Makefile | 1 +
- 2 files changed, 2 insertions(+)
-
-diff --git a/examples/Makefile b/examples/Makefile
-index 17ecf7f64cda..2a8e805b85a7 100644
---- a/examples/Makefile
-+++ b/examples/Makefile
-@@ -41,6 +41,7 @@ DIRS-$(CONFIG_RTE_LIBRTE_BBDEV) += bbdev_app
- DIRS-$(CONFIG_RTE_LIBRTE_PMD_BOND) += bond
- DIRS-y += cmdline
- DIRS-$(CONFIG_RTE_LIBRTE_DISTRIBUTOR) += distributor
-+DEPDIRS-y += examples/ethtool/lib
- DIRS-y += ethtool
- DIRS-y += exception_path
- DIRS-$(CONFIG_RTE_LIBRTE_EFD) += server_node_efd
-diff --git a/examples/ethtool/ethtool-app/Makefile b/examples/ethtool/ethtool-app/Makefile
-index 4cd9efdd574b..d3c709ab2fef 100644
---- a/examples/ethtool/ethtool-app/Makefile
-+++ b/examples/ethtool/ethtool-app/Makefile
-@@ -19,6 +19,7 @@ SRCS-y := main.c ethapp.c
- CFLAGS += -O3 -D_GNU_SOURCE -pthread -I$(SRCDIR)/../lib
- CFLAGS += $(WERROR_FLAGS)
- 
-+LDLIBS += -L$(ETHTOOL_LIB_PATH)/
- LDLIBS += -L$(subst ethtool-app,lib,$(RTE_OUTPUT))/lib
- LDLIBS += -lrte_ethtool
- 
diff --git a/recipes-extended/dpdk/dpdk/dpdk-17.11-mk-disable-warning-for-packed-member-pointer.patch b/recipes-extended/dpdk/dpdk/dpdk-17.11-mk-disable-warning-for-packed-member-pointer.patch
deleted file mode 100644
index 70a8dec..0000000
--- a/recipes-extended/dpdk/dpdk/dpdk-17.11-mk-disable-warning-for-packed-member-pointer.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-From a385972c3675dd2b4792ab5b3cf7a536e6f9846c Mon Sep 17 00:00:00 2001
-From: Reshma Pattan <reshma.pattan@intel.com>
-Date: Thu, 2 May 2019 10:33:34 +0100
-Subject: [PATCH] mk: disable warning for packed member pointer
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-gcc 9 on Fedora 30 gives an error
-"taking address of packed member may result in an
-unaligned pointer value" warnings.
-
-For clang builds this warning is already disabled,
-so disable "-Waddress-of-packed-member" for gcc builds
-also.
-
-Snippet of build error:
-lib/librte_eal/linux/eal/eal_memalloc.c: In function ‘alloc_seg_walk’:
-lib/librte_eal/linux/eal/eal_memalloc.c:768:12: error:
-taking address of packed member of ‘struct rte_mem_config’ may result
-in an unaligned pointer value [-Werror=address-of-packed-member]
-  768 |  cur_msl = &mcfg->memsegs[msl_idx];
-      |            ^~~~~~~~~~~~~~~~~~~~~~~
-
-Signed-off-by: Reshma Pattan <reshma.pattan@intel.com>
-Tested-by: David Marchand <david.marchand@redhat.com>
-Upstream-Status: Backport
-Signed-off-by: He Zhe <zhe.he@windriver.com>
----
- mk/toolchain/gcc/rte.vars.mk | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/mk/toolchain/gcc/rte.vars.mk b/mk/toolchain/gcc/rte.vars.mk
-index d8b99fa..b852fcf 100644
---- a/mk/toolchain/gcc/rte.vars.mk
-+++ b/mk/toolchain/gcc/rte.vars.mk
-@@ -87,5 +87,8 @@ WERROR_FLAGS += -Wimplicit-fallthrough=2
- WERROR_FLAGS += -Wno-format-truncation
- endif
- 
-+# disable packed member unalign warnings
-+WERROR_FLAGS += -Wno-address-of-packed-member
-+
- export CC AS AR LD OBJCOPY OBJDUMP STRIP READELF
- export TOOLCHAIN_CFLAGS TOOLCHAIN_LDFLAGS TOOLCHAIN_ASFLAGS
--- 
-2.7.4
-
diff --git a/recipes-extended/dpdk/dpdk_17.11.6.bb b/recipes-extended/dpdk/dpdk_17.11.6.bb
deleted file mode 100644
index 01bacd6..0000000
--- a/recipes-extended/dpdk/dpdk_17.11.6.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-include dpdk.inc
-
-STABLE = "-stable"
-BRANCH = "17.11"
-SRCREV = "63d5c53b845d8360c0106374ce76eef9b5478c60"
-
-LICENSE = "LGPLv2 & GPLv2"
-LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=751419260aa954499f7abaabaa882bbe\
-                    file://LICENSE.LGPL;md5=4fbd65380cdd255951079008b364516c"
-
-SRC_URI += "\
-        file://dpdk-16.07-dpdk-fix-for-parellel-make-issue.patch \
-        file://dpdk-17.11-mk-disable-warning-for-packed-member-pointer.patch \
-"
-
-do_install_append () {
-        # Remove the unneeded dir
-        rm -rf ${D}/${INSTALL_PATH}/${RTE_TARGET}/app
-}
-- 
2.7.4


