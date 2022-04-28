Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C3C433F5
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 09:17:45 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web12.7830.1651137458829076228
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 02:17:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kMBPc77i;
 spf=pass (domain: gmail.com, ip: 209.85.167.50,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id bu29so7563604lfb.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 02:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=XXmQoaLWZpRgg9E3N3A0Uae/3kHlZTEZPgV7zCOA4kI=;
        b=kMBPc77ix3pZ3LqcLieHgQkcNTpply2mUAuqCmVmKhbFlUcByibW370DiNJUhHoiW0
         iOPJVStCMey5PmU/iqo0FwbVelqZWS1afTU+sq9jPU5RAsNPT/epnmsQjRiDcV+eKv9L
         X5P9Hqe+qywHbhWTDGSqEopn4taWpNqyM0VrlQCNzuy3vn8JoBf68QihgRi1vpwkljOd
         oCp4+XOC5tUh5H2N3tngufi2qnPYr64dIeIYqJ0Z6u3icGtQmrYbCblZhgmRT5gWE0pJ
         lwSbnt/sfa90Zi2xi1CRL36ne+gZV5jpu4MagwHNuKDHqTewnp1HlvHG9DTIyjurfGZx
         2+WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=XXmQoaLWZpRgg9E3N3A0Uae/3kHlZTEZPgV7zCOA4kI=;
        b=mrmaoVgJuFvFqnmE9B9BqkkSPg/9y2KU0jtH9lYEC0b3ED00pzF7y6WQ9C30uOKDkV
         uBcHU8OVqRBvlwT5w/QhhHGGMRLJQot/csZGOMzXR62kINFadPpxfKWp62jNlEKoYYEQ
         WZP4nVTPG+xFdzOwHwWvR+rmiFZNNE3nKfFGLkQRZQPGoBQw09ZtPixK17C5C+lmFElk
         /x/kAMf7zD+LmXp5XBYwWB65NH6/ujScVGL3rRWUqdGdgtsiB/MTi4sqTiitbsu+Y5yW
         jdk7mdRT8xAbdmOAq4BeWDd/q0pg58o/4Tm6Umb0ooCeW7SX/gt0yMfci0JQXpwXB2VG
         MqTg==
X-Gm-Message-State: AOAM5319cWiQhh3ZHAfCN4CCCh0v9QJWTFKyWSfK8mfMlBzgF+g9QBni
	30yWnqlbFObUUt7iNyKV6vfxX6gSfpMBhuK3qvU=
X-Google-Smtp-Source: 
 ABdhPJwGH3syihctU/orPTkbFgol9F7u5XuxG+mxOa8crbcDWMwwtCz6QJrrmmhh9flK2Q/X1og3LxR/5NUz/iPlMM0=
X-Received: by 2002:a05:6512:3052:b0:472:7f8:f344 with SMTP id
 b18-20020a056512305200b0047207f8f344mr14136408lfb.380.1651137456947; Thu, 28
 Apr 2022 02:17:36 -0700 (PDT)
MIME-Version: 1.0
References: 
 <VI1PR0602MB3549F83AC93A53785DE48677D3FD9@VI1PR0602MB3549.eurprd06.prod.outlook.com>
In-Reply-To: 
 <VI1PR0602MB3549F83AC93A53785DE48677D3FD9@VI1PR0602MB3549.eurprd06.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 28 Apr 2022 11:17:25 +0200
Message-ID: 
 <CANNYZj_0p09+XSdxea1BD7iffnJhVE7nEKg2RuhAWet_+3Qwfg@mail.gmail.com>
Subject: Re: [yocto] Building recipes in multiple flavors for differing images
To: Martin Weber <martin.weber@br-automation.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 09:17:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56928

I'm afraid the correct approach to this is indeed several distros.
Yocto, by design, does not support building the same item several
times in a single bitbake invocation.

What you can do, is take a long hard look at the specific differences
between the distros, and see what you can unify. There's probably a
few decisions there that made sense before, but don't fulfil a need
anymore. For example, do you really need the debug/release builds? Can
you standardize on systemd everywhere? Can you make decisions about
logging and other choices at runtime rather than at build time?

And so on.

Alex

On Thu, 28 Apr 2022 at 11:09, Martin Weber
<martin.weber@br-automation.com> wrote:
>
> Hi everybody!
>
>
>
> We use yocto to build the system for some of our devices. Given we have m=
ultiple use-cases for differing partitions on the device (rescue system; ma=
in system in =E2=80=9Crelease=E2=80=9D flavor; main system in =E2=80=9Cdeve=
lopment & debug=E2=80=9D flavor), we use different custom distros for our b=
uild.
>
>
>
> With this mail we would like to ask the community what the best practice =
for our use case are, describe our current approach, and ask whether we can=
 do things in a better way.
>
>
>
> The software we use (machine/bsp layer level; software level) in principa=
l is the same (same upstream, internal or 3rd party), but we need to build =
them in different ways (e.g., one uses system V init, one uses systemd init=
; one uses optimized-non-logging versions of the software, another ships de=
bug symbols and enables logging during buildtime; one installs and enables =
various systemd units, another doesn=E2=80=99t, etc.).
>
>
>
> Our solution to this problem is that we have (three) different distros, a=
nd use distro overrides to enable/disable/patch/append/delete various bits =
and pieces throughout the otherwise shared recipes. The =E2=80=9Cproblem=E2=
=80=9D with this is that we need to use different build environments to bui=
ld our three distros, i.e., we cannot re-use otherwise identical packages. =
We were wondering whether it would be possible to use three images instead,=
 and build the recipes in differing ways depending on the image. The =E2=80=
=9Ccleanest=E2=80=9D way we could think of to do this would be to use recip=
e.inc files for the basic setup of each recipe, and recipe-X.bb, recipe-Y.b=
b, recipe-Z.bb that customize the build for the various use cases. This wor=
ks fine for recipes that we control, but we stumble over customizing re-use=
d recipes from lower layers that way. For example take dropbear; we might w=
ant to enable or disable it by default depending on the use case; and build=
 with or without systemd integration. We can=E2=80=99t find a clean way to =
extend the recipe in the upper layer with, say, dropbear-sysv.bb, dropbear-=
systemd-disabled.bb, dropbear-systemd-enabled.bb because then we don=E2=80=
=99t extend the underlying dropbear.bb; if we require/include the underlyin=
g recipe, we have a different $PN and now the FILES(EXTRA)PATH won=E2=80=99=
t resolve properly (and all $PN overrides in dropbear.inc don=E2=80=99t app=
ly). If we force the original $PN, now we=E2=80=99re building the =E2=80=9C=
same=E2=80=9D package three times..
>
>
>
> Once more, we do have a working solution for this (use different build di=
rectories and different distros) that enable re-use of the base recipes (we=
 use .bbappends to customize lower-layer recipes with OVERRIDEs in that sce=
nario) and were mostly wondering whether there=E2=80=99s a /c?leaner/ appro=
ach with more (CPU-cycle, harddisk space and package DB) re-use.
>
>
>
> Thanks in advance for any input & Best regards,
>
>
>
> Martin Weber
> Research & Development =E2=80=93 Embedded Software Engineer
>
>
>
> B&R Industrial Automation GmbH, B&R Stra=C3=9Fe 1, 5142 Eggelsberg, Austr=
ia, www.br-automation.com
> Phone +43 7748 6586 - 0
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56927): https://lists.yoctoproject.org/g/yocto/messag=
e/56927
> Mute This Topic: https://lists.yoctoproject.org/mt/90749157/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

