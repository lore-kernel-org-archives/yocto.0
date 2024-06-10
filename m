Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668C4C27C55
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 16:35:22 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web10.24447.1718037314385190423
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jun 2024 09:35:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=P3j2F8++;
 spf=pass (domain: gmail.com, ip: 209.85.208.174, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ebeefb9a7fso8599321fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 09:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718037312; x=1718642112; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cc4iSjStJs7EV8K744p1YasF277T1ifmpnzLTWadDyw=;
        b=P3j2F8++HCCwVQn//CJP3WiapnQ4oyWvLURr4/RhpsF8741IamjYZksszTcpmNKOvH
         Us0Trvk3OgflKt1pt6qVt7IU6RzL0/2UPVQ8EnAGGSHiM22dzhcriCjAUUVKLjeEVGb+
         ZztzAXmn14g2WSo1gy8aQwj1KmfU1Yt6oIOMe5WFVyPDN7g4y7rdi0YQLgYTJzq5adNf
         98fjKhJ+5KpltzXgjJX8lTWLlGaSSDfde8EhrjxA1C8LSOQ9j8BF+PqNXEdchNoxHak8
         h4AxCVOH7JFUCBtNzjpeTmRxVI4bkY8GVyu2zsJcxJI1Mlt94SXbQWzvfr/71YqVLT6m
         m43w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718037312; x=1718642112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cc4iSjStJs7EV8K744p1YasF277T1ifmpnzLTWadDyw=;
        b=oQeT3348kQTgx08ezMWTJs6Tt8H2RduxF1VzHzBF3eD8/LhWm57ac14M6agA3OnrHX
         DI9PbgF+IX4F4EL2Ux6MaedxfcqMeRm5IfW8E8MOshGQ0zJ3fH0LJnZUndsl3QQ/h5Zz
         ckpmPV/oySsjykwBTYE2W82/M3UKneBRWWo8rTlncBhHqrVKucH1536plzw96RtV6BIC
         VyOeCPlzoNzvqlldhQGSjMkrsJ+Sb4MTg8l1ysWS6jS9ktBdorZoLgRDdSdpIUKooSVx
         I+5NDH4rc0ffVJMqKZXGbIPtIeOQoCQHfyhRIEsrHLjKaFTTvnJ0lkvNAocwGy0vbrxE
         ngFA==
X-Gm-Message-State: AOJu0YwNpnEybgZa2FD+bKae2PQpojMzbx1doX4U64hrrY7vRH7/pi4V
	WbPK1D0QFS5SrBafOKP8u35ssQz8V3K2MBDMxpiUpuBiFE0MlI8+l3OTxfb5UIZVU4//8QoW4Si
	jlLwxwcIvSYhirJn9MVGS8VfwFU7c61Kh
X-Google-Smtp-Source: AGHT+IGMC44pG1TUkQnlzn7UfnsrScxv7iHICrHt/YNzmeQ7cLXYp/G8wzWRCjwCVvuVZBPQfdkzpYlLwJCf5d3ULSI=
X-Received: by 2002:a05:651c:8a:b0:2e6:f619:8363 with SMTP id
 38308e7fff4ca-2eadceadb17mr53999731fa.51.1718037312243; Mon, 10 Jun 2024
 09:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxDDNaS6OXvDcYfs1A9mH8iAjH6kZ=PhfU2qT+wNZ8xaw@mail.gmail.com>
In-Reply-To: <CAGAf8LxDDNaS6OXvDcYfs1A9mH8iAjH6kZ=PhfU2qT+wNZ8xaw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 10 Jun 2024 18:35:00 +0200
Message-ID: <CA+chaQf8e2yH_WVg+yYh=1=o_xV-Hf6pRH=33UQtDEMdnbNb=Q@mail.gmail.com>
Subject: Re: [yocto] Kernel mainline recipe does produce lot of warnings
To: yocto@lists.yoctoproject.org, zoran.stojsavljevic@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 16:35:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63307

> What am I missing here???

dot after 6.10 in the PV to match your PREFERRED_VERSION.

On Mon, Jun 10, 2024 at 6:32=E2=80=AFPM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello Yocto Community,
>
> I decided to expand a bit my knowledge about mainline kernels. So for
> the last few days I have been trying to make a 6.10-rc2 kernel to work
> with YOCTO.
>
> Somehow I did it, but I got tons of warnings, which I could not figure
> out why this really happens.
>
> Here is how ny kernel recipe looks alike:
> https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes-ker=
nel/linux/linux-mainline_6.10.bb
>
> The local.conf is:
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/scarthgap/bbb-releas=
es/bbb-scarthgap/local.conf
>
> And the whole .log is attached to this @: kernel-mainline.log
>
> WARNING: preferred version 6.10.% of linux-mainline not available (for
> item virtual/kernel)
> WARNING: versions of linux-mainline available: 6.10-rc2
> WARNING: preferred version 6.10.% of linux-mainline not available (for
> item kernel-modules)
> WARNING: versions of linux-mainline available: 6.10-rc2
> WARNING: preferred version 6.10.% of linux-mainline not available (for
> item kernel-base)
> WARNING: versions of linux-mainline available: 6.10-rc2
> WARNING: preferred version 6.10.% of linux-mainline not available (for
> item kernel-image-zimage)
> WARNING: versions of linux-mainline available: 6.10-rc2
> ...
>
> Any reason/bug why this is happening?
>
> What am I missing here???
>
> Thank you,
> Zee
> _______
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63306): https://lists.yoctoproject.org/g/yocto/messag=
e/63306
> Mute This Topic: https://lists.yoctoproject.org/mt/106596446/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

