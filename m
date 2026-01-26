Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 692F6D19502
	for <webhook@archiver.kernel.org>; Mon, 26 Jan 2026 16:14:08 +0000 (UTC)
Received: from fout-b6-smtp.messagingengine.com (fout-b6-smtp.messagingengine.com [202.12.124.149])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.24016.1769444041545210995
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jan 2026 08:14:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm1 header.b=CHi3zGfG;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=LuefjqNA;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.149, mailfrom: paul@pbarker.dev)
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id D79741D00044;
	Mon, 26 Jan 2026 11:14:00 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Mon, 26 Jan 2026 11:14:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1769444040; x=1769530440; bh=2IXtOUK3+S
	dnhJehinwsJ89qUOQZ+tBS4WlJQMVpDWg=; b=CHi3zGfGaW72O6KDXOkWXuYCxX
	+USFUhyCkRxRyDAFQQL/mqWf5tujOQmZ3pBTEbmbDuFvlq/d56BClfE5fpdIyuBo
	IEN7PT9nL5UEO+id/7nTiWPqGRoxRE+jmIgANicf8u4Ca4vJG3ALMXZgPIJFOcZV
	kcEarXouBFWfMpvaNEbkC/ZRp4irCP/gDSEYPjSot5QTskq0lT2ViGx/JDTGGOsI
	POZrWXqiq5kKtvYktb9J4Lvb2/zUrD4KqRx6EA3eRTy8ZUL9/szQaXhk2VOzzHwV
	Po7nvMQLDcAylucSWwBu7cKkxVUwRz6c+qOpME+mdvlTFY3zHkqC5NlNA3Tw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1769444040; x=1769530440; bh=2IXtOUK3+SdnhJehinwsJ89qUOQZ+tBS4Wl
	JQMVpDWg=; b=LuefjqNAK/okenCpwlL/wRv3y3RurQlO0YyWQPTjEnT0A+euDLa
	wmlFhhwKVQxXoZGCm/DN8kZnQTRUVDA0SfIjwXRHHmxpcjsRI3bG3SGEjkiB36wv
	OtjRxm9lTxlmJARQXUOU0pylrRjkYCcBukku0I3ERzE0YG0ywLO64cDk/zL/Zo1F
	j6w4IOzFyQaiWtHUxYbwa84l7U06bcjVxvkL0uIh5H3gFMakzJeIY5xaYlnJj7WB
	GjPP5U41jFOf2gfdx5Y1+4FMwXb4wEneWNgnF5XGu8a1Ng0MbkQx0cd3Nx0ZR94V
	zka4tYpWSKFcSw7aWJpRchA0pL+rptX8aaQ==
X-ME-Sender: <xms:yJJ3adzX5GYJSQOa-xVK0mnPtnRDgs1r89A5SrHZQLyhdEps5O65Fg>
    <xme:yJJ3aVAU-hgIzkcAaFYp29GElv7F9gIW7ZQtQ-ShpqAUP4lkvgiRGaU8qbP6FvWal
    ZLrRv26FLg8xFyOjaG2IU2J523QcV6U9ipquRdnxXQhHCJRg1SCo5yo>
