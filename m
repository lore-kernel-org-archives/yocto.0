Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.545.1632336909323345314
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 11:55:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gquhjCm7;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id a7so2417932plm.1
        for <yocto@lists.yoctoproject.org>; Wed, 22 Sep 2021 11:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=TVwWDYwkXdDX90MqfeFLzazvdP62hJ34GvXhgmjFtY0=;
        b=gquhjCm7tnOEuJXyfu9SvO8cbE09cE/dyP5SS2IcOJdNb6LY3DkKkCLtDHSbS9Lz5a
         dOTvV1cyU1iE1JpurH7JQJH4J1/NSqJZUqPo3/w+orC952ui0JT0qN5mWzMEVXHiip6d
         V8iOy/1tT4LB0IDPIf3nNPkzF1jAHGclLAmRtt93R7/9z5PH5ifHtcYLegxJYGgI5HOT
         tvN9y1lkqw5iTZuQu/WzhwAYE1pf4cT/axsH3LBYkDycBphH83tDZkDd6tKj94fMMUJs
         wSAHFx1M1XKDhFbSjtQ6QOfkZbNPpUHt4QQZMf3uBzRemFglkz2BljdATvqSX8vs0QO3
         0csw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=TVwWDYwkXdDX90MqfeFLzazvdP62hJ34GvXhgmjFtY0=;
        b=HCGMt2D1APbGWjPA8Tj7TfoMNwcQzjIyGj7av/A7UOmXyjBqFMgJ//beyJV/tH6q6p
         ZXCCYTpMJY5HECXFtJRyefz8G5qyCPvh8AgtdtMNMb9xqpWGwCmypMLJ9A8Xin0FRtVS
         MrDxZrWgAPidz58VZPbqW4n3Z0QAuk4Y3ErVHxRGCfg5ZVQhqUAYw5YbNqfkwcsBln8m
         aN7541rgICYhZl3r9PZrD+EJK0mJkOPsRbp1h1S7oi7KfixcnaN8qXnOv/0T3kJgik5D
         wG710UVGlFLeft6WuNV60m0UntUBGC730BTNfqaq7D+4PwgY0U132V164d1c+9ixFNsA
         oclQ==
X-Gm-Message-State: AOAM531vSNj9Af5hVn3JuQmNJwMH5EQtM3O5Yvx1Ri+1u/xpKtTT1igd
	0hTVwjrPQuL1EVlDpr2MEXg=
X-Google-Smtp-Source: ABdhPJxDkipsUZr9p/69a4gK3bRmcWnczA1Oapll0WoXKA5nvLveiBetfmXJXV4WikrkLEO2+8FcIg==
X-Received: by 2002:a17:902:c942:b0:13c:88f9:1af8 with SMTP id i2-20020a170902c94200b0013c88f91af8mr347547pla.3.1632336908679;
        Wed, 22 Sep 2021 11:55:08 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:39b5:4763:76fc:1c6? ([2601:646:9200:a0f0:39b5:4763:76fc:1c6])
        by smtp.gmail.com with ESMTPSA id p30sm3360618pfh.116.2021.09.22.11.55.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 11:55:08 -0700 (PDT)
Message-ID: <24dfe709-c1d2-464d-5631-da1b35391f11@gmail.com>
Date: Wed, 22 Sep 2021 11:55:06 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.1
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding root device
To: Markus Volk <f_l_k@t-online.de>, Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20210917220121.26663-1-twoerner@gmail.com>
 <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 9/22/21 11:49 AM, Markus Volk wrote:
