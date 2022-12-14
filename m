Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526D5C4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 11:33:34 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.100899.1671017608920722239
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Dec 2022 03:33:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kC2PZsCg;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id z4so6345963ljq.6
        for <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 03:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fhqVSy6XjxhEbHuI+as6o73IQV8ChFjQpfmlPZnNIT4=;
        b=kC2PZsCgTvyjfubO952b2OhDcGgmJ7s6bVMktyXSE0KErW+ZoTycdctehY/gT4Sybx
         qP9yknFGcwbULcdzXzKr559OK8uOS627hYEkOd7thnbB7xv6tghekXRlx9nQ3ZuAtajY
         d2evBAwdgoBIFM1m72NEImU32hYMsjLrRz0fpCoPh5i0wypR09lklyfXqO0oKB68iIJB
         2CSuUlaZ3rBjHtBRocMcdwHEaESSDvWqCtHHPEPS6cCfBv80zdYha2pqoSpsFObSCzwG
         g2yyonql0TgIYycKCZ+Q+mWNLDjNvmSIcK5TYmbRu1wAKK3zZ1Sz3VILMq5HocsHQHfl
         1Nug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fhqVSy6XjxhEbHuI+as6o73IQV8ChFjQpfmlPZnNIT4=;
        b=lHLCXrYoeFiuinQw2NhU2OYp8ff3GTNxYYbIPsX6AA5eIkFVmmDt9uhH23NoPR5iN+
         kTdktt7Z4y2RF387bscdESndmA/v/XTNP9yC9VgSCrXP2WHG+QsUQl9J0wxjPXt2jrcR
         yKG6bSK5l5rztx07iscSx3yO0qC26Ch2hRjvgKBlyUGLB4yr9jyEl/koD4XBI3BFJ3XS
         ZPsx1ZmXnsWAyjEDTLLcroogC3rSvL5GC7MNTgVtrf9jVnELC8mh7xA+Hyz6GsJ0Jf0n
         dA8zdnqUTcsoCNEW4VbI5jLxTbY3e0ZtW9guG0/bNsdWFrUJhVSDRQETunSt2qfALmOD
         5RbQ==
X-Gm-Message-State: ANoB5pm1LWiqEzcQM8pnoQAMNHbOYR8qca5jbMFQ/NqejUTiV4ZjMTIJ
	TGH+1YLI9MsmowqxSHI/CjY0CJtAYoicF2i75g0=
X-Google-Smtp-Source: AA0mqf6auIoVeKdersgCm/8mxaRYFZxGGonBpJrleWK/wJUzH/4elPSP2B1oSDDJ1eo/d/Nx+e8NveFDMueAEpDaIbg=
X-Received: by 2002:a2e:be8a:0:b0:26f:c081:9aed with SMTP id
 a10-20020a2ebe8a000000b0026fc0819aedmr30575789ljr.222.1671017606927; Wed, 14
 Dec 2022 03:33:26 -0800 (PST)
MIME-Version: 1.0
References: <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com>
 <SY4PR01MB6797E2185B27B31256010857B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com> <SY4PR01MB67976B0BD0BCE06B33F69603B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
In-Reply-To: <SY4PR01MB67976B0BD0BCE06B33F69603B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Dec 2022 12:33:15 +0100
Message-ID: <CANNYZj-RF3g+BxCueoHwyU1GifH5UTGYe9uz5tX-1DCRVD69vw@mail.gmail.com>
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
To: David Antliff <d.antliff@unsw.edu.au>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 11:33:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58797

On Wed, 14 Dec 2022 at 12:08, David Antliff <d.antliff@unsw.edu.au> wrote:
> Using FILESEXTRAPATHS also works but it's in a .bb not a .bbappend. I suppose there's nothing stopping me splitting my recipe into those two files, actually... then I'd be technically compliant with the docs.

I think the documentation might have confused you. It's not always
correct :). Setting FILESEXTRAPATHS from .bb is totally fine, as long
as you don't abuse it (e.g. cross over to something outside of the
repository that .bb is in).

Alex

