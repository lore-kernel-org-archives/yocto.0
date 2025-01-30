Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AE00C0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 16:51:51 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.20157.1738255908466599551
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 08:51:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DBs7sPye;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43618283d48so8333195e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 08:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738255907; x=1738860707; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=D0wek90sZdcfUvCRO8qmlJQF2ZBQDnS7n6ywDSNhcFA=;
        b=DBs7sPyemvv74FQWwsjR+03kKK/wRR07UQOhLA7hVoJXDTiOZucK4DbLFp4o2D3qnt
         blAqsk9zTPuhm7eDW/s+y7HGoMBLj9sKsVeDcE7WDhHFsKtD9VjgI1sVC4PlFTrQHH7c
         2y9sbFyKgm8ty+Nr42peE5wZP62LV4pCrCioevZwOLcFFfRwOP0PSO0jNjuE1A9OdZq8
         62u6reePmCC9JLmvlIilY1jFG9Ul+ZTbH+c/B06OGbK3JisCMNSDzWNkN3D7FH1gpFaK
         AZ1KQTp289a0O5WTmp382uKsLvO6a+rWvdMQSAFjAYp0AemljVqGc4Ed+opFu3qhUxdy
         KzUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738255907; x=1738860707;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D0wek90sZdcfUvCRO8qmlJQF2ZBQDnS7n6ywDSNhcFA=;
        b=PaOhVrh1JGbrT1JRFBdJ/bN10Jhx5Snd0LMywwJTLUPzFeDsQ4YU/2qaYmK0QXJUr2
         mDvar1A7YBEq2/JB+Hupd9n1DwQGrofeGLhePUXXDPqKyL7LlahnA16xxu9JEGBP5HGb
         1gOUtcSsrhpD9uYCUn144xwgq+FQov+sbdZEdvivpMKN1OXX1G4uohbBID1quXjS05Vo
         8rmmyTFA+MQdJNpfPjRJcYaKH/rblbkoK8zcqggU5XZqLtRMLMa2DAq6OlyQ++pQgt1x
         xUhUB7zD7B8ANNc7UI8c/25I3jEWCfpXCUZCZ8di7d5dM7bv+2Yw92Tyri4OubptM6nQ
         1Sfg==
X-Forwarded-Encrypted: i=1; AJvYcCVAzjOlt8ZcZhFi0fHFIs2+97TRtc+sT0ImkyHYEuHjDAi3fslSVzUE9O7wl7DffwyANDPC6g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyVnCFndTvJVMu0hvP03vaAplGGgLFHJtiAZp5EyQ3Yu7Tw2SCZ
	GPNAp/9pIsf1cCY3ghwPynmXKVHX4GO62DiJlXhmDdMeaPvpjX0F
X-Gm-Gg: ASbGncucpiQyCFY+0o8qkMosozigmhjMNgAZc1MUk1gT1ODBDu2z5rfZ+bxhGCNyHz6
	sdtBQJej/wm07biKTSQO1taYh10Br8O9rp52fwI1YVsL5XJ/NIrucsMnEY1yFRPheSH24R4E7v7
	sg6p1clPvSTGBQbE3SeQAlc2n6nLuLBSnyFmjxR5awG/S/dRIQti2q3Z2LMrLqbnE7f9AB9Rfvw
	qCorwMK6NVGp25qOPRvAq4Lnufr8np94fyUyat3ZF5Zs7cn0XdeZ14AiRPa+grws3lf5mg46/F2
	rFtoXMhs6atfePA6vQV3fNI=
X-Google-Smtp-Source: AGHT+IHwbS6fYlv0mqLawtSbOBzAC/PnUnW/3fMwNvOdgVcFKYyU52ZNHXbe2O0KGfdypZkQWrc30A==
X-Received: by 2002:a05:600c:3508:b0:435:194:3cdf with SMTP id 5b1f17b1804b1-438dc40c43emr66188765e9.19.1738255906449;
        Thu, 30 Jan 2025 08:51:46 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc2ef08sm65283765e9.22.2025.01.30.08.51.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2025 08:51:45 -0800 (PST)
