Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12180C6FD1F
	for <webhook@archiver.kernel.org>; Sat, 30 Mar 2024 15:31:28 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.15862.1711812677741295186
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Mar 2024 08:31:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=kqE9EmdN;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.177, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-60a104601dcso28773437b3.2
        for <yocto@lists.yoctoproject.org>; Sat, 30 Mar 2024 08:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1711812677; x=1712417477; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tE+2pFZuxY7Cnwlv20c1MO+yWDBfdB6rVafog12u2hY=;
        b=kqE9EmdNLfXsPvwZ/erixEOPxR04bpNgt77B0x7vtLvK6O/UHMG19iLuDW6QukGGuP
         e6hdPZTjQTYkoXZkvykekbUiR+Sl8MB/toTpf2nJ5ueAhjY7qCHBZddCzetG0PMoVhJ/
         68FSLsh0dwl9O8oDbeRnMw1qMuXeKyL9LnwKpFYWZUOS/WcTJ2t93vZeucZIvvGCZHvz
         /hXtNwhecv57i6WHm0OrHVixDFv8noTR+wfu1/SuRbn/P66axAGZ5Y5KZFNLzY1iTfnp
         qyX9u2AtfalkEeV72tKxbjINoJ280gGfpNU8kNXGscSDmObEiQMftj4fWmfAA59KNHSg
         78oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711812677; x=1712417477;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tE+2pFZuxY7Cnwlv20c1MO+yWDBfdB6rVafog12u2hY=;
        b=Id8V94zEL1KZRnMiSaLUhj6O7NruoM+t+Irzo2AMsPDnhYCPaDiWIv2TyR91EeshUb
         JQVY/4NdFJs8pALweP1CKieA0zSAhEgTFSjwO/LkX2qGvdZv7SVc7zp3K21wLZYnHkQS
         VjC6e0epMn3g48G0JHQBHG4t0SfRUBjkfWZS4PsTgweRMESMoCpbX7QQKv8PiRBgVn9w
         cgoI4bT4mb3lmAWQo4yTCk53TbdImW6iTOeI/5EdtflEbv0qZVCtomjmUMj/S4Q+hUbl
         A6coC2ZC3HIrLOdHO53ovaa5wfHvnRjA57ujQvM5zuYUV027EC7UzNkDM5MiddSCyHKp
         xIRw==
X-Gm-Message-State: AOJu0YxPQL8/CYQfRIxzbkpayowQ/KcpL30p+rryxLKOYgYPnJR5Duuo
	AqV99Ppt2oqtsGHP6Xls8apCqkCQD7teVExq/uTO8JuYjoAXnlZMWe442rv5Ixs35q16Z/xKcQu
	3U8U1Zt2FrS3Ug3XMkqgu9UwBa5Phpd0HiBUmiR8ZLyCFCM+MVXs=
X-Google-Smtp-Source: AGHT+IGJO8ww6tvMTDOFX+06zBE5GG+pp8CGyey/Ha8JhbWN/XivsuZPbsMgKhsk6a8lv+R5bZKSEErikvKxwWVi0UU=
X-Received: by 2002:a81:a211:0:b0:614:26ea:a6c2 with SMTP id
 w17-20020a81a211000000b0061426eaa6c2mr4982922ywg.33.1711812676742; Sat, 30
 Mar 2024 08:31:16 -0700 (PDT)
MIME-Version: 1.0
References: <0101018e8faaaf0d-51486931-87f4-4353-a1f8-559f13b7e0a7-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018e8faaaf0d-51486931-87f4-4353-a1f8-559f13b7e0a7-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 30 Mar 2024 05:31:05 -1000
Message-ID: <CAOSpxdbUrFv=OLC12Q3cgSy7MqRrj36kw39V0M7UEoNePsRqvQ@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.3.4.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Mar 2024 15:31:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62863

There were issues with the worker running oe-selftest-armhost so I am
going to build an rc2.

Steve

On Sat, Mar 30, 2024 at 4:01=E2=80=AFAM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-4.3.4.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://autobuilder.yocto.io/pub/releases/yocto-4.3.4.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/6738
>
>     Build hash information:
>
>     bitbake: 380a9ac97de5774378ded5e37d40b79b96761a0c
> meta-agl: 5d487f3f281cd632d02b5aa16b2b1e0470f9afd8
> meta-arm: 150169d01f2f57dcd65854a2a43aebef87ee8d98
> meta-aws: 46ece2480cebc6be90a6056361f480d39976240e
> meta-clang: 73c00a5a0bebc871854e43cc1f0fe5bd5e5ad1d7
> meta-intel: e0c541c10f561b9c0087fd07ad5b79b0a534dab1
> meta-mingw: 49617a253e09baabbf0355bc736122e9549c8ab2
> meta-openembedded: da9063bdfbe130f424ba487f167da68e0ce90e7d
> meta-virtualization: ac125d881f34ff356390e19e02964f8980d4ec38
> oecore: d0e68072d138ccc1fb5957fdc46a91871eb6a3e1
> poky: 7b8aa378d069ee31373f22caba3bd7fc7863f447
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
> View/Reply Online (#400): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/400
> Mute This Topic: https://lists.yoctoproject.org/mt/105232375/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

