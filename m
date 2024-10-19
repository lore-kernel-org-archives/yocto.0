Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565D8D3C922
	for <webhook@archiver.kernel.org>; Sat, 19 Oct 2024 16:53:34 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.9697.1729356797526736744
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Oct 2024 09:53:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=crUFZgVx;
 spf=pass (domain: gmail.com, ip: 209.85.221.45, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-37d70df0b1aso2438001f8f.3
        for <yocto@lists.yoctoproject.org>; Sat, 19 Oct 2024 09:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729356796; x=1729961596; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d8QvDhuIagmgFUeLgVS3foYLmTP8f6Sao26TKvXT8Pw=;
        b=crUFZgVx/FsJo7k5j2QNHvpfmwAAUntneE6F1F805XMUINUTQoUHp4cKdTTqcHAcwS
         dT0DDQd/j/UQzAekK9Xbf15E2E5IoWEklUWooIL8N/L+615bG03yYcYxa1TANaW3swVQ
         8sIvhJcRcnCZVGtlayJBXzUR8hyZcEDGFNMq2YE5VTRsmhTIZqR2ytaa+KC+dZ0dmBZG
         eXOYUzgqhA0GlquwmXuib+T9PtWi9qjxRhNuX0QHCa9kuHrSW9y8a5BTJfNYanyyGXfo
         aMjIV3qHF8Zl34FG2nIru8eNjU8NwJN1LDEhBxnzUbVi0iMUw2LfftZs+SVHYSbOHvci
         Opig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729356796; x=1729961596;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d8QvDhuIagmgFUeLgVS3foYLmTP8f6Sao26TKvXT8Pw=;
        b=Btprpo5WdnbpSOcspaXmcHFSKWiIbLMp+BtajMDjxuukTNY2d5cQyVGD1DLMVbHEiJ
         ezTRK+aVxihe0pYfD1rFo2L90RIXKYDvdtjvvTPXvjx5a78v29MoaIMQOGZQ5GhSN9MI
         NkZfwjVTbR9Envx1VCOZozKdEd/m8PnOiU03bsPNSX8mdlB4JNn8HolD+y5r/bcswsMA
         E9VsG4043VwH16EyYIxNQI3xxOd4RbanQGwVPLPduCxrfA997ZwdXFv98EYDccn7L1lB
         2CLBSZOQLPOqq8nDnRHdziUdQjrZjxVuKzBBPUBhPtJ1X+y5tkKzvhwJTnuEok6u6o8I
         rOhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUePsrDUsEIk7tX2DePijYQZb89IUS5x54gI0zrvzKAQ9k34jW5zkjDCmrnbAL1HcOxXhoyqw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyyG87f8A8HXr4aeqf+OcpkDuU4a4QSuyyz10OuGBiLw0JT6sSg
	cyE98rQcDnoTZoCLQj2bjqPHPbOqHbUYKZ82D1nLUrai9VahCxA0
X-Google-Smtp-Source: AGHT+IETdbnrjghimU13VQ2CgfcelOCykCDEzGm417Fwaz2j3fFcWfy7lNPCeIy4PjRNvSZWvl+pZA==
X-Received: by 2002:adf:ef4a:0:b0:37d:5026:f787 with SMTP id ffacd0b85a97d-37eb66bfa8bmr4045653f8f.38.1729356795560;
        Sat, 19 Oct 2024 09:53:15 -0700 (PDT)
Received: from wsadrian16.fritz.box ([2a02:169:59a6:0:55c4:f628:91f3:4287])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316067dbedsm58848385e9.7.2024.10.19.09.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 09:53:14 -0700 (PDT)
Message-ID: <6dc3593b412035db65a84c8ebaba587453e62989.camel@gmail.com>
Subject: Re: [yocto] My Embedded Linux (Yocto) IDE setup #github
From: Adrian Freihofer <adrian.freihofer@gmail.com>
To: karlo.strize.linux@gmail.com, yocto@lists.yoctoproject.org
Date: Sat, 19 Oct 2024 18:53:12 +0200
In-Reply-To: <13023.1729352166335055946@lists.yoctoproject.org>
References: <903489d29397a0334b2c580c93e10938ff1289a0.camel@gmail.com>
	 <13023.1729352166335055946@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40app2) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Oct 2024 16:53:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64053

