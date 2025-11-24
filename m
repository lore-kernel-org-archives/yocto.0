Return-Path: <osama.abdelkader@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA979CFD348
	for <webhook@archiver.kernel.org>; Mon, 24 Nov 2025 18:42:39 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.24229.1764009752954169465
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Nov 2025 10:42:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JTZor07v;
 spf=pass (domain: gmail.com, ip: 209.85.128.54, mailfrom: osama.abdelkader@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so44612705e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 10:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764009751; x=1764614551; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RexbbP48O2v9cPwJCIy4Kj20+fnQIgi6CKQIvVtS59E=;
        b=JTZor07v3dnrDnClfl124M/inxLRxxxacADzDB2iAcsoZLrgibrvusx5u8DcQqTZ6M
         NsmqTSSlCel5NJ+zXuXlBRd95wRnlIMdaaGRejRz6i5OxaldrKUUVE+hMs92pjb7uoLz
         vUh8N2+VQ4jlz3dnkV75+SFlsETWeid15QPMRUmJiSFz5OvOFVKJxPGIb3DqK+Te7MTK
         eRLVxb8e7JUVYe8amhjN0bst2uiI+/y55z68ktWb0Z4lEDQTBGSIR/eVO6J0bYSt9qm5
         4AZtW9iQj4HGxWbWBgY6I5Td1mkPn7gjNZEevfL2GSFGlkz/fxmZmjmAavr3SZUUMuhd
         Yv2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764009751; x=1764614551;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RexbbP48O2v9cPwJCIy4Kj20+fnQIgi6CKQIvVtS59E=;
        b=ZR2k5txokxaO9flI20PJsjj1nAtVKpoQ6GLHxXARQo2O/QqaKOr/W05jO8bAGlcszM
         IobLLNFmfuSl2OzYFnkbZeYIHnTR6z2J2Udo8KYG3C3LBau73DJDo82N0Gl3J7+2Halj
         vy7POcJqqR4qORMcLFbF88LviOXLWHC9ORknTcwEBO3pUu2bMI/Dsw9UEcLugMFdPz6X
         qq26EfQnvEAh6uyrOFQtnzsTrVC/x1ZrJVYQzyxJ+wyNjovuP+mvuL1gWytSEh0KiKOc
         9xR9ZvCDOCbMhhASYYkPzaWkyiQpake7djQF9xmxtDv8XhEhsLiJFDS25pxk6XLmvAZc
         C+dg==
X-Gm-Message-State: AOJu0YwGxeLJ8eqC0KdDVfj3RxPxCS0nlN6F4CydgBSv4rugjhLAom83
	4+jMFZKwOTvZk4GTzUGDvmKwfjWDaD4UVcyRkIpBoWOrO/DnNFugbIpR
X-Gm-Gg: ASbGncvNobP/4C5LBemf7smtxmcEK9QMAjHZGKUrVt59tbj9tj/jy7DJq+jgmgHSGsp
	3LoeTbWjZKt4+038G6u4CJDMDzloQ2bCUKAxqTrWqc0AULwG0NJ+aYRI62LeT8yKakPi4Sy/ecL
	UFOuoWsh1KwbMufdWXasjef8C4/XFCAO/OWM0kCyp/R8enNE7Xp4MDGY2SpWQ1892Ew7+yb915e
	XUvlrF18hje0ExE1xBG0AWEn9Azb2aegz9ACxjTNusmSs+C2dSlgNihGax5l/C7xUhYbXQDMFXd
	O4bl6gZpvpZkHk+SgLaDdJkArHY5FDRBwSz8qsmPlR0nXGnESDzXNsFyZwd6WMy1jDDymXBA1w9
	LZ6yiMhwSdCLy4UPUr85XEuhM7pGa0yl2NbE8jjbed1civq9sft2Y+BfsxYvWfTlmoE6Vvq8CRf
	nRUJzVIQ5/v9iP
X-Google-Smtp-Source: AGHT+IGA8XkkNksn9QgHMWHDKR7kugq5WGufIarxJc4d9CNy4fvBigYN9bml4yEnuFRbd8uuiH2yKQ==
X-Received: by 2002:a05:600c:8b16:b0:475:dd8d:2f52 with SMTP id 5b1f17b1804b1-477c115dc85mr106681015e9.32.1764009750920;
        Mon, 24 Nov 2025 10:42:30 -0800 (PST)
Received: from osama ([156.223.112.153])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf355933sm215768795e9.2.2025.11.24.10.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 10:42:30 -0800 (PST)
Date: Mon, 24 Nov 2025 20:42:27 +0200
From: Osama Abdelkader <osama.abdelkader@gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, bitbake-devel@lists.openembedded.org
Subject: Re: [bitbake-devel] [RFC] Proposal: New tool to display recipe
 dependency trees
Message-ID: <aSSnE0X9kycDc60G@osama>
References: <aSSUtHYFQlychNQk@osama>
 <CANNYZj85vK7o4KVDUtJ_DkW73bxs7UMA-bM6K2VRada-yCFpfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANNYZj85vK7o4KVDUtJ_DkW73bxs7UMA-bM6K2VRada-yCFpfA@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 18:42:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66048

On Mon, Nov 24, 2025 at 07:04:12PM +0100, Alexander Kanavin wrote:
> On Mon, 24 Nov 2025 at 18:24, Osama Abdelkader via
> lists.openembedded.org
> <osama.abdelkader=gmail.com@lists.openembedded.org> wrote:
> > Should the tool:
> >
> > cover only DEPENDS (build-time)?
> > include RDEPENDS with pkgdata?
> > resolve virtual/ providers?
> >
> > Any prior work I may have missed?
> >
> > If the idea is acceptable, I will prepare a proper implementation and send a patchset to the appropriate mailing list.
> > Thank you for your feedback!
>

Hello Alex,
 
> Hello Osama,
> 
> DEPENDS is a somewhat unfortunate variable name that we're stuck with.
> 
> It does not actually specify a recipe dependency, it specifies
> something more specific:
> 
> - run A.do_populate_sysroot before B.do_prepare_recipe_sysroot (a task
> dependency)
> - within B.do_prepare_recipe_sysroot task, take the output that
> A.do_populate_sysroot produced and place that into B's sysroot (a hint
> for sysroot creation)

Yes, I know that.
> 
> So I feel that any tool that aims to make things easier should
> continue to present particular tasks; there's really no such thing as
> 'recipe-level dependency'.
> 
> In addition to that RDEPENDS is not specifying recipes. It is
> specifying packages that the recipes produce (which sometimes match
> the recipe names, but are otherwise distinct). You really should not
> mix them together.
> 
> I guess the question we need to ask is why 'bitbake -g' output is
> difficult to understand or unhelpful in resolving questions people
> have about dependencies. How can we make that better?

Exactly. 
For me, the output dot file usually is so large and not "human-friendly" to trace.
> 
> Alex

My motivation actually was so simple, to know why a certain package is needed in an image.
The simple way now AFAIK is to exclude it, then bitbake prints backtrace e.g.

dnf
 ├── libdnf
 │    ├── libsolv
 │    └── json-c
 └── sqlite3

dnf -> libdnf -> libsolv

libsolv is needed for dnf. so would be good to have a query command or simple tool to show that?
something like apt-rdepends output.

BR,
Osama

