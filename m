Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D6C4C71153
	for <webhook@archiver.kernel.org>; Sun, 10 Sep 2023 21:36:23 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web11.45576.1694381777979617961
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Sep 2023 14:36:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=RX0sU7LZ;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-64a70194fbeso26022136d6.0
        for <yocto@lists.yoctoproject.org>; Sun, 10 Sep 2023 14:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694381776; x=1694986576; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=pJ6qvKBPC/wHoxP6EWEl0thGE6mFltVt781xu6g1ecY=;
        b=RX0sU7LZ516xJkZcHWZM+LlfGkhDrLchxEiGhanLZ0v93asTS3ZrXiahaPVBFgU4yx
         dmU051p+ve3sUW5ye3nsiyM1OCV8EfzJ5puIvwaEqMEOKG8x0vanma5f/tVUU5Q7pzFk
         imP8xxflXRaEx9YSIZ5bAhI0NRrGCGv6OaH54R50Z2xXy1TM+LqOZQcAQ8Pyu2sjCiYf
         xcS6PvH2z/hTtjAkVhYrT1mlcWqiuRiplNpBWtVZkyuKf4Kq4mWBv3ak9L4lcAJYUIWh
         aWfJlW9RCNB2zsSGfHuPqCP23vjD6uqUGaLqaYaq+Qrs2iKDvleSq5QLA1Y/hGkJiqJN
         h5vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694381776; x=1694986576;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pJ6qvKBPC/wHoxP6EWEl0thGE6mFltVt781xu6g1ecY=;
        b=OhVA+jIMwIQKiF4la1yFoZOx6ZFjz0Muu/B5p8zrV+E73Zsrr2rSdWvxmd+y9EE5sy
         zyO06t3yKdLopf4ixWnPohCu1CCVXHdi7rykrt9VBN0lIbJtvtabSqD4CQYs3P0YNxMr
         jByzrWeVFLVl7H2LypvP79PuGWcRlJZE9Z59SG411r5VshaNSNpNMOuTmyPyvU8x2z0+
         IU09FGb8JCrDUT6HWkdvzYFUlIDEbS4W9VU9FRQd00pM3WqlNgUX04XI6gq199rs5Cob
         rCCt/HPG9Qq8EoQtn/Cl9rZVlXHg3zu53YI5/cMB9/Qe0bgM0LQHkuIDjdpIWOtV0heN
         9jqw==
X-Gm-Message-State: AOJu0Yy463C3EG3trf7qiG8XZyXqvFyp3dxPJXLNVZ7I8xg7RIWn0Lgc
	6xFLi+VZfQJK6/ZTeX2F8D8Oh0dXXcE=
X-Google-Smtp-Source: AGHT+IFSRvi8sADEGFP4BlsJtDFGp7w/JJ8QIgOpd743ODEwJ5fkGg5Mw8AG03dwDrUESjBa+o0XGQ==
X-Received: by 2002:a05:622a:1ba0:b0:403:fcd9:963 with SMTP id bp32-20020a05622a1ba000b00403fcd90963mr11480317qtb.67.1694381776199;
        Sun, 10 Sep 2023 14:36:16 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id g16-20020ac84b70000000b00401217aa51dsm2190550qts.76.2023.09.10.14.36.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Sep 2023 14:36:15 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] linux-yocto: remove non-rockchip archs
Date: Sun, 10 Sep 2023 17:36:12 -0400
Message-ID: <20230910213612.25409-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 10 Sep 2023 21:36:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60959

Remove the non-rockchip architectures from the kernel build since these are
all a waste of build time, filesystem space, and runtime memory.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rk3066.inc               |  1 +
 conf/machine/include/rk3188.inc               |  1 +
 conf/machine/include/rk3288.inc               |  1 +
 conf/machine/include/rk3328.inc               |  1 +
 conf/machine/include/rk3399.inc               |  1 +
 .../rockchip/remove-non-rockchip-arch-arm.cfg | 85 +++++++++++++++++++
 .../rockchip/remove-non-rockchip-arch-arm.scc |  1 +
 .../remove-non-rockchip-arch-arm64.cfg        | 62 ++++++++++++++
 .../remove-non-rockchip-arch-arm64.scc        |  1 +
 ...yocto%.bbappend => linux-yocto_%.bbappend} |  4 +-
 10 files changed, 157 insertions(+), 1 deletion(-)
 create mode 100644 recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
 create mode 100644 recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
 rename recipes-kernel/linux/{linux-yocto%.bbappend => linux-yocto_%.bbappend} (79%)

diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
index 4e9498266cfd..fa9790680ed2 100644
--- a/conf/machine/include/rk3066.inc
+++ b/conf/machine/include/rk3066.inc
@@ -10,4 +10,5 @@ require conf/machine/include/rockchip-defaults.inc
 SERIAL_CONSOLES = "115200;ttyS2"
 
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
+KERNEL_FEATURES:append:rk3066 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
 KERNEL_IMAGETYPE = "zImage"
diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
index cc6cd3f6ae1e..bc96a0c040d0 100644
--- a/conf/machine/include/rk3188.inc
+++ b/conf/machine/include/rk3188.inc
@@ -10,4 +10,5 @@ require conf/machine/include/rockchip-defaults.inc
 SERIAL_CONSOLES = "115200;ttyFIQ0"
 
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
+KERNEL_FEATURES:append:rk3188 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
 KERNEL_IMAGETYPE = "zImage"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 1d4a0e3d40bc..b4c559db70cd 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -10,6 +10,7 @@ require conf/machine/include/rockchip-defaults.inc
 SERIAL_CONSOLES = "115200;ttyS2"
 
 KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
+KERNEL_FEATURES:append:rk3288 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
 KERNEL_IMAGETYPE = "zImage"
 
 UBOOT_SUFFIX ?= "bin"
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
index acc9afd8bf32..f9f8792ca521 100644
--- a/conf/machine/include/rk3328.inc
+++ b/conf/machine/include/rk3328.inc
@@ -11,6 +11,7 @@ require conf/machine/include/rockchip-defaults.inc
 require conf/machine/include/rockchip-wic.inc
 
 KBUILD_DEFCONFIG ?= "defconfig"
+KERNEL_FEATURES:append:rk3328 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
 KERNEL_CLASSES = "kernel-fitimage"
 KERNEL_IMAGETYPE = "fitImage"
 
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 1e6c3b623065..88c87af3a03e 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -11,6 +11,7 @@ require conf/machine/include/rockchip-defaults.inc
 require conf/machine/include/rockchip-wic.inc
 
 KBUILD_DEFCONFIG ?= "defconfig"
+KERNEL_FEATURES:append:rk3399 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
 KERNEL_CLASSES = "kernel-fitimage"
 KERNEL_IMAGETYPE = "fitImage"
 
diff --git a/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg b/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
new file mode 100644
index 000000000000..e9443f17895c
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
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
diff --git a/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc b/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
new file mode 100644
index 000000000000..ce7770456ea4
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
@@ -0,0 +1 @@
+kconf hardware remove-non-rockchip-arch-arm.cfg
diff --git a/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg b/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
new file mode 100644
index 000000000000..597d47a424d2
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
@@ -0,0 +1,62 @@
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
+CONFIG_ARCH_QCOM=n
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
diff --git a/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc b/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
new file mode 100644
index 000000000000..e169240f5067
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
@@ -0,0 +1 @@
+kconf hardware remove-non-rockchip-arch-arm64.cfg
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
similarity index 79%
rename from recipes-kernel/linux/linux-yocto%.bbappend
rename to recipes-kernel/linux/linux-yocto_%.bbappend
index 470dc0911ca0..d0d24f1b074f 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -1,3 +1,5 @@
+FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
+
 COMPATIBLE_MACHINE:marsboard-rk3066 = "marsboard-rk3066"
 COMPATIBLE_MACHINE:rock2-square = "rock2-square"
 COMPATIBLE_MACHINE:radxarock = "radxarock"
@@ -11,4 +13,4 @@ COMPATIBLE_MACHINE:nanopi-m4-2gb = "nanopi-m4-2gb"
 COMPATIBLE_MACHINE:rock64 = "rock64"
 COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
 
-FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
+SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
-- 
2.41.0.327.gaa9166bcc0ba


