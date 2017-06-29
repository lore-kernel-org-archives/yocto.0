Return-Path: <drew.moseley@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3B27E00BD6; Wed, 28 Jun 2017 18:14:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [107.14.166.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8CCDE00BD6
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 18:14:53 -0700 (PDT)
Received: from [65.32.40.152] ([65.32.40.152:47378]
	helo=tobago.home.moseleynet.net)
	by cdptpa-omsmta01 (envelope-from <drew.moseley@mender.io>)
	(ecelerity 3.6.9.48312 r(Core:3.6.9.0)) with ESMTP
	id 27/FE-10880-C8454595; Thu, 29 Jun 2017 01:14:52 +0000
From: drew.moseley@mender.io
To: yocto@yoctoproject.org
Date: Wed, 28 Jun 2017 21:12:04 -0400
Message-Id: <fef26bf57423415f5fca556edcf2a242038ec3ff.1498698415.git.drew.moseley@mender.io>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1498698415.git.drew.moseley@mender.io>
References: <cover.1498698415.git.drew.moseley@mender.io>
X-RR-Connecting-IP: 107.14.168.6:25
Subject: [meta-chip][PATCH V3 2/4] u-boot-chip: Deploy the sunxi-spl-with-ecc.bin file.
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
X-List-Received-Date: Thu, 29 Jun 2017 01:14:57 -0000

From: Drew Moseley <drew.moseley@mender.io>

Signed-off-by: Drew Moseley <drew.moseley@mender.io>
---
 conf/machine/chip.conf                | 1 +
 recipes-bsp/u-boot/u-boot-chip_git.bb | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/conf/machine/chip.conf b/conf/machine/chip.conf
index dad1bdb..f053976 100644
--- a/conf/machine/chip.conf
+++ b/conf/machine/chip.conf
@@ -21,6 +21,7 @@ KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "sun5i-r8-chip.dtb"
 
 SPL_BINARY = "sunxi-spl.bin"
+SPL_ECC_BINARY = "sunxi-spl-with-ecc.bin"
 UBOOT_BINARY = "u-boot-dtb.bin"
 UBOOT_MACHINE = "CHIP_defconfig"
 
diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/u-boot-chip_git.bb
index 8e2be50..6de2e9d 100644
--- a/recipes-bsp/u-boot/u-boot-chip_git.bb
+++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
@@ -19,7 +19,13 @@ SRC_URI = " \
 S = "${WORKDIR}/git"
 
 do_compile_append() {
+    install ${B}/spl/${SPL_ECC_BINARY} ${B}/${SPL_ECC_BINARY}
     install ${B}/spl/${SPL_BINARY} ${B}/${SPL_BINARY}
 }
 
 COMPATIBLE_MACHINE = "chip"
+
+do_deploy_append() {
+    install -m 644 ${B}/${SPL_ECC_BINARY} ${DEPLOYDIR}/${SPL_ECC_BINARY}-${PV}-${PR}
+    ln -sf ${SPL_ECC_BINARY}-${PV}-${PR} ${DEPLOYDIR}/${SPL_ECC_BINARY}
+}
-- 
2.7.4


