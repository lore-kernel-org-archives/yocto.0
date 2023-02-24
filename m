Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44966C61DA4
	for <webhook@archiver.kernel.org>; Fri, 24 Feb 2023 13:37:50 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.17651.1677245860780543458
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Feb 2023 05:37:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=L/mJ7Nie;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-ed1-f51.google.com with SMTP id eg37so51058395edb.12
        for <yocto@lists.yoctoproject.org>; Fri, 24 Feb 2023 05:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bdnXJObhuU9nx/OH+JTn7jPuDGgfVGHf/VL1R3mql9s=;
        b=L/mJ7NieSvdd4gTTfXx1SpkH1/saNNYs7XPXcMflh1yJycIlgax2XGF5BeoXw7sGbm
         DlltGz8uoatG4OESREFzxk1qJX0IOwNQ3sOpiMFjfhpcI7w/78ZOpPlTugBwEt98TISG
         OjO6C1NyQxpXL1Xv55f4vnN/osHFpbpLj+zUw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bdnXJObhuU9nx/OH+JTn7jPuDGgfVGHf/VL1R3mql9s=;
        b=emurX3GaZ44V0r/H4EXRjyTMLCY1raO1onITiZqNH+YANh+njs/5IX/2Tjds2GF/E3
         ELoM5R649W6Xw9ym2Z+VlrspitpS/O0zqn87O+ksTRwEBPuJVAaVxmMqegVsYJMWB8o2
         WvcCzurLPsW8IskpKLqzlu9HHyrTK05/5yxVPONzl6LdxIpFF5wqTstLcwWYj/6zpPh5
         9aXQKAu+ZAmSD24sRqzAX38DV2l7J4JA1ByRp8u8Pxw7oywowQJZ4yYASm2F8OK0ZEBn
         XghELIh1fnNVCfN0papNAmvacV2GuHGA5d5kqczCNuTc1ksav26a4kjhETQ8QCpxx58p
         iGMA==
X-Gm-Message-State: AO0yUKX82eqJsZtvwJ9liiq6oC6BDDR+MlQx37/t3MGrWjK4xfb/J7oW
	Vh+o0hSDy4RpMIv8n/PTGrSBAw==
X-Google-Smtp-Source: AK7set991qdKYR1Yg5JeCh/Qg7S2SMNQmSMMGFmM69gweaaSC4TDYL7RB28X3D/bsNbTTJuxClU9TQ==
X-Received: by 2002:a17:906:c309:b0:8aa:bea6:ce8b with SMTP id s9-20020a170906c30900b008aabea6ce8bmr21283447ejz.53.1677245858391;
        Fri, 24 Feb 2023 05:37:38 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:639b:9979:fd5f:bbb7? ([2001:8b0:aba:5f3c:639b:9979:fd5f:bbb7])
        by smtp.gmail.com with ESMTPSA id i16-20020a0564020f1000b004af71e8cc3dsm1357488eda.60.2023.02.24.05.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 05:37:37 -0800 (PST)
Message-ID: <11824e6af1ccaef8216da9f36885dae2878a92ab.camel@linuxfoundation.org>
Subject: Re: [yocto] Question about psuedo abort errors
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tamis <tamtamis@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 24 Feb 2023 13:37:37 +0000
In-Reply-To: <2956.1677148028932653597@lists.yoctoproject.org>
References: 
	<bbff00030abef49a53d877a67e739be43667de7b.camel@linuxfoundation.org>
	 <2956.1677148028932653597@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Feb 2023 13:37:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59296

Hi,

On Thu, 2023-02-23 at 02:27 -0800, Tamis wrote:
> I know that this might be an old thread but we seem to deal the exact
> same issue in our yocto builds, that's why I am writing here.
> Recently we switched from sumo yocto branch to dunfel.
> Now some recipes with nothing special in it, just compile and
> install, are failing in the install phase because of pseudo abort.
> Those recipes are installing via the do_install some headers files
> into the usr/include folder and later those headers are share via the
> sysroot to other recipes.
> I read what has been written above but I didn't see a final solution.
> So I am also trying to understand the error in order to find a
> solution.
> If we do a clean build=C2=A0=C2=A0(bitbake lib32-las -c cleansstate) then=
 the
> recipe compiles fines. But if we invoke the building without the
> cleasstate the recipe fails in install phase due to pseudo.

I'm curious if you upgrade to the latest pseudo revision whether this
helps at all. There was a fix that was partially related to issues like
this.

The error either means the file was deleted on disk without pseudo
seeing it, then it was created again or that there is some kind of race
in file creation confusing pseudo. The latest commits to pseudo try and
fix the latter.

Cheers,

Richard


