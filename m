Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 739A0C021B2
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 16:53:43 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.13574.1740502414974859264
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2025 08:53:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bokDJyMB;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-38f1e8efef5so3488348f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 08:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1740502413; x=1741107213; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XNpIvmlRqmvZKnCsZuZjcrcLS0XfDRyukvoj/nStqHw=;
        b=bokDJyMBsMnZRZOZfNR6snQtoWV/nhyvliNCIryZ+MWYkXD3w5Be14v5muhoo2pec7
         pkiVia/FGvGM9YmO6jXp5TKDRG29+5y5CLY8cRd3CbmDS0PpE525v1WDEyLOn8D+Ac9+
         pl2wLl+loVZ712jLLFYavNV1Iub+SCMxugiZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740502413; x=1741107213;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XNpIvmlRqmvZKnCsZuZjcrcLS0XfDRyukvoj/nStqHw=;
        b=OR2atWNZLgPG3OzamKo5LaBKql9TA+BZ/MS3a+SFACydVCmQinpwl8gEFY5HN5zQsq
         cwvcUksqNympBu7/G+TSf5lU5zACqjDiWmt0wMycNgofg4LZully1TDtgNH/DeQECw+/
         Sdiwk9VM6aGvvJ+MUDc7Gq+bdzCCI57ibReRnjPNJMCTVVbPlVJfUYVEecD7JXoBb8SN
         FIthRt4OyxhMOSurOfHnbFRwArvlEsUuvIPOru2pwmo2+4OKOlzcr3fTjaPWzZye0pEp
         TfvegSfFPYENtC0ESbNMYfAgwcA64kIQiAO12nBA/RpwEU9svgvar6NH422I0y1vRz7C
         Ubog==
X-Forwarded-Encrypted: i=1; AJvYcCVRxQFlNCAUkYH3n/Qy0J5kQ5TLwuzMLN4GXbPqbkEUgEXZhryzk0glQ6VgEzoImP/lbK1yzw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzdTBbFvcT2zO8f3U3vdG5AkedV99GXAQSoAId5sLfFuCsjdYUg
	vZVWhFMt7CbwTs5rKLKf3BzGUhpbod5897t+j651GShh4KWQdPsMPr6gWsc0apk=
X-Gm-Gg: ASbGncucMLNWp01n4A3Cf0Xeq/4/463Y/SXykjjQ2lOkf0yHNF9tQwVzRhk9sDbn+sE
	O83kfi9W95jLePH3dPmpujBui6tZE/xGdzUp6Vra8uHWJteGxSWfvgQp+Xh95PgbSXFpiD/UeV2
	VATxRhJTzpDohBvIJWCKRauUtaX1dgm2NzRuBIOZ680gh3yrydJlk0MCUDmKkAlB4U94+0C+DKe
	1xbBUCXkDMBCbDe74s15x1qBKDenq4z2TOCJooacDJK28v/BaixW6kw+4Lz76LutcwlcQqDICo1
	+Yu/iStCRAIYbfeanxhW165/3Pgkh8FyeHy+wkH59Mmj+VZ23kVYta2WYZFr8cPduzw32tlCncB
	LyhfN2Wn3nscyX+8=
X-Google-Smtp-Source: AGHT+IE7UGEiHvmu4uRyYr+R4bv6ttrYvI4QsF/emNmTz1mF9wB7aGn/TNI5R2IbTYxMCB9N9oAqcw==
X-Received: by 2002:a05:6000:1a86:b0:38d:e6f4:5a87 with SMTP id ffacd0b85a97d-390cc5ef3c8mr3727300f8f.10.1740502413459;
        Tue, 25 Feb 2025 08:53:33 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:92c7:7a17:f809:bc92? ([2001:8b0:aba:5f3c:92c7:7a17:f809:bc92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd8fceeasm2910405f8f.95.2025.02.25.08.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 08:53:31 -0800 (PST)
Message-ID: <9ee46ddb0ffbab94b2015eb81e711845be9b4471.camel@linuxfoundation.org>
Subject: Re: [yocto][meta-mingw][PATCH] oeqa: Set LANG in wine tests
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Steve Sakoman <steve@sakoman.com>
Cc: Joshua Watt <jpewhacker@gmail.com>, yocto@lists.yoctoproject.org
Date: Tue, 25 Feb 2025 16:53:30 +0000
In-Reply-To: <CAOSpxdZT+tuqP0CmKUrZR7W+i6-2PPuHwWcdk33_48R-1c66Pw@mail.gmail.com>
References: <20241002225451.263086-1-JPEWhacker@gmail.com>
	 <CAOSpxdZSCzmXMJ-R2Xri8OcQw4Q38b6nkbH-F83sUO9vVgkMJw@mail.gmail.com>
	 <CAJdd5GZMVzeiuu55cmXXsAHvARvfTs_mOn9iv8UQEe+_kmwbUQ@mail.gmail.com>
	 <344f79e8e7093309dad81c72f4be7dc2d42a6161.camel@linuxfoundation.org>
	 <CAOSpxdZT+tuqP0CmKUrZR7W+i6-2PPuHwWcdk33_48R-1c66Pw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 16:53:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64869

On Tue, 2025-02-25 at 08:29 -0800, Steve Sakoman wrote:
> On Wed, Oct 30, 2024 at 9:03=E2=80=AFAM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >=20
> > On Wed, 2024-10-30 at 10:02 -0600, Joshua Watt wrote:
> > > On Wed, Oct 30, 2024 at 9:18=E2=80=AFAM Steve Sakoman <steve@sakoman.=
com>
> > > wrote:
> > > >=20
> > > > Would it be possible to cherry-pick this commit to the styhead
> > > > branch?
> > > > =C2=A0I'm seeing the same issue there.
> > >=20
> > > Yes, that would be a good idea. It's based on the build host, not
> > > wine
> > > or Yocto, so I suspect we would see it on any branch using that
> > > host.
> > >=20
> > > Pretty sure it will cherry-pick cleanly, do you want me to send a
> > > patch?
> >=20
> > I've sorted it, thanks.
>=20
> Looks like this was backported to kirkstone and styhead, but not
> scarthgap.
>=20
> I'm seeing scarthgap meta-mingw failures when running on Ubuntu 24.04
> workers.
>=20
> Can we backport to scarthgap too?

Done.

Cheers,

Richard

