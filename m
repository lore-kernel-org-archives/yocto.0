Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.205.1620162233877627834
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 14:03:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mGIUYkOi;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 69C5A38C02B9
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 21:03:53 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id n22so7472395qtk.9
        for <yocto@yoctoproject.org>; Tue, 04 May 2021 14:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mDPCqoBDBqCwNsWTknflX6fEaFTx9sAUDXhGHWrSWuY=;
        b=mGIUYkOiSY0uk9DwkMHdKOGOS5w0gHHKiyVqYgnyoFm2s4rJP1vzreWfgNyWnJGzDQ
         dPbnTOfov4COONol60o8AdmOhu2Wg4xkf6chyyZZHvEt4Tuw0VlAIkqL1xQpxz153k6F
         ljJyl0kCWUyikSzhRY3bh3h3Ldtt3J4E9uMnE7xhkn3NuR5y6rat3WWXsWrv3sgXUVpB
         wf2NdY1KcggTBi7ofcAwaoOFUNIBR/tFkHXRmaCp3qSDtDzdMF6kJ60Wru+v2RfSx0l6
         9LWdyGAHl4Hq9xdRj9jYyqO3UUhRQ2MZ9FUV0oW/l5W6M3dktEU4BI34LzdK853jS6oC
         dXZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mDPCqoBDBqCwNsWTknflX6fEaFTx9sAUDXhGHWrSWuY=;
        b=uBZQHa75QSmPX7kYgYuEPHc+Lj6ShwmPbrrhtKeYuVSbJP/fr+mA9lcjL7/j2ClkfT
         hrCBM+bnk7dsUQkWasijaIpSoanWw8xdeTthtIHyB59JURCrkj+5VXLwIaOD110UFvZ0
         kig3IADONypy5niA2uAix1xBWf+E1M7SwV6Exl7z4BfA2RfIYmDx3pqOjHXHrOJew7Fn
         KoUbT49NAuzQK3cUK5dXbVs4vYw4N5Qm8gUrHXoIGrAfwG+uZneMoQ2GUJ5gi8JpLOh+
         w4MERAmsPWzQMbz5bZFt0et2fLaS5rD8zePjw82EmSQOxfsmMGw7+o6gH79V10uTyiY0
         5UJg==
X-Gm-Message-State: AOAM530cnDPW5kObRznPabPk8Gzv43D9uC+U3r+hJaY+mLYdywdBGlzT
	+29BNdWy7bQq90emYG736TT/OwJxS6I=
X-Google-Smtp-Source: ABdhPJxU8cTJ81z93XD0vq1Lb7XZfB2+ReKZq2JKjrv47pwh41sjg0YuXJPcl5mq+U6p1s9svPLV+A==
X-Received: by 2002:ac8:555a:: with SMTP id o26mr23899242qtr.303.1620162232490;
        Tue, 04 May 2021 14:03:52 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id z17sm3394328qtf.10.2021.05.04.14.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 14:03:51 -0700 (PDT)
Date: Tue, 4 May 2021 17:03:49 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yann.dirson@blade-group.com
Cc: yocto@yoctoproject.org, Yann Dirson <yann@blade-group.com>
Subject: Re: [meta-rockchip][PATCH v4 3/3] linux-yocto: add an initial NanoPi-M4 BSP
Message-ID: <20210504210349.GC1096@localhost>
References: <20210426145810.718821-1-yann@blade-group.com>
 <20210426145810.718821-4-yann@blade-group.com>
