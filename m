Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2305DE7F153
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 02:42:44 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web11.9449.1695782557921808306
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 19:42:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QLdwLQpV;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-65afd746330so34505236d6.3
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 19:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695782556; x=1696387356; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o68kUMa7Sn8zS0yJsCR+gwpiwGFbR5uA+BH2hFn3fCc=;
        b=QLdwLQpVFgqF0fq7Zt67NUqJnyYxG3qTa87aZjcbGcFjhRGXjxY0MbBKRpm2eSMbi2
         jYC3esj5ls7fSeYgcpI/dL9nKJ+MxkZGZ0c95w3JDI+1F1xznsDFnh3zoscHZhDi4bkY
         rDoYAeBNyTmoYjq9stvrQIouCbOdwHSeeRd8/4pT1s68feRwCJx/0fAWNfy/+E3uzH86
         p9KBSnEvSuQZazj0qXRf7iYlZosL1ClmHvQ24Xxmf2pQ2oh98lE8JRVY6jp3GrUjUeyg
         JqgmvlAeoe7/T21di69PTuFb/7jkU+AvaktkRd2m4K69U+AE4+1jjQ8fywX629Is6QJ0
         cSFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695782556; x=1696387356;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o68kUMa7Sn8zS0yJsCR+gwpiwGFbR5uA+BH2hFn3fCc=;
        b=Lp7LlLSd1nXHgtrAnx/u8ub4sg8RoGwl5r/wOl1qmfyb78PXDVK2MGSHqt9HxyAGBQ
         +Yi92e7qjOoLSdEXvUC+yDeN8bsSN4oMH70aFkf2eKFp+XIoSlYyx8RhE3376RGR2gcP
         5FIboprnNZxbAWFQZ2aSzCdVK7loV3IDDTiHJFLdSTIw/9cCxU5aGKD4d+eI0i991bLs
         iaH8bUVu85QomPYFqrbqRcb0y4MZeWwhAH3Iy4ACO3qbvhluTlTCOsPoOcDgxabNV6rL
         rKCtFHCEm566BVwqh7LQmqWb9G+ZvVuryI17VKlyBTJhoo6igysSmVXhQ9BDI5hAXH+P
         eX8w==
X-Gm-Message-State: AOJu0YzkrPSUZTo7DfY7igSHA+Inuv12I2ZYN8Jg+gKW1VDI3kTBTFLF
	eUOhzGoWzBg+brkGVDMBdfWRSujqm66Gpg==
X-Google-Smtp-Source: AGHT+IHMsiL5KTNO+98RPwAuVLmqTl+pG5m8m1IGL6qiZYfaYQPNwYjKNyhXiF0EjP2HGHxk/qlPQQ==
X-Received: by 2002:a0c:a692:0:b0:656:34e:741f with SMTP id t18-20020a0ca692000000b00656034e741fmr800349qva.48.1695782556170;
        Tue, 26 Sep 2023 19:42:36 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id p4-20020a05620a056400b0077412ca0ae1sm4715763qkp.65.2023.09.26.19.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 19:42:34 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [meta-rockchip][PATCH v4 2/2] rock-5b: add
Date: Tue, 26 Sep 2023 22:42:20 -0400
Message-ID: <20230927024220.17766-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
In-Reply-To: <20230927024220.17766-1-twoerner@gmail.com>
References: <20230927024220.17766-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 02:42:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61135

Add support for the Radxa Rock 5B
https://wiki.radxa.com/Rock5/5b

