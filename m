Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.504.1620166706915063063
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 15:18:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=stsDMFbJ;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 44F6F38C0554
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 22:18:26 +0000 (UTC)
Received: by mail-vs1-f54.google.com with SMTP id k124so124375vsk.3
        for <yocto@yoctoproject.org>; Tue, 04 May 2021 15:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=acDdWkVMge65amIaBV+7x27OMDIKOgthUhIUjSvTf5A=;
        b=stsDMFbJd3/BKXXUQ+hQ/3UqB9XZgSwXXcgaZFJumsXsGFR27ZRy469ZktuNnKORPT
         w0mQ0T4HRIABfZUc2xAHw83CtYveMOvWlDBe5RNJ6FNNpHdwLS9Cd6ad2zXR9BxqOGre
         M2V/RMKJ3LiRieA6SA8bd2YAXZC4g6CQRXb3rrbtGNGSir3UlDaztLRbCwRDC/fGk1HQ
         p7Ex+l06Izsyt43BjDaGaYCdLVPVG8GOLeC4WsnfFUWgVpCk1npiJuGazMwuDDCRoyxE
         +jYL33zJlQyEEL+xmdU5jWp1BZU9WCGo+Pzgx/bhk0qxeVs0h5Lx1akaVAP8J6fggmAn
         wdIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=acDdWkVMge65amIaBV+7x27OMDIKOgthUhIUjSvTf5A=;
        b=JiO2vyBBTiFEBYodiIhB2WjKrwz1gt+ypmejo+BrO8+NNSx09kqaD9VWbphBIK/RKB
         uw+g6OVCTZ0B75th7NlXLYWuEtbglQWPCQUtoHbDmYM7hCBNYooaBED39itMymo9wCGL
         bWuNO6BZiCfRCi9UYc8VW+ZBLa6WLd5P+Gz8WnFI5fqAf6mlcFmUmN3v2EMD54TzswXm
         PwSfF+7mJCRZY+GbeoIvbI8jzpxPg0Wrt/a5brwCZUSHlwq/upKpjmjamCS3LmBwko8W
         uwRNsdu39ZxazszvViTU2+rjoJV7RvNrwP69DImkGf635jD2K4xzu+APpnp0Z8bcnvas
         Ea4w==
X-Gm-Message-State: AOAM533l9nET8SxehHpw4GptRHnvU6Jo1ymG1DsnjDIy/HVPgRxbJQFK
	Pg6c3k/ZWObeI+zeaZKea/akBZwvsZIatghobjUrHA==
X-Google-Smtp-Source: ABdhPJz3YiKqf0NNMlgelFYRIWq6fvxAE83IQ3sdXtqTd7d+Nze9m3C5Cy59zFnrbMiFPMMWwobHFosK89chKN4xiHY=
X-Received: by 2002:a67:ecce:: with SMTP id i14mr24882004vsp.22.1620166705426;
 Tue, 04 May 2021 15:18:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210426145810.718821-1-yann@blade-group.com> <20210426145810.718821-4-yann@blade-group.com>
 <20210504210349.GC1096@localhost>
In-Reply-To: <20210504210349.GC1096@localhost>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Wed, 5 May 2021 00:18:14 +0200
Message-ID: <CA+4=imagJSo6P5r5TDdsumykuMfWnTByzEakRZ1QKOK9xi2a7w@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH v4 3/3] linux-yocto: add an initial NanoPi-M4 BSP
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

(sorry, previous answer _is_ empty, wrong button)

