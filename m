Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01460C433F5
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 22:37:37 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web09.18423.1639435056414347721
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 14:37:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Hap64a7d;
 spf=pass (domain: gmail.com, ip: 209.85.222.174,
 mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id b67so15341718qkg.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 14:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rGUnRJG5ywHuKVX9uKm2Bqnel8r3GirYFVAQLpjAUo0=;
        b=Hap64a7dztw6ROCODKwdEmhDcvsij9np2kQj49aqMfJ36Rh4EUzGp6IKfk6Bi+3sQl
         ImvuoFZSf2PlO8BSMZx3ZXHMdHR3kDtdiF8ZUIO+gQgXjYjsefcdLA02sOFSXNTjYity
         K4VWgIb0yRr99AGhh7IHmU8CqgXdO35YA2BEihyWzXXelxUoDAv5QboCiOup9iyZDGoz
         AlA8XNC+WSTMWrryletHnyLkp+sNJkDf1c7FGg9mXJ1B9ARc1IkWFt/zgTr7d9OEhxEt
         91ep/dMy5QYHOgzsj5n7rDJ/HOoXAX1yWTYUD9zXpiTTY4E8XP5v/jwn4xoCqjfez4DP
         5Hlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rGUnRJG5ywHuKVX9uKm2Bqnel8r3GirYFVAQLpjAUo0=;
        b=o4nEjUiz2DwXYTFlWbHf0iD5V7mWLReBpPAjEMUNJ9QrzcKRBfdTgCrp6XECR3zUdC
         QPluMXJY94foZGJgo3zGaMRyHpH7UcPxJTO876tG70GFpgx8HCs1dWzFtfJRuUu5DFbE
         wBx3+1KplafixuvyjRmRSPkLvQItZTRSarKXhUK+/xHR4DM0BJgx2TYiVTsI6VkpVjeX
         vLOOAq/cf44siHqFxfjYdOR3jnc3efTOzMGwcfwq+Fkb+1X5nZ2HdWGs34Q+8y+BzuFi
         jUcza9ZoRCau2FoYPseEPIDJopYk3oA+SC9oJySGhVGtiQ8qNwsnCghepPRaUIzbA105
         yhcw==
X-Gm-Message-State: AOAM533TDu+5i59znhO6nULLC/Rc4g/riSzOizkdrvoVD4Vi7zWBmNx9
	+5RCQ8HeN3m06qwzeoygjQcgGm/t7xM=
X-Google-Smtp-Source: 
 ABdhPJxG9Pr9LrHY5SY34w67EUQAK9XhSoO2V2fris8zNKN5RcskaS3/fcv7MhyDQBz6zfJwCud4Fw==
X-Received: by 2002:a05:620a:4096:: with SMTP id
 f22mr1019040qko.600.1639435055427;
        Mon, 13 Dec 2021 14:37:35 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 d11sm9730210qtj.4.2021.12.13.14.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 14:37:34 -0800 (PST)
Date: Mon, 13 Dec 2021 17:37:32 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	yocto@lists.yoctoproject.org, Quentin Schulz <foss@0leil.net>
Subject: Re: [yocto] [meta-rockchip][PATCH] trusted-firmware-a: replace
 baudrate with the one specified in machine conf
Message-ID: <20211213223732.GA40940@localhost>
References: <20211111170002.2023006-1-quentin.schulz@theobroma-systems.com>
 <20211210144339.GA26689@localhost>
 <20211210145019.uoqk2f2zhexdibha@fedora>
 <16BF70EEDDE19961.29912@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <16BF70EEDDE19961.29912@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 22:37:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55570

On Fri 2021-12-10 @ 11:15:56 AM, Trevor Woerner via lists.yoctoproject.org wrote:
> On Fri 2021-12-10 @ 03:50:19 PM, Quentin Schulz wrote:
> > Hi Trevor,
> > 
> > On Fri, Dec 10, 2021 at 09:43:39AM -0500, Trevor Woerner wrote:
> > > On Thu 2021-11-11 @ 06:00:02 PM, Quentin Schulz wrote:
> > > > Not all Rockchip boards have their console running at 1500000 baud in
> > > > U-Boot and the kernel. Such is the case for puma-haikou RK3399-based
> > > > SoM+Carrierboard.
> > > > 
> > > > In order to prepare for the addition of puma-haikou to meta-rockchip,
> > > > let's replace the baudrate in TF-A by the one defined in the machine
> > > > conf file in the RK_CONSOLE_BAUD variable.
> > > > 
> > > > Cc: Quentin Schulz <foss@0leil.net>
> > > > Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > > > ---
> > > >  .../files/serial-console-baudrate.patch       | 36 -------------------
> > > >  .../trusted-firmware-a_%.bbappend             |  7 +++-
> > > >  2 files changed, 6 insertions(+), 37 deletions(-)
> > > >  delete mode 100644 recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> > > > 
> > > > diff --git a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch b/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> > > > deleted file mode 100644
> > > > index 2d6e9bf..0000000
> > > > --- a/recipes-bsp/trusted-firmware-a/files/serial-console-baudrate.patch
> > > > +++ /dev/null
> > > > @@ -1,36 +0,0 @@
> > > > -From 840d6b6420e1fd8cdf6e4de7fa58a6f8de151622 Mon Sep 17 00:00:00 2001
> > > > -From: Yann Dirson <yann@blade-group.com>
> > > > -Date: Tue, 6 Apr 2021 17:28:45 +0200
> > > > -Subject: [PATCH] Set serial console baudrate back to 1500000.
> > > > -Upstream-Status: Inappropriate[other]
> > > > -
> > > > -TF-A runs between two u-boot stages which both uses 1500000 baud, it
> > > > -just makes no sense to use the same UART at a different rate.
> > > > -
> > > > -This effectively reverts part of 0c05748bdebfad9fa43a80962186438bb8fbce62.
> > > > -Main reason for that change stated in https://urldefense.proofpoint.com/v2/url?u=https-3A__developer.trustedfirmware.org_T762&d=DwIBaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=TULURVxAXuoOr1qm-lWPJ4RyXC82jen1-RFqhySvz2ZLazQ8DA84GQ7T4MccEcQp&s=7WhFJXuPJAZq8RxczqF3HrMD5JqRZdJ8MyMU9iEnq44&e= 
> > > > -is ChromeOS compatibility.
> > > > -
> > > > -Looks like this patch may become unnecessary in the future, when
> > > > -u-boot and TF-A get to communicate this value.
> > > > -
> > > > ----
> > > > - plat/rockchip/rk3399/rk3399_def.h | 2 +-
> > > > - 1 file changed, 1 insertion(+), 1 deletion(-)
> > > > -
> > > > -diff --git a/plat/rockchip/rk3399/rk3399_def.h b/plat/rockchip/rk3399/rk3399_def.h
> > > > -index ba83242eb..8d6ecfbe6 100644
> > > > ---- a/plat/rockchip/rk3399/rk3399_def.h
> > > > -+++ b/plat/rockchip/rk3399/rk3399_def.h
> > > > -@@ -17,7 +17,7 @@
> > > > - /**************************************************************************
> > > > -  * UART related constants
> > > > -  **************************************************************************/
> > > > --#define RK3399_BAUDRATE			115200
> > > > -+#define RK3399_BAUDRATE			1500000
> > > > - #define RK3399_UART_CLOCK		24000000
> > > > - 
> > > > - /******************************************************************************
> > > > --- 
> > > > -2.30.2
> > > > -
> > > > diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > > index f7777a7..0d06c44 100644
> > > > --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > > +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> > > > @@ -7,9 +7,14 @@ COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
> > > >  
> > > >  FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
> > > >  SRC_URI += "\
> > > > -    file://serial-console-baudrate.patch \
> > > >      file://0001-Fix-build-with-gcc-11.patch \
> > > >      file://0001-dram-Fix-build-with-gcc-11.patch \
> > > >      file://0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch \
> > > >      file://0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch \
> > > >  "
> > > > +
> > > > +fixup_rk3399_baudrate() {
> > > > +	sed -i "s/#define RK3399_BAUDRATE			115200/#define RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/" ${S}/plat/rockchip/rk3399/rk3399_def.h
> > > > +}
> > > 
> > > This looks fragile to me, any change in the number of spaces/tabs and this
> > > line will stop working. Thankfully the symbol RK3399_BAUDRATE only appears
> > > once in this file! That will allow us to do something like the following
> > > instead:
> > > 
> > > 	sed '/RK3399_BAUDRATE.*/RK3399_BAUDRATE ${RK_CONSOLE_BAUD}/d'
> > > 
> > 
> > Would
> > sed -i "s/#define RK3399_BAUDRATE\s\+.*/#define RK3399_BAUDRATE plep/" ${S}/plat/rockchip/rk3399/rk3399_def.h
> > 
> > work for you?
> > This makes sure that only RK3399_BAUDRATE definition will be changed, no
> > comment, no RK3399_BAUDRATE_OTHER_VAR or RK3399_BAUDRATE being used in
> > code/other constant in this file.
> 
> Sounds good.

Am I correct in thinking a v2 is coming (or did it get swallowed up by my mail
client)?

Otherwise, I can just fixup your v2 and apply it if you wish?

> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55548): https://lists.yoctoproject.org/g/yocto/message/55548
> Mute This Topic: https://lists.yoctoproject.org/mt/86986964/900817
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [twoerner@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


