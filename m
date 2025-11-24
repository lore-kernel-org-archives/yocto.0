Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A227ACFD313
	for <webhook@archiver.kernel.org>; Mon, 24 Nov 2025 18:04:29 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.23296.1764007464251219535
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Nov 2025 10:04:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XP+bUYsJ;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-8824888ce97so68781796d6.2
        for <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 10:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764007463; x=1764612263; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5cSpZIQ0PGkwc3mUcG3s264Qc1hbSb+YkNgfTiTGM/8=;
        b=XP+bUYsJA+szOs/Uv6ppvK8t3Y9Ucije58Qhet0/P2VENlwSKkZZHp5UZZMH0O98Ol
         UPI0BJJ4rLSe7kHoFFTPBeb+JvwfK8ZPtA+1lP8qyPiW48Hs4LNTJOJrVy2hyqC9sfE8
         iP7hCbCv3IvY0W+323uJvL5fc5n23PqYfv8gvdx3G/NJo4+pHFobqmfJscahwZdvcTgX
         I4ap1kDZ8csCFeRC6GaQZGpC9/dx4Kpi5I4kedhvRM7pzJ0NcIUdBKajIt0+nOiGSMly
         yLyLXU6yPv88lIZNAbz4WMLlJ3KkKeDyWCl7xRpwKze2AWEHvdDXy63FT6L16iZOgugH
         Xctg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764007463; x=1764612263;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5cSpZIQ0PGkwc3mUcG3s264Qc1hbSb+YkNgfTiTGM/8=;
        b=aRULbWKXOX6oE02kRPbCpVQ2xoB9huCiSCUiWrmsTw6hay0YOZkYGS7GF87FtWgSeE
         IyNPTtkO2R5qXoCBGXYHOkYbCGJaHcA9ejZwdWz/tJTKat2uVBa95ORt7qqBwAf9m5EW
         FES4p5OVtrd86Mj8+qL2Yys3tRx7rwWPI8sa1X4jpUKzjxuxZ5479VY6cPzoIf955Ikc
         aSVh6ShGeXoUo2K0ST27jMpswWZ6tTVvGRHF9at6bmjobWBAE6fuV/eaambv3ZvCTS7S
         hm9LnrUiBgvk3/Hx04d3prC2rRxq22tr8GCrsy5aJEJpmfcTFidxzWNrR3LWPekglh9V
         A6Xw==
X-Gm-Message-State: AOJu0Yz9WVA9/UmpXHMzvw83uj4wnRUn72vFFpzjf6vnzw/WrU2M2JVr
	CcKQYq/4Susla80aah4123Rc4U1pxqe6QpwTcDrJFIj9+BxUEGhinFlvwRZI4cRg2bHrXijbrJR
	dwdm9RidsMFyAP8ZSmkcEylaomRa2kWU=
X-Gm-Gg: ASbGncsfd+PvuOSWyGCfegfn7F62lSLXCGRp8NCrmne7qUiUpTGq9uNxGxf4yzM6T2K
	Ft99ljDlVNQwffKVKlHrMFktCs8HzPRf9cRGisbUxBA6dThgjdSz+CyVvkcp7y6MPZ4VrrfXVR0
	00Zu4rOWP2swH/zU5ceO3qCsDKQPheQ+qGsMCtZfu/o43TwoSCmSq4ew3dxSROSFEtO1ftlOYm9
	Y1jrrxEDbQXJALYTjFAvmI+lBRRiDkapQOWj4lwQgeuAwTfh1RT3u53horxARxrjIslNyMwXlwI
	1LgRCZ0rsBADiD/DMpDGaXkuLIcIKw==
X-Google-Smtp-Source: AGHT+IGUeszkuMEwI45n3yxBHPzV3yuo37Zjna3JWwobycL50tdk8qnyHyAZTwf+SHzZ8PGuLg74fKFpIADaIEtBHyc=
X-Received: by 2002:a05:6214:1942:b0:882:3c0c:a41c with SMTP id
 6a1803df08f44-8847c49f579mr168667926d6.11.1764007463016; Mon, 24 Nov 2025
 10:04:23 -0800 (PST)
MIME-Version: 1.0
References: <aSSUtHYFQlychNQk@osama>
In-Reply-To: <aSSUtHYFQlychNQk@osama>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 24 Nov 2025 19:04:12 +0100
X-Gm-Features: AWmQ_bmFrRYF1HwrKYNG6eWsuAE-_IMbi7ML-GskCbl6pWZ6rnPBYqWhOtSibCs
Message-ID: <CANNYZj85vK7o4KVDUtJ_DkW73bxs7UMA-bM6K2VRada-yCFpfA@mail.gmail.com>
Subject: Re: [bitbake-devel] [RFC] Proposal: New tool to display recipe
 dependency trees
To: osama.abdelkader@gmail.com
Cc: yocto@lists.yoctoproject.org, bitbake-devel@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 18:04:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66046

On Mon, 24 Nov 2025 at 18:24, Osama Abdelkader via
lists.openembedded.org
<osama.abdelkader=gmail.com@lists.openembedded.org> wrote:
> Should the tool:
>
> cover only DEPENDS (build-time)?
> include RDEPENDS with pkgdata?
> resolve virtual/ providers?
>
> Any prior work I may have missed?
>
> If the idea is acceptable, I will prepare a proper implementation and send a patchset to the appropriate mailing list.
> Thank you for your feedback!

Hello Osama,

DEPENDS is a somewhat unfortunate variable name that we're stuck with.

It does not actually specify a recipe dependency, it specifies
something more specific:

- run A.do_populate_sysroot before B.do_prepare_recipe_sysroot (a task
dependency)
- within B.do_prepare_recipe_sysroot task, take the output that
A.do_populate_sysroot produced and place that into B's sysroot (a hint
for sysroot creation)

So I feel that any tool that aims to make things easier should
continue to present particular tasks; there's really no such thing as
'recipe-level dependency'.

In addition to that RDEPENDS is not specifying recipes. It is
specifying packages that the recipes produce (which sometimes match
the recipe names, but are otherwise distinct). You really should not
mix them together.

I guess the question we need to ask is why 'bitbake -g' output is
difficult to understand or unhelpful in resolving questions people
have about dependencies. How can we make that better?

Alex

