Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 734B8C433EF
	for <webhook@archiver.kernel.org>; Fri, 17 Dec 2021 17:54:48 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
 [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web09.9532.1639763687473496354
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Dec 2021 09:54:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=H0au/f4O;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id jo22so3089594qvb.13
        for <yocto@lists.yoctoproject.org>;
 Fri, 17 Dec 2021 09:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BqCr7fFifEbHa1jj0gY1KaGVDY2SeaNOYnytq07mCow=;
        b=H0au/f4OsJzvCUzS6SzUxfX+Zy7kLR4PLcXUTYjj80hv60+eces1EVOHfjMxS6F51G
         bZROcGyvs9VqHkZLXjYNHXn1Z2o0/Z4aGRLGIRJxhBxv+eTjG1iN5w8e/Grd1U7D/1c/
         oEC2T4JzNefClkd0t8DrKlvy4fJdBrhvFb2UrtR0EIkVprc5y5QJIu51olZZ9VjdrOye
         nzOTlzoYSftY4Ua+Dv67ppFgOzkebmeeHfyfBgmAlcTWNT65HMVWRseG5vlgj+qaMIRL
         kL94i+/qdL4W3QR2fLS0y7Gc+M3hlOIB8HKLllx8sepd8xgoDBGgnX7ZkqXTDFxd4L9F
         RvTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BqCr7fFifEbHa1jj0gY1KaGVDY2SeaNOYnytq07mCow=;
        b=mT9lor0BbxttUlWhH9bA2xYBrRkRlKO4+jQatuZtK7DkHIGphE5orYAHdY8WwrOv9p
         ldi0wc7F+vv3c+9IRNVt99+J/RjcHYDg8YFib6WqyR+33iK4cHWp36UYQ+K4/2LgzyFh
         imd6qbD1+jXl3iWsDnxPUIu0FzDAAdXP1sZdOwMyE1T/ZF1az9SuuW7G2fpL1w/jBv2h
         e7DMGnLEBWnrZXxgEdVKbGjpO9G4GF4eyJaVfGfnK6Mbrgn8tc9qjAo2GB8WDaRvFxQN
         9RJpT47yOxJvMYWueVzg0/tPIObsAhs6ah5GYgG5Ms5pM/rE/N2s5SJ/cd2AlZJtTV5T
         zQ/w==
X-Gm-Message-State: AOAM530yb+xIsLWFPHnnWIDIWHytgsZTy4GPcr+sIvZ+JspcANkoi6cs
	mnCWIc7MvdMgo5pRybd5jwKdHJq4Y1SadJEDGbc=
X-Google-Smtp-Source: 
 ABdhPJziMZLX5qyBo8DlLlF8zBhR0Esc94CGtAswVDUKcDdxIEN9G+B1Aic5DkH6GM3HSDyylsFze4CueE9zK/SMfwc=
X-Received: by 2002:a05:6214:c83:: with SMTP id
 r3mr3294136qvr.110.1639763686544;
 Fri, 17 Dec 2021 09:54:46 -0800 (PST)
MIME-Version: 1.0
References: <20211217113047.207480-1-foss+yocto@0leil.net>
In-Reply-To: <20211217113047.207480-1-foss+yocto@0leil.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 17 Dec 2021 09:54:20 -0800
Message-ID: 
 <CAMKF1spQWOvQMrENdw3zfpEBB7aYJCR=c7BZk5ejO5Gnoiiuug@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH v3] trusted-firmware-a: replace baudrate
 with the one specified in machine conf
To: Quentin Schulz <foss+yocto@0leil.net>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Trevor Woerner <twoerner@gmail.com>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Dec 2021 17:54:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55613

On Fri, Dec 17, 2021 at 3:31 AM Quentin Schulz <foss+yocto@0leil.net> wrote:
>
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> Not all Rockchip boards have their console running at 1500000 baud in
> U-Boot and the kernel. Such is the case for puma-haikou RK3399-based
> SoM+Carrierboard.
>
> In order to prepare for the addition of puma-haikou to meta-rockchip,
> let's replace the baudrate in TF-A by the one defined in the machine
> conf file in the RK_CONSOLE_BAUD variable.
>
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  .../files/serial-console-baudrate.patch       | 36 -------------------
>  .../trusted-firmware-a_%.bbappend             | 10 +++++-
>  2 files changed, 9 insertions(+), 37 deletions(-)
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
> --#define RK3399_BAUDRATE                       115200
> -+#define RK3399_BAUDRATE                       1500000
> - #define RK3399_UART_CLOCK             24000000
> -
> - /******************************************************************************
> ---
> -2.30.2
> -
> diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> index 513cea1..31024ce 100644
> --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> @@ -7,7 +7,6 @@ COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
>
>  FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>  SRC_URI += "\
> -    file://serial-console-baudrate.patch \
>      file://0001-dram-Fix-build-with-gcc-11.patch \
>      file://0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch \
>      file://0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch \
> @@ -19,3 +18,12 @@ SRC_URI += "\
>  # this needs fixing until then use gcc
>  TOOLCHAIN:rk3399 = "gcc"
>
> +fixup_baudrate() {
> +       :
> +}
> +
> +fixup_baudrate:rk3399() {
> +       sed -i "s/#define RK3399_BAUDRATE\s\+.*/#define RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/rk3399/rk3399_def.h
> +}
> +
> +do_patch[postfuncs] += "fixup_baudrate"

lgtm. Thanks

> --
> 2.33.1
>