Le mar. 4 mai 2021 =C3=A0 23:03, Trevor Woerner <twoerner@gmail.com> a =C3=
=A9crit :
>
> On Mon 2021-04-26 @ 04:58:10 PM, yann.dirson@blade-group.com wrote:
> > From: Yann Dirson <yann@blade-group.com>
> >
> > This patch provides "standard" and "tiny" BSP.
> >
> > There is still much work to be done in dispatching feature to individua=
l
> > scc files - the more boards we can support the better it will get.
> > Not all SoC/board features are covered yet either (esp. Wifi/Bluetooth =
and
> > audio jack), and properly-woking HDMI still needs patches.
> >
> > Tiny is not fully testable by itself, it can be minimally booted with
> > serial console (though still missing CONFIG_MULTIUSER for serial getty,
> > and CONFIG_INOTIFY_USER for proper udev operation) using:
> >
> >  PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-tiny"
> >  KERNEL_FEATURES_append =3D "\
> >   ktypes/base/base.scc \
> >   features/debug/printk.scc \
> >   cfg/fs/ext4.scc \
> >   cfg/8250.scc \
> >  "
> >
> > Such a tiny build is still using mainline defconfig with lots of hardwa=
re
> > features, and the kernel can be slimmed down even more by using:
> >
> >  KBUILD_DEFCONFIG =3D ""
> >
> > Kernel weight using default configurations:
> > - standard                11MB
> > - tiny                     5MB
> > - tiny with no defconfig   2.5MB
> >
> > Signed-off-by: Yann Dirson <yann@blade-group.com>
> > ---
> >  .../files/bsp/rockchip/nanopi-m4-standard.scc |  7 ++
> >  .../files/bsp/rockchip/nanopi-m4-tiny.scc     |  7 ++
> >  .../linux/files/bsp/rockchip/nanopi-m4.cfg    | 15 ++++
> >  .../linux/files/bsp/rockchip/nanopi-m4.scc    |  5 ++
> >  .../linux/files/bsp/rockchip/rk3399.cfg       | 71 +++++++++++++++++++
> >  .../linux/files/bsp/rockchip/rk3399.scc       |  5 ++
> >  .../linux/files/bsp/rockchip/rockchip.cfg     | 50 +++++++++++++
> >  .../linux/files/bsp/rockchip/rockchip.scc     |  6 ++
> >  recipes-kernel/linux/linux-yocto%.bbappend    |  6 ++
> >  9 files changed, 172 insertions(+)
> >  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-s=
tandard.scc
> >  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-t=
iny.scc
> >  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.c=
fg
> >  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.s=
cc
> >  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg
> >  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rk3399.scc
> >  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rockchip.cf=
g
> >  create mode 100644 recipes-kernel/linux/files/bsp/rockchip/rockchip.sc=
c
> >
> > diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-standard=
.scc b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-standard.scc
> > new file mode 100644
> > index 0000000..5c74d6b
> > --- /dev/null
> > +++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-standard.scc
> > @@ -0,0 +1,7 @@
> > +# SPDX-License-Identifier: MIT
> > +define KMACHINE nanopi-m4
> > +define KTYPE standard
> > +define KARCH arm
> > +
> > +include ktypes/standard/standard.scc
> > +include nanopi-m4.scc
> > diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tiny.scc=
 b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tiny.scc
> > new file mode 100644
> > index 0000000..6e94d6a
> > --- /dev/null
> > +++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4-tiny.scc
> > @@ -0,0 +1,7 @@
> > +# SPDX-License-Identifier: MIT
> > +define KMACHINE nanopi-m4
> > +define KTYPE tiny
> > +define KARCH arm
> > +
> > +include ktypes/tiny/tiny.scc
> > +include nanopi-m4.scc
> > diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg b/re=
cipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
> > new file mode 100644
> > index 0000000..7802ab3
> > --- /dev/null
> > +++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.cfg
> > @@ -0,0 +1,15 @@
> > +CONFIG_MFD_RK808=3Dy
> > +CONFIG_COMMON_CLK_RK808=3Dy
> > +
> > +CONFIG_REGULATOR_RK808=3Dy
> > +CONFIG_REGULATOR_FAN53555=3Dy
> > +
> > +CONFIG_MMC_BLOCK=3Dy
> > +CONFIG_PWRSEQ_SIMPLE=3Dy
> > +
> > +# RTL8211E
> > +CONFIG_REALTEK_PHY=3Dm
> > +
> > +# AP6356S
> > +CONFIG_BT_BCM=3Dm
> > +CONFIG_BT_HCIUART_BCM=3Dy
>
> It looks to me as though the BRCMFMAC kernel config option needs to be en=
abled
> to support the AP6256S? I don't see that being enabled, does it end up be=
ing
> pulled in by default or as a result of the above two settings?

Hm, good catch, I ended up not activating the AP6356S in this first
patch, since it would be non-functional
without the proper firmware, and that one needs separate work.  It
makes sense not to include those options
at all here.

