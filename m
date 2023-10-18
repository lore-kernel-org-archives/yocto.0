Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81993CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 09:09:05 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.277693.1697620143295647006
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 02:09:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ej5rvRPI;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2bfed7c4e6dso85324311fa.1
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 02:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697620141; x=1698224941; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yt7MkeG6fxVg33AtfP+xa7WaQ1Djnxl/jeYiP9m7sHg=;
        b=ej5rvRPInBMLpWyMMsiuW5zljFg4ukz5AUk+FM0kXZ9lZ1neHhN71Wt/lze3sWZKFI
         Itt7No4xA/aZQ2IaW62QUpfYB1eQs7Niq1ZKHNrza1/LqxVrfUIPEWE4CdJ9K/FUHRqE
         j6dL8E0AE2iJEKeEirRBThlPeU7CgIRJp0OQFrmMFOG/leOTYEE7sKgIteXeG9OjvRxC
         NLEx/sjYOrx6FUmjDdjM4SYpYLRhRylMxf/YraWGhGpApbuaqwf8vugNRrPS5hp9lg32
         mXpnHE6p4AbyBRfQ+elrdjkx90GuYU9aEeZD56QzP15O+myi+qmwEFH7feQFwVsn8J1T
         00vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697620141; x=1698224941;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yt7MkeG6fxVg33AtfP+xa7WaQ1Djnxl/jeYiP9m7sHg=;
        b=hHy7L08RUr+2fehZRY5oWN5W/Z7IOL3PgNwXSQeSR23FgRbG5+QLbcfn3/YqoP0hNL
         dfY2DT1gVzM9YSCU7/j/ZAm3YcgGE6qI0tfl5d/foX8gL5Avp3PcT28oEssRN2U8m+aF
         2cMC3z0K56nbm+UgyVsvxRBzeqFelGVkyFlvA8jcRYPX6ddgkpYhbKWbhkD7IHwz+0F6
         DN/GI7QfLFGcwrU+NXzaeO3kBZF1hXwmFksKRRVYD6lUMwPLf3nwL5y81sJQm8fEIK/F
         Nwjtqg9hnCA7FOmP7t4iUgPhHKuk8iovHjdHNQPBYUiKQMka2Er5146LyeGzTgtjmm8z
         QLjA==
X-Gm-Message-State: AOJu0YyS/ODHtikvHXuQvk944Qjx1qEALTOIQ79+qEeY9vSzO8uBJn4r
	MwfmcM+TtQqywYeb44GCO/MIQeeDGjr0n0MRBW0=
X-Google-Smtp-Source: AGHT+IGG0xsB0t8UBsqM37lEyoBITUVJ+8EL2CjJs/Pv6HfBrZZFGStdWGPO2px76WEl7QtTJ03t8ggSQnh1a1YpgOQ=
X-Received: by 2002:a2e:9604:0:b0:2c5:1603:9c48 with SMTP id
 v4-20020a2e9604000000b002c516039c48mr3559700ljh.20.1697620140966; Wed, 18 Oct
 2023 02:09:00 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8P62x8q5TP59Xhajq6XNS6--Ox-G+N2pEH9hnr=Hoo=A@mail.gmail.com>
 <30180.1697619630482083755@lists.yoctoproject.org>
In-Reply-To: <30180.1697619630482083755@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 18 Oct 2023 11:08:49 +0200
Message-ID: <CANNYZj8Rj08B4vvQ8EC6v3S31U9ZAWoxdmJzh43T6CpoK5bqww@mail.gmail.com>
Subject: Re: [yocto] Remove packagegroup from image recipes
To: Ivan Stojanovic <ivastojanovic@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 09:09:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61391

Ugh, that's a really ugly hack in meta-rauc. They shouldn't force
themselves into all images that way. You should file a ticket.

I would suggest either dropping rauc from DISTRO_FEATURES globally
(that may have unwanted side effects though and you should check what
else that affects), or using BBMASK as shown in reference manual to
blacklist the offending bbappend, e.g. something like:

         BBMASK +=3D "/meta-ti/recipes-misc/ meta-ti/recipes-ti/packagegrou=
p/"


Alex

On Wed, 18 Oct 2023 at 11:00, Ivan Stojanovic <ivastojanovic@gmail.com> wro=
te:
>
> We have 2 images, adios-image-standard and adios-image-recovery.
> In adios-image-standard, I want to have rauc.
> In adios-image-recovery due to lack of space, I want to remove it. It is =
a part of it since it is in DISTRO_FEATURES.
>
> In meta-rauc layer, they add rauc to pacakgegroup-base: https://github.co=
m/rauc/meta-rauc/blob/kirkstone/recipes-core/packagegroups/packagegroup-bas=
e.bbappend via https://github.com/rauc/meta-rauc/blob/kirkstone/recipes-cor=
e/packagegroups/packagegroup-base_rauc.inc.
>
> I tried removing it with PACKAGE_EXCLUDE:
> PACKAGE_EXCLUDE =3D "\
>   packagegroup-base-rauc \
> "
> as well as
> PACKAGE_EXCLUDE =3D "\
>   rauc \
>   rauc-mark-good \
>   rauc-service \
> "
> I also tried with:
> RDEPENDS:packagegroup-base:remove "packagegroup-base-rauc"
>
> But in both cases I get that error.
> I do not have any idea how I could remove it from DISTRO_FEATURES for tha=
t image. I think that is not possible.
>
> If I remove it "manually" using ROOTFS_POSTPROCESS_COMMAND, I have to tak=
e care of all dependencies as well and it would be still be visible in .man=
ifest file that it is there although it is not.
>
> That is why I am looking for a more elegant way to achive it.
>
> Thanks!
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61390): https://lists.yoctoproject.org/g/yocto/messag=
e/61390
> Mute This Topic: https://lists.yoctoproject.org/mt/102035396/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

