Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 026C2C433EF
	for <webhook@archiver.kernel.org>; Fri, 10 Dec 2021 16:16:01 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
 [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web12.9278.1639152960202167236
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Dec 2021 08:16:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LZiGMgzw;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id g9so8421160qvd.2
        for <yocto@lists.yoctoproject.org>;
 Fri, 10 Dec 2021 08:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=LBTDrqvquTBM1+YEZp2GF/iD6UoVIHHi0mlvqLPLPJg=;
        b=LZiGMgzwP5VIVU1clc2pBRCaWEWNDxEtbdeargb6WlJyDwlHCITEAVrjV333vKV1SH
         pAD+IxVmjWoJKVHNbIxRkHr7d5xWY5tTdbei0OYg/pQOW2O1k4Jx9p2efbOZ7BWmw3SZ
         quFXLIkOapFPVDuBDKrHPqxr8jwnTLcLtfP9GeXRS81bhFE9Zln7eOmwjTBytyIaXl5q
         CUU7bYI3+caqH2qlbMxlJo3C/dcLGzvtXlM9ECtJhT2bAlt1N4hBx1LClMQcx8c01i7y
         W3MOJMGZvDIe0cM79rFjN65h3L7B3CVoMZKWKtapDDIwIdZC3phXe99Lj+hkU9uFIvsE
         Ax/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=LBTDrqvquTBM1+YEZp2GF/iD6UoVIHHi0mlvqLPLPJg=;
        b=mymJil+x7ZEDbVBncDCKeBY5xNxSpTbOmIXKHjEh10fSyzKMaQGMcBfE1JPrFpzVzt
         l7qyk1B6BP/t5SF+Yb4mm+uVvnH2r+YirQXdMS+/WjLRtC13yH5igfkIZyOfdXeDGvfP
         KP6QibrITZWe4yGawq9bvufgYkjvvrOTrnzXNEGDMjnZqV+aNQEN44rTrhnknmj6TTv5
         jgK7ytFweYHHZ0262OlitTeB/7qCuymH306fzoh2e4tQhhMPN1U9KCVmb7DoHxJXrGcv
         13+FADfwH+iFUyFi25texrGYRVrIxKp0df689vP74sEKWl44aEiHyxDE7Y/RnVgGrUkF
         twTw==
X-Gm-Message-State: AOAM531opFZpU9V3udvOI4dytAwOmtdryZgOJo+CXTnnf9u9WOdUGfpu
	Bf7i5IsmcrsO/iUh0MoEV081JwP6wCU=
X-Google-Smtp-Source: 
 ABdhPJxXLSJrMOLRrEQsq88VLyIB6EMtvDRUFOzlbvPxKRxwsvAfjJ+lOs9cRZTBAnx5ZAPiH59y+A==
X-Received: by 2002:a05:6214:e4b:: with SMTP id
 o11mr26503717qvc.110.1639152959273;
        Fri, 10 Dec 2021 08:15:59 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 s4sm1451869qko.47.2021.12.10.08.15.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 08:15:58 -0800 (PST)
Date: Fri, 10 Dec 2021 11:15:56 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org, Quentin Schulz <foss@0leil.net>
Subject: Re: [meta-rockchip][PATCH] trusted-firmware-a: replace baudrate with
 the one specified in machine conf
Message-ID: <20211210161556.GA22661@localhost>
References: <20211111170002.2023006-1-quentin.schulz@theobroma-systems.com>
 <20211210144339.GA26689@localhost>
 <20211210145019.uoqk2f2zhexdibha@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211210145019.uoqk2f2zhexdibha@fedora>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Dec 2021 16:16:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55548

On Fri 2021-12-10 @ 03:50:19 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On Fri, Dec 10, 2021 at 09:43:39AM -0500, Trevor Woerner wrote:
> > On Thu 2021-11-11 @ 06:00:02 PM, Quentin Schulz wrote:
> > > Not all Rockchip boards have their console running at 1500000 baud in
> > > U-Boot and the kernel. Such is the case for puma-haikou RK3399-based
> > > SoM+Carrierboard.
> > > 
> > > In order to prepare for the addition of puma-haikou to meta-rockchip,
> > > let's replace the baudrate in TF-A by the one defined in the machine
> > > conf file in the RK_CONSOLE_BAUD variable.
> > > 
> > > Cc: Quentin Schulz <foss@0leil.net>
> > > Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > > ---
> > >  .../files/serial-console-baudrate.patch       | 36 -------------------
> > >  .../trusted-firmware-a_%.bbappend             |  7 +++-
> > >  2 files changed, 6 insertions(+), 37 deletions(-)
> > >  delete mode 100644 recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> > > 
> > > diff --git a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> > > deleted file mode 100644
> > > index 2d6e9bf..0000000
> > > --- a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> > > +++ /dev/null
> > > @@ -1,36 +0,0 @@
> > > -From 840d6b6420e1fd8cdf6e4de7fa58a6f8de151622 Mon Sep 17 00:00:00 2001
> > > -From: Yann Dirson <yann@blade-group.com>
> > > -Date: Tue, 6 Apr 2021 17:28:45 +0200
> > > -Subject: [PATCH] Set serial console baudrate back to 1500000.
> > > -Upstream-Status: Inappropriate[other]
> > > -
> > > -TF-A runs between two u-boot stages which both uses 1500000 baud, it
> > > -just makes no sense to use the same UART at a different rate.
> > > -
> > > -This effectively reverts part of 0c05748bdebfad9fa43a80962186438bb8fbce62.
> > > -Main reason for that change stated in https://urldefense.proofpoint.com/v2/url?u=https-3A__developer.trustedfirmware.org_T762&d=DwIBaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=TULURVxAXuoOr1qm-lWPJ4RyXC82jen1-RFqhySvz2ZLazQ8DA84GQ7T4MccEcQp&s=7WhFJXuPJAZq8RxczqF3HrMD5JqRZdJ8MyMU9iEnq44&e= 
> > > -is ChromeOS compatibility.
> > > -
> > > -Looks like this patch may become unnecessary in the future, when
> > > -u-boot and TF-A get to communicate this value.
> > > -
> > > ----
> > > - plat/rockchip/rk3399/rk3399_def.h | 2 +-
> > > - 1 file changed, 1 insertion(+), 1 deletion(-)
> > > -
> > > -diff --git a/plat/rockchip/rk3399/rk3399_def.h b/plat/rockchip/rk3399/rk3399_def.h
> > > -index ba83242eb..8d6ecfbe6 100644
> > > ---- a/plat/rockchip/rk3399/rk3399_def.h
> > > -+++ b/plat/rockchip/rk3399/rk3399_def.h
> > > -@@ -17,7 +17,7 @@
> > > - /**************************************************************************
> > > -  * UART related constants
> > > -  **************************************************************************/
> > > --#define RK3399_BAUDRATE			115200
> > > -+#define RK3399_BAUDRATE			1500000
> > > - #define RK3399_UART_CLOCK		24000000
> > > - 
> > > - /******************************************************************************
> > > --- 
> > > -2.30.2
> > > -
> > > diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > index f7777a7..0d06c44 100644
> > > --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > @@ -7,9 +7,14 @@ COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
> > >  
> > >  FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
> > >  SRC_URI += "\
> > > -    file://serial-console-baudrate.patch \
> > >      file://0001-Fix-build-with-gcc-11.patch \
> > >      file://0001-dram-Fix-build-with-gcc-11.patch \
> > >      file://0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch \
> > >      file://0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch \
> > >  "
> > > +
> > > +fixup_rk3399_baudrate() {
> > > +	sed -i "s/#define RK3399_BAUDRATE			115200/#define RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/rk3399/rk3399_def.h
> > > +}
> > 
> > This looks fragile to me, any change in the number of spaces/tabs and this
> > line will stop working. Thankfully the symbol RK3399_BAUDRATE only appears
> > once in this file! That will allow us to do something like the following
> > instead:
> > 
> > 	sed '/RK3399_BAUDRATE.*/RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/d'
> > 
> 
> Would
> sed -i "s/#define RK3399_BAUDRATE\s\+.*/#define RK3399_BAUDRATE plep/" ${S}/plat/rockchip/rk3399/rk3399_def.h
> 
> work for you?
> This makes sure that only RK3399_BAUDRATE definition will be changed, no
> comment, no RK3399_BAUDRATE_OTHER_VAR or RK3399_BAUDRATE being used in
> code/other constant in this file.

Sounds good.

