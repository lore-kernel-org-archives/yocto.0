Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 781C2F3D600
	for <webhook@archiver.kernel.org>; Sun, 29 Mar 2026 12:05:26 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.28194.1774785922126772763
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Mar 2026 05:05:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TsooDkzE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48704db565eso48018415e9.1
        for <yocto@lists.yoctoproject.org>; Sun, 29 Mar 2026 05:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1774785920; x=1775390720; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mDU94u+vCPNYKNLI8LwGZ862u77BsVWJF9jpBcqiB8w=;
        b=TsooDkzEa3UcWtOvFL/EuA60VGvrB2/eLSACf148gxsIgx69/I2585Teev0nFTsDYE
         AMLCWC5rZj2fX/c1nZAMi24V8GU7omIJiWMGzsRkD84skrWmzAAG/fNuiJopR0guSok4
         kra8GHzHxq2yswxHBpm2b+rplZ6MnQtn3pmuI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774785920; x=1775390720;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mDU94u+vCPNYKNLI8LwGZ862u77BsVWJF9jpBcqiB8w=;
        b=PV/pLhFqODYAr/vzh7JShDTGARnc1yq2LBrv+zMOlxBo0UL4OoWX0FkxKlpoq6FMR0
         E8L3RqT9NBk0xX4ALMvASqzQQboJ3BtDQzZpIJp9YpnhCvSLtRQmpFm3YtVgeCxY5ZkP
         CujI30SLxYmzs7FFbo/Du43rSc+KnbmBp9wZ6o7vMo/kOZR0G+HV3N422qeAGv/7QN4a
         yBcli9IWuCoWTaoW7xohaIATlWzCgxr2PGTSOWLYAG1Br343Dzh9k70i7nKJiAhv2luW
         fwhemcpHzrvRSJVI1Yz4iAnpa1AvYV/ta6rpLDq8+o5ATkLLyHV2u61EZ+eCrh1jC5G1
         KJjg==
X-Forwarded-Encrypted: i=1; AJvYcCXmeznAGF7fXBDUz2R1kUjprp6LVfHeBlGnXPnw5u2D7pJIG8AFDnBAvasUl+rYSH5z2g8KcA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwzVZTLuMk44qa4g/m0aijOvoRe/u5ZUXjl/MwahiprabgVXH40
	zVXhmZrWCK8oEfiV8ANbSKACtNxqN0C2iU34Ei9nx2BKZz32MONLl4tggM+PVQBH2R8=
X-Gm-Gg: ATEYQzwQC7dCOW5Eyac2uS26C7dln035C4FhWs66yyNu1Gtf6aWTsNMuYT4WZ5FuC0h
	2c3zrMfQoKie0B4sHleZFAVpi675mVPzNZx+hxFbmyVoAG7i44qDkAJaxOlR6R2KMsrRXzCCFGG
	w7crX8IZMSMs7Xhdl+S3kI3U5lpUBGKaP0gdRCvKV0MjquELQyXQu7LJRj3nicpZSfRs0t0uE0i
	lxhJiRT6ydINs1yIxYjxaijJf1M+QKVy0fuHNzwNbRWe6Ipd/hIZGJ6jTTY1X9xvSHTVRRwshjV
	1FPhFkUMIyAY/yk6dLaUV5BEfpQnaM7NY9K9+VArpbpLpDXSBGQbD1Mc2kiMT2LH2R8KttGEO+8
	aMqz33UxAvIRJ2x0zyCdv/AF2iq7PS42z0YcT1EMiPFD+WBKnt8UK00hJ0lK7HFG9by4BIqXx7P
	Tj53XU4cEUEjhWAdKCCzqalC808TZJC4ADAfsiUxpvdzPmBBZyUHuzkumzx/yJTOLgkvNejz9RC
	rO1wLiOEH0Zm5fx
X-Received: by 2002:a05:600c:8b6d:b0:485:35ba:1d81 with SMTP id 5b1f17b1804b1-48727eb7fb7mr151737705e9.21.1774785920402;
        Sun, 29 Mar 2026 05:05:20 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:3a20:25ed:ae3c:7430? ([2001:8b0:aba:5f3c:3a20:25ed:ae3c:7430])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf2577cbdsm12194438f8f.33.2026.03.29.05.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2026 05:05:19 -0700 (PDT)
Message-ID: <39e36ec0a761e6ecf1de0b336e3fe045f898e283.camel@linuxfoundation.org>
Subject: Re: [Openembedded-architecture] Yocto Project Release Tagging
 Changes
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: peter.kjellerstedt@axis.com, "mhalstead@linuxfoundation.org"
	 <mhalstead@linuxfoundation.org>, openembedded-architecture
	 <openembedded-architecture@lists.openembedded.org>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Cc: "Lee, Chee Yang" <chee.yang.lee@intel.com>
Date: Sun, 29 Mar 2026 13:05:18 +0100
In-Reply-To: <DB5PR02MB10213399C3597AFB6451DBB21EF54A@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: 
	<CADfgfoZ2-_Vypjx4mDypmh=Hace4+gm5_4S-aN=Zad6O_CKw9A@mail.gmail.com>
	 <DB5PR02MB10213399C3597AFB6451DBB21EF54A@DB5PR02MB10213.eurprd02.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 29 Mar 2026 12:05:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66362

On Sat, 2026-03-28 at 15:18 +0000, Peter Kjellerstedt via lists.openembedde=
d.org wrote:
> > -----Original Message-----
> > From:
> > openembedded-architecture@lists.openembedded.org=C2=A0<openembedded-
> > architecture@lists.openembedded.org> On Behalf Of Michael Halstead
> > via
> > lists.openembedded.org
> > Sent: den 27 mars 2026 23:48
> > To: openembedded-architecture <openembedded-
> > architecture@lists.openembedded.org>; Yocto-mailing-list
> > <yocto@lists.yoctoproject.org>
> > Cc: Lee, Chee Yang <chee.yang.lee@intel.com>
> > Subject: [Openembedded-architecture] Yocto Project Release Tagging
> > Changes
> >=20
> > Following discussions in the Yocto Project and OpenEmbedded TSCs we
> > have begun standardizing git repository tags across the Yocto
> > Project.
> > This is being implemented to ensure consistency and simplify our
> > automation around releases.
> >=20
> > Going forward, the following tagging standards will be enforced:
> >=20
> > Yocto Project Release Tags: All official Yocto Project release tags
> > will consistently match the yocto-v.v.v format.
>=20
> Does that mean the next release will be yocto-6.0.0, rather than the=20
> expected yocto-6.0 (as previous major releases have been named)?
> If so, I'm all for it.

I think we need to go with yocto-6.0 since I remember there were a lot
of issues with 6.0.0 although I don't remember exactly what they were
offhand.

> > Branch-Specific Tags: Tags that include the branch name (e.g.,
> > kirkstone-4.0.34) that duplicate the official yocto-* tags will be
> > removed from all repositories.
>=20
> NO! ABSOLUTELY NOT! Removing official release tags is a way, way
> worse  idea than, e.g., removing the master branch when starting to
> use main.

We have too much legacy around in general and we're effectively
drowning in it. If you already have checkouts the tags will remain,
this will just remove them from the repos and give people a good hint
which ones to use going forward. Only duplicate and hence confusing
tags will be removed where a given commit is referenced by multiple
tags. I think we want clear repos rather than trying to keep
archaeology at this point.

If we did switch from master to main, we would need to remove the older
one otherwise people would get confused.

Cheers,

Richard

