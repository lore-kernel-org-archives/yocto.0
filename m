Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68A4F34C4C
	for <webhook@archiver.kernel.org>; Mon, 13 Apr 2026 12:19:00 +0000 (UTC)
Received: from fout-a2-smtp.messagingengine.com (fout-a2-smtp.messagingengine.com [103.168.172.145])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.270248.1776082730804115304
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2026 05:18:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=q2zc9fyw;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=Itw5oqIJ;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.145, mailfrom: paul@pbarker.dev)
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfout.phl.internal (Postfix) with ESMTP id E3E14EC0436;
	Mon, 13 Apr 2026 08:18:49 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Mon, 13 Apr 2026 08:18:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1776082729; x=1776169129; bh=Zpr6L2pLh7
	5lItF5azkbzKQ8WZVNMblmaey+WAp0+RA=; b=q2zc9fywvaaw6HIWVj4z+MA8A9
	6Swa9ndeNw2IbIDmxwRFEfeJmp1j1YxzCz5j68k65+FeBV7ZGpCaUjPi5KdagNNa
	Fx+PjxhrzIRNw8wf0H9mF8VCS8Luud8j7MbM8iarawAqMsOY0JsQJrWWht3gKEfC
	CNMV7+qNXnKQacoZvnzNS3fmg8d3aLuftLmnUPaGUktKYvnVbLA9Zs7Oj0+H/jZF
	+2PlPRdJ/Ffssq30yz6MHQpreWD2qW/ge0m9BBt7aORqYn55w223i5LBY41Tftne
	PJsl/cU96+4EWXhsbLHNPWDuaFbEnsnPCN1xHCAwW4Nsb+tE1HluC6fKxkbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1776082729; x=1776169129; bh=Zpr6L2pLh75lItF5azkbzKQ8WZVNMblmaey
	+WAp0+RA=; b=Itw5oqIJCGTLTxORIIOkh3AmTEoL0RjAXTlnTPYVcGkiDl0n6Dq
	WDf1U/mcrXYXHuAbcLZNnxoOa2s7pTve6UhQF2QuZEZYbLOTuT4xMfP7p6UGuXnm
	Iy09raj5/Iav6OjI+hVcOZsR2iTxNgc0t/wLxYmq5poaElZgoREGRClyIbiso4Cg
	zEH3RsudgCotNNCpfPz6/L+Ti1A+U+f/FuacAhetHcASXUSO5pN1/EwjYDRRt9aZ
	WsZPuEf6HbxLrlrONyCVtZsE6yPER5I6Wtq74DN+hUPwWL7hWufuvTjr1uTGTGs5
	+flHusyI1mgPiIEqEwcz102RcAtSTti/tew==
X-ME-Sender: <xms:Kd_cafdenIqy81MSpXQVNPrnMAvtfqXNUP7KPEEgJ_D3L6Sb8gIhHA>
    <xme:Kd_caTBnuhgAp-EQ-3iYHo1M2YWSqF9lzOxFcX-uQ-8DU-bvTGUXohiEfAz6HoKNu
    R8s4LC44YSTt7mRKPP2OiCkDGIOfbuZQuMELe48i9sDStBQl1vHYp0>
X-ME-Received: <xmr:Kd_caS9FlG0dH65BoPfgO5-Q-S_EY9LsKioQgOWYy8fE97Uugt8BWbQtUnp80w1y85m7OkTGBdM2gQ3xdX-UkFhjeQ-95kFl1y2lMPM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdefkedvudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkffuhffvveffjghftggfggesghdtreertd
    erjeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdr
    uggvvheqnecuggftrfgrthhtvghrnhepfeeukeejffeghffhveehudelgfeggfeufeefff
    dtfeevteegveevieeiheehtefgnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdr
    ohhrghdphihotghtohdrihhonecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepphgruhhlsehpsggrrhhkvghrrdguvghvpdhnsggprhgtphhtthho
    peegpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopeguvggsrghlrdhghhhoshhhse
    hinhhtvghlrdgtohhmpdhrtghpthhtohepqhgrqdgsuhhilhguqdhnohhtihhfihgtrght
    ihhonheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohephi
    hotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohep
    hihorghnnhdrtghonhhgrghlsehsmhhilhgvrdhfrh
