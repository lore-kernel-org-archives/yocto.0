Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D00FA373E
	for <webhook@archiver.kernel.org>; Tue, 25 Oct 2022 19:27:40 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web11.2343.1666726052186269449
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Oct 2022 12:27:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=3zJcSq5o;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.174, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f174.google.com with SMTP id z6so425483qtv.5
        for <yocto@lists.yoctoproject.org>; Tue, 25 Oct 2022 12:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Jtgfuwb97OKKN9FTz8E+jq5M7XhW1eD/x5RedL+j2S4=;
        b=3zJcSq5o/Ua0d4nl9rHpMk5MAK/+lXDECTZrNntFvPzLxImsSJO21b9H1x2HVcC+st
         4mOD+Yd9S8tHfa46Az4WY9IVymhDruX9bIdGjxff52YE3wXvdcD2qasieBmwMsxvhBjc
         0E7Af2yvk81hlMngwcqVVXXB+g4OcsCChu2nwxWZGSGE5/DmtAKEzPD9mfJCO2yOuqEo
         SNVZCQNlBa9mU+eZaCydQ6pbFxy9EEXscgluTl6qqbhE18vXrG+/cc7RmpvcXfoCM0RA
         hefvjEF1oERkYxuxsLyP9LQCB21uar48GaWk7JXXYykDHH74zjIsVaePnXNkzw0iOv58
         fMoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jtgfuwb97OKKN9FTz8E+jq5M7XhW1eD/x5RedL+j2S4=;
        b=WCZ6S7eR4VkTD678/N4tyDkzX0YXS2GlTrw1jLXOGT+GGPQg8oYS8Wz08MTGByen01
         ZAJABPWDt/EZhkVn7eekVfSjDshNwgmU9nLx2SSN3pVGb2Riuab36BhjsO5woIUuSEw0
         h+CN616DWaUyrgJZ9qeFFtSog8kYhLPaRdXUZp7n1wPMpMg/EtmlORqPsDfOt/SsF/T/
         y3HhVYqPl9oyK+E3UNW3U0uUKLolrZ3tbTH6vwPtroFayT03PCxF7JuRv6IKHjQonCew
         lcjlphppfxCcgxmlFRlxnYBcKyIFzIG+nibzd4jaofH+64WaKdpJPeBN49ciWgoPKzrF
         2VKQ==
X-Gm-Message-State: ACrzQf1u6vShwyiPeIS1zKaAThayiFDbx1iqqrOvKyk4rOC1SxBVADxy
	1SNFC8U/u4jpxW71y8Xdxi9QGg==
X-Google-Smtp-Source: AMsMyM4dS9+WuY8Pi0F8KeOD3qpWo/bxu0zQoHym6prtygos+Yabpmx5krj7oHjY7iK7b9zF1uVToQ==
X-Received: by 2002:a05:622a:1a9a:b0:39c:eb55:287d with SMTP id s26-20020a05622a1a9a00b0039ceb55287dmr33097040qtc.434.1666726050981;
        Tue, 25 Oct 2022 12:27:30 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600:5336:1ccc:fa87:21b2])
        by smtp.gmail.com with ESMTPSA id t15-20020a05620a450f00b006cddf59a600sm2614527qkp.34.2022.10.25.12.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 12:27:30 -0700 (PDT)
Date: Tue, 25 Oct 2022 15:27:28 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Naveen Saini <naveen.kumar.saini@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-zephyr][PATCH 1/2] zephyr-kernel-src: add support for
 v3.2.0
Message-ID: <Y1g4oGrptd5nludw@kudzu.us>
References: <20221025074831.285318-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221025074831.285318-1-naveen.kumar.saini@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Oct 2022 19:27:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58416

Testing (both of them together) shows some issues
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/676605867

When using the zephyr toolchain, there is an error of
2022-10-25 18:28:16 - INFO     - |   Could not find a configuration file for package "Zephyr-sdk" that is
2022-10-25 18:28:16 - INFO     - |   compatible with requested version "0.15".

zephyr-coap-server doesn't seem to want to compile for the machines it
currently works on, and a few other test regressions.

Thanks,
Jon


