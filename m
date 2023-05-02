Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1EB6C77B7E
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 16:52:24 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web11.1368.1683046339922059040
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 09:52:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=KL8T8/kj;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-1925ad4953dso1083127fac.2
        for <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 09:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683046339; x=1685638339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eo1NNGbP/0ND/zsXKmptmjqKTN6zQ9KtBT91pQO0tCo=;
        b=KL8T8/kjp9IXjLKzwywhjdaZQJ8BUNyzsomK96Sz4unU94CHlgYUTaO88EUhNS9HuI
         ff7AtVrltQFurXM66fV061MBmpJQw7WV6qZwwMYeBrHuOlozvzdsN9j3G9DpwUCm8M9z
         kYJjeDNbvyNUzIGbfRMW7gAu8Lb6cG8XZcAZLeD0FsNEonM29/g1UCQeLnjS/mXfpnXB
         M/vMxxsCPoUFLQoZSwRDjAVfMJ2HyknwAVoVJu4wGzXpjpS0AKzTHQrxs35/8bqtxGBc
         4nTumZZdpJ3nmktf4DXMzTGL0xQMptAN5x+KOPPi52Df2ICP4y7BeDdYFCiubJDRAkVM
         e9Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683046339; x=1685638339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eo1NNGbP/0ND/zsXKmptmjqKTN6zQ9KtBT91pQO0tCo=;
        b=kgwNF7JI8N6e1Fzp9NJUIUuE+Alq4PLrihxU2zqmr99BzvRxKfPFuRG7oR4KP2OCgX
         En3e7lQvuWYKS+nC56LUSfBOMtzvEjUu1IMt5smlwJizWRrqUfU2Dq70SIA4pN9zyTst
         xGkKZa1nOyKy4Jay7AhkbDuNTWKFo2p18MC+18JZKjoi1weTUEIl5kXorlW2ga/elmod
         WEvbhESc/hyKi/5lMZpglTR2ZBKARSs03Besx3IVIehxg9hxqH/SmgQqxwZYTHhwReXs
         b0Vidovrp/kIHkNLxJI1XiveIYvwLRDahYMri4WvV4vwxZ0ZfV6tR7HjSJf8q76wKK9h
         EGmA==
X-Gm-Message-State: AC+VfDyIVR0tWHSufe85wrhTG+M0qWRtQurXGs6vtWlLxfTHKDFf2eMV
	fGMZ2WYvQPtbW6lr/kYZQIXq1pjxaVT1ikwVIfU=
X-Google-Smtp-Source: ACHHUZ4b/zgc9TkO+xaQnuQnVk0RDrB1MpiCggIUEm2MMOsuHXhhbmXb0aKT+8ZjuKU0rbQ5Yj67Xn6oOzhl1XMNMRE=
X-Received: by 2002:a05:6808:3a5:b0:38e:49f7:8a4b with SMTP id
 n5-20020a05680803a500b0038e49f78a4bmr7013479oie.50.1683046338725; Tue, 02 May
 2023 09:52:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAHGyC84vaiQhpMAccbYDoLCVajUg8NpMUa-qoaWYca8UkW_s8w@mail.gmail.com>
In-Reply-To: <CAHGyC84vaiQhpMAccbYDoLCVajUg8NpMUa-qoaWYca8UkW_s8w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 2 May 2023 09:51:52 -0700
Message-ID: <CAMKF1so=26v8D2mw-+wETg38q4BeNrjrm_p8G-ZV10pWDQwrfA@mail.gmail.com>
Subject: Re: [yocto] build kernel libelf.h error
To: abbas ali chezgi <chezgi@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 16:52:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59842

On Tue, May 2, 2023 at 12:01=E2=80=AFAM abbas ali chezgi <chezgi@gmail.com>=
 wrote:
>
> hello everybody,
> i want to compile kernel with `CONFIG_DEBUG_INFO_BTF=3Dy`
> it has errors:
> ```
> | linker.c:17:10: fatal error: libelf.h: No such file or directory
> |    17 | #include <libelf.h>
> |       |          ^~~~~~~~~~
> | compilation terminated.
> | btf.c:18:10: fatal error: gelf.h: No such file or directory
> |    18 | #include <gelf.h>
> |       |          ^~~~~~~~
> ```
>
> i also added to linux_%.bbappend:
> ```
> DEPENDS =3D "elfutils elfutils-native"
> ```
>
> how can i solve this problem?

check where they exist on recipe sysroots. Secondly its not clear if this
is building a host tool here or a target piece. ideally show the failing fu=
ll
compiler cmdline and it might show the problem in better light e.g. missing
include paths etc.

> thanks
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59831): https://lists.yoctoproject.org/g/yocto/messag=
e/59831
> Mute This Topic: https://lists.yoctoproject.org/mt/98633780/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