Message-ID: <3173826e-18ba-4b1e-9db3-0e0cd4d3f027@gmail.com>
Date: Thu, 30 Jan 2025 17:51:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [scarthgap] circular dependency issue #kernel #rpi
 #scarthgap #yocto
To: ganesh.manoj.mahajan@signify.com, yocto@lists.yoctoproject.org
References: <83aaf6d3-0944-4b45-bca1-dbde9fd6d77e@gmail.com>
 <2322.1738246691679375549@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <2322.1738246691679375549@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 16:51:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64678

Take even one more step back.

Try to have only openembedded-core (poky), meta-openembedded layers and 
meta-raspberrypi at the HEAD of Scarthgap branches, clean, without any 
modifications.
I assume that you are compiling for an Rpi, or some other hw that has 
been derived from an RPi. If you are targeting a standard Rpi, then set 
that as your MACHINE, otherwise use one standard Rpi target that 
resembles the closest to your actual machine. Just try building the 
kernel directly, like you did in your last email.

If it fails, than the problem comes from even deeper (but that could be 
reported to meta-rpi maintainer). But I would expect this step to succeed.

If it succeeds, then start extending:
- If you are targeting a custom machine, than copy your machine config 
into this test project, and try to build the kernel, targeting that 
machine. If it fails, try bisecting your machine-config, by line.
- If it succeeds, add the other layers that are not created by you, if 
there are any, one-by-one, and try again. If it fails, look into that 
layer, keep removing changes introduced by it until the problematic one 
shows up.
- If it succeeds, then start adding your own custom layer(s), recipe by 
recipe (or by whatever unit is practical). First the global changes: 
local.conf, distro.conf... then BSP level recipes, then the rest.

Assuming that it doesn't fail at the very beginning, I would expect the 
culprit to show up somewhere along the process. Otherwise I'm running 
out of blind debug methods...

