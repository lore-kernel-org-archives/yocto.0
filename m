Return-Path: <drew.moseley@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3B9CE00B99; Fri, 16 Jun 2017 14:17:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [107.14.166.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13D3FE00A9C
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 14:17:55 -0700 (PDT)
Received: from [65.35.172.144] ([65.35.172.144:35629]
	helo=tobago.home.moseleynet.net)
	by cdptpa-omsmta03 (envelope-from <drew.moseley@mender.io>)
	(ecelerity 3.6.9.48312 r(Core:3.6.9.0)) with ESMTP
	id 3D/D8-00833-20B44495; Fri, 16 Jun 2017 21:17:54 +0000
From: drew.moseley@mender.io
To: yocto@yoctoproject.org
Date: Fri, 16 Jun 2017 17:15:38 -0400
Message-Id: <25feab71125423652d0a966d0039280b9ec8fe48.1497646644.git.drew.moseley@mender.io>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1497646644.git.drew.moseley@mender.io>
References: <cover.1497646644.git.drew.moseley@mender.io>
X-RR-Connecting-IP: 107.14.168.88:25
Subject: [meta-chip][RFC PATCH 1/3] u-boot-chip: Deploy the sunxi-spl-with-ecc.bin file.
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
X-List-Received-Date: Fri, 16 Jun 2017 21:17:56 -0000

From: Drew Moseley <drew.moseley@mender.io>

Signed-off-by: Drew Moseley <drew.moseley@mender.io>
---
 conf/machine/chip.conf                | 1 +
 recipes-bsp/u-boot/u-boot-chip_git.bb | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/conf/machine/chip.conf b/conf/machine/chip.conf
index 0a45a2f..8f54067 100644
--- a/conf/machine/chip.conf
+++ b/conf/machine/chip.conf
@@ -21,6 +21,7 @@ KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "sun5i-r8-chip.dtb"
 
 SPL_BINARY = "sunxi-spl.bin"
+SPL_ECC_BINARY = "sunxi-spl-with-ecc.bin"
 UBOOT_BINARY = "u-boot-dtb.bin"
 UBOOT_MACHINE = "CHIP_defconfig"
 
diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/u-boot-chip_git.bb
index 8e2be50..f12fae6 100644
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
\ No newline at end of file
-- 
2.7.4