>
> > diff --git a/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc b/re=
cipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc
> > new file mode 100644
> > index 0000000..f4267aa
> > --- /dev/null
> > +++ b/recipes-kernel/linux/files/bsp/rockchip/nanopi-m4.scc
> > @@ -0,0 +1,5 @@
> > +# SPDX-License-Identifier: MIT
> > +
> > +kconf hardware nanopi-m4.cfg
> > +
> > +include rk3399.scc
> > diff --git a/recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg b/recip=
es-kernel/linux/files/bsp/rockchip/rk3399.cfg
> > new file mode 100644
> > index 0000000..f5f2909
> > --- /dev/null
> > +++ b/recipes-kernel/linux/files/bsp/rockchip/rk3399.cfg
> > @@ -0,0 +1,71 @@
> > +# A72 errata, all past revisions
> > +CONFIG_ARM64_ERRATUM_1319367=3Dy
> > +# A53 errata, all patched on boot when needed
> > +CONFIG_ARM64_ERRATUM_826319=3Dy
> > +CONFIG_ARM64_ERRATUM_827319=3Dy
> > +CONFIG_ARM64_ERRATUM_824069=3Dy
> > +CONFIG_ARM64_ERRATUM_819472=3Dy
> > +
> > +# cru
> > +CONFIG_CLK_RK3399=3Dy
> > +
> > +CONFIG_PL330_DMA=3Dy
> > +CONFIG_I2C_RK3X=3Dy
> > +CONFIG_SERIAL_8250_DW=3Dy
> > +
> > +# usb
> > +CONFIG_PHY_ROCKCHIP_INNO_USB2=3Dy
> > +CONFIG_PHY_ROCKCHIP_TYPEC=3Dy
> > +
> > +# ethernet
> > +CONFIG_NET_VENDOR_STMICRO=3Dy
> > +CONFIG_STMMAC_ETH=3Dm
> > +CONFIG_STMMAC_PLATFORM=3Dm
> > +CONFIG_DWMAC_ROCKCHIP=3Dm
> > +CONFIG_PHYLIB=3Dm
> > +
> > +# display
> > +CONFIG_ROCKCHIP_DW_HDMI=3Dy
> > +CONFIG_ROCKCHIP_DW_MIPI_DSI=3Dy
> > +CONFIG_ROCKCHIP_ANALOGIX_DP=3Dy
> > +CONFIG_ROCKCHIP_CDN_DP=3Dy
> > +CONFIG_PHY_ROCKCHIP_DP=3Dy
> > +CONFIG_DRM_DW_HDMI=3Dm
> > +CONFIG_DRM_DW_HDMI_I2S_AUDIO=3Dm
> > +CONFIG_DRM_DW_HDMI_CEC=3Dm
> > +CONFIG_DRM_DW_MIPI_DSI=3Dm
> > +CONFIG_DRM_PANFROST=3Dm
> > +
> > +# HDMI audio
> > +CONFIG_DRM_DW_HDMI_AHB_AUDIO=3Dm
> > +CONFIG_SND_SOC_RK3288_HDMI_ANALOG=3Dm
>
> Oops, is enabling this RK3288 setting an oversight? Or is it needed for H=
DMI
> on the RK3399?

I will double-check before rerolling, IIRC it is a common block used
by the 3399,
whose legacy naming is just confusing.

