Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.2533.1617768452396942384
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 21:07:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OmVyv+Zb;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: zoran.stojsavljevic@gmail.com)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C8F7F38C06A7
	for <yocto@yoctoproject.org>; Wed,  7 Apr 2021 04:07:28 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id d10so7174664pgf.12
        for <yocto@yoctoproject.org>; Tue, 06 Apr 2021 21:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VfGI6Tq3alsY9F218I6hyYS2XZl0pLa6eBrybVkK4G0=;
        b=OmVyv+ZbGxEkj6HJU2X4hHHCFwuIEhchDXNlSSWl11gOzPu0EwRwKwL4PLyP0fRmtG
         ROuKvKSFbOp2/HC4A4vgBf7d8RkB0lyAen/zzvOpYHccRLm+OFWZV3BxuxmablO+UGYb
         x2aGrKZL6yk4mbM+kzhsldAQwZ92jVEb/ioGRSLNe4Xjb/gM6Rf0dV5LIJT7iDyb33DU
         b/cXhxmE3iHUankEHPcIgUFK5AnSMwFEx5z9HDFJu5ma7jQ5veUvZK/wBDjAoEKEEeS/
         M31ZOtvXXoHzLILXsHX/cfc/LLL7slILt+9R4KK0v/KgdKs7BZFk4mLpDtlDZW20HkYG
         I/3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VfGI6Tq3alsY9F218I6hyYS2XZl0pLa6eBrybVkK4G0=;
        b=mRkqh/A+LJgdtNxDypstniPdzAwiJqfDoEpLWRXRZw5ZW/BBb1Vet3FdwyHnSpW+dJ
         3QGWVikPvPOXTHjIPIYV4sXunts+rTFL5YeHcKCnceDY7Yj4TjUtfpjJhN1/xa1m0MY3
         AwZZX2I9P2TsId3Fn6Zaay+21a8ohSclRWLrM8b0WaIgpT3D6iebyKC1UXiDaUowlkTP
         ZrFlNafIIDsrvOF8cp/oDZ18MNgWuFy4cGNaUZQq5b0WNNOCFfTk5DxjNXB/28sJolXu
         KB4jifSIzeOzjNIeFhbm2xbNjT5C91R1KQ8rvE/QdReOi6xy9qWAaGHZaHBubX3+SKhB
         pfeg==
X-Gm-Message-State: AOAM530S2e/c66SVrNpKwX5SBXo/iPV79ZVWnuTDajBmuOLgrvvn2AOw
	vCGPvJxsLMtrFavoHCH5p1pp3bpbaX6I6HHV6r0=
X-Google-Smtp-Source: ABdhPJzgjkl4U5AsuGV+P0GDFag/HFaXXbws1imILs5ZClN8t7MCbcN9l8sSJFqx2bMLbTWnwtWQ+YDIRxTGbFo3kRQ=
X-Received: by 2002:a65:4082:: with SMTP id t2mr1427723pgp.396.1617768447777;
 Tue, 06 Apr 2021 21:07:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210406234700.2493404-1-yann@blade-group.com>
In-Reply-To: <20210406234700.2493404-1-yann@blade-group.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 7 Apr 2021 06:07:16 +0200
Message-ID: <CAGAf8Lwh8vP8K+ppSY1nefdw_Rx0eGnjz=P4=tyztPKPhMniqg@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] trusted-firmware-a: use 1500000 baud for serial console
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: Yocto Project <yocto@yoctoproject.org>, twoerner@gmail.com, 
	Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"

> +-#define RK3399_BAUDRATE                       115200
> ++#define RK3399_BAUDRATE                       1500000
> + #define RK3399_UART_CLOCK             24000000

Interesting... For years (a few decades) everybody has used 115200 as
the standard setup for UART, as global definition.

Why suddenly somebody changed the UART baud rate to be non-standard?
From the speed point of view???

Don't think so.

Should U-Boot be adjusted to the standard baud rate of 115200 for RK3399?

My two cent addendum/thinking,
Zee
_______


