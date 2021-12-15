Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3966C433F5
	for <webhook@archiver.kernel.org>; Thu, 16 Dec 2021 01:44:18 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web09.505.1639598037759318629
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Dec 2021 11:53:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MjIS32Ia;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id o10so858505qvc.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 15 Dec 2021 11:53:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AuDSrhmyF7Kb5pVn21bmN0UBhnGlHzwvvrWWu01XsPY=;
        b=MjIS32IaCMil2bep0oFSpXKzCQbH0DsrgDV1rDY39j0n2A29IAojemvheZxNqmjS9x
         sONshGcEkdNAXkbhF/eEK03p48o6ypciEIQcG9TJ0NKYFZmQ/o3DdM9DeI2sWakID5FX
         7OUIYfOeFxAHJf85t6USNB7Fi1BVoeWohHjNfYmY2fGE4x0pFha4ojF8n6nPrnSKACMg
         9TQD8z3VAgd+OOyg/2bO0jm/xR+cxFYXGoqIzJTq1oSd8Vfxlu18KeHtBf7Zk+3WEUDe
         Gb4p1IlFLrvUctRXrfCZGGf8jQTBUzBUNjrEFz+v4zrIw0ou8khHrQ0xLQfcnrYNpVFt
         I2zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AuDSrhmyF7Kb5pVn21bmN0UBhnGlHzwvvrWWu01XsPY=;
        b=SssH/8+z0q2yBZY+fPFjVb1cruZ6XLzjjWyE7kkuhcJ9NuUW8vGWngwUEO6RO52ip0
         y0hGLBJz4mjokym9zSGbynvN98D2hQczZd9wvUO7lJ2eUZ4QHohb8RNKkoW2XwjMSVeF
         RKToX5XUO+CzATJtXdZkKpqm1WzNohxBzKofeoYXdx5Mc2+lapasue+KsZobeNV9r1Sj
         HEV5s2lUUAUW+LC4cnJsXUtZVokKN0luaycb95WHKItxq2qG1gh6eeiIb7rYaEdb6F8c
         5rvL48WdrCHvCvw+fYvroAxVW067SfPRBftgHvDMwTsXWy6AWW44MzQf0HUl7PLrubsT
         c2Rg==
X-Gm-Message-State: AOAM531EAxc6AJPIlDrVH12IyIhGUKnidl7cncXTGsFZ8CmPFeu3h55Q
	jht6MZF7gxK8eqry39rdP8U=
X-Google-Smtp-Source: 
 ABdhPJxeXUhTc+VoxWWgh/Jzgg+5Kd1RU6HmOhuw+wg5dLfUMGNHFh48gqFCh7S0ssjKT0HBObiLTA==
X-Received: by 2002:a05:6214:1c4a:: with SMTP id
 if10mr12729476qvb.49.1639598036888;
        Wed, 15 Dec 2021 11:53:56 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 14sm2189189qtx.84.2021.12.15.11.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 11:53:56 -0800 (PST)
Date: Wed, 15 Dec 2021 14:53:54 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Khem Raj <raj.khem@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [meta-rockchip] [PATCH v2] trusted-firmware-a: replace
 baudrate with the one specified in machine conf
Message-ID: <20211215195354.GA39316@localhost>
References: <20211214095751.2290665-1-quentin.schulz@theobroma-systems.com>
 <CAMKF1sr-DKvszCUARpAS4UXmN7HseOCifRvMDNreNTFU8nbCOg@mail.gmail.com>
 <20211215152047.pz33f2kiuldihjqn@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211215152047.pz33f2kiuldihjqn@fedora>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Dec 2021 01:44:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55596

On Wed 2021-12-15 @ 04:20:47 PM, Quentin Schulz wrote:
> Hi Khem,
> 
> On Tue, Dec 14, 2021 at 10:11:54AM -0800, Khem Raj wrote:
> > On Tue, Dec 14, 2021 at 3:39 AM Quentin Schulz
> > <quentin.schulz@theobroma-systems.com> wrote:
> > >
> > > Not all Rockchip boards have their console running at 1500000 baud in
> > > U-Boot and the kernel. Such is the case for puma-haikou RK3399-based
> > > SoM+Carrierboard.
> > >
> > > In order to prepare for the addition of puma-haikou to meta-rockchip,
> > > let's replace the baudrate in TF-A by the one defined in the machine
> > > conf file in the RK_CONSOLE_BAUD variable.
> > >
> > > Cc: Quentin Schulz <foss+yocto@0leil.net>
> > > Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > > ---
> > >
> > > v2: use a less restrictive regular expression
> > >
> > >  .../files/serial-console-baudrate.patch       | 36 -------------------
> > >  .../trusted-firmware-a_%.bbappend             |  6 +++-
> > >  2 files changed, 5 insertions(+), 37 deletions(-)
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
> > > -Main reason for that change stated in https://urldefense.proofpoint.com/v2/url?u=https-3A__developer.trustedfirmware.org_T762&d=DwIBaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=MGuJiAJcTH-5vXWFahwY8w58v88VHX-B3gl_Qbo3NSRaMXS1EfPbxRWECgCDt3wO&s=P_BZb0-FTKKpmyBRgwgtL7OgfLI_iSC_nn_FBSQXE8o&e= 
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
> > > --#define RK3399_BAUDRATE                       115200
> > > -+#define RK3399_BAUDRATE                       1500000
> > > - #define RK3399_UART_CLOCK             24000000
> > > -
> > > - /******************************************************************************
> > > ---
> > > -2.30.2
> > > -
> > > diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > index 513cea1..07fae1e 100644
> > > --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > @@ -7,7 +7,6 @@ COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
> > >
> > >  FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
> > >  SRC_URI += "\
> > > -    file://serial-console-baudrate.patch \
> > >      file://0001-dram-Fix-build-with-gcc-11.patch \
> > >      file://0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch \
> > >      file://0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch \
> > > @@ -19,3 +18,8 @@ SRC_URI += "\
> > >  # this needs fixing until then use gcc
> > >  TOOLCHAIN:rk3399 = "gcc"
> > >
> > > +fixup_rk3399_baudrate() {
> > > +       sed -i "s/#define RK3399_BAUDRATE\s\+.*/#define RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/rk3399/rk3399_def.h
> > > +}
> > > +
> > > +do_patch[postfuncs] += "fixup_rk3399_baudrate"
> > 
> > perhaps applying the sed expression via do_configure:prepend() is simple ?
> > and maybe make it rk3399 specific with do_configure:prepend:rk3399
> > 
> 
> It is effectively patching the sources, and I'd personally expect
> sources to not be changed after running -c do_patch for a recipe.

I don't have strong feelings either way, but it does feel more like a patching
operation than a configuration one.

