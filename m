Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1483EE91298
	for <webhook@archiver.kernel.org>; Thu,  5 Feb 2026 08:56:00 +0000 (UTC)
Received: from fhigh-b7-smtp.messagingengine.com (fhigh-b7-smtp.messagingengine.com [202.12.124.158])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.16518.1770281749254216389
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Feb 2026 00:55:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm1 header.b=F+TYiZ6z;
 dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=bcmh4Eq9;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.158, mailfrom: paul@pbarker.dev)
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id F28B97A0185;
	Thu,  5 Feb 2026 03:55:47 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Thu, 05 Feb 2026 03:55:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1770281747; x=1770368147; bh=Kt4qUgNkQT
	Oh4U6a+cuOeTf/8BctVzBF54lymyxALgc=; b=F+TYiZ6zPX2rOu2lWXePIAjxug
	kfbj2x0k60URy+fK2x3N10vWhznmI4pjjBHsjCTryffFOe6PszlOm6Pa2qRVXnrP
	oBCA2tABDMxTTau82WJmNyTTInfnc/oDW0iwiQ3pAgTb5FvAM8bDEwDppXTXCC8k
	uh27//TgG5K5PmD4zzFrIII7Y+lQr7XvwKN7TYguZQAX2NYGiMW9ChkbokrPGOYA
	tRzezn6HSRDmeL0j6xzqSbaSDmDb7QNaukrydneHpubIzHdnHJg8CLcBW6KzZqIQ
	1QP30yWfGcIAsINVXiMhtxhmDUBO79/TtZ2SBSYSOLBYS9PVR6hDkvqO/UlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1770281747; x=1770368147; bh=Kt4qUgNkQTOh4U6a+cuOeTf/8BctVzBF54l
	ymyxALgc=; b=bcmh4Eq9uvXS4c6BqcyrbDeeGHz4qe/azLhONb6Q0tNg+K/2PVx
	a86VTnziNbOUIbf9bWbd3lywM6ebW3Gnsw9AE66R1g5M5U2gkqGN8nNhSfcBIok9
	01neLp4YrljM/IE8I/a9j/grC+3qSaZrIFmrdKUM6E74yLWyILB16iwJwz+23gUW
	QyqzBt+lXnHiVdY4yNkoKc3hYopDW/8KrRlV1vl9ic5PEM8JYyI4GeAsuLtyJmf5
	jUkV1xLB/YX6hVnh/8WhMb74MHeufGsk+E5afABFS4L0eixRJFgJJw1P+CNI61uw
	mDKl3WYC9QhutNNrMoQZxqyLepWwSMpP+2A==
X-ME-Sender: <xms:E1uEaUF0HA_UCkqDpENQG17SI4iM_tHQrS8k4OczNMnMBpYiLqFJyw>
    <xme:E1uEaVFpRnLlMsKGZ1514llfx2MU7xc-FYOrgzvdIGv7fMjq8IX3DyxeUjbuSOs0-
    he_5eWjS5s9Z39GBwwEQqYSnblfTQtEldn6WqLnLg_pruDxa1JAcbw>
X-ME-Received: <xmr:E1uEaRMZp6mOYhDDUIrj1LW0pNR-TV4VMCxNIlpE_2yGhDWmDQVaPp4KZCB5GcWdlLCfkuEbepuqeGZMI3ZRRCFpLJjB1jLGRmwdll5j94Rb>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukeegkeejucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkuffhvfffjghftggfggesghdtreertd
    erjeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdr
    uggvvheqnecuggftrfgrthhtvghrnhepffdukeevjeeufedvfefhgeeihfduhffgtedugf
    eludehkeegheeludethfehhedtnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdr
    ohhrghdphihotghtohdrihhonecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepphgruhhlsehpsggrrhhkvghrrdguvghvpdhnsggprhgtphhtthho
    peefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopeihohgtthhosehlihhsthhsrd
    ihohgtthhophhrohhjvggtthdrohhrghdprhgtphhtthhopeihohgrnhhnrdgtohhnghgr
    lhesshhmihhlvgdrfhhrpdhrtghpthhtohepqhgrqdgsuhhilhguqdhnohhtihhfihgtrg
    htihhonheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-ME-Proxy: <xmx:E1uEaUFAwv5kWkMm2GLKT7nYGEmofpMk_QwPug8vR9URoieL0Ywqng>
    <xmx:E1uEaYPLLgZHR-h_vvH_3f8rMhY1P4Iy1d1HIdiSXG_IUB4IGjtAcw>
    <xmx:E1uEaV8Zt0Y9IBIkAL8FODjKTItDoOjy9kURgLXObh-lnv28CsA-BA>
    <xmx:E1uEaUQ1P9Cqw5Qo-Rf3UOWl1DOKfFrjORwogIBDQpa8q3IPFoXwmw>
    <xmx:E1uEaf8Au41O8OUVVp9NOxZItgqXdyKZsxRG_gYCSMRaIDU6swi_lhhO>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 5 Feb 2026 03:55:46 -0500 (EST)
