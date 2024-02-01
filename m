Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B568EC48286
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 20:58:23 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
 by mx.groups.io with SMTP id smtpd.web11.7042.1706821098748062851
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 12:58:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WlbC5pHG;
 spf=pass (domain: gmail.com, ip: 209.85.161.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-595b3644acbso1202662eaf.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 12:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706821098; x=1707425898; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dwymetNexlCaoNcPTWSvPIVC4dzKymF2O8gPZ7/A3ig=;
        b=WlbC5pHGH4Btt7KgAt07ZVV3VQ96cF7W2TA+R8uCcEdierxTua1+tjTW50IWBTTOxd
         zTocQcPUBwYYjHWgrzL2wY4Ne+oiJpeK8sK07OT15zxrVBLDVaaL5tzbGtA/Mijj+ANT
         C7Py0U37N2j84UUgREkkxafvgKhiXaHf3QWZdIqol8TBMKAMTqd7mmS2pESPkMj249Di
         e8w6UppUU8yJjEs03Dlq+wolZAEuwyA04ESYEt1Q3T4jlnF1YPIPd4xmPNnItLuUDqKh
         hVSeFVHzdDJOO/uDG+REL59G9lOfFObRcbX4pb22bGdkCflRCt+N5NKv8wWWT0V4qCBX
         1TJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706821098; x=1707425898;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dwymetNexlCaoNcPTWSvPIVC4dzKymF2O8gPZ7/A3ig=;
        b=gvA21YkdAovYhPd2zCm13sdDxXtEsJi+rfiyDQCiV/jmULmGSq7wAx3dGPlxagReww
         ccKDleY8lzQHyoajVxLpjMaoksYM37jgcFK/XA41Nd5G4/kH9FtuF3iWRutYs1zOGt7w
         qJ+6LBwgdoVI3MxpuJPCedjS+yetj/nECGBWlmXRGSlE/aUO1Mu81tAvouurM0gRk3I3
         CJe4eusiypsQxihrKNMabf+Zp7Vfg1Zow69RXKUmlPFB5TCliRC7BUSZlM8DogV8aORI
         WnfIixCQnmbo4PR+B03unZVB9UINNPRL+C8sWLBn2kqXtKHo5tUnqn0zux6aNYMUnpCE
         hYTQ==
X-Gm-Message-State: AOJu0Yz1+WDa0LJkpE289mf1nT7o0U28350CarO/AQEXyxWe3ee/55hp
	mwX7KG3SCQaBJFnKPXxtWxu2E7t7Rnh29Qv6F3L5O+CTr5R8QRb4eAE8LxbZOUu1qE95ZMxELkA
	M7t+31awaTxsUnqh47SvE0564FbD6GLv8puYZGA==
X-Google-Smtp-Source: AGHT+IF2h+xvfXiBAI0zvEcJtbysfncXo+34j83mNEfdoJZU9sujdqjhEapT3d046wnA353P/gDS0cR7s7Lbad54TvM=
X-Received: by 2002:a05:6870:46ac:b0:218:54f8:b9aa with SMTP id
 a44-20020a05687046ac00b0021854f8b9aamr96189oap.15.1706821097854; Thu, 01 Feb
 2024 12:58:17 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj-t4yhegR4Q-8s1K2u3YvdB9ctekHTXKLR8GB9UEERVuA@mail.gmail.com>
 <23652.1706792492588535839@lists.yoctoproject.org> <AS1PR10MB5697C9EF397AFF4B3DFBB18DFD432@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5697C9EF397AFF4B3DFBB18DFD432@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 1 Feb 2024 12:57:51 -0800
Message-ID: <CAMKF1sp0_bwaoz5WVpcujejprGohd78GYQRadjTHO6c07YNTYg@mail.gmail.com>
Subject: Re: [yocto] Is there a way to speed up the initial fetch task?
To: yocto@lists.yoctoproject.org, peter.marko@siemens.com
Cc: "timotheus.giuliani@philips.com" <timotheus.giuliani@philips.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 20:58:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62372

I think if you add a pre-mirror and a CI jobs to populate it regularly
and adding
BB_GENERATE_MIRROR_TARBALLS =3D "1"

might alleviate some of the git fetching it might be doing on every
build. another option
would be to mount a shared nfs folder into the container as part of
build setup when build is
started, but yeah then its not stateless as much as you would like it to be=
.

On Thu, Feb 1, 2024 at 5:11=E2=80=AFAM Peter Marko via lists.yoctoproject.o=
rg
<peter.marko=3Dsiemens.com@lists.yoctoproject.org> wrote:
>
> > It=E2=80=99s not possible to keep the download directory, since the bui=
ld runs on cloud runners that are shared resources. Every time a PR is crea=
ted a new runner instance with an empty workspace will be assigned. Therefo=
re, I can=E2=80=99t reuse anything local from previous builds.
>
>
>
> In the same way how you provide sstate-cache mirror https server, you can=
 also provide download mirror https server.
>
>
>
> Try this in your distro:
>
> INHERIT +=3D "own-mirrors"
>
> SOURCE_MIRROR_URL =3D "https://...=E2=80=9D
>
> BB_GIT_SHALLOW =3D =E2=80=9C1=E2=80=9D
>
> BB_GIT_SHALLOW_DEPTH =3D =E2=80=9C1=E2=80=9D
>
>
>
> Peter
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62361): https://lists.yoctoproject.org/g/yocto/messag=
e/62361
> Mute This Topic: https://lists.yoctoproject.org/mt/104095616/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