On Tue, Oct 25, 2022 at 03:48:30PM +0800, Naveen Saini wrote:
> https://github.com/zephyrproject-rtos/zephyr/releases/tag/v3.2.0
> 
> Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> ---
>  .../zephyr-kernel/zephyr-kernel-src-3.2.0.inc | 239 ++++++++++++++++++
>  .../zephyr-kernel/zephyr-kernel-src.inc       |   2 +-
>  2 files changed, 240 insertions(+), 1 deletion(-)
>  create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.2.0.inc
> 
> diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.2.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.2.0.inc
> new file mode 100644
> index 0000000..5d8ddfa
> --- /dev/null
> +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.2.0.inc
> @@ -0,0 +1,239 @@
> +# Auto-generated from zephyr-kernel-src.inc.jinja
> +
> +SRCREV_FORMAT = "default"
> +
> +SRCREV_default = "4b58ae97f30338dd343f110fef068b21b94b6555"
> +SRCREV_canopennode = "53d3415c14d60f8f4bfca54bfbc5d5a667d7e724"
> +SRCREV_chre = "ef76d3456db07e4959df555047d6962279528c8d"
> +SRCREV_cmsis = "093de61c2a7d12dc9253daf8692f61f793a9254a"
> +SRCREV_edtt = "1ea61a390d2bfcf3b2ecdba8f8b0b98dfdffbd11"
> +SRCREV_fatfs = "a30531af3a95a9a3ea7d771ea8a578ebfed45514"
> +SRCREV_fff = "6ce5ba26486e93d5b7696a3e23f0585932c14b16"
> +SRCREV_hal_altera = "0d225ddd314379b32355a00fb669eacf911e750d"
> +SRCREV_hal_atmel = "1d237f2e2f262751975b6da6e03af569b2b49b2b"
> +SRCREV_hal_espressif = "2cb20ac6c5b25f3c91b35e7997451db47030b7cb"
> +SRCREV_hal_gigadevice = "dd0e0322474462b58059e6fedaf1d67d2a0864d0"
> +SRCREV_hal_infineon = "4af06965f57ba1e7d170e6a97d24c33785543a8c"
> +SRCREV_hal_microchip = "5d079f1683a00b801373bbbbf5d181d4e33b30d5"
> +SRCREV_hal_nordic = "249199ec5a5c31d170659921048764e96d05cc0e"
> +SRCREV_hal_nuvoton = "b4d31f33238713a568e23618845702fadd67386f"
> +SRCREV_hal_nxp = "708c95825b0d5279620935a1356299fff5dfbc6e"
> +SRCREV_hal_openisa = "40d049f69c50b58ea20473bee14cf93f518bf262"
> +SRCREV_hal_quicklogic = "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
> +SRCREV_hal_renesas = "468d3f2146d18c7f86a4640fc641cc1d20a4a100"
> +SRCREV_hal_rpi_pico = "a094c060e0c2d43c7f9d8f5c06cc0665117e0c18"
> +SRCREV_hal_silabs = "1ec8dd99aa4ac3e8632d2aa28a7438049bb27102"
> +SRCREV_hal_st = "cccbc24c14decfd3f93959f7b14514536af973c7"
> +SRCREV_hal_stm32 = "642e199c59828137dc6b1c7044a289d4269886d1"
> +SRCREV_hal_telink = "38573af589173259801ae6c2b34b7d4c9e626746"
> +SRCREV_hal_ti = "000b944a788b6005d7776198e1348f5c8a657259"
> +SRCREV_hal_wurthelektronik = "24ca9873c3d608fad1fea0431836bc8f144c132e"
> +SRCREV_hal_xtensa = "63f655362423aa49507da7977a2d37142e8debeb"
> +SRCREV_libmetal = "2f586b4f1276fb075ee145421bdf6cbe5403aa41"
> +SRCREV_liblc3 = "448f3de31f49a838988a162ef1e23a89ddf2d2ed"
> +SRCREV_littlefs = "ca583fd297ceb48bced3c2548600dc615d67af24"
> +SRCREV_loramac-node = "ce57712f3e426bbbb13acaec97b45369f716f43a"
> +SRCREV_lvgl = "af95bdfcf6784edd958ea08139c713e2d3dee7af"
> +SRCREV_lz4 = "8e303c264fc21c2116dc612658003a22e933124d"
> +SRCREV_mbedtls = "7fed49c9b9f983ad6416986661ef637459723bcb"
> +SRCREV_mcuboot = "13f63976bca672ee018f9d55f1e31f02f4135b64"
> +SRCREV_mipi-sys-t = "0d521d8055f3b2b4842f728b0365d3f0ece9c37f"
> +SRCREV_nanopb = "dc4deed54fd4c7e1935e3b6387eedf21bb45dc38"
> +SRCREV_net-tools = "e0828aa9629b533644dc96ff6d1295c939bd713c"
> +SRCREV_nrf_hw_models = "65bc5305d432c08e24a3f343006d1e7deaff4908"
> +SRCREV_open-amp = "8d53544871e1f300c478224faca6be8384ab0d04"
> +SRCREV_openthread = "b21e99b4b3d823f71c902b9174ff62b964c124f0"
> +SRCREV_picolibc = "04ada5951cbaf8e7b17f8226ce31cb6837c28ba7"
> +SRCREV_segger = "d4e568a920b4bd087886170a5624c167b2d0665e"
> +SRCREV_sof = "fed466c264ad078c66f7bff9218ba1d3fa0eb201"
> +SRCREV_tflite-micro = "9156d050927012da87079064db59d07f03b8baf6"
> +SRCREV_tinycbor = "9e1f34bc08123aaad7666d3652aaa839e8178b3b"
> +SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
> +SRCREV_TraceRecorderSource = "9893bf1cf649a2c4ee2e27293f887994f3d0da5b"
> +SRCREV_trusted-firmware-m = "231235f26f5295ac4faf8c5617dbb9779869d821"
> +SRCREV_trusted-firmware-a = "d29cddecde614d81cbec1fb0086cdaebd77d3575"
> +SRCREV_tf-m-tests = "c99a86b295c4887520da9d8402566d7f225c974e"
> +SRCREV_psa-arch-tests = "f4fc2442b8e29e2a03d9899e46e5a3ea3df8c2c9"
> +SRCREV_uoscore-uedhoc = "e8920192b66db4f909eb9cd3f155d5245c1ae825"
> +SRCREV_zcbor = "a0d6981f14d4001d6f0d608d1a427f9bc6bb6d02"
> +SRCREV_zscilib = "ca070ddabdaf67175a2da901d0bd62e8899371c5"
> +
> +SRC_URI_ZEPHYR ?= "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https"
> +SRC_URI_CANOPENNODE ?= "git://github.com/zephyrproject-rtos/canopennode;protocol=https"
> +SRC_URI_CHRE ?= "git://github.com/zephyrproject-rtos/chre;protocol=https"
> +SRC_URI_CMSIS ?= "git://github.com/zephyrproject-rtos/cmsis;protocol=https"
> +SRC_URI_EDTT ?= "git://github.com/zephyrproject-rtos/edtt;protocol=https"
> +SRC_URI_FATFS ?= "git://github.com/zephyrproject-rtos/fatfs;protocol=https"
> +SRC_URI_FFF ?= "git://github.com/zephyrproject-rtos/fff;protocol=https"
> +SRC_URI_HAL_ALTERA ?= "git://github.com/zephyrproject-rtos/hal_altera;protocol=https"
> +SRC_URI_HAL_ATMEL ?= "git://github.com/zephyrproject-rtos/hal_atmel;protocol=https"
> +SRC_URI_HAL_ESPRESSIF ?= "git://github.com/zephyrproject-rtos/hal_espressif;protocol=https"
> +SRC_URI_HAL_GIGADEVICE ?= "git://github.com/zephyrproject-rtos/hal_gigadevice;protocol=https"
> +SRC_URI_HAL_INFINEON ?= "git://github.com/zephyrproject-rtos/hal_infineon;protocol=https"
> +SRC_URI_HAL_MICROCHIP ?= "git://github.com/zephyrproject-rtos/hal_microchip;protocol=https"
> +SRC_URI_HAL_NORDIC ?= "git://github.com/zephyrproject-rtos/hal_nordic;protocol=https"
> +SRC_URI_HAL_NUVOTON ?= "git://github.com/zephyrproject-rtos/hal_nuvoton;protocol=https"
> +SRC_URI_HAL_NXP ?= "git://github.com/zephyrproject-rtos/hal_nxp;protocol=https"
> +SRC_URI_HAL_OPENISA ?= "git://github.com/zephyrproject-rtos/hal_openisa;protocol=https"
> +SRC_URI_HAL_QUICKLOGIC ?= "git://github.com/zephyrproject-rtos/hal_quicklogic;protocol=https"
> +SRC_URI_HAL_RENESAS ?= "git://github.com/zephyrproject-rtos/hal_renesas;protocol=https"
> +SRC_URI_HAL_RPI_PICO ?= "git://github.com/zephyrproject-rtos/hal_rpi_pico;protocol=https"
> +SRC_URI_HAL_SILABS ?= "git://github.com/zephyrproject-rtos/hal_silabs;protocol=https"
> +SRC_URI_HAL_ST ?= "git://github.com/zephyrproject-rtos/hal_st;protocol=https"
> +SRC_URI_HAL_STM32 ?= "git://github.com/zephyrproject-rtos/hal_stm32;protocol=https"
> +SRC_URI_HAL_TELINK ?= "git://github.com/zephyrproject-rtos/hal_telink;protocol=https"
> +SRC_URI_HAL_TI ?= "git://github.com/zephyrproject-rtos/hal_ti;protocol=https"
> +SRC_URI_HAL_WURTHELEKTRONIK ?= "git://github.com/zephyrproject-rtos/hal_wurthelektronik;protocol=https"
> +SRC_URI_HAL_XTENSA ?= "git://github.com/zephyrproject-rtos/hal_xtensa;protocol=https"
> +SRC_URI_LIBMETAL ?= "git://github.com/zephyrproject-rtos/libmetal;protocol=https"
> +SRC_URI_LIBLC3 ?= "git://github.com/zephyrproject-rtos/liblc3;protocol=https"
> +SRC_URI_LITTLEFS ?= "git://github.com/zephyrproject-rtos/littlefs;protocol=https"
> +SRC_URI_LORAMAC_NODE ?= "git://github.com/zephyrproject-rtos/loramac-node;protocol=https"
> +SRC_URI_LVGL ?= "git://github.com/zephyrproject-rtos/lvgl;protocol=https"
> +SRC_URI_LZ4 ?= "git://github.com/zephyrproject-rtos/lz4;protocol=https"
> +SRC_URI_MBEDTLS ?= "git://github.com/zephyrproject-rtos/mbedtls;protocol=https"
> +SRC_URI_MCUBOOT ?= "git://github.com/zephyrproject-rtos/mcuboot;protocol=https"
> +SRC_URI_MIPI_SYS_T ?= "git://github.com/zephyrproject-rtos/mipi-sys-t;protocol=https"
> +SRC_URI_NANOPB ?= "git://github.com/zephyrproject-rtos/nanopb;protocol=https"
> +SRC_URI_NET_TOOLS ?= "git://github.com/zephyrproject-rtos/net-tools;protocol=https"
> +SRC_URI_NRF_HW_MODELS ?= "git://github.com/zephyrproject-rtos/nrf_hw_models;protocol=https"
> +SRC_URI_OPEN_AMP ?= "git://github.com/zephyrproject-rtos/open-amp;protocol=https"
> +SRC_URI_OPENTHREAD ?= "git://github.com/zephyrproject-rtos/openthread;protocol=https"
> +SRC_URI_PICOLIBC ?= "git://github.com/zephyrproject-rtos/picolibc;protocol=https"
> +SRC_URI_SEGGER ?= "git://github.com/zephyrproject-rtos/segger;protocol=https"
> +SRC_URI_SOF ?= "git://github.com/zephyrproject-rtos/sof;protocol=https"
> +SRC_URI_TFLITE_MICRO ?= "git://github.com/zephyrproject-rtos/tflite-micro;protocol=https"
> +SRC_URI_TINYCBOR ?= "git://github.com/zephyrproject-rtos/tinycbor;protocol=https"
> +SRC_URI_TINYCRYPT ?= "git://github.com/zephyrproject-rtos/tinycrypt;protocol=https"
> +SRC_URI_TRACERECORDERSOURCE ?= "git://github.com/zephyrproject-rtos/TraceRecorderSource;protocol=https"
> +SRC_URI_TRUSTED_FIRMWARE_M ?= "git://github.com/zephyrproject-rtos/trusted-firmware-m;protocol=https"
> +SRC_URI_TRUSTED_FIRMWARE_A ?= "git://github.com/zephyrproject-rtos/trusted-firmware-a;protocol=https"
> +SRC_URI_TF_M_TESTS ?= "git://github.com/zephyrproject-rtos/tf-m-tests;protocol=https"
> +SRC_URI_PSA_ARCH_TESTS ?= "git://github.com/zephyrproject-rtos/psa-arch-tests;protocol=https"
> +SRC_URI_UOSCORE_UEDHOC ?= "git://github.com/zephyrproject-rtos/uoscore-uedhoc;protocol=https"
> +SRC_URI_ZCBOR ?= "git://github.com/zephyrproject-rtos/zcbor;protocol=https"
> +SRC_URI_ZSCILIB ?= "git://github.com/zephyrproject-rtos/zscilib;protocol=https"
> +
> +SRC_URI_PATCHES ?= "\
> +    file://0001-3.1-cmake-add-yocto-toolchain.patch;patchdir=zephyr \
> +    file://0001-3.1-x86-fix-efi-binary-generation-issue-in-cross-compila.patch;patchdir=zephyr \
> +"
> +
> +SRC_URI = "\
> +    ${SRC_URI_ZEPHYR};branch=${ZEPHYR_BRANCH};name=default;destsuffix=git/zephyr \
> +    ${SRC_URI_CANOPENNODE};name=canopennode;nobranch=1;destsuffix=git/modules/lib/canopennode \
> +    ${SRC_URI_CHRE};name=chre;nobranch=1;destsuffix=git/modules/lib/chre \
> +    ${SRC_URI_CMSIS};name=cmsis;nobranch=1;destsuffix=git/modules/hal/cmsis \
> +    ${SRC_URI_EDTT};name=edtt;nobranch=1;destsuffix=git/tools/edtt \
> +    ${SRC_URI_FATFS};name=fatfs;nobranch=1;destsuffix=git/modules/fs/fatfs \
> +    ${SRC_URI_FFF};name=fff;nobranch=1;destsuffix=git/modules/lib/fff \
> +    ${SRC_URI_HAL_ALTERA};name=hal_altera;nobranch=1;destsuffix=git/modules/hal/altera \
> +    ${SRC_URI_HAL_ATMEL};name=hal_atmel;nobranch=1;destsuffix=git/modules/hal/atmel \
> +    ${SRC_URI_HAL_ESPRESSIF};name=hal_espressif;nobranch=1;destsuffix=git/modules/hal/espressif \
> +    ${SRC_URI_HAL_GIGADEVICE};name=hal_gigadevice;nobranch=1;destsuffix=git/modules/hal/gigadevice \
> +    ${SRC_URI_HAL_INFINEON};name=hal_infineon;nobranch=1;destsuffix=git/modules/hal/infineon \
> +    ${SRC_URI_HAL_MICROCHIP};name=hal_microchip;nobranch=1;destsuffix=git/modules/hal/microchip \
> +    ${SRC_URI_HAL_NORDIC};name=hal_nordic;nobranch=1;destsuffix=git/modules/hal/nordic \
> +    ${SRC_URI_HAL_NUVOTON};name=hal_nuvoton;nobranch=1;destsuffix=git/modules/hal/nuvoton \
> +    ${SRC_URI_HAL_NXP};name=hal_nxp;nobranch=1;destsuffix=git/modules/hal/nxp \
> +    ${SRC_URI_HAL_OPENISA};name=hal_openisa;nobranch=1;destsuffix=git/modules/hal/openisa \
> +    ${SRC_URI_HAL_QUICKLOGIC};name=hal_quicklogic;nobranch=1;destsuffix=git/modules/hal/quicklogic \
> +    ${SRC_URI_HAL_RENESAS};name=hal_renesas;nobranch=1;destsuffix=git/modules/hal/renesas \
> +    ${SRC_URI_HAL_RPI_PICO};name=hal_rpi_pico;nobranch=1;destsuffix=git/modules/hal/rpi_pico \
> +    ${SRC_URI_HAL_SILABS};name=hal_silabs;nobranch=1;destsuffix=git/modules/hal/silabs \
> +    ${SRC_URI_HAL_ST};name=hal_st;nobranch=1;destsuffix=git/modules/hal/st \
> +    ${SRC_URI_HAL_STM32};name=hal_stm32;nobranch=1;destsuffix=git/modules/hal/stm32 \
> +    ${SRC_URI_HAL_TELINK};name=hal_telink;nobranch=1;destsuffix=git/modules/hal/telink \
> +    ${SRC_URI_HAL_TI};name=hal_ti;nobranch=1;destsuffix=git/modules/hal/ti \
> +    ${SRC_URI_HAL_WURTHELEKTRONIK};name=hal_wurthelektronik;nobranch=1;destsuffix=git/modules/hal/wurthelektronik \
> +    ${SRC_URI_HAL_XTENSA};name=hal_xtensa;nobranch=1;destsuffix=git/modules/hal/xtensa \
> +    ${SRC_URI_LIBMETAL};name=libmetal;nobranch=1;destsuffix=git/modules/hal/libmetal \
> +    ${SRC_URI_LIBLC3};name=liblc3;nobranch=1;destsuffix=git/modules/lib/liblc3 \
> +    ${SRC_URI_LITTLEFS};name=littlefs;nobranch=1;destsuffix=git/modules/fs/littlefs \
> +    ${SRC_URI_LORAMAC_NODE};name=loramac-node;nobranch=1;destsuffix=git/modules/lib/loramac-node \
> +    ${SRC_URI_LVGL};name=lvgl;nobranch=1;destsuffix=git/modules/lib/gui/lvgl \
> +    ${SRC_URI_LZ4};name=lz4;nobranch=1;destsuffix=git/modules/lib/lz4 \
> +    ${SRC_URI_MBEDTLS};name=mbedtls;nobranch=1;destsuffix=git/modules/crypto/mbedtls \
> +    ${SRC_URI_MCUBOOT};name=mcuboot;nobranch=1;destsuffix=git/bootloader/mcuboot \
> +    ${SRC_URI_MIPI_SYS_T};name=mipi-sys-t;nobranch=1;destsuffix=git/modules/debug/mipi-sys-t \
> +    ${SRC_URI_NANOPB};name=nanopb;nobranch=1;destsuffix=git/modules/lib/nanopb \
> +    ${SRC_URI_NET_TOOLS};name=net-tools;nobranch=1;destsuffix=git/tools/net-tools \
> +    ${SRC_URI_NRF_HW_MODELS};name=nrf_hw_models;nobranch=1;destsuffix=git/modules/bsim_hw_models/nrf_hw_models \
> +    ${SRC_URI_OPEN_AMP};name=open-amp;nobranch=1;destsuffix=git/modules/lib/open-amp \
> +    ${SRC_URI_OPENTHREAD};name=openthread;nobranch=1;destsuffix=git/modules/lib/openthread \
> +    ${SRC_URI_PICOLIBC};name=picolibc;nobranch=1;destsuffix=git/modules/lib/picolibc \
> +    ${SRC_URI_SEGGER};name=segger;nobranch=1;destsuffix=git/modules/debug/segger \
> +    ${SRC_URI_SOF};name=sof;nobranch=1;destsuffix=git/modules/audio/sof \
> +    ${SRC_URI_TFLITE_MICRO};name=tflite-micro;nobranch=1;destsuffix=git/modules/lib/tflite-micro \
> +    ${SRC_URI_TINYCBOR};name=tinycbor;nobranch=1;destsuffix=git/modules/lib/tinycbor \
> +    ${SRC_URI_TINYCRYPT};name=tinycrypt;nobranch=1;destsuffix=git/modules/crypto/tinycrypt \
> +    ${SRC_URI_TRACERECORDERSOURCE};name=TraceRecorderSource;nobranch=1;destsuffix=git/modules/debug/TraceRecorder \
> +    ${SRC_URI_TRUSTED_FIRMWARE_M};name=trusted-firmware-m;nobranch=1;destsuffix=git/modules/tee/tf-m/trusted-firmware-m \
> +    ${SRC_URI_TRUSTED_FIRMWARE_A};name=trusted-firmware-a;nobranch=1;destsuffix=git/modules/tee/tf-a/trusted-firmware-a \
> +    ${SRC_URI_TF_M_TESTS};name=tf-m-tests;nobranch=1;destsuffix=git/modules/tee/tf-m/tf-m-tests \
> +    ${SRC_URI_PSA_ARCH_TESTS};name=psa-arch-tests;nobranch=1;destsuffix=git/modules/tee/tf-m/psa-arch-tests \
> +    ${SRC_URI_UOSCORE_UEDHOC};name=uoscore-uedhoc;nobranch=1;destsuffix=git/modules/lib/uoscore-uedhoc \
> +    ${SRC_URI_ZCBOR};name=zcbor;nobranch=1;destsuffix=git/modules/lib/zcbor \
> +    ${SRC_URI_ZSCILIB};name=zscilib;nobranch=1;destsuffix=git/modules/lib/zscilib \
> +    ${SRC_URI_PATCHES} \
> +"
> +
> +ZEPHYR_MODULES = "\
> +${S}/modules/lib/canopennode\;\
> +${S}/modules/lib/chre\;\
> +${S}/modules/hal/cmsis\;\
> +${S}/tools/edtt\;\
> +${S}/modules/fs/fatfs\;\
> +${S}/modules/lib/fff\;\
> +${S}/modules/hal/altera\;\
> +${S}/modules/hal/atmel\;\
> +${S}/modules/hal/espressif\;\
> +${S}/modules/hal/gigadevice\;\
> +${S}/modules/hal/infineon\;\
> +${S}/modules/hal/microchip\;\
> +${S}/modules/hal/nordic\;\
> +${S}/modules/hal/nuvoton\;\
> +${S}/modules/hal/nxp\;\
> +${S}/modules/hal/openisa\;\
> +${S}/modules/hal/quicklogic\;\
> +${S}/modules/hal/renesas\;\
> +${S}/modules/hal/rpi_pico\;\
> +${S}/modules/hal/silabs\;\
> +${S}/modules/hal/st\;\
> +${S}/modules/hal/stm32\;\
> +${S}/modules/hal/telink\;\
> +${S}/modules/hal/ti\;\
> +${S}/modules/hal/wurthelektronik\;\
> +${S}/modules/hal/xtensa\;\
> +${S}/modules/hal/libmetal\;\
> +${S}/modules/lib/liblc3\;\
> +${S}/modules/fs/littlefs\;\
> +${S}/modules/lib/loramac-node\;\
> +${S}/modules/lib/gui/lvgl\;\
> +${S}/modules/lib/lz4\;\
> +${S}/modules/crypto/mbedtls\;\
> +${S}/bootloader/mcuboot\;\
> +${S}/modules/debug/mipi-sys-t\;\
> +${S}/modules/lib/nanopb\;\
> +${S}/tools/net-tools\;\
> +${S}/modules/bsim_hw_models/nrf_hw_models\;\
> +${S}/modules/lib/open-amp\;\
> +${S}/modules/lib/openthread\;\
> +${S}/modules/lib/picolibc\;\
> +${S}/modules/debug/segger\;\
> +${S}/modules/audio/sof\;\
> +${S}/modules/lib/tflite-micro\;\
> +${S}/modules/lib/tinycbor\;\
> +${S}/modules/crypto/tinycrypt\;\
> +${S}/modules/debug/TraceRecorder\;\
> +${S}/modules/tee/tf-m/trusted-firmware-m\;\
> +${S}/modules/tee/tf-a/trusted-firmware-a\;\
> +${S}/modules/tee/tf-m/tf-m-tests\;\
> +${S}/modules/tee/tf-m/psa-arch-tests\;\
> +${S}/modules/lib/uoscore-uedhoc\;\
> +${S}/modules/lib/zcbor\;\
> +${S}/modules/lib/zscilib\;\
> +"
> +
> +ZEPHYR_BRANCH = "v3.2-branch"
> +PV = "3.2.0+git${SRCPV}"
> diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> index f28d1d4..aa299e0 100644
> --- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> @@ -12,5 +12,5 @@ FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>  S = "${WORKDIR}/git"
>  
>  # Default to a stable version
> -PREFERRED_VERSION_zephyr-kernel ??= "3.1.0"
> +PREFERRED_VERSION_zephyr-kernel ??= "3.2.0"
>  include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
> -- 
> 2.25.1
> 
> 

