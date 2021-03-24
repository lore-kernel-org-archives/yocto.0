Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web09.594.1616610095595332613
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 11:21:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jh8S1TW7;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id nh23-20020a17090b3657b02900c0d5e235a8so1680724pjb.0
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 11:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Py2R4namfxvXaJhgyp66eX0sKiVPDAEySh0oy77W6ZQ=;
        b=jh8S1TW7xa2e8tuWJ0V+kFTTGnzRkIPgdyJR3Rz9c5PH6zfPjHKc9qZIS2Q8Yhn107
         OnbuHHIE7N11MlNOwMF0THeITZp6dOeo3Dfpx+3SORPGe5cbQMsUv1EqTUKmZAvREOKi
         HITGQ/EMeU72FwuL5cj4cYBztU+AgPwmXDNc8IdBxWeTOBDZDHs+V2NHhG7+guAl1h86
         qh0TeW8AZ6JuNUf+0m+k9RgFtsKrJLJhneAvCSqym926zdu1nEjpNCIEbVNCZ1ht0Isj
         m/ya16425X01txkyCUAO1E3cW/B18cNJbmOlgeY5ResrStRwCgFMd0GCa7OZw/almQuy
         XvfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Py2R4namfxvXaJhgyp66eX0sKiVPDAEySh0oy77W6ZQ=;
        b=C/K+Ny2zmlxgrg8w3MMzclcFaXaNwOFSUWtPZ4XCMWauVdTfmk8HstjWmSaIdX/+63
         o0+PEOVmVfqLS9ZdFjjNPWYLNCVOeXTbctHjg1RNAK9pqf6mWsPxvqCo5oH2s/VMWA3K
         GMcubKuakoCpPcZUSmGDRgdbTLEh56Zuzq/Df/mJDWl5M13f6uYceDO/sRG3rKjL1XPc
         VHNnfrWBZDbo8JmY/21o7WKHlTxmThRsICZXo93jWZgvIyjZYeCjOFc4IkHanQBmrKdK
         SUdxZ0KEOrN6ve0Mm3OXUywj2xm5cufYphac7WP1n7H3iaXWBIM+ZFNneQ0zoNbOA8+e
         lIYQ==
X-Gm-Message-State: AOAM533+pwFmLfd93MsKNq8p8z3UfHPfgJ5nMYV69mYZ6KaYlL1sNp7n
	snKi0Y+/7EzSPZ+rVmk9Tk8pji9lSpH3RA==
X-Google-Smtp-Source: ABdhPJzfJua8cW1OtjPqPXtySPfEOhwQHY1LFYmTdi9k9raTkkYWNSgnwB+9TGxEua7Z1G2/WQv0xg==
X-Received: by 2002:a17:90a:4005:: with SMTP id u5mr4720019pjc.6.1616610094597;
        Wed, 24 Mar 2021 11:21:34 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:2da1:1afd:1712:ea8b? ([2601:646:9200:a0f0:2da1:1afd:1712:ea8b])
        by smtp.gmail.com with ESMTPSA id o134sm3334060pfd.113.2021.03.24.11.21.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 11:21:34 -0700 (PDT)
Subject: Re: [yocto] Creating a FIT Image with INITRAMFs
To: Poornesh <poornesh.g@phytecembedded.in>, yocto@lists.yoctoproject.org
References: <dd0b3d469b5cecf5967a04cbf2022555@phytecembedded.in>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <fc743143-79b1-1a80-0a76-e77e241deb16@gmail.com>
Date: Wed, 24 Mar 2021 11:21:33 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <dd0b3d469b5cecf5967a04cbf2022555@phytecembedded.in>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 3/24/21 4:59 AM, Poornesh wrote:
> Greetings !
> 
> Processor  : i.MX8MM
> 
> Yocto : 2.7.1 (warrior)
> 
> I am trying to crate a "initramfs image" bundling with the "Kernel image".
> 
> Below mentioned is the link and  which I am following .
> 
> https://www.yoctoproject.org/docs/3.1/dev-manual/dev-manual.html#building-an-initramfs-image
> 
> 
> Below is the steps which I followed :
> 
> 1. Added INITRAMFS_IMAGE_BUNDLE variable to "1" in local.conf
> 
> 2. Added INITRAMFS_IMAGE = "phytec-initramfs-image" in your local.conf
> 
> 3. And tried building the image using bitbake.
> 
> 
> 
> But when I am compiling the image, I am getting the following mentioned 
> "Circular dependency error". Kindly Requesting solution/suggestions for 
> the same .
> 

initramfs images are a bit special. it should say

IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"

and perhaps then you should be able to build your full image which is 
not this image but this image will be bundled in the final full image

