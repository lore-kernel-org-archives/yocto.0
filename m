Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91266C021A4
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 10:03:20 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.7653.1739440995278998921
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2025 02:03:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XijP2wJn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43948021a45so7022215e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 02:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1739440994; x=1740045794; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hoRuUprfz2D1HHrtX9IhqBPe9nGWzjv8+jFKK8iR01M=;
        b=XijP2wJnC8yB2gvC+6+QfEkHoOF11m66Sq8oQOReV1Tnaa8HxAAlcm2I7YI+fi2LQh
         QiYdY8BxybS5ycMnzZ7c5A9AQfW+k9dwDHmMuQQ9aKXjP/IABcrCdJhlRkpc7H5WLaYr
         4PIO/4XQTGx5uJ7e+7idztxMS0ca3BAbmbWJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739440994; x=1740045794;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hoRuUprfz2D1HHrtX9IhqBPe9nGWzjv8+jFKK8iR01M=;
        b=NNCaV2LhaQvmCFmxu0h/qBa0UQ1faoEL3Sov8Z4nBMQT24LT7hIu0ImoujyP8Cjgrf
         iebtjayREuRANfIrVwoEost+jzyfd5s+A1N1xOUdC4YfUW+g+5A5ibUodZ8WZlUB7RiS
         xpjnpBnW7/tVj2/sS1vjwO9G5MoaSofwRCsphyenwgcZCsRGVSD6YkbdRfhDg0qxLSiA
         t7PiROfttcYK8335tQOxHC0bWzC6EdnXLnzeTnfDFpU2k0QzYggGJWResaSkKhAd+WMh
         5I99sZgstltmLekM8G91rY+XKRFFXY7uikrS4+ht292et/hFVW+SukYoTvVNbbEiiZuj
         UoEw==
X-Gm-Message-State: AOJu0YwOhebk585Fvy3QX3o/63Cv0oCIPyId3nXREUhHV5hord3TqPTf
	DH6kQ1ASApdnhS5O2RxXak28ReNgNZM4pHeIn1C3LDjZELYh8c2d/L4eGClVjXo=
X-Gm-Gg: ASbGncuAfUHbgYq2LYvV2Utgh6+RGTj1FL0FbS6Eb4p/FM0zFPmUI8aSYtyHUdPpsoh
	M0YY3ABhoRx9sfOai0uP5x3FuT/5KZ1fFvh4FE8w0n033VoPhM0a2EYgj9xpzwdkw+gA1nPx6Qe
	iVW7i4HOdnItv2kqwaEaHYRIYlyXDirNGRw47MK3CRImwSKZq0xhjLYOiSN3jC2m7fZKmRi27UK
	F+SWbX6j0ekf7AvqL5aXdkd3zs+1safpVj7/sq+A+GZDOi0XLwAgueIfWTDygFybS07eQyCMIA7
	UhPSOw3f8yH7bUBJy3ntmeXMUur/Yraeax6LqzW3z4S9Su6rCjKDraRWqAZ0eeeCzNDDqem9au1
	zXH5q
X-Google-Smtp-Source: AGHT+IHqfseME10E4fKUPdXjXASUmImsRU4p6LFe/FKAQLpWn/6OOi2G5yl3kZJz0MKgx9794cMC2g==
X-Received: by 2002:a05:600c:1e19:b0:439:63de:3611 with SMTP id 5b1f17b1804b1-43963de3706mr9924515e9.24.1739440993650;
        Thu, 13 Feb 2025 02:03:13 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:62a1:585d:a736:8828? ([2001:8b0:aba:5f3c:62a1:585d:a736:8828])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a1b84bcsm45442175e9.40.2025.02.13.02.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 02:03:12 -0800 (PST)
Message-ID: <14a350e52c4e567fa995b08978b418fe1e43831e.camel@linuxfoundation.org>
Subject: Re: [yocto] [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Yoann Congal
	 <yoann.congal@smile.fr>
Cc: Yocto Mailing list <yocto@lists.yoctoproject.org>, 
 ",openembedded-core@lists.openembedded.org"
	 <openembedded-core@lists.openembedded.org>
Date: Thu, 13 Feb 2025 10:03:12 +0000
In-Reply-To: <CANNYZj_8qPoOjhR=uR_7WRZu0V0YdhbcN43fA6mbnQBU5198fw@mail.gmail.com>
References: 
	<CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
	 <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
	 <d22a4cec5e317e62f1f44d8d9a810cf4745ccb48.camel@linuxfoundation.org>
	 <CAMSfU+6d7gvYkjC5sbUPu6D_hOOF43ZUnM_NMEwmLUxZn6ysSA@mail.gmail.com>
	 <4e883a56eb9b74a5663d7ad258194d16b1c79912.camel@linuxfoundation.org>
	 <CAMSfU+44qwScnoDP4As37TNHYvwx5mBmTdGEQgq_VVz7woh6sQ@mail.gmail.com>
	 <CAMSfU+4MY-JVmWPUixJYiUrtKd2CXHrJuQ0sMJJrrkLzrvAuvA@mail.gmail.com>
	 <CANNYZj_8o=SHOn-kRBxzwc8vp3omCL290SA-jKkL_En1m2SWEA@mail.gmail.com>
	 <2c1bcbb1d5b75b925d9af2bd300d376a973e314e.camel@linuxfoundation.org>
	 <CANNYZj88RSkyChK6NwJU2OVxmGXzD2W8UcGyYe92ii8v8hdFqQ@mail.gmail.com>
	 <CAMSfU+5Af0=w0N_kK1HLx4nNnQqGOv54C2qC-e7Q0Lm5NQ0Vrw@mail.gmail.com>
	 <CANNYZj_8qPoOjhR=uR_7WRZu0V0YdhbcN43fA6mbnQBU5198fw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 10:03:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64796

On Thu, 2025-02-13 at 10:54 +0100, Alexander Kanavin wrote:
> On Thu, 13 Feb 2025 at 10:53, Yoann Congal <yoann.congal@smile.fr> wrote:
> > > > I don't think the github repo is going to work for either YP or OE
> > > > since there are repositories in both that use pull requests and we
> > > > can't have a one size fits all message. I think that means we would
> > > > have to do this with a .github directory in the repos themselves.
>=20
> > That would mean to create a ".github/" directory in those. Are we ready=
=C2=A0
> > to do this?
>=20
> I think so. RP pretty much confirmed this just above?

I said that it was probably the only viable way we've seen so far. I'm
not happy at the idea. I've not said "yes we should" as yet.

I'm wondering if we should set up that default repo saying "no pull
requests" then ask repos that do accept them to override the message
with their own pull request file? The default repo is only used as a
fallback. Does an empty file do the right thing just to remove the
default message?

Cheers,

Richard





