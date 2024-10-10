Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23EE1CF11D2
	for <webhook@archiver.kernel.org>; Thu, 10 Oct 2024 11:38:19 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.41267.1728560296512111617
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Oct 2024 04:38:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DHk6wiEM;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539983beb19so913184e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Oct 2024 04:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728560295; x=1729165095; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLNyilFPSggHKklDKu1bvnUyuRjwkhWdwv4RBjpFeSc=;
        b=DHk6wiEMDJNzdaBfg7BG5JbybUxRCuKcYUgzmUEcOs6r7Lr7xfvJvx2kpVhreF/nYq
         G3KrnuZE8uAjtdFPK5Ku6mrAR9tULlf4OglZNd4rNPkF5O4+bc5attKRyLTSNCRZ9Rvm
         vuES8IvBzxhwgWlx4+DySG8WBpqzM8Fr9Vfq2i1nDpgMt5rBS9i4gtjcgXlVBdhOHKcD
         o7jbXO7vKJBawTf0ofUHK9ErpC0BNYDyM/M/vB7K2MMwxu2BqanVR3cn5B/+HdJpOeuz
         H/uJNi+30rmyFywkvF2Mf3dawu0c4Lib7Ecb8t/GyI/kevC/fGKZ35+ecsA2JWPo+7F3
         vQmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728560295; x=1729165095;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZLNyilFPSggHKklDKu1bvnUyuRjwkhWdwv4RBjpFeSc=;
        b=hmA14jB2PSv7o9gHRQVzblZYNG+ZYCESjbaX53Ha7ff5f1Mfp33tnqr8l//OwG3h8i
         IgwkUQnXCsieThadb9dLo4GdbhJzIz+1e+I3abl1YqR74YT4qwwXtD4ZbQ74gHN7WlaF
         Gmq7LwWocqriPJe3rYjw1xE90cj283H7e7H6GkQ4OrfW8NXg0WKTumF1wzB7PNe6o/me
         opev0K/fP3oDcX6tPat6Kv0Sv49fs1Q909BwfU+x5kMoSEBYHQ8hnSLBWi6ANc6oUQBG
         +HrE7BzGNQjjSbFMNBYoPgevIJpnndA4tKsZ/eqm/9m0xgfHPd5ObGhqpNokCjty9l/a
         WoZw==
X-Gm-Message-State: AOJu0Yxt7/ho8rursGBa5Y9aIK6J/UMEwwmYFqFoM4Y20bPysOP+Ev5V
	W0P6utzWO7l6f0L2E9p55wRr85dbpp53DSJEuykK5yX9mOgujPJ5aARb53Ppr8BINMvEIPFX1Ub
	/47dEF1qpa2YrWaPqSn8jE73u/hs=
X-Google-Smtp-Source: AGHT+IEog3eLx/jefBQvSneXlJgKQogWYmCZqAcaWN5P5abBAszzoFqd+YFlo1vf76fNTnHJtkRMx3ieeyj6hTs+R2k=
X-Received: by 2002:a05:6512:12c3:b0:535:6a83:86f9 with SMTP id
 2adb3069b0e04-539c49789e4mr3186892e87.60.1728560294175; Thu, 10 Oct 2024
 04:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_nfD=n7MfF_QJLTJZ7abwu1MF66jedoKhBf4tdO=v-Vw@mail.gmail.com>
 <10004.1728531954228723360@lists.yoctoproject.org>
In-Reply-To: <10004.1728531954228723360@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 10 Oct 2024 13:38:02 +0200
Message-ID: <CANNYZj_LSjCNwubUQoSWwNQx4tKb3i32tvZGFKU+pJHvA-ysEQ@mail.gmail.com>
Subject: Re: [yocto] Question on the sequence conf file parsing. #yocto
To: yanmei.guo@boeing.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Oct 2024 11:38:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64003

On Thu, 10 Oct 2024 at 05:45, Guo, Yanmei via Lists.Yoctoproject.Org
<yanmei.guo=boeing.com@lists.yoctoproject.org> wrote:
> Can you explain a bit more on separate build configurations?
>
> We are using multi-config to separate the build configuration. However the `local.conf` and `bblayers.conf` are shared across.
> unless you are suggesting complete new build (new local.conf and bblayers) not sharing anything in common.

Yes, I'm suggesting exactly that. There are standard mechanisms
(configuration templates) that allow you to save and maintain these
files directly inside the layers, and initialize the build/ directory
using them.

> In addition, is there a recommended way to manage debug/release build in which case they share common configurations but also varies in lots of areas.

First, you should carefully consider if you need separate
debug/release builds at all. What would differ between them? Can you
achieve the same thing in a single build by having different image
recipes with their own set of packages and image tweaks? Can you
configure your software to make those decisions at runtime when it
starts (e.g. decide to run 'debug' or 'release' mode depending on what
is written into a target configuration file)?

If you do need two different builds (which will double the load on
your CI), then you should make two different distributions. They need
not be entirely separate: they can share almost everything in a common
.inc, and only a few tweaks in the top level distro.conf file. Then
local.conf only needs to set DISTRO to choose one or the other.

Alex

