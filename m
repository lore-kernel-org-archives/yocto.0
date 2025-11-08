Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 798BFCCFA18
	for <webhook@archiver.kernel.org>; Sat,  8 Nov 2025 18:50:49 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11669.1762627843495803880
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Nov 2025 10:50:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=UDZYlUBq;
 spf=pass (domain: konsulko.com, ip: 209.85.160.180, mailfrom: scott.murray@konsulko.com)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4ed917b5b18so18318541cf.1
        for <yocto@lists.yoctoproject.org>; Sat, 08 Nov 2025 10:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1762627842; x=1763232642; darn=lists.yoctoproject.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=NwDBXqvxWp0MbP+Xrw4rCJo/8bkU/0xRlxgeMVJ7fWI=;
        b=UDZYlUBqMhyOgkWUImOx4O3W5mnGCx9asLOWsk6AVGCsMIes2X13+Hugk/m73GZ/cW
         eIij9c9nkP+IprzU/JyS/hsHEMhHBacrHP9/n4fSr8EUbnWEsJ76RxAUQk3m4WZ/TOd6
         n2spTzWJMTfg93q0xVgslMpOb26wPEz0OeS+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762627842; x=1763232642;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NwDBXqvxWp0MbP+Xrw4rCJo/8bkU/0xRlxgeMVJ7fWI=;
        b=fD7cwpcWZmuCIaGVCq/lQlw1E5woE32k96Co4mQysZk6WlcbYaXRoR4rRTfWPQpX1w
         MKUqZvNLiaE5E+xw9Camd+NhgTfZ+IhmMjYoo79Tq2lfO6rh6bI94JqBP9i+fkdcHN5R
         KpdpWwZZX9uikM67wPs3B/0nEwGkAKN/VNVNDQslxV778qkUswKlJnylLuACuvtYbuzR
         qn8eQcgN1TDkK4YMGaKF11pzcjhiYfLJLqHEWcZ2aAhgl3JsWczLZs6YqAklfl8uvLCX
         vUHXY/JhtQIg67bXtyPQX3hf2skVb7NLxmqA0xK9OLFkiL2BE9JpylcBvd4Knbxk4v+2
         Bq3w==
X-Gm-Message-State: AOJu0YxLTHcngJZvuG1SVE9Jw6qmEZqOVplfwQcXtTiigbM3TEgdZqW2
	bN2Je7XYVWK31RHkx3+xIn/rEeMha6hF38XwRZMrYxS+0VI0tXTa+yN5FNsGomI9AFJ1UnlZbds
	24L+N
X-Gm-Gg: ASbGncuEIxVz+x0FE6afUDEcr/IicKifsXXLaq+wtBo/jEzuHmwOXQewVUHh+M+ZeB8
	V94qkCNXhEFI4K6pPY4g5wwltghexRAlvRZqJUV6zhVQ/PF7J5yPoGcWH/F/uM5jSamvuLV2FBf
	MSHwTFGMYQrIhBSak1/WbOQsyJ1nWLa0pkasIJvGLe5y2veBOXaO9TmOAIwD+QUwmjtWgK/Puor
	Qj9Z25YhODXstjmxzFR1Xru03SSRJmfawZDlxB2Dl/hBN0lJwRHt1L8MxMNtE4RP9eVbRcuKs+E
	kBEhK1eJgOTHQZiikBpQN5AcF1qI7eioRCd9hW1yaZg4v1cupK0Zpf1yeu+GDybpAIaOJnznGsR
	8qylIwVWL/Lrh5kACIVOZejr36afoGND6CuUM2+ZMV5MJlrLWdt86YRiUe044rgn5yyc+8axGPh
	Z546TGc7Jbg5fF9cbblY49ax+EYPb6i4qqiac=
X-Google-Smtp-Source: AGHT+IHDlDOkDWyzJpNTB0AGcMaIPy0UCI4+HIkgpyrjf6QIkK76enN+YTJKluE9DqsGYAaBtqR5vA==
X-Received: by 2002:a05:622a:1343:b0:4ed:801c:8c24 with SMTP id d75a77b69052e-4eda4e7bbd1mr36825311cf.3.1762627842152;
        Sat, 08 Nov 2025 10:50:42 -0800 (PST)
Received: from godzilla (107-179-213-3.cpe.teksavvy.com. [107.179.213.3])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4eda57dc174sm16525441cf.36.2025.11.08.10.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 10:50:41 -0800 (PST)
Date: Sat, 8 Nov 2025 13:50:40 -0500 (EST)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
cc: rpjday@crashcourse.ca, quentin.schulz@cherry.de
Subject: Re: [yocto] looking for YP-supported Rockchip RK3588-based eval
 board
In-Reply-To: <c8ce6056-ccc0-476b-91dd-aa6376090a9d@cherry.de>
Message-ID: <1429ff33-0e6a-5881-aeb7-e995568b759f@konsulko.com>
References: <187526B1C3586D81.304257@lists.yoctoproject.org> <cab1dde8-edd4-3026-8367-39ae27c6c9db@crashcourse.ca> <c8ce6056-ccc0-476b-91dd-aa6376090a9d@cherry.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Nov 2025 18:50:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66013

On Wed, 5 Nov 2025, Quentin Schulz via lists.yoctoproject.org wrote:

>
>
> On 11/5/25 6:04 PM, Robert P. J. Day via lists.yoctoproject.org wrote:
> > On Wed, 5 Nov 2025, Robert P. J. Day wrote:
> >
> >>
> >>    (caveat: i have *no* experience with rockchip processors so i am
> >> entirely at the mercy of people who want to make recommendations.)
> >>
> >>    a friend wants me to advise on a good choice for a RK3588-based
> >> evaluation board, and has already purchased a banana pi bpi-w3:
> >>
> >>    https://www.aliexpress.com/item/1005009156110477.html
> >>
> >>    that looks like a decent and fairly powerful baord, but i notice
> >> that the banana pi is not a supported MACHINE in meta-rockchip:
> >>
> >>    https://git.yoctoproject.org/meta-rockchip/tree/conf/machine
> >>
> >> so can anyone suggest something equivalent in terms of pure horsepower
> >> that would be equivalent and has solid YP support? i am totally open
> >> to good advice.
> >
> >    i will also point out that i see some mention that the RK3588 is not
> > fully open source, while the earlier RK3399 is:
> >
> > https://news.ycombinator.com/item?id=40497232
> >
>
> Outdated info, only the first stage bootloader (TPL also called DDR bin by
> Rockchip; it runs in EL3, who knows what it does) is closed-source still. BL31
> (TF-A) can be replaced by upstream TF-A.
>
> The first stage is being reverse-engineered right now by some people from
> oreboot I believe. If and how this will come out is a different topic.
>
> Note that the ARM Mali GPU also requires a blob (from linux-firmware), so do
> all Mali GPUs based on the CSF "architecture" (which is probably every recent
> version and upcoming). Open-source drivers (panthor/panfrost in Linux kernel
> and mesa) though.

One other thing to note is the camera related IP blocks are really only
supported with Rockchip's own layer with its old forks of the kernel,
U-boot, etc.  Based on this presentation on Rockchip camera support at
OSS EU:

https://elinux.org/images/2/20/Osseu25-mriesch-rk35-camera.pdf

mainline support is probably a long ways off, sadly.

With respect to specific boards, we have folks using the FriendlyElec
NanoPC-T6 for AGL demos, and it's seemed reasonable.

Scott



