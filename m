Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30217E7C4FF
	for <webhook@archiver.kernel.org>; Thu,  5 Oct 2023 09:00:46 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.11010.1696496438613853637
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Oct 2023 02:00:39 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.201, mailfrom: foss+yocto@0leil.net)
Received: by mail.gandi.net (Postfix) with ESMTPSA id BE3501BF20A;
	Thu,  5 Oct 2023 09:00:34 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: twoerner@gmail.com
Cc: yocto@lists.yoctoproject.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [meta-rockchip][kirkstone][PATCH] rk3588(s): add
Date: Thu,  5 Oct 2023 11:00:16 +0200
Message-ID: <20231005090016.82398-1-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: foss@0leil.net
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 09:00:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61246

From: Trevor Woerner <twoerner@gmail.com>

Unfortunately the TF-A project does not currently have support for
the rk3588. Therefore, for the time-being, the only way to supply a
TPL/DDR-init for the rk3588 is to use the closed-source rkbin binaries
from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
switching.

The rk3588 comes in two variants: rk3588 and rk3588s. The "s" option is a
stripped-down version of the rk3588. In the Linux kernel these two SoCs are
kept separate, with the rk3588 building on the rk3588s, so we've mimicked that
same behaviour here.

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
[backported from f8af59dd7cd7 ("rock-5b: add")]
[removed support for rock-5b since no decent linux-yocto support in kirkstone]
[removed KERNEL_FEATURES and kmeta since no decent linux-yocto support in kirkstone]
[renamed INIT_FIRMWARE_DEPENDS to ATF_DEPENDS]
[tested on downstream board with downstream kernel and u-boot]
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 conf/machine/include/rk3588.inc         |  6 ++++
 conf/machine/include/rk3588s.inc        | 16 +++++++++++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb | 37 +++++++++++++++++++++++++
 recipes-bsp/u-boot/u-boot%.bbappend     |  6 ++++
 4 files changed, 65 insertions(+)
 create mode 100644 conf/machine/include/rk3588.inc
 create mode 100644 conf/machine/include/rk3588s.inc
 create mode 100644 recipes-bsp/rkbin/rockchip-rkbin_git.bb

diff --git a/conf/machine/include/rk3588.inc b/conf/machine/include/rk3588.inc
new file mode 100644
index 0000000..34f0627
--- /dev/null
+++ b/conf/machine/include/rk3588.inc
@@ -0,0 +1,6 @@
+MACHINEOVERRIDES =. "rk3588:"
+
+# the rk3588s is a "stripped-down" version of the rk3588
+# in the kernel's device-tree the rk3588 builds on top of the rk3588s
+# so anything that is valid for the rk3588s is valid for the rk3588
+require conf/machine/include/rk3588s.inc
diff --git a/conf/machine/include/rk3588s.inc b/conf/machine/include/rk3588s.inc
new file mode 100644
index 0000000..3da226e
--- /dev/null
+++ b/conf/machine/include/rk3588s.inc
@@ -0,0 +1,16 @@
+MACHINEOVERRIDES =. "rk3588s:"
+DEFAULTTUNE ?= "cortexa76-cortexa55-crypto"
+
+require conf/machine/include/arm/armv8-2a/tune-cortexa76-cortexa55.inc
+require conf/machine/include/rockchip-defaults.inc
+require conf/machine/include/rockchip-wic.inc
+
+KBUILD_DEFCONFIG ?= "defconfig"
+KERNEL_CLASSES = "kernel-fitimage"
+KERNEL_IMAGETYPE = "fitImage"
+
+PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
+PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
+
+UBOOT_SUFFIX ?= "itb"
+UBOOT_ENTRYPOINT ?= "0x06000000"
diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
new file mode 100644
index 0000000..7fefb01
--- /dev/null
+++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
@@ -0,0 +1,37 @@
+DESCRIPTION = "Rockchip Firmware and Tool Binaries"
+LICENSE = "Proprietary"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
+
+SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
+SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
+
+PROVIDES += "trusted-firmware-a"
+PROVIDES += "optee-os"
+
+inherit bin_package deploy
+
+S = "${WORKDIR}/git"
+
+COMPATIBLE_MACHINE = ""
+COMPATIBLE_MACHINE:rk3588s = "rk3588s"
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
+
+do_install() {
+	# Nothing in this recipe is useful in a filesystem
+	:
+}
+
+PACKAGES = "${PN}"
+ALLOW_EMPTY:${PN} = "1"
+
+do_deploy() {
+	# Prebuilt TF-A
+	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
+	# Prebuilt OPTEE-OS
+	install -m 644 ${S}/bin/rk35/rk3588_bl32_v*.bin ${DEPLOYDIR}/tee-rk3588.bin
+	# Prebuilt U-Boot TPL (DDR init)
+	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
+}
+
+addtask deploy after do_install
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index de1f2ca..c611377 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -7,6 +7,12 @@ do_compile:append:rock2-square () {
 
 ATF_DEPENDS ??= ""
 
+EXTRA_OEMAKE:append:rk3588s = " \
+	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
+	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
+	"
+ATF_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
+
 EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
 ATF_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
 EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
-- 
2.41.0


