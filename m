Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0016DC021A4
	for <webhook@archiver.kernel.org>; Mon, 24 Feb 2025 16:47:27 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web11.95145.1740415640049426514
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2025 08:47:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=CasDqA7d;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.174, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e5dc37f1991so3896643276.2
        for <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2025 08:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1740415639; x=1741020439; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j9cq484o9DaO5uHMnT+2z8mVZY8eMUsqNcprrQtRROA=;
        b=CasDqA7dI0i9mxCEunyy43IG/EgywrI5wL8oQkVdxU+LBdrMNfS7aSMRnhfOfWiw1k
         cqyekD69A0p/t4/0BBUT7+eH568YUR6TplOl/47wRHy1x20o6VAsTjcGOPwxoYCO2YqT
         ajSpRwsoEBo8jVcwwZ52zUDEg0nth81bRwoy3kEtMUbDcnaLCIm1Lai7amTKCuEMc5p9
         zu1w3qyD/TQflrgb4LC+ypRW1WkwpP68+aNJtK0SYzYnJUYNbQNzjgmbPph6hhHnNkEP
         X48ggbOKxUMdIBrIY5GueOadVSTDAeCr9oDoTY9m4i80u0JVIl2qQHHy9gvNq7Qc8UdO
         m2Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740415639; x=1741020439;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j9cq484o9DaO5uHMnT+2z8mVZY8eMUsqNcprrQtRROA=;
        b=PUPSRHjNRa5DpfYuJk6A91M1fb2/gaAVPDBSsZ4/eiWZcloTmg/zLkQNK2qp6RNpo7
         yj+D8gb7IlMZrCkC3AbRJc+kjsBgzsZ8rliA6VPpMVpcKur3Vwr5rhvKFbqlDf+JAaSw
         87We1xz6E7vPgOOtI8byl9qim2y4VL3S9qmx2NBr5AoKvnqDatqAXy8K6ArOa3x6fyBY
         rzBf/9kCDe2SXFrvbGtxwEVMjpod2rpsvaU7MtYpYIfdh2jFlrGY30+O1ckMP/ydJfea
         wm4crwUIJhhkBHlMXU5VOJ/9RFhJ/jqvsYUDY9JtuH/ARv6iPSK91V4/lrODRNfSCMk+
         95GA==
X-Gm-Message-State: AOJu0Yx9BbAk6kspxG9rba2BcQ5cuj+6+HdhJ8A3lt3QTl489aeJ22JZ
	bG0FmTPr1tvRuz6MfAjYDOVbNN+D0H7Chw4wRXtk16QjpbcGYiN9ZttC1oP0LNetGkq3ZOSE121
	347id2tGG0Z04g6jgET9ndCu7hdlWhGm80KrVj7VbHxN/avom
X-Gm-Gg: ASbGncsxIrhHGECRt9wH8vwQ4sMUy6MrhscGwXCuH/ghPpFcHAv1HWdY2wI0GYkvYR8
	r4jj3KnQolcclMA0HJxQf1PCqX71mojbZH76Y6w9F3zmFjdRKZyhGreTAffXc/bnIqw7wZIJQvy
	L+7YfbEL3hr7B59rIUDJnXFjGj5I3koP5xyJFI
X-Google-Smtp-Source: AGHT+IFWOLeZeC5u5VWWGaJfYtzd3IgxqA0bioR21QrODRdauq3ICN7l46/+INeFC9t9CgYCZvlmO4FU5rB/5HL5WtE=
X-Received: by 2002:a05:6902:200d:b0:e5d:bfdf:b1b2 with SMTP id
 3f1490d57ef6-e5e245ba012mr10574271276.8.1740415639051; Mon, 24 Feb 2025
 08:47:19 -0800 (PST)
MIME-Version: 1.0
References: <0101019538d6e616-8b7e7ff9-d683-4a53-b124-ff4ebb179bf8-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019538d6e616-8b7e7ff9-d683-4a53-b124-ff4ebb179bf8-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 24 Feb 2025 08:47:08 -0800
X-Gm-Features: AWEUYZlsOjSAfdUjg_nFdpQiAk9_bFqDK8pZMt28FAOilumUx8oTIll9zdmJDdY
Message-ID: <CAOSpxdaRX6O5hvGpxx7Spx-LSWVDaZt5cbNmPt3wd82X6hnCww@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.1.3.rc3)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2025 16:47:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64857

This was an "all green" build other than a CDN 503 Gateway timeout in
the source mirror selftest.  Since this is an infrastructure issue it
is OK to proceed with QA on the rc3 build.\

Steve

On Mon, Feb 24, 2025 at 8:42=E2=80=AFAM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.1.3.rc3) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.1.3.rc3
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/1072
>
>     Build hash information:
>
>     bitbake: 58e5c70a0572ff5994dc181694e05cd5d3ddaf66
> meta-agl: 005d2b0a27ebdd21fb2aaa589c8672650474b055
> meta-arm: e56a0cd6fe5e796aa59bd0d4bcbbb585ea626199
> meta-aws: 9a8a5edc0ba8be96273966df0215fb921d8a6e16
> meta-clang: c709a5196f1e8654425b43b478064395386c36d4
> meta-intel: 0ee9e8454cd41dcb0f49df7dcf2182b4d5e7cc96
> meta-mingw: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
> meta-openembedded: 6851cbf026088a13b2b45f684838d3dc4d7ccfdd
> meta-virtualization: 247ea9c3880a257003ce2cc566fcdbb307ea4374
> oecore: 35ffa0ed523ba95f069dff5b7df3f819ef031015
> poky: 11a8dec6e29ac0b2fd942c0fc00dd7fc30658841
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
> View/Reply Online (#518): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/518
> Mute This Topic: https://lists.yoctoproject.org/mt/111360898/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

