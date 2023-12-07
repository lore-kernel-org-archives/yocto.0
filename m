Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3F5C4167B
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 10:54:45 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web11.79670.1701940733049542583
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Dec 2023 01:18:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aOgyI6rH;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-5c67c1ad5beso1356686a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 01:18:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701940732; x=1702545532; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ekkcJrZha9FSfadn5I8NGntEQNmkhZf/99u5/bqzT4=;
        b=aOgyI6rHULwgiZjcruwGU1dhHb33jPb67BYGnkWi8Gor+F5yZUC//FwVnuY8UB+OHH
         w6QYGKW7OuiTES+2EcPqMTZDBPBpwdc0Zui1j6KgTP0qvaX2ECU4l4KtSTxL6ScboyeH
         EMFpUdqhnIhPCvTPwb0kRYkiGfvitw+PwcN4cQG8F4jrsi8UL3vGqiqGPojiu0M2GJ2O
         7F/MtFnFnM5ZJe+CJRGkgNkvl+sUt+ciCRRqLkBtMom1G8LW3Z48Pew4R/uwe2AFsXus
         D3R7KDT/Sa5CPuSHg+TPp75X7NsHoJ6hYuMJxHcOpdIBZsMlxnGXTUiHfFGWNI9VsPBi
         Nsyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701940732; x=1702545532;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4ekkcJrZha9FSfadn5I8NGntEQNmkhZf/99u5/bqzT4=;
        b=wF3tcccergmBtH3sQQksAUXIiOqdh8rMIaz2PUmbRt7Gcv8q0v2EYoolExl3VyAG5T
         eO0xVg8Eq+uel0AP4xoFmZOW/6P51XXq7S+WdBdqtS+r/uXnsRSUXj4SwOYdtTvIAkE6
         X60trYdlOFt/SAJRLsPzu5gEQ+shf6Z2tuTTNmAWkCG96C+eXAhZNGxiapAIAhFCd7yi
         hDJ6vP0lmVu319GI3a9hpcWn7pbgqWJCd6lb4X+YKGN7qOxJ5bUCiicw/mIveyBTx0yL
         qcCdOu+iLYprvqr2nt64e8YXM86kcbf1wG6pAqO8VuX2KgBZ1BkhFlOaU4N+JuGzzpe0
         5tzw==
X-Gm-Message-State: AOJu0Yx5Xu2HwTMFiTg/WWHyl/MR3Tdx3yN0lF0QRMErPmcQGrX/WiMl
	/SHYv8slpfcHSuVrUTnYm7diRlUDx6jsPmC1I9o=
X-Google-Smtp-Source: AGHT+IGMFOUaKgy05ej+5iNRQu5q3RyKubzyWHQYsoVax/qm3vcfp7TGf/ybmHkQl2F50cAkvZfSxoCHwUw1RnGYA8Q=
X-Received: by 2002:a17:90a:bf17:b0:286:bcb2:f9bf with SMTP id
 c23-20020a17090abf1700b00286bcb2f9bfmr3384097pjs.32.1701940731927; Thu, 07
 Dec 2023 01:18:51 -0800 (PST)
MIME-Version: 1.0
References: <CADjezmYYxWD8YgFKQyboDhbO7V8OXrzHm5_N+aOJvjxth53btQ@mail.gmail.com>
In-Reply-To: <CADjezmYYxWD8YgFKQyboDhbO7V8OXrzHm5_N+aOJvjxth53btQ@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 7 Dec 2023 10:18:40 +0100
Message-ID: <CAGAf8Lx+svUurB=wawhyPog3KnuAZb39kv=6XaWGa87xNVg84g@mail.gmail.com>
Subject: Re: [yocto] initramfs creation
To: mattwood2000@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 10:54:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61823

Please, read carefully thru this yocto @ thread.

https://www.yoctoproject.org/pipermail/yocto/2018-July/041680.html

I hope this does help.

Zee
_______

On Wed, Dec 6, 2023 at 10:47=E2=80=AFPM <mattwood2000@gmail.com> wrote:
>
>  Hi,
>
> I'm trying to create a custom initramfs to handle some things before swit=
ching root to my actual filesystem.  I followed the docs and have been able=
 to use INITRAMFS_IMAGE =3D "custom-image" and INITRAMFS_IMAGE_BUNDLE =3D "=
1" to generate a zImage for my ARM platform.
>
> The custom-image.bb recipe is based on the core-image-minimal-initramfs r=
ecipe and is in a meta-layer that has another image recipe for the actual e=
MMC filesystem image.  Both the eMMC image and initramfs bundle are created=
.
>
> In custom-image.bb, PACKAGE_INSTALL includes INITRAMFS_SCRIPTS which seem=
 to be geared towards live-image things but that's not what I want.
>
> The image boots but hangs waiting for removable media.  I figured out tha=
t /init is not pointing to systemd but the live-image script from recipes-c=
ore/initrdscripts.
>
> For testing I manually symlinked systemd to /init and the board boots but=
 it wants a login password which was never created, I'm guessing its not in=
heriting debug-tweaks from my local.conf?
>
> So my question is, what is the correct way to create a minimal initramfs =
image along side the real recipe/image within a meta-layer?
>
> Does anyone have an example of doing this?
>
> Thanks, Matt.
>
>=20
>

