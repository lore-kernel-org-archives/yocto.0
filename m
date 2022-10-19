Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66ECC433FE
	for <webhook@archiver.kernel.org>; Wed, 19 Oct 2022 14:47:13 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
 by mx.groups.io with SMTP id smtpd.web08.9091.1666190826871467591
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Oct 2022 07:47:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kvUsnM1T;
 spf=pass (domain: gmail.com, ip: 209.85.161.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f45.google.com with SMTP id x6-20020a4ac586000000b0047f8cc6dbe4so3564178oop.3
        for <yocto@lists.yoctoproject.org>; Wed, 19 Oct 2022 07:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GJZ8gN6xRWH6ZzQvrWiuAYpemSymAknmVF/0rLTLzw8=;
        b=kvUsnM1TB0Md70khRPUuM2Mwm1Y4Um/6z8xbs2Ix3VzVAe/qyZVay0kp+vwBSXJNGG
         aJk3kMbATnawH9vZwoXDfBJvNP4lxJ2uXavWsqIHviGdw159wtrB2nuNkun6suZFbqn3
         owYlsrqyGlgeqfah393XTUT/AcgzbbnvJiuaAKUPBPb2MmPSR2AO0Sv2HQs1RsQlLrJY
         2Nc0gSFZ80+demxbTymBYeh2VyGIypdC9tHATg48uPyo5asS9iwP8sPvqADd4G93Sxfi
         o1MDVerV6fRcOQZjEXO0HEANaFalczXsS7Fn1iSai0b1f3yFrnG6bbn9EvWTUb0c93IW
         wZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GJZ8gN6xRWH6ZzQvrWiuAYpemSymAknmVF/0rLTLzw8=;
        b=3XwEgcIFyG6COBwypcqlryZ7N0FKp1txhMwbynfqaPvqqbhr24LP6uVfiD3mbKNxzM
         8LCR13l1lCoi3mVMSP7aGA1+9/GQ7coT1YV9vhq4ONWUl5a+igDEftEifhA1QpUfmBRF
         WT1FFE2R7LzRAIv+hnAyDuBeT+E4rq0eX3BLkWmCuqy4nmN6wFRtRVJitrunjG1ANY+K
         NQHokbEqgTj8l3Moxl18NTZUqhO5pFD17D9NkbU4SAbuY4UnQrlAC21YLWYKi68T+6cC
         jUdTgQVJKC7VP1UbJUg5iWtwhyJwMsP9L5+R30AjKiCdH9EAlZWqncFJgSRx1k6emIgk
         804Q==
X-Gm-Message-State: ACrzQf1UP3+j2ataOxIecNkzG6CwtFy91jmr4BycyG1JvuHEDNNRZP3S
	hC5utHvKQywNYevAApK21TfIxjQqqzNMAh66pfk=
X-Google-Smtp-Source: AMsMyM4nvlWv8slOmFGMP1ueXBx1xoMBIgkkdwqxj0CSXcS7gfUulDQQ2MWXxVw5OJOE1gbv5Gi5EFFic7kXpY+tnKQ=
X-Received: by 2002:a4a:c90f:0:b0:480:8d45:3246 with SMTP id
 v15-20020a4ac90f000000b004808d453246mr3784133ooq.9.1666190826129; Wed, 19 Oct
 2022 07:47:06 -0700 (PDT)
MIME-Version: 1.0
References: <20221019084500.640620-1-foss+yocto@0leil.net>
In-Reply-To: <20221019084500.640620-1-foss+yocto@0leil.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Oct 2022 07:46:40 -0700
Message-ID: <CAMKF1spD=iXL7-okE4autFxsmu99hymQO_BGZ1JNWSiQ9Q6TbA@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] add support for PX30 SoC
To: Quentin Schulz <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org, twoerner@gmail.com, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	Quentin Schulz <foss+yocto@0leil.net>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Oct 2022 14:47:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58366

On Wed, Oct 19, 2022 at 1:45 AM Quentin Schulz <foss@0leil.net> wrote:
>
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> Rockchip PX30 SoC is a quad-core ARM Cortex-A35 CPU fully implementing
> the ARMv8-A instruction set with ARM Neon Advanced SIMD and Cryptography
> Extensions.
>
> This adds a base configuration file which can be included by PX30-based
> boards and the required changes in U-Boot and TF-A for proper support.
>

lgtm

> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>
> Note: this was developed and tested on kirkstone branch only
>
>  conf/machine/include/px30.inc                 | 21 +++++++++++++++++++
>  .../trusted-firmware-a_%.bbappend             |  5 +++++
>  recipes-bsp/u-boot/u-boot%.bbappend           |  2 ++
>  3 files changed, 28 insertions(+)
>  create mode 100644 conf/machine/include/px30.inc
>
> diff --git a/conf/machine/include/px30.inc b/conf/machine/include/px30.inc
> new file mode 100644
> index 0000000..a3727fb
> --- /dev/null
> +++ b/conf/machine/include/px30.inc
> @@ -0,0 +1,21 @@
> +# Copyright (C) 2022 Theobroma Systems Design und Consulting
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +SOC_FAMILY = "px30"
> +
> +DEFAULTTUNE ?= "cortexa35-crypto"
> +
> +require conf/machine/include/soc-family.inc
> +require conf/machine/include/arm/armv8a/tune-cortexa35.inc
> +require conf/machine/include/rockchip-defaults.inc
> +require conf/machine/include/rockchip-wic.inc
> +
> +KBUILD_DEFCONFIG ?= "defconfig"
> +KERNEL_CLASSES = "kernel-fitimage"
> +KERNEL_IMAGETYPE = "fitImage"
> +
> +TFA_PLATFORM = "px30"
> +TFA_BUILD_TARGET = "bl31"
> +
> +UBOOT_SUFFIX ?= "itb"
> +UBOOT_ENTRYPOINT ?= "0x06000000"
> diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> index 31024ce..814028b 100644
> --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> @@ -4,6 +4,7 @@ DEPENDS:append:rk3399 = " virtual/arm-none-eabi-gcc-native"
>
>  COMPATIBLE_MACHINE:append:rk3399 = "|rk3399"
>  COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
> +COMPATIBLE_MACHINE:append:px30 = "|px30"
>
>  FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>  SRC_URI += "\
> @@ -26,4 +27,8 @@ fixup_baudrate:rk3399() {
>         sed -i "s/#define RK3399_BAUDRATE\s\+.*/#define RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/rk3399/rk3399_def.h
>  }
>
> +fixup_baudrate:px30() {
> +       sed -i "s/#define PX30_BAUDRATE\s\+.*/#define PX30_BAUDRATE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/px30/px30_def.h
> +}
> +
>  do_patch[postfuncs] += "fixup_baudrate"
> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> index 9108a36..de1f2ca 100644
> --- a/recipes-bsp/u-boot/u-boot%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> @@ -11,6 +11,8 @@ EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
>  ATF_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
>  EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
>  ATF_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
> +EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
> +ATF_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
>
>  do_compile[depends] .= "${ATF_DEPENDS}"
>
> --
> 2.37.3
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58365): https://lists.yoctoproject.org/g/yocto/message/58365
> Mute This Topic: https://lists.yoctoproject.org/mt/94426665/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

