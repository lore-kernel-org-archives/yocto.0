Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5779.1581394944667975067
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 20:22:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YmKBCLdo;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 397ACE01670; Mon, 10 Feb 2020 20:22:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41024E0085D
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 20:22:23 -0800 (PST)
Received: by mail-qt1-f194.google.com with SMTP id w47so7005189qtk.4
        for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 20:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=t2dm5rx+0WwU9bUy4Uc9BLQIHUyqT2lCSoSSZ2xOKjo=;
        b=YmKBCLdouHvcqPqE97X6r58vPe4w3f0kXfOHq6w5aX1LRXZQ5ZstwWh1VRNjIqjvzO
         a/o8hNPAJJ9Sqy1jnP45LkOdaPtmGvxHoNAz9Iit6mP6lkmfnR+guiRXV7w0c2yTQ2v2
         x6BYYRLNL7BVwyRMSZGsysnwwbBfcPuOj6U/UcGZBXGplg1xiSnkvqD9KxkvW+wtNsup
         QYou41XYB7pdC+slGbzxQ9z2oc+A5C2oSnyWMXIZm54DQ/1x2hqMgA1oVVYO90pnyrpI
         S4GLxYJ80hqUrHpcO1XZ+ealUEUGw69IT0CptJXOu+H1xkaVKXAiBvcZcSjOetFbasMY
         UokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=t2dm5rx+0WwU9bUy4Uc9BLQIHUyqT2lCSoSSZ2xOKjo=;
        b=CeHweUvynn27L7coexCoiL5ro2ZX51ZjdpEAml4knPZnwwrpNInDHnFFZ6IorZJqxS
         5gqKx2gsucwnIrUSzH8tEPTvKXULRfU+d/98hJ7i9CVtoZ6cly04JQ5OwJ3EOB7KUdwc
         aqIBKUMwQzTZVzK1GhqCv0ggV+kV9LrVBdjScW8ndDigQ8Np+juB8KCJPNQgeARkCbwb
         fA9svBFRign0BIkh1yfwWiHfVGcATqO2AJB4C+JKQ67NC95eva1y8mQJAj2g9P6rC3tp
         czMycLZcfw6HGSJYOuqnXPQ0GBT7MQhL2BEEMot/wW7MnMmgIkYbDVE3qjTozmb11K9k
         hQXQ==
X-Gm-Message-State: APjAAAWck1D+3BBp0OIEkoNmR35XX0Lz2pWbfVGDX7LcH/xMXV2t72Tf
	XWMl/81DeuzCfI/Mrf7gWTaYK2GcbDU=
X-Google-Smtp-Source: APXvYqxVpzqfu1yclOeS5xqwi2ECHQ0wELNzKGnTyZ4rHiqNI5aLNnBfeVpvdvoDiNyP1XJPe1tF5w==
X-Received: by 2002:ac8:498f:: with SMTP id f15mr814335qtq.123.1581394942285;
        Mon, 10 Feb 2020 20:22:22 -0800 (PST)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id j58sm1455933qtk.27.2020.02.10.20.22.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Feb 2020 20:22:21 -0800 (PST)
