Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 826CAC27C55
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 16:54:22 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.24760.1718038360213028723
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jun 2024 09:52:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YjssobLh;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2c2dee9d9cfso1631579a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 09:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718038360; x=1718643160; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4wtG1+hYcvBS1bswd9YZ+CY+KVu6mB1HdCzi4GVDI+U=;
        b=YjssobLh2lljzJllJ7n0ffJkNWN3uBgCXbUy6gniCShSq8GzN4+Q615pLUaHKU/VfT
         UjlxLehiQuqDSIaUBpfTb0Nhugjf1/845olZVdbDUtme5tNh2qNcnS+8YSlC8MdoNUKZ
         WvcUWaUZWRRjccY6/CstIIMHgP5TZAOsmB/ns72kDxIuZHiNjSNZ3oPaUtPGHVsu5uZu
         VeRQ/GeLkIXVPgyYOXZd7JPTDnfB7VT0UP2ynaZe0S9fTESxeo0IOnsVr9pk6GdSH+yo
         MMJU4zefYRquaNlF3zfU+R4oNiBPlGYNL5dC0Z61Ox9DVPn91blpzJDA5rl5lu/tcFGQ
         6V5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718038360; x=1718643160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4wtG1+hYcvBS1bswd9YZ+CY+KVu6mB1HdCzi4GVDI+U=;
        b=rCUcjkv/zaxRbWYbtEDT4u8uZwb+oJ2cCUjQ6ZwRDnDH9/wvfM0SEN4dg+2ct+XYjf
         jqYTZrbOlT5pSW16tdVNNk4vIUBZps3T4UOlClgsb4OBenIyfHtySdnzgDhfWpz8Cdun
         a3rZzcn+OPdXtMvUV/SS24M5APkfae+s0jju4Q4aQK1r6Poc4sTkznpbU8eh5b1C1dYO
         A0ikba3rsYZqP5+9NFFJl8p8gzQugJ+bgNtJjMNhrhrdWXguhZAHkDpNLoENpLCMOX7P
         4i6qk4zZQ0u70texFPtO0ZhRRywiRmB1AgTSJpZaBKJGoRigzuVZp89l7KiyzrRajXHo
         hdfA==
X-Gm-Message-State: AOJu0YyCVYfIc9ujooqeGyLiVJ3PC4E9xQk8JUzLcFFuHlQxGTGVkMGn
	oXSh9ce7QYwQKsQPHNr4oHfS2OJed6Kv1l5UU2ORPphZu9QIpo+/DXZUAHa8de2jSr1D5mvU8p3
	2Pl0Osh1z4Z7s5TyUZarN9Gtzi5k=
X-Google-Smtp-Source: AGHT+IG0ZH4GntRDnilNpxcauO8t0fk2R4y4G/ShorSqLKzV+c7Y69t1Bsi7D0lzNL5IiwiV5K6bzeejYZGdXBo5q3Q=
X-Received: by 2002:a17:90b:b12:b0:2c2:c3fb:b13c with SMTP id
 98e67ed59e1d1-2c2c3fbb277mr6979471a91.44.1718038359394; Mon, 10 Jun 2024
 09:52:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxDDNaS6OXvDcYfs1A9mH8iAjH6kZ=PhfU2qT+wNZ8xaw@mail.gmail.com>
 <CA+chaQf8e2yH_WVg+yYh=1=o_xV-Hf6pRH=33UQtDEMdnbNb=Q@mail.gmail.com>
In-Reply-To: <CA+chaQf8e2yH_WVg+yYh=1=o_xV-Hf6pRH=33UQtDEMdnbNb=Q@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 10 Jun 2024 18:52:27 +0200
Message-ID: <CAGAf8Lw96ig=hzC9TGOU9x+1oXnAwrK_SioRwvB_qrXEVL+LHw@mail.gmail.com>
Subject: Re: [yocto] Kernel mainline recipe does produce lot of warnings
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 16:54:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63308

Interesting convention!

Thank you,
Zee
_______

On Mon, Jun 10, 2024 at 6:35=E2=80=AFPM Martin Jansa <martin.jansa@gmail.co=
m> wrote:
>
> > What am I missing here???
>
> dot after 6.10 in the PV to match your PREFERRED_VERSION.
>
> On Mon, Jun 10, 2024 at 6:32=E2=80=AFPM Zoran via lists.yoctoproject.org
> <zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hello Yocto Community,
> >
> > I decided to expand a bit my knowledge about mainline kernels. So for
> > the last few days I have been trying to make a 6.10-rc2 kernel to work
> > with YOCTO.
> >
> > Somehow I did it, but I got tons of warnings, which I could not figure
> > out why this really happens.
> >
> > Here is how ny kernel recipe looks alike:
> > https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes-k=
ernel/linux/linux-mainline_6.10.bb
> >
> > The local.conf is:
> > https://github.com/ZoranStojsavljevic/bbb-yocto/blob/scarthgap/bbb-rele=
ases/bbb-scarthgap/local.conf
> >
> > And the whole .log is attached to this @: kernel-mainline.log
> >
> > WARNING: preferred version 6.10.% of linux-mainline not available (for
> > item virtual/kernel)
> > WARNING: versions of linux-mainline available: 6.10-rc2
> > WARNING: preferred version 6.10.% of linux-mainline not available (for
> > item kernel-modules)
> > WARNING: versions of linux-mainline available: 6.10-rc2
> > WARNING: preferred version 6.10.% of linux-mainline not available (for
> > item kernel-base)
> > WARNING: versions of linux-mainline available: 6.10-rc2
> > WARNING: preferred version 6.10.% of linux-mainline not available (for
> > item kernel-image-zimage)
> > WARNING: versions of linux-mainline available: 6.10-rc2
> > ...
> >
> > Any reason/bug why this is happening?
> >
> > What am I missing here???
> >
> > Thank you,
> > Zee
> > _______
> >
> >=20
> >

