Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B828EC3600B
	for <webhook@archiver.kernel.org>; Thu, 27 Mar 2025 10:38:18 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.46876.1743071893123865845
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Mar 2025 03:38:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BDcsPodn;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-476ab588f32so12435721cf.2
        for <yocto@lists.yoctoproject.org>; Thu, 27 Mar 2025 03:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743071892; x=1743676692; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NTKSBx5NmfxxEk39nu39FddovrufVJBikhvjgWxTkFY=;
        b=BDcsPodnbpx9GqvC4w+Fst+FbnuPjgBDsYzjwCYMfoZ1ez25hgITI2WHMrh8wvLN10
         WQorqMjU3L0YfGRhSOZ0gZ2C1UAzG2s+4mQ+XeAGk3Mkh6adqESGQoT89BG4+5VxtKDC
         tVe9aPPYW0mMyCvPbbXOZvqvaS/QuWQFq+NGxGV2n+vrCMGLJDsfHFa0JVqrOT5EyGvV
         i9aFwVgWpPfHUrmKBgD50S6a4jik+lRxODvzdc18f1OXekbgCoEPdVfRG5UdBLsvUGij
         11zoEJuughbTsyG/SrzLnxjfLSE4Mk+u0/0sRfpCTVu/GwcHcBijz53nKrykU+bYKsCx
         YzaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743071892; x=1743676692;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NTKSBx5NmfxxEk39nu39FddovrufVJBikhvjgWxTkFY=;
        b=eBoaoqR9wKM2ZZZrYgWJy793D5Bnn5aOJAR2yqInUED64I9xjr2rcww61GEqYm89lz
         DjghdZv3qq+ELWWAMvzIxBjH7cWUIsFDkBKPHWiEI2odu+W07ToECi6Mhz/KmOejzypv
         YFywxuMbTi0AIpX5kZ8ny4noTqAishc8gq9jb30BajwsJKBGnt/By2HL3RKlmk6xOMxa
         otSaq2Ot8Qp2ZGwkH751OKXoDTXp8JB4jwPbIi4/wF0D+epUwFAFQoZWvTg0Wo1HnKjK
         mR5K5yMZm40xxHEid3dViJJDdeG8Sd2kJytxZjLaIjVMEBkUkYXsKLu3GofO0wWDd+MD
         zPdQ==
X-Gm-Message-State: AOJu0YyqHpbYRZh/CohPqCOv8pvO2lDmkUxvxqmMF0bHFttNiiOVNvco
	w/ihftxFLMw5LsomhtwkIqcJjN56t3lGQIqV9eEWJIak866j0x2uQOqSfQiAmbblVU3qUsDl/tj
	kwPg9A+z59ka3a6/l73fFoycw4UK8qg==
X-Gm-Gg: ASbGnctz3OfOQEvUUo+43GRmqWH7ZKuPWyT0ZlJs9hEqtpaG3WHK9Y5syiOOCwQn+34
	IYbmBL8O2Ncq+PUQXRFTQ9y2uoIbX48MVLsF6X6ifs5cmN0MoZ1KlCQRfbkxXdMcSU7vOTMKixD
	5Cft/wL24rrdxEL6goxPyl4sDdax3UiikHAdtQA5axVEmRs9VcsoFWRHbqSJvJ
X-Google-Smtp-Source: AGHT+IHPnYXG3FEOTKCPwC6khcOaUU2Qi1L+SLX4FoYJFfDSYAHufOgtPqPnRhANg21xEIMxMWnBmCWMxr5P5QnNhuQ=
X-Received: by 2002:a05:6214:b6b:b0:6e8:f3ec:5406 with SMTP id
 6a1803df08f44-6ed23895c60mr46770186d6.19.1743071891876; Thu, 27 Mar 2025
 03:38:11 -0700 (PDT)
MIME-Version: 1.0
References: <XD94.1743071466814370904.20IX@lists.yoctoproject.org>
In-Reply-To: <XD94.1743071466814370904.20IX@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 27 Mar 2025 11:38:00 +0100
X-Gm-Features: AQ5f1JpZDaLjF6Fm7WWtVxge-svsMy81aKmfuh8OGcueZrEcQ2TBkTkG5ERw-NI
Message-ID: <CANNYZj851ggRKVPnbQY2qGELeOKU1aW5aLJdZ7S=d5xQorxXMg@mail.gmail.com>
Subject: Re: [yocto] Issue Booting Yocto Scarthgap (core-image-sato) Image on
 AIMB-288E (Intel based target board) #kirkstone #scarthgap #yocto
To: yocto@lists.yoctoproject.org, rajesh.d@mindteck.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Mar 2025 10:38:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65026

The recommended MACHINE for Intel hardware is one provided by
meta-intel layer. genericx86-64 is incomplete in many ways and isn't
well tested on actual hardware.

Alex

On Thu, 27 Mar 2025 at 11:31, rajesh.d via lists.yoctoproject.org
<rajesh.d=3Dmindteck.com@lists.yoctoproject.org> wrote:
>
> I am working with the AIMB-288E Intel-based board and have successfully b=
uilt and booted a Yocto Kirkstone image (core-image-sato) and abel to get t=
he default GUI on the screen ,hear by default we get the linux kernel versi=
on 5.15. i have used the MACHINE =3D "genericx86-64" in locl.conf file to b=
uild my yocto image .
>
> However, I require the latest Linux kernel 6.x. so decided to build a yoc=
to Scarthgap,
>
> I tried to build a Yocto Scarthgap image (core-image-sato) with kernel 6.=
x and  MACHINE =3D "genericx86-64" in locl.conf file. The build completed s=
uccessfully, but when I try to boot the target board, I encounter an issue:
>
> The system starts booting.
>
> The GRUB menu appears and stays for about 5 seconds.
>
> After selecting an option, some logs appear, but shortly after, the syste=
m exits.
>
> Has anyone successfully used kernel 6.x on a similar setup? Are there any=
 known issues or recommended configurations for enabling support on the AIM=
B-288E board? Whether genericx86-64 is suitable for AIMB-288E
>
> Any guidance would be appreciated!
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65025): https://lists.yoctoproject.org/g/yocto/messag=
e/65025
> Mute This Topic: https://lists.yoctoproject.org/mt/111933702/1686489
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarth=
gap
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