X-ME-Received: <xmr:yJJ3aaYB3NR2rJF4IgQxYk9zwb1XUc3j50flOxcLBTCM-F_okd6poPOfT9cy68HLenEhJT3gW74DIgm2-UJXld6UMKzrgbkKcwW-xYCWIH9i>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduheekuddvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkuffhvfevffgjfhgtfgggsehgtderre
    dtreejnecuhfhrohhmpefrrghulhcuuegrrhhkvghruceophgruhhlsehpsggrrhhkvghr
    rdguvghvqeenucggtffrrghtthgvrhhnpeefueekjeffgefhhfevhedulefggefgueeffe
    fftdefveetgeevveeiieehheetgfenucffohhmrghinhephihotghtohhprhhojhgvtght
    rdhorhhgpdihohgtthhordhiohenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehprghulhesphgsrghrkhgvrhdruggvvhdpnhgspghrtghpthht
    ohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohephihotghtoheslhhishhtsh
    drhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohepphhokhihsghuihhluges
    hihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohepqhgrqdgsuhhilhguqdhnoh
    htihhfihgtrghtihhonheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-ME-Proxy: <xmx:yJJ3adhYwc6ZxnxWNgQwzbXZmDRhDAAtDa7mlncswshIJ9wH66VM5Q>
    <xmx:yJJ3ac7tF2OoNCRqV_CmYEmQozK6BWJs6rNqEmq0gd-WsJZXczlGTA>
    <xmx:yJJ3aU4V7vEjIDKPN5KmGIrO73rzKePRyQ1BdC2fv6t94Gj7g6R2YA>
    <xmx:yJJ3aQc0VZ_KXM_jKo0eFRn7mK-_LeKO5ooinwOMKWa7VyPmnInf6g>
    <xmx:yJJ3aTuBaslpEwlTMyL0UKjBW4cd4PnUoSLzixBIh2Jqww6-KH9OtONi>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 26 Jan 2026 11:13:59 -0500 (EST)
Message-ID: <5753105dea0bb33a0f8a69877d91febc5177c7d0.camel@pbarker.dev>
Subject: Re: [yocto] QA notification for completed autobuilder build
 (yocto-4.0.33.rc1)
From: Paul Barker <paul@pbarker.dev>
To: yocto@lists.yoctoproject.org, pokybuild@yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Date: Mon, 26 Jan 2026 16:13:53 +0000
In-Reply-To: <0101019bfaa3bbbf-b34fba64-04ee-4934-a304-87e95efabd1f-000000@us-west-2.amazonses.com>
References: 
	<0101019bfaa3bbbf-b34fba64-04ee-4934-a304-87e95efabd1f-000000@us-west-2.amazonses.com>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-sAPc7Rs5GaJvcGCRM0kb"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jan 2026 16:14:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66186


--=-sAPc7Rs5GaJvcGCRM0kb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2026-01-26 at 14:09 +0000, Pokybuild User via
lists.yoctoproject.org wrote:
> A build flagged for QA (yocto-4.0.33.rc1) was completed on the autobuilde=
r and is available at:
>=20
>=20
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.33.rc1
>=20
>=20
> Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/bu=
ilds/3123
>=20
> Build hash information:=20
>=20
> bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
> meta-agl: 12daee6a859f48d3d65545d4fe79849fc312fa21
> meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
> meta-aws: 9d6d61dc9a3d6186be0e2819a83f0fbd7a316536
> meta-clang: eafdaa3cda9000c6d9bd1819ffe1219c7b66e4b8
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: 8f5f5cf4b335a09313c48394c62bfb614868fc1e
> meta-qcom: 8d273808334daef5922000c8e0548b7ff2b3d72c
> meta-virtualization: c474ae21b11a816be607eb7b44d2cf77d1125bce
> meta-yocto: 677379f21941363d50f9d946963542b4ccb7e27c
> oecore: 036f76ea35c49a78d612093dcd8eb1fac7ded8d7
> poky: 5abd143cb526a99c8ea181c6f76d64ed9607dae9
> yocto-docs: 6799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9

We will rebuild as 4.0.33-rc2 so please do not run QA on this build.

Best regards,

--=20
Paul Barker


--=-sAPc7Rs5GaJvcGCRM0kb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaXeSwhEccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0bjC2AP9UnaIhyEwKB9lxheaSU0p22hJk7ReLE5KH
wUh8ZPi6ZQEAy8QxWbreDEKwbyPrqe76rw2w63kAS7IEFUonrb35awo=
=5mqr
-----END PGP SIGNATURE-----

--=-sAPc7Rs5GaJvcGCRM0kb--

