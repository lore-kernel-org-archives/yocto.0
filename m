Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 653B8C25B10
	for <webhook@archiver.kernel.org>; Thu,  9 May 2024 14:37:41 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.11969.1715265451434145831
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 May 2024 07:37:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hyRyf323;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-51f300b318cso1071190e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 07:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715265449; x=1715870249; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dHU93PBKipXJembupj2lTFOXfp79sSPH5BjVytE/9Bs=;
        b=hyRyf323J5n+vNlTi7kbHEE8Qy3lcKYS7W2JbUFA8z478CDOyyJ+BjGYa0m/tys9zu
         DsqT9u/RGaFn5TNoCIr5a8Sopj/3r6pmZnGIbVJANHEYG9gl3qqPyU2Eq7WBfxXbRczH
         niMlEFucoQsaKRuDaGIWK+svwPDBe9Gd0y8sfSU8IUvYvWGP4Bmy1MWm9YBKIa/ghef2
         mvtx7SgNv8iIcnqvMdo0h5D3lkNgvOaUTR4G43y9+cKlcqZb0hFe8vutppRC+pRnjWwy
         cGlh/2ByhrPzGKARGoOE6Zobxeulx56zypx6PhQ6X9zWXs0iCQKWN6A74WCq3zEgEjx5
         GZKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715265449; x=1715870249;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dHU93PBKipXJembupj2lTFOXfp79sSPH5BjVytE/9Bs=;
        b=rpl4xTKPE4x+kLtAb0Pr+q8uuDDmBHnX60o9n73vvew+avG015tF3AFyizh559gfXc
         p1GTlrdErAkvbTnqtoKYmicQU+gnxlMyMlTuSoOSEJJ3ARQrJ1iYtkIm9Z6oHB/temDf
         wJ4y2CPEgkBOG6sjNVBRsgKhM5W/vGw+2+9DuUj9T5hWMAJehaTwxFsOkWwWGpT8LG3l
         vxqk5qqtzpE38yXf2RvM1m/kiqbP3OZr5noDz9ak1B8OF9s/IMPDGJ2UqIrZmDQxeAIP
         ksk37OPt9tcolmskhE9ZXR7GFj8Abz2P8MdImqjxJ+1rDxjriJaSH8UhdS+CLqFRoIXf
         FooQ==
X-Gm-Message-State: AOJu0YwA1MTA+yozBC/3vhyZWILOff27sDprXhoX3dt2iM+Mqm7PeYKr
	RV0u9BG1u6kF/yR2A2/c+3tVTqYJFJuQKBCL+WY6kbWEUkHADR9Q2h9aj6LIUh4AeNcZk+jhpjd
	yttDGARL8Ms9YYRCX1GT4CF3Y/PfUMA==
X-Google-Smtp-Source: AGHT+IHZKBOChvHa3e1uzGko/Uj8h8BBgu6z3gbeJAq1Ig+pF1exsaSKoPSce1xTh3+QbBBOAmBabUMP7CC36j6m/k0=
X-Received: by 2002:a05:6512:61c:b0:51e:fc99:d6ef with SMTP id
 2adb3069b0e04-5217c5664b6mr3463041e87.18.1715265449339; Thu, 09 May 2024
 07:37:29 -0700 (PDT)
MIME-Version: 1.0
References: <GfmG.1715197041107111792.DMO0@lists.yoctoproject.org> <73820cf56fc9db54e88f9e827e448d79e56c6b62.camel@linuxfoundation.org>
In-Reply-To: <73820cf56fc9db54e88f9e827e448d79e56c6b62.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 9 May 2024 16:37:17 +0200
Message-ID: <CANNYZj_WYJeJY0OTzCGbO6S2+csFEzk0W1s5Z6seXkgTijOVoQ@mail.gmail.com>
Subject: Re: [yocto] Yocto recipe file://DIRECTORY fetcher recursive tracking?
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Cc: bibibobibo@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 14:37:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63062

On Thu, 9 May 2024 at 12:36, Richard Purdie via lists.yoctoproject.org
<richard.purdie=linuxfoundation.org@lists.yoctoproject.org> wrote:
> > I have a dummy question regarding the file://DIRECTORY/ in recipe
> > usage, we are using this mechanism to directly point at a source
> > repository with potentially lots of subfolders, etc. Does bitbake
> > track file://DIRECTORY tracks all contents accordingly (i.e something
> > will recursively walk through this directory and checksum each file,
> > then arrive at a final combined checksum?) and if we happen to repo-
> > sync or git-pull to pull new changes in DIRECTORY/, Yocto will be
> > able to detect any changes in this directory and automatically
> > rebuild this recipe.
> >
> > I was getting mixed answers from a few sources, some said this can
> > work, some said it works sometimes but not always. So I would like to
> > get a definitive answer from Yocto forum.
>
> It is meant to work. There have been some bugs in this area in the
> past, I believe they have been fixed. It also doesn't perform well with
> large trees of files from a speed perspective.
>
> Something like git allows for much faster operations as git is designed
> to do tracking of this kind of thing.
>
> So yes, it should work but isn't optimal with really large trees.

I'd also note that pointing to a source checkout that is external to
the layer checkout isn't good for build reproducibility. How do you
ensure each revision of the layer repository maps 1:1 to a specific
revision of the source repo? That's why recipes typically contain
git:// uris with source revisions, or http tarballs with tarball
checksums: to ensure everyone builds from the same source tree. It's
typically not a good idea to refer to anything that is not a part of
the layer.

Alex