Hi Karlo

On Sat, 2024-10-19 at 08:36 -0700, Karlo Strize via
Lists.Yoctoproject.Org wrote:
>=20
>=20
> Hi Adrian,
>=20
> My entire bare metal embedded career I was using close source IDEs
> that were based on Eclipse, GCC and GDB.
> To me it was ridiculous that the most important 90% of the stack was
> open source, but I had to use outdated proprietary Eclipse package
> because of a few Register View windows.
> Probably now for consumer ARM processors things have changed for the
> better.
> =C2=A0
> As you can see I had an itch to scratch :-)
> =C2=A0
> My repo supports Yocto projects, Linux kernel only, C/C++ user
> applications and bare metal projects using 100% open source stack.
> =C2=A0
> I didn't know devtool ide-sdk existed.
> It makes Visual Studio Code integration convenient and I wish this
> had existed when I was starting my journey.
> =C2=A0
> I really think this is great work, but it heavily depends on close
> source Microsoft CPP extension (I understand the implementation is of
> vscode plugin).
> Also oe-setup-vscode inserts settings for yocto-bitbake extension.
> yocto-bitbake extension is a great piece of work that brings an
> amazing set of features to the table, but my understanding is that it
> relays on Microsoft close source stuff (please correct me if I'm
> wrong).

The intention is to support different IDEs with different devtool ide-
sdk plugins. The plugins are here:
https://git.yoctoproject.org/poky/tree/scripts/lib/devtool/ide_plugins.
The design of ide-sdk would allow to implement an ide_vscodium.py
plugin which relies and recommends only open source plugins. The
generated configuration would than look like the one in your
repository.

What devtool ide-sdk does by default depends on the IDEs which are
available on the machine on which it is running. If an executable named
code is available, the ide_code.py plugin gets priority. Otherwise
devtool ide-sdk falls back to ide_none.py. Overriding the auto
detection and priorities is possible by passing the parameter --ide.

> =C2=A0
> As you can see from the beginning of my post, I'm really happy that
> we can build a product using only open source software like Linux
> kernel, u-boot, openSSL.
> Building and maintaining a product with this complexity is hard so
> this was made easier with bitbake that is also open source.
> =C2=A0
> So riding on all this open source wave, its not my thing to add
> reliance on the close source tools.
> I'm not too excited to spend my free time by making openOCD work
> easier with Microsoft's CPP debugger.
> Probably most people don't care, but I guess this is my thing:
> Making open source product with pure open source tools.

I know your are not alone with this motivation. So it would be
interesting to start an ide_vscodium.py plugin and see how good it
works.

The starting point could be:
1. Copy this file
https://git.yoctoproject.org/poky/tree/scripts/lib/devtool/ide_plugins/ide_=
code.py
to ide_vscodium.py.
2. Delete all the code which relies on closed plugins.
3. Add alternative implementations e.g. for clangd.

Additionally it would then also be interesting to get a variant of the
yocto-bitbake VSCode plugin which is usable with VSCodium. Currently
the yocto-bitbake plugin supports devtool ide-sdk. But devtool ide-sdk
should be usable without having the yocto-bitbake plugin installed.

> =C2=A0
> I don't want to say that reliance on Microsoft's extensions is bad.
> All the mentioned work brings ease of use and functionality that
> wasn't there before and that is amazing.
> Again, I just prefer making a setup that uses only open source tools.
> =C2=A0
> Not sure if there is an interest to make devtool ide-sdk (and oe-
> setup-vscode) setup that will support only VSCodium with only 100%
> open source extensions, but I would be interested in that.
> If there is interest: I have more technical comments about the
> implementation, but I guess this post is long enough for now.

I guess most Yocto users would prefer an open implementation if it is
good enough.

Best regrads,
Adrian

> =C2=A0
> Best regards,
> Karlo


