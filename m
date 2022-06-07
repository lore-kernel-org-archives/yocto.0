Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E41FC433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 10:21:20 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web09.10734.1654597270843675222
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 03:21:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dbgvvNFN;
 spf=pass (domain: gmail.com, ip: 209.85.167.50,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id s6so27518960lfo.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 03:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5fywvU0P1oVWDqNp8Vqvegv59tg2E10V+JksRWx19Dw=;
        b=dbgvvNFN3Yt2L8rF13A/NyDuXsDmCG9MfQuDIxt9r3aK8uXafn5ApvOEBkSZ3/9giD
         WNTJ3cJTBn5E0eTLsKt+YaXgTQbyF7vZefksdxROcAhvhlrE4jCRXun3L1GpN00srVGV
         ZK3/ChMkMdpQZ1FbXep4lGa0Zqhxg7NtQ98ICdCbw8aWKVcqktacW5bVnJChFmJ1h0a9
         +KUFP97pCmFbzaNOXD0xPj9fpmxID8+2ZIrQuc12v/b6QbCacKPvlmvF22pIAHKRYFJd
         vvSZ0FL3E+r+ENktAskwXMqF4XBlgqqf1XfswvWsNPs1uXqeU1BMW1JJ0iPge0n0iG2r
         IGIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5fywvU0P1oVWDqNp8Vqvegv59tg2E10V+JksRWx19Dw=;
        b=c1DyC0sxcGYjPymiLC2EqMr0vazEPPGOWAoZeUAoBdoft+jQF1yQ6msOaF9gZ1XGhg
         JA496UqbTGAfu3Ni+lxfDqiuf0gFP87288PPOcA6F5pH01MgenaBqke5vf5mP42JpOpQ
         hXDweaGcJYzkcIcobbgLwUR9UyjomKYtLl+e7bqKVJBSAY8hijoT8SRQxvHsE2lhGlls
         MNkIw87evmv9BCTyoxzcwwRQk/1Fgy/4Ll/w1zejdH/GjPSLCgRR1QqqsEIljGrpMim0
         fKSbJS9Rhdlgg3a+6ZP09Q3FW3B9zH8cv3kQRfSq5/H7ljkiXKOXGhYfDLROTcuOwMI4
         fDqA==
X-Gm-Message-State: AOAM5332HoS8VsM2Qxm4iQ3HknXW6e2GPS7cmBK7Ijxp1wUKeue1WBWz
	+/09BV9V++GAHuaWC9NSlNWx4EfuHUF/agsbujA=
X-Google-Smtp-Source: 
 ABdhPJzJ3MolqrD87jrS7U2c4bJUxkEe4oW+huaqkwgCdiJeJKkHf3nys9unPYCGLQMWAcUq5iKX8EtGB88AZBr+x1Y=
X-Received: by 2002:a05:6512:1511:b0:479:fc:afa2 with SMTP id
 bq17-20020a056512151100b0047900fcafa2mr20848231lfb.665.1654597268739; Tue, 07
 Jun 2022 03:21:08 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAJst-kEqrNhR832waWSMDNGkTFORLgEPX5y2VRS7g1Bn=T3evA@mail.gmail.com>
In-Reply-To: 
 <CAJst-kEqrNhR832waWSMDNGkTFORLgEPX5y2VRS7g1Bn=T3evA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 7 Jun 2022 12:20:57 +0200
Message-ID: 
 <CANNYZj_kJrXDCG7xnVVRhHvNpTFCkPFyayNBBVAga7zrhKuXKQ@mail.gmail.com>
Subject: Re: [yocto] How to remove the python3 from Yocto SDK
To: Vinothkumar Eswaran <evinoth1206@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 10:21:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57284

It would help if you explain what the problems are. Generally things
are tested together with the python provided from yocto, so if you use
tooling from the host, you might run into other problems.

Alex

On Tue, 7 Jun 2022 at 11:47, Vinothkumar Eswaran <evinoth1206@gmail.com> wr=
ote:
>
> Hello,
>
> May I know how to remove python3 from the host and target sdk package ?
>
> TOOLCHAIN_HOST_TASK_remove =3D " nativesdk-python3-core", seems not to wo=
rk.
>
> The image is built on top of core-image. Python3 is not installed to imag=
e. We deliver SDK to other teams and they are complaining that python3 in s=
dk is causing problems after sourcing the sdk. They want to use host python=
3 instead of the one delivered from Yocto SDK. Could you help ?
>
> Thanks & regards,
> Vinothkumar
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57283): https://lists.yoctoproject.org/g/yocto/messag=
e/57283
> Mute This Topic: https://lists.yoctoproject.org/mt/91597064/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

