Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B98CA1010
	for <webhook@archiver.kernel.org>; Wed,  3 Sep 2025 12:11:42 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.10683.1756901501353519075
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Sep 2025 05:11:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dNNa0BH4;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-70ba7aa131fso70915256d6.2
        for <yocto@lists.yoctoproject.org>; Wed, 03 Sep 2025 05:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756901500; x=1757506300; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bunGtIl2xpsVaGfrYvjQOLKSC2EPl5N4BAy8/ikQ1is=;
        b=dNNa0BH4tgeEA1xF5XkBkMjdFPt+I1NPd5uovMvR0WI4MTgvvV8cqOXHCAyglHJl7Q
         TSilQfH7Ha2XoUMrNy0E0/MlUbT6BuDgieJAQ0w+8BvWgZ+zsYmY/UCdsQfX+DfJwnwn
         S0xwixZUtmJ49ow1BmIiEQ6T+gM4bfsoZaR6kAO05jyycQcqspyNjKQa/EkiEUZWfCLJ
         T/R+9vmWwDlAcxVNDl7bju0cFSwuZWr0GOnEiIbRmzN/E3Jelv8kHYC89V4u0USHXUQh
         2UVblfg6aMRfrhO4jd35LnfJGleVuL1EVJidz60XbE3IgBOhQ7nixbqJfo9rA5dmqZws
         P1lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756901500; x=1757506300;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bunGtIl2xpsVaGfrYvjQOLKSC2EPl5N4BAy8/ikQ1is=;
        b=g+/ZskxbOaXNc1/+IFH88shC1r1ZiXhGygPntDkI2zvLy0pv8hmNW52u4SQJQLp0hn
         pPqah9HJusP5yhKUjlpWk8Yx3mUBWgr2+QiNnWolG+Pxp6gWz4TFm7Q/gxn1BjJaNPep
         XCyuY7PfJuFiodnQCIzUl60fvtuh7M8fTvAn3Ggkdv95jwFP8azbzMDfs5Xcm0ZeuMBo
         +t4wbCoIZGj2O9mDaVZwg1WDFxNX91ZHRDColM1LCi8YsjylORsAxAH6C8zn/JHIyApz
         Vn/lQiRIH4ikd1UXOiZtbrtpgDLOouFsjyPtTO0LnV3b7xuqW2HAhDD6ac0anaPaqoMR
         pioQ==
X-Gm-Message-State: AOJu0YwlFPIL6wkmHnehKkUf1fr8oRnjRI8EBllHR92EqRRu3dNAJngN
	p8dndfydVZxX5htVl6XNroGpI3gCAQg7iNNyqA2r+xJJCt1TjrUb4jRG8iZLJZeO8GAL9HGARMW
	qYyUSinDmb4zRxu2ElFWWcI3Ym3IfEC11Mg==
X-Gm-Gg: ASbGncu26Hs0oqbQqzjKrUq/j07qw/ZV+1LzCnylka2KMfgaV82o2Sy50O7+9vk6Lwd
	ljQEXqL8zMkCDJ0vcpaUsF+F0SQjd86jTmccCPAcP1yQ3fH7JcwjjtDG31T9cwd83EXIeJYb/LK
	Bk3FNLGG0Yk1oFtJ9FGaRZrzeTMcDafwL4/YEtdtLZO+mCTiO1OoW1djm16CR6lbkkJJlRsrnIh
	R/M28AvM+ZNJ1ro+MRCwNWnnyUveEcuvgUtp5CRf/3X+LWvg/85djy0J1yOEBYvF/B4q/Saw1Ct
	N68WKyIRSI6bUdjKFkMNAJhfYvgZPbnockb+A7dL
X-Google-Smtp-Source: AGHT+IFxsRY0FdaFc8jqJvRlTbUA1j+kVQuxbgB0nLqTGX9j8nvnQnQNZ0JLCG485TEHr+eHWwwdchu/LU9SjacWAEU=
X-Received: by 2002:a05:6214:f09:b0:70d:f9d0:de72 with SMTP id
 6a1803df08f44-70fac940a7dmr162490476d6.61.1756901500234; Wed, 03 Sep 2025
 05:11:40 -0700 (PDT)
MIME-Version: 1.0
References: <mtcyc6sh3ncw36xq2ngxwfzqjo4jwakclrwsitncnjxeb3nke4@czy7r2g73dwr> <45bcc161-228d-4900-a384-7c3869b97ef7@gmail.com>
In-Reply-To: <45bcc161-228d-4900-a384-7c3869b97ef7@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 3 Sep 2025 14:11:29 +0200
X-Gm-Features: Ac12FXyNs7jJzH7ZPXX1pGx5f9MIygbJCjKyUeTgY8JiLKsosW8jXJk4aiGM_ug
Message-ID: <CANNYZj-=HOLVM=hLdnb7MPU89xeZRm144gTyujDpXQYfcxQr5A@mail.gmail.com>
Subject: Re: [yocto] No meta-openembedded/krikstone updates since 2025-07-13
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com
Cc: joerg.sommer@navimatix.de, openembedded-devel@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Sep 2025 12:11:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65815

On Wed, 3 Sept 2025 at 12:49, Gyorgy Sarvari via
lists.yoctoproject.org <skandigraun=gmail.com@lists.yoctoproject.org>
wrote:
> > there are some patches for Kirkstone on the mailing list openembedded-devel,
> > but no updates of the Git branch at
> > https://git.openembedded.org/meta-openembedded/log/?h=kirkstone, since
> > 7 weeks. Is a push missing?
>
> I'm merely guessing - probably Armin (the maintainer of the branch) is
> on holiday?

This unfortunately is not the case. Armin is unable to continue, and
the layer needs a new maintainer. I am expecting that openembedded TSC
will come out with an official message, but, unofficially, any of you
are welcome to step up.

Alex

