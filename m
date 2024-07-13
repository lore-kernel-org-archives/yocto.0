Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FBDBC3DA42
	for <webhook@archiver.kernel.org>; Sat, 13 Jul 2024 19:19:04 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web10.3523.1720898339656456231
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Jul 2024 12:18:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UHWP/0wZ;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-25e150603a6so1529459fac.3
        for <yocto@lists.yoctoproject.org>; Sat, 13 Jul 2024 12:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720898339; x=1721503139; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MFGFcuhm8STxYXRqF65yCAI/JTKXUkkcW5YydFQkdrk=;
        b=UHWP/0wZ/vw9sg4haKp5fxLg0VQY0h2/CXmwxYvIHy2fXVaSSNJjpXEp47MH99WM2/
         vbwXhhnazjZ+B2yK2oOz2bSFCa/AM0MIx4rEfTtaKBluAPISK/kJPt7O9M4m5dTNeRnU
         7dbo2F3axWRgdKxbgcZA50nyFaD+frLVQlDBOL7Z/dfMNcXPDHAffrgrmKmqKOEzPcwY
         l0VMEDKL1QcR86Eg5eYASofxIz1eF0kPmdQCukdhe50mk5VzprlCiY1z0u10q0utXLMr
         yeInkErk2f7/gcOp/To5Hafe3Yy2uqCGo+KEhLNEAugDieHapY0SQbvrqm4xg0OaP/2q
         /gIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720898339; x=1721503139;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MFGFcuhm8STxYXRqF65yCAI/JTKXUkkcW5YydFQkdrk=;
        b=USQA2Cc539JWrVIhLdgEL3WiMWm6mcrwoZLxN/PAClnE11Hfmzlv3hdVE4s4n6cukM
         GAjcDHS+/UMVR/FM5ssyGEFoKJu8F+iILLAj0sl8raQIm/bVeFvhdwZ8xifgiBY6za5u
         4K3M3SDgp0hqg+IgtSt+0Utq29hHse36+o1hwVxtQi5caCd9jjLs2u/tkP+0Kwj/BiR1
         6Avu6Klqu0O/PTtlQcqc4d9kqJpdYHgLV94opbmt+fgGtye/4FOF/fpEAyRt1h+XhHM7
         eOs8Oj+KIc4KqUOg6aKo26VJlYmOvwyab7CJdU9KGi4/bLRIK9YGL6drLRq4OXbzyATQ
         opCg==
X-Gm-Message-State: AOJu0YyoV5O3eWM/C8MptdC9/if9O5UPkuddOjgz2ivOa4K8OmGHv+Vk
	FndYNM/1Qx/uo8O6d88VgVk5/GGLRWfalYckUoOh1yd4eEQSE6nMxhG/oY7Ru/Q5tFhO7L6GQZP
	f/7ajsG/eMM3R9FpQCwV7EkOWeD0bn69kij0=
X-Google-Smtp-Source: AGHT+IHsD6ghOJx0xeh8xFH+LKsRFPGLLQosoTqL+G0KAnw+wNOV44iYve/NaRRVBxbTS6cqZR+CnAgpqbIwZdZ2/wU=
X-Received: by 2002:a05:6870:7b4e:b0:251:46d:d32a with SMTP id
 586e51a60fabf-25eae75644dmr12421272fac.8.1720898338661; Sat, 13 Jul 2024
 12:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <18817.1720885844486271136@lists.yoctoproject.org> <1227.1720890414430366496@lists.yoctoproject.org>
In-Reply-To: <1227.1720890414430366496@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 13 Jul 2024 12:18:32 -0700
Message-ID: <CAMKF1so2LCk5ntBSOs7d5wnj-+nb0ESbcXUBORDqpcOYj5MWGA@mail.gmail.com>
Subject: Re: [yocto] Bitbake: arm-poky-linux-gnueabi-gcc not found
To: yocto@lists.yoctoproject.org, gavrosc@yahoo.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Jul 2024 19:19:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63487

On Sat, Jul 13, 2024 at 10:06=E2=80=AFAM gavrosc via lists.yoctoproject.org
<gavrosc=3Dyahoo.com@lists.yoctoproject.org> wrote:
>
> hi again
>
> i have removed the line from the file as you suggested and i tried run on=
e by one the following commands
> and finally is successful and all folders created correctly.
>
> bitbake -c do_fetch helloworld
> bitbake -c do_unpack helloworld
> bitbake -c do_compile helloworld
> bitbake -c do_install helloworld
>
>
> Do you have any idea why it build correct when i ran all the orders one b=
y one instead of executing 'bitbake helloworld' ?

All these tasks will execute in dependency order when bitbake
helloworld is run, however, there are other tasks like packaging task
etc which will also be executed. Do you have rm_work enabled ? check
if INHERIT +=3D "rm_work" is set in your config metadata e.g.
local.conf or distro config etc, since that will delete the
intermediate build artifacts to save space.

also try
bitbake -ccleanall helloworld
bitbake helloworld

and see if that works better.

>
> Thank you for your support
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63486): https://lists.yoctoproject.org/g/yocto/messag=
e/63486
> Unfollow This Topic: https://lists.yoctoproject.org/unft/107200784/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