>
> > +
> > +CONFIG_VIDEO_DEV=3Dm
> > +CONFIG_V4L_MEM2MEM_DRIVERS=3Dy
> > +CONFIG_VIDEO_ROCKCHIP_RGA=3Dm
> > +
> > +CONFIG_V4L2_H264=3Dm
> > +CONFIG_MEDIA_CONTROLLER_REQUEST_API=3Dy
> > +CONFIG_VIDEO_HANTRO=3Dm
> > +CONFIG_VIDEO_HANTRO_ROCKCHIP=3Dy
> > +CONFIG_VIDEO_ROCKCHIP_VDEC=3Dm
> > +
> > +# usb
> > +CONFIG_USB_DWC2=3Dy
> > +CONFIG_USB_DWC3=3Dy
> > +CONFIG_USB_DWC3_DUAL_ROLE=3Dy
> > +
> > +# sd/mmc
> > +CONFIG_MMC=3Dy
> > +CONFIG_MMC_SDHCI=3Dy
> > +CONFIG_MMC_SDHCI_PLTFM=3Dy
> > +CONFIG_MMC_DW=3Dy
> > +CONFIG_MMC_DW_ROCKCHIP=3Dy
> > +CONFIG_MMC_SDHCI_OF_ARASAN=3Dy
> > +
> > +# temperature sensors
> > +CONFIG_THERMAL=3Dy
> > +CONFIG_THERMAL_OF=3Dy
> > +CONFIG_ROCKCHIP_THERMAL=3Dm
> > +CONFIG_IIO=3Dy
> > +CONFIG_ROCKCHIP_SARADC=3Dm
> > diff --git a/recipes-kernel/linux/files/bsp/rockchip/rk3399.scc b/recip=
es-kernel/linux/files/bsp/rockchip/rk3399.scc
> > new file mode 100644
> > index 0000000..9b1a88e
> > --- /dev/null
> > +++ b/recipes-kernel/linux/files/bsp/rockchip/rk3399.scc
> > @@ -0,0 +1,5 @@
> > +# SPDX-License-Identifier: MIT
> > +
> > +kconf hardware rk3399.cfg
> > +
> > +include rockchip.scc
> > diff --git a/recipes-kernel/linux/files/bsp/rockchip/rockchip.cfg b/rec=
ipes-kernel/linux/files/bsp/rockchip/rockchip.cfg
> > new file mode 100644
> > index 0000000..05a397d
> > --- /dev/null
> > +++ b/recipes-kernel/linux/files/bsp/rockchip/rockchip.cfg
> > @@ -0,0 +1,50 @@
> > +CONFIG_CPU_ISOLATION=3Dy
> > +CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=3Dy
> > +CONFIG_HZ_250=3Dy
> > +CONFIG_CPU_IDLE=3Dy
> > +CONFIG_ARM_CPUIDLE=3Dy
> > +
> > +CONFIG_ARCH_ROCKCHIP=3Dy
> > +CONFIG_COMMON_CLK_ROCKCHIP=3Dy
> > +CONFIG_REGULATOR=3Dy
> > +CONFIG_REGULATOR_FIXED_VOLTAGE=3Dy
> > +CONFIG_REGULATOR_PWM=3Dy
> > +CONFIG_I2C=3Dy
> > +CONFIG_FW_LOADER=3Dy
> > +CONFIG_PHY_ROCKCHIP_EMMC=3Dy
> > +CONFIG_PINCTRL=3Dy
> > +CONFIG_PINCTRL_ROCKCHIP=3Dy
> > +CONFIG_ROCKCHIP_IODOMAIN=3Dy
> > +CONFIG_ROCKCHIP_PM_DOMAINS=3Dy
> > +
> > +CONFIG_SPI=3Dy
> > +CONFIG_SPI_ROCKCHIP=3Dm
> > +
> > +CONFIG_PWM=3Dy
> > +CONFIG_PWM_ROCKCHIP=3Dy
> > +
> > +CONFIG_DRM_KMS_HELPER=3Dm
> > +CONFIG_DRM_FBDEV_EMULATION=3Dy
> > +CONFIG_ROCKCHIP_IOMMU=3Dy
> > +CONFIG_DRM_ROCKCHIP=3Dm
> > +CONFIG_DRM_BRIDGE=3Dy
> > +
> > +CONFIG_SND=3Dy
> > +CONFIG_SND_SOC=3Dy
> > +CONFIG_SND_HDA_CODEC_HDMI=3Dm
> > +CONFIG_SND_SOC_ROCKCHIP=3Dm
> > +CONFIG_SND_SOC_ROCKCHIP_I2S=3Dm
> > +CONFIG_SND_SOC_ROCKCHIP_SPDIF=3Dm
> > +
> > +CONFIG_NVMEM=3Dy
> > +CONFIG_ROCKCHIP_EFUSE=3Dm
> > +
> > +CONFIG_CPU_FREQ=3Dy
> > +CONFIG_CPU_FREQ_THERMAL=3Dy
> > +CONFIG_HWMON=3Dy
> > +CONFIG_THERMAL_HWMON=3Dy
> > +
> > +CONFIG_CRYPTO_HW=3Dy
> > +CONFIG_CRYPTO_DEV_ROCKCHIP=3Dm
> > +
> > +CONFIG_MMC_BLOCK_MINORS=3D32
> > diff --git a/recipes-kernel/linux/files/bsp/rockchip/rockchip.scc b/rec=
ipes-kernel/linux/files/bsp/rockchip/rockchip.scc
> > new file mode 100644
> > index 0000000..800f105
> > --- /dev/null
> > +++ b/recipes-kernel/linux/files/bsp/rockchip/rockchip.scc
> > @@ -0,0 +1,6 @@
> > +# SPDX-License-Identifier: MIT
> > +
> > +kconf hardware rockchip.cfg
> > +
> > +include cfg/dmaengine.scc
> > +include features/mmc/mmc-block.cfg
> > diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kerne=
l/linux/linux-yocto%.bbappend
> > index 7702e3f..9658681 100644
> > --- a/recipes-kernel/linux/linux-yocto%.bbappend
> > +++ b/recipes-kernel/linux/linux-yocto%.bbappend
> > @@ -1,3 +1,9 @@
> > +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> > +
> > +SRC_URI_append =3D "\
> > + file://bsp;type=3Dkmeta;subdir=3Dkernel-meta \
> > +"
> > +
> >  COMPATIBLE_MACHINE_marsboard-rk3066 =3D "marsboard-rk3066"
> >  COMPATIBLE_MACHINE_rock2-square =3D "rock2-square"
> >  COMPATIBLE_MACHINE_radxarock =3D "radxarock"
> > --
> > 2.30.2
> >



--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
