Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1856DC433F5
	for <webhook@archiver.kernel.org>; Mon, 14 Mar 2022 20:13:19 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web08.1630.1647288797643741335
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Mar 2022 13:13:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ga6dNo2X;
 spf=pass (domain: gmail.com, ip: 209.85.160.175,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id y15so4770652qta.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 14 Mar 2022 13:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ax4s/Nl5c6542Ty5Zn94oKvTAyN3lgycP9DIbtp6L9c=;
        b=Ga6dNo2XHQ0X5rNg5cwugJJ/24NpeVXpx+MVPTvbKMFsUZFXRPVfaZFVN+LLxXKAGX
         ScIVVcl8H56jUrGaGTLjezIF9asqvjNzZX68zJ/aWKVvbjN8K+BY1tSAB66xXEoKGV1m
         1KCxI4jWawfbA0e0iXaVi5N6ANEG/gN+lOBAx19NmgzTpPDrJTEfnQB97LMamKfj2BJj
         wM2Lup2m8Ycw5HOqpW2KHA9tedCIEJSoP3tOMAhTTV1YWMj1lYC0dpzKFAro3JUHKvq6
         QPM85HjwZvATEedpFuT3TYyJ84dTZAjfaPmvHhMorCw7PatFXxFC83YPoP4ei5kbQwfS
         9qqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ax4s/Nl5c6542Ty5Zn94oKvTAyN3lgycP9DIbtp6L9c=;
        b=6xSDuYBMOH74UGlZ1KlitghUy32xC+xO93RgRsaxKVPRDMUEGzsApf0+5Yne/DKhyr
         on+rD6V11mISBIV9x1pWpD1zKRzy6gM6pSd4KhluTJZtTXuMlPoZaeTXiWU4XAU9BPxQ
         7ZBJfcLIhH7s2Epo3Xs2M7qoNljd+1hWHUnYfZoSitI4t0GMBTkqD+q5AgqC3T6Y/U0J
         GQdLiqzHip0hyPks3u0KN+h3uOpyAiyQ9JX2gfF5/TZ7ZpW6Q4jN4q7TaPOvXN+dljQp
         4utreIbxtecJ8V/W68gRq+Bdd1JA1rtStC8avnp74R3BsGx20p6mJvcLH3Pr0QNbBaWV
         DEpA==
X-Gm-Message-State: AOAM532/vbTs9ulj2FF/ZuxChDRa2trZPcTUthGc1UiMpjKM/ZnlX4ZF
	yU5kP8Ch1qTMcPQHYow0puroFnGwZDnro8yBxPU=
X-Google-Smtp-Source: 
 ABdhPJzlriVVOHbSpGuAZN5rtTjS1S5TYcFtvduqQTmu4JfDGCcz8M0djNIWkB+IM+a/ky0G3g2+iJA62tE0ISJB96s=
X-Received: by 2002:ac8:5842:0:b0:2e1:aa10:e7cd with SMTP id
 h2-20020ac85842000000b002e1aa10e7cdmr19179815qth.330.1647288796649; Mon, 14
 Mar 2022 13:13:16 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16DC57946CC24778.3194@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16DC57946CC24778.3194@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 14 Mar 2022 13:12:50 -0700
Message-ID: 
 <CAMKF1spMMwNFeAcZK1oMvyG1FCkGqgKXANFs6062dAEUYkPeBA@mail.gmail.com>
Subject: Re: [yocto] configuration fragments
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Mar 2022 20:13:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56430

On Mon, Mar 14, 2022 at 12:57 PM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> Under my aarm64 platform ../recipes-core/images I have a file =E2=80=9Cai=
ox-swdebugfs.inc=E2=80=9D
>
>
>
> Which basically contains:
>
>
>
> EXTRAPATHS_prepend :=3D "$(THISDIR}/files:"
>
> LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0=
bcf8506ecda2f7b4f302"
>
> SRC_URI +=3D file://aiox-swdebugfs.cfg
>
>
>
> I include this in my aiox-swdebugfs.bb like so: =E2=80=9Crequire aiox-swd=
ebugfs.inc=E2=80=9D
>
>
>
> It does not appear to apply my configuration fragments=E2=80=A6
>
> (CONFIG_SCHED_TRACER, CONFIG_TRACER, etc. for additional perf support)
>
>

these are some config files for doing what ? from what it looks like,
this inc file is adding a kernel config fragment
if so then it should be appended too kernel recipe so if
aiox-swdebugfs.bb is kernel recipe then you are doing it
right, but then you might have to look into this kernel recipe and
ensure that it has enabled merging configs feature
from kernel. Otherwise these cfgs wont be processed.

>
> I have the exact same implementation working under my intel platform.
>
>
>
> Can someone tell me what I might be doing wrong, or how I can get my conf=
iguration fragments to be applied properly ?
>
> Any ideas why it might work properly under one architecture and not on th=
e other ?
>
>
>
> Thanks,
>
> Steve
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56429): https://lists.yoctoproject.org/g/yocto/messag=
e/56429
> Mute This Topic: https://lists.yoctoproject.org/mt/89782695/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

