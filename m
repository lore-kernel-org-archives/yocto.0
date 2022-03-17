Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE872C433F5
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 13:51:34 +0000 (UTC)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
 [209.85.217.51])
 by mx.groups.io with SMTP id smtpd.web08.10432.1647525093659515643
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 06:51:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CIMrmvmK;
 spf=pass (domain: gmail.com, ip: 209.85.217.51,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f51.google.com with SMTP id v62so5580038vsv.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 06:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AyVpOQ1jnJRwvBniazJprV4CQU7OiZmzsDjeyluucog=;
        b=CIMrmvmK18x0H9adz4hR47vHAGosmLOEs/nRFcUNPIk6//XkdcYAtRHZzF6RO5DSlI
         +TSzzfHVjXioQS8WDrVemgc3nmFfRfELxLIo63a3oarcyDXUcozc4WaKWXaHBrF3E7Dc
         nX+9/Jxinl0d+sAIyjWEQjOqu3QpcMVRFTKji3K5Jp6eEO5PPpYSifaABzpTsf0o9w1q
         XMisDPiWzvqdhIjIAK2wi3pNvTPxYCgumLn27OajUuQJe/GSV4bVYBVwe8vlnzj5QRlh
         XXPdd7mur6sD+C9Sr0KOkIw1EJep9kqAuePWObNyaelX53lsxu5QyE4BAKz3rKnnKKDH
         0ETA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AyVpOQ1jnJRwvBniazJprV4CQU7OiZmzsDjeyluucog=;
        b=8NWzTOOWRcLLDerqAWsi6jUimsXug0RSKF/I0z7ZgR5eqNxbonE2bN83AW3T3ahhdn
         UoV4pN2RKrclugMpf4R9tKnqY6iOlgqBX38b3owbGLrX6CBPGc/8tQeFeE6dt4UtGfvx
         e9O2J/1c+rQm4aGK9BSi/+0meIvNBklLAegibUfVN63oHTNJ6fHkfRPvb+3TXd+CMmQH
         R+Aa5aozIi/Xq+tDIU2nvXuIbBZ6SxRVqh0g/Q/MxonZoHfINbTyN6daYg9pBmsmIrMm
         7E22f7/QO9Ng4FJi2ogyNcCdbv+voYnnnu99S7ELvYj/WUQTPux0n9hvZ8WTFsnlZpaK
         Ojwg==
X-Gm-Message-State: AOAM531X98s9GYiDsUzgz76znNt+OqBWnjppo0d4TK9GiGjNoK4g1sgU
	1AfRbYn8OwVG2OlHHrgQNifZZD8YYvTeYKlq+Cs=
X-Google-Smtp-Source: 
 ABdhPJwuyI7XDWe3dodSTBERax+vQr7viKGKFCF5E1jsIXaD6Ib4+HXQblyuuIqRqT6n4ov8QjuUuIaJhNwthla2bn0=
X-Received: by 2002:a67:f6d9:0:b0:324:ba1f:1a94 with SMTP id
 v25-20020a67f6d9000000b00324ba1f1a94mr1569198vso.42.1647525092591; Thu, 17
 Mar 2022 06:51:32 -0700 (PDT)
MIME-Version: 1.0
References: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_5Msuteo-xTAZ3UeynnHKC9hWyWL_gc3_zH+ubHq_PGg@mail.gmail.com>
 <DM8PR16MB4357DD3F1C9DEAB3058508B5C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj9ousDr7Bci_6gFkXRFDvnr591vXyWeMmBLC=LWTWfKwg@mail.gmail.com>
 <DM8PR16MB4357E7702635621F70A968D4C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_VA0Ta_XiE9ionCSUhCZZ-sVmCSDQt3uQ62C+9vPA+oA@mail.gmail.com>
 <DM8PR16MB43579E0AB862CEFBE772AE42C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
In-Reply-To: 
 <DM8PR16MB43579E0AB862CEFBE772AE42C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Mar 2022 14:51:21 +0100
Message-ID: 
 <CANNYZj-Z5sGd7bUB0XuEVYL84BUTA-qsoYg9na1U1kV67nVSKQ@mail.gmail.com>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64:
 Virtio VGA not available.
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 13:51:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56479

There is no hardware acceleration with bochs at all, if you want it,
you need to make virtio/virgl driver work.

Alex

On Thu, 17 Mar 2022 at 14:02, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Do you know if bochs driver is available and active for yocto 3.4 or 3.5?
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Thursday, March 17, 2022 11:26 AM
> To: Edgar Mobile <heideggm@hotmail.com>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not available.
>
> As I told you, we do not support or test this combination. Which means
> that figuring out what the error messages mean and how to fix them is
> on you - patches welcome.
>
> Alex
>
> On Thu, 17 Mar 2022 at 11:41, Edgar Mobile <heideggm@hotmail.com> wrote:
> >
> > I tried that first and it was horribly slow. That's why I try hardware acceleration now.
> >
> > Do you _know_ it doesn't work? If yes, why?
> >
> > ________________________________
> > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > Sent: Thursday, March 17, 2022 10:33 AM
> > To: Edgar Mobile <heideggm@hotmail.com>
> > Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not available.
> >
> > If you want an aarch guest on x86, then drop the gl option from
> > runqemu. This will fall back to software rendering.
> >
> > Alex
> >
> > On Thu, 17 Mar 2022 at 10:33, Edgar Mobile <heideggm@hotmail.com> wrote:
> > >
> > > Sorry, but I need an Aarch64 guest.
> > >
> > > Ok, using a newer qemu I now encounter the following problem:
> > >
> > > root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=/run/user/0 ./eglinfo
> > > EGL client extensions string:
> > >     EGL_EXT_client_extensions EGL_EXT_device_base
> > >     EGL_EXT_device_enumeration EGL_EXT_device_query EGL_EXT_platform_base
> > >     EGL_KHR_client_get_all_proc_addresses EGL_KHR_debug
> > >     EGL_EXT_platform_device EGL_EXT_platform_wayland
> > >     EGL_KHR_platform_wayland EGL_EXT_platform_x11 EGL_KHR_platform_x11
> > >     EGL_MESA_platform_xcb EGL_MESA_platform_gbm EGL_KHR_platform_gbm
> > >     EGL_MESA_platform_surfaceless
> > >
> > > GBM platform:
> > > pci id for fd 3: 1234:1111, driver (null)
> > > MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-drm_dri.so: cannot open shared object file: No such file or directory (search paths /usr/lib/dri)
> > > failed to load driver: bochs-drm
> > > ...
> > >
> > >
> > > What is this bochs-drm_dri.so and does Yocto / the Mesa in Yocto provide it?
> > >
> > > ________________________________
> > > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > > Sent: Wednesday, March 16, 2022 2:51 PM
> > > To: Edgar Mobile <heideggm@hotmail.com>
> > > Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > > Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not available.
> > >
> > > This configuration is not tested. If you want accelerated gl, build
> > > for the qemux86-64 target.
> > >
> > > Alex
> > >
> > > On Wed, 16 Mar 2022 at 12:46, Edgar Mobile <heideggm@hotmail.com> wrote:
> > > >
> > > > Greetings,
> > > >
> > > > I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that purpose, I built core-image-weston from Hardknott following the manual
> > > >
> > > > https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html
> > > >
> > > > I then try to run
> > > >
> > > > runqemu sdl gl
> > > >
> > > > But it always aborts with
> > > >
> > > > runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not available.
> > > >
> > > > What can I do?
> > > >
> > > > Regards
> > > >
> > > > -=-=-=-=-=-=-=-=-=-=-=-
> > > > Links: You receive all messages sent to this group.
> > > > View/Reply Online (#56467): https://lists.yoctoproject.org/g/yocto/message/56467
> > > > Mute This Topic: https://lists.yoctoproject.org/mt/89819473/1686489
> > > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> > > > -=-=-=-=-=-=-=-=-=-=-=-
> > > >

