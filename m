Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B78D6B6A5
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 16:03:39 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.18904.1730304210722924242
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 09:03:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aZRZbwc1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4314c4cb752so65106435e9.2
        for <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 09:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1730304209; x=1730909009; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hyvrzi74zrwWqm9aTSldsSmm1IQzgvZgCegztGwP1ao=;
        b=aZRZbwc1hrl2mcu3jd0cFCf4jr0TQfxKAQOF+lEIz5iYp0aNdOa8eNZaLzqtekk4zX
         KUM1ofH3dieU0Jun9Yu3nOtgiphIaKekExo5/th6AT6hgA5IyLtvCqpXlr99m9WOiiwk
         JBjEroOgY4ZON8rliWc+X31LYY1rI+zrvmrdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730304209; x=1730909009;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hyvrzi74zrwWqm9aTSldsSmm1IQzgvZgCegztGwP1ao=;
        b=pEOBObnc2xYEE108xLNL9itekM6jKEKYXbW/QZO9Jt3u3egsA1Y/7tn9c7RYiPcgdA
         Z4ZB+jYjxBiDvKORi+aMeA/unkn3zx95jjN+o7l8T/xRaV/5KxHmviUrq7ga+vvehygc
         NUKrYWTRFyQMcBk2j7M75j3Q1zhfBrtm4rYOoXUz9s6AUZyzXvAaPtpYec14QFYq9iAG
         13UAbJ0bp4tmzTmKkqSYauGYabFKnr/0KZBp3oy4ZTYbp33CX1JMJZAP4fuvIglIkmGY
         yYP+jmMGACQDh2GaKsG3X3jOK9oN8rPxcInX5dLGdTPy1DMFwGudsM+WtWxjXLEGG56R
         BI9g==
X-Gm-Message-State: AOJu0YyCF6q5spNUFwe4lf7CK3erww+BAe/d9o7t5ed34BDKXdA7eOOg
	ScsETc/Q/mixi9NulaW1di49LCY0qMcoS9hDQsd6ydukZfa2MbKpuxZPv5D8DTU=
X-Google-Smtp-Source: AGHT+IGdK/HgXI4xkrJ5grNY9HSOpuDOP0GhhyVM/S26DiKrLHW3SpH/jd/HMD0k2Xix7X9RJt830g==
X-Received: by 2002:a05:6000:1569:b0:37d:3777:2ac6 with SMTP id ffacd0b85a97d-381be7d9781mr86391f8f.35.1730304208645;
        Wed, 30 Oct 2024 09:03:28 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:65f1:8463:55dd:142d? ([2001:8b0:aba:5f3c:65f1:8463:55dd:142d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b1333bsm15630842f8f.14.2024.10.30.09.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 09:03:28 -0700 (PDT)
Message-ID: <344f79e8e7093309dad81c72f4be7dc2d42a6161.camel@linuxfoundation.org>
Subject: Re: [yocto][meta-mingw][PATCH] oeqa: Set LANG in wine tests
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Watt <jpewhacker@gmail.com>, Steve Sakoman <steve@sakoman.com>
Cc: yocto@lists.yoctoproject.org
Date: Wed, 30 Oct 2024 16:03:27 +0000
In-Reply-To: <CAJdd5GZMVzeiuu55cmXXsAHvARvfTs_mOn9iv8UQEe+_kmwbUQ@mail.gmail.com>
References: <20241002225451.263086-1-JPEWhacker@gmail.com>
	 <CAOSpxdZSCzmXMJ-R2Xri8OcQw4Q38b6nkbH-F83sUO9vVgkMJw@mail.gmail.com>
	 <CAJdd5GZMVzeiuu55cmXXsAHvARvfTs_mOn9iv8UQEe+_kmwbUQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 16:03:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64188

On Wed, 2024-10-30 at 10:02 -0600, Joshua Watt wrote:
> On Wed, Oct 30, 2024 at 9:18=E2=80=AFAM Steve Sakoman <steve@sakoman.com>
> wrote:
> >=20
> > Would it be possible to cherry-pick this commit to the styhead
> > branch?
> > =C2=A0I'm seeing the same issue there.
>=20
> Yes, that would be a good idea. It's based on the build host, not
> wine
> or Yocto, so I suspect we would see it on any branch using that host.
>=20
> Pretty sure it will cherry-pick cleanly, do you want me to send a
> patch?

I've sorted it, thanks.

Cheers,

Richard

