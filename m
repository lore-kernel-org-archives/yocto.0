Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web12.2248.1600450576221706556
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Sep 2020 10:36:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rVy53HS3;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id d13so3880723pgl.6
        for <yocto@lists.yoctoproject.org>; Fri, 18 Sep 2020 10:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=NS4C7oLkqWiIf+8mZO7gDW0zyOsUavl78FW2Z4xS9Ps=;
        b=rVy53HS3w5DlVLovYO3cFvpwnWikvzQQmnvd2fL/4Mjxs2Z3W5c03YpV8uEBG3sRdX
         DVydXiLbTVJS0eHJLsAitM52B2a8jjqAHMdyAhc5W5scTErTEgeGXLDBAAU6QhF/qZR0
         r8HrWb78OJio17EYNnouBvTgiZrF5gKKcTDK0pVal/B6kGV9L4ike32LXMl0zOcA4P6g
         BTXeoMQR3QqqtI2UkNoqMdMbQk6WGUzP928ALV+35uP/wb6BMK5Ya8147FBs+gKCxwO3
         SceZUEcyKzh4bKunkyIIBF3y9HASgpctuIUJKdb07ND34eHfKCnDmcB8gu/rPjIiJSgo
         O/HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NS4C7oLkqWiIf+8mZO7gDW0zyOsUavl78FW2Z4xS9Ps=;
        b=joDSjhZN5Mia4dcQtl+2vFy4ddVw1kydBAxmgh4sX4pSjifzLwjC677nrnnOWIMO0t
         c7sVkpCenhKFiszufqRvJt5WqPYsQayuCz9lI94F9E9vb18dqsxKx4jQxTvCUZhWsao3
         LHhuV4GEKu2MGZQp2FE+kP1Hf+FimugI2uPv+rRXYAF9mDLBQZvykWRdC09H4T7zUm7e
         U2hEnigHIRkDGG0YWNNQ6sf9l8T0NgM5tRJPiWf8wjsHQHSAvRjnWqbyhMTJb3VfF5eR
         Ytfetiur0qRV0xE3lOlVIt2JPbGPn3M5zj/K1DfgLooSBIIJEjJAToCGlmoSka60nwaA
         0n7A==
X-Gm-Message-State: AOAM5308XYtCmfcYWNhsECXhEojvLNpNLR1RTYrbUZOimv7ZSzrJzaBJ
	Gfgp8dbyObZxC46vyRHzl2SflQ3rRx5zWg==
X-Google-Smtp-Source: ABdhPJzo1uDGEvcz85TMryMe8ZfrR2Lde14jSyr28i1Qpjil/XCo6OO3kSv+l/0BuqvSYTAta8QGIQ==
X-Received: by 2002:a63:e645:: with SMTP id p5mr27198393pgj.276.1600450575154;
        Fri, 18 Sep 2020 10:36:15 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::d92c? ([2601:646:9200:4e0::d92c])
        by smtp.gmail.com with ESMTPSA id z1sm4017744pfq.102.2020.09.18.10.36.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 10:36:14 -0700 (PDT)
Subject: Re: [yocto] [meta-zephyr][PATCH] zephyr-kernel: add Zephyr RTOS version 2.3.0 support
To: yock.gen.mah@intel.com, yocto@lists.yoctoproject.org
References: <1600404182-52638-1-git-send-email-yock.gen.mah@intel.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <fdd8bd70-3015-df20-f6f7-7febb875d9a5@gmail.com>
Date: Fri, 18 Sep 2020 10:36:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <1600404182-52638-1-git-send-email-yock.gen.mah@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 9/17/20 9:43 PM, yock.gen.mah@intel.com wrote:
> From: yockgenm <yock.gen.mah@intel.com>
> 
> Signed-off-by: yockgenm <yock.gen.mah@intel.com>
> ---
>   classes/zephyr-kernel-src.bbclass                  | 12 ++++----
>   .../{qemu_4.2.%.bbappend => qemu_5.1.%.bbappend}   |  0
>   .../zephyr-kernel/zephyr-kernel-common.inc         |  1 +
>   .../zephyr-kernel/zephyr-kernel-src_2.2.bb         | 33 ----------------------
>   .../zephyr-kernel/zephyr-kernel-src_2.3.bb         | 24 ++++++++++++++++
>   .../zephyr-kernel/zephyr-kernel-test.inc           |  7 ++---
>   6 files changed, 35 insertions(+), 42 deletions(-)
>   rename recipes-devtools/qemu/{qemu_4.2.%.bbappend => qemu_5.1.%.bbappend} (100%)
>   delete mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.2.bb
>   create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.3.bb
> 
> diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
> index 653cb9b..d202293 100644
> --- a/classes/zephyr-kernel-src.bbclass
> +++ b/classes/zephyr-kernel-src.bbclass
> @@ -1,13 +1,15 @@
>   #Set relevant variables based on Zephyr kernel version
>   
> -PREFERRED_VERSION_zephyr-kernel ??= "2.2.0"
> +PREFERRED_VERSION_zephyr-kernel ??= "2.3.0"
>   
> -SRCREV = "d39cb42d0920d5658fad358ad5b91de75d747a20"
> +SRCREV = "b8c78e254ff875680e99c9f131fbe285c4575927"
> +SRCREV_cmsis = "542b2296e6d515b265e25c6b7208e8fea3014f90"

