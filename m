Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E784C4708A
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 16:59:35 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.17077.1669827572332517371
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 08:59:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IhkHaJJM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id bs21so28099875wrb.4
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 08:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Culf9xscbpvyQSESVnUty7QyqetkbIWAZYF9lA7ER5c=;
        b=IhkHaJJM8WzQ+KGC8fJ9716YXOXHsIC07zLjng0dCrQMLNZfEsalZNFpTLbwpFUVf1
         x/4N2TyJ5hfWSZol6FbNA1FbiakMMaKR1kRQKYoQNKsYvHbrxxueOYWefHoAD2G7kd3M
         3A/cF+42gKjv0uf5V4Uv8EOkVNuS41mdXsVok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Culf9xscbpvyQSESVnUty7QyqetkbIWAZYF9lA7ER5c=;
        b=fDUoXPT26DVtSYsK3qefm4ij709oRVLPTCdA018AK1bE0K+EXZibh+ZNsFvrdtcieR
         BkrdROrjzAXTg/O190FBM6IW8x30yshbXUPMSeX9Z1dqAevFIQ0midhILkQTiNfM8fhB
         R3zS8UMDU/CdQbB4CdWzvMF/DrFKinr0z3Z2P2wVDCgk2qiCTIdDv82j8ccnIcR1E8Qc
         szB/KjHFFKFesy9rlxAMKsrOUNx44hbc6Th8cLxhBb5Jo+BU6WF7OIINn/v/GjldLZvI
         /UzbsJFrk3SApOV5p+D0C3J8N7RNa0+IArx0r4yjTz4x2ONgcNyyiqzy873cpMxBuEXe
         /TFA==
X-Gm-Message-State: ANoB5pkWHsCtz+eWU9sNOnTORANkVVsesaVEdomQy4L8ObYmyvsTjbMY
	J7V/54FxQCwOeJ5YXGY0inNCXg==
X-Google-Smtp-Source: AA0mqf7pH9TUYs5pvwTXiqEzqI58qgBOXqVHvbMt+JWkhZonUO78lySzJkDRyPLzFmMjev+Pn7w+cQ==
X-Received: by 2002:adf:9d90:0:b0:242:6db:cfa5 with SMTP id p16-20020adf9d90000000b0024206dbcfa5mr16986071wre.258.1669827570614;
        Wed, 30 Nov 2022 08:59:30 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:d673:1517:32d1:98? ([2001:8b0:aba:5f3c:d673:1517:32d1:98])
        by smtp.gmail.com with ESMTPSA id n19-20020a05600c305300b003cf6a55d8e8sm2389995wmh.7.2022.11.30.08.59.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 08:59:30 -0800 (PST)
Message-ID: <f63f222e6c7bd50f1b50ffb198c61864a67f9ef2.camel@linuxfoundation.org>
Subject: Re: [yocto] [OE-core] [Openembedded-architecture] Y2038 proposal
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Ross Burton
	 <ross.burton@arm.com>
Cc: Lukasz Majewski <lukma@denx.de>, Alexander Kanavin
 <alex.kanavin@gmail.com>,  openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>, Yocto-mailing-list
 <yocto@lists.yoctoproject.org>,  OE-core
 <openembedded-core@lists.openembedded.org>
Date: Wed, 30 Nov 2022 16:59:28 +0000
In-Reply-To: <Y4eLLpnUKLz+YiwM@mail.local>
References: <0b6801d90409$885d6860$99183920$@gmail.com>
	 <CANNYZj8Y37+s6Jzo1XvX0uCYNFc=NqOH8PWrFSL9_=TOS2ja7Q@mail.gmail.com>
	 <bda7b996024942763ae9d03ea0b958c3a38b04c8.camel@linuxfoundation.org>
	 <20221130143604.5a6659dc@wsk>
	 <ad2adc6af5026edc201cd3ab3a7b1f129cfdbd57.camel@linuxfoundation.org>
	 <D8DC7E4C-58C5-4102-A5B0-20D95FC0C3A9@arm.com>
	 <Y4eLLpnUKLz+YiwM@mail.local>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 16:59:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58684

On Wed, 2022-11-30 at 17:56 +0100, Alexandre Belloni wrote:
> On 30/11/2022 16:46:17+0000, Ross Burton wrote:
> > On 30 Nov 2022, at 14:20, Richard Purdie via lists.yoctoproject.org <ri=
chard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:
> > > > > * Could we optionally disable some of the glibc 32 bit function c=
alls
> > > > > to ensure they're not being used?=20
> > > >=20
> > > > Could you be more specific here? Would you like to disable some
> > > > syscalls?
> > >=20
> > > I'm meaning disabling the 32 bit glibc time functions.
> >=20
> > Some time ago I filed
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6803 as Debian
> > has a nice sanity check where it warns if non-LFS glibc functions
> > are used.  I imagine the same logic could be used to check for 32-
> > bit time_t use.

That sounds interesting and something we should probably look into for
both issues...

> >=20
>=20
> We can simply disable COMPAT_32BIT_TIME in the kernel config.

That would cause runtime issues but not build time linking ones?

Cheers,

Richard