> Hi,
> 
> with this change my rock-pi-4 doesnt boot up and falls to emergency 
> shell because wic includes wrong devices into fstab. For some reason it 
> assumes /dev/sda1. I was able to fix this for my machine by using uuid 
> for all partitions.
> 
> diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> index 5ee276b..90bdb27 100644
> --- a/wic/rockchip.wks
> +++ b/wic/rockchip.wks
> @@ -15,12 +15,12 @@
>   #   boot        32768           229376
>   #   root        262144          -           (suggested)
> 
> -part loader1    --offset 32     --fixed-size 4000K --source rawcopy 
> --sourceparams="file=${SPL_BINARY}"
> -part reserved1  --offset 4032   --fixed-size 64K
> -part reserved2  --offset 4096   --fixed-size 4096K
> -part loader2    --offset 8192   --fixed-size 4096K --source rawcopy 
> --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
> -part atf        --offset 12288  --fixed-size 4096K
> -part /boot      --offset 16384  --size       114688K --active --source 
> bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
> -part / --source rootfs            --fstype=ext4 --label root --use-uuid
> +part loader1   --offset 32 --fixed-size 4000K --source rawcopy 
> --sourceparams="file=${SPL_BINARY}" --use-uuid
> +part reserved1 --offset 4032 --fixed-size 64K --use-uuid
> +part reserved2 --offset 4096 --fixed-size 4096K --use-uuid
> +part loader2   --offset 8192 --fixed-size 4096K --source rawcopy 
> --sourceparams="file=u-boot.${UBOOT_SUFFIX}" --use-uuid
> +part atf       --offset 12288 --fixed-size 4096K --use-uuid
> +part /boot     --offset 16384 --size 114688K --active --source 
> bootimg-partition --fstype=vfat --label boot 
> --sourceparams="loader=u-boot" --use-uuid
> +part /         --source rootfs --fstype=ext4 --label root --use-uuid
> 
> -bootloader --ptable gpt --append="console=tty1 
> console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 
> init=/sbin/init"
> +bootloader     --ptable gpt --append="console=tty1 
> console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 
> init=/sbin/init"
> 
> 
> In addition i added an option that avoids editing fstab by wic at all 
> since the image also boots without mounting /boot, but i guess this is 
> just a matter of taste.
> 
> diff --git a/conf/machine/include/rockchip-wic.inc 
> b/conf/machine/include/rockchip-wic.inc
> index 15010a0..30b0d57 100644
> --- a/conf/machine/include/rockchip-wic.inc
> +++ b/conf/machine/include/rockchip-wic.inc
> @@ -26,3 +26,6 @@ WICVARS:append = " \
>          SPL_BINARY \
>          UBOOT_SUFFIX \
>          "
> +
> +# Do not update fstab file while creating wic images
> +WIC_CREATE_EXTRA_ARGS ?= "--no-fstab-update"
> 

yes was seeing same. Can you turn this into a patch and send?

