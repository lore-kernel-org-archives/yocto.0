Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A0D4CE7AFC
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 17:50:30 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.19966.1695923426045734247
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Sep 2023 10:50:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mb8j0eoQ;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2c135cf2459so200496311fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 10:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695923424; x=1696528224; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5peVoB9DhKNru9kKNhMg8BPWbNmOZC4m3H8LVFlOw2A=;
        b=mb8j0eoQrjhmEtoUVQ9AEl4n8Nk67qvWsQxJRWBmatcaj/5Hh0uAwxdHgzw3/3dO9j
         WrYyyqSmxYLs08drsjHn4ajNG9EjKRFkE2h4DfXkqfPewhpGCIXv4A1XIaSuReECyUnR
         fu4sIsvLIWXS55xdVN4QKw/8Q5sMi56OuUUyKXmBKQQ3yZPDQvNaJDDyo+zyw7xxGwTX
         QcqdLnkjsbvCW0ZZCxP5BCEfmhCvTZDcPlYr5Rqxe8mpucaAzmR8Cp6E04BcAIpIUY5X
         +tw95AS8X0abzg99h1urr/LXqopihW4ZPoykGWPbXjGbuHVc/C+puebNlDLVUNCtB8fO
         rniw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695923424; x=1696528224;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5peVoB9DhKNru9kKNhMg8BPWbNmOZC4m3H8LVFlOw2A=;
        b=d4AX97fGzQhh2NgRDKmbI04e05lhwUGyuPswNMVuZ7Ng6czLdqgG6LYrjtc0Ww4Ltu
         gEf8dgPYPfj7dTZtf6uba0XuG81LJnQIIZnu40yIwpyDigOxUmDgP0anrlWIuKIzk8Zz
         j9mPLFm8fqwRTL/npsi39yZBa60GTvVL0Hg9mvQu8em2bpzhKihrV2GktZeIYKcPYWIH
         7d3rvwYys/KbAqSdgdo4P8PsafOimIbasPiiNPrv2wHnclQ7Ys1UKtXp2g3FJXi84WeP
         P7JlF/DEocW8iX5tSAOVSU7sC1VJALVszMQw8ZNOBy15OtUKeGD2i69m6OTsnv9GT7EC
         2hXw==
X-Gm-Message-State: AOJu0YyytIKdVxUMRrZxCGD8Ph1OZq6FTEGZvWboMGz99dC47OmuxSsr
	E8dftltWe+HnDDFchzCAhkvtLMmrMT46M/0Rs6Q=
X-Google-Smtp-Source: AGHT+IH0+aaKrJCqjMyDGpaRcOejcXC9I4rvN0ut1f/9LJGbp3qsc3FVsLThMADwpY796usZYo2U0pRCfvd41feXA3w=
X-Received: by 2002:a2e:8745:0:b0:2c1:8081:b78e with SMTP id
 q5-20020a2e8745000000b002c18081b78emr1787572ljj.19.1695923423862; Thu, 28 Sep
 2023 10:50:23 -0700 (PDT)
MIME-Version: 1.0
References: <7b087062faa88bd412f0b2b7a80646fff09c1ea2.camel@vrag.ch>
In-Reply-To: <7b087062faa88bd412f0b2b7a80646fff09c1ea2.camel@vrag.ch>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Thu, 28 Sep 2023 19:50:11 +0200
Message-ID: <CAApg2=S4AcW8pK_PvrCcRHgrvgAT2ZbACo=eDv+QTzgsfbeHJA@mail.gmail.com>
Subject: Re: [yocto] SPDX generation fails every second time the image is created
To: David Daniel <david.daniel@vrag.ch>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 17:50:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61159

Hello David,
I haven't encountered this one, but it looks like a race condition.
Could you tell us which exact
version of the YP are you using? What is your configuration, if you
can share (which layers and packages activated, especially).

Kind regards,
Marta

On Thu, Sep 28, 2023 at 4:20=E2=80=AFPM David Daniel <david.daniel@vrag.ch>=
 wrote:
>
> Hello
>
> Something changed in master the last days that makes the image creation
> fail. When I create the image with bitbake, every second time the image
> creation fails with:
>
>    Exception: AttributeError: 'NoneType' object has no attribute 'open'
>
> Funnily this only happens every 2nd time - afterwards I cannot build
> the image anymore. Up to now I "solve" this by deleting the entire
> build folder and start over again.
> I attached the log of the build that shows the error - I don't
> understand where this comes from.
>
> Any idea what's causing this?
>
> Have a great day,
> BR
> David
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61154): https://lists.yoctoproject.org/g/yocto/messag=
e/61154
> Mute This Topic: https://lists.yoctoproject.org/mt/101638471/5827677
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [rybczynska@gma=
il.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

