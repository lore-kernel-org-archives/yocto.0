Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 799FAE00D47; Sun, 30 Jun 2019 20:01:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 700F6E008CA
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2019 20:01:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6130jI8022807
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 30 Jun 2019 20:00:55 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Sun, 30 Jun 2019 20:00:35 -0700
From: <zhe.he@windriver.com>
To: <anuj.mittal@intel.com>, <yocto@yoctoproject.org>
Date: Mon, 1 Jul 2019 11:00:33 +0800
Message-ID: <1561950033-256966-1-git-send-email-zhe.he@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-dpdk][PATCH v2] dpdk: Remove 18.05
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
X-List-Received-Date: Mon, 01 Jul 2019 03:01:25 -0000
Content-Type: text/plain

From: He Zhe <zhe.he@windriver.com>

We have already had 18.11 and 18.05 is not a stable version.
This patch also removes the patch no longer needed.

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
v2: Remove the patch no longer needed.

 ...2-dpdk-fix-installation-warning-and-issue.patch | 79 ----------------------
 recipes-extended/dpdk/dpdk_18.05.bb                | 15 ----
 2 files changed, 94 deletions(-)
 delete mode 100644 recipes-extended/dpdk/dpdk/dpdk-17.02-dpdk-fix-installation-warning-and-issue.patch
 delete mode 100644 recipes-extended/dpdk/dpdk_18.05.bb

