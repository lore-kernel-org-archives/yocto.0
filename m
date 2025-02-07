Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE6BC02196
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 09:43:51 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web10.65659.1738921427774092113
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2025 01:43:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KL5RZ79n;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6e42f82ab88so19921216d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 01:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738921427; x=1739526227; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CagGV3EhIIkvwsRiywehjPahwoTfgx6dffbFVnlTpp8=;
        b=KL5RZ79nphjceyid+hWrS7FZ8zmZxASzO0B0dsJ+gtpxHozj7QpocdY4xrieRjCwLD
         9jnd3Ex3VoqUt8Ojd/ZhIi3SvbohP2SV3iuC7u7PaM7D6Xlcw+m6KyApb/mTb+k4+fpd
         GKo2WU7eQdKwd7IBJQCUIlMzt2bbIQrYN2KgRo6EuOwT1w+0hWp6fljWP56kS2LE4pDb
         3lVJ1EhHgLMWJVZyyJcuoYBg91Zw7BmVlxRPJ9QfV3Eo2CE+K/M7XyKm7I/rLhNTmT0V
         gYSIhQP/onF/btrY/PFax4P1f2vf8ua1vXgF68CZqs3et45YjsQXhXvG4ANpNxCTXzXu
         tPMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738921427; x=1739526227;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CagGV3EhIIkvwsRiywehjPahwoTfgx6dffbFVnlTpp8=;
        b=KjSKfikNWAIJ8wFsYUEgs4gwAzm0O2HmMO5AbhlvBTcWH1w93f0lB5tg/r+svF5OGw
         ebAgaBJsvZglsF5m7OwShZxk23KVD7FA9NMboc/xM7P+rgFzm8w9ar+Ta0QwCoEbV3HG
         lUbYjyHBGteFqszMv3kkc7c8LNJl33mk2QY8KRqig/pI9Qs2R12ed36hK1lJvXmDL3ag
         AecjM2fjQQS7OERfiiSHNbNRnrHsssgxOHrfxyH+s2yVlI/Kd91ZHfVwZrLM8O6L7Q1n
         GwMVNPfanUvr1DqVnATF8hCr2JDERHc1hWLcphCSoTZitmKxgpheODejZ/ixWhiNq7Dn
         oFZg==
X-Forwarded-Encrypted: i=1; AJvYcCVQ8Xe1n38x1nDvyJAAsbsKAGb3/E0T5C8PIBKKRCW1DnU4EEXC9SjY9ojrVsm6HIRyseSvYQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxG2V/oDEWXuH/ikOLNigMofKdr6fUR5+BJsfJcR066ICpQ6MWt
	/eruX3VqtkLu+b+B7e3oju0rjXg2yhdPwqwP1+cce/K16TxDwj9Jda0urnR1XQbiznpc+c+Eoop
	UaAly4PlJ1kqLr8UlZ2Gv4JmdBso=
X-Gm-Gg: ASbGncseULIWNm7wwNWshwr8l9HG0fCMF7NrYOkb7DFTKY+tIFtiFuhJ1h4PRYQIN//
	gHzcpIG180Mzd6wFD04rnmd+CD+v8P52KgxaqeuaAiFUKqfCYqUu4elGo6X7cF7J9E/2kgWw=
X-Google-Smtp-Source: AGHT+IFwYXhY0vsYI7YHFq/L01z2dYQ6+pA23Rll6gLRE+r/Etcpk+skR/34fpL3+jCd1siB2qtf8P2FbeOQIcv5Cu4=
X-Received: by 2002:ad4:5bc4:0:b0:6e4:41b3:4983 with SMTP id
 6a1803df08f44-6e4456dd202mr35700616d6.35.1738921426809; Fri, 07 Feb 2025
 01:43:46 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj85xWewvktp1OXPK71CGe4i=p80LYxLuU0cyQUOCH3Zcw@mail.gmail.com>
In-Reply-To: <CANNYZj85xWewvktp1OXPK71CGe4i=p80LYxLuU0cyQUOCH3Zcw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 7 Feb 2025 10:43:36 +0100
X-Gm-Features: AWEUYZkpi9GRP3icI38V2B3u8Wp6MbQ_mcqD5iqQ8_lC5qdUZvEF7DjMLgA1cvo
Message-ID: <CANNYZj8rk4+jKVYCSr0JSeiSDgnd3yxkx0jZroSbbuLRaMZTQA@mail.gmail.com>
Subject: Re: proposal/plan for taking bitbake-setup into use - official
 configurations (with guaranteed sstate)
To: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	OE-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 09:43:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64742

On Thu, 6 Feb 2025 at 16:56, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> 4. How is sstate availability guaranteed?
>
> There would be an autobuilder job, part of a-full, that would use
> bitbake-setup to set up a build matching the branch being tested, and
> use that setup to run builds that populate sstate.
>
> Then, bitbake-setup would be used again to set up the same build, but
> instead it would run a selftest inside that setup that checks that
> sstate mirror has been properly populated. We already have such a
> test, and such a job, but they work directly in the bitbake build set
> up by the autobuilder.
>
> Note that master-next (or somerelease-next) doesn't always match what
> then gets added to master (or somerelease); for testing exactly master
> there are nightly a-full jobs. There could be a short window of not
> yet provided sstate until that nightly job runs, but I'm not sure how
> to address that, short of asking maintainers to run the sstate
> population job from staging branch before they push that staging
> branch to master/stable branch.

Ok, doing this in a-full is both excessive and unnecessary. Rather
instead of the above let's run a separate job, triggered by new
commits in master (or stable branches) that would populate sstate (via
bitbake-setup plus autobuilder sstate tweak). Existing tests already
cover for that sstate propagating to CDN. I need to check if buildbot
and autobuilder code can support jobs triggered by new commits,
otherwise it has to be scheduled like nightly or auh, which I'd like
to avoid.

Alex