MIME-Version: 1.0
In-Reply-To: <20210426145810.718821-4-yann@blade-group.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2021-04-26 @ 04:58:10 PM, yann.dirson@blade-group.com wrote:
> From: Yann Dirson <yann@blade-group.com>
> 
> This patch provides "standard" and "tiny" BSP.
> 
> There is still much work to be done in dispatching feature to individual
> scc files - the more boards we can support the better it will get.
> Not all SoC/board features are covered yet either (esp. Wifi/Bluetooth and
> audio jack), and properly-woking HDMI still needs patches.
> 
> Tiny is not fully testable by itself, it can be minimally booted with
> serial console (though still missing CONFIG_MULTIUSER for serial getty,
> and CONFIG_INOTIFY_USER for proper udev operation) using:
> 
>  PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
>  KERNEL_FEATURES_append = "\
>   ktypes/base/base.scc \
>   features/debug/printk.scc \
>   cfg/fs/ext4.scc \
>   cfg/8250.scc \
>  "
> 
> Such a tiny build is still using mainline defconfig with lots of hardware
> features, and the kernel can be slimmed down even more by using:
> 
>  KBUILD_DEFCONFIG = ""
> 
> Kernel weight using default configurations:
> - standard                11MB
> - tiny                     5MB
> - tiny with no defconfig   2.5MB
> 
> Signed-off-by: Yann Dirson <yann@blade-group.com>
> ---
>  .../files/bsp/rockchip/nanopi-m4-standard.scc |  7 ++
>  .../files/bsp/rockchip/nanopi-m4-tiny.scc     |  7 ++
>  .../linux/files/bsp/rockchip/nanopi-m4.cfg    | 15 ++++
>  .../linux/files/bsp/rockchip/nanopi-m4.scc    |  5 ++
>  .../linux/files/bsp/rockchip/rk3399.cfg       | 71 +++++++++++++++++++
>  .../linux/files/bsp/rockchip/rk3399.scc       |  5 ++
>  .../linux/files/bsp/rockchip/rockchip.cfg     | 50 +++++++++++++
>  .../linux/files/bsp/rockchip/rockchip.scc     |  6 ++
>  recipes-kernel/linux/linux-yocto%.bbappend    |  6 ++
>  9 files changed, 172 insertions(+)
>  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-standard.scc
>  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tiny.scc
>  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
>  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc
>  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg
>  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rk3399.scc
>  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rockchip.cfg
>  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rockchip.scc
> 
> diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-standard.scc b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-standard.scc
> new file mode 100644
> index 0000000..5c74d6b
> --- /dev/null
> +++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-standard.scc
> @@ -0,0 +1,7 @@
> +# SPDX-License-Identifier: MIT
> +define KMACHINE nanopi-m4
> +define KTYPE standard
> +define KARCH arm
> +
> +include ktypes/standard/standard.scc
> +include nanopi-m4.scc
> diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tiny.scc b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tiny.scc
> new file mode 100644
> index 0000000..6e94d6a
> --- /dev/null
> +++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tiny.scc
> @@ -0,0 +1,7 @@
> +# SPDX-License-Identifier: MIT
> +define KMACHINE nanopi-m4
> +define KTYPE tiny
> +define KARCH arm
> +
> +include ktypes/tiny/tiny.scc
> +include nanopi-m4.scc
> diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
> new file mode 100644
> index 0000000..7802ab3
> --- /dev/null
> +++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
> @@ -0,0 +1,15 @@
> +CONFIG_MFD_RK808=y
> +CONFIG_COMMON_CLK_RK808=y
> +
> +CONFIG_REGULATOR_RK808=y
> +CONFIG_REGULATOR_FAN53555=y
> +
> +CONFIG_MMC_BLOCK=y
> +CONFIG_PWRSEQ_SIMPLE=y
> +
> +# RTL8211E
> +CONFIG_REALTEK_PHY=m
> +
> +# AP6356S
> +CONFIG_BT_BCM=m
> +CONFIG_BT_HCIUART_BCM=y

It looks to me as though the BRCMFMAC kernel config option needs to be enabled
to support the AP6256S? I don't see that being enabled, does it end up being
pulled in by default or as a result of the above two settings?

> diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc
> new file mode 100644
> index 0000000..f4267aa
> --- /dev/null
> +++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc
> @@ -0,0 +1,5 @@
> +# SPDX-License-Identifier: MIT
> +
> +kconf hardware nanopi-m4.cfg
> +
> +include rk3399.scc
> diff --git a/recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg b/recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg
> new file mode 100644
> index 0000000..f5f2909
> --- /dev/null
> +++ b/recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg
> @@ -0,0 +1,71 @@
> +# A72 errata, all past revisions
> +CONFIG_ARM64_ERRATUM_1319367=y
> +# A53 errata, all patched on boot when needed
> +CONFIG_ARM64_ERRATUM_826319=y
> +CONFIG_ARM64_ERRATUM_827319=y
> +CONFIG_ARM64_ERRATUM_824069=y
> +CONFIG_ARM64_ERRATUM_819472=y
> +
> +# cru
> +CONFIG_CLK_RK3399=y
> +
> +CONFIG_PL330_DMA=y
> +CONFIG_I2C_RK3X=y
> +CONFIG_SERIAL_8250_DW=y
> +
> +# usb
> +CONFIG_PHY_ROCKCHIP_INNO_USB2=y
> +CONFIG_PHY_ROCKCHIP_TYPEC=y
> +
> +# ethernet
> +CONFIG_NET_VENDOR_STMICRO=y
> +CONFIG_STMMAC_ETH=m
> +CONFIG_STMMAC_PLATFORM=m
> +CONFIG_DWMAC_ROCKCHIP=m
> +CONFIG_PHYLIB=m
> +
> +# display
> +CONFIG_ROCKCHIP_DW_HDMI=y
> +CONFIG_ROCKCHIP_DW_MIPI_DSI=y
> +CONFIG_ROCKCHIP_ANALOGIX_DP=y
> +CONFIG_ROCKCHIP_CDN_DP=y
> +CONFIG_PHY_ROCKCHIP_DP=y
> +CONFIG_DRM_DW_HDMI=m
> +CONFIG_DRM_DW_HDMI_I2S_AUDIO=m
> +CONFIG_DRM_DW_HDMI_CEC=m
> +CONFIG_DRM_DW_MIPI_DSI=m
> +CONFIG_DRM_PANFROST=m
> +
> +# HDMI audio
> +CONFIG_DRM_DW_HDMI_AHB_AUDIO=m
> +CONFIG_SND_SOC_RK3288_HDMI_ANALOG=m

Oops, is enabling this RK3288 setting an oversight? Or is it needed for HDMI
on the RK3399?

