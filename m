Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C2F5C02192
	for <webhook@archiver.kernel.org>; Wed,  5 Feb 2025 14:15:38 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.12765.1738764931322401509
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Feb 2025 06:15:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YawV5nTU;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ab6ed8a3f6aso1033061466b.2
        for <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2025 06:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738764930; x=1739369730; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jHcskFbDo3XmedvsMhBDM/beclqmL7fA9gx4AEiN96w=;
        b=YawV5nTUaTpIOIgo67vUWygf0SyNPsUhuG8Qx5QJ/PJSQry73jwe/0EvdoLQxp0SiF
         AQNpTHYYc/TivJRW3L810nWWvnia3t1V331wd1UQen9jtB640p9NDWzGHdhecPTbieOq
         dh6ZLbBey5IDdZQ9G/1Zyw0xKUFLBPq7EgaDhWG39VuCYgszXqsWceQn2JadKYvqLT/a
         xQyZqaZhQxFWxjW4yBKFXRzUD5PRHGXv+Lkx48/U6XROMifuJBkrUA47HJO9SGiDHUiR
         R7d0+kxxrFHhoWT0rfqunZ0cIO2p1U9djuUpy4pt7oJHiTJs+A738cVdyOjj89qmzFgR
         jVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738764930; x=1739369730;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jHcskFbDo3XmedvsMhBDM/beclqmL7fA9gx4AEiN96w=;
        b=vqp3jNPGqcs8vQklIvrjgfECVBK1lBL4JXCJkh0pcjCYg/EvHflZtPF5F/Jtcsrisi
         TOqxIZ3uvKyIXuAsLh9aJ8a7Te8nJ4S/j9/Z9khN7AbrKbgdcO4YysDLzcwi+oWHHtTb
         yC1rngptSJ9Gpjo8WTkS0zgVZZ6aamHqmsDAO/az26zezNzAm8e9mU/UJePZJuYCP8ZO
         BacMznH435LphFMr8uGkAsSwso5j99+LuoVoKmpRuEccCtBMVfqK1Zlcz5Sz2Q+8o8VM
         uebxTpwiLTlgGA3Q2MLKE6VKMshYcTR9/4YlGL3/6m7KrFQa0yJrauzLn8iPxKOcZGPS
         LKyA==
X-Gm-Message-State: AOJu0Yxga0sk5v9k3jV1Klqw6y9AzAKpGWdA2kUO9uAlXVkXv8BtVoYL
	ckM1UVSivtGUagk2YZh4CIl0qxIcvmnuFpSg4V9jATjewrHrW+Ry/fI2Cg==
X-Gm-Gg: ASbGnctvHe5d2CIXOdqYyb3SAoLCYDagmYvpK6xXE+tq+EMmeBwvhoE8QiBRztbEbDy
	WSG/VzrIGy4veOm3ZWJ5ql63/yGF/a9TTWncCyvI8t6bwnBwwObXh12sERsiH8KcZaQBLpjrP2X
	XvEomuZoqBOLvfFpt5gDvehiBJyPMEC/OGJoc9Vmky3wXi7AsjWlgVQoIcSY0lUT1KK/1F7n5Fd
	DQ8NouA7deqj1GcWG8Y+O0m9pzxwEj0ALdyL/LZTSrr7lWl26jtvpsgSnJc6mP30vMSF2OkHhvb
	iSx3fqp3QnKQyXUDvcMdkuQ=
X-Google-Smtp-Source: AGHT+IETa7cDb21OhoucRwXtYaBKbWt/kvBpfhYra2bUZ9TItVGh15Tm+Y7mZ6gTfguL0RG3qRx5Ww==
X-Received: by 2002:a17:906:b0c8:b0:ab7:5f0e:87e9 with SMTP id a640c23a62f3a-ab75f0e89a0mr283794866b.55.1738764929211;
        Wed, 05 Feb 2025 06:15:29 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e49ff3d4sm1104456066b.112.2025.02.05.06.15.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2025 06:15:28 -0800 (PST)
Message-ID: <4a9f2e3d-13a8-4624-a6a5-6f8ede4a00a5@gmail.com>
Date: Wed, 5 Feb 2025 15:15:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] imx-boot / u-boot for iMX95
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
References: <7da91a921033b4465f9b7d28af5665e8d8cc7cfd.camel@vrag.ch>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <7da91a921033b4465f9b7d28af5665e8d8cc7cfd.camel@vrag.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2025 14:15:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64715

One generic thought, which may or may not be a waste of time:

Take a look at this article, on how to dump sigdata: 
https://wiki.yoctoproject.org/wiki/TipsAndTricks/Understanding_what_changed_(diffsigs_etc) 
- it is meant to investigate sstate-cache-misses, but I think it *might* 
help you too:

