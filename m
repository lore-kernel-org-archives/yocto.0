Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.1252.1620749447428556261
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 09:10:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=Ma2TwjOi;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C195C38C06D4
	for <yocto@yoctoproject.org>; Tue, 11 May 2021 16:10:46 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id a10-20020a05600c068ab029014dcda1971aso1513750wmn.3
        for <yocto@yoctoproject.org>; Tue, 11 May 2021 09:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M15fTkvb5S3svGOs8sHoOgFh9eAaFapwu93WsLiWi0U=;
        b=Ma2TwjOiTD14rIQnRCHNtc9nL4mXk0tJaE0wwvL55jKVZ+fdwshDjB/M0yFiNpLlX6
         8LLUeNBjGfuQ5NTnZZu076QZ0A2mg+lO4cle0IWalOyafHL6bu9jU54WsShzPBiKWzwe
         KCO2JOUhdoap0dTyUu7BsVYmWQw1YqvgiKbNAAIC3/vYEF29S2S2PbFE4O2ha5gh60d1
         NPu5TH7CTcw3ubmmXsPPPFf6XIhbVy9KH0HyfZ3m1QpKG5QJVOSM7U/WSH7fs+AKgatn
         NkxKKwkMMt2F5Un+I5nuhL9w/Vg684UU4jHsSvcXX61l8ujQegBLTJ7EozCHIb9jMcDj
         xARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M15fTkvb5S3svGOs8sHoOgFh9eAaFapwu93WsLiWi0U=;
        b=OlOk0zDZZYn+Tfed67wNV/G2B+8EQ0B0jcqBb0H69IV7Du50ta1O6odoSX/GWR3ViA
         UyJCK0BzuZ9S5cBPYdrp1pRu9E/GmN9uGj6J0GbDzakrNBvs3A79EOqL1F94piNrwptX
         mrw/DDjNvKeJ0CMuOwbk/cj2Cp85PWfxML/YYMFnLK3/IA292Iz2iSQMLRVsLt4PomN6
         8UMAiTGcqRzp6Abl/ZQ7z23J3sltn17duYZmPvyOqoNEkAOt/Pr1FceTZkyx1PpQcIdc
         RN6zDKYKU2+wynXkM7/a3UyKDAEKUgbwzgNC4aeiz9yJ/Dh4qJukgMfzI0KdKsIaMxf1
         vOOQ==
X-Gm-Message-State: AOAM5301j+OMxy39Fs90WZAA9LtxG+/q6K5xVEH/zvoU4uNWKZt+zri3
	IhtDsXBFAZrbxL7ypVWw35cyAZq29hjBaQ==
X-Google-Smtp-Source: ABdhPJyfcvrhm4YSUzTUVubjzPkK5zh0rdjBuQNdpF3gjJUPJTeX4UJPSmMXJ8JFz10QPXyQUOHa7A==
X-Received: by 2002:a7b:c052:: with SMTP id u18mr6476095wmc.105.1620749445386;
        Tue, 11 May 2021 09:10:45 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id n123sm3929243wme.24.2021.05.11.09.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 09:10:44 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v6 1/6] linux-yocto: add an initial NanoPi-M4 BSP
Date: Tue, 11 May 2021 18:10:13 +0200
Message-Id: <20210511161018.168172-2-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210511161018.168172-1-yann@blade-group.com>
References: <20210511161018.168172-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This patch provides "standard" and "tiny" BSP.

There is still much work to be done in dispatching feature to individual
scc files - the more boards we can support the better it will get.
Not all SoC/board features are covered yet either (esp. Wifi/Bluetooth an=
d
audio jack), and properly-woking HDMI still needs patches.

Tiny is not fully testable by itself, it can be minimally booted with
serial console (though still missing CONFIG_MULTIUSER for serial getty,
and CONFIG_INOTIFY_USER for proper udev operation) using:

 PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-tiny"
 KERNEL_FEATURES_append =3D "\
  ktypes/base/base.scc \
  features/debug/printk.scc \
  cfg/fs/ext4.scc \
  cfg/8250.scc \
 "

Such a tiny build is still using mainline defconfig with lots of hardware
features, and the kernel can be slimmed down even more by using:

 KBUILD_DEFCONFIG =3D ""

Kernel weight using default configurations:
- standard                11MB
- tiny                     5MB
- tiny with no defconfig   2.5MB

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 .../files/bsp/rockchip/nanopi-m4-standard.scc |  7 ++
 .../files/bsp/rockchip/nanopi-m4-tiny.scc     |  7 ++
 .../linux/files/bsp/rockchip/nanopi-m4.cfg    | 11 +++
 .../linux/files/bsp/rockchip/nanopi-m4.scc    |  5 ++
 .../linux/files/bsp/rockchip/rk3399.cfg       | 70 +++++++++++++++++++
 .../linux/files/bsp/rockchip/rk3399.scc       |  5 ++
 .../linux/files/bsp/rockchip/rockchip.cfg     | 50 +++++++++++++
 .../linux/files/bsp/rockchip/rockchip.scc     |  6 ++
 recipes-kernel/linux/linux-yocto%.bbappend    |  6 ++
 9 files changed, 167 insertions(+)
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-sta=
ndard.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tin=
y.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rk3399.scc
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rockchip.cfg
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rockchip.scc

diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-standard.s=
cc b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-standard.scc
new file mode 100644
index 0000000..5c74d6b
--- /dev/null
+++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-standard.scc
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: MIT
+define KMACHINE nanopi-m4
+define KTYPE standard
+define KARCH arm
+
+include ktypes/standard/standard.scc
+include nanopi-m4.scc
diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tiny.scc b=
/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tiny.scc
new file mode 100644
index 0000000..6e94d6a
--- /dev/null
+++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tiny.scc
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: MIT
+define KMACHINE nanopi-m4
+define KTYPE tiny
+define KARCH arm
+
+include ktypes/tiny/tiny.scc
+include nanopi-m4.scc
diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg b/reci=
pes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
new file mode 100644
index 0000000..f3a2abf
--- /dev/null
+++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
@@ -0,0 +1,11 @@
+CONFIG_MFD_RK808=3Dy
+CONFIG_COMMON_CLK_RK808=3Dy
+
+CONFIG_REGULATOR_RK808=3Dy
+CONFIG_REGULATOR_FAN53555=3Dy
+
+CONFIG_MMC_BLOCK=3Dy
+CONFIG_PWRSEQ_SIMPLE=3Dy
+
+# RTL8211E
+CONFIG_REALTEK_PHY=3Dm
diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc b/reci=
pes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc
new file mode 100644
index 0000000..f4267aa
--- /dev/null
+++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: MIT
+
+kconf hardware nanopi-m4.cfg
+
+include rk3399.scc
diff --git a/recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg b/recipes=
-kernel/linux/files/bsp/rockchip/rk3399.cfg
new file mode 100644
index 0000000..42adfd1
--- /dev/null
+++ b/recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg
@@ -0,0 +1,70 @@
+# A72 errata, all past revisions
+CONFIG_ARM64_ERRATUM_1319367=3Dy
+# A53 errata, all patched on boot when needed
+CONFIG_ARM64_ERRATUM_826319=3Dy
+CONFIG_ARM64_ERRATUM_827319=3Dy
+CONFIG_ARM64_ERRATUM_824069=3Dy
+CONFIG_ARM64_ERRATUM_819472=3Dy
+
+# cru
+CONFIG_CLK_RK3399=3Dy
+
+CONFIG_PL330_DMA=3Dy
+CONFIG_I2C_RK3X=3Dy
+CONFIG_SERIAL_8250_DW=3Dy
+
+# usb
+CONFIG_PHY_ROCKCHIP_INNO_USB2=3Dy
+CONFIG_PHY_ROCKCHIP_TYPEC=3Dy
+
+# ethernet
+CONFIG_NET_VENDOR_STMICRO=3Dy
+CONFIG_STMMAC_ETH=3Dm
+CONFIG_STMMAC_PLATFORM=3Dm
+CONFIG_DWMAC_ROCKCHIP=3Dm
+CONFIG_PHYLIB=3Dm
+
+# display
+CONFIG_ROCKCHIP_DW_HDMI=3Dy
+CONFIG_ROCKCHIP_DW_MIPI_DSI=3Dy
+CONFIG_ROCKCHIP_ANALOGIX_DP=3Dy
+CONFIG_ROCKCHIP_CDN_DP=3Dy
+CONFIG_PHY_ROCKCHIP_DP=3Dy
+CONFIG_DRM_DW_HDMI=3Dm
+CONFIG_DRM_DW_HDMI_I2S_AUDIO=3Dm
+CONFIG_DRM_DW_HDMI_CEC=3Dm
+CONFIG_DRM_DW_MIPI_DSI=3Dm
+CONFIG_DRM_PANFROST=3Dm
+
+# HDMI audio
+CONFIG_DRM_DW_HDMI_AHB_AUDIO=3Dm
+
+CONFIG_VIDEO_DEV=3Dm
+CONFIG_V4L_MEM2MEM_DRIVERS=3Dy
+CONFIG_VIDEO_ROCKCHIP_RGA=3Dm
+
+CONFIG_V4L2_H264=3Dm
+CONFIG_MEDIA_CONTROLLER_REQUEST_API=3Dy
+CONFIG_VIDEO_HANTRO=3Dm
+CONFIG_VIDEO_HANTRO_ROCKCHIP=3Dy
+CONFIG_VIDEO_ROCKCHIP_VDEC=3Dm
+
+# usb
+CONFIG_USB_DWC2=3Dy
+CONFIG_USB_DWC3=3Dy
+CONFIG_USB_DWC3_DUAL_ROLE=3Dy
+
+# sd/mmc
+CONFIG_MMC=3Dy
+CONFIG_MMC_SDHCI=3Dy
+CONFIG_MMC_SDHCI_PLTFM=3Dy
+CONFIG_MMC_DW=3Dy
+CONFIG_MMC_DW_ROCKCHIP=3Dy
+CONFIG_MMC_SDHCI_OF_ARASAN=3Dy
+
+# temperature sensors
+CONFIG_THERMAL=3Dy
+CONFIG_THERMAL_OF=3Dy
+CONFIG_ROCKCHIP_THERMAL=3Dm
+CONFIG_IIO=3Dy
+CONFIG_ROCKCHIP_SARADC=3Dm
diff --git a/recipes-kernel/linux/files/bsp/rockchip/rk3399.scc b/recipes=
-kernel/linux/files/bsp/rockchip/rk3399.scc
new file mode 100644
index 0000000..9b1a88e
--- /dev/null
+++ b/recipes-kernel/linux/files/bsp/rockchip/rk3399.scc
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: MIT
+
+kconf hardware rk3399.cfg
+
+include rockchip.scc
diff --git a/recipes-kernel/linux/files/bsp/rockchip/rockchip.cfg b/recip=
es-kernel/linux/files/bsp/rockchip/rockchip.cfg
new file mode 100644
index 0000000..05a397d
--- /dev/null
+++ b/recipes-kernel/linux/files/bsp/rockchip/rockchip.cfg
@@ -0,0 +1,50 @@
+CONFIG_CPU_ISOLATION=3Dy
+CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=3Dy
+CONFIG_HZ_250=3Dy
+CONFIG_CPU_IDLE=3Dy
+CONFIG_ARM_CPUIDLE=3Dy
+
+CONFIG_ARCH_ROCKCHIP=3Dy
+CONFIG_COMMON_CLK_ROCKCHIP=3Dy
+CONFIG_REGULATOR=3Dy
+CONFIG_REGULATOR_FIXED_VOLTAGE=3Dy
+CONFIG_REGULATOR_PWM=3Dy
+CONFIG_I2C=3Dy
+CONFIG_FW_LOADER=3Dy
+CONFIG_PHY_ROCKCHIP_EMMC=3Dy
+CONFIG_PINCTRL=3Dy
+CONFIG_PINCTRL_ROCKCHIP=3Dy
+CONFIG_ROCKCHIP_IODOMAIN=3Dy
+CONFIG_ROCKCHIP_PM_DOMAINS=3Dy
+
+CONFIG_SPI=3Dy
+CONFIG_SPI_ROCKCHIP=3Dm
+
+CONFIG_PWM=3Dy
+CONFIG_PWM_ROCKCHIP=3Dy
+
+CONFIG_DRM_KMS_HELPER=3Dm
+CONFIG_DRM_FBDEV_EMULATION=3Dy
+CONFIG_ROCKCHIP_IOMMU=3Dy
+CONFIG_DRM_ROCKCHIP=3Dm
+CONFIG_DRM_BRIDGE=3Dy
+
+CONFIG_SND=3Dy
+CONFIG_SND_SOC=3Dy
+CONFIG_SND_HDA_CODEC_HDMI=3Dm
+CONFIG_SND_SOC_ROCKCHIP=3Dm
+CONFIG_SND_SOC_ROCKCHIP_I2S=3Dm
+CONFIG_SND_SOC_ROCKCHIP_SPDIF=3Dm
+
+CONFIG_NVMEM=3Dy
+CONFIG_ROCKCHIP_EFUSE=3Dm
+
+CONFIG_CPU_FREQ=3Dy
+CONFIG_CPU_FREQ_THERMAL=3Dy
+CONFIG_HWMON=3Dy
+CONFIG_THERMAL_HWMON=3Dy
+
+CONFIG_CRYPTO_HW=3Dy
+CONFIG_CRYPTO_DEV_ROCKCHIP=3Dm
+
+CONFIG_MMC_BLOCK_MINORS=3D32
diff --git a/recipes-kernel/linux/files/bsp/rockchip/rockchip.scc b/recip=
es-kernel/linux/files/bsp/rockchip/rockchip.scc
new file mode 100644
index 0000000..800f105
--- /dev/null
+++ b/recipes-kernel/linux/files/bsp/rockchip/rockchip.scc
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: MIT
+
+kconf hardware rockchip.cfg
+
+include cfg/dmaengine.scc
+include features/mmc/mmc-block.cfg
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/=
linux/linux-yocto%.bbappend
index 7702e3f..9658681 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto%.bbappend
@@ -1,3 +1,9 @@
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
+
+SRC_URI_append =3D "\
+ file://bsp;type=3Dkmeta;subdir=3Dkernel-meta \
+"
+
 COMPATIBLE_MACHINE_marsboard-rk3066 =3D "marsboard-rk3066"
 COMPATIBLE_MACHINE_rock2-square =3D "rock2-square"
 COMPATIBLE_MACHINE_radxarock =3D "radxarock"
--=20
2.30.2

