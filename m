Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD713E92735
	for <webhook@archiver.kernel.org>; Thu,  5 Oct 2023 19:46:22 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.25392.1696535177768478805
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Oct 2023 12:46:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Y7Jp7F6y;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-31fa15f4cc6so1353127f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 12:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1696535176; x=1697139976; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pE+yV8iRAHg4dzvCRVIU2OBfBcgQyUdehfTURIOVXzI=;
        b=Y7Jp7F6yLIke9ErjiwkuaRoSPeyPv6mMYlYhBqa77/JVNhp74g2oQEQE+zSVA02ESL
         XTioLOyJoii62BtVq4l4TEkCNWv8sm0lhhTdPe1fJg8sWovLQmzMA3qUz//D0SGfcAAG
         qfeE976UX8AIFKRRNgfDTKPdFhQ+yXj7+vgGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696535176; x=1697139976;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pE+yV8iRAHg4dzvCRVIU2OBfBcgQyUdehfTURIOVXzI=;
        b=E/E585xtUV+T4weqBPKEA0aP2BLgK/JUsBwN8G4KnO6Nc8MeORdw0RtWW46ERIU2Ub
         ZpOqaIZn3ywchVs2aN+WzEw/nF8JwGMB3dshJ/f5TmP+HC/qZy37zpmFN3LDohOH3jzI
         SCl+GlMIkmPrPzH+AG8m1T6fdlX0O07MFGCOdPm5nBeJCv2aeQfUaVskCcf2Ct3f2Xid
         ryFeJCT43qffbJ0MHExpHPQerQ8ethFTF4kXIO3YBNLbyLCsGwDQO0JwLlEynKGIUpQ8
         KCXrL9CA8od3X5hwO1TUvVos/gclrHZUkeWiVX9oqTeghlv/iJ2IFgVUg9jPMbIdwq0R
         L5Cw==
X-Gm-Message-State: AOJu0YyVWFrS8RPRh49v+WxfBrQxz4bsClt8VdFOjWGa3YjPfNOf10Ou
	e63dX0jGr32fn74NdMPdx3oNJw==
X-Google-Smtp-Source: AGHT+IG0DEaCHwhA2WbTqEv155nn/OFEDQ7KVGt9NbPmPguguEKAHNVjmlfp1LoMnK/LOTLrZ/iZSQ==
X-Received: by 2002:adf:f084:0:b0:314:a3f:9c08 with SMTP id n4-20020adff084000000b003140a3f9c08mr5608382wro.39.1696535175964;
        Thu, 05 Oct 2023 12:46:15 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2964:cec5:fab8:2212? ([2001:8b0:aba:5f3c:2964:cec5:fab8:2212])
        by smtp.gmail.com with ESMTPSA id k15-20020a5d628f000000b003143c9beeaesm2477261wru.44.2023.10.05.12.46.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 12:46:15 -0700 (PDT)
Message-ID: <2842e2b8d1b51a7ffa06ca82423f32e425cdaafb.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] config.json: add
 reproducible-openembedded build
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Fabien Thomas <fabien.thomas@smile.fr>, yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Date: Thu, 05 Oct 2023 20:46:12 +0100
In-Reply-To: <178B43BD6DF66AF4.3256@lists.yoctoproject.org>
References: <20231002145446.3166108-1-fabien.thomas@smile.fr>
	 <178B43BD6DF66AF4.3256@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 19:46:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61250

On Thu, 2023-10-05 at 17:42 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> On Mon, 2023-10-02 at 16:54 +0200, Fabien Thomas wrote:
> > The purpose of this new builder is to report the reproducibility status
> > of all meta-openembedded recipes layer by layer. It use the same
> > reproducible selftest than OE-Core but setting only world as target,
> > and excluding all oecore and other openembedded layer recipes.
> > Also, the report output directory is split by layers.
> >=20
> > Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
> > Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> > ---
> >=20
> > Changes v1->v2 :
> > * Split builder into multiple steps, one for each openembedded layers.
> > * Split reports output in the same way, one for each layers.
> > * For each step, only to be tested layer and its dependancies are added=
.
> > * Every other layers than the one that is tested is excluded from world=
.
>=20
> Thanks, I've merged this with a tweak of "reproducible-meta-
> openembedded" -> "reproducible-meta-oe" just to keep things more
> readable in the UI.
>=20
> There is a test run queued here:
>=20
> https://autobuilder.yoctoproject.org/typhoon/#/buildrequests/454516?redir=
ect_to_build=3Dtrue
>=20
> but things are a bit busy atm on the autobuilder so it is queued.

That broke as did the second attempt. I've pushed controller side
tweaks and some tweaks to helper which means this is now running:

https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/3

Obviously there are still some failures but it is doing more this time
and a least running something in some steps.

Cheers,

Richard