Perhaps you also should be defining

SRECREV_FORMAT = "default_cmsis"

as well now that you have multiple SRC_URIs

>   
> -SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.2-branch \
> +SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.3-branch \
> +           git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
>             file://0001-cmake-add-yocto-toolchain.patch \
>           "
> -PV = "2.2.0"
> +PV = "2.3.0"
>   LICENSE = "Apache-2.0"
>   LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
>   
> @@ -15,7 +17,7 @@ ZEPHYR_TEST_SRCDIR = "tests/legacy/kernel/"
>   
>   python () {
>       src_pn = d.getVar('PREFERRED_VERSION_zephyr-kernel', True)
> -    if src_pn == '2.2.0':
> +    if src_pn == '2.3.0':
>           return
>       else:
>           bb.error("Unsupported Zephyr kernel version requested")
> diff --git a/recipes-devtools/qemu/qemu_4.2.%.bbappend b/recipes-devtools/qemu/qemu_5.1.%.bbappend
> similarity index 100%
> rename from recipes-devtools/qemu/qemu_4.2.%.bbappend
> rename to recipes-devtools/qemu/qemu_5.1.%.bbappend
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> index d7147d5..aaf71a8 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> @@ -14,6 +14,7 @@ ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
>   
>   
>   EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto"
> +EXTRA_OECMAKE_append_arm = " -DZEPHYR_MODULES=${S}/modules/cmsis"
>   export ZEPHYR_BASE="${S}"
>   
>   
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.2.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.2.bb
> deleted file mode 100644
> index a3e1c28..0000000
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.2.bb
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -
> -LICENSE = "Apache-2.0"
> -LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
> -
> -# tag v2.2
> -SRCREV="d39cb42d0920d5658fad358ad5b91de75d747a20"
> -SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.2-branch \
> -          file://0001-cmake-add-yocto-toolchain.patch \
> -        "
> -inherit cmake
> -PV = "2.2.0"
> -S = "${WORKDIR}/git"
> -
> -IMAGE_NO_MANIFEST = "1"
> -INHIBIT_DEFAULT_DEPS = "1"
> -
> -do_configure[noexec] = "1"
> -do_compile[noexec] = "1"
> -
> -do_compile () {
> -}
> -
> -do_install () {
> -    kerneldir=${D}/usr/src/zephyr
> -    install -d $kerneldir
> -    cp -r ${S}/* $kerneldir
> -}
> -
> -PACKAGES = "${PN}"
> -FILES_${PN} = "/usr/src/zephyr"
> -
> -SYSROOT_DIRS += "/usr/src/zephyr"
> -
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.3.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.3.bb
> new file mode 100644
> index 0000000..8e8b5b8
> --- /dev/null
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.3.bb
> @@ -0,0 +1,24 @@
> +
> +inherit zephyr-kernel-src
> +inherit cmake
> +
> +S = "${WORKDIR}/git"
> +
> +IMAGE_NO_MANIFEST = "1"
> +INHIBIT_DEFAULT_DEPS = "1"
> +
> +do_configure[noexec] = "1"
> +do_compile[noexec] = "1"
> +
> +
> +do_install () {
> +    kerneldir=${D}/usr/src/zephyr
> +    install -d $kerneldir
> +    cp -r ${S}/* $kerneldir
> +}
> +
> +PACKAGES = "${PN}"
> +FILES_${PN} = "/usr/src/zephyr"
> +
> +SYSROOT_DIRS += "/usr/src/zephyr"
> +
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
> index 65da7e8..7ab9bd4 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
> @@ -1,4 +1,4 @@
> -ZEPHYRTESTS_remove = "fifo fp_sharing lifo mbox mem_heap mem_pool \
> +ZEPHYRTESTS_remove = "fifo fpu_sharing lifo mbox mem_heap mem_pool \
>       mem_protect mem_slab msgq mutex pipe profiling sched semaphore \
>       stack threads tickless timer workq"
>   
> @@ -22,13 +22,12 @@ ZEPHYRTESTS_remove = "gen_isr_table spinlock smp mp"
>   # List of all available kernel tests
>   ZEPHYRTESTS = " \
>       common \
> -    context \
> -    critical \
> +    context \
>       device \
>       early_sleep \
>       fatal \
>       fifo \
> -    fp_sharing \
> +    fpu_sharing \
>       gen_isr_table \
>       interrupt \
>       lifo \
> 
> 
> 
> 
> 