> 
> Am 18.09.21 um 00:01 schrieb Trevor Woerner:
>> Recent upstream kernel changes have made the mmc probing order unpredictable.
>> Therefore, boards with both an emmc and sdmmc interface aren't guaranteed to
>> boot with a hard-coded root device selected.
>>
>> For example, on the rock64, with linux-yocto 5.10.y, using the uSD card (i.e.
>> the sdmmc interface) about 50% of the time the boot would succeed, and roughly
>> 50% of the time it wouldn't:
>>
>> 	...
>> 	[    0.612233] Waiting for root device /dev/mmcblk1p7...
>> 	[    0.634551] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req 300000Hz, actual 300000HZ div = 0)
>> 	[    0.639064] mmc_host mmc0: Bus speed (slot 0) = 50000000Hz (slot req 50000000Hz, actual 50000000HZ di)
>> 	[    0.640007] mmc0: new high speed SDXC card at address 5048
>> 	[    0.641176] mmcblk0: mmc0:5048 SD64G 58.0 GiB
>> 	[    0.647610] random: fast init done
>> 	[    0.648279] GPT:Primary header thinks Alt. header is not at the end of the disk.
>> 	[    0.648941] GPT:376479 != 121634815
>> 	[    0.649252] GPT:Alternate GPT header not at the end of the disk.
>> 	[    0.649796] GPT:376479 != 121634815
>> 	[    0.650106] GPT: Use GNU Parted to correct GPT errors.
>> 	[    0.650598]  mmcblk0: p1 p2 p3 p4 p5 p6 p7
>>
>> NOTE the discrepancy between the kernel waiting for device /dev/mmcblk1p7,
>> which comes from the hard-coded kernel cmdline, and the kernel probing putting
>> the sdmmc on mmcblk0.
>>
>> With linux-yocto 5.13.y on the rock64 using the uSD card the board would never
>> boot, the sdmmc always appears on mmcblk0.
>>
>> Instead of simply changing the hard-coded root device (i.e. from mmcblk0 to
>> mmcblk1) switch to using partition UUIDs instead. Hard-coding the boot device
>> would work with 5.13.y but would fail 50% of the time with 5.10.y; who knows
>> what other kernels will do?
>>
>> In any case, switching to UUIDs works regardless of board, kernel, or
>> available mmc interfaces.
>>
>> Boot tested on:
>> - rock64
>> - nanopi-m4-2gb
>> - tinker-board
>> - rock-pi-e
>> - rock-pi-4b
>>
>> Signed-off-by: Trevor Woerner<twoerner@gmail.com>
>> ---
>>   conf/machine/include/nanopi-m4.inc    |  2 --
>>   conf/machine/include/rock-pi-4.inc    |  2 --
>>   conf/machine/include/rockchip-wic.inc |  4 ----
>>   conf/machine/rock64.conf              |  3 ---
>>   conf/machine/tinker-board-s.conf      |  2 --
>>   conf/machine/vyasa-rk3288.conf        |  2 --
>>   wic/rockchip.wks                      | 16 ++++++++--------
>>   7 files changed, 8 insertions(+), 23 deletions(-)
>>
>> diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
>> index ac6479d..3870b51 100644
>> --- a/conf/machine/include/nanopi-m4.inc
>> +++ b/conf/machine/include/nanopi-m4.inc
>> @@ -7,5 +7,3 @@ MACHINE_FEATURES += "usbhost serial"
>>   
>>   KMACHINE = "nanopi-m4"
>>   KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-m4.dtb"
>> -
>> -RK_BOOT_DEVICE = "mmcblk1"
>> diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
>> index b6fb3dd..0a86846 100644
>> --- a/conf/machine/include/rock-pi-4.inc
>> +++ b/conf/machine/include/rock-pi-4.inc
>> @@ -3,6 +3,4 @@ MACHINEOVERRIDES =. "rock-pi-4:"
>>   
>>   require conf/machine/include/rk3399.inc
>>   
>> -RK_BOOT_DEVICE = "mmcblk1"
>> -
>>   MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
>> diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
>> index b5939f7..15010a0 100644
>> --- a/conf/machine/include/rockchip-wic.inc
>> +++ b/conf/machine/include/rockchip-wic.inc
>> @@ -20,11 +20,7 @@ IMAGE_BOOT_FILES = " \
>>   RK_CONSOLE_BAUD ?="${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
>>   RK_CONSOLE_DEVICE ?="${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
>>   
>> -# boot device (sd-card/emmc)
>> -RK_BOOT_DEVICE ??= "mmcblk0"
>> -
>>   WICVARS:append = " \
>> -	RK_BOOT_DEVICE \
>>   	RK_CONSOLE_BAUD \
>>   	RK_CONSOLE_DEVICE \
>>   	SPL_BINARY \
>> diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
>> index 21755a8..fa75a51 100644
>> --- a/conf/machine/rock64.conf
>> +++ b/conf/machine/rock64.conf
>> @@ -12,7 +12,4 @@ MACHINE_FEATURES += "usbhost serial"
>>   UBOOT_MACHINE = "rock64-rk3328_defconfig"
>>   KERNEL_DEVICETREE = "rockchip/rk3328-rock64.dtb"
>>   
>> -# set to mmcblk0 for booting from optional eMMC
>> -RK_BOOT_DEVICE ?= "mmcblk1"
>> -
>>   KBUILD_DEFCONFIG = "defconfig"
>> diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s.conf
>> index 9f44f2f..870b9bc 100644
>> --- a/conf/machine/tinker-board-s.conf
>> +++ b/conf/machine/tinker-board-s.conf
>> @@ -9,5 +9,3 @@ require conf/machine/include/tinker.inc
>>   
>>   KERNEL_DEVICETREE = "rk3288-tinker-s.dtb"
>>   UBOOT_MACHINE = "tinker-s-rk3288_defconfig"
>> -
>> -RK_BOOT_DEVICE ?= "mmcblk1"
>> diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
>> index 9ad1ed4..5b44257 100644
>> --- a/conf/machine/vyasa-rk3288.conf
>> +++ b/conf/machine/vyasa-rk3288.conf
>> @@ -13,5 +13,3 @@ KERNEL_DEVICETREE = "rk3288-vyasa.dtb"
>>   KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
>>   
>>   UBOOT_MACHINE = "vyasa-rk3288_defconfig"
>> -
>> -RK_BOOT_DEVICE = "mmcblk2"
>> diff --git a/wic/rockchip.wks b/wic/rockchip.wks
>> index eedae0d..5ee276b 100644
>> --- a/wic/rockchip.wks
>> +++ b/wic/rockchip.wks
>> @@ -15,12 +15,12 @@
>>   #   boot        32768           229376
>>   #   root        262144          -           (suggested)
>>   
>> -part loader1    --offset 32     --fixed-size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy                                      --sourceparams="file=${SPL_BINARY}"
>> -part reserved1  --offset 4032   --fixed-size 64K              --ondisk ${RK_BOOT_DEVICE}
>> -part reserved2  --offset 4096   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
>> -part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy                                      --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
>> -part atf        --offset 12288  --fixed-size 4096K            --ondisk ${RK_BOOT_DEVICE}
>> -part /boot      --offset 16384  --size       114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
>> -part /                                                        --ondisk ${RK_BOOT_DEVICE} --source rootfs            --fstype=ext4 --label root
>> +part loader1    --offset 32     --fixed-size 4000K            --source rawcopy                                                 --sourceparams="file=${SPL_BINARY}"
>> +part reserved1  --offset 4032   --fixed-size 64K
>> +part reserved2  --offset 4096   --fixed-size 4096K
>> +part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy                                                 --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
>> +part atf        --offset 12288  --fixed-size 4096K
>> +part /boot      --offset 16384  --size       114688K --active --source bootimg-partition --fstype=vfat --label boot            --sourceparams="loader=u-boot"
>> +part /                                                        --source rootfs            --fstype=ext4 --label root --use-uuid
>>   
>> -bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
>> +bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 init=/sbin/init"
>>
> 
> 
> 
> 
