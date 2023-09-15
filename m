Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1249AEEB581
	for <webhook@archiver.kernel.org>; Fri, 15 Sep 2023 06:18:00 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.15004.1694758676106056217
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 23:17:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VgJPoVLS;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2bceca8a41aso28432171fa.0;
        Thu, 14 Sep 2023 23:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694758674; x=1695363474; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0uiSSiNDRSvm4B8xTzKBsBa3fPNF7A+8rWeQ9ht9Njg=;
        b=VgJPoVLSC/Jv2vVU8dOKnRt1Y1QgB644g+cE3Z9xsyMQ1pCkZEPGXsG94p8iDrDsHC
         mHru6e8SWznrCcYGLWX4d09FhoNDqNyHChP9IGxhUl7QuKggPX1eyf9W8+HSpqiozk5g
         Cl2q+P5zmZcShIyhZIX74uNEA1TTryaNWiITosMHwk5cqiGP6AQ4gIeulbhHodu7lKeg
         V4xrgE/M4YkyD4LtSFDlR0uF+ufSq73vtm3Wsai8ieJAc4ic+dTe4GRETQvKBGDGf95T
         sft/wL8SEbpKP14deJQi/nBrgC0gHP2jNYDP4RZt0FrjXF3JmCMV0Z420LuaIWxkpZoT
         0Ifg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694758674; x=1695363474;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0uiSSiNDRSvm4B8xTzKBsBa3fPNF7A+8rWeQ9ht9Njg=;
        b=BoErVqDnTBjFtYw2QKqnkm4zFoGdUZ3R5ETQyEW+ur26zWVFzBKBtrT/lrC16GZLCJ
         g19garyAGOtp4kBhoYgQ1Zhi7UVwbyba/THF6gThuIK+zlxuVXYeuJAN/VujhU56nQLr
         Ey2+z+tgZVR5EHEaIVwqMQO0ygM4JG/4g/yEt9GxFNGiQyWeC8a3EjkxV4ex9h6LS/bL
         kA0J4ynL/LqnG6wectCPBi4WyJPyLO1IAOT4OGyJiwCt2L6qq0J7tt4cHk2YEhFBC3X6
         R2nNDx91ranKHewN8+7AO8LKmfiMrQibYmnZce1pYMWg5g2LcCxGZRqlOiZUVrTeCth5
         2W8w==
X-Gm-Message-State: AOJu0YySzrr5Jg3UMVYdTJmwJJ0+FWJGEgj3PneMTxEzTitXfy4Scfj2
	SbW3risR9q0ra2cV7z+hH2V0k/9kyLmd/C5LuPA=
X-Google-Smtp-Source: AGHT+IHOi75TjPkeh4XrDOWqeu+u/f6YCkjlxtoHGOaT6DqJhLpjx4K2xkfOXrFgzd/SUZiNoIYnJclbq1n5SxtSrr8=
X-Received: by 2002:a2e:9053:0:b0:2bc:d522:dfd4 with SMTP id
 n19-20020a2e9053000000b002bcd522dfd4mr706325ljg.8.1694758673837; Thu, 14 Sep
 2023 23:17:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAApg2=SqAzD9zCnAGB+mtZoTnMCzcnocarpTSCQ0weH15j8KhQ@mail.gmail.com>
 <ZQGsAX4XIMkSN35C@nuoska>
In-Reply-To: <ZQGsAX4XIMkSN35C@nuoska>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Fri, 15 Sep 2023 08:17:41 +0200
Message-ID: <CAApg2=T7P2wa6aVXJ0RhvD6ReFSX2=c1z2yqGTmFWxBEdgnHeA@mail.gmail.com>
Subject: Re: [Openembedded-architecture] Security processes: YP needs
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: yocto-security@lists.yoctoproject.org, 
	OE-core <openembedded-core@lists.openembedded.org>, 
	openembedded-architecture@lists.openembedded.org, 
	yocto@lists.yoctoproject.org, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, Steve Sakoman <steve@sakoman.com>, 
	Khem Raj <raj.khem@gmail.com>, mark.hatle@kernel.crashing.org, 
	Ross Burton <ross.burton@arm.com>, Joshua Watt <JPEWhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Sep 2023 06:18:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61014

On Wed, Sep 13, 2023 at 2:33=E2=80=AFPM Mikko Rapeli <mikko.rapeli@linaro.o=
rg> wrote:
>
> Hi,
>
> On Wed, Sep 13, 2023 at 01:52:19PM +0200, Marta Rybczynska wrote:
> > Hello,
> > I've been working recently on collecting what works and what doesn't
> > in YP security processes. The goal is to go forward and define an
> > actionable strategy!
> >
> > Today, I'd like to share with you the summary of what I have heard as
> > needs from several people (those in Cc:).
> >
> > I want the community to comment and tell us what you find important
> > and what you'd like to see added or changed from this list.
>
> Since most users take poky reference distro and combine it with a number
> of open source and closed source BSP and other meta layers and build
> systems to produce SW for products, they also need documentation and tool=
ing
> so that they can replicate the Yocto Project security processes and use t=
he
> available tools.

Do you also mean that we should make sure Poky follows security best practi=
ces?

Noted the point on documenting the way process works/will work so other tea=
ms
can extend it to their layer.

>
> I think most of the documentation around the tools and processes is in pl=
ace already.
> Having maintained and shipped from a non-maintained poky branch, I can ju=
st say
> thank you to all who participated in the upstream work to get security vu=
lnerability
> detection and fixing possible!
>
Out of curiosity, what have you backported? cve-check? LTS work?

> That being said, extending the CVE scanning and status tracking work to i=
nclude more
> open source layers would be nice both for the maintainers and for the use=
rs of those
> layers. Using some random old branch of meta-foo may not be so safe. Mayb=
e add
> this data to layer-index?
>

We have Yocto Project Compatible already. Do we need something else?

Cheers,
Marta

