Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2929C25B78
	for <webhook@archiver.kernel.org>; Wed, 22 May 2024 07:54:18 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web11.4429.1716364452238592799
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 May 2024 00:54:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QlXERPwe;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-51f1bf83f06so7536378e87.1
        for <yocto@lists.yoctoproject.org>; Wed, 22 May 2024 00:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716364450; x=1716969250; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SRfS8mAm4lKv+1cOKiM0RgEV8H9INL5WyZXuc3TKwOI=;
        b=QlXERPweMGpReEVNPJjsnHHDBH4HleBLZgHmO3o7rNsLSdn9eaO0hzw716539Vz/um
         m744D0XCf2KgreoW5gJuhh3qXz8/rroPAEAZnoMr/CDZmWCZcBctqJFFHfzPw6dCm3q7
         1qobTqfboD2yyc/O7yAIsYFk4+Cufzt4zahsm4cpXIsY6+lfD5Vl3ZO0TN7dnM2ejZqK
         djs8FFwVyv5k1Lnkzwk+ZrIeZUL8ArzxslaAL3ZG+Ji4hWajEfxq+9k9n5KNbf3DWZaS
         o4unny79s2F5wifHtmr2iqXBgtxSIUdMLUwuZqtrsKlNsWbKuYwXzbbHN33ShMJZFYlP
         RvyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716364450; x=1716969250;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SRfS8mAm4lKv+1cOKiM0RgEV8H9INL5WyZXuc3TKwOI=;
        b=Mkmgj5dONJ91BV8h/uCF82EWTj0IrnMsCVdsC0U7d982hEN/42UNhcoTTZZhphh9X2
         DGs32UhcTjt3rSbXo4GfKrQuybPQvHpocUUaBNxfefpiU20cBCePuGP+GbpP9XdXqsnZ
         WUxIWqDDxlbGFwhJfZQVrcadMuEyRpcT7y/daon5w5AArTdgLiQS+UUCYsRufjFOPyYO
         Fo1jahtfQ6W4eyhaSvF488sjnaK6oMX2T8iRPzzl9I6I+PoAhvamF+5IQsvguftmJVCi
         2JGGODwXG1t4Xn+xqvMHNlBQGB1XKwVcxlkue3z78GPB4WTz9mWdfg8+sNXcI+BQ6pUM
         mgFg==
X-Forwarded-Encrypted: i=1; AJvYcCUC2SvJm5oFp6QnU0x3yoW6a5wOhuMA5PR8OzwML6YyTg67cbQ97TuSit6imXw0g0rYRIeqRPerTa5TyNFoMPbUAnyNrP+zLH7UR5gp
X-Gm-Message-State: AOJu0YynvBm4DPm9QM8Z22KXOc27Im4oZnKgbMv3NLK7wa62LC+XiFGo
	j0bQcbyXapPoehVZMWUJlF6OPWhdN9kycvtWaj3uhol/xl7JTJ5p6uYnquTsRxGsFqqlmpzu+7M
	6zslcBhCHitTqzSQF+ovBVaAtXgg=
X-Google-Smtp-Source: AGHT+IHs3MWsWiWhke85P/i+cB7nZeDi1heVAibQwvvRIUrTa622r1FBQqR6hSYwLPHv5J/jwVtlMh8L2vn2xhytuJo=
X-Received: by 2002:a19:434a:0:b0:51d:aae8:646 with SMTP id
 2adb3069b0e04-526be8d55f7mr700754e87.11.1716364449605; Wed, 22 May 2024
 00:54:09 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 22 May 2024 09:53:58 +0200
Message-ID: <CANNYZj84YtfRPXWm7c=DV6mOeQwVJaKLyeOHd7ni6PtZYx88BQ@mail.gmail.com>
Subject: proposal: controlled deprecation process for oe-core
To: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	OE-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 May 2024 07:54:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63165

Hello all,

right now it's extremely difficult to remove anything from oe-core.
The reasons are that either we don't know how removal will affect
possible users, or we do know that and we don't want to upset them by
sudden breakage and 'flag days'. Especially if those users are
supporting the project through membership fees.

On the other hand the maintainers burden is only growing as more and
more things are being added into core. This has consequences, the most
damaging being the resulting burnout, or coming dangerously close to
it. It's not just RP pushing himself into unhealthy territory: all of
us are, and me as well. Spending most (or all) of the time on routine,
unappreciated things that hold no interest or fun is not healthy;
there must be time and space for exciting, novel, fun activities. Yes,
even when one gets paid for it.

To steer things into a healthier, more sustainable direction, I'm
proposing a two stage deprecation process for things that should be
either maintained elsewhere, or dropped altogether:

1. Phase one: if a deprecated feature or recipe is enabled, users get
a warning at the start of the build and an invitation to describe
their usage of the feature in public (e.g. oe-core list or a bugzilla
ticket). Otherwise nothing changes: the autobuilder testing of the
deprecated item remains as it was (with a tweak to enable it
explicitly rather than through poky/core defaults if needed), and the
build is not going to fail.

This would allow the project to more accurately assess the usage of
the feature, and whether the users are willing to allocate resources
towards keeping it alive. Right now we often simply have no idea about
those things, just a vague feeling that it's not particularly useful
or used. We have to force users to come out and tell us what they use
and how. At that point, we could also hand them the list of open bugs,
intermittent autobuilder fails, etc. caused by the thing they rely on,
and see how that is taken.

2. Phase two: taking this feedback into account (also there might be
none!), the feature is dropped from the autobuilder test matrix, and
optionally relocated to its own layer. No maintainer is assigned to
that layer until someone steps up.

How long between phases one and two? At most, four yocto releases, so
that there's at most one LTS release occurring in that period,
complete with deprecation warnings that all LTS users will see.
Ideally, it should be just one yocto release.

What would I like to deprecate? I wrote that down, then realized it's
a highly flammable, explosive list, and each of those items should be
discussed separately, and only after we agree to the overall approach
without bikeshedding about individual items.

Thanks,
Alex

