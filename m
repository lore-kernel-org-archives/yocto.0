Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB115D10399
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 15:18:48 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web10.14514.1729869519019335165
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Oct 2024 08:18:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Gh6EUx6p;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4315c1c7392so21765725e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 08:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1729869517; x=1730474317; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OxzxmmKvEk0VS4kgICvI5r3Y2+Twj1JZn71xLk3cZ54=;
        b=Gh6EUx6pUbQCn4EjRkHQGpg00s7qfnbtALnLYb5H1U/Dr5GDI3m+ynK2ZoD1bZ8jkR
         oDDGqJt8ySpu6RPHAClE27NRJ8NBTaiUMfBApg0kr3uaoFh4XU89Kc+XJYB1O2ewpffj
         yipGaHD7ZxRpHFR3ArszJ/EBmhHCsVpu1SZDU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729869517; x=1730474317;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OxzxmmKvEk0VS4kgICvI5r3Y2+Twj1JZn71xLk3cZ54=;
        b=KEg1ub6KulkAAlQgX4xXaxeO48kHJ1m8MdBeDY8TF1epyDPJqMED7ZmTLQ44CZT0X6
         B98BciiZ68MmhYP36jm3IBWghdgeUlkOhz4LKLr2zrPGu3tQcor/cmUVPDj9Z+39TrWV
         Acds84xNvSurf+j9WFI7XCg4rDu0TZA2XIfMlB+MrNuwkjgUFGffN2PlwEmVS133ghMw
         TMWg5aL/aivQCCcrpcdYSUxmEeQNAXl3RundtaWqSMBJgYAJUAa45NnQhWt25RGEM8SE
         wu+VvQibr+lylvAeq4JGm9K9+SqLErCINvaNj/DOy4EOa7IX9RSgSkc0Fj1QJ9/5brvn
         Oi/A==
X-Gm-Message-State: AOJu0YxwkWBHYkgdzatoTmJWWmWGsZ2hwpPcz3g4RXJKe42UFx53yKSt
	zEHvBqxXGTBydYifxjPrjdBa7ulKAtXV45FUvzGqeUSDv1zaG2SjMzYO0P5EO5rTBCu4wFY9m9L
	UVxw=
X-Google-Smtp-Source: AGHT+IGlOhe95RRxzRvhUfkQHwnVgsLE2xQ7VIiGYfPeSfw/W3PxVomtEmqfDnUIb/rEHNNH0ehOBw==
X-Received: by 2002:a05:600c:1e05:b0:431:44fe:fd9f with SMTP id 5b1f17b1804b1-4318424ea1emr79495255e9.23.1729869516780;
        Fri, 25 Oct 2024 08:18:36 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5e58:696f:3954:9f3f? ([2001:8b0:aba:5f3c:5e58:696f:3954:9f3f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b5431ecsm52025555e9.5.2024.10.25.08.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 08:18:36 -0700 (PDT)
Message-ID: <649022f38067c2199617cad7a412fa637e597f9f.camel@linuxfoundation.org>
Subject: Re: [yocto] Date in version number
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, dan@engineeredarts.co.uk
Date: Fri, 25 Oct 2024 16:18:35 +0100
In-Reply-To: <sJzU.1729868414274671683.IJEM@lists.yoctoproject.org>
References: <sJzU.1729868414274671683.IJEM@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 15:18:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64130

On Fri, 2024-10-25 at 08:00 -0700, Daniel Squires via lists.yoctoproject.or=
g wrote:
> We have many internal projects that we build as part of our platform.
> These are all managed in git repositories. Our recipes therefore all
> point at git repositories.
> After some internal discussions we have come to=C2=A0 the conclusion that
> having traditional version numbers of the form x.y.z is not very
> useful to anyone and is a chore to maintain.
> We would like to generate our version numbers in the format
> YYYY.MM.DD-PR-SRCREV - e.g. 2024.10.25-1-abcdef12.
> I found the SRCDATE variable in the glossary documented as "The date
> of the source code used to build the package. This variable applies
> only if the source was fetched from a Source Code Manager (SCM)." and
> initially thought great, and went ahead and set:
> =C2=A0
> =C2=A0 =C2=A0 PV =3D "${SRCDATE}-${SRCPV}"
> =C2=A0
> However what I find is that builds have the current date - i.e. the
> build date, not the date of the currently used commit to the source
> tree. Indeed SRCDATE it literally derived from DATE, the date when we
> run. This has a several problems:
> =C2=A0
> 1) Everything would be rebuilt every day as a new date changes the
> recipe
> 2) The builds are not reproducible
> 3) We want to be able to see at a glance the date a given packages
> source was committed, not when it happened to get built.
> =C2=A0
> Does anybody know of a way to achieve this? I have tried looking
> through the docs and the output of bitbake <recipename> -e and come
> up empty.
> =C2=A0
> If we were to implement a way to get this information in bitbake what
> are the chances of being able to get it merged upstream? would this
> be frowned upon or rejected on any grounds?

I'm not sure we've ever done that for git repositories. The challenge
is that the date isn't as linear as you might think. For starters,
you'd need to use the commit date rather than the patch author date
since patches aren't always merged in the date they're written. If the
git repository contains merges, the dates may then also not quite
follow what you'd expect depending on which side of the merge the
commit was from.

There was work to inject "git-describe" output into the version field
and I'd imagine you could do something similar for the date it you
wanted to.

https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/class=
es/gitpkgv.bbclass

We did get parts of that into the bitbake fetcher but I can't remember
how far we got.

Cheers,

Richard





