Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02CC4C433F5
	for <webhook@archiver.kernel.org>; Fri, 10 Dec 2021 14:43:45 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web09.7945.1639147423526798602
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Dec 2021 06:43:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Rw/PkR1U;
 spf=pass (domain: gmail.com, ip: 209.85.222.171,
 mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id d2so7833330qki.12
        for <yocto@lists.yoctoproject.org>;
 Fri, 10 Dec 2021 06:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JTaHI1Y+1139dfb+xP9+wO1AT1LZxLeF3jQEVboieHM=;
        b=Rw/PkR1Up4aAfaSdXeO2A4jsTb3a3aLy+MC/D3M1eNsBVbyKAzvYyXPPvZddzZw7fV
         Ff89cabln3nrD0F9oTTplr6uRmrow1sKxaTZn0/nBUFcH5/EU80K2DvL0J8xrz/5H51X
         kex7vvkWsk5568YHEMdVOB84FKp5nznjNcfQD5KNdeXDB+bGe89430kQNLKrlZZP7cfx
         yE4pFEitK1yzLDx53Y3OSzwpXOdE1QRcxqwUaBhz3pgwT+qWqQYTr3AiEngECT0dqmqW
         XYsyT/MI5VeolNHIpyJJ6Alb8mu3YG8m9XwGVZQS8OWdLefWDy3dzW9wGabNWG4K6iu9
         zZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JTaHI1Y+1139dfb+xP9+wO1AT1LZxLeF3jQEVboieHM=;
        b=Lpy6ROCav6Kg16h+BizS+QPcuBO9kmEk672Np2hjtMdhdhWDD4NXjVrA9YvhQDijPT
         RkqWjTiEDIE4Jh4Zx4BJupPq2R6t8M/tZ/GImQ7D9Ik6bJpXOWx8VVbmSBqJlVOhFXnP
         sjBs/TL+cqJZL4GaIBtw2qtU64QVm7sqNfvdApzxYV8qW9wyi9p20jNuJykKW+cQJHkF
         nSmhdUhYOxB1ZFTFlchbRf+XlLKTlkhQhBV24cub3AG7y1ZAMg57IZZqDbfFvhtmX34R
         CDSwCdZHa9TaiH8bei0X+0QbnG6uPhmavcAEB6kbFzorOwiV2aWH45oSNQAQjSXroobn
         t+2Q==
X-Gm-Message-State: AOAM530SB3AzhMlcZXsWPtO6LrLQCqWLjc8pf08fN0+H9yZmQw36WKR4
	ZQ7SBSv5Fp2K25JkObIlp64=
X-Google-Smtp-Source: 
 ABdhPJybwsc45t2viFUcvbJJlBaRfk/9Y/Mr+J+hdUURxZvqkrNfoBV92OFfQA/xfOCP4n2Ox87Wsw==
X-Received: by 2002:a37:6103:: with SMTP id v3mr20015435qkb.694.1639147422592;
        Fri, 10 Dec 2021 06:43:42 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 j16sm2048181qtx.92.2021.12.10.06.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 06:43:41 -0800 (PST)
Date: Fri, 10 Dec 2021 09:43:39 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org, Quentin Schulz <foss@0leil.net>
Subject: Re: [meta-rockchip][PATCH] trusted-firmware-a: replace baudrate with
 the one specified in machine conf
Message-ID: <20211210144339.GA26689@localhost>
References: <20211111170002.2023006-1-quentin.schulz@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211111170002.2023006-1-quentin.schulz@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Dec 2021 14:43:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55547

On Thu 2021-11-11 @ 06:00:02 PM, Quentin Schulz wrote:
> Not all Rockchip boards have their console running at 1500000 baud in
> U-Boot and the kernel. Such is the case for puma-haikou RK3399-based
> SoM+Carrierboard.
> 
> In order to prepare for the addition of puma-haikou to meta-rockchip,
> let's replace the baudrate in TF-A by the one defined in the machine
> conf file in the RK_CONSOLE_BAUD variable.
> 
> Cc: Quentin Schulz <foss@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  .../files/serial-console-baudrate.patch       | 36 -------------------
>  .../trusted-firmware-a_%.bbappend             |  7 +++-
>  2 files changed, 6 insertions(+), 37 deletions(-)
>  delete mode 100644 recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> 
> diff --git a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> deleted file mode 100644
> index 2d6e9bf..0000000
> --- a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> +++ /dev/null
> @@ -1,36 +0,0 @@
> -From 840d6b6420e1fd8cdf6e4de7fa58a6f8de151622 Mon Sep 17 00:00:00 2001
> -From: Yann Dirson <yann@blade-group.com>
> -Date: Tue, 6 Apr 2021 17:28:45 +0200
> -Subject: [PATCH] Set serial console baudrate back to 1500000.
> -Upstream-Status: Inappropriate[other]
> -
> -TF-A runs between two u-boot stages which both uses 1500000 baud, it
> -just makes no sense to use the same UART at a different rate.
> -
> -This effectively reverts part of 0c05748bdebfad9fa43a80962186438bb8fbce62.
> -Main reason for that change stated in https://developer.trustedfirmware.org/T762
> -is ChromeOS compatibility.
> -
> -Looks like this patch may become unnecessary in the future, when
> -u-boot and TF-A get to communicate this value.
> -
> ----
> - plat/rockchip/rk3399/rk3399_def.h | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/plat/rockchip/rk3399/rk3399_def.h b/plat/rockchip/rk3399/rk3399_def.h
> -index ba83242eb..8d6ecfbe6 100644
> ---- a/plat/rockchip/rk3399/rk3399_def.h
> -+++ b/plat/rockchip/rk3399/rk3399_def.h
> -@@ -17,7 +17,7 @@
> - /**************************************************************************
> -  * UART related constants
> -  **************************************************************************/
> --#define RK3399_BAUDRATE			115200
> -+#define RK3399_BAUDRATE			1500000
> - #define RK3399_UART_CLOCK		24000000
> - 
> - /******************************************************************************
> --- 
> -2.30.2
> -
> diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> index f7777a7..0d06c44 100644
> --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> @@ -7,9 +7,14 @@ COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
>  
>  FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>  SRC_URI += "\
> -    file://serial-console-baudrate.patch \
>      file://0001-Fix-build-with-gcc-11.patch \
>      file://0001-dram-Fix-build-with-gcc-11.patch \
>      file://0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch \
>      file://0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch \
>  "
> +
> +fixup_rk3399_baudrate() {
> +	sed -i "s/#define RK3399_BAUDRATE			115200/#define RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/rk3399/rk3399_def.h
> +}

This looks fragile to me, any change in the number of spaces/tabs and this
line will stop working. Thankfully the symbol RK3399_BAUDRATE only appears
once in this file! That will allow us to do something like the following
instead:

	sed '/RK3399_BAUDRATE.*/RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/d'

Can you test and submit a v2 please?

> +
> +do_patch[postfuncs] += "fixup_rk3399_baudrate"
> -- 
> 2.30.2
> 