> +
> +CONFIG_VIDEO_DEV=m
> +CONFIG_V4L_MEM2MEM_DRIVERS=y
> +CONFIG_VIDEO_ROCKCHIP_RGA=m
> +
> +CONFIG_V4L2_H264=m
> +CONFIG_MEDIA_CONTROLLER_REQUEST_API=y
> +CONFIG_VIDEO_HANTRO=m
> +CONFIG_VIDEO_HANTRO_ROCKCHIP=y
> +CONFIG_VIDEO_ROCKCHIP_VDEC=m
> +
> +# usb
> +CONFIG_USB_DWC2=y
> +CONFIG_USB_DWC3=y
> +CONFIG_USB_DWC3_DUAL_ROLE=y
> +
> +# sd/mmc
> +CONFIG_MMC=y
> +CONFIG_MMC_SDHCI=y
> +CONFIG_MMC_SDHCI_PLTFM=y
> +CONFIG_MMC_DW=y
> +CONFIG_MMC_DW_ROCKCHIP=y
> +CONFIG_MMC_SDHCI_OF_ARASAN=y
> +
> +# temperature sensors
> +CONFIG_THERMAL=y
> +CONFIG_THERMAL_OF=y
> +CONFIG_ROCKCHIP_THERMAL=m
> +CONFIG_IIO=y
> +CONFIG_ROCKCHIP_SARADC=m
> diff --git a/recipes-kernel/linux/files/bsp/rockchip/rk3399.scc b/recipes-kernel/linux/files/bsp/rockchip/rk3399.scc
> new file mode 100644
> index 0000000..9b1a88e
> --- /dev/null
> +++ b/recipes-kernel/linux/files/bsp/rockchip/rk3399.scc
> @@ -0,0 +1,5 @@
> +# SPDX-License-Identifier: MIT
> +
> +kconf hardware rk3399.cfg
> +
> +include rockchip.scc
> diff --git a/recipes-kernel/linux/files/bsp/rockchip/rockchip.cfg b/recipes-kernel/linux/files/bsp/rockchip/rockchip.cfg
> new file mode 100644
> index 0000000..05a397d
> --- /dev/null
> +++ b/recipes-kernel/linux/files/bsp/rockchip/rockchip.cfg
> @@ -0,0 +1,50 @@
> +CONFIG_CPU_ISOLATION=y
> +CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=y
> +CONFIG_HZ_250=y
> +CONFIG_CPU_IDLE=y
> +CONFIG_ARM_CPUIDLE=y
> +
> +CONFIG_ARCH_ROCKCHIP=y
> +CONFIG_COMMON_CLK_ROCKCHIP=y
> +CONFIG_REGULATOR=y
> +CONFIG_REGULATOR_FIXED_VOLTAGE=y
> +CONFIG_REGULATOR_PWM=y
> +CONFIG_I2C=y
> +CONFIG_FW_LOADER=y
> +CONFIG_PHY_ROCKCHIP_EMMC=y
> +CONFIG_PINCTRL=y
> +CONFIG_PINCTRL_ROCKCHIP=y
> +CONFIG_ROCKCHIP_IODOMAIN=y
> +CONFIG_ROCKCHIP_PM_DOMAINS=y
> +
> +CONFIG_SPI=y
> +CONFIG_SPI_ROCKCHIP=m
> +
> +CONFIG_PWM=y
> +CONFIG_PWM_ROCKCHIP=y
> +
> +CONFIG_DRM_KMS_HELPER=m
> +CONFIG_DRM_FBDEV_EMULATION=y
> +CONFIG_ROCKCHIP_IOMMU=y
> +CONFIG_DRM_ROCKCHIP=m
> +CONFIG_DRM_BRIDGE=y
> +
> +CONFIG_SND=y
> +CONFIG_SND_SOC=y
> +CONFIG_SND_HDA_CODEC_HDMI=m
> +CONFIG_SND_SOC_ROCKCHIP=m
> +CONFIG_SND_SOC_ROCKCHIP_I2S=m
> +CONFIG_SND_SOC_ROCKCHIP_SPDIF=m
> +
> +CONFIG_NVMEM=y
> +CONFIG_ROCKCHIP_EFUSE=m
> +
> +CONFIG_CPU_FREQ=y
> +CONFIG_CPU_FREQ_THERMAL=y
> +CONFIG_HWMON=y
> +CONFIG_THERMAL_HWMON=y
> +
> +CONFIG_CRYPTO_HW=y
> +CONFIG_CRYPTO_DEV_ROCKCHIP=m
> +
> +CONFIG_MMC_BLOCK_MINORS=32
> diff --git a/recipes-kernel/linux/files/bsp/rockchip/rockchip.scc b/recipes-kernel/linux/files/bsp/rockchip/rockchip.scc
> new file mode 100644
> index 0000000..800f105
> --- /dev/null
> +++ b/recipes-kernel/linux/files/bsp/rockchip/rockchip.scc
> @@ -0,0 +1,6 @@
> +# SPDX-License-Identifier: MIT
> +
> +kconf hardware rockchip.cfg
> +
> +include cfg/dmaengine.scc
> +include features/mmc/mmc-block.cfg
> diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/linux/linux-yocto%.bbappend
> index 7702e3f..9658681 100644
> --- a/recipes-kernel/linux/linux-yocto%.bbappend
> +++ b/recipes-kernel/linux/linux-yocto%.bbappend
> @@ -1,3 +1,9 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +
> +SRC_URI_append = "\
> + file://bsp;type=kmeta;subdir=kernel-meta \
> +"
> +
>  COMPATIBLE_MACHINE_marsboard-rk3066 = "marsboard-rk3066"
>  COMPATIBLE_MACHINE_rock2-square = "rock2-square"
>  COMPATIBLE_MACHINE_radxarock = "radxarock"
> -- 
> 2.30.2
> 