Date: Mon, 10 Feb 2020 23:22:19 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Sergey Bostandzhyan <jin@mediatomb.cc>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 1/2] Add configuration parameter to set boot device for the image
Message-ID: <20200211042218.GA10571@linux-uys3>
References: <1581355523-30072-1-git-send-email-jin@mediatomb.cc>
MIME-Version: 1.0
In-Reply-To: <1581355523-30072-1-git-send-email-jin@mediatomb.cc>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2020-02-10 @ 06:25:22 PM, Sergey Bostandzhyan wrote:
> From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
> 
> wic modifies /etc/fstab on the root file system during image generation,
> without the --ondisk parameter it assumes some default device name which
> leads to an /etc/fstab file populated with /dev/sda entries.
> This is not correct for the machines in the rockchip layer which use
> mmcblkX.
> 
> This patch introduces an RK_BOOT_DEVICE option which is being set in the
> machine configuratoin and which is being used in the wks files.
> The variable expansion in the wks is handled by propagating the variable to
> the wic environment.
> 
> This results in correct /etc/fstab entries and in a correct kernel
> bootargs root= parameter.
> 
> Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
> ---
>  conf/machine/include/rk3288.inc            |  1 -
>  conf/machine/include/rockchip-defaults.inc |  5 +++++
>  conf/machine/rock-pi-4.conf                |  1 +
>  conf/machine/vyasa-rk3288.conf             |  1 +
>  wic/firefly-rk3288.wks                     |  4 ++--
>  wic/rk3288-boot.wks                        | 12 ++++++------
>  wic/rk3399-boot.wks                        | 12 ++++++------
>  wic/rock-pi-4.wks                          |  4 ++--
>  wic/tinker-board.wks                       |  5 +++--
>  wic/vyasa-rk3288.wks                       |  4 ++--
>  10 files changed, 28 insertions(+), 21 deletions(-)
> 
> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
> index a7edac5..3504f10 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -14,4 +14,3 @@ SERIAL_CONSOLES = "115200;ttyS2"
>  
>  PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
>  SPL_BINARY ?= "idbloader.img"
> -

The above looks like a whitespace change? Can you send a v2 without it,
otherwise I can remove it when applying.

Otherwise this patch looks good to me.

> diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
> index 0507017..82fd590 100644
> --- a/conf/machine/include/rockchip-defaults.inc
> +++ b/conf/machine/include/rockchip-defaults.inc
> @@ -21,3 +21,8 @@ XSERVER = " \
>  
>  # misc
>  IMAGE_FSTYPES += "ext4"
> +
> +# boot device (sd-card/emmc)
> +RK_BOOT_DEVICE ??= "mmcblk0"
> +WICVARS_append = " RK_BOOT_DEVICE"
> +
> diff --git a/conf/machine/rock-pi-4.conf b/conf/machine/rock-pi-4.conf
> index 4a0671c..5231abf 100644
> --- a/conf/machine/rock-pi-4.conf
> +++ b/conf/machine/rock-pi-4.conf
> @@ -10,6 +10,7 @@ require conf/machine/include/rk3399.inc
>  KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4.dtb"
>  UBOOT_MACHINE = "rock-pi-4-rk3399_defconfig"
>  
> +RK_BOOT_DEVICE = "mmcblk1"
>  WKS_FILE ?= "rock-pi-4.wks"
>  IMAGE_FSTYPES += "wic wic.bmap"
>  
> diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
> index d8a6af6..1e1eba4 100644
> --- a/conf/machine/vyasa-rk3288.conf
> +++ b/conf/machine/vyasa-rk3288.conf
> @@ -13,6 +13,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
>  
>  UBOOT_MACHINE = "vyasa-rk3288_defconfig"
>  
> +RK_BOOT_DEVICE = "mmcblk2"
>  WKS_FILE = "vyasa-rk3288.wks"
>  IMAGE_FSTYPES += "wic wic.bmap"
>  
> diff --git a/wic/firefly-rk3288.wks b/wic/firefly-rk3288.wks
> index c2027bd..b60aa0e 100644
> --- a/wic/firefly-rk3288.wks
> +++ b/wic/firefly-rk3288.wks
> @@ -2,6 +2,6 @@
>  # Released under the MIT license (see COPYING.MIT for the terms)
>  
>  include rk3288-boot.wks
> -part / --align 131072 --source rootfs --fstype=ext4 --label root
> +part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
>  
> -bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
> +bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
> diff --git a/wic/rk3288-boot.wks b/wic/rk3288-boot.wks
> index 53c8162..c0b7d95 100644
> --- a/wic/rk3288-boot.wks
> +++ b/wic/rk3288-boot.wks
> @@ -15,10 +15,10 @@
>  #   root        262144          -
>  #
>  
> -part loader1    --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
> -part reserved1  --align 4032   --size 64K
> -part reserved2  --align 4096   --size 4096K
> -part loader2    --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.bin"
> -part atf        --align 12288  --size 4096K
> -part /boot      --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
> +part loader1    --align 32     --size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
> +part reserved1  --align 4032   --size 64K              --ondisk ${RK_BOOT_DEVICE}
> +part reserved2  --align 4096   --size 4096K            --ondisk ${RK_BOOT_DEVICE}
> +part loader2    --align 8192   --size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.bin"
> +part atf        --align 12288  --size 4096K            --ondisk ${RK_BOOT_DEVICE}
> +part /boot      --align 16384  --size=114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
>  
> diff --git a/wic/rk3399-boot.wks b/wic/rk3399-boot.wks
> index 100b94d..885d46b 100644
> --- a/wic/rk3399-boot.wks
> +++ b/wic/rk3399-boot.wks
> @@ -15,10 +15,10 @@
>  #   root        262144          -
>  #
>  
> -part loader1    --align 32     --size 4000K            --source rawcopy --sourceparams="file=idbloader.img"
> -part reserved1  --align 4032   --size 64K
> -part reserved2  --align 4096   --size 4096K
> -part loader2    --align 8192   --size 4096K            --source rawcopy --sourceparams="file=u-boot.itb"
> -part atf        --align 12288  --size 4096K
> -part /boot      --align 16384  --size=114688K --active --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
> +part loader1    --align 32     --size 4000K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=idbloader.img"
> +part reserved1  --align 4032   --size 64K              --ondisk ${RK_BOOT_DEVICE}
> +part reserved2  --align 4096   --size 4096K            --ondisk ${RK_BOOT_DEVICE}
> +part loader2    --align 8192   --size 4096K            --ondisk ${RK_BOOT_DEVICE} --source rawcopy --sourceparams="file=u-boot.itb"
> +part atf        --align 12288  --size 4096K            --ondisk ${RK_BOOT_DEVICE}
> +part /boot      --align 16384  --size=114688K --active --ondisk ${RK_BOOT_DEVICE} --source bootimg-partition --fstype=vfat --label boot --sourceparams="loader=u-boot"
>  
> diff --git a/wic/rock-pi-4.wks b/wic/rock-pi-4.wks
> index 8e4b37c..75ac358 100644
> --- a/wic/rock-pi-4.wks
> +++ b/wic/rock-pi-4.wks
> @@ -2,6 +2,6 @@
>  # Released under the MIT license (see COPYING.MIT for the terms)
>  
>  include rk3399-boot.wks
> -part / --align 131072 --source rootfs --fstype=ext4 --label root
> +part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
>  
> -bootloader --ptable gpt --append="console=tty1 console=ttyS2,1500000n8 rw root=/dev/mmcblk1p7 rootfstype=ext4 init=/sbin/init"
> +bootloader --ptable gpt --append="console=tty1 console=ttyS2,1500000n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
> diff --git a/wic/tinker-board.wks b/wic/tinker-board.wks
> index c2027bd..8f08138 100644
> --- a/wic/tinker-board.wks
> +++ b/wic/tinker-board.wks
> @@ -2,6 +2,7 @@
>  # Released under the MIT license (see COPYING.MIT for the terms)
>  
>  include rk3288-boot.wks
> -part / --align 131072 --source rootfs --fstype=ext4 --label root
>  
> -bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
> +part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
> +
> +bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
> diff --git a/wic/vyasa-rk3288.wks b/wic/vyasa-rk3288.wks
> index f019e0d..b577e5a 100644
> --- a/wic/vyasa-rk3288.wks
> +++ b/wic/vyasa-rk3288.wks
> @@ -2,7 +2,7 @@
>  # Released under the MIT license (see COPYING.MIT for the terms)
>  
>  include rk3288-boot.wks
> -part / --align 131072 --source rootfs --fstype=ext4 --label root
> +part / --align 131072 --ondisk ${RK_BOOT_DEVICE} --source rootfs --fstype=ext4 --label root
>  
> -bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
> +bootloader --ptable gpt --append="console=tty1 console=ttyS2,115200n8 rw root=/dev/${RK_BOOT_DEVICE}p7 rootfstype=ext4 init=/sbin/init"
>  
> -- 
> 2.24.1
> 
