Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC9FC021A0
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 23:36:42 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.2908.1739316995279767039
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 15:36:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fK1Yghn7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43946b5920cso17863185e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 15:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1739316994; x=1739921794; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GF0sKmP/wtuokfZyO2H5xYougf0mU30pN13yB3YvReI=;
        b=fK1Yghn7DryutPUpzW0GKG9KRyB0TJws0T8EHBkyIQi6C7Wvx/BVx0KBryL93k2jfY
         dRU30bxC4IEjyXCB5WW8WGHlPn+ijm4MyZzOE93Z1XmDHFCvYbJpeiRcoBj/gAO8+JF4
         6LfMDkkc0biWptrJwYuwOpzFE4d7IdY+VTbOM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739316994; x=1739921794;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GF0sKmP/wtuokfZyO2H5xYougf0mU30pN13yB3YvReI=;
        b=hB31WRmjb73JFKjOrTwUgLlhJqGIE7STlsK9K0gKKt31tsx4TkupiK2omrkzCbC+cg
         B5jCpAiACMFanIr4JMBEeruIeORiQCJuZLjAkLQewOh+uWt+XIIEvwZaMBm8PMhK/jsI
         G0o8fBrixDsuYPtMb/09/l8h5Ry1MIo3p1xn4fHAB58sClv62qnfxUKECdBxy68gOmxI
         pDHdmWCU/pzayA+8zEFDHalFTwHw8iM8z0Y42YclmlsCEDI86pZaYz4gSpgzSdslvqjE
         +RTs/Hs8JKzCDIuv/EfrFbs9tCwZCw/2SfXg21DAvb2U/+XaEe8j/RYLesvMyBZAsAAI
         BF2g==
X-Forwarded-Encrypted: i=1; AJvYcCVl72BSYoWX+0N4fW4yGR6RR/MV7cVE91C5mwZP3AY+S48JB4UEUDgx8BC7VJDbkDDC687K+g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxOmjAKSRbwGoJvGSEWNSr67TSsh8RGo0MmmEabEGXjRpuz7e9y
	e+NtTca7B5iTfSjab0ue0eZbnoH6pQ3jHCBbkpNiQB486g/T4k2PC+OONUQl8Zk=
X-Gm-Gg: ASbGnctt62VQPFwL9AKTkqgzoJGHWu26P63OTjGNXlfiGnPG/jHGkjMh9mYFLJsxNFo
	THtoMYL7L66lvATEUDsejJmrnIWtJBJvidvm6og2ayuKKGC6sVlw2Izbigd9QGkxo8kIYYnx0yc
	qhtJpjmxxSpN0h1oCYCY5HbHp0bkz2D3FacpzmXmhfS7KIix5Jj2Z0oypzJuIp7luz3ZPyzgiWg
	WOBvk6LQ01jB4AM5qlkAKTyMwAG2xou4seBojF4Pxjb3YrZpfRcXMxUhDQjtt0F2H3VoauMt6SJ
	MQwTxuzOZ4ifV0m9XAUSt7o/BL+FPycX74kgOHTr9d/Gx6ttGQtNIu7jkVVkrr4892YWysqhJKE
	d+26V
X-Google-Smtp-Source: AGHT+IGR5nX0IkDo2XcVJDLNimW9BMsYhoMJIZwoAjcHqlOxrZ5P4SfHGVv36INdfKeXHKcBlbT3Wg==
X-Received: by 2002:a05:600c:1d01:b0:434:a923:9310 with SMTP id 5b1f17b1804b1-43958188e7bmr9682345e9.15.1739316993627;
        Tue, 11 Feb 2025 15:36:33 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:679f:b1ce:de17:3648? ([2001:8b0:aba:5f3c:679f:b1ce:de17:3648])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a06b879sm2339865e9.23.2025.02.11.15.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 15:36:31 -0800 (PST)
Message-ID: <d22a4cec5e317e62f1f44d8d9a810cf4745ccb48.camel@linuxfoundation.org>
Subject: Re: [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alex.kanavin@gmail.com, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: ",openembedded-core@lists.openembedded.org"
	 <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Date: Tue, 11 Feb 2025 23:36:31 +0000
In-Reply-To: <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
References: 
	<CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
	 <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 23:36:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64775

On Tue, 2025-02-11 at 19:42 +0100, Alexander Kanavin via lists.openembedded=
.org wrote:
> On Tue, 11 Feb 2025 at 16:57, Stephen Jolley via
> lists.openembedded.org
> <sjolley.yp.pm=3Dgmail.com@lists.openembedded.org> wrote:
> > We=E2=80=99d like to request help to process the open github pull reque=
sts for openembedded-core and bitbake:
> >=20
> > https://github.com/openembedded/openembedded-core/pulls
> >=20
> > https://github.com/openembedded/bitbake/pulls
> >=20
> > Having these open doesn=E2=80=99t look good for the projects and we can=
=E2=80=99t disable them, some have been open for a long time. We did alread=
y clean up the poky pull requests.
>=20
> I'm sorry but I have to say a couple of unpleasant things. Here goes.
>=20
> The only processing I would be willing to do is mass-closing these
> pull requests with a polite note to submit them according to the
> official process. Otherwise this tacitly admits github as a valid way
> to contribute, and we're not ready for that, and possible will never
> be.

There are potentially useful bug reports and fixes buried in there and
I am reluctant to turn people away so I'd prefer to not mass close.

> While we're at it, how were these repositories created in the first
> place, and what was the plan for the pull requests they would attract?
> Should we delete these repositories now?

The repositories were added to try and share bandwidth costs, give
people easier mirrors and various other justifications. I warned
strongly about the pull request problems at the time, I was told it
would get handled and people would help and I was over reacting. Some
of the people who made those offers aren't active with the project any
more, other things just drifted with time. At one point I ended up
having to add those mirrors to my own push scripts and maintain them
because nobody else was willing and we had complaints they were not up
to date.

You used to be able to disable pull requests for six month periods, it
looks like you can no longer do that and it was a pain having to try
and remember anyway.

The bandwidth/mirror/backup benefits are valid and I'd be reluctant to
delete them as some people can only discover things through github too.
Google indexing doesn't work well with our own server.

So I guess I made my own peace with their existence. I know touching
them will make it look more like a condoned submission method but I
really don't see many good options here. Removing them is a simple easy
option but life sometimes isn't easy/simple.

Cheers,

Richard

