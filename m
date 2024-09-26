Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12E03CF9C5B
	for <webhook@archiver.kernel.org>; Thu, 26 Sep 2024 22:53:00 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web11.57190.1727391171312637595
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Sep 2024 15:52:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=uvILldJZ;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.179, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6da395fb97aso12988157b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 15:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1727391170; x=1727995970; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pY9DMxhENHLnCyzICBf3eSxqnn0MNTLWEeXT/YLz19U=;
        b=uvILldJZjc7lc9gVZDJdrWHcK5dSovAZh6HTUCcPi924IpVUzGoyE4i/D0VOVhE3Zl
         FfzVY4L3G4j6QuVCn6k8iMLNT7VAJvJlKvLX0/fciJvlNoLC5K67gAwWPerLpfMHttX1
         N/m2UL0l5IPajRso6BLT8+MUA7orAepuoC3YfZ7d4dEqPF+OatRJtV2jyGwqhGPTsHSw
         l95eZXoE/Ohq2gFcMnrhRqZpNJ799eu8vFqC4N69WTMtc/vL5gy5ciOpzIuNoWo95dXg
         HUs/yqLm9qQmsNfwUufndQ8WfqbvUZxgAnlrad4qo5xWHvRBySvjhQTx9K9b4gh/elTM
         SJ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727391170; x=1727995970;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pY9DMxhENHLnCyzICBf3eSxqnn0MNTLWEeXT/YLz19U=;
        b=vjHQoW7xfw1rbj6vP0BdB/zGilTV66XKoD8t6g0Ns27MeLzi7iyZFOzaq0dtGBzmN2
         YvOI5xkrxW9+foF2m0dNyeEzD3rPgmbMB3Uho7iOPDqTf04v2hXBu0ZQ8iBzxo/AaAjR
         3tnrlGiHJjNL1vsE8zRZY0TLrPp+6O7gg87B9L4dTyVPtjzcypRBTt6EZueIVyL7WfQI
         mtxoceCCfEkP3UvA6jZZJ9ssJpgL+JNVdsrXgRqBsra9giUrqQ7z8CFow0XH6hhBxy2G
         9zxSln0S4OdacSInK+B1RyeFJa3mcxh/ttDHRUTwHvz0HlQggNTp2mAu7mGMEh1s7SN7
         vlMw==
X-Gm-Message-State: AOJu0YyPdy2KyhNNbYaFARSADzEi8AqTnjoZKL2TaP2j4qF5kdnZV7Bb
	HHN5k3S/HUs8pI9IjToTxgF7tFopi+hgc5zrcbNeX6VOpIBwDLY+AjUM5Btq+7g2sSghffcTRO7
	yn14CPdlOp1QkBe4kvUlY5ieZzln4q0dZHkyrCaonKHTEBud+
X-Google-Smtp-Source: AGHT+IFVTC6zpz0sWngohkYixLDfE4u/hdKabaVz0xUjSvELa3VK7v4A33kYXT3rtv9QL2t/mEDPKBTGFrQQePup1FI=
X-Received: by 2002:a05:690c:6910:b0:6e0:763:1ffa with SMTP id
 00721157ae682-6e2475d12afmr13456547b3.34.1727391170303; Thu, 26 Sep 2024
 15:52:50 -0700 (PDT)
MIME-Version: 1.0
References: <0101019230758073-d0f599c5-884b-48cd-bed3-7ed67d2ec5b0-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019230758073-d0f599c5-884b-48cd-bed3-7ed67d2ec5b0-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Thu, 26 Sep 2024 15:52:39 -0700
Message-ID: <CAOSpxdbhpaau4FAB3xHqEp474Djz3YfAa42U4E-LeH2b9RP80g@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.4.rc3)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 22:53:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63897

This was an all green build, so OK to proceed with QA.

Steve

On Thu, Sep 26, 2024 at 3:31=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.4.rc3) was completed on the autobui=
lder and is available at:
>
>
>         https://autobuilder.yocto.io/pub/releases/yocto-5.0.4.rc3
>
>
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/7360
>
>     Build hash information:
>
>     bitbake: d251668d9a7a8dd25bd8767efb30d6d9ff8b1ad3
> meta-agl: 6debcd5420b798dd8c0b3052620cc5d8f3bcbff7
> meta-arm: 1947c000299c0330e8a866996505221a14c0e1ea
> meta-aws: 1bc413ef26efe835d7c2f68859cc36ebd4233903
> meta-clang: 2b7433611d80f6d0ee1b04156fa91fc73d3c2665
> meta-intel: c2bc8e27e9cc83654a23e8d89525fd9b1e781eb6
> meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
> meta-openembedded: 735ae0310870ffce07ce0c55c4f87c20ac161ff9
> meta-virtualization: 66ee8d268db25a9f2848bda6858c284c745f549f
> oecore: f888dd911529a828820799a7a1b75dfd3a44847c
> poky: 2034fc38eb4e63984d9bd6b260aa1bf95ce562e4
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#468): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/468
> Mute This Topic: https://lists.yoctoproject.org/mt/108677431/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