X-ME-Proxy: <xmx:Kd_caeL8M7aoTjhYcXNv2R9csC3EnjbkZUfplMhzSHaHMDHBxEoIgw>
    <xmx:Kd_cabjLmO3yGawbpTCf5URBz8k0EDXfZfyicRReMXOEtLaVcG1oNA>
    <xmx:Kd_cae7z4unc7EevmJTNQBegJlHKx1jn9MxjovR4TLXY18WiMDnJfQ>
    <xmx:Kd_caTZDRGN45ToBH1KXXBHfMn8IQHhdeb3wNsAzu-RmW0OnNpK6Xw>
    <xmx:Kd_cafv13osVyGl4Rsmr-NgqMZBRdXDtv3S7dxGOKoZ8NpjeYsP9elYT>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Apr 2026 08:18:48 -0400 (EDT)
Message-ID: <aef6ae9103b5a4ee85381fbaba4fab7e129bb4c6.camel@pbarker.dev>
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.0.35.rc1)
From: Paul Barker <paul@pbarker.dev>
To: debal.ghosh@intel.com, qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org, yoann.congal@smile.fr
Date: Mon, 13 Apr 2026 13:18:42 +0100
In-Reply-To: <DHPSKCPED9UI.2AFCAORVY8PDM@smile.fr>
References: 
	<0101019d78e44a99-02fb8520-6c59-48c1-9ac3-64e44075a988-000000@us-west-2.amazonses.com>
	 <DHPSKCPED9UI.2AFCAORVY8PDM@smile.fr>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-PclmrB8Xe9bmvT/6RvL9"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 12:19:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66408


--=-PclmrB8Xe9bmvT/6RvL9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2026-04-10 at 23:27 +0200, Yoann Congal via
lists.yoctoproject.org wrote:
> On Fri Apr 10, 2026 at 9:35 PM CEST, Pokybuild User via lists.yoctoprojec=
t.org wrote:
> >=20
> > A build flagged for QA (yocto-4.0.35.rc1) was completed on the autobuil=
der and is available at:
> >=20
> >=20
> >     https://valkyrie.yocto.io/pub/releases/yocto-4.0.35.rc1
> >=20
> >=20
> > Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/=
builds/3640
> >=20
> > Build hash information:=20
> >=20
> > bitbake: 7fd0197fd5fedd23cc885b5e7e816d86a392fdf9
> > meta-agl: 439cd92bd4588916aa45de78fe25a8bfddc7c82b
> > meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
> > meta-aws: cad7fdcf046a935d1eb641b254e4d05d16d51f1e
> > meta-clang: eafdaa3cda9000c6d9bd1819ffe1219c7b66e4b8
> > meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> > meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
> > meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> > meta-openembedded: 9d8ef26a9693e2c70ae34abe1a753873d42ec588
> > meta-qcom: 8d273808334daef5922000c8e0548b7ff2b3d72c
> > meta-virtualization: 92b6abcdfb6f12c4931247f0f29aaf5331984525
> > meta-yocto: 34e3c9a19b8b955116109a2e9528966db3fced37
> > oecore: 51259c7e933a2ac8ebc01604d6e65607b76b7b56
> > poky: 93431249a6260da7bd29ee3ca32145d89e5b8259
> > yocto-docs: ce6734c68649739c635675a133fa77edb9865028
>=20
> This was an "all green" build, so OK to proceed with QA.

Hi Debel,

QA for 6.0 M3 is the current priority, please queue this one for QA after 6=
.0 M3.

Thanks,

--=20
Paul Barker


--=-PclmrB8Xe9bmvT/6RvL9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCadzfIhEccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0bgxCAQDigzL9MMlj3pbNsXl7v9qOLqGWKHNoXF7+
3OLO7xoBBgD/d9bSbZsRNNzYbjrov+G5stuV/CroB1Zi/weoXC4wKQU=
=U8wf
-----END PGP SIGNATURE-----

--=-PclmrB8Xe9bmvT/6RvL9--

