Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 193EDEB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 19:42:49 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web11.7478.1687549359931196847
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 12:42:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=raKijqpH;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.53, mailfrom: steve@sakoman.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-51bee0c0acbso1021763a12.1
        for <yocto@lists.yoctoproject.org>; Fri, 23 Jun 2023 12:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1687549358; x=1690141358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SVKWNcO7q9a7hrWGs9zqJmuic7FSELoN33dzqT12pbg=;
        b=raKijqpHUQcPP/Hn/AatrG+7cNNvgdX+Fo5YSOYD6/cWmqC8snmBAEM+Eo4dVvwgRL
         +QY/ihRh6UK1Tci3DMAirK12xIMYCGCBX48k9A8Nb0h2CT2LOKLnHUfwBZ7ysgLxVunF
         gIut/nR0Wv8iQ8rd3/5Zm6nNNvDgRXU6EF/Wcp2j2MX5KKTwK/L8HZx2qZeCtlO4Djzh
         xWraNRhm5KURxsz8JifORSzt4rKUqIfhCcpy7LN+77x0n38o1EDihfTcflVlkTim65sp
         t6PDc2sWqytkwLa4+xcYc6fO2DEob77athwLGIG/b6UsUMhZRq1dA7SEFB29eP3M6uAN
         lWBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687549358; x=1690141358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SVKWNcO7q9a7hrWGs9zqJmuic7FSELoN33dzqT12pbg=;
        b=FSc/oRfXATCMoj7ZUv3ZQx8LXX+c6sYwMS6eqbECKvfZxKX+X/ULF+3KqrtWHtGCZo
         3oG8HjrKSGCTeaAwZg/IqwHc+yfWnEaLA5egYDvhUYDpSPgiHezG582HIHeULVbq9cOU
         pnJU/MPVUrFBSUECwurM6gUr73UxTvUTPTcX0BCYPWWSursJfm195V5QHrYeoPGu2ehd
         Ifu3CHU4emkQWxRkG1Qs7WB5mFlsREgLq3vQk3KpUSCAuWdh0ax/Smr40mc16fZsV8vN
         YW6Lr6qIsjIsezOkP26HOt3021isIVj7CHAx2eM8GZmym9Hi338iE1iaioYzvf/MBZMr
         Sy5g==
X-Gm-Message-State: AC+VfDx9zS8i1KcYobveqpE2R76wvSf7V7PPhlbvxgjRhxvqxpmHOTlZ
	BQgFtgalUr/Bl+HFdjX2be08Jwy8CVZiNrsz1C683g==
X-Google-Smtp-Source: ACHHUZ6v7eynHoRdM0OS8Qnbo6v5GI3KfQPuPVGKlZhCeVMoVYkcruNRVNctOs4M1fta/3RoJGNa7SdV+lA8+sMhhow=
X-Received: by 2002:a50:ec97:0:b0:51b:fc31:c233 with SMTP id
 e23-20020a50ec97000000b0051bfc31c233mr1329609edr.30.1687549358103; Fri, 23
 Jun 2023 12:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <01010188e9a85af3-ef64f2f8-a9ee-4dcf-8070-b9af7ad4da0d-000000@us-west-2.amazonses.com>
In-Reply-To: <01010188e9a85af3-ef64f2f8-a9ee-4dcf-8070-b9af7ad4da0d-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 23 Jun 2023 09:42:27 -1000
Message-ID: <CAOSpxdZDBB2WUz6Bvqw2Dc0yO5ui+H9YUtUMoV3dy4PV7_j_eQ@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-4.0.11.rc1)
To: Pokybuild User <pokybuild@yoctoproject.org>
Cc: yocto@lists.yoctoproject.org, qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Jun 2023 19:42:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60420

There was an intermittent autobuilder issue that resurfaced on the
oe-selftest-centos build:

https://autobuilder.yoctoproject.org/typhoon/#/builders/79/builds/5388

Re-running oe-selftest-centos passed:

https://autobuilder.yoctoproject.org/typhoon/#/builders/79/builds/5390

Steve

On Fri, Jun 23, 2023 at 9:08=E2=80=AFAM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.11.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-4.0.11.rc1
>
>
> Build hash information:
>
> bitbake: 0c6f86b60cfba67c20733516957c0a654eb2b44c
> meta-agl: 1b0cad77090b75fc040f9de5db06374203fe34c5
> meta-arm: 96aad3b29aa7a5ee4df5cf617a6336e5218fa9bd
> meta-aws: 7c498bc8f0d51b9c2546b8f7e3347cc6e61d74ec
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 7fab6b8f1a3030bc6d2f1cf48789599af3dc3e78
> meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
> meta-openembedded: a82d92c8a6525da01524bf8f4a60bf6b35dcbb3d
> meta-virtualization: b3b3dbc67504e8cd498d6db202ddcf5a9dd26a9d
> oecore: 7949e786cf8e50f716ff1f1c4797136637205e0c
> poky: fc697fe87412b9b179ae3a68d266ace85bb1fcc6
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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60419): https://lists.yoctoproject.org/g/yocto/messag=
e/60419
> Mute This Topic: https://lists.yoctoproject.org/mt/99724927/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

