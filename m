Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540E0C19F32
	for <webhook@archiver.kernel.org>; Thu,  6 Mar 2025 00:49:19 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web10.1364.1741222149701660742
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Mar 2025 16:49:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HGxH/PA2;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-2a9ef75a20dso207196fac.2
        for <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 16:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741222149; x=1741826949; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zzcOZ4fcPNFX5I0arIgfQ8tPgKzNHFrc09fi5VSZUQQ=;
        b=HGxH/PA2L2le3bE9DyGP8nap6Y/mImyROiPmYFKF+Uhp02p54OtkUJVw41NaDRj3Qp
         2f0/FiRp1SYx8Ag0uzzXkDmjET0IHgEG0XJrAPGX2Muuysc/iWwAe34nghIC3I9Aicbz
         xZvWMH/40MSkuOn4AiNF7uC37uQIaZOQvkQTPF7yheveAkdVcPfwrn386OKTn89n/nc4
         8900IWwG1cMNLAQz4itg3piXBxrFY/nrkEHairmwVNasUHrM2OtbMg+LHcpLl4noNh7i
         Y11zQgMIj4Jyz6dolw9tLE0IAb2DPhsdJCUJCVWICBGplfMZ6xPUrak/ti6BxFZP9wni
         oc1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741222149; x=1741826949;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zzcOZ4fcPNFX5I0arIgfQ8tPgKzNHFrc09fi5VSZUQQ=;
        b=c02gPTLhH2YcjQ9deAS/gJT16hHHYvQl7YKvpGJDOd99zPCqsqL/3TEV4PTYl4/2TS
         rF8GXjEE21VQFUdYYa5Po8La76XelK2+Zg5VX4HGJPUvjIGvpL+wKlFLT459AsljbELd
         ic/AnTw2ETNu4csURpmz+EJtJSeJ9r66oN41+ixIhNR0t0FmJTfjahiHGJIyFWDF8cxF
         K8Kbjfm5yTViZ++hE+v3npQwnYI6atUd6NzRTelLyHoEvIVJm5oPl65xCyaHh7srkidx
         kg2Asaja14P+Afih7TA5WhgpepAek6fq81mZ0XN0/01lfLRXhE26WBkr9aoa14STCBTq
         553w==
X-Gm-Message-State: AOJu0YzwHQAtUpKp0mRsZCjbgX7uu5uR9K5OlqJoCHdjrsoZg8fMNbL5
	rBp8TIwnrqlAj0hKs9p5+L2E8m9nDg6vWdO1QzEa5UMC6TYpWfp/hqc5K6pDIHy57DBlRlqZ9ch
	WpV7uOw518bMFJqZ/xIVUmI21zHFyOvMd
X-Gm-Gg: ASbGnctM3cdR53PPCF1ZziH2e4Dw7LnqEFa2pge97EibwHf81lnegz6EyF11epozV4+
	lnci6MkQIiSlPoCTBcckERmBjpHusi1mKmumLWW3l3ejINLoMbhFv90hud1eH+HDCJga9qbFN/Y
	1fYE4tVK7HUKeIE7C7HoFSZqxY
X-Google-Smtp-Source: AGHT+IG+/1oSSJnjWlQNa/LLlEd3qftVzB8Sj3DpFzk/Ze7wQT8SHGB1HrXB7BLyVnXfQ/GWrhX7uA+xozYnPYR5cqQ=
X-Received: by 2002:a05:6870:f14e:b0:2c1:ade0:26a0 with SMTP id
 586e51a60fabf-2c21c955437mr3008230fac.10.1741222148669; Wed, 05 Mar 2025
 16:49:08 -0800 (PST)
MIME-Version: 1.0
References: <5eb08635-7c04-4790-84b8-f5aed18e3ae2@codethink.co.uk>
In-Reply-To: <5eb08635-7c04-4790-84b8-f5aed18e3ae2@codethink.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Mar 2025 19:48:42 -0500
X-Gm-Features: AQ5f1Jo7e4Kh_UcUt294zVv6S8v9Gxk6bEP60cuWJB6tjGA95XT87muFzccyhms
Message-ID: <CAMKF1sqt0bNPeZHDOW6z+ZESUB_EhmjWSXPbg9BHn41V4GyDYw@mail.gmail.com>
Subject: Re: [yocto] Compiling 32 and 64 binaries from one compiler
To: yocto@lists.yoctoproject.org, arran.ireland@codethink.co.uk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Mar 2025 00:49:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64927

On Wed, Mar 5, 2025 at 12:11=E2=80=AFPM Arran Ireland via
lists.yoctoproject.org
<arran.ireland=3Dcodethink.co.uk@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I need a toolchain that compile both 32 bit and 64 bit binaries,
> targeting a 64 bit system, but from only one toolchain. E.g. source only
> one environment-setup script and pass in my own -m flag.
>
> So far I'm currently running:
>
> bitbake meta-toolchain -c populate_sdk
> tmp/deploy/sdk/poky-glibc-x86_64-meta-toolchain-core2-64-qemux86-64-toolc=
hain-5.1.2.sh
>
> With the following conf/local.conf:
>
> require conf/multilib.conf
> MULTILIBS =3D "multilib:lib32"
> DEFAULTTUNE:virtclass-multilib-lib32 =3D "x86"
> MACHINE_FEATURES +=3D "multilib"
> IMAGE_INSTALL:append =3D " lib32-glib lib32-libstdc++ lib32-libgcc"
> FORTRAN:forcevariable =3D ",fortran"
> TOOLCHAIN_TARGET_TASK:append =3D " libgfortran lib32-binutils glibc-dev
> lib32-glibc-dev"
>
> This results in two separate toolchains which appear to work as
> expected, but require being ran in an isolated manner, which might not
> work for my use case.
>
> Is there any way to get a single toolchain that is capable of compiling
> both 32 and 64 bit binaries?

OE built multilib toolchains are not following the gcc's multilib
approach and thats what
you are expecting where you build a single toolchain and multiple
runtimes which are selected
based upon command line options. I dont think we can do that easily in yoct=
o.

>
> Thanks
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64923): https://lists.yoctoproject.org/g/yocto/messag=
e/64923
> Mute This Topic: https://lists.yoctoproject.org/mt/111531937/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

