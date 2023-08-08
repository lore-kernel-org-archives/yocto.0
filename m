Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9596FC001B0
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 04:04:27 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
 by mx.groups.io with SMTP id smtpd.web10.54499.1691467458338375916
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Aug 2023 21:04:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Z+UTOVVr;
 spf=pass (domain: gmail.com, ip: 209.85.161.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-56d8bc0d909so1069340eaf.3
        for <yocto@lists.yoctoproject.org>; Mon, 07 Aug 2023 21:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691467457; x=1692072257;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yKbTZP57asXxsqebsjmfivct0JsqdI3D9lR/aFgL2Hw=;
        b=Z+UTOVVr1tZV7b42jUyae/JZbr1rAbwLx8UIXvwVlYa5P0MeK7u//U+jaal/Dkn1n1
         bIzFXg2yYLq8jfle6G6D6ZnSUPIF8Po9AQz3sv+yZb8R/WGiPxJTYxqHTLlUfd1G921e
         IF9ld2Uu6qJ2Po7hYKAsbx4l6PB9BQaTAGP8A6Byh3l3ZI5AgTzCuUy92e7HyJjcZH6t
         Bd9zdO3CW9dN8hHNdPsjIaDCpgGPV3fUcQ7ILyFagACni6jiHQuakqD5aGpJ2mvwL+j2
         ETFXxha9OASyzG9Y+/bzUGIk1/CwLKpmhbhvTOqsMcD4RWnslMe3f34Pg3BgYscSw98K
         huEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691467457; x=1692072257;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yKbTZP57asXxsqebsjmfivct0JsqdI3D9lR/aFgL2Hw=;
        b=MrieKCuUJc3PncaBzRd76G6ZPaImSndQJ5dKJShZt7LlNUYFL2883tl8Xtue8S6gwJ
         GOgKuGdsJ75nmQhxqJz5eZA3AjbwyA5239Z22LdpTcG4sY0qmlWYU7LTZGJkkkD9fMVm
         2jfXexh21b+aohLHzEiTY2hRoQPv7bN9x0uLe/xDsjWJpzokT52Xi76E5EZFeE/BacwS
         m85oLbzRUOCAp++IdeYZx/5sbyIWv43NEErrJ4JdxWOeJztgpPTA84BqlfWSjxvBzRr2
         tjWldc73nn8x/jowRwdQJ+QAM9Haj/RWJHBbWT3sn7VyK5Dgi8z3wvGNXD9+xFYrYm3E
         +qvQ==
X-Gm-Message-State: AOJu0Yynz771JVFAq7MHnbtkOiaiM0GackN3U7XL/DzGTC4/5+BkZ/8u
	i2gFCmIlnTq1usMzlgc+HyZxWim2P1TBlS/gyVE=
X-Google-Smtp-Source: AGHT+IHQrfT8ysAyYxXsZHo8HvQiU+sTuZ4CmlkrHZKOLCJ7Gq9hnduy4p11pwGKkPSE28RYb4MzRwb5QOVgKfcoccM=
X-Received: by 2002:a4a:8554:0:b0:567:27f4:8c45 with SMTP id
 l20-20020a4a8554000000b0056727f48c45mr10100700ooh.8.1691467457517; Mon, 07
 Aug 2023 21:04:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sphD-9rSQ96Q4Q7fYH-r+3ZMTRPo+046MwKez4HwQUbxg@mail.gmail.com>
 <5592.1691462169979267701@lists.yoctoproject.org>
In-Reply-To: <5592.1691462169979267701@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 7 Aug 2023 21:03:51 -0700
Message-ID: <CAMKF1sqpfaR8Wx+N7oCQ4q8M2TVgaunE01ZLSi=8NTJA1465jQ@mail.gmail.com>
Subject: Re: [yocto] How to add a few lines in config.txt in Yocto project for
 Raspberry Pi
To: Crane <crane2018@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 04:04:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60732

this looks good. So now what kind of error do you see. You might want
to check the build tree of this recipe and see if the patch is applied
in S

On Mon, Aug 7, 2023 at 7:36=E2=80=AFPM Crane <crane2018@gmail.com> wrote:
>
> The recipe append name I used is rpi-config_git.bbappend.
> It is placed in meta-custom/recipes-bsp/bootfiles/
>
> The layer conf of the custom layer is like this:
> # We have a conf and classes directory, add to BBPATH
> BBPATH .=3D ":${LAYERDIR}"
> # We have recipes-* directories, add to BBFILES
> BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
>             ${LAYERDIR}/recipes-*/*/*.bbappend"
> BBFILE_COLLECTIONS +=3D "meta-farview"
> BBFILE_PATTERN_meta-farview =3D "^${LAYERDIR}/"
> BBFILE_PRIORITY_meta-farview =3D "19"
> LAYERDEPENDS_meta-farview =3D "core"
> LAYERSERIES_COMPAT_meta-farview =3D "kirkstone"
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60731): https://lists.yoctoproject.org/g/yocto/messag=
e/60731
> Unfollow This Topic: https://lists.yoctoproject.org/unft/100614184/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

