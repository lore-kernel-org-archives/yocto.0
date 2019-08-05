Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E38C9E00C81; Mon,  5 Aug 2019 00:51:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D88AE006EE
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2019 00:51:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x757ppje015973
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 5 Aug 2019 00:51:51 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Mon, 5 Aug 2019 00:51:51 -0700
From: <zhe.he@windriver.com>
To: <yocto@yoctoproject.org>, <anuj.mittal@intel.com>
Date: Mon, 5 Aug 2019 15:51:49 +0800
Message-ID: <1564991509-193153-1-git-send-email-zhe.he@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-dpdk][PATCH] dpdk: igb_uio: fix build on Linux 5.3 for fall through
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
X-List-Received-Date: Mon, 05 Aug 2019 07:51:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

From: He Zhe <zhe.he@windriver.com>

Since kernel v5.3 "-Wimplicit-fallthrough=3" gcc flag is enabled by default by
a035d552a93b ("Makefile: Globally enable fall-through warning") and would cause
the following build failure.

x86_64-native-linuxapp-gcc/build/lib/librte_eal/linuxapp/igb_uio/igb_uio.c:248:
6: error: this statement may fall through [-Werror=implicit-fallthrough=]

Backport a patch from upstream and adjust context respectively for v17 and v18.
c96bbbd010f7abb88c2ca2ed9dfc5ecd37e9027d

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 ...o-fix-build-on-Linux-5.3-for-fall-through.patch | 81 ++++++++++++++++++++++
 ...o-fix-build-on-Linux-5.3-for-fall-through.patch | 80 +++++++++++++++++++++
 recipes-extended/dpdk/dpdk_17.11.6.bb              |  1 +
 recipes-extended/dpdk/dpdk_18.11.2.bb              |  4 ++
 4 files changed, 166 insertions(+)
 create mode 100644 recipes-extended/dpdk/dpdk/dpdk-17.11-igb_uio-fix-build-on-Linux-5.3-for-fall-through.patch
 create mode 100644 recipes-extended/dpdk/dpdk/dpdk-18.11-igb_uio-fix-build-on-Linux-5.3-for-fall-through.patch

