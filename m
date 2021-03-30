Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.2090.1617125668114096796
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 10:34:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=IN0wRrZm;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0292538C06CD
	for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 17:34:28 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id z2so17025063wrl.5
        for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 10:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r/oCIKQT+r8E2Ef9SMAI0mBm3OZoOZCujtK/KnnFTdI=;
        b=IN0wRrZmskTzDYdnIeMu1EHu+EA46M+Xf1O94VTh+jk3ALt/u5qjbeQzLe/AuFsyXp
         fFcllnAqtieEj1Wfu8Ke607fjwKADzIn574JNvfENMedU7ZmAOUqIe3G2tyL8pjKKsfa
         h2wdQ3Al3V6QfJY1I3Trm+RW0Y/66Pc2bbr5lrPV5ku1lcTUmFZ/XB0nzmuHJPrGK2Kr
         7JvuzD43wlSmygRAHVV490kO5byVfa2Wffs4GDqhKl0kf+9O5j369FSM/pc9gBYRlYI0
         zqUc1Dbyl1jtFtxmM28XCi90B/cGLHCa6PKe0loo7n4tLw6iQsg/TIK8UDTxdr7eaFi0
         Vs7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r/oCIKQT+r8E2Ef9SMAI0mBm3OZoOZCujtK/KnnFTdI=;
        b=Dr/1yTZjqsTBnfTbpP5C5Uy5hSLfrCdG1/wscXc0OGrulHKEe6xZEacDQjvQsOMFTh
         qSGSgZCT8gdE617r7bHihTQBc7Y5QawxOCI0VMSJyaHLE2naY7/XhYMl8A3h0BXfwCMc
         hY6nV5NppDwltbrI3pIwcYNdvjc1tgn615O6+1rALmCPbcJqxNWIGLFmm1WKn34Uitht
         a9Nvkb4n4CUbJDanXefGnxrWgQWZGLuLrtGbB8HffR+++7W1ZbG67KGZsrSRYtpLI3Uq
         CPvnxi8DbesbgLZ+8B6LoZ9bu7V57/xDvIjL+JX1PTrQsCGtxd+w6Uw4F0Mtl6DtEYfY
         0XZg==
X-Gm-Message-State: AOAM531auON7tycWBRKAh6YVTc5CDtfxsDqqVNxoq4Z7kezBHmnc5/80
	kz+IXKIgGRlrGK+nLZHrPm7MriM6G3jqiQ==
X-Google-Smtp-Source: ABdhPJyTS+VBMRyLNZ6yt4z6yBqGmsqk84BchkjkLDP9wsyPs816qX2Le8DU1ynBYx5zmVISUs7mpw==
X-Received: by 2002:adf:fcc7:: with SMTP id f7mr35370035wrs.400.1617125666703;
        Tue, 30 Mar 2021 10:34:26 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id d18sm39179049wra.8.2021.03.30.10.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 10:34:26 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH 3/3] WIP linux-yocto: add a NanoPi-M4 BSP
Date: Tue, 30 Mar 2021 19:34:01 +0200
Message-Id: <20210330173401.753589-4-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210330173401.753589-1-yann@blade-group.com>
References: <20210330173401.753589-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This patch provides "standard" and "tiny" BSP.

There is still much work to be done in dispatching feature to individual
scc files - the more boards we can support the better it will get.

It's sad that when a different kernel type is selected, and no BSP is
available, this gets silently DWIM-handled - much time gets lost hunting
for the reason.

Tiny is not really testable by itself, I played with it using:

 PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-tiny"
 KERNEL_FEATURES_append =3D "\
  ktypes/base/base.scc \
  features/debug/printk.scc \
  cfg/fs/ext4.scc \
 "

