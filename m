Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C04C433F5
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 11:26:27 +0000 (UTC)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
 [209.85.222.48])
 by mx.groups.io with SMTP id smtpd.web09.9113.1647516386565429126
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 04:26:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cN6Dbp2v;
 spf=pass (domain: gmail.com, ip: 209.85.222.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f48.google.com with SMTP id i26so1938266uap.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 04:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fgicJDIjLfsIjf8uuvu0CeNxMthM2IPnQ1QiMn748uw=;
        b=cN6Dbp2vctWf4GDbOZzna/gjs5KjsfZvdgP1VkaEZcUngMrD743K3BnRs/xjqozYbB
         0bZUgICPtjB7R6LRqtv7h73WB1qIc3J1JAvD0wItDw+5J+SbOXY0z+xMkti5TDZf8Mmn
         2UlXR9dHyL7PonucNqW/ixfp8hQkWDEElexuc28e46o3uPrQ8Y/LbLqevGtgAk7DXa+1
         /Y/B2oD+Ia43y412cbTH8X1o1aZof/8m26JF2NdoDEfiqPFS5wmuPKiNBE/ilpmuRW2k
         lzmG4zZjUVtz7S5TM06J/Z0pH9kXTwLk/waXo5DAKN914wNIwYK1+4qhsxXgSijVLYH9
         m6ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fgicJDIjLfsIjf8uuvu0CeNxMthM2IPnQ1QiMn748uw=;
        b=zwZW4QPa1WSMWP9cpJ9GF39lj87Js0I+pAV0wwIKoYBdqslw2hPifFQEBb9DSOhaVm
         FuqdQkkuD7ZR2G/skyrfmH8ZrT3FCW4yQGBiwdkQlgP1lwaWta6Fm6aWQVnH6a5bgH8Q
         Seabcyh5R7Zo9j9/p1//wwySuU69+1F1HLaiMVFu1EyR3NmiqddRguHHTejbtuYNxhG5
         0cvCbEvlP/txJWH6O8to3BA3B2Y6x3VGBIMbQkEi5Lt1e5h1KscNCWl0hcG7kLNsKNxz
         tAOX8a9AMsPmOGFiX5et0C400gHU0ahXh/qpj4JkU4FMas/kCna+NrBW9WHfXg9qXImp
         FBtg==
X-Gm-Message-State: AOAM5324/k1bLP3xnKhWTa6lCT3Nua+eJ3GFZ6/Gow5zrV12uu5V6zcK
	m+u0OEpPug6HTclhWBSv57VeXZFCJ/Jlyf6jac0=
X-Google-Smtp-Source: 
 ABdhPJycVJu0PszUio0ZgeqRpvTvZDjQiZXDjwamlbwJCqUMaH2kvzHaNRuoHizJ5+gvAF9PRMklhD+xqyW9ylvSjv0=
X-Received: by 2002:ab0:3b16:0:b0:353:85ee:ad55 with SMTP id
 n22-20020ab03b16000000b0035385eead55mr629356uaw.20.1647516385566; Thu, 17 Mar
 2022 04:26:25 -0700 (PDT)
MIME-Version: 1.0
References: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_5Msuteo-xTAZ3UeynnHKC9hWyWL_gc3_zH+ubHq_PGg@mail.gmail.com>
 <DM8PR16MB4357DD3F1C9DEAB3058508B5C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj9ousDr7Bci_6gFkXRFDvnr591vXyWeMmBLC=LWTWfKwg@mail.gmail.com>
 <DM8PR16MB4357E7702635621F70A968D4C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
In-Reply-To: 
 <DM8PR16MB4357E7702635621F70A968D4C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Mar 2022 12:26:13 +0100
Message-ID: 
 <CANNYZj_VA0Ta_XiE9ionCSUhCZZ-sVmCSDQt3uQ62C+9vPA+oA@mail.gmail.com>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64:
 Virtio VGA not available.
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 11:26:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56477

As I told you, we do not support or test this combination. Which means
that figuring out what the error messages mean and how to fix them is
on you - patches welcome.

Alex

On Thu, 17 Mar 2022 at 11:41, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> I tried that first and it was horribly slow. That's why I try hardware acceleration now.
>
> Do you _know_ it doesn't work? If yes, why?
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Thursday, March 17, 2022 10:33 AM
> To: Edgar Mobile <heideggm@hotmail.com>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not available.
>
> If you want an aarch guest on x86, then drop the gl option from
> runqemu. This will fall back to software rendering.
>
> Alex
>
> On Thu, 17 Mar 2022 at 10:33, Edgar Mobile <heideggm@hotmail.com> wrote:
> >
> > Sorry, but I need an Aarch64 guest.
> >
> > Ok, using a newer qemu I now encounter the following problem:
> >
> > root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=/run/user/0 ./eglinfo
> > EGL client extensions string:
> >     EGL_EXT_client_extensions EGL_EXT_device_base
> >     EGL_EXT_device_enumeration EGL_EXT_device_query EGL_EXT_platform_base
> >     EGL_KHR_client_get_all_proc_addresses EGL_KHR_debug
> >     EGL_EXT_platform_device EGL_EXT_platform_wayland
> >     EGL_KHR_platform_wayland EGL_EXT_platform_x11 EGL_KHR_platform_x11
> >     EGL_MESA_platform_xcb EGL_MESA_platform_gbm EGL_KHR_platform_gbm
> >     EGL_MESA_platform_surfaceless
> >
> > GBM platform:
> > pci id for fd 3: 1234:1111, driver (null)
> > MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-drm_dri.so: cannot open shared object file: No such file or directory (search paths /usr/lib/dri)
> > failed to load driver: bochs-drm
> > ...
> >
> >
> > What is this bochs-drm_dri.so and does Yocto / the Mesa in Yocto provide it?
> >
> > ________________________________
> > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > Sent: Wednesday, March 16, 2022 2:51 PM
> > To: Edgar Mobile <heideggm@hotmail.com>
> > Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not available.
> >
> > This configuration is not tested. If you want accelerated gl, build
> > for the qemux86-64 target.
> >
> > Alex
> >
> > On Wed, 16 Mar 2022 at 12:46, Edgar Mobile <heideggm@hotmail.com> wrote:
> > >
> > > Greetings,
> > >
> > > I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that purpose, I built core-image-weston from Hardknott following the manual
> > >
> > > https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html
> > >
> > > I then try to run
> > >
> > > runqemu sdl gl
> > >
> > > But it always aborts with
> > >
> > > runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not available.
> > >
> > > What can I do?
> > >
> > > Regards
> > >
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#56467): https://lists.yoctoproject.org/g/yocto/message/56467
> > > Mute This Topic: https://lists.yoctoproject.org/mt/89819473/1686489
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > >

