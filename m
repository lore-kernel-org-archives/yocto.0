Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DAAF34C50
	for <webhook@archiver.kernel.org>; Mon, 13 Apr 2026 12:41:20 +0000 (UTC)
Received: from fout-a2-smtp.messagingengine.com (fout-a2-smtp.messagingengine.com [103.168.172.145])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.270748.1776084072700742545
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2026 05:41:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=bCkhJsLd;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=Zca6qORT;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.145, mailfrom: paul@pbarker.dev)
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfout.phl.internal (Postfix) with ESMTP id DE5A4EC04B4;
	Mon, 13 Apr 2026 08:41:11 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Mon, 13 Apr 2026 08:41:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1776084071; x=1776170471; bh=A8Hn+f5xfR
	Ca+upLOrAJePvZ7/fA/1t5C1VvWgP3UEY=; b=bCkhJsLdeDqki4xIApyR1ljK72
	LNLncyDQeiemkRb1dn3/oUoVdk0fbYTiy8MWy313J8VlfXnV18ew0hz1NMNazIHY
	ovowbbQP2M6jIx3r4asjm9r2R63OrD512+JglwCJhhcvyATQ/Gh/JiKhaKzbo6Uw
	cVVTF8z+02lckkWLjWITcFK51npFprxiJradTzDHgKS136xAB2GsREg1rWfRhR+z
	OTgSRq/mnC8nVTRZQGIH/JRsVNvJ4IGKEpD5Lps8WxmgVeTgveTl0j8MhUj+e1tM
	m4ziyafw4T5N5szb2SOvhpkWsVHvbWuCyfuBxmnXMfVOoTEMsr7yu4n00ZJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1776084071; x=1776170471; bh=A8Hn+f5xfRCa+upLOrAJePvZ7/fA/1t5C1V
	vWgP3UEY=; b=Zca6qORTwAfapVW2FmNfabjee5VFO+BZ9NP9/RNuJvzL00Wxce7
	Nk2i/4Ng4GvV/3VP8c4Pd3PMV3HE1ZPfuMONZ4xPjOg6jPPq6V4j8LcFSdRIDWyx
	SVtL9xdiYFcUljX4SAmrBgGJekOkU8ctRmQklLiGCDYbIX5qjc1FkuREC13AOwck
	EOB3prejT7YT3gqK2xm5rENgnX1gbXa7oOtFGGrTxo94BFDsIdT3kneICxBmi4mR
	ysVmqJXRGsmT07C5wjfpKxUiByybacgWxm+Yp3UKY40mkaZlTum1rcRiZ+c2yPVZ
	ds9bE9sCwREJvyKts38oG9n10EUz1TxV6RQ==
X-ME-Sender: <xms:Z-TcabU1m5IzsEa_FTS45lwtifZHCAVwYrCzsjUCzOttRfLD5D0rwQ>
    <xme:Z-Tcaak8Ybq0ZPkqmShq_OFWEaVaZTEhiNaZslSPbqdEg6aq0-G9edjYn5L7lEDL8
    WAImFSLHXieghppOqnYOGhSHAAgYEz97-tGSZricaXcpQuibZpPvm0>
X-ME-Received: <xmr:Z-Tcaca3nJ_zkdSo93jSge2eOaXVnqPJ6mgTUk71HtgjbuKZuuDTolTsxzUj30VsOy6LkZfZUF3ZxIbkqbFVvP1cociaZJjhR5NhuPM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdefkedviecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkffuhffvveffjghftggfggesghdtreertd
    erjeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdr
    uggvvheqnecuggftrfgrthhtvghrnhepjedufedvhfehvedtudelvdeljeeiheeiveffle
    ehffeftdfguddvveejkeehfffhnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdr
    ohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hprghulhesphgsrghrkhgvrhdruggvvhdpnhgspghrtghpthhtohepgedpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojh
    gvtghtrdhorhhgpdhrtghpthhtohepfidrvghgohhrohhvsehphhihthgvtgdruggvpdhr
    tghpthhtohepjhgvshhtvghrsehthhgvhihotghtohhjvghsthgvrhdrihhnfhhopdhrtg
    hpthhtohepshhnvghhrgguhhgrrhefleesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:Z-TcaVMxfrpDVQa4LfHsYpO5QcLV_n5omUUfpofmc9O8Licfe-9VSg>
    <xmx:Z-TcaRbI0OcCYuOFBe2QxXAXiBJWZMJMoR_YJsmNBOY52EsIFQ6hGQ>
    <xmx:Z-TcaT1Dhx55QJVF2ZxQN3wRLsLbMMWtIwE7LSSZf7OjR5FRltknxg>
    <xmx:Z-TcaXeCJ_CgB-XAaUR6XCWGcIUufVW8LxbcaA1xSiLznV4rRwHYUg>
    <xmx:Z-TcaUX1tiuz5jZfdVeLtnoMbkVNFQpwIQr8Q9tFbumapEYbdHvY2ZE_>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Apr 2026 08:41:10 -0400 (EDT)
Message-ID: <fa029428b6be98b012452b79889f640b61d4fc7f.camel@pbarker.dev>
Subject: Re: [yocto] Fetch Issue
From: Paul Barker <paul@pbarker.dev>
To: yocto@lists.yoctoproject.org, w.egorov@phytec.de, Josef Holzmayr
	 <jester@theyoctojester.info>
Cc: snehadhar39@gmail.com
Date: Mon, 13 Apr 2026 13:41:07 +0100
In-Reply-To: <aa0f7c10-5f37-41a5-a1cc-ef1d6a364f19@phytec.de>
References: <6KwS.1775631328520262279.RWyv@lists.yoctoproject.org>
	 <CAEt6Nwo_d+6yCCJgrWFuGviSkPXFr82GZ5dtwQDK5=7m2CHmFA@mail.gmail.com>
	 <d060ac53-8cda-4014-9158-c68d87a7bad7@phytec.de>
	 <CAEt6Nwp5RVA8RuXNq-HqgG8vaZMmOwJuqWgnU1shiaN61tHeOg@mail.gmail.com>
	 <aa0f7c10-5f37-41a5-a1cc-ef1d6a364f19@phytec.de>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-RLBsPllczg5xH32Za4tK"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 12:41:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66410


--=-RLBsPllczg5xH32Za4tK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2026-04-13 at 15:24 +0300, Wadim Egorov via
lists.yoctoproject.org wrote:
>=20
> On 4/13/26 12:33 PM, Josef Holzmayr wrote:
> > Hi @Wadim,
> >=20
> > well, next time we plan to adapt on minutes notice at 3AM to a
> > bandwitdh attack, we will announce it. Big promise!
>=20
> IMO its important to communicate such things more transparently and not w=
aiting for the first report.
> Please just take my comment as a suggestion for improvement for future ch=
anges of a similar nature.

This was communicated to the yocto-infrastructure list [1]. We probably
need to Cc a more widely subscribed list in the future if something is
likely to affect a lot of users. I'll pass that message on.

[1]: https://lists.yoctoproject.org/g/yocto-infrastructure/message/227

Best regards,

--=20
Paul Barker


--=-RLBsPllczg5xH32Za4tK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCadzkYxEccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0bgQYAP9KNkwxhFciZSIKTpYVEqY5vcGWh4ms1FRQ
IfW+qDhxwwD/ZTECpyRBQVyMIngZ4uRWLs0G5L8px4+TjBRO5VT4Mwo=
=59RY
-----END PGP SIGNATURE-----

--=-RLBsPllczg5xH32Za4tK--

