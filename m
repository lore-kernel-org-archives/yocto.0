Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF30DC25B47
	for <webhook@archiver.kernel.org>; Fri, 27 Oct 2023 22:38:39 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web10.28319.1698446318683958865
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Oct 2023 15:38:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=BiDYCjAC;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.53, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-98377c5d53eso397400366b.0
        for <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 15:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1698446317; x=1699051117; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T0KtZGm21Oxse5F/q+4uO8mOAl0GNvbNsYkIRcHz5GI=;
        b=BiDYCjACEQk5TOjP3AovOvDyZk7QgginKVEJHiAqyG11XGEKE4usM7+Oc9DU19VLNJ
         HqP+J4D2ROyWr2R8g2V+kftsNi1hF/9sVPE54DlM31tXyB3oXFDJcKr6sAu4TORjGajf
         NY327HmiccxMYIZadd2Tgsgc1UcS6XlwHWb5uFE7bEhouCIRbRU7IoSLN3YxvkQDc0TU
         Ye0iDd8t3jCGQ8zanQLj0unfjF7HctMxIuFyI87530Fz2qqlxjRXeg19RHbs0MmJI4uO
         BbzN20odR7gvv5kkGa8+U/Vma/Hd9KzEIMZBaB4B95zVWqvgOGUqcU8dgHcv0b9N+xty
         YTyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698446317; x=1699051117;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T0KtZGm21Oxse5F/q+4uO8mOAl0GNvbNsYkIRcHz5GI=;
        b=vUClBE/TkaGBLVE4xPZ0CCzo8f7zg5KA6hKDAt1ilaKzdbHAdc+gpcWoB//IJXjRyK
         Kq+utMyQIAMdv8/SX+mhaerxoR4t8w7RiDS87raPPkiFF7HG8/TCTNvGOjAzCMKEoGgl
         VR0ZFLB1wVYOCHnF59bM+3UB4P3GgDXJGz+zUAFdBR9VF86LKaH69ZXM2l5xBLNQU0w7
         bGJeNAbX5IZiVm7gr7fg9RtTG4ukmFZtIQIiFeg9X7VijYmXUCR/vvo0jYShMnMRX113
         HdIsguz5coLt01k8eb52MWKJWNYzTLzv0M2fSx6EFAFR2H5Jm45hrQsocb61nUJ+7Ez8
         iyLg==
X-Gm-Message-State: AOJu0YzQ0ymaCTM25g+zJCw83qovSI9wtyQiiye9PxlfTwfMoTzY127K
	iHldffQifuPd039HKCQ97DKJwWFNLLaA+y8WcQYwxg==
X-Google-Smtp-Source: AGHT+IF2a5oZx9HDP7vTBX20sjSCChYwlN8Qn7ZhdmR+gIzMc0EPCjcvVWAzEfdc1c5WRghxzDrhjoHWyakdEDHeJls=
X-Received: by 2002:a17:907:3688:b0:9bd:a7a5:3a5a with SMTP id
 bi8-20020a170907368800b009bda7a53a5amr3244955ejc.36.1698446316954; Fri, 27
 Oct 2023 15:38:36 -0700 (PDT)
MIME-Version: 1.0
References: <0101018b732bfffb-12002d52-9058-4b77-ab53-1fa728765bda-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018b732bfffb-12002d52-9058-4b77-ab53-1fa728765bda-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 27 Oct 2023 12:38:25 -1000
Message-ID: <CAOSpxdZzXazeoOv=hQBSC+cyyVsiqOtfqeVqX2Hr4XEUKN=OSg@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-3.1.29.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 22:38:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61506

There is currently a known reproducibility issue with the vim-common
package.  In my opinion nothing that should hold up the release.

Details:

It seems that the last sstate build of vim was done on an Ubuntu 22.04
worker and recent changes there seem to result in an occurance of
"charset=3Dcp1251" whereas builds done with the buildtools tarball yield
"charset=3DCP1251"

See: https://autobuilder.yocto.io/pub/repro-fail/oe-reproducible-20231024-k=
ys9f0xn/packages/diff-html/

The reproducibility build for 3.1.29 was done on alma8, so this
difference resulted in a build error.

I reran the reproducibility test on an Ubuntu 22.04 worker and as
expected it passed:

https://autobuilder.yoctoproject.org/typhoon/#/builders/117/builds/3827

I will be sending an autobuilder helper patch to use buildtools
tarball with Ubuntu 22.04 and this should prevent future occurrences
of this issue (once the version in sstate is no longer valid)

Steve

On Fri, Oct 27, 2023 at 12:05=E2=80=AFPM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-3.1.29.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.29.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/bui=
lds/6111
>
> Build hash information:
>
> bitbake: dd826595414c5dc1a649f45a9dd2430bf6d4699b
> meta-agl: 280f7e70af30eefd885f6e60bd29863b46bb2eab
> meta-arm: b1fe8443a7a72c65fa0fc3371f607c6671b3a882
> meta-aws: 6e3ace380b609dadf58c81c734ef2061e9636914
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: e482213f37828216c7a7df68ff353652cc865ec1
> meta-mingw: 7bdc58e6c5d1054b1b6ad5c4e480a95e995ccbae
> meta-openembedded: 300be975359fdb3a3b2bf7c6fe15dea7acac575d
> meta-virtualization: 35c723774ee06b3c1831f00a2cbf25cbeae132e1
> oecore: 0dbf3a15321b8033ff8ed86c6aa261fdb9c3d5bb
> poky: aeac1034661725b5c83e79f76238429fb236b090
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
> View/Reply Online (#332): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/332
> Mute This Topic: https://lists.yoctoproject.org/mt/102231153/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

