Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEB2AEB64DC
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 15:59:32 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
 by mx.groups.io with SMTP id smtpd.web11.37089.1688399966309049579
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 08:59:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=am4mEpra;
 spf=pass (domain: gmail.com, ip: 209.85.161.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-565a8d74daeso2942768eaf.1
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 08:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688399965; x=1690991965;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MDVE96L1mPwyHDqESwEsrvXK7jZG7P2zH+fx4dpFeVA=;
        b=am4mEpraJwy9vnppA4C4MbQT0LFqUyPSdZe9zfRBZ07wQaNXZEVOZCgGWiq/WTBzdV
         D0yS20CZgjH480eCYLPi+Kq0b2C2ZCAzjd0Mer2B4tFxYVv65W/6goyALq0+hJ55btx4
         L/IfQIM/aYeGBqF35G792hcIAwo7DT9+bzEFpE17EPo3Sq74QH2aTYwCKe+PWE1MDid8
         bjrD/yLJOdliPZtpSaOE1oCH0he2MK0lWo2muVmDphirKoj4Ih7HzAcUxTSBatPNjN45
         pM45ekplyND2IkGZaLKNaoRj1SabX+4rkoEgILEF0otsP/xiuo/vwu7gU3vMndR1jTA4
         7AHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688399965; x=1690991965;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MDVE96L1mPwyHDqESwEsrvXK7jZG7P2zH+fx4dpFeVA=;
        b=kVw5F415ctR7Hv9QXTx+a3HKo+fOEKxSOf7D8AaBlrGa0g9jpBC2M9d1u/6wetgGt2
         hNYHJdlE/wBE9XHC/zy+6C1kMiQHViaKtIElDu2Ccws1Uo16uiiLoO+zXR6q3CkwNTjp
         If7mUH7ZnI/k7UOayW0zlB2ypAvw1Nm0c+aIhrBv/fJFcNM2KPwaD5u76fVXgePgrJdq
         GRyMJGbVclSAkKeB9vz2NNG6WGlmMnEXDYpg1rOJynXYC9FfLoi0erY9BUIXPm6gqVYt
         vGufBv0Z6qdGyjSgFB6cQssXqMBHzsiSWpfQ/CXGzVNsZjNA2fTnaW0BtJ/gpULfd92V
         UorA==
X-Gm-Message-State: AC+VfDx29do2N/oem0pHo/Zh6HD1LoKgrvmGMBnfSUZcJHxPPCUzm1Uq
	PectbK17XCSuzbpKatgfe5RP0wYtSiGOKgENG9g=
X-Google-Smtp-Source: ACHHUZ7sUN29jyPuUCV3jW10aXXcUCjm61YlgJRyOiTJdHiYsNk5nTSg+1zmyPDz13Zsh+p/qzR03E9gqQazcZbJQBk=
X-Received: by 2002:a4a:dd1a:0:b0:563:16bf:4f9e with SMTP id
 m26-20020a4add1a000000b0056316bf4f9emr8479665oou.3.1688399965486; Mon, 03 Jul
 2023 08:59:25 -0700 (PDT)
MIME-Version: 1.0
References: <4HqO.1688327140014497685.1oIK@lists.yoctoproject.org>
 <TMR6XR.EE45UBD6649W1@t-online.de> <CADkTA4MOWSbCOWtbzKhJ=X97u6GvQiRbBBBLyvK1pg4HjDv5Rw@mail.gmail.com>
 <5G38XR.TXXNOJQ8IM5Q@t-online.de> <BN7PR14MB2420E244B854E63C1E6A49F38529A@BN7PR14MB2420.namprd14.prod.outlook.com>
In-Reply-To: <BN7PR14MB2420E244B854E63C1E6A49F38529A@BN7PR14MB2420.namprd14.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 3 Jul 2023 08:58:59 -0700
Message-ID: <CAMKF1so-6nFf-5_MJcpffj841WQCj4LO3NtgY=2XQ1Jm8YZg1Q@mail.gmail.com>
Subject: Re: [yocto] Building Tailscale with Yocto #golang
To: Janne Kiiskila <janne.kiiskila@izumanetworks.com>
Cc: "f_l_k@t-online.de" <f_l_k@t-online.de>, Bruce Ashfield <bruce.ashfield@gmail.com>, 
	"przemek.recha@gmail.com" <przemek.recha@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 15:59:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60504

On Mon, Jul 3, 2023 at 7:25=E2=80=AFAM Janne Kiiskila
<janne.kiiskila@izumanetworks.com> wrote:
>
> Hei,
>
>
>
> Golang does have the required features to support this, but it is more of=
 a challenge to convince the repo owners to start using this.
>
> You can download all of the dependencies in golang with go mod vendor and=
 then store the vendor-folder to the repo as well.
>

yes go mod vendor is a way to get this working in a reasonable way.
This also avoid go's module management coming in way of
bitbake fetcher.

> But, the repo will get a lot larger that way. But, that fulfills the Yoct=
o demands as far as I know.

As a distro, I think this should be even preferred even though size is
bigger and several modules will be duplicated per recipe if
there are other go packages in image. As a developer this might be not
preferred however.

>
>
>
> Best Regards,
>
>
>
>
>
> Janne Kiiskil=C3=A4
>
>
>
>
>
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of Markus Volk via lists.yoctoproject.org
> Sent: maanantai 3. hein=C3=A4kuuta 2023 16.43
> To: Bruce Ashfield <bruce.ashfield@gmail.com>
> Cc: przemek.recha@gmail.com; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] Building Tailscale with Yocto #golang
>
>
>
> On Mon, Jul 3 2023 at 09:07:11 AM -0400, Bruce Ashfield <bruce.ashfield@g=
mail.com> wrote:
>
> We really shouldn't suggest the above to a developer without also the exp=
lanation as to why network access is disabled by default in tasks such as c=
ompile.
>
>
>
> You are of course right with your objections. However, this is the only w=
ay I know of to get around this problem. Reproducibility is not a must have=
 requirement for me, but I use some gtk go programs and would love to have =
a way to build at least gotk3 shared, since it takes quite a long time and =
has to be rebuilt for each program.
>
> I had experimented with this some time ago, but it looked to me like ther=
e was no easy solution to this problem. This is somehow quite a conflict be=
tween different concepts.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60498): https://lists.yoctoproject.org/g/yocto/messag=
e/60498
> Mute This Topic: https://lists.yoctoproject.org/mt/99915079/1997914
> Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

