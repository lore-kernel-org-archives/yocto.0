Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F38F1C77B78
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 19:16:18 +0000 (UTC)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
 by mx.groups.io with SMTP id smtpd.web11.109.1683054975800200657
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 12:16:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=CYLU/Wnv;
 spf=pass (domain: gmail.com, ip: 209.85.166.172, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-331514f56a6so135225ab.2
        for <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 12:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683054975; x=1685646975;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c/WRED1myHINAmjiPZlfXdnOIgeCEi3W88wsc+WfyxA=;
        b=CYLU/WnvVQQVQcd791k9Jn/SxAqFkD4LxEAx91B0P/TILA/oS442XHGonM+9z4c9nL
         /sQc9YFZ1/WIf3IQU9wpWVDpXVTImoD3SRHzsJxgeeIOvtIXXpef/wDhjI/u3CWUpc//
         3JtHVpq8mqgpd0o70XeFL3trhrGRz6tVbmHLMr2636Mw0ePBsyLEv+IB6CF1u2qVO8Qt
         /tWTKE86DXDRVrCOfiPBaCDk1Aqw1BLg9XO3FOfWWgscqMh759tSt62iMo8Gaac2dfKc
         czBhlB2GyEVuDTwtJ1cxKFPmG10M8oebDM2jWqAaaMeP/7fVDSUhKSKFGecU8gM5txBi
         0bdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683054975; x=1685646975;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c/WRED1myHINAmjiPZlfXdnOIgeCEi3W88wsc+WfyxA=;
        b=IO20MkLAcpYdL7/v+LnREoqb8Cn2fLe5vXOaGLwbjXDXOfYddhWUAtYsqQZv+9gQAq
         blXZmOQjJ3Vvlu5mfiF7sZy1nkF7eDGqhkwUXBczJLam0HQKOYObmWIw2iPM9hzAUP2a
         hoL/e2YJf33l/gLPGAwBteZDWF95CrQx/iMskZO7PyaEBX2Wzu98ANdybe92tSrh78kv
         wdP/WqWodb6pCqKfMP7UJtb6w1ZFp5GChvrE1Zs+Yg7KuUgDFXGegsvLfR3zqQNLvZR/
         SbzotR837iGGYzCKkgST+33VYUcqzt8UNMBy374mI3MzJwKJ/oMUhwT3nuHMjwz8s6ZR
         dY3Q==
X-Gm-Message-State: AC+VfDwmhZTO9r1qMrfkWfBJhmOQdgRyTQmC3edeqJBdnVWmrJxQophd
	+Wgskg4hp7jFOV68YlUAkCHl4P3hDHHOAcvGL4s=
X-Google-Smtp-Source: ACHHUZ4nIk5nAspPrS4U2drNtIhHAK7NJZwrklKnWIJsjfPgG0P4qleIa/bW/XlC4PM9VaF0PuDVPzOAwstoleP6B1c=
X-Received: by 2002:a92:c90e:0:b0:32a:fc58:7a4d with SMTP id
 t14-20020a92c90e000000b0032afc587a4dmr13026984ilp.2.1683054974932; Tue, 02
 May 2023 12:16:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAHGyC84vaiQhpMAccbYDoLCVajUg8NpMUa-qoaWYca8UkW_s8w@mail.gmail.com>
In-Reply-To: <CAHGyC84vaiQhpMAccbYDoLCVajUg8NpMUa-qoaWYca8UkW_s8w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 2 May 2023 15:16:03 -0400
Message-ID: <CADkTA4Pt1sN1jnDaj3hwMCk6ZRj94xXhaRtycLqtGjL=-Q+kLg@mail.gmail.com>
Subject: Re: [yocto] build kernel libelf.h error
To: abbas ali chezgi <chezgi@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 19:16:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59843

On Tue, May 2, 2023 at 3:01=E2=80=AFAM abbas ali chezgi <chezgi@gmail.com> =
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

I can at least confirm that linux-yocto builds with that option
enabled. It has similar dependencies in the recipes for elfutils.

What's your kernel provider ?

Bruce

> thanks
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59831): https://lists.yoctoproject.org/g/yocto/messag=
e/59831
> Mute This Topic: https://lists.yoctoproject.org/mt/98633780/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