1. Check if the the generated ${B}/.config files are the same after the 
do_configure step for both versions.
2. If the .config files are the same, run do_compile for both u-boots. 
If they are different, run do_fetch and do_configure at least.
2. Save the generated signatures
3. Dump the content of both signatures and run a diff on them to see 
what's different between the recipes. These signatures supposed to 
contain most (all?) relevant functions, variables and their values used 
for the task. At the first time I'd especially concentrate on variable 
names containing "BOOT", and maybe on the compiler flags.

On 05.02.25 11:16, David Daniel via lists.yoctoproject.org wrote:
> Hi all
> We received an iMX95 Dart evalkit board from Variscite and I am preparing our
> bsp layer for the machine that will be derived from that board. Now I wanted to
> integrate u-boot and imx-boot into our image and went ahead and took a look at
> Variscites layers - they already provide some setup for a Yocto build so I
> though I will just grab the u-boot from their repository and build that the
> same way they do it. Now it turns out my build does not boot, the u-boot
> binaries and the imx-boot binary are different from the Variscites build - I
> cannot figure out what I am missing since I went up and down the recipes and
> bitbakes environment and cannot find any difference.
>
> I am using the following setup in the machine configuration:
>
>      TUNE_FEATURES = "aarch64 armv8a-2a crc crypto cortexa55"
>      require conf/machine/include/imx95-evk.inc
>      INHERIT += "image-buildinfo"
>
>      IMX_DEFAULT_BSP = "nxp"
>      IMX_DEFAULT_BOOTLOADER = "u-boot-cf200"
>      IMX_DEFAULT_BOOTLOADER:use-nxp-bsp = "u-boot-cf200"
>
>      MACHINE_FEATURES = "pci usbhost vfat alsa touchscreen screen pci bluetooth wifi screen nxpiw612-sdio"
>      MACHINE_FEATURES:remove = "xen jailhouse dpdk nxpwifi-all-sdio nxpwifi-all-pcie"
>
>      UBOOT_CONFIG_BASENAME = "imx95_var_dart"
>      UBOOT_CONFIG = "sd"
>      UBOOT_CONFIG[sd]    = "${UBOOT_CONFIG_BASENAME}_defconfig"
>      UBOOT_CONFIG[fspi]  = "${UBOOT_CONFIG_BASENAME}_fspi_defconfig"
>      UBOOT_DTB_NAME = "imx95-var-dart-dt8mcustomboard.dtb"
>      SPL_BINARY = "spl/u-boot-spl.bin"
>      LOADADDR = ""
>      UBOOT_SUFFIX = "bin"
>      UBOOT_MAKE_TARGET = ""
>
>      IMXBOOT_TARGETS = "flash_a55"
>      IMX_BOOT_SOC_TARGET = "iMX95"
>      IMX_BOOT_SEEK = "32"
>      IMXBOOT_VARIANT = ""
>
>      OEI_BOARD  = "mx95lp5"
>      DDR_TYPE   = "lpddr5"
>
>      DDR_FIRMWARE_NAME = " \
>          lpddr5_dmem_v202311.bin \
>          lpddr5_dmem_qb_v202311.bin \
>          lpddr5_imem_v202311.bin \
>          lpddr5_imem_qb_v202311.bin \
>      "
>      SYSTEM_MANAGER_FIRMWARE_BASENAME = "m33_image"
>      SYSTEM_MANAGER_FIRMWARE_NAME     = "m33_image-mx95evk"
>
> With the following recipe for u-boot - I am using the same version with the
> same configuration and the same device tree binary that Variscite is using:
>
>      require recipes-bsp/u-boot/u-boot.inc
>
>      PROVIDES += "u-boot"
>      DEPENDS += "bison-native bc-native dtc-native gnutls-native"
>
>      LICENSE = "GPL-2.0-or-later"
>      LIC_FILES_CHKSUM = "file://Licenses/gpl-2.0.txt;md5=b234ee4d69f5fce4486a80fdaf4a4263"
>
>      UBOOT_SRC ?= "git://github.com/varigit/uboot-imx;protocol=https"
>
>      SRCBRANCH = "lf_v2024.04_6.6.23-2.0.0_var01"
>      SRCREV = "235d259e8c4362e725567791728a74bc2d4441e2"
>      UBOOT_INITIAL_ENV_DEVICE = "sd"
>
>      SRC_URI = "${UBOOT_SRC};branch=${SRCBRANCH} \
>          file://fw_env.config \
>      "
>
>      S = "${WORKDIR}/git"
>
>      LOCALVERSION ?= "-cf200"
>      PV = "1"
>
>      BOOT_TOOLS = "imx-boot-tools"
>
>      UBOOT_INITIAL_ENV = "u-boot-initial-env"
>      UBOOT_INITIAL_ENV_DEVICE = "sd"
>      UBOOT_CONFIG = "sd"
>
>      do_install:append() {
>          ln -sf ${UBOOT_INITIAL_ENV}-${UBOOT_INITIAL_ENV_DEVICE} ${D}/${sysconfdir}/${UBOOT_INITIAL_ENV}
>      }
>
>      PACKAGE_ARCH = "${MACHINE_ARCH}"
>
> The resulting spl and u-boot binaries are one to two kb smaller than the ones
> that are created by the vendor of the board. We do not need any binary on the
> M7 yet and I thought this would be optional, so I thought this would be fine as
> long as I only speficy `flash_a55` and not `flash_all`.
>
> That way I get the following in the deploy directory of imx-boot-tools:
>
>      .rw-r--r-- david david  64 KB Tue Feb  4 14:07:54 2025 lpddr5_dmem_qb_v202311.bin
>      .rw-r--r-- david david  64 KB Tue Feb  4 14:07:54 2025 lpddr5_dmem_v202311.bin
>      .rw-r--r-- david david  25 KB Tue Feb  4 14:07:54 2025 lpddr5_imem_qb_v202311.bin
>      .rw-r--r-- david david  63 KB Tue Feb  4 14:07:54 2025 lpddr5_imem_v202311.bin
>      .rw-r--r-- david david 154 KB Tue Feb  4 14:07:54 2025 m33_image-mx95evk.bin
>      .rwxr-xr-x david david  56 KB Tue Feb  4 14:07:54 2025 mkimage_imx8
>      .rw-r--r-- david david 212 KB Tue Feb  4 14:07:54 2025 mx95a0-ahab-container.img
>      .rw-r--r-- david david  92 KB Tue Feb  4 14:07:54 2025 oei-m33-ddr.bin
>      .rw-r--r-- david david 3.6 KB Tue Feb  4 14:07:54 2025 oei-m33-tcm.bin
>      .rw-r--r-- david david  19 KB Tue Feb  4 14:07:54 2025 soc.mak
>      .rw-r--r-- david david 932 KB Tue Feb  4 14:07:54 2025 u-boot-cf200.bin-sd
>      .rw-r--r-- david david 138 KB Tue Feb  4 14:07:54 2025 u-boot-spl.bin-cf200-sd
>
> Whereas the corresponding directory from Variscite looks like the following:
>
>      .rw-r--r-- david david  33 KB Mon Feb  3 11:25:07 2025 bl31-imx95.bin
>      .rw-r--r-- david david  35 KB Mon Feb  3 16:25:05 2025 imx95-19x19-evk_m7_TCM_power_mode_switch_rtos_imx95_sm_cm7.bin
>      .rw-r--r-- david david  64 KB Mon Feb  3 16:25:05 2025 lpddr5_dmem_qb_v202311.bin
>      .rw-r--r-- david david  64 KB Mon Feb  3 16:25:05 2025 lpddr5_dmem_v202311.bin
>      .rw-r--r-- david david  25 KB Mon Feb  3 16:25:05 2025 lpddr5_imem_qb_v202311.bin
>      .rw-r--r-- david david  63 KB Mon Feb  3 16:25:05 2025 lpddr5_imem_v202311.bin
>      .rw-r--r-- david david 143 KB Mon Feb  3 16:25:05 2025 m33_image-mx95evk.bin
>      .rwxr-xr-x david david  56 KB Mon Feb  3 16:25:05 2025 mkimage_imx8
>      .rw-r--r-- david david 192 KB Mon Feb  3 16:25:05 2025 mx95a0-ahab-container.img
>      .rw-r--r-- david david  90 KB Mon Feb  3 16:25:05 2025 oei-m33-ddr.bin
>      .rw-r--r-- david david 2.4 KB Mon Feb  3 16:25:05 2025 oei-m33-tcm.bin
>      .rw-r--r-- david david  19 KB Mon Feb  3 16:25:05 2025 soc.mak
>      .rw-r--r-- david david 935 KB Mon Feb  3 16:25:05 2025 u-boot-imx95-var-dart.bin-sd
>      .rw-r--r-- david david 139 KB Mon Feb  3 16:25:05 2025 u-boot-spl.bin-imx95-var-dart-sd
>
> I don't understand why the bl31-imx95.bin is present in the vendors deployment
> folder since optee is not enabled. I only get this binary deployed when optee
> is enabled in my build. I also don't understand how it is possible that the
> same u-boot package with the same configuration and the same device tree binary
> results in a different u-boot executable.
>
> Thanks for any hints!
>
> Dave
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64711): https://lists.yoctoproject.org/g/yocto/message/64711
> Mute This Topic: https://lists.yoctoproject.org/mt/111009769/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