Regardless from those additions, quite a number of useless hardware featu=
res
still manage to creep aboard.  Despite this, the fitImage weight drops fr=
om
11MB with "standard" to 5MB with "tiny" and boots to serial shell.
---
 recipes-kernel/linux/linux-yocto%.bbappend    |  6 +++
 .../linux-yocto/bsp/nanopi-m4-standard.scc    |  7 +++
 .../linux/linux-yocto/bsp/nanopi-m4-tiny.scc  |  7 +++
 .../linux/linux-yocto/bsp/nanopi-m4.cfg       | 40 +++++++++++++++
 .../linux/linux-yocto/bsp/nanopi-m4.scc       |  5 ++
 .../linux/linux-yocto/bsp/rk3399.cfg          | 48 ++++++++++++++++++
 .../linux/linux-yocto/bsp/rk3399.scc          |  5 ++
 .../linux/linux-yocto/bsp/rockchip.cfg        | 50 +++++++++++++++++++
 .../linux/linux-yocto/bsp/rockchip.scc        |  6 +++
 9 files changed, 174 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4-standa=
rd.scc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4-tiny.s=
cc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/nanopi-m4.scc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rk3399.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rk3399.scc
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rockchip.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto/bsp/rockchip.scc

diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/=
linux/linux-yocto%.bbappend
index 7702e3f..5193373 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto%.bbappend
@@ -1,3 +1,9 @@
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/linux-yocto:"
+
+SRC_URI_append =3D "\
+ file://bsp;type=3Dkmeta;subdir=3Dkernel-meta \
+"
+
 COMPATIBLE_MACHINE_marsboard-rk3066 =3D "marsboard-rk3066"
 COMPATIBLE_MACHINE_rock2-square =3D "rock2-square"
 COMPATIBLE_MACHINE_radxarock =3D "radxarock"
