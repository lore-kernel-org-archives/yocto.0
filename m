Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68547C83F1A
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 10:27:32 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.37246.1753093649330226174
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Jul 2025 03:27:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Bh4IYkRd;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-451d3f72391so41973175e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 03:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1753093647; x=1753698447; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2Vji5SL25iPLO7geX/pbl8TEW96W6ptKXSAHiUjAaDs=;
        b=Bh4IYkRdn4ej2caQjjs7VEHFQi3BIfaqpREgjq9n7H9TV+/SdeAdxXWUfhiVYAggyU
         nufSYOcw+ZtAP2ANGr51agcEtD1Ego5Hh1C1odcFGiV0oxBXj8DxOBDNbbsHOFU3Sdbn
         LpHnO7g8lgth4ZFAZDIkHcU42UFjdx7oaC4Eg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753093647; x=1753698447;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Vji5SL25iPLO7geX/pbl8TEW96W6ptKXSAHiUjAaDs=;
        b=NLPH3RHpDb++N3h9R2jviKes/N0iz6qrWeXDsLl1ihVKVylPllIhvW0CgwKgMC82ID
         yKRJseRQLIPh2YJcRtuxXUE9z69RYmlwRZEDFDAEi+EY/oDh8Gy71G//crVewLJhMUeb
         C16fBDgna8f0b6M8PkqUQVpxxt3ACMGfn8Q78OKaDbwkbJH79db3MKHE9KhS1SdCNE5Y
         DlM30Y8UOOVXyY0sEDf3NfFpb5uGnSU+5rSJyoHQrtA+b/IAvdaSKPktVi2W1hDL86H3
         ZKUjtdUq91k4kGMD7VJRBKxTlYjNsspyGfIDFAfLGtREzcRu89hovZlGskxVlD/RL4TV
         GyXA==
X-Forwarded-Encrypted: i=1; AJvYcCVEqhvubDLo0hEhAri/Ix6NCYHkFY1cx9iqguG5t25g+Iho8TUN9QyJ97fSEUtpo4Bpglowfw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxEVW52FSuSlHKFE84z8EVEswURQy9z12O+OP7GApbwFQTGdE8N
	IGpyGz0WHfkpFIdK69sZcovX/5h4v6KPzIvgApXnFBgGzLrtUVUad2Qe2fTkYbXVMIM=
X-Gm-Gg: ASbGncsTOn/Xnd9flVdQAll7+QKxKZdiEXIY8o91JzLcgNF2VXvFK3NgXHHOFnMSgxc
	DqzEZ5OLpCOzamu1Nh80m8DZuEY2PHgu2Y+amGhWTWmtmMTX4S11DRWSQmlUwefY4GOEJoff5tA
	iZiGOMKYTU9/LOVYkBw6Hy2xq7jsfGkKufKx53nm04m1OSr5Zq+kvxZXBOq0LrFdkxZAXuiaboZ
	xRbRAcoypCo5n0QWEkZINmw0lkZYNykDilZNycf2n2+O+qgyfru+gq6L314mtACnDQI5CH0a/hL
	HlC6FvtF6T9+uflhDY0/0cIh/JlBrNjccBOwg91nNAjw8giVeXvTcNThZbPoYpGUY+gPkb94gFY
	O+yNKIK38kwtPhowsEj+K/3Zo71n0WQ+COwnTJXSXeAeEGUJCX/yItkanCC4fDQdpDvm0Rp42/+
	cwunj1cnXpi0c=
