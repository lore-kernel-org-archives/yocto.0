Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3FF8C35FF3
	for <webhook@archiver.kernel.org>; Fri, 21 Mar 2025 08:38:18 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web10.16469.1742546290992093788
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Mar 2025 01:38:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hMA1Hvm/;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6e86b92d3b0so14188126d6.2
        for <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 01:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742546290; x=1743151090; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4+DwlOiYN9/G1iKWGK73Y2pnx1SuIthAWqZrlF6bMtI=;
        b=hMA1Hvm/ORPUiWu7z7R/z6XqPUER/toQpC16pWwDp0N7Bt6RdhCwVmEYJslFEaSaSh
         zOhdB67jlTKJTsYCJH9kLQbpw1jDN4+M40x6KNJbo7B1kGAXxE6LTp0LHQYr1LWwSj6Y
         ijY4powJ9+ImGD9rTk3f8wwi0THwFDrEpFNMd6CHu4YpesrAf8EIL5Ne7ovy2SBuKqyi
         sQe3XKQezSAYwhxbf9kxphYHQI/JlupSOVspEYgS39Eg/wWC48F9Su5ofU5mWwONQnmC
         w5IOorypRXxpDki7KfGdmVXgeSNORL+/80TEZqZnLIBNngI8ys2GhBszi9CNmRCPfyRh
         JlAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742546290; x=1743151090;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4+DwlOiYN9/G1iKWGK73Y2pnx1SuIthAWqZrlF6bMtI=;
        b=KjPj0aSoh3XWQtZuLd4Bz/ShNuD82x80eb3bz/b6NeEtMSkBuYj2DujN2R0nqd31lJ
         8ONwoZEiHaPT6t7xU+dNKwUdo1ipSDjiahHDZn/4r+J9uNO8HnJQNG8/eYIOcn+uxIYU
         bswKBI8i8jYOYVxzkOvXfd5bR3R5IHGBDlFxWlsg6Mn5mA/CGPu08GaX/wlM+SeESvmk
         gUlshzvstTIOyfPxX96lmbLmNG3llnBf+2M8yTARND8JaiA34NakaLaUEP4cbv57D0CD
         X7q6fr6UMLsdrA+JqG5fLBc7zgZ16HwjtiRvWEdbpTBy7fwAUcMxfH8g0Sojd4Wi4Aos
         6duQ==
X-Gm-Message-State: AOJu0YyxB+FcVcLemPwxPVU3MVAf8nm+d1Lsd6stFKETt7AIz1lMVQKN
	tlj625RkDSNU3iY1nVm+Z7Og6rGYZAEhh6THOFDUWJD9WsYPq2rgpdhnqiPElOpsnlcCVLvCNsZ
	ekxKsqfbQKhdSyiysWdrmqbLyhPDjFA==
X-Gm-Gg: ASbGncuQYsw7DhQe6BYzetKTNMyXRMZyc9CFPANWh8QOoW1uPRhVvABP8nt6UThAMp3
	80mlZHJ+WqWcyMMF3De1OFaKmzjUqPB+fCX1gltXibz/gAVUYvsJ+s3L353nie/lvWug5hDqbEP
	gx2OgsQZfJ7pK9+jPUhdqXcwjUNnlaSoIKqNUY77jkenOnkWWKoPYEAEPj2nX5
X-Google-Smtp-Source: AGHT+IHZpLaIOzqw5K31xIy3nU24AQLdXqocb2vo2QRRnKMlSrV8Th3CmFLKNY52VQ0FGTfaszOl67bqY4zmKZn8MBc=
X-Received: by 2002:a05:6214:2407:b0:6e8:c713:321f with SMTP id
 6a1803df08f44-6eb3f339e06mr40722516d6.35.1742546289997; Fri, 21 Mar 2025
 01:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <9eadbb33-7272-413d-9610-7bd9bc9bb050@konsulko.com> <20431.1742476556736758958@lists.yoctoproject.org>
In-Reply-To: <20431.1742476556736758958@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 21 Mar 2025 09:37:58 +0100
X-Gm-Features: AQ5f1Jq1PISTbRYD4LaabODNYW_HjO2-87WmYH8OEUFQfWsYYEsZeI4a1FjhJw4
Message-ID: <CANNYZj8gZ0_9Xcvwz1G4YkKkB1WmG1C6z2D7j4caY9M=1UhCxA@mail.gmail.com>
Subject: Re: [yocto] How to build a yocto image with two different python3
 versions ? #yocto #python #scarthgap #sdk #toolchain
To: yocto@lists.yoctoproject.org, 283982@ust.com
Cc: Leon Anavi <leon.anavi@konsulko.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 08:38:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64998

The correct way to build software in Yocto is to write recipes for it
and build them with bitbake. If you attempt to do something else, you
are only setting yourself up for difficulties, frustration, and a
significantly reduced interest from the community in helping you.

So please: point us to the upstream repository of the thing you want
to build. Then we can give you tips on how to start.

Alex

On Thu, 20 Mar 2025 at 14:15, 283982 via lists.yoctoproject.org
<283982=3Dust.com@lists.yoctoproject.org> wrote:
>
> Hi Leon,
>
> When I try to run pip install scipy, it attempts to build the package fro=
m source because a wheel file for the ARMV7L architecture isn't available. =
Since the team has decided to move forward with the RZ/V2L, I am currently =
using the STM32MPU157F to learn how to build packages with Yocto.
>
> As Python 3.8 is the default version available for RZ/V2L, I need to inst=
all Python 3.11.5 to run the application I need. Since I don't have the RZ/=
V2L board yet, I am using the STM32MPU157F learn on how to build an image w=
ith Python 3.11.5. This will allow me to apply the same process when buildi=
ng a Yocto image with Python 3.11.5 for the RZ/V2L.
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64990): https://lists.yoctoproject.org/g/yocto/messag=
e/64990
> Mute This Topic: https://lists.yoctoproject.org/mt/111786607/1686489
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #python:https://lists.yoctoproject.org/g/yocto/mutehashtag/python
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarth=
gap
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolch=
ain
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