On 30.01.25 15:18, Ganesh Mahajan via Lists.Yoctoproject.Org wrote:
> Hi Gyorgy,
>
> I removed all modifications from local.conf and also deleted all 
> .bbappend files still facing same issue. ERROR: Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_package 
> has circular dependency on 
> {'virtual:native:/home/build/project/meta/recipes-devtools/rpm/rpm_4.19.1.1.bb:do_populate_sysroot', 
> '/home/build/project/meta/recipes-devtools/gcc/libgcc_13.3.bb:do_packagedata', 
> 'virtual:native:/home/build/project/meta/recipes-devtools/dwarfsrcfiles/dwarfsrcfiles.bb:do_populate_sysroot', 
> '/home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_packagedata', 
> 'virtual:native:/home/build/project/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', 
> '/home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install'} 
> ERROR: Command execution failed: 1 I have added few logline so got to 
> know that it is throwing error at do_populate_sysroot task. So tried 
> to build only recipe*do_populate_sysroot linux-raspberrypi *got below 
> error
> ERROR:
> Dependency loop #1 found:
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_assemble_fitimage 
> (dependent Tasks ['u-boot_2021.10.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 
> 'linux-raspberrypi_6.6.bb:do_sizecheck', 
> 'linux-raspberrypi_6.6.bb:do_transform_kernel', 
> 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_install'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['elfutils_0.191.bb:do_populate_sysroot', 
> 'u-boot-tools_2021.10.bb:do_populate_sysroot', 
> 'bison_3.8.2.bb:do_populate_sysroot', 
> 'kmod_31.bb:do_populate_sysroot', 
> 'libmpc_1.3.1.bb:do_populate_sysroot', 
> 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge.bb:do_populate_sysroot', 
> 'bc_1.07.1.bb:do_populate_sysroot', 
> 'openssl_3.2.3.bb:do_populate_sysroot', 
> 'xz_5.4.6.bb:do_populate_sysroot', 
> 'pkgconfig_git.bb:do_populate_sysroot', 
> 'gcc-cross_13.3.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_populate_sysroot', 
> 'libgcc_13.3.bb:do_populate_sysroot', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'gmp_6.3.0.bb:do_populate_sysroot', 
> 'binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_fetch', 
> 'util-linux_2.39.3.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_configure 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_patch', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configme', 
> 'linux-raspberrypi_6.6.bb:do_symlink_kernsrc', 
> 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_kernel_configcheck 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_configure'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configcheck', 
> 'linux-raspberrypi_6.6.bb:do_configure'])
> Dependency loop #2 found:
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_compile 
> (dependent Tasks ['u-boot_2021.10.bb:do_configure'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_uboot_generate_rsa_keys 
> (dependent Tasks ['u-boot_2021.10.bb:do_compile'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_uboot_assemble_fitimage 
> (dependent Tasks ['u-boot_2021.10.bb:do_compile', 
> 'u-boot_2021.10.bb:do_uboot_generate_rsa_keys'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_install 
> (dependent Tasks ['u-boot_2021.10.bb:do_compile', 
> 'u-boot_2021.10.bb:do_uboot_assemble_fitimage', 
> 'u-boot_2021.10.bb:do_create_extlinux_config', 
> 'pseudo_git.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'u-boot_2021.10.bb:do_install'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_assemble_fitimage 
> (dependent Tasks ['u-boot_2021.10.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 
> 'linux-raspberrypi_6.6.bb:do_sizecheck', 
> 'linux-raspberrypi_6.6.bb:do_transform_kernel', 
> 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_install'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['u-boot-tools_2021.10.bb:do_populate_sysroot', 
> 'bison_3.8.2.bb:do_populate_sysroot', 
> 'dtc_1.7.0.bb:do_populate_sysroot', 
> 'python3_3.12.6.bb:do_populate_sysroot', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'glibc_2.39.bb:do_populate_sysroot', 
> 'gcc-cross_13.3.bb:do_populate_sysroot', 
> 'os-release.bb:do_populate_sysroot', 
> 'python3-setuptools_69.1.1.bb:do_populate_sysroot', 
> 'gcc-runtime_13.3.bb:do_populate_sysroot', 
> 'bc_1.07.1.bb:do_populate_sysroot', 
> 'swig_4.2.1.bb:do_populate_sysroot', 
> 'flex_2.6.4.bb:do_populate_sysroot', 
> 'rpi-u-boot-scr.bb:do_populate_sysroot', 
> 'kern-tools-native_git.bb:do_populate_sysroot', 
> 'u-boot_2021.10.bb:do_fetch', 'openssl_3.2.3.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_configure 
> (dependent Tasks ['u-boot_2021.10.bb:do_patch', 
> 'u-boot_2021.10.bb:do_deploy_source_date_epoch', 
> 'u-boot_2021.10.bb:do_prepare_recipe_sysroot'])
> Dependency loop #3 found:
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_compile 
> (dependent Tasks ['u-boot_2021.10.bb:do_configure'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_uboot_assemble_fitimage 
> (dependent Tasks ['u-boot_2021.10.bb:do_compile', 
> 'u-boot_2021.10.bb:do_uboot_generate_rsa_keys'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_install 
> (dependent Tasks ['u-boot_2021.10.bb:do_compile', 
> 'u-boot_2021.10.bb:do_uboot_assemble_fitimage', 
> 'u-boot_2021.10.bb:do_create_extlinux_config', 
> 'pseudo_git.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'u-boot_2021.10.bb:do_install'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_assemble_fitimage 
> (dependent Tasks ['u-boot_2021.10.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 
> 'linux-raspberrypi_6.6.bb:do_sizecheck', 
> 'linux-raspberrypi_6.6.bb:do_transform_kernel', 
> 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_install'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['u-boot-tools_2021.10.bb:do_populate_sysroot', 
> 'bison_3.8.2.bb:do_populate_sysroot', 
> 'dtc_1.7.0.bb:do_populate_sysroot', 
> 'python3_3.12.6.bb:do_populate_sysroot', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'glibc_2.39.bb:do_populate_sysroot', 
> 'gcc-cross_13.3.bb:do_populate_sysroot', 
> 'os-release.bb:do_populate_sysroot', 
> 'python3-setuptools_69.1.1.bb:do_populate_sysroot', 
> 'gcc-runtime_13.3.bb:do_populate_sysroot', 
> 'bc_1.07.1.bb:do_populate_sysroot', 
> 'swig_4.2.1.bb:do_populate_sysroot', 
> 'flex_2.6.4.bb:do_populate_sysroot', 
> 'rpi-u-boot-scr.bb:do_populate_sysroot', 
> 'kern-tools-native_git.bb:do_populate_sysroot', 
> 'u-boot_2021.10.bb:do_fetch', 'openssl_3.2.3.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_configure 
> (dependent Tasks ['u-boot_2021.10.bb:do_patch', 
> 'u-boot_2021.10.bb:do_deploy_source_date_epoch', 
> 'u-boot_2021.10.bb:do_prepare_recipe_sysroot'])
> Dependency loop #4 found:
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_compile 
> (dependent Tasks ['u-boot_2021.10.bb:do_configure'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_create_extlinux_config 
> (dependent Tasks ['u-boot_2021.10.bb:do_compile'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_install 
> (dependent Tasks ['u-boot_2021.10.bb:do_compile', 
> 'u-boot_2021.10.bb:do_uboot_assemble_fitimage', 
> 'u-boot_2021.10.bb:do_create_extlinux_config', 
> 'pseudo_git.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'u-boot_2021.10.bb:do_install'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_assemble_fitimage 
> (dependent Tasks ['u-boot_2021.10.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 
> 'linux-raspberrypi_6.6.bb:do_sizecheck', 
> 'linux-raspberrypi_6.6.bb:do_transform_kernel', 
> 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_install'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['u-boot-tools_2021.10.bb:do_populate_sysroot', 
> 'bison_3.8.2.bb:do_populate_sysroot', 
> 'dtc_1.7.0.bb:do_populate_sysroot', 
> 'python3_3.12.6.bb:do_populate_sysroot', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'glibc_2.39.bb:do_populate_sysroot', 
> 'gcc-cross_13.3.bb:do_populate_sysroot', 
> 'os-release.bb:do_populate_sysroot', 
> 'python3-setuptools_69.1.1.bb:do_populate_sysroot', 
> 'gcc-runtime_13.3.bb:do_populate_sysroot', 
> 'bc_1.07.1.bb:do_populate_sysroot', 
> 'swig_4.2.1.bb:do_populate_sysroot', 
> 'flex_2.6.4.bb:do_populate_sysroot', 
> 'rpi-u-boot-scr.bb:do_populate_sysroot', 
> 'kern-tools-native_git.bb:do_populate_sysroot', 
> 'u-boot_2021.10.bb:do_fetch', 'openssl_3.2.3.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_configure 
> (dependent Tasks ['u-boot_2021.10.bb:do_patch', 
> 'u-boot_2021.10.bb:do_deploy_source_date_epoch', 
> 'u-boot_2021.10.bb:do_prepare_recipe_sysroot'])
> Dependency loop #5 found:
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_compile 
> (dependent Tasks ['u-boot_2021.10.bb:do_configure'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_install 
> (dependent Tasks ['u-boot_2021.10.bb:do_compile', 
> 'u-boot_2021.10.bb:do_uboot_assemble_fitimage', 
> 'u-boot_2021.10.bb:do_create_extlinux_config', 
> 'pseudo_git.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'u-boot_2021.10.bb:do_install'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_assemble_fitimage 
> (dependent Tasks ['u-boot_2021.10.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 
> 'linux-raspberrypi_6.6.bb:do_sizecheck', 
> 'linux-raspberrypi_6.6.bb:do_transform_kernel', 
> 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_install'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['u-boot-tools_2021.10.bb:do_populate_sysroot', 
> 'bison_3.8.2.bb:do_populate_sysroot', 
> 'dtc_1.7.0.bb:do_populate_sysroot', 
> 'python3_3.12.6.bb:do_populate_sysroot', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'glibc_2.39.bb:do_populate_sysroot', 
> 'gcc-cross_13.3.bb:do_populate_sysroot', 
> 'os-release.bb:do_populate_sysroot', 
> 'python3-setuptools_69.1.1.bb:do_populate_sysroot', 
> 'gcc-runtime_13.3.bb:do_populate_sysroot', 
> 'bc_1.07.1.bb:do_populate_sysroot', 
> 'swig_4.2.1.bb:do_populate_sysroot', 
> 'flex_2.6.4.bb:do_populate_sysroot', 
> 'rpi-u-boot-scr.bb:do_populate_sysroot', 
> 'kern-tools-native_git.bb:do_populate_sysroot', 
> 'u-boot_2021.10.bb:do_fetch', 'openssl_3.2.3.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_configure 
> (dependent Tasks ['u-boot_2021.10.bb:do_patch', 
> 'u-boot_2021.10.bb:do_deploy_source_date_epoch', 
> 'u-boot_2021.10.bb:do_prepare_recipe_sysroot'])
> Dependency loop #6 found:
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configcheck', 
> 'linux-raspberrypi_6.6.bb:do_configure'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_uboot_generate_rsa_keys 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_compile', 
> 'linux-raspberrypi_6.6.bb:do_uboot_generate_rsa_keys'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 
> 'linux-raspberrypi_6.6.bb:do_sizecheck', 
> 'linux-raspberrypi_6.6.bb:do_transform_kernel', 
> 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_install'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['elfutils_0.191.bb:do_populate_sysroot', 
> 'u-boot-tools_2021.10.bb:do_populate_sysroot', 
> 'bison_3.8.2.bb:do_populate_sysroot', 
> 'kmod_31.bb:do_populate_sysroot', 
> 'libmpc_1.3.1.bb:do_populate_sysroot', 
> 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge.bb:do_populate_sysroot', 
> 'bc_1.07.1.bb:do_populate_sysroot', 
> 'openssl_3.2.3.bb:do_populate_sysroot', 
> 'xz_5.4.6.bb:do_populate_sysroot', 
> 'pkgconfig_git.bb:do_populate_sysroot', 
> 'gcc-cross_13.3.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_populate_sysroot', 
> 'libgcc_13.3.bb:do_populate_sysroot', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'gmp_6.3.0.bb:do_populate_sysroot', 
> 'binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_fetch', 
> 'util-linux_2.39.3.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_configure 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_patch', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configme', 
> 'linux-raspberrypi_6.6.bb:do_symlink_kernsrc', 
> 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_kernel_configcheck 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_configure'])
> Dependency loop #7 found:
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configcheck', 
> 'linux-raspberrypi_6.6.bb:do_configure'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_transform_kernel 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 
> 'linux-raspberrypi_6.6.bb:do_sizecheck', 
> 'linux-raspberrypi_6.6.bb:do_transform_kernel', 
> 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_install'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['elfutils_0.191.bb:do_populate_sysroot', 
> 'u-boot-tools_2021.10.bb:do_populate_sysroot', 
> 'bison_3.8.2.bb:do_populate_sysroot', 
> 'kmod_31.bb:do_populate_sysroot', 
> 'libmpc_1.3.1.bb:do_populate_sysroot', 
> 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge.bb:do_populate_sysroot', 
> 'bc_1.07.1.bb:do_populate_sysroot', 
> 'openssl_3.2.3.bb:do_populate_sysroot', 
> 'xz_5.4.6.bb:do_populate_sysroot', 
> 'pkgconfig_git.bb:do_populate_sysroot', 
> 'gcc-cross_13.3.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_populate_sysroot', 
> 'libgcc_13.3.bb:do_populate_sysroot', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'gmp_6.3.0.bb:do_populate_sysroot', 
> 'binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_fetch', 
> 'util-linux_2.39.3.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_configure 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_patch', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configme', 
> 'linux-raspberrypi_6.6.bb:do_symlink_kernsrc', 
> 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_kernel_configcheck 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_configure'])
> Dependency loop #8 found:
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configcheck', 
> 'linux-raspberrypi_6.6.bb:do_configure'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_compile', 
> 'linux-raspberrypi_6.6.bb:do_uboot_generate_rsa_keys'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 
> 'linux-raspberrypi_6.6.bb:do_sizecheck', 
> 'linux-raspberrypi_6.6.bb:do_transform_kernel', 
> 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_install'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['elfutils_0.191.bb:do_populate_sysroot', 
> 'u-boot-tools_2021.10.bb:do_populate_sysroot', 
> 'bison_3.8.2.bb:do_populate_sysroot', 
> 'kmod_31.bb:do_populate_sysroot', 
> 'libmpc_1.3.1.bb:do_populate_sysroot', 
> 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge.bb:do_populate_sysroot', 
> 'bc_1.07.1.bb:do_populate_sysroot', 
> 'openssl_3.2.3.bb:do_populate_sysroot', 
> 'xz_5.4.6.bb:do_populate_sysroot', 
> 'pkgconfig_git.bb:do_populate_sysroot', 
> 'gcc-cross_13.3.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_populate_sysroot', 
> 'libgcc_13.3.bb:do_populate_sysroot', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'gmp_6.3.0.bb:do_populate_sysroot', 
> 'binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_fetch', 
> 'util-linux_2.39.3.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_configure 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_patch', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configme', 
> 'linux-raspberrypi_6.6.bb:do_symlink_kernsrc', 
> 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_kernel_configcheck 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_configure'])
> Dependency loop #9 found:
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configcheck', 
> 'linux-raspberrypi_6.6.bb:do_configure'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_kernel_link_images 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_strip 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kernel_link_images', 
> 'linux-raspberrypi_6.6.bb:do_compile_kernelmodules'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_sizecheck 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_strip'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 
> 'linux-raspberrypi_6.6.bb:do_sizecheck', 
> 'linux-raspberrypi_6.6.bb:do_transform_kernel', 
> 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_install'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['elfutils_0.191.bb:do_populate_sysroot', 
> 'u-boot-tools_2021.10.bb:do_populate_sysroot', 
> 'bison_3.8.2.bb:do_populate_sysroot', 
> 'kmod_31.bb:do_populate_sysroot', 
> 'libmpc_1.3.1.bb:do_populate_sysroot', 
> 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge.bb:do_populate_sysroot', 
> 'bc_1.07.1.bb:do_populate_sysroot', 
> 'openssl_3.2.3.bb:do_populate_sysroot', 
> 'xz_5.4.6.bb:do_populate_sysroot', 
> 'pkgconfig_git.bb:do_populate_sysroot', 
> 'gcc-cross_13.3.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_populate_sysroot', 
> 'libgcc_13.3.bb:do_populate_sysroot', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'gmp_6.3.0.bb:do_populate_sysroot', 
> 'binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_fetch', 
> 'util-linux_2.39.3.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_configure 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_patch', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configme', 
> 'linux-raspberrypi_6.6.bb:do_symlink_kernsrc', 
> 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_kernel_configcheck 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_configure'])
> Dependency loop #10 found:
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configcheck', 
> 'linux-raspberrypi_6.6.bb:do_configure'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_shared_workdir 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile_kernelmodules 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_compile', 
> 'linux-raspberrypi_6.6.bb:do_shared_workdir'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_strip 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kernel_link_images', 
> 'linux-raspberrypi_6.6.bb:do_compile_kernelmodules'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_sizecheck 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_strip'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 
> 'linux-raspberrypi_6.6.bb:do_sizecheck', 
> 'linux-raspberrypi_6.6.bb:do_transform_kernel', 
> 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_install'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['elfutils_0.191.bb:do_populate_sysroot', 
> 'u-boot-tools_2021.10.bb:do_populate_sysroot', 
> 'bison_3.8.2.bb:do_populate_sysroot', 
> 'kmod_31.bb:do_populate_sysroot', 
> 'libmpc_1.3.1.bb:do_populate_sysroot', 
> 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge.bb:do_populate_sysroot', 
> 'bc_1.07.1.bb:do_populate_sysroot', 
> 'openssl_3.2.3.bb:do_populate_sysroot', 
> 'xz_5.4.6.bb:do_populate_sysroot', 
> 'pkgconfig_git.bb:do_populate_sysroot', 
> 'gcc-cross_13.3.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_populate_sysroot', 
> 'libgcc_13.3.bb:do_populate_sysroot', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'gmp_6.3.0.bb:do_populate_sysroot', 
> 'binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_fetch', 
> 'util-linux_2.39.3.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_configure 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_patch', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configme', 
> 'linux-raspberrypi_6.6.bb:do_symlink_kernsrc', 
> 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_kernel_configcheck 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_configure'])
> Dependency loop #11 found:
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configcheck', 
> 'linux-raspberrypi_6.6.bb:do_configure'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile_kernelmodules 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_compile', 
> 'linux-raspberrypi_6.6.bb:do_shared_workdir'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_strip 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kernel_link_images', 
> 'linux-raspberrypi_6.6.bb:do_compile_kernelmodules'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_sizecheck 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_strip'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 
> 'linux-raspberrypi_6.6.bb:do_sizecheck', 
> 'linux-raspberrypi_6.6.bb:do_transform_kernel', 
> 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_compile'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot 
> (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_install'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['elfutils_0.191.bb:do_populate_sysroot', 
> 'u-boot-tools_2021.10.bb:do_populate_sysroot', 
> 'bison_3.8.2.bb:do_populate_sysroot', 
> 'kmod_31.bb:do_populate_sysroot', 
> 'libmpc_1.3.1.bb:do_populate_sysroot', 
> 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge.bb:do_populate_sysroot', 
> 'bc_1.07.1.bb:do_populate_sysroot', 
> 'openssl_3.2.3.bb:do_populate_sysroot', 
> 'xz_5.4.6.bb:do_populate_sysroot', 
> 'pkgconfig_git.bb:do_populate_sysroot', 
> 'gcc-cross_13.3.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_populate_sysroot', 
> 'libgcc_13.3.bb:do_populate_sysroot', 
> 'pseudo_git.bb:do_populate_sysroot', 
> 'gmp_6.3.0.bb:do_populate_sysroot', 
> 'binutils-cross_2.42.bb:do_populate_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_fetch', 
> 'util-linux_2.39.3.bb:do_populate_sysroot'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_configure 
> (dependent Tasks 
> ['linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot', 
> 'linux-raspberrypi_6.6.bb:do_patch', 
> 'linux-raspberrypi_6.6.bb:do_kernel_configme', 
> 'linux-raspberrypi_6.6.bb:do_symlink_kernsrc', 
> 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
>   Task 
> /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_kernel_configcheck 
> (dependent Tasks ['linux-raspberrypi_6.6.bb:do_configure'])
> Halted dependency loops search after 10 matches.
> ERROR: Command execution failed: 1
> Summary: There were 2 WARNING messages.
> Summary: There were 3 ERROR messages, returning a non-zero exit code.
> build@ubuntu-bionic:~/project/bitbake/lib/bb$
>
> Ganesh