diff --git a/recipes-extended/dpdk/dpdk/dpdk-17.11-igb_uio-fix-build-on-Linux-5.3-for-fall-through.patch b/recipes-extended/dpdk/dpdk/dpdk-17.11-igb_uio-fix-build-on-Linux-5.3-for-fall-through.patch
new file mode 100644
index 0000000..90901eb
--- /dev/null
+++ b/recipes-extended/dpdk/dpdk/dpdk-17.11-igb_uio-fix-build-on-Linux-5.3-for-fall-through.patch
@@ -0,0 +1,81 @@
+From c0307019689d5f8b4d5ca7d92a5585c94088afeb Mon Sep 17 00:00:00 2001
+From: Ferruh Yigit <ferruh.yigit@intel.com>
+Date: Mon, 29 Jul 2019 13:32:16 +0100
+Subject: [PATCH] igb_uio: fix build on Linux 5.3 for fall through
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+build error:
+kernel/linux/igb_uio/igb_uio.c:
+   In function ‘igbuio_pci_enable_interrupts’:
+   kernel/linux/igb_uio/igb_uio.c:230:6:
+   error: this statement may fall through
+   [-Werror=implicit-fallthrough=]
+  230 |   if (pci_alloc_irq_vectors(udev->pdev, 1, 1, ....
+kernel/linux/igb_uio/igb_uio.c:240:2: note: here
+  240 |  case RTE_INTR_MODE_MSI:
+      |  ^~~~
+
+The build error is caused by Linux kernel commit in 5.3 that enables the
+"-Wimplicit-fallthrough=3" gcc flag.
+Commit a035d552a93b ("Makefile: Globally enable fall-through warning")
+
+To fix the error, either a gcc attribute can be provided [1] or a code
+comment with some defined syntax need to be provided [2], since there is
+already comments, updated them slightly to match the required syntax to
+fix the build error.
+
+[1]
+"__attribute__ ((fallthrough));"
+
+[2]
+[ \t.!]*([Ee]lse,? |[Ii]ntentional(ly)? )?
+fall(s | |-)?thr(ough|u)[ \t.!]*(-[^\n\r]*)?
+
+Cc: stable@dpdk.org
+
+Signed-off-by: Ferruh Yigit <ferruh.yigit@intel.com>
+
+commit c96bbbd010f7abb88c2ca2ed9dfc5ecd37e9027d upstream
+Adjust code context
+
+Signed-off-by: He Zhe <zhe.he@windriver.com>
+---
+ lib/librte_eal/linuxapp/igb_uio/igb_uio.c | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/lib/librte_eal/linuxapp/igb_uio/igb_uio.c b/lib/librte_eal/linuxapp/igb_uio/igb_uio.c
+index 45d7027..3073bca 100644
+--- a/lib/librte_eal/linuxapp/igb_uio/igb_uio.c
++++ b/lib/librte_eal/linuxapp/igb_uio/igb_uio.c
+@@ -254,7 +254,7 @@ igbuio_pci_enable_interrupts(struct rte_uio_pci_dev *udev)
+ 		}
+ #endif
+ 
+-	/* fall back to MSI */
++	/* falls through - to MSI */
+ 	case RTE_INTR_MODE_MSI:
+ #ifndef HAVE_ALLOC_IRQ_VECTORS
+ 		if (pci_enable_msi(udev->pdev) == 0) {
+@@ -273,7 +273,7 @@ igbuio_pci_enable_interrupts(struct rte_uio_pci_dev *udev)
+ 			break;
+ 		}
+ #endif
+-	/* fall back to INTX */
++	/* falls through - to INTX */
+ 	case RTE_INTR_MODE_LEGACY:
+ 		if (pci_intx_mask_supported(udev->pdev)) {
+ 			dev_dbg(&udev->pdev->dev, "using INTX");
+@@ -283,7 +283,7 @@ igbuio_pci_enable_interrupts(struct rte_uio_pci_dev *udev)
+ 			break;
+ 		}
+ 		dev_notice(&udev->pdev->dev, "PCI INTX mask not supported\n");
+-	/* fall back to no IRQ */
++	/* falls through - to no IRQ */
+ 	case RTE_INTR_MODE_NONE:
+ 		udev->mode = RTE_INTR_MODE_NONE;
+ 		udev->info.irq = UIO_IRQ_NONE;
+-- 
+2.7.4
+
diff --git a/recipes-extended/dpdk/dpdk/dpdk-18.11-igb_uio-fix-build-on-Linux-5.3-for-fall-through.patch b/recipes-extended/dpdk/dpdk/dpdk-18.11-igb_uio-fix-build-on-Linux-5.3-for-fall-through.patch
new file mode 100644
index 0000000..417d93b
--- /dev/null
+++ b/recipes-extended/dpdk/dpdk/dpdk-18.11-igb_uio-fix-build-on-Linux-5.3-for-fall-through.patch
@@ -0,0 +1,80 @@
+From af89b90b4e5e9d1533b6debd86ae38bbd82df8c8 Mon Sep 17 00:00:00 2001
+From: Ferruh Yigit <ferruh.yigit@intel.com>
+Date: Mon, 29 Jul 2019 13:32:16 +0100
+Subject: [PATCH] igb_uio: fix build on Linux 5.3 for fall through
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+build error:
+kernel/linux/igb_uio/igb_uio.c:
+   In function ‘igbuio_pci_enable_interrupts’:
+   kernel/linux/igb_uio/igb_uio.c:230:6:
+   error: this statement may fall through
+   [-Werror=implicit-fallthrough=]
+  230 |   if (pci_alloc_irq_vectors(udev->pdev, 1, 1, ....
+kernel/linux/igb_uio/igb_uio.c:240:2: note: here
+  240 |  case RTE_INTR_MODE_MSI:
+      |  ^~~~
+
+The build error is caused by Linux kernel commit in 5.3 that enables the
+"-Wimplicit-fallthrough=3" gcc flag.
+Commit a035d552a93b ("Makefile: Globally enable fall-through warning")
+
+To fix the error, either a gcc attribute can be provided [1] or a code
+comment with some defined syntax need to be provided [2], since there is
+already comments, updated them slightly to match the required syntax to
+fix the build error.
+
+[1]
+"__attribute__ ((fallthrough));"
+
+[2]
+[ \t.!]*([Ee]lse,? |[Ii]ntentional(ly)? )?
+fall(s | |-)?thr(ough|u)[ \t.!]*(-[^\n\r]*)?
+
+Cc: stable@dpdk.org
+
+Signed-off-by: Ferruh Yigit <ferruh.yigit@intel.com>
+
+commit c96bbbd010f7abb88c2ca2ed9dfc5ecd37e9027d upstream
+
+Signed-off-by: He Zhe <zhe.he@windriver.com>
+---
+ kernel/linux/igb_uio/igb_uio.c | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/kernel/linux/igb_uio/igb_uio.c b/kernel/linux/igb_uio/igb_uio.c
+index 3cf394b..039f5a5 100644
+--- a/kernel/linux/igb_uio/igb_uio.c
++++ b/kernel/linux/igb_uio/igb_uio.c
+@@ -236,7 +236,7 @@ igbuio_pci_enable_interrupts(struct rte_uio_pci_dev *udev)
+ 		}
+ #endif
+ 
+-	/* fall back to MSI */
++	/* falls through - to MSI */
+ 	case RTE_INTR_MODE_MSI:
+ #ifndef HAVE_ALLOC_IRQ_VECTORS
+ 		if (pci_enable_msi(udev->pdev) == 0) {
+@@ -255,7 +255,7 @@ igbuio_pci_enable_interrupts(struct rte_uio_pci_dev *udev)
+ 			break;
+ 		}
+ #endif
+-	/* fall back to INTX */
++	/* falls through - to INTX */
+ 	case RTE_INTR_MODE_LEGACY:
+ 		if (pci_intx_mask_supported(udev->pdev)) {
+ 			dev_dbg(&udev->pdev->dev, "using INTX");
+@@ -265,7 +265,7 @@ igbuio_pci_enable_interrupts(struct rte_uio_pci_dev *udev)
+ 			break;
+ 		}
+ 		dev_notice(&udev->pdev->dev, "PCI INTX mask not supported\n");
+-	/* fall back to no IRQ */
++	/* falls through - to no IRQ */
+ 	case RTE_INTR_MODE_NONE:
+ 		udev->mode = RTE_INTR_MODE_NONE;
+ 		udev->info.irq = UIO_IRQ_NONE;
+-- 
+2.7.4
+
diff --git a/recipes-extended/dpdk/dpdk_17.11.6.bb b/recipes-extended/dpdk/dpdk_17.11.6.bb
index 01bacd6..40edd8b 100644
--- a/recipes-extended/dpdk/dpdk_17.11.6.bb
+++ b/recipes-extended/dpdk/dpdk_17.11.6.bb
@@ -11,6 +11,7 @@ LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=751419260aa954499f7abaabaa882bbe\
 SRC_URI += "\
         file://dpdk-16.07-dpdk-fix-for-parellel-make-issue.patch \
         file://dpdk-17.11-mk-disable-warning-for-packed-member-pointer.patch \
+        file://dpdk-17.11-igb_uio-fix-build-on-Linux-5.3-for-fall-through.patch \
 "
 
 do_install_append () {
diff --git a/recipes-extended/dpdk/dpdk_18.11.2.bb b/recipes-extended/dpdk/dpdk_18.11.2.bb
index 7a3dcdb..5291bdc 100644
--- a/recipes-extended/dpdk/dpdk_18.11.2.bb
+++ b/recipes-extended/dpdk/dpdk_18.11.2.bb
@@ -9,6 +9,10 @@ LIC_FILES_CHKSUM = "file://license/gpl-2.0.txt;md5=b234ee4d69f5fce4486a80fdaf4a4
                     file://license/lgpl-2.1.txt;md5=4b54a1fd55a448865a0b32d41598759d \
                     file://license/bsd-3-clause.txt;md5=0f00d99239d922ffd13cabef83b33444"
 
+SRC_URI += "\
+        file://dpdk-18.11-igb_uio-fix-build-on-Linux-5.3-for-fall-through.patch \
+"
+
 do_install_append () {
     # Remove the unneeded dir
     rm -rf ${D}/${INSTALL_PATH}/${RTE_TARGET}/app
-- 
2.7.4


