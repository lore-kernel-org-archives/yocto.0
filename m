Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E1EC433F5
	for <webhook@archiver.kernel.org>; Tue, 14 Dec 2021 18:12:22 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web08.29497.1639505541531041135
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 10:12:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=n6Bto7VT;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id a24so18051761qvb.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 10:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Iu77DAEq0PXMN+w4B8nqtJ8uib8mSiNAKvWGCepSjVY=;
        b=n6Bto7VT14lnorsC6BoJ1LdNu7FprM7QzeJux6qkxB5Mk0eKxigGz78OBptnuoNzmc
         xtXuD1gPTexzoVpCZ7xYBaOsl5ZEwXxwGc1xnNPH737+ntO79kMutwRr9RvjxqwBU6i1
         tv3hCNwXVaFAqPawGuXX0qpwDHkwtzxHN3YbpuRkQumUaBGEFDUDUYi7dMjxlzGtKPRE
         rmxBToaF36kaZtTF6XHw61NHHDJk3gmJ89hnGkku0PLc6zcHgMFlpe+WEXEY2UvTpYqd
         qmFE8+FIHRZenPLDzhYaT8IcVT1gceFGPyFAQjPURoRTT6+zNgfAeNMuDKRW65HaNXSg
         Acog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Iu77DAEq0PXMN+w4B8nqtJ8uib8mSiNAKvWGCepSjVY=;
        b=ZqN8xCruF3qfdTYI0bZ2rfYifjJH29mts48I7aGWkof/28B0YsFwE1xnvOOHPyGFCz
         u/AqLeUheIPYcZphQEPvL6t3F1ZEYaD+K97nFWUMynf9zz8get/Gbg6pz96k7B2gF/eT
         QyS0Rt0t5mOIG7IZw5Nblxa3Q6D+jfjVbwZzet5SUJKtkEeGKJkrLYhzatYgLhVLzssd
         9ECL5IX0Qh31mJoEgk6D10CYnd4qbueyANTiqv3VcO4pTZpGUdK1qjwU0knjQaFmjypd
         6Qe5LmZ/OCDok693NmP3EayqHCQc7j+C3Ex+LYBXSYERhxWUI+pJAfsd4AlMoCE4m5Zm
         Egkg==
X-Gm-Message-State: AOAM5308cbMPyh1QO+N8OSGwpeuLccNvtLN/nyCngY/nlMDyozoafjMl
	XM18vv4jcuJ/BIkqUKf0jY0pkssWtd4mS53sibk=
X-Google-Smtp-Source: 
 ABdhPJxeX1G6IT+t9PnsW/G4d1Zg9Jm95ql+O7kiBY9+OTR1H4SCIYlaSLpoMduyCne9LYlb2owyKhm/7FLXlWPEamM=
X-Received: by 2002:a05:6214:2429:: with SMTP id
 gy9mr7139170qvb.36.1639505540601;
 Tue, 14 Dec 2021 10:12:20 -0800 (PST)
MIME-Version: 1.0
References: <20211214095751.2290665-1-quentin.schulz@theobroma-systems.com>
In-Reply-To: <20211214095751.2290665-1-quentin.schulz@theobroma-systems.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 14 Dec 2021 10:11:54 -0800
Message-ID: 
 <CAMKF1sr-DKvszCUARpAS4UXmN7HseOCifRvMDNreNTFU8nbCOg@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] [PATCH v2] trusted-firmware-a: replace
 baudrate with the one specified in machine conf
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Trevor Woerner <twoerner@gmail.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Dec 2021 18:12:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55586

On Tue, Dec 14, 2021 at 3:39 AM Quentin Schulz
<quentin.schulz@theobroma-systems.com> wrote:
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
>
> v2: use a less restrictive regular expression
>
>  .../files/serial-console-baudrate.patch       | 36 -------------------
>  .../trusted-firmware-a_%.bbappend             |  6 +++-
>  2 files changed, 5 insertions(+), 37 deletions(-)
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
> index 513cea1..07fae1e 100644
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
> @@ -19,3 +18,8 @@ SRC_URI += "\
>  # this needs fixing until then use gcc
>  TOOLCHAIN:rk3399 = "gcc"
>
> +fixup_rk3399_baudrate() {
> +       sed -i "s/#define RK3399_BAUDRATE\s\+.*/#define RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/rk3399/rk3399_def.h
> +}
> +
> +do_patch[postfuncs] += "fixup_rk3399_baudrate"

perhaps applying the sed expression via do_configure:prepend() is simple ?
and maybe make it rk3399 specific with do_configure:prepend:rk3399

> --
> 2.33.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55580): https://lists.yoctoproject.org/g/yocto/message/55580
> Mute This Topic: https://lists.yoctoproject.org/mt/87719029/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

