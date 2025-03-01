Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C84C021B8
	for <webhook@archiver.kernel.org>; Sat,  1 Mar 2025 04:46:55 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web10.3686.1740804414178295151
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Feb 2025 20:46:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iNJrpL9z;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-22334203781so60992605ad.0
        for <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 20:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740804413; x=1741409213; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HuP8e1i1SHG849rH8xV9cVmntHnRJN9x+Wo4RDqL+CA=;
        b=iNJrpL9zyBA0lQ4hnljwdBmuUkSmuwDxoAWk6Wdr83675C6wcVC6ljnklfKI/Lv7Yp
         QGX2gYV6ApQmdkCcswVlA6bzTE/rX4B7Cnr0pGZL8YUUv5u/nunZC9qzb/UyCBg0d6uM
         THJ3JgEEvqxnhD8qOtbBSjk+uTAMjK5nsunw3p47bDFyJW9Ak/NVxIK5L9K6FvIzU8FV
         kzbCK+kc96NDR0flY63GeWK4gQFe9Xyf8W4g5oWZIppWsrhuHZBgDA6a06w3Fj537bnB
         //64M6Ucn4uhmaFCBnDPVdHrdt4/bgH4u3PCAzPUkKMms+WvGnG5hz60PFuLHLk3joMJ
         E2uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740804413; x=1741409213;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HuP8e1i1SHG849rH8xV9cVmntHnRJN9x+Wo4RDqL+CA=;
        b=GMfEarpta9rA3YgezQAVBKpzSj4yKm8yV42PfWCiNg8CIdSjZ9mczYcWIs7h5BhNb7
         d/a4vbI9zeoOwwqlOkXZRYV8a0nAodN/IbjSni8nSYIed/umnTe2K2GKhenMtqVXOjxm
         DuwsTGIrPqBZuNKSwBxcpqL/TLPJ7puj+HiKbMaLpenxhvcn5fM+7jiTvzvhAbZTNyx6
         qkKI/wWKAOYp2TX+kuAqPWJNKuJGA5Cd9A2q2UPjrfdn8IzSD7+p5LcCJgLIR2rtIYhz
         4j1gTdNnAFlOg7bTPfR+Zo3JV46OTEoJaXknGK35cVZEPan8H9aHwvBbbB26VBQqjAC9
         djag==
X-Gm-Message-State: AOJu0Yw+q8obLBnF5qyET3gsqF35UqWaDIMvvQVhCljUfG9sZtH3lK4D
	g865DVzYCBWmniQKotCPOeOFal96kiRg2RZbJQujXLbj1Jz23+9ZCWIkdGEs
X-Gm-Gg: ASbGncsRCBMeLFwUZ3IHOD2XX4k5DyD1DScs8iEcKYOPJcKCRNbmfuNfjt5qBSwSQ7v
	Iy0mzt1M51ki9Sq9iAJKBhyR4eacW3h+sZ06ACFZs4wKr7NsRT4dPOA5DWgbE9gj9fR1lk8K8oh
	G9MpWWHyIWHkNfZTwZ1XnOzLQIEK2ju1rRp8FBJjHhd3QJiE5JWc4yCycIfQ0lVkqHUwMAYlidZ
	iTM1DhMtb7I2Ga/zLNN2jFYUbyASCdL9o0LydVu5MqEXJ4bHNiYYmemir4txcp2OtVyWy/NTVbt
	9SR/UTeiLek0P2L3w6pytFX+ffeCl2K/uD5dxygGR5DrIzMx33+cJ6gvsmf2gWbO487/xiXx02H
	Px9aWX8E9nxejUF/Gi6zwsOVnkthnKYpv
X-Google-Smtp-Source: AGHT+IF/iGoVHiBtOWEtn1JKe8InuB97uzmzL+vhGu9l/+bgmOo8qaQgapllTI/P1/nlVXNbxk6/IQ==
X-Received: by 2002:a05:6a21:692:b0:1ed:a5f2:dba6 with SMTP id adf61e73a8af0-1f2f3debf85mr9841482637.14.1740804413097;
        Fri, 28 Feb 2025 20:46:53 -0800 (PST)
