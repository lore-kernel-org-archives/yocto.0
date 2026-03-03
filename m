Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A20FE67A62
	for <webhook@archiver.kernel.org>; Tue,  3 Mar 2026 14:54:49 +0000 (UTC)
Received: from fout-a8-smtp.messagingengine.com (fout-a8-smtp.messagingengine.com [103.168.172.151])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.20207.1772549685347885916
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2026 06:54:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm2 header.b=hSBjsvHo;
 dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=zCdWe177;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.151, mailfrom: paul@pbarker.dev)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id 6A378EC04C7;
	Tue,  3 Mar 2026 09:54:44 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Tue, 03 Mar 2026 09:54:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1772549684; x=1772636084; bh=Pz3xUf6n/2
	oyoPtO4tXpZ1UZeb4YImIU/w1ESLj3YE4=; b=hSBjsvHojGgHZ5lX9yw/I+uDbI
	MWO7wBu4xRtMPfS2E2+jQSokyqrh39ub0SjPF/mn0MGleS/GGBTNaJRJRhcRSJQU
	Wl1Az6Tll6f3zxfVCHgulzI6q2P2ZfrgF4wW07qOsLkMpAHTjyKxMMmgES2HpoGT
	u3y0zNNInZsh2FymoeJ9PtsXV74GDfAlBo+gkOxKXt3KPQ8LwOMPdeZxEwZR/MW9
	dSkQneC4tmK7chS/W4qhvHYeYO7P0Qqkb8k/k+pMy91kGWz4P1bF9L8uAqzuY1IZ
	h+fALWNjNa6Rcc1373bjhhxoABOS5GH2IqUwEqDTAksSsDdQuP/vvecu6A2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1772549684; x=1772636084; bh=Pz3xUf6n/2oyoPtO4tXpZ1UZeb4YImIU/w1
	ESLj3YE4=; b=zCdWe177jJwpmlAOP/KnHRvABuQgJGyLCD1n3KLTyntJ2p/9qrq
	aI6s3wtdPcxl6ar8R0NjRv+CgPnMRV1LWoC1h7NnqlwzqzSrVWCKGusQ+vJmqva/
	SOeLseNLuUYBmcR847E9K+NyNUfnlXsgYgVWaO2Y4G6MJAoGIyfGSJ/+lXnHtMSd
	yvFjyP/w8NC2+sASSvl1YMQuRsOhRYTXBwmah7wBgDsIuvf1ATSRTTfaeJcj+WkD
	WdhTel8JuODo7H+lQpfqH129zJtP+6Fwu0sHeoYGBBBrzqdDOj8h3EhnOLtggELk
	TSaflqALItC9xmtdqimEOPD6FPwlXSoJYYg==
X-ME-Sender: <xms:NPamaRAmvAvMjDxNAuRiKLF9ECmARh7Peumr-bDBnrFYMdFKicLl9A>
    <xme:NPamaYfuCgTcxIA71jncgOH_O_hpgKVIPign9JgdbrGWikpI8xDFOIXeTkRxu5WIa
    BwZ179gDTSKzYnO5W4oilR4f5BKICsgQs7obs1Ospgn4-lygg9vzwyy>
X-ME-Received: <xmr:NPamaYIhotekLZuJXzmM53moo5HFmNpETOvT083HI-ZvL9rd4qLegitTknA2swH3E9Plq7Sz1NpsBh-2d9V0gPQYy7q9JyV-xt_gz8g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddviedtkeehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepkffuhffvveffjghftggfggesghdtreertderjeenucfhrhhomheprfgruhhluceu
    rghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdruggvvheqnecuggftrfgrthhtvghrnh
    epfeeukeejffeghffhveehudelgfeggfeufeefffdtfeevteegveevieeiheehtefgnecu
    ffhomhgrihhnpeihohgtthhophhrohhjvggtthdrohhrghdphihotghtohdrihhonecuve
    hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphgruhhlsehp
    sggrrhhkvghrrdguvghvpdhnsggprhgtphhtthhopeehpdhmohguvgepshhmthhpohhuth
    dprhgtphhtthhopeguvggsrghlrdhghhhoshhhsehinhhtvghlrdgtohhmpdhrtghpthht
    ohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpth
    htoheprhhitghhrghrugdrphhurhguihgvsehlihhnuhigfhhouhhnuggrthhiohhnrdho
    rhhgpdhrtghpthhtohepqhgrqdgsuhhilhguqdhnohhtihhfihgtrghtihhonheslhhish
    htshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohepthhstgeslhhishht
    shdrhihotghtohhprhhojhgvtghtrdhorhhg
X-ME-Proxy: <xmx:NPamab1RbBHzmzWRB1SIewMoDVYq7ujmzx6aUwy6IA5fb6ijiuK5-g>
    <xmx:NPamaSj2jUV5wZnFG-gnqCyehd7JGkev-m6MMZjaiQ_liKFDTXtY4w>
    <xmx:NPamacUuZ6mKJEwyLgt67SIdrx8OvWHgPes6dQHYg5RmRGOXBhpdHA>
    <xmx:NPamaRW3BS9sDa6Uai2AX4b4-JZchRdMoZpVqYSBjjZYmHY8WqeGOg>
    <xmx:NPamaUlE-4wQ5sXp9t7KLnCchGiY6pltMGMnhGhIhJ6NObw5-6eEjxNf>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 3 Mar 2026 09:54:43 -0500 (EST)
Message-ID: <7290c6b8e404189f6865ab2288b5d534d1475227.camel@pbarker.dev>
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0_M2.rc3)
From: Paul Barker <paul@pbarker.dev>
To: Debal Ghosh <debal.ghosh@intel.com>
Cc: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org, 
	qa-build-notification@lists.yoctoproject.org, Yocto TSC
	 <tsc@lists.yoctoproject.org>
Date: Tue, 03 Mar 2026 14:54:36 +0000
In-Reply-To: <55ddd958fb39e440b7a45cd9c18aa175c3e893c6.camel@linuxfoundation.org>
References: 
	<0101019cae57f45a-ae8dfaae-ad81-4664-9a28-1121fc1fbcf0-000000@us-west-2.amazonses.com>
	 <55ddd958fb39e440b7a45cd9c18aa175c3e893c6.camel@linuxfoundation.org>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-z+8XYiKGmMmSzXHbX/up"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2026 14:54:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66297


--=-z+8XYiKGmMmSzXHbX/up
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2026-03-02 at 15:19 +0000, Richard Purdie via
lists.yoctoproject.org wrote:
> On Mon, 2026-03-02 at 11:38 +0000, Pokybuild User via lists.yoctoproject.=
org wrote:
> >=20
> > =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-6.0_M2.rc3) was comple=
ted on the autobuilder and is available at:
> >=20
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pu=
b/releases/yocto-6.0_M2.rc3
> >=20
> >=20
> > =C2=A0=C2=A0=C2=A0 Build URL: https://autobuilder.yoctoproject.org/valk=
yrie/#/builders/29/builds/3316
> >=20
> > =C2=A0=C2=A0=C2=A0 Build hash information:=20
> >=20
> > =C2=A0=C2=A0=C2=A0 bitbake: bc8be83aef0a6de85cd33a6f132f281d518594f7
> > meta-agl: c1761e898d7fca3d8438e9b010eaf234f94fa407
> > meta-arm: b00fe8862bc31cd4b6f0299b6a2edb244f19487a
> > meta-aws: b570577bf3ae3752e27bac15faf8733e45a01360
> > meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
> > meta-intel: b6c23896d3eee0f925cbe189ff1e67b3c4953353
> > meta-mingw: 11666fce6a3cc98bcff6fe2c6bdd9e48faf03767
> > meta-openembedded: 6ba45c1f94e1c2015df940ec9efcd4568346df56
> > meta-qcom: 1a7b6b0363fa75232d46ffb9fd706b9539872e10
> > meta-virtualization: 506d5af230f0b41809dfe754e84d5611b75c6585
> > meta-yocto: f3b63d0d6882af61020bd6f7150fae68a0322f63
> > oecore: be8cdcf13a658e9e81ff2f7b71d1c8c37a920ce7
> > yocto-docs: d97cfeaa55ed42722998d3313c1857aa377f6881

Hi Debal,

The TSC discussed 6.0 M2 yesterday and are happy that Richard's concerns
below should not block QA or release of this milestone.

Please prioritise 6.0 M2 for QA, ahead of 5.3.2 and 4.0.34 if possible.
Please give us revised ETA dates for those two releases if you're able
to test 6.0 M2 first.

>=20
> There were two error issues with this build:
>=20
> a) A ruby reproducibility issue in the docs package. There is a patch
> on the mailing list. A v1 of a patch was merged instead of a v2.
>=20
> b) A failure with the regression report generation due to confusion
> about tags.
>=20
> As well as some warnings:
>=20
> a) python3 ptest failure on qemuarm64
>=20
> b) Warning about duplicate includes from meta-agl-core
>=20
> c) warning about fedora-43 not being a supported host (patch now merged
> to fix)
>=20
>=20
> Since two issues have fixes ready or merged, one is easily fixed, and
> the python3 ptest issue is known, that leaves the regression report
> issue. That will need more investigation/work but I don't believe any
> of these should further block M2 from entering QA.
>=20
> Cheers,
>=20
> Richard

Best regards,

--=20
Paul Barker


--=-z+8XYiKGmMmSzXHbX/up
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaab2LREccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0bqDpAPwPEd9lnlbFEgyN3GKaO+1TxOgShJcDBIJ/
IJ9T0JN+GQD/TIfJtkaTpPtGNdwSHlSg2lJzX/Q9VXmmCA+jFjk5Pgg=
=Bimk
-----END PGP SIGNATURE-----

--=-z+8XYiKGmMmSzXHbX/up--