On Wed, Apr 7, 2021 at 1:47 AM Yann Dirson <yann.dirson@blade-group.com> wrote:
>
> From: Yann Dirson <yann@blade-group.com>
>
> TF-A runs between two u-boot stages which both uses 1500000 baud, it
> just makes no sense to use the same UART at a different rate.
>
> Here is a sample session with the successive stages, with TF-A artificially
> separated for emphasis:
>
>  [20210406-175438.135934] U-Boot TPL 2021.01 (Jan 11 2021 - 18:11:43)
>  [20210406-175438.135956] Channel 0: DDR3, 933MHz
>  [20210406-175438.236974] BW=32 Col=10 Bk=8 CS0 Row=15 CS=1 Die BW=16 Size=1024MB
>  [20210406-175438.237000] Channel 1: DDR3, 933MHz
>  [20210406-175438.237004] BW=32 Col=10 Bk=8 CS0 Row=15 CS=1 Die BW=16 Size=1024MB
>  [20210406-175438.237008] 256B stride
>  [20210406-175438.237012] Trying to boot from BOOTROM
>  [20210406-175438.237015] Returning to boot ROM...
>  [20210406-175438.237018]
>  [20210406-175438.573394] U-Boot SPL 2021.01 (Jan 11 2021 - 18:11:43 +0000)
>  [20210406-175438.573431] Trying to boot from MMC1
>
>  [20210406-175438.589254] NOTICE:  BL31: v2.3():v2.3-dirty
>  [20210406-175440.534055] NOTICE:  BL31: Built : 15:56:43, Apr 20 2020
>
>  [20210406-175441.393423] U-Boot 2021.01 (Jan 11 2021 - 18:11:43 +0000)
>  [20210406-175441.393429]
>  [20210406-175441.393433] SoC: Rockchip rk3399
>
> Signed-off-by: Yann Dirson <yann@blade-group.com>
> ---
>  .../files/serial-console-baudrate.patch       | 35 +++++++++++++++++++
>  .../trusted-firmware-a_%.bbappend             |  5 +++
>  2 files changed, 40 insertions(+)
>  create mode 100644 recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
>
> diff --git a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> new file mode 100644
> index 0000000..10b5a2b
> --- /dev/null
> +++ b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> @@ -0,0 +1,35 @@
> +From 840d6b6420e1fd8cdf6e4de7fa58a6f8de151622 Mon Sep 17 00:00:00 2001
> +From: Yann Dirson <yann@blade-group.com>
> +Date: Tue, 6 Apr 2021 17:28:45 +0200
> +Subject: [PATCH] Set serial console baudrate back to 1500000.
> +
> +TF-A runs between two u-boot stages which both uses 1500000 baud, it
> +just makes no sense to use the same UART at a different rate.
> +
> +This effectively reverts part of 0c05748bdebfad9fa43a80962186438bb8fbce62.
> +Main reason for that change stated in https://developer.trustedfirmware.org/T762
> +is ChromeOS compatibility.
> +
> +Looks like this patch may become unnecessary in the future, when
> +u-boot and TF-A get to communicate this value.
> +
> +---
> + plat/rockchip/rk3399/rk3399_def.h | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/plat/rockchip/rk3399/rk3399_def.h b/plat/rockchip/rk3399/rk3399_def.h
> +index ba83242eb..8d6ecfbe6 100644
> +--- a/plat/rockchip/rk3399/rk3399_def.h
> ++++ b/plat/rockchip/rk3399/rk3399_def.h
> +@@ -17,7 +17,7 @@
> + /**************************************************************************
> +  * UART related constants
> +  **************************************************************************/
> +-#define RK3399_BAUDRATE                       115200
> ++#define RK3399_BAUDRATE                       1500000
> + #define RK3399_UART_CLOCK             24000000
> +
> + /******************************************************************************
> +--
> +2.30.2
> +
> diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> index 442dee8..1942c17 100644
> --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> @@ -4,3 +4,8 @@ DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc-native"
>
>  COMPATIBLE_MACHINE_append_rk3399 = "|rk3399"
>  COMPATIBLE_MACHINE_append_rk3328 = "|rk3328"
> +
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +SRC_URI += "\
> +    file://serial-console-baudrate.patch \
> +"
> --
> 2.30.2
>
>
> 
>