Message-ID: <ec43c686704e782d8fa438f593f2736d553b4990.camel@pbarker.dev>
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.0.33.rc3)
From: Paul Barker <paul@pbarker.dev>
To: yocto@lists.yoctoproject.org, yoann.congal@smile.fr, 
	qa-build-notification@lists.yoctoproject.org
Date: Thu, 05 Feb 2026 08:55:40 +0000
In-Reply-To: <CAMSfU+6mKdZKowho6Oj+QPMK31yK7xSPFE8RWLgH+7+QZ2FJBw@mail.gmail.com>
References: 
	<0101019bfd297f46-e2a1665f-20ce-4d02-971b-927affd30204-000000@us-west-2.amazonses.com>
	 <CAMSfU+6mKdZKowho6Oj+QPMK31yK7xSPFE8RWLgH+7+QZ2FJBw@mail.gmail.com>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-TGbAZrfK4yjoz4ehVR3b"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Feb 2026 08:56:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66223


--=-TGbAZrfK4yjoz4ehVR3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2026-01-27 at 10:10 +0100, Yoann Congal via
lists.yoctoproject.org wrote:
> Le mar. 27 janv. 2026 =C3=A0 02:55, Pokybuild User via lists.yoctoproject=
.org
> <pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> a =C3=A9crit :
>=20
> >=20
> > A build flagged for QA (yocto-4.0.33.rc3) was completed on the autobuil=
der
> > and is available at:
> >=20
> >=20
> >     https://valkyrie.yocto.io/pub/releases/yocto-4.0.33.rc3
> >=20
> >=20
> > Build URL:
> > https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3125
> >=20
> > Build hash information:
> >=20
> > bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
> > meta-agl: 12daee6a859f48d3d65545d4fe79849fc312fa21
> > meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
> > meta-aws: 18a067493e82243b061c52a167c463df9298a392
> > meta-clang: eafdaa3cda9000c6d9bd1819ffe1219c7b66e4b8
> > meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> > meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
> > meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> > meta-openembedded: 8f5f5cf4b335a09313c48394c62bfb614868fc1e
> > meta-qcom: 8d273808334daef5922000c8e0548b7ff2b3d72c
> > meta-virtualization: c474ae21b11a816be607eb7b44d2cf77d1125bce
> > meta-yocto: 677379f21941363d50f9d946963542b4ccb7e27c
> > oecore: 036f76ea35c49a78d612093dcd8eb1fac7ded8d7
> > poky: ff118ede826a9ae45eb35025a5f7f612880fba01
> > yocto-docs: 6799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9
> >=20
>=20
> This was an "all green" build, so OK to proceed with QA.
> Also, I have checked that each repo is on the right commit (kirkstone
> branch) and that poky is coherent with the other repos.

QA team,

Now that 6.0 M1 is out of QA, please proceed with QA for this build when
you are able to.

Many thanks!

--=20
Paul Barker


--=-TGbAZrfK4yjoz4ehVR3b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaYRbDBEccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0bmFaAP4wSUCk+PQJmjcQiBEaqiYJTw2+kR27uJBR
cSm8/V6sLQD+MGUXhb9dUXb9j1ptp1Hm2H2NeAEvLkbXv6IDk0ER7AU=
=pGnR
-----END PGP SIGNATURE-----

--=-TGbAZrfK4yjoz4ehVR3b--