> ------------------------------------------------------
> 
> ERROR: 1830 unbuildable tasks were 
> found.######################################## | ETA: 0:00:01 These are 
> usually caused by circular dependencies and any circular dependency 
> chains found will be printed below. Increase the debug level to see a 
> list of unbuildable tasks.
> 
> Identifying dependency loops (this may take a short while)...
> 
> ERROR: Dependency loop #1 found: Task 
> /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/../meta-phytec/recipes-kernel/linux/linux-imx_4.19.35_1.1.0-phy4.bb:do_bundle_initramfs 
> (dependent Tasks ['linux-imx_4.19.35_1.1.0-phy4.bb:do_install', 
> 'core-image-minimal-initramfs.bb:do_image_complete']) Task 
> /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/../meta-phytec/recipes-kernel/linux/linux-imx_4.19.35_1.1.0-phy4.bb:do_deploy 
> (dependent Tasks ['linux-imx_4.19.35_1.1.0-phy4.bb:do_packagedata', 
> 'linux-imx_4.19.35_1.1.0-phy4.bb:do_populate_sysroot', 
> 'linux-imx_4.19.35_1.1.0-phy4.bb:do_bundle_initramfs', 
> 'depmodwrapper-cross_1.0.bb:do_populate_sysroot']) Task 
> /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb:do_image_wic 
> (dependent Tasks ['core-image-minimal-initramfs.bb:do_rootfs_wicenv', 
> 'core-image-minimal-initramfs.bb:do_image', 
> 'linux-imx_4.19.35_1.1.0-phy4.bb:do_deploy', 
> 'imx-boot-phytec_0.2.bb:do_deploy', 
> 'u-boot-imx_2019.04_1.1.0-phy5.bb:do_deploy', 
> 'gptfdisk_1.0.4.bb:do_populate_sysroot', 
> 'dosfstools_4.1.bb:do_populate_sysroot', 
> 'firmware-imx-8m_8.5.bb:do_deploy', 'parted_3.2.bb:do_populate_sysroot', 
> 'mtools_4.0.19.bb:do_populate_sysroot', 'imx-atf_2.0.bb:do_deploy']) 
> Task 
> /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb:do_image_complete 
> (dependent Tasks ['core-image-minimal-initramfs.bb:do_image', 
> 'core-image-minimal-initramfs.bb:do_image_tar', 
> 'core-image-minimal-initramfs.bb:do_image_create_sdcard_symlink', 
> 'core-image-minimal-initramfs.bb:do_image_wic'])
> 
> Dependency loop #2 found: Task 
> /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/../meta-phytec/recipes-kernel/linux/linux-imx_4.19.35_1.1.0-phy4.bb:do_bundle_initramfs 
> (dependent Tasks ['linux-imx_4.19.35_1.1.0-phy4.bb:do_install', 
> 'core-image-minimal-initramfs.bb:do_image_complete']) Task 
> /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/../meta-phytec/recipes-kernel/linux/linux-imx_4.19.35_1.1.0-phy4.bb:do_deploy 
> (dependent Tasks ['linux-imx_4.19.35_1.1.0-phy4.bb:do_packagedata', 
> 'linux-imx_4.19.35_1.1.0-phy4.bb:do_populate_sysroot', 
> 'linux-imx_4.19.35_1.1.0-phy4.bb:do_bundle_initramfs', 
> 'depmodwrapper-cross_1.0.bb:do_populate_sysroot']) Task 
> /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb:do_image_wic 
> (dependent Tasks ['core-image-minimal-initramfs.bb:do_rootfs_wicenv', 
> 'core-image-minimal-initramfs.bb:do_image', 
> 'linux-imx_4.19.35_1.1.0-phy4.bb:do_deploy', 
> 'imx-boot-phytec_0.2.bb:do_deploy', 
> 'u-boot-imx_2019.04_1.1.0-phy5.bb:do_deploy', 
> 'gptfdisk_1.0.4.bb:do_populate_sysroot', 
> 'dosfstools_4.1.bb:do_populate_sysroot', 
> 'firmware-imx-8m_8.5.bb:do_deploy', 'parted_3.2.bb:do_populate_sysroot', 
> 'mtools_4.0.19.bb:do_populate_sysroot', 'imx-atf_2.0.bb:do_deploy']) 
> Task 
> /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb:do_image_create_sdcard_symlink 
> (dependent Tasks ['core-image-minimal-initramfs.bb:do_image_wic']) Task 
> /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb:do_image_complete 
> (dependent Tasks ['core-image-minimal-initramfs.bb:do_image', 
> 'core-image-minimal-initramfs.bb:do_image_tar', 
> 'core-image-minimal-initramfs.bb:do_image_create_sdcard_symlink', 
> 'core-image-minimal-initramfs.bb:do_image_wic'])
> 
> ERROR: Command execution failed: 1
> 
> ------------------------------------------------------
> 
> 
> -- 
> 
> Thanks and Regards
> 
> *Poornesh G
> *
> 
> 
> 
> 
> 
