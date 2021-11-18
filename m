Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB3F1C433F5
	for <webhook@archiver.kernel.org>; Thu, 18 Nov 2021 20:04:42 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web08.1368.1637265881924931181
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 12:04:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Qzo07nvu;
 spf=pass (domain: gmail.com, ip: 209.85.222.180,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id bk22so7713587qkb.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 12:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TfmWi5UCfPkPqf3HJ1aSg5+ARpvz0u3ftSg0A6nJbFA=;
        b=Qzo07nvuR9v4Fi+LrKiK9F2diyezxkst7Tltp2yTwKsP6kiEE/d9rOlqpXnfpr9OVI
         MpmlWvwuOygxsfdHw9z2h0TT5sMj74w9RpUL8SpkQaDiQidQQbTtqzviF/PGYQRTZehf
         m/X5nyNWslWwVhkZK8OYGDJjQLnz76GzirYWRl7OWlbMs2amnyMgzMs2v3hXE0FjhBmf
         yBLbXqRrdU9jZGUmfrG0r+JQaQsscbO/ltIC97ST6FEvALl/kd3FExoL9+i54a9RQjRq
         o2jBo/+6sATQIS4+3bYRnCZLWnEWtXF8mvXTAgXKuqLtkfz4WpmsyhyFHfrv1Lo52D65
         PSJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TfmWi5UCfPkPqf3HJ1aSg5+ARpvz0u3ftSg0A6nJbFA=;
        b=f4T0Vm1MBv3BrwOO+CuT4mGmFAiPwkKpsA16vYsFK911v6ztEZAlMd9bM8wKqqX6E4
         Ngh1jIa0wbbdxCGNnyCKA6HpZTUDE785CGKC5f+RW48C1CaDvleC7GWrWKDpoJvj2S5r
         IrK8JNmMW0IpTRv5WIFkfn6bq7o0YoofJHrVND2ZL4TFqcOpZ+aILK7z4GVyuQXUrf4l
         MnJktM6uDhlFqqTtBcHPWsL3Kmtm2p8/PAaNTgjWdx7JfT/g8Xx9RDI9RZnap2DY4v5Z
         5hPSGV3J66nHCSYciZzv/obMul2LahjSTymo6vSQ5Ugbt4Il5AGUT7x5p227k53eSml1
         NxLg==
X-Gm-Message-State: AOAM532ENXBBKjOB4WsyLO9cg7CCfJ3vaM1a33fo6k/aYwiDNIL0Vege
	/WbuGkc1n9AaamGlIxoDT5R+DxoRZfsqYn2a6x8=
X-Google-Smtp-Source: 
 ABdhPJx4l0TSO3vXS1uSL/06jNkHzKfVB8V28xvHySPx7tAtQ1wPNLmXBjtoXzE0iwgkXiChZHhaCqr1kLfkoT0q8SY=
X-Received: by 2002:a37:9507:: with SMTP id x7mr22837259qkd.105.1637265880939;
 Thu, 18 Nov 2021 12:04:40 -0800 (PST)
MIME-Version: 1.0
References: 
 <CABKMkPJT4W-a0Q13tme_kfe7NX21FiD1pecLk=u0ebMVhBaQTw@mail.gmail.com>
In-Reply-To: 
 <CABKMkPJT4W-a0Q13tme_kfe7NX21FiD1pecLk=u0ebMVhBaQTw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 18 Nov 2021 12:04:14 -0800
Message-ID: 
 <CAMKF1srBKUmdEXWqBtpK5s37OEXMhY9LKefCoJ=0YgMMQQ18Yg@mail.gmail.com>
Subject: Re: [yocto] Building -native with clang
To: Joel Winarske <joel.winarske@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Nov 2021 20:04:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55364

Look into chromium recipe

On Thu, Nov 18, 2021 at 11:55 AM Joel Winarske <joel.winarske@gmail.com> wrote:
>
> How do I get a -native recipe to use clang-native?  I have this in my recipe, and target variant builds with clang:
>
> RUNTIME = "llvm"
> TOOLCHAIN = "clang"
> PREFERRED_PROVIDER:libgcc = "compiler-rt"
>
> All the environment variables are setup for gcc in the case of -native.  No sign of clang.
>
> This is with honister.
>
>
> Joel
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55362): https://lists.yoctoproject.org/g/yocto/message/55362
> Mute This Topic: https://lists.yoctoproject.org/mt/87152111/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

