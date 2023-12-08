Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0490AC4167B
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 22:39:47 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web10.25857.1702075181152436332
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Dec 2023 14:39:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=YzKmsC8j;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.44, mailfrom: steve@sakoman.com)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40c0fc1cf3dso27180705e9.0
        for <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 14:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1702075179; x=1702679979; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=12ARKNgKRPg97dABdcAppQ/tx8eE1acqQ2L7d2JYXk8=;
        b=YzKmsC8j9k8iq2KkRydcW/4emXJVs/vr/9Axemep8eI/dMLHTO9d7qMy2TwKpCRWEV
         FNqqJI1g1dRSedRdH84cqmYXQo4I+kv0uOwY/F9q4+Xm7o0u4PN0Jjn8ejtEgfQC+BW3
         AEvLb39VOnXgpiOJ824XA/082KDRAFPKMxRiBXSAUtk0gnDUgPUDN1nBbqAcuhmkRw0A
         MbWWit3/zlQl7Ru/1jsyNQB/fSnadaUlpOYosXzwy+50KZf4YUJJgWjum7pNpyGxj/7t
         S00SS13d95ppAaBs8Dg2BKyJ5X+vZN/LeXWe4cAALQbxdGhu31PWIgiT+IABMjbmLu4W
         aIrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702075179; x=1702679979;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=12ARKNgKRPg97dABdcAppQ/tx8eE1acqQ2L7d2JYXk8=;
        b=rKWZwYWgONGx+2LQ8gmE8qOOzZFvEd5I8wPXiDErVhRy8t0wU1eu8dwoD9q1GQHXHy
         IRb9Snr/y8XJvRJYlulzfeqnN2eI5VNlieZmuPpzsGb+p9+JGbqruTVHVuO6V37xQIqg
         CAXjPaC3FwdTL7B+a9FR3lXan3PS5ogzbKy7+3qmbDo3/MmYD7OLxC5ZmaSbqP7/Rn9E
         vu8fv/eIIC8sWvUSHv/JyIjtpSu4gt9JAV2fYRtiNzxk5SZB5WNdbVuKokmF0ICAnbwb
         pKt6NyFKrL5cYAw9+UjFscvPPv08FPGm7AIOMUu36nupS2y/X+DY8G1nZiDfS19GUFEO
         aVgg==
X-Gm-Message-State: AOJu0YwA0tp8D0m9nY3qR2Nm3JKj0W1NZ5TGTJhpr9ypcQr16MGjAf8Z
	vAeWbHYCn6yhX5K+z9cDJooSHDs6ALTCWjFJk0IPPCv1xrSJcxAL
X-Google-Smtp-Source: AGHT+IH6lESYXS5eM46+exildZKAw+cIgiABdU4Zcl2988FRu3e8Bbl1HWFfGkxzdAv1x1gRzpkpbSZ+ZIzOOhFKnKU=
X-Received: by 2002:a05:600c:1895:b0:40c:3379:ab5e with SMTP id
 x21-20020a05600c189500b0040c3379ab5emr368483wmp.0.1702075179138; Fri, 08 Dec
 2023 14:39:39 -0800 (PST)
MIME-Version: 1.0
References: <20231208215915.225182-1-alexis.lothore@bootlin.com>
In-Reply-To: <20231208215915.225182-1-alexis.lothore@bootlin.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 8 Dec 2023 12:39:28 -1000
Message-ID: <CAOSpxdafJrqLWoXs+=0Zkpe=DGsp=MHWXWj07XXQOpbhb1Cyiw@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][mickledore][PATCH 0/3] fix
 mickledore tests reports
To: yocto@lists.yoctoproject.org, alexis.lothore@bootlin.com
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 22:39:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61850

Mickledore is already end-of-life, so no further builds are scheduled.

There is a dunfell release that I plan to build this weekend, so a
patchset for dunfell would be much appreciated if you would like me to
test it with the 3.1.30 build.

And a kirkstone release is due shortly thereafter, so we also need it there=
 too!

Thanks for looking into this!

Steve

On Fri, Dec 8, 2023 at 11:59=E2=80=AFAM Alexis Lothor=C3=A9 via
lists.yoctoproject.org
<alexis.lothore=3Dbootlin.com@lists.yoctoproject.org> wrote:
>
> Hello,
> mickledore release 4.2.4-rc3 suffered some tests reporting issue (tests
> result not pushed, regression report not generated, etc). This is due to
> the fact that the mickledore branch is not properly described in
> BUILD_HISTORY_DIRECTPUSH in config.json. This issue has already received
> the following fixes:
> - add the missing mickledore entry
> - then replaced the quickfix with a rework on BUILD_HISTORY_DIRECTPUSH to
>   prevent the issue from occuring on any new future release branch
>
> While those fixes made it to any release since Nanbield, we forgot to
> backport it on yocto-autobuilder-helper, so the fixed issue still occurs =
on
> this branch
>
> This series brings the minimal set of patches to be backported **on top o=
f
> mickledore branch** on yocto-autobuilder-helper. This is from a bare
> cherry-pick session with minimal conflict fixes, and commit tags untouche=
d
>
> Alexis Lothor=C3=A9 (3):
>   scripts/utils.py: replace BUILD_HISTORY_DIRECTPUSH with hardcoded
>     condition
>   config.json: remove BUILD_HISTORY_DIRECTPUSH
>   scripts/test_utils.py: update test after BUILD_HISTORY_DIRECTPUSH
>     removal
>
>  config.json           |  1 -
>  scripts/test_utils.py | 29 +++++++----------------------
>  scripts/utils.py      | 13 +++++++++++--
>  3 files changed, 18 insertions(+), 25 deletions(-)
>
> --
> 2.42.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61845): https://lists.yoctoproject.org/g/yocto/messag=
e/61845
> Mute This Topic: https://lists.yoctoproject.org/mt/103064175/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