diff --git a/recipes-extended/dpdk/dpdk/dpdk-17.02-dpdk-fix-installation-warning-and-issue.patch b/recipes-extended/dpdk/dpdk/dpdk-17.02-dpdk-fix-installation-warning-and-issue.patch
deleted file mode 100644
index 0505888..0000000
--- a/recipes-extended/dpdk/dpdk/dpdk-17.02-dpdk-fix-installation-warning-and-issue.patch
+++ /dev/null
@@ -1,79 +0,0 @@
-From 0be350c3b04d83ea9182f45936ef3219aed5c0c1 Mon Sep 17 00:00:00 2001
-From: Shashwat Pandey <shashwatx.p@intel.com>
-Date: Mon, 20 Feb 2017 15:46:22 +0800
-Subject: [PATCH] dpdk: fix installation warning and issue
-
-Upstream-Status: Inappropriate [configuration]
-
-Ensure that all compiled libs should be installed to correct location.
-For cross compiling cp -r and extra tar flags used to avoid  QA warning
-[host-user-contaminated].
-Added excluded files from bin and removing mk and app/dpdk-pmdinfogen files
-installation since it is not needed as a part of image.
-
-Signed-off-by: Shashwat Pandey <shashwatx.p@intel.com>
-
----
- mk/rte.sdkinstall.mk | 29 ++++++++++++++---------------
- 1 file changed, 14 insertions(+), 15 deletions(-)
-
-diff --git a/mk/rte.sdkinstall.mk b/mk/rte.sdkinstall.mk
-index 4e97feff9fde..42625333a4e2 100644
---- a/mk/rte.sdkinstall.mk
-+++ b/mk/rte.sdkinstall.mk
-@@ -115,16 +115,17 @@ endif
- 
- install-runtime:
- 	$(Q)$(call rte_mkdir, $(DESTDIR)$(libdir))
--	$(Q)cp -a    $O/lib/* $(DESTDIR)$(libdir)
-+	$(Q)cp -r    $O/lib/* $(DESTDIR)$(libdir)
- 	$(Q)$(call rte_mkdir, $(DESTDIR)$(bindir))
--	$(Q)tar -cf -      -C $O --exclude 'app/*.map' \
--		--exclude app/dpdk-pmdinfogen \
--		--exclude 'app/cmdline*' --exclude app/test \
--		--exclude app/testacl --exclude app/testpipeline app | \
--	    tar -xf -      -C $(DESTDIR)$(bindir) --strip-components=1 \
--		--keep-newer-files
-+	$(Q)tar -cf -      -C $O --exclude app/dpdk-pmdinfogen app | \
-+	tar -xf -      -C $(DESTDIR)$(bindir) --no-same-owner --no-same-permissions \
-+		--strip-components=1 --keep-newer-files --warning=no-ignore-newer
- 	$(Q)$(call rte_mkdir,      $(DESTDIR)$(datadir))
--	$(Q)cp -a $(RTE_SDK)/usertools $(DESTDIR)$(datadir)
-+	$(Q)cp -r $(RTE_SDK)/usertools $(DESTDIR)$(datadir)
-+	$(Q)$(call rte_symlink,    $(DESTDIR)$(datadir)/usertools/dpdk-setup.sh, \
-+	                           $(DESTDIR)$(datadir)/usertools/setup.sh)
-+	$(Q)$(call rte_symlink,    $(DESTDIR)$(datadir)/usertools/dpdk-devbind.py, \
-+	                           $(DESTDIR)$(datadir)/usertools/dpdk_nic_bind.py)
- 	$(Q)$(call rte_mkdir,      $(DESTDIR)$(sbindir))
- 	$(Q)$(call rte_symlink,    $(DESTDIR)$(datadir)/usertools/dpdk-devbind.py, \
- 	                           $(DESTDIR)$(sbindir)/dpdk-devbind)
-@@ -142,7 +143,7 @@ endif
- install-kmod:
- ifneq ($(wildcard $O/kmod/*),)
- 	$(Q)$(call rte_mkdir, $(DESTDIR)$(kerneldir))
--	$(Q)cp -a   $O/kmod/* $(DESTDIR)$(kerneldir)
-+	$(Q)cp -r   $O/kmod/* $(DESTDIR)$(kerneldir)
- endif
- 
- install-sdk:
-@@ -151,11 +152,9 @@ install-sdk:
- 	    tar -xf -      -C $(DESTDIR)$(includedir) --strip-components=1 \
- 		--keep-newer-files
- 	$(Q)$(call rte_mkdir,                            $(DESTDIR)$(sdkdir))
--	$(Q)cp -a               $(RTE_SDK)/mk            $(DESTDIR)$(sdkdir)
--	$(Q)cp -a               $(RTE_SDK)/buildtools    $(DESTDIR)$(sdkdir)
--	$(Q)$(call rte_mkdir,                            $(DESTDIR)$(targetdir)/app)
--	$(Q)cp -a               $O/.config               $(DESTDIR)$(targetdir)
--	$(Q)cp -a               $O/app/dpdk-pmdinfogen   $(DESTDIR)$(targetdir)/app
-+	$(Q)cp -r               $(RTE_SDK)/buildtools       $(DESTDIR)$(sdkdir)
-+	$(Q)$(call rte_mkdir,                            $(DESTDIR)$(targetdir))
-+	$(Q)cp -r               $O/.config               $(DESTDIR)$(targetdir)
- 	$(Q)$(call rte_symlink, $(DESTDIR)$(includedir), $(DESTDIR)$(targetdir)/include)
- 	$(Q)$(call rte_symlink, $(DESTDIR)$(libdir),     $(DESTDIR)$(targetdir)/lib)
- 
-@@ -171,4 +170,4 @@ ifneq ($(wildcard $O/doc/*/*/*pdf),)
- 	$(Q)cp -a $O/doc/*/*/*pdf $(DESTDIR)$(docdir)/guides
- endif
- 	$(Q)$(call rte_mkdir,         $(DESTDIR)$(datadir))
--	$(Q)cp -a $(RTE_SDK)/examples $(DESTDIR)$(datadir)
-+	$(Q)cp -r $(RTE_SDK)/examples $(DESTDIR)$(datadir)
diff --git a/recipes-extended/dpdk/dpdk_18.05.bb b/recipes-extended/dpdk/dpdk_18.05.bb
deleted file mode 100644
index b6897a8..0000000
--- a/recipes-extended/dpdk/dpdk_18.05.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-include dpdk.inc
-
-SRCREV = "a5dce55556286cc56655320d975c67b0dbe08693"
-
-LICENSE = "BSD-3-Clause & LGPLv2.1 & GPLv2"
-LIC_FILES_CHKSUM = "file://license/gpl-2.0.txt;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
-                    file://license/lgpl-2.1.txt;md5=4b54a1fd55a448865a0b32d41598759d \
-                    file://license/bsd-3-clause.txt;md5=0f00d99239d922ffd13cabef83b33444"
-
-SRC_URI += "\
-            file://dpdk-16.07-dpdk-fix-for-parellel-make-issue.patch \
-            file://dpdk-17.02-dpdk-fix-installation-warning-and-issue.patch \
-            file://dpdk-16.04-dpdk-enable-ip_fragmentation-in-common_base-config.patch \
-            file://0001-examples-Fix-maybe-uninitialized-warning.patch \
-            "
-- 
2.7.4