The device-tree for this board is better in the 6.5 (and later) kernels,
therefore set the kernel to linux-yocto-dev for now (eventually this won't be
needed as linux-yocto moves forward).

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
---
 README                                        |  1 +
 conf/machine/include/rk3588.inc               |  6 ++
 conf/machine/include/rk3588s.inc              | 17 ++++
 conf/machine/rock-5b.conf                     | 12 +++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb       | 37 ++++++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  6 ++
 recipes-kernel/linux/linux-yocto-dev.bbappend |  3 +
 .../rockchip/remove-non-rockchip-arch-arm.cfg | 85 +++++++++++++++++++
 .../rockchip/remove-non-rockchip-arch-arm.scc |  1 +
 .../remove-non-rockchip-arch-arm64.cfg        | 66 ++++++++++++++
 .../remove-non-rockchip-arch-arm64.scc        |  1 +
 11 files changed, 235 insertions(+)
 create mode 100644 conf/machine/include/rk3588.inc
 create mode 100644 conf/machine/include/rk3588s.inc
 create mode 100644 conf/machine/rock-5b.conf
 create mode 100644 recipes-bsp/rkbin/rockchip-rkbin_git.bb
 create mode 100644 recipes-kernel/linux/linux-yocto-dev.bbappend
 create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
 create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc

diff --git a/README b/README
index 286dafbe1020..d4576d73c636 100644
--- a/README
+++ b/README
@@ -30,6 +30,7 @@ Status of supported boards:
 		vyasa-rk3288
 		firefly-rk3288
 		nanopi-r4s
+		rock-5b
 	builds:
 		marsboard-rk3066
 		radxarock
diff --git a/conf/machine/include/rk3588.inc b/conf/machine/include/rk3588.inc
new file mode 100644
index 000000000000..34f0627dc085
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
index 000000000000..7bfc9474e96e
--- /dev/null
+++ b/conf/machine/include/rk3588s.inc
@@ -0,0 +1,17 @@
+MACHINEOVERRIDES =. "rk3588s:"
+DEFAULTTUNE ?= "cortexa76-cortexa55-crypto"
+
+require conf/machine/include/arm/armv8-2a/tune-cortexa76-cortexa55.inc
+require conf/machine/include/rockchip-defaults.inc
+require conf/machine/include/rockchip-wic.inc
+
+KBUILD_DEFCONFIG ?= "defconfig"
+KERNEL_FEATURES:append:rk3588s = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
+KERNEL_CLASSES = "kernel-fitimage"
+KERNEL_IMAGETYPE = "fitImage"
+
+PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
+PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
+
+UBOOT_SUFFIX ?= "itb"
+UBOOT_ENTRYPOINT ?= "0x06000000"
diff --git a/conf/machine/rock-5b.conf b/conf/machine/rock-5b.conf
new file mode 100644
index 000000000000..d1371084becc
--- /dev/null
+++ b/conf/machine/rock-5b.conf
@@ -0,0 +1,12 @@
+#@TYPE: Machine
+#@NAME: Radxa Rock 5B
+#@DESCRIPTION: ROCK5 is the 5th generation of SBC designed by Radxa.
+#https://wiki.radxa.com/Rock5/5b
+
+require conf/machine/include/rk3588.inc
+
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
+KERNEL_DEVICETREE = "rockchip/rk3588-rock-5b.dtb"
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+
+UBOOT_MACHINE = "rock5b-rk3588_defconfig"
diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
new file mode 100644
index 000000000000..7fefb017053b
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
index 050f55e124d4..f7800625aaf1 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -11,6 +11,12 @@ DEPENDS:append = " python3-pyelftools-native"
 
 INIT_FIRMWARE_DEPENDS ??= ""
 
+EXTRA_OEMAKE:append:rk3588s = " \
+	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
+	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
+	"
+INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
+
 EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
 INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
 EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