X-Google-Smtp-Source: AGHT+IF03vy6/pYwY5jMIPF8HdgQ3Eda1GK0yLtQi83aZik3TADiuvlo4s5v3oSIUoHpeMvHF0g41w==
X-Received: by 2002:a05:600c:3496:b0:456:1b8b:b8c6 with SMTP id 5b1f17b1804b1-4562edaa066mr188791965e9.14.1753093647100;
        Mon, 21 Jul 2025 03:27:27 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:3115:2e86:f442:218d? ([2001:8b0:aba:5f3c:3115:2e86:f442:218d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48991sm9995559f8f.44.2025.07.21.03.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 03:27:26 -0700 (PDT)
Message-ID: <c5c7b6cb0ede0893d9c760ebeaaef042c248fcc1.camel@linuxfoundation.org>
Subject: Re: [OE-core] Yocto Project Status 1 July. 2025 (WW26)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Cc: ",openembedded-core@lists.openembedded.org"
	 <openembedded-core@lists.openembedded.org>
Date: Mon, 21 Jul 2025 11:27:25 +0100
In-Reply-To: <CANNYZj9R79Um9BvKmZmOrCZLnVaDk3cfO1KHM8bu54mu3F-68Q@mail.gmail.com>
References: 
	<CAK5yBb_mX+D24LjOozpm=m_Y=5AhHSX=5OtNdbNHWg99mcuFNw@mail.gmail.com>
	 <CANNYZj9R79Um9BvKmZmOrCZLnVaDk3cfO1KHM8bu54mu3F-68Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 10:27:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65687

On Mon, 2025-07-07 at 09:02 +0200, Alexander Kanavin wrote:
> On Tue, 1 Jul 2025 at 16:44, Stephen Jolley via lists.openembedded.org
> <sjolley.yp.pm=3Dgmail.com@lists.openembedded.org> wrote:
> > For M2, the following changes have been mentioned as possibilities:
> >=20
> > bitbake-setup
>=20
> This was discussed on the call; the next step would be to start using
> it on the autobuilder. That would significantly boost the credibility
> of the project, and validate it in a real, mission-critical setting :)
>=20
> Before that can happen, the tool still needs additional functionality:
>=20
> - nested bitbake configurations, that would be an equivalent of
> 'templates' in autobuilder's config.json. E.g. a top level base config
> that sets autobuilder-specific fragments for all builds, then an
> intemediate config that sets what images and other targets get build,
> then final configs that set target machines.

I've been looking into this a bit more. I don't think we need to
replace the template functionality in the autobuilder, at least not at
this time. What we need to do is just switch over to using bitbake-
setup to setup poky instead of needing the combo-layer derived repo.

> - ability to override git repo locations/revisions from the command
> line. E.g. the config file sets master branches for all repos, but one
> wants to build master-next.

There are two pieces to this. One is being able to select/override the
repo/branch/revision as you mention. Another key piece is being able to
point at a local cache of repositories. The tool may handle the latter,
I'm just struggling to page in the context.

> - ability to select a subset of bitbake configurations for
> initialization/update. An autobuilder config would specify dozens of
> configurations, but any particular worker machine would only work on
> one of them. There is no need to initialize every bitbake config, and
> it would only add delays and clutter.

When I did try the tool, I was a bit surprised to see the multiple
build directories being created. This also won't scale well.

I suspect the more user friendly workflow is going to be to create a
single build directory and then point the user at the configurations
available, i.e. the features (which include the machine/distro
selection).

This is going to be the part of the workflow which is going to make or
break the tool and it isn't quite right yet. We have all the underlying
pieces now, we just need to expose it to the user in the right way. As
it stands, it isn't feeling quite right yet.

> Once all of this in place, config.json could be gradually transitioned
> to defer to bitbake-setup:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "qemux86-64" : {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "BBSET=
UP" : "qemux86-64",
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 },
>=20
> and the code would run that with appropriate build-specific
> parameters.

Or perhaps this just becomes a list of features...

>  Config.json also has custom local.conf tweaks all over the
> place which would need to be reviewed and converted to fragments.
> There's also nomenclature for targets
> (BBTARGETS/SANITYTARGETS/EXTRACMDS), multi-step builds, and possibly
> other things I haven't yet stumbled into, and that all needs to be
> carried over to bitbake-setup without loss of functionality.

I'm less worried about these pieces, they key piece is whether we still
need combo-layer.

Cheers,

Richard

