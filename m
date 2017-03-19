Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F171E00ADF; Sun, 19 Mar 2017 10:58:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 151D3E00AB9
	for <yocto@yoctoproject.org>; Sun, 19 Mar 2017 10:58:49 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id BF73410225F;
	Mon, 20 Mar 2017 02:50:13 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Mon, 20 Mar 2017 01:48:35 +0800
Message-Id: <1489945717-27219-6-git-send-email-ayaka@soulik.info>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489945717-27219-1-git-send-email-ayaka@soulik.info>
References: <1489945717-27219-1-git-send-email-ayaka@soulik.info>
X-Mailman-Approved-At: Mon, 20 Mar 2017 10:57:32 -0700
Cc: Jacob Chen <jacob-chen@iotwrt.com>, ayaka <ayaka@soulik.info>
Subject: [PATCH 5/7] conf/machine: add rk3399 support
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
X-List-Received-Date: Sun, 19 Mar 2017 17:58:51 -0000

RK3399 is a new generation powerful SoC from Rockchip, which has
Dual Cortex-A72 + Quad Cortex-A53, 64-bit CPU.

Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
Signed-off-by: ayaka <ayaka@soulik.info>
---
 conf/machine/excavator-rk3399.conf      | 10 ++++++
 conf/machine/include/rk3399.inc         | 18 +++++++++++
 conf/machine/include/tune-cortexa53.inc | 57 +++++++++++++++++++++++++++++++++
 3 files changed, 85 insertions(+)
 create mode 100644 conf/machine/excavator-rk3399.conf
 create mode 100644 conf/machine/include/rk3399.inc
 create mode 100644 conf/machine/include/tune-cortexa53.inc

diff --git a/conf/machine/excavator-rk3399.conf b/conf/machine/excavator-rk3399.conf
new file mode 100644
index 0000000..c7134d2
--- /dev/null
+++ b/conf/machine/excavator-rk3399.conf
@@ -0,0 +1,10 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: EXCAVATOR 3399
+
+include conf/machine/include/rk3399.inc
+
+KERNEL_DEVICETREE = "rk3399-sapphire-excavator-linux.dtb"
+UBOOT_MACHINE = "evb-rk3399_defconfig"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
new file mode 100644
index 0000000..29cdfc4
--- /dev/null
+++ b/conf/machine/include/rk3399.inc
@@ -0,0 +1,18 @@
+# Copyright (C) 2017 Jacob Chen
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SOC_FAMILY = "rk3399"
+
+require conf/machine/include/tune-cortexa53.inc
+require conf/machine/include/soc-family.inc
+
+PREFERRED_PROVIDER_virtual/kernel = "linux"
+SERIAL_CONSOLES = "1500000;ttyS2"
+KERNEL_IMAGETYPE = "Image"
+KBUILD_DEFCONFIG = "multi_v8_defconfig"
+
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
+SPL_BINARY ?= "u-boot-spl-nodtb.bin"
+
+IMAGE_FSTYPES = "ext4 rockchip-gpt-img"
+IMAGE_CLASSES += "rockchip-gpt-img"
diff --git a/conf/machine/include/tune-cortexa53.inc b/conf/machine/include/tune-cortexa53.inc
new file mode 100644
index 0000000..8b8d943
--- /dev/null
+++ b/conf/machine/include/tune-cortexa53.inc
@@ -0,0 +1,57 @@
+DEFAULTTUNE ?= "cortexa53-32"
+
+require conf/machine/include/arm/arch-armv8.inc
+
+TUNEVALID[cortexa53] = "Enable Cortex-A53 specific processor optimizations"
+TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'cortexa53', ' -mcpu=cortex-a53 ', '',d)}"
+
+TUNEVALID[armv8] = "Enable instructions for ARMv8"
+TUNECONFLICTS[armv8] = "armv4 armv5 armv6 armv7 armv7a armv7ve"
+
+TUNE_CCARGS .= \
+"-mtune=cortex-a57.cortex-a53"
+
+TUNE_CCARGS_MFPU .= \
+"${@' crypto-neon-fp-armv8' if bb.utils.contains('TUNE_FEATURES', [ 'armv8', 'neon', 'cryptov8' ], True, False, d) else \
+' neon-fp-armv8' if bb.utils.contains('TUNE_FEATURES', [ 'armv8', 'neon' ], True, False, d) else \
+bb.utils.contains('TUNE_FEATURES', [ 'armv8' ], ' fp-armv8', '', d)}"
+
+MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'armv8', 'armv8:', '' ,d)}"
+
+AVAILTUNES += "armv8"
+TUNE_FEATURES_tune-armv8 = "armv8"
+PACKAGE_EXTRA_ARCHS_tune-armv8 = "armv8"
+
+AVAILTUNES += "armv8-neon"
+TUNE_FEATURES_tune-armv8-neon = "${TUNE_FEATURES_tune-armv8} neon"
+PACKAGE_EXTRA_ARCHS_tune-armv8-neon = "${PACKAGE_EXTRA_ARCHS_tune-armv8} armv8-neon"
+
+AVAILTUNES += "armv8hf"
+TUNE_FEATURES_tune-armv8hf = "${TUNE_FEATURES_tune-armv8} callconvention-hard"
+PACKAGE_EXTRA_ARCHS_tune-armv8hf = "armv8hf"
+
+AVAILTUNES += "armv8hf-neon"
+TUNE_FEATURES_tune-armv8hf-neon = "${TUNE_FEATURES_tune-armv8hf} neon"
+PACKAGE_EXTRA_ARCHS_tune-armv8hf-neon = "${PACKAGE_EXTRA_ARCHS_tune-armv8hf} armv8hf-neon"
+
+# Extra tune selections
+AVAILTUNES += "cortexa53-32"
+ARMPKGARCH_tune-cortexa53-32 ?= "cortexa53"
+TUNE_FEATURES_tune-cortexa53-32 = "${TUNE_FEATURES_tune-armv8-neon} cortexa53"
+BASE_LIB_tune-cortexa53-32 = "lib"
+TUNE_PKGARCH_tune-cortexa53-32 = "cortexa53-32"
+PACKAGE_EXTRA_ARCHS_tune-cortexa53-32 = "${PACKAGE_EXTRA_ARCHS_tune-armv8-neon} cortexa53-32 cortexa53-neon-fp-armv8"
+
+AVAILTUNES += "cortexa53hf-32"
+ARMPKGARCH_tune-cortexa53hf-32 ?= "cortexa53"
+TUNE_FEATURES_tune-cortexa53hf-32 = "${TUNE_FEATURES_tune-armv8hf-neon} cortexa53"
+BASE_LIB_tune-cortexa53hf-32 = "lib"
+TUNE_PKGARCH_tune-cortexa53hf-32 = "cortexa53hf-32"
+PACKAGE_EXTRA_ARCHS_tune-cortexa53hf-32 = "${PACKAGE_EXTRA_ARCHS_tune-armv8hf-neon} cortexa53hf-32 cortexa53hf-neon-fp-armv8"
+
+AVAILTUNES += "cortexa53-64"
+ARMPKGARCH_tune-cortexa53-64 ?= "cortexa53"
+TUNE_FEATURES_tune-cortexa53-64 = "${TUNE_FEATURES_tune-aarch64} cortexa53"
+BASE_LIB_tune-cortexa53-64 = "lib64"
+TUNE_PKGARCH_tune-cortexa53-64 = "cortexa53-64"
+PACKAGE_EXTRA_ARCHS_tune-cortexa53-64 = "${PACKAGE_EXTRA_ARCHS_tune-aarch64} cortexa53-64"
-- 
2.7.4