new file mode 100644
index 000000000000..419ebc18b229
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE:rock-5b = "rock-5b"
+SRC_URI:append:rock-5b = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
new file mode 100644
index 000000000000..e9443f17895c
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
@@ -0,0 +1,85 @@
+CONFIG_ARCH_ACTIONS=n
+CONFIG_ARCH_AIROHA=n
+CONFIG_ARCH_ALPINE=n
+CONFIG_ARCH_ARTPEC=n
+CONFIG_ARCH_ASPEED=n
+CONFIG_ARCH_AT91=n
+CONFIG_ARCH_BCM2835=n
+CONFIG_ARCH_BCM=n
+CONFIG_ARCH_BCMBCA=n
+CONFIG_ARCH_BCMBCA_BRAHMAB15=n
+CONFIG_ARCH_BCMBCA_CORTEXA7=n
+CONFIG_ARCH_BCMBCA_CORTEXA9=n
+CONFIG_ARCH_BCM_21664=n
+CONFIG_ARCH_BCM_23550=n
+CONFIG_ARCH_BCM_281XX=n
+CONFIG_ARCH_BCM_5301X=n
+CONFIG_ARCH_BCM_53573=n
+CONFIG_ARCH_BCM_CYGNUS=n
+CONFIG_ARCH_BCM_HR2=n
+CONFIG_ARCH_BCM_NSP=n
+CONFIG_ARCH_BERLIN=n
+CONFIG_ARCH_BRCMSTB=n
+CONFIG_ARCH_DIGICOLOR=n
+CONFIG_ARCH_EMEV2=n
+CONFIG_ARCH_EXYNOS=n
+CONFIG_ARCH_HI3xxx=n
+CONFIG_ARCH_HIGHBANK=n
+CONFIG_ARCH_HIP01=n
+CONFIG_ARCH_HIP04=n
+CONFIG_ARCH_HISI=n
+CONFIG_ARCH_HIX5HD2=n
+CONFIG_ARCH_HPE=n
+CONFIG_ARCH_HPE_GXP=n
+CONFIG_ARCH_INTEL_SOCFPGA=n
+CONFIG_ARCH_KEYSTONE=n
+CONFIG_ARCH_MEDIATEK=n
+CONFIG_ARCH_MESON=n
+CONFIG_ARCH_MILBEAUT=n
+CONFIG_ARCH_MILBEAUT_M10V=n
+CONFIG_ARCH_MMP=n
+CONFIG_ARCH_MSM8916=n
+CONFIG_ARCH_MSM8960=n
+CONFIG_ARCH_MSM8974=n
+CONFIG_ARCH_MSM8X60=n
+CONFIG_ARCH_MVEBU=n
+CONFIG_ARCH_MXC=n
+CONFIG_ARCH_OMAP3=n
+CONFIG_ARCH_OMAP4=n
+CONFIG_ARCH_QCOM=n
+CONFIG_ARCH_R7S72100=n
+CONFIG_ARCH_R7S9210=n
+CONFIG_ARCH_R8A73A4=n
+CONFIG_ARCH_R8A7740=n
+CONFIG_ARCH_R8A7742=n
+CONFIG_ARCH_R8A7743=n
+CONFIG_ARCH_R8A7744=n
+CONFIG_ARCH_R8A7745=n
+CONFIG_ARCH_R8A77470=n
+CONFIG_ARCH_R8A7778=n
+CONFIG_ARCH_R8A7779=n
+CONFIG_ARCH_R8A7790=n
+CONFIG_ARCH_R8A7791=n
+CONFIG_ARCH_R8A7792=n
+CONFIG_ARCH_R8A7793=n
+CONFIG_ARCH_R8A7794=n
+CONFIG_ARCH_R9A06G032=n
+CONFIG_ARCH_RENESAS=n
+CONFIG_ARCH_SH73A0=n
+CONFIG_ARCH_SPEAR13XX=n
+CONFIG_ARCH_STI=n
+CONFIG_ARCH_STM32=n
+CONFIG_ARCH_SUNPLUS=n
+CONFIG_ARCH_SUNXI=n
+CONFIG_ARCH_TEGRA=n
+CONFIG_ARCH_TEGRA_114_SOC=n
+CONFIG_ARCH_TEGRA_124_SOC=n
+CONFIG_ARCH_TEGRA_2x_SOC=n
+CONFIG_ARCH_TEGRA_3x_SOC=n
+CONFIG_ARCH_U8500=n
+CONFIG_ARCH_UNIPHIER=n
+CONFIG_ARCH_VEXPRESS=n
+CONFIG_ARCH_VEXPRESS_TC2_PM=n
+CONFIG_ARCH_VIRT=n
+CONFIG_ARCH_WM8850=n
+CONFIG_ARCH_ZYNQ=n
diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
new file mode 100644
index 000000000000..ce7770456ea4
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
@@ -0,0 +1 @@
+kconf hardware remove-non-rockchip-arch-arm.cfg
diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
new file mode 100644
index 000000000000..5b804a2ca26b
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
@@ -0,0 +1,66 @@
+CONFIG_ARCH_ACTIONS=n
+CONFIG_ARCH_ALPINE=n
+CONFIG_ARCH_APPLE=n
+CONFIG_ARCH_BCM2835=n
+CONFIG_ARCH_BCM=n
+CONFIG_ARCH_BCMBCA=n
+CONFIG_ARCH_BCM_IPROC=n
+CONFIG_ARCH_BERLIN=n
+CONFIG_ARCH_BRCMSTB=n
+CONFIG_ARCH_EXYNOS=n
+CONFIG_ARCH_SPARX5=n
+CONFIG_ARCH_HISI=n
+CONFIG_ARCH_INTEL_SOCFPGA=n
+CONFIG_ARCH_K3=n
+CONFIG_ARCH_KEEMBAY=n
+CONFIG_ARCH_LAYERSCAPE=n
+CONFIG_ARCH_LG1K=n
+CONFIG_ARCH_MEDIATEK=n
+CONFIG_ARCH_MESON=n
+CONFIG_ARCH_MVEBU=n
+CONFIG_ARCH_MXC=n
+CONFIG_ARCH_NPCM=n
+CONFIG_ARCH_NXP=n
+CONFIG_ARCH_MA35=n
+CONFIG_ARCH_QCOM=n
+CONFIG_ARCH_REALTEK=n
+CONFIG_ARCH_R8A774A1=n
+CONFIG_ARCH_R8A774B1=n
+CONFIG_ARCH_R8A774C0=n
+CONFIG_ARCH_R8A774E1=n
+CONFIG_ARCH_R8A77951=n
+CONFIG_ARCH_R8A77960=n
+CONFIG_ARCH_R8A77961=n
+CONFIG_ARCH_R8A77965=n
+CONFIG_ARCH_R8A77970=n
+CONFIG_ARCH_R8A77980=n
+CONFIG_ARCH_R8A77990=n
+CONFIG_ARCH_R8A77995=n
+CONFIG_ARCH_R8A779A0=n
+CONFIG_ARCH_R8A779F0=n
+CONFIG_ARCH_R8A779G0=n
+CONFIG_ARCH_R9A07G043=n
+CONFIG_ARCH_R9A07G044=n
+CONFIG_ARCH_R9A07G054=n
+CONFIG_ARCH_R9A09G011=n
+CONFIG_ARCH_RENESAS=n
+CONFIG_ARCH_S32=n
+CONFIG_ARCH_SEATTLE=n
+CONFIG_ARCH_STM32=n
+CONFIG_ARCH_SPRD=n
+CONFIG_ARCH_SUNXI=n
+CONFIG_ARCH_SYNQUACER=n
+CONFIG_ARCH_TEGRA=n
+CONFIG_ARCH_TEGRA_132_SOC=n
+CONFIG_ARCH_TEGRA_186_SOC=n
+CONFIG_ARCH_TEGRA_194_SOC=n
+CONFIG_ARCH_TEGRA_210_SOC=n
+CONFIG_ARCH_TEGRA_234_SOC=n
+CONFIG_ARCH_TESLA_FSD=n
+CONFIG_ARCH_THUNDER2=n
+CONFIG_ARCH_THUNDER=n
+CONFIG_ARCH_UNIPHIER=n
+CONFIG_ARCH_VEXPRESS=n
+CONFIG_ARCH_VISCONTI=n
+CONFIG_ARCH_XGENE=n
+CONFIG_ARCH_ZYNQMP=n
diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
new file mode 100644
index 000000000000..e169240f5067
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
@@ -0,0 +1 @@
+kconf hardware remove-non-rockchip-arch-arm64.cfg
-- 
2.41.0.327.gaa9166bcc0ba


