Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8540BC4321E
	for <webhook@archiver.kernel.org>; Mon,  5 Dec 2022 11:04:24 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.12336.1670238254104967278
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Dec 2022 03:04:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GbLK1JOE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id h7so11980225wrs.6
        for <yocto@lists.yoctoproject.org>; Mon, 05 Dec 2022 03:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oER2/GYAioxUPRbxDcdJF8NQ0lgp+vZ3SYQOykZyR6w=;
        b=GbLK1JOE19yCqAimL3jJx8JV2cZOclE5Q+xEu9jkZzqCXNXoRqEzNQDuyonrFyNl8a
         qbQgcyZ22A+CT51YD3IzWw9vcvwj6PFj1S6CLmyWWDtxvVBjGRj3g+wUeYmx0Vutsjic
         K2GleNkuzmAA+HQ67cG/2EZArMzicbN0NaLTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oER2/GYAioxUPRbxDcdJF8NQ0lgp+vZ3SYQOykZyR6w=;
        b=5iUKnhoybHDyfNQe7tD4QS1mqBgaf+ZHfdW0bVJuxpjO/+fdBgyJro1sI256550Xh6
         M8OL3LwDx/u0IeXwlJqTfDCGSym76s0maJ2ZjUndgNeh8XxGXSCOjc0DDHqMJ+Q9iG6d
         c1ndEYtVBTq7Hn1nLmrZSlp1P+VjIYs756pu+hiTDy6P7CpmAd5/ntkjTqYij30iGheA
         tDY21a6iLH16nOiOzwuoBpOklVpu5WcvPmQ0iKTLOIF0nrg0rk53I7Xy22euRzyP0SkJ
         eaR6h/IApLBhiWth7S4H+4dUUy5kp1beLtE4Tkiw7gVifaZESEFYesPlTXKd7sSZ3FA4
         ipiw==
X-Gm-Message-State: ANoB5pnNvff6lcyeZBYhNlB8+6fT/CgpFs39gcI2/m2jHZaxXl+d3JwG
	YwHK/mfgV9xZD+1QKYqIrOAzMw==
X-Google-Smtp-Source: AA0mqf5axL19TSk5VgSc8v2p07K5qJ1Lw232QPmYa/JRZKqk8l3h7sPP45JluxRryTzhzF3DDa/QMw==
X-Received: by 2002:a05:6000:128f:b0:241:fea9:7307 with SMTP id f15-20020a056000128f00b00241fea97307mr31668211wrx.393.1670238252517;
        Mon, 05 Dec 2022 03:04:12 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:d7b7:8e1d:6b4f:ea31? ([2001:8b0:aba:5f3c:d7b7:8e1d:6b4f:ea31])
        by smtp.gmail.com with ESMTPSA id i1-20020adfaac1000000b002238ea5750csm17377019wrc.72.2022.12.05.03.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 03:04:11 -0800 (PST)
Message-ID: <a02da780e14fd8353c2b9d4dedabbf2dbcf971b6.camel@linuxfoundation.org>
Subject: Re: [yocto] [OE-core] [Openembedded-architecture] Y2038 proposal
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ola x Nilsson <ola.x.nilsson@axis.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Ross Burton
 <ross.burton@arm.com>, Lukasz Majewski <lukma@denx.de>, Alexander Kanavin
 <alex.kanavin@gmail.com>, Yocto-mailing-list
 <yocto@lists.yoctoproject.org>,  OE-core
 <openembedded-core@lists.openembedded.org>, 
 openembedded-architecture@lists.openembedded.org
Date: Mon, 05 Dec 2022 11:04:09 +0000
In-Reply-To: <jwqcz8y17xr.fsf@axis.com>
References: <0b6801d90409$885d6860$99183920$@gmail.com>
	 <CANNYZj8Y37+s6Jzo1XvX0uCYNFc=NqOH8PWrFSL9_=TOS2ja7Q@mail.gmail.com>
	 <bda7b996024942763ae9d03ea0b958c3a38b04c8.camel@linuxfoundation.org>
	 <20221130143604.5a6659dc@wsk>
	 <ad2adc6af5026edc201cd3ab3a7b1f129cfdbd57.camel@linuxfoundation.org>
	 <D8DC7E4C-58C5-4102-A5B0-20D95FC0C3A9@arm.com>
	 <Y4eLLpnUKLz+YiwM@mail.local>
	 <f63f222e6c7bd50f1b50ffb198c61864a67f9ef2.camel@linuxfoundation.org>
	 <jwqcz8y17xr.fsf@axis.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Dec 2022 11:04:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58726

On Mon, 2022-12-05 at 11:00 +0100, Ola x Nilsson wrote:
> On Wed, Nov 30 2022, Richard Purdie wrote:
>=20
> > On Wed, 2022-11-30 at 17:56 +0100, Alexandre Belloni wrote:
> > > On 30/11/2022 16:46:17+0000, Ross Burton wrote:
> > > > On 30 Nov 2022, at 14:20, Richard Purdie via
> > > > lists.yoctoproject.org
> > > > <richard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote=
:
> > > > > > > * Could we optionally disable some of the glibc 32 bit functi=
on calls
> > > > > > > to ensure they're not being used?=20
> > > > > >=20
> > > > > > Could you be more specific here? Would you like to disable some
> > > > > > syscalls?
> > > > >=20
> > > > > I'm meaning disabling the 32 bit glibc time functions.
> > > >=20
> > > > Some time ago I filed
> > > > https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6803 as Debian
> > > > has a nice sanity check where it warns if non-LFS glibc functions
> > > > are used.  I imagine the same logic could be used to check for 32-
> > > > bit time_t use.
> >=20
> > That sounds interesting and something we should probably look into for
> > both issues...
>=20
> I have a working sanity checker that checks for any glibc functions
> affected by -D_FILE_OFFSET_BITS=3D64 or -D_TIME_BITS=3D64.
> The INSANE_SKIP functionality needs some more polish but I'd be happy to
> contribute it.
>=20
> Some libraries use both 32 and 64 bit APIs to glibc and needs exceptions
> in the checker.
>=20
> I have not run any world builds with this checker, I've focused on the
> recipes we actually use so far so we could get to a testable system.  My
> biggest worry at the moment is rust, I know to little to know if it is
> an actual problem and how to fix it.
>=20
> I would like to be part of any "y2038 team" for Yocto.

That does sound useful, perhaps sharing it as an RFC patch might be a
good place to start? We might be able to run one of the autobuilder
world targets against it, see how it looks for our core recipes?

Cheers,

Richard




