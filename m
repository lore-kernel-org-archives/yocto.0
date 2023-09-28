Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05FCECE7B1A
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 18:37:15 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.549.1695926230964239134
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Sep 2023 11:37:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Czx3IYOc;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-504a7f9204eso3044714e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 11:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695926229; x=1696531029; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/TxASitIIprv4vWeXS8ZSHU/adqATG6kKMQ1i99H29Y=;
        b=Czx3IYOc4XSYFKFQ/ZsUpfL3lka1DYbYiSORi4fyYdWIzrou4IMjDZYFD4A4A19RtR
         cTvvfpl0ULpwW70zYNUJIx2UxaquUOdCnpMJcwrmMTiwYH0zHQBq/rLiuI4CuHDVd9rm
         y6fudd9O8ivkCf3Jh37xaA2FuNdhUDjKXFE8AqD0auIvBppCobfvfFlfoCvoanaSpVs7
         cHgjgnXTo/iCI+2NpIL4JUp7JQyV5lrfFXr+4/jRLablAUMMFtNjckO7bMA6QvCXdh+T
         XfsNJQJcYvcZRxYsBqBPRYXX+3/txHihTAaK4I9e3nveV9siZt4uRhp+LRSMP+8ViVF5
         fXyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695926229; x=1696531029;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/TxASitIIprv4vWeXS8ZSHU/adqATG6kKMQ1i99H29Y=;
        b=KOqbguWa5TlWzArz0Li5npSKfzRIW3yVAvE9bYdqa/R00lpP5uDULRpnb2tQzwlXep
         aREx7xgGXls3CRbZ5NhEwkjU0q1eYLrXfUAyjN/3TZQGc5V26Q1wFsvpkvMj+8RHjo6m
         +rWI3kFOIn7WPbi36ybTM8+WXhjqkkDhds5UX5fo1Sg7hRo7iBsyCFY1MH2DeXI/155R
         wtZ6jlDmjUbF7AfRAGz+aPFB1w8k0V45QIuyrllqfOawMFWDXGfAiM30ao2oJiEELIZ/
         gnSqAoCd5Q/uFNvE8T2JlDFp6a0OSPG6bz5RSk1U4hPaQNGOL91pwbES58bTOtK5vLfA
         zxBw==
X-Gm-Message-State: AOJu0YyJO4VQtz1FBHBVd7x+G7Md+YfPDMjQDm2G27Ny1MjNuY33/y5m
	e7GQdO4GvfDxkGPIhpDgfLMzNrUUWy6FVKbKaFk=
X-Google-Smtp-Source: AGHT+IG5OlXm/diFVwZxWRTGaPVpSJ+8fIpeoBKXRfrV94YFTz7GfDprBJsAZEJGWZxxzBonTAjv+6eS61/dhYtRnZo=
X-Received: by 2002:a05:6512:2118:b0:503:2a53:7480 with SMTP id
 q24-20020a056512211800b005032a537480mr1576364lfr.49.1695926228872; Thu, 28
 Sep 2023 11:37:08 -0700 (PDT)
MIME-Version: 1.0
References: <7b087062faa88bd412f0b2b7a80646fff09c1ea2.camel@vrag.ch>
In-Reply-To: <7b087062faa88bd412f0b2b7a80646fff09c1ea2.camel@vrag.ch>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Thu, 28 Sep 2023 12:36:56 -0600
Message-ID: <CAJdd5Gb=19mS20PDQPu3v2cc5AJ4WeA83-fRUTid48mgg0Z+HQ@mail.gmail.com>
Subject: Re: [yocto] SPDX generation fails every second time the image is created
To: David Daniel <david.daniel@vrag.ch>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 18:37:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61160

David,

I just pushed a patch to the ML to provide better debugging when this
happens; it will at least tell us which document is missing. Is there
any way you can run you build again with that patch applied?

https://lists.openembedded.org/g/openembedded-core/message/188378

Thanks,

On Thu, Sep 28, 2023 at 8:20=E2=80=AFAM David Daniel <david.daniel@vrag.ch>=
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
> Mute This Topic: https://lists.yoctoproject.org/mt/101638471/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [JPEWhacker@gma=
il.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