Received: from ?IPV6:2601:646:8201:fd20:b97c:f45a:2761:8e2b? ([2601:646:8201:fd20:b97c:f45a:2761:8e2b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-734a0024e59sm4766119b3a.92.2025.02.28.20.46.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 20:46:52 -0800 (PST)
Message-ID: <c98fb08b-4d3b-426a-a18e-a0a5928189ca@gmail.com>
Date: Fri, 28 Feb 2025 20:46:51 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/2] Add support for A/B
 partition layout in rpi-sdimg class
To: yocto@lists.yoctoproject.org, abdelkhalek.mansouri@gmail.com
References: <20250228231404.2998-1-abdelkhalek.mansouri@gmail.com>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20250228231404.2998-1-abdelkhalek.mansouri@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Mar 2025 04:46:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64900

Can you create a PR on github.com/agherzhan/meta-raspberrypi

On 2/28/25 3:14 PM, Abdelkhalek Mansouri via lists.yoctoproject.org wrote:
> From: "abdelkhalek-mansouri" <abdelkhalek.mansouri@gmail.com>
>
> Description:
>
> This patch introduces support for an A/B partition layout in the rpi-sdimg image creation
> process, enabling dual root filesystem partitions. This enhancement allows for more robust and flexible
> system updates by providing a fallback partition.
>
> Key Changes:
> New Variables Introduced:
> ROOTFS_PARTITION_SIZE: Specifies the size of each root filesystem partition. The default value is set to 4 GB.
> RPI_AB_PARTITION_LAYOUT: Determines the partition layout. The default value is 0, which indicates
> a single root filesystem partition. Setting this variable to 1 enables the A/B partition layout.
>
> Disk Layout:
>
> Single Partition Layout:
>
> 0                      -> IMAGE_ROOTFS_ALIGNMENT         - reserved for other data
> IMAGE_ROOTFS_ALIGNMENT -> BOOT_SPACE                     - bootloader and kernel
> BOOT_SPACE             -> SDIMG_SIZE                     - rootfs
>
> A/B Partition Layout:
>
> 0                       -> IMAGE_ROOTFS_ALIGNMENT           - reserved for other data
> IMAGE_ROOTFS_ALIGNMENT  -> BOOT_SPACE                       - bootloader and kernel
> BOOT_SPACE              -> ROOTFS_A                         - rootfs for partition A
> ROOTFS_A                -> ROOTFS_B                         - rootfs for partition B
>
> Signed-off-by: abdelkhalek-mansouri <abdelkhalek.mansouri@gmail.com>
> Signed-off-by: abdelkhalek-mansouri <abdelkhalek.mansouri@gmail.com>
> ---
>   classes/sdcard_image-rpi.bbclass | 100 +++++++++++++++++++++++++++----
>   1 file changed, 89 insertions(+), 11 deletions(-)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> index ddcd69d..7f719dd 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -21,6 +21,27 @@ inherit image_types
>   # ^                        ^            ^                        ^
>   # |                        |            |                        |
>   # 0                      4MiB     4MiB + 48MiB       4MiB + 48Mib + SDIMG_ROOTFS
> +#
> +# In case of A/B symmetric setup:
> +#
> +# The disk layout used is:
> +#
> +#    0                       -> IMAGE_ROOTFS_ALIGNMENT           - reserved for other data
> +#    IMAGE_ROOTFS_ALIGNEMENT -> BOOT_SPACE                       - bootloader and kernel
> +#    BOOT_SPACE              -> ROOTFS_A                         - rootfs for partition A
> +#    ROOTFS_A                -> ROOTFS_B                         - rootfs for partition B
> +#                                                      Default Free space = 1.3x
> +#                                                      Use IMAGE_OVERHEAD_FACTOR to add more space
> +#                                                      <--------->
> +#            4MiB              48MiB           ROOTFS_A                    ROOTFS_B
> +# <-----------------------> <----------> <----------------------> <------------------>
> +#  ------------------------ ------------ ------------------------ --------------------
> +# | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_PARTITION_A     | ROOTFS_PARTITION_B |
> +#  ------------------------ ------------ ------------------------ --------------------
> +# ^                        ^            ^                        ^                    ^
> +# |                        |            |                        |                    |
> +# 0                      4MiB     4MiB + 48MiB  4MiB + 48MiB + ROOTFS_A     4MiB + 48MiB + ROOTFS_A + ROOTFS_B
> +
>   
>   # This image depends on the rootfs image
>   IMAGE_TYPEDEP:rpi-sdimg = "${SDIMG_ROOTFS_TYPE}"
> @@ -36,6 +57,13 @@ BOOT_SPACE ?= "49152"
>   # Set alignment to 4MB [in KiB]
>   IMAGE_ROOTFS_ALIGNMENT = "4096"
>   
> +# Set Rootfs partition size [in KiB] by default 4GB
> +ROOTFS_PARTITION_SIZE ?= "4194304"
> +
> +# Variable to enable or disable A/B partiton layout for dual root filesystem setup
> +# Set to 0 by default to use a single root filesystem layout
> +RPI_AB_PARTITION_LAYOUT ?= "0"
> +
>   # Use an uncompressed ext3 by default as rootfs
>   SDIMG_ROOTFS_TYPE ?= "ext3"
>   SDIMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.${SDIMG_ROOTFS_TYPE}"
> @@ -75,23 +103,51 @@ IMAGE_CMD:rpi-sdimg () {
>       # Align partitions
>       BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
>       BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
> -    SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE)
>   
> -    echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS $ROOTFS_SIZE KiB"
> +    if [ "${RPI_AB_PARTITION_LAYOUT}" = "0" ]; then
> +        SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})
> +        echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS $ROOTFS_SIZE KiB"
> +    else
> +        ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
> +        ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE_ALIGNED} - ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
> +
> +        if [ ${ROOTFS_SIZE_ALIGNED} > ${ROOTFS_PARTITION_SIZE} ]; then
> +            ROOTFS_PARTITION_SIZE=${ROOTFS_SIZE_ALIGNED}
> +        fi
> +
> +        SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_PARTITION_SIZE} \* 2)
> +        echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and two RootFS partition with $ROOTFS_SIZE KiB each"
> +    fi
>   
>       # Check if we are building with device tree support
>       DTS="${@make_dtb_boot_files(d)}"
>   
>       # Initialize sdcard image file
> -    dd if=/dev/zero of=${SDIMG} bs=1024 count=0 seek=${SDIMG_SIZE}
> +    dd if=/dev/zero of=${SDIMG} bs=1K count=0 seek=${SDIMG_SIZE}
>   
>       # Create partition table
>       parted -s ${SDIMG} mklabel msdos
> +
>       # Create boot partition and mark it as bootable
> -    parted -s ${SDIMG} unit KiB mkpart primary fat32 ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT})
> +    parted -s ${SDIMG} unit KiB mkpart primary fat32 \
> +        ${IMAGE_ROOTFS_ALIGNMENT} \
> +        $(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT})
>       parted -s ${SDIMG} set 1 boot on
> +
>       # Create rootfs partition to the end of disk
> -    parted -s ${SDIMG} -- unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) -1s
> +    if [ "${RPI_AB_PARTITION_LAYOUT}" = "0" ]; then
> +        parted -s ${SDIMG} -- unit KiB mkpart primary ext2 \
> +            $(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) \
> +            -1s
> +    else
> +        parted -s ${SDIMG} -- unit KiB mkpart primary ext2 \
> +            $(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) \
> +            $(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} + ${ROOTFS_PARTITION_SIZE})
> +
> +        parted -s ${SDIMG} -- unit KiB mkpart primary ext2 \
> +            $(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} + ${ROOTFS_PARTITION_SIZE}) \
> +	        -1s
> +    fi
>       parted ${SDIMG} print
>   
>       # Create a vfat image with boot files
> @@ -170,13 +226,35 @@ IMAGE_CMD:rpi-sdimg () {
>       fi
>   
>       # Burn Partitions
> -    dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc seek=1 bs=$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024)
> -    # If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
> -    if echo "${SDIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
> -    then
> -        xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc seek=1 bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 1024)
> +    dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc \
> +        seek=$(expr ${IMAGE_ROOTFS_ALIGNMENT}) bs=1K
> +
> +    if [ "${RPI_AB_PARTITION_LAYOUT}" = "0" ]; then
> +        # If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
> +        if echo "${SDIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
> +        then
> +            xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc \
> +                seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) bs=1K
> +        else
> +            dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc \
> +                 seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) bs=1K
> +        fi
>       else
> -        dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc seek=1 bs=$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* 1024)
> +        # If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
> +        if echo "${SDIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
> +        then
> +            xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc \
> +                seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) bs=1K
> +
> +	        xzcat ${SDIMG_ROOTFS} | dd of=${SDIMG} conv=notrunc \
> +                seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} + ${ROOTFS_PARTITION_SIZE}) bs=1K
> +	    else
> +	        dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc \
> +                seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT}) bs=1K
> +
> +            dd if=${SDIMG_ROOTFS} of=${SDIMG} conv=notrunc \
> +            seek=$(expr ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} + ${ROOTFS_PARTITION_SIZE}) bs=1K
> +	    fi
>       fi
>   }
>   
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64897): https://lists.yoctoproject.org/g/yocto/message/64897
> Mute This Topic: https://lists.yoctoproject.org/mt/111444313/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