diff --git a/recipes-kernel/linux/linux-yocto/bsp/nanopi-m4-standard.scc =
b/recipes-kernel/linux/linux-yocto/bsp/nanopi-m4-standard.scc
new file mode 100644
index 0000000..5c74d6b
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/bsp/nanopi-m4-standard.scc
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: MIT
+define KMACHINE nanopi-m4
+define KTYPE standard
+define KARCH arm
+
+include ktypes/standard/standard.scc
+include nanopi-m4.scc
diff --git a/recipes-kernel/linux/linux-yocto/bsp/nanopi-m4-tiny.scc b/re=
cipes-kernel/linux/linux-yocto/bsp/nanopi-m4-tiny.scc
new file mode 100644
index 0000000..6e94d6a
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/bsp/nanopi-m4-tiny.scc
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: MIT
+define KMACHINE nanopi-m4
+define KTYPE tiny
+define KARCH arm
+
+include ktypes/tiny/tiny.scc
+include nanopi-m4.scc
diff --git a/recipes-kernel/linux/linux-yocto/bsp/nanopi-m4.cfg b/recipes=
-kernel/linux/linux-yocto/bsp/nanopi-m4.cfg
new file mode 100644
index 0000000..5864008
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/bsp/nanopi-m4.cfg
@@ -0,0 +1,40 @@
+CONFIG_MFD_RK808=3Dy
+CONFIG_COMMON_CLK_RK808=3Dy
+
+# regulators
+CONFIG_REGULATOR_RK808=3Dy
+CONFIG_REGULATOR_FAN53555=3Dy
+
+CONFIG_MMC_BLOCK=3Dy
+
+# audio jack
+CONFIG_SND_SOC_ROCKCHIP_RT5651=3Dm
+
+# BT, maybe some - RFCOMM for headset voice, MSFTEXT ?
+CONFIG_BT=3Dm
+#CONFIG_BT_BCM=3Dm
+#CONFIG_BT_HCIUART_BCM=3Dm
+CONFIG_BT_RFCOMM=3Dm
+CONFIG_BT_RFCOMM_TTY=3Dy
+CONFIG_BT_BNEP=3Dm
+CONFIG_BT_HS=3Dy
+CONFIG_BT_LE=3Dy
+CONFIG_BT_MSFTEXT=3Dy
+CONFIG_BT_DEBUGFS=3Dy
+CONFIG_WIRELESS=3Dy
+CONFIG_RFKILL=3Dm
+
+CONFIG_PHY_ROCKCHIP_DP=3Dy
+
+CONFIG_VIDEO_DEV=3Dm
+CONFIG_V4L_MEM2MEM_DRIVERS=3Dy
+CONFIG_VIDEO_ROCKCHIP_RGA=3Dm
+
+CONFIG_DRM_DW_HDMI_AHB_AUDIO=3Dm
+CONFIG_SND_SOC_RK3288_HDMI_ANALOG=3Dm
+
+CONFIG_V4L2_H264=3Dm
+CONFIG_MEDIA_CONTROLLER_REQUEST_API=3Dy
+CONFIG_VIDEO_HANTRO=3Dm
+CONFIG_VIDEO_HANTRO_ROCKCHIP=3Dy
+CONFIG_VIDEO_ROCKCHIP_VDEC=3Dm
diff --git a/recipes-kernel/linux/linux-yocto/bsp/nanopi-m4.scc b/recipes=
-kernel/linux/linux-yocto/bsp/nanopi-m4.scc
new file mode 100644
index 0000000..f4267aa
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/bsp/nanopi-m4.scc
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: MIT
+
+kconf hardware nanopi-m4.cfg
+
+include rk3399.scc
diff --git a/recipes-kernel/linux/linux-yocto/bsp/rk3399.cfg b/recipes-ke=
rnel/linux/linux-yocto/bsp/rk3399.cfg
new file mode 100644
index 0000000..232d2cf
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/bsp/rk3399.cfg
@@ -0,0 +1,48 @@
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
+CONFIG_ROCKCHIP_PHY=3Dm
+
+# display
+CONFIG_ROCKCHIP_DW_HDMI=3Dy
+CONFIG_ROCKCHIP_DW_MIPI_DSI=3Dy
+CONFIG_ROCKCHIP_ANALOGIX_DP=3Dy
+CONFIG_ROCKCHIP_CDN_DP=3Dy
+CONFIG_DRM_DW_HDMI=3Dm
+CONFIG_DRM_DW_HDMI_I2S_AUDIO=3Dm
+CONFIG_DRM_DW_HDMI_CEC=3Dm
+CONFIG_DRM_DW_MIPI_DSI=3Dm
+CONFIG_DRM_PANFROST=3Dm
+
+# usb
+CONFIG_USB_DWC2=3Dy
+CONFIG_USB_DWC3=3Dy
+CONFIG_USB_DWC3_DUAL_ROLE=3Dy
+
+# sd/mmc
+CONFIG_MMC_SDHCI=3Dy
+CONFIG_MMC_SDHCI_PLTFM=3Dy
+CONFIG_MMC_DW=3Dy
+CONFIG_MMC_DW_ROCKCHIP=3Dy
+CONFIG_MMC_SDHCI_OF_ARASAN=3Dy
diff --git a/recipes-kernel/linux/linux-yocto/bsp/rk3399.scc b/recipes-ke=
rnel/linux/linux-yocto/bsp/rk3399.scc
new file mode 100644
index 0000000..9b1a88e
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/bsp/rk3399.scc
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: MIT
+
+kconf hardware rk3399.cfg
+
+include rockchip.scc
diff --git a/recipes-kernel/linux/linux-yocto/bsp/rockchip.cfg b/recipes-=
kernel/linux/linux-yocto/bsp/rockchip.cfg
new file mode 100644
index 0000000..eac2a31
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/bsp/rockchip.cfg
@@ -0,0 +1,50 @@
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
+
+# maybe?
+CONFIG_MFD_SYSCON=3Dy
+CONFIG_FB_MODE_HELPERS=3Dy
+
+# possibly for somewhere else
+CONFIG_DRM=3Dm
+CONFIG_DRM_MIPI_DSI=3Dy
+CONFIG_SOUND=3Dy
+CONFIG_USB=3Dy
+CONFIG_SERIAL_8250=3Dy
+CONFIG_SERIAL_8250_CONSOLE=3Dy
+
+# obviously for somewhere else
+CONFIG_MULTIUSER=3Dy
+CONFIG_TTY=3Dy
+CONFIG_SERIAL_EARLYCON=3Dy
diff --git a/recipes-kernel/linux/linux-yocto/bsp/rockchip.scc b/recipes-=
kernel/linux/linux-yocto/bsp/rockchip.scc
new file mode 100644
index 0000000..800f105
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/bsp/rockchip.scc
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: MIT
+
+kconf hardware rockchip.cfg
+
+include cfg/dmaengine.scc
+include features/mmc/mmc-block.cfg
--=20
2.30.2

