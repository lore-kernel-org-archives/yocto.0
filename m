Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29451C433EF
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 10:33:33 +0000 (UTC)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
 [209.85.221.179])
 by mx.groups.io with SMTP id smtpd.web09.8714.1647513212354494404
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 03:33:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UXl5iSgk;
 spf=pass (domain: gmail.com, ip: 209.85.221.179,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f179.google.com with SMTP id m84so2604617vke.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 03:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pKQmqJFUUYTprgZEhLuL7BterkUp71tLbKXEZBo7gDs=;
        b=UXl5iSgkOdQ8IJd3I1/CuwLkkZy+NyX04nDFDXDyf7V5j6cxwkE7SwwqddmPIcHck+
         HsnaK1KouYpWNOTwkhSK0ttxWONrQ/9b2Z7Bk99+lhjku5AYu9sXDWGKL/M3+e1wTjY/
         8K9KKG36OM+DGeTKUlnF7PIy3gCMuksvWdbbZFSOvwZslkXMsLHToW2osRIYm77oSy92
         Qk3GFd8i8rw3DwtHxMfZLmfEM1cLQc4KiqKiC173/Z7y9T45kmACQINhsGtgxpyWWtd7
         8/j8bNX9ZkvfS+Fdo1We/qYZE504BQeoASa9WlIVix2itXupLpa14VifeKCG6B5U3Nkc
         uE4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pKQmqJFUUYTprgZEhLuL7BterkUp71tLbKXEZBo7gDs=;
        b=Ecc3Djca3GxIZoHp1M7dyTaKa7lhIh4zsbJd6jFJF0AstdZJOZBIRlKkPEh6l7kUni
         ckRu9C726eO5njStU6J3BH4W+trDsOmp2A6zjWSC5gCifhwP9BwXYBGLePkf8XYJmC93
         Q7cnxWN/SUbbDGP2E5dn/eIZE9c71Lg1GEbO2s2NpOjZRP7sT3yaClEKUL7DaGBuNIMo
         iI7r0HD9hue6oJk4Ww1sgFUyu7NF9d1lFylLL81er81XyFKBRcdsik6Ws/PfGDj1gbaN
         tfZLozTygeOPeuuw6OscWCqBjPGF06A9+heMkRNLoj9nyLCkPwI4yaC8aPVZ0E7Md/8F
         QhKA==
X-Gm-Message-State: AOAM532iOTOMNWabLRBcodZLnuIDEcwbk9upKZFZ+bGMjlWqdLViUvg1
	XKt8yyuwmwgzA6biA09bYNLHl2hfKxN7a/D5KfU=
X-Google-Smtp-Source: 
 ABdhPJyrktaPjvka+2d+HDJi0ASu0TZk/A/7Gz7ID2LXICeyNcoJhhCKo5BXBX8+hPdyb0MN8pwCB/hFiTVkqFEW0fc=
X-Received: by 2002:a1f:50c4:0:b0:336:e84d:2873 with SMTP id
 e187-20020a1f50c4000000b00336e84d2873mr1517886vkb.30.1647513211431; Thu, 17
 Mar 2022 03:33:31 -0700 (PDT)
MIME-Version: 1.0
References: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_5Msuteo-xTAZ3UeynnHKC9hWyWL_gc3_zH+ubHq_PGg@mail.gmail.com>
 <DM8PR16MB4357DD3F1C9DEAB3058508B5C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
In-Reply-To: 
 <DM8PR16MB4357DD3F1C9DEAB3058508B5C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Mar 2022 11:33:20 +0100
Message-ID: 
 <CANNYZj9ousDr7Bci_6gFkXRFDvnr591vXyWeMmBLC=LWTWfKwg@mail.gmail.com>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64:
 Virtio VGA not available.
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 10:33:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56475

If you want an aarch guest on x86, then drop the gl option from
runqemu. This will fall back to software rendering.

Alex

On Thu, 17 Mar 2022 at 10:33, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Sorry, but I need an Aarch64 guest.
>
> Ok, using a newer qemu I now encounter the following problem:
>
> root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=/run/user/0 ./eglinfo
> EGL client extensions string:
>     EGL_EXT_client_extensions EGL_EXT_device_base
>     EGL_EXT_device_enumeration EGL_EXT_device_query EGL_EXT_platform_base
>     EGL_KHR_client_get_all_proc_addresses EGL_KHR_debug
>     EGL_EXT_platform_device EGL_EXT_platform_wayland
>     EGL_KHR_platform_wayland EGL_EXT_platform_x11 EGL_KHR_platform_x11
>     EGL_MESA_platform_xcb EGL_MESA_platform_gbm EGL_KHR_platform_gbm
>     EGL_MESA_platform_surfaceless
>
> GBM platform:
> pci id for fd 3: 1234:1111, driver (null)
> MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-drm_dri.so: cannot open shared object file: No such file or directory (search paths /usr/lib/dri)
> failed to load driver: bochs-drm
> ...
>
>
> What is this bochs-drm_dri.so and does Yocto / the Mesa in Yocto provide it?
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Wednesday, March 16, 2022 2:51 PM
> To: Edgar Mobile <heideggm@hotmail.com>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not available.
>
> This configuration is not tested. If you want accelerated gl, build
> for the qemux86-64 target.
>
> Alex
>
> On Wed, 16 Mar 2022 at 12:46, Edgar Mobile <heideggm@hotmail.com> wrote:
> >
> > Greetings,
> >
> > I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that purpose, I built core-image-weston from Hardknott following the manual
> >
> > https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html
> >
> > I then try to run
> >
> > runqemu sdl gl
> >
> > But it always aborts with
> >
> > runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not available.
> >
> > What can I do?
> >
> > Regards
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#56467): https://lists.yoctoproject.org/g/yocto/message/56467
> > Mute This Topic: https://lists.yoctoproject.org/mt/89819473/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

