Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79ABEC369BD
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 12:17:54 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web11.17708.1744805869064296448
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 05:17:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=D0RISzMQ;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: thomas.perrot@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C45F2438F9;
	Wed, 16 Apr 2025 12:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1744805867;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=hIiJWgk4X1Sb4lotB+lSl9vU4SXmVaC9zdU5qNzFqcM=;
	b=D0RISzMQqARoqjl1aluPgFd4vd9mseAkHO9S/bkRSzrr7L2iPaEGTu+9VlSBwbOEa3ExT3
	XKRXZe7MaaYQd/V7KD53wF0rQmV/50T66Xn/Imx1bQK1SIND66uk1fUukKbCnscpGj7jR/
	cUbVrPnIsx2QFbQ4ThDHWjdqk2bgpoz7dOizbP+M/Iy7Dt4wYfrElMbcHpAya0y9XTZViM
	O4YpUX8EaCRmOigCzly5mmfpT9qYPxAHiAYcS/83it1HPT1VS/C4e4qaNebsDjApmRAi39
	YflOraAvpRhSgLSN22XbbAjYfOOIC11rCAVd8A5w2N2NHPgf7nITZAa4lTQStw==
Message-ID: <dd4b5f4a5bc39722beb94511511459c12cb29a0a.camel@bootlin.com>
Subject: Re: [yocto] Reseive a HTTP Error 500 when send error report
From: Thomas Perrot <thomas.perrot@bootlin.com>
To: Gyorgy Sarvari <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
Cc: thomas.perrot@bootlin.com
Date: Wed, 16 Apr 2025 14:17:45 +0200
In-Reply-To: <06bfb359-54ec-46fb-8ae5-5aa402ffcc4e@gmail.com>
References: <2e9cf6ffee73d3e37142c09a39b2f712bf29dc4d.camel@bootlin.com>
	 <06bfb359-54ec-46fb-8ae5-5aa402ffcc4e@gmail.com>
Autocrypt: addr=thomas.perrot@bootlin.com; prefer-encrypt=mutual;
 keydata=mQGNBF+/ZOUBDAC2DghCjZvmgYcve02OG7dGZ7Iy58uEwne3LB7w7nRwdAxKw7ZaiVqwY
 O+yNGVi+GVx7oA6Wn4pv46z+QDRLQiq6OseuXhkSGCg7U/yBCUq12B/GRGO1Qt2Qi1mJJT1s+1qZ5
 Gxv6Nypz9qKVn94GM2bR1hXBga0t87vBpebThOHmX5d/0dqIcVxRCM7onNb0dDyRoVgLS5rBhQzrL
 CMrJaCy39xZUy0J1SOlH4Mgk6EhJIPYY4wlzikGX6urg+Tc9EjGd78ry0e0p5U5qgjFR5QGJDy1Gn
 U3CfwbT9sowdCASDbQDUoltlv2iWJCLa0xl97KVchCa0pr7HKbFA3J5SLKqFYUBCkFL+5WudYlz2n
 XxiUgyviMQxyK+ij66kEi6/2zFDAecd43pHV7790ptqZBC3Jc67Emj7Vo3ShX6RXPPxxbeCTOF2uk
 I45aJ9XcVFH/MFE96NjXj8uahnIsiTPyuCUoJu8tj7TSQyue874qJqVQvqlFyt2aZYJZ8ruq8AEQE
 AAbQpVGhvbWFzIFBlcnJvdCA8dGhvbWFzLnBlcnJvdEBib290bGluLmNvbT6JAc4EEwEIADgCGwMF
 CwkIBwIGFQoJCAsCBBYCAwECHgECF4AWIQSHQHfGpqMKIwOoEiGfwAsFcf4K7QUCX79mdwAKCRCfw
 AsFcf4K7fhbC/wP0kSl6id2E/K3+UdXk6CLMVRbCFLCREzQs5WFpQ6l/I0WGOamhrOgegdszheiVF
 orlUP8d37XSpFAqydhKGaN78V5Dps0Wmwm4lIlS4MtQXJtSLUHXDJLIZLW0pw8tiPLKsd1o/yDkXE
 dnpsjJTRG6SdDSHnyOB2/gh4p+yTaLytFdARk/r4/P26+L+FiH0fFl+RnBt19LPklfKgeDc7GwIif
 ja+nIWpp3W23DAUuI6xduEut25Q89yu7Ci8CliLfAiLy9bIGjBQWU2Y+1/j/7KuPj6VbBsZWLTZY0
 hUmpJSTnWAqc9SMsNxo7NSQuddgviz5e2tqucaRqxP02FGzNa8U4NAKdWaXrlHG5Dglj9XH0DK+SH
 +c96qqFewYD8VPQ6XAGxQcXbrtJmiMor1R2DfziispLRvJcfYs8xqabbCtoS3ouXB9XRi8hn7A2kh
 ME1ryS+Oh63JshXHnw6bmjCpVd/p+fGLIGU6A47pJOpviKR4jEO84pl2ejtDZ3Tc=
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-awYkHSHLUPKnnBPAxRc6"
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvdeifeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurhepkffuhffvveffjghftggfggesghdtreertderjeenucfhrhhomhepvfhhohhmrghsucfrvghrrhhothcuoehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeffueegvddvjeegkeeggedvgeeltdegleeiledttdekjeevleektdfhffetgfefheenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhsrghrvhgrrhhirdhmvgdphihotghtohhprhhojhgvtghtrdhorhhgpdhvihgvfihsrdhphidpohhpvghnvghmsggvugguvggurdhorhhgpdhtvghrmhgsihhnrdgtohhmpdgsohhothhlihhnrdgtohhmnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopegludelvddrudeikedrtddrvdegtdgnpdhmrghilhhfrhhomhepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepfedprhgtphhtthhopehskhgrnhguihhgrhgruhhnsehgmhgrihhlrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrt
 ghpthhtohepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomh
X-GND-Sasl: thomas.perrot@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 12:17:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65187


--=-awYkHSHLUPKnnBPAxRc6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Gyorgi,

On Wed, 2025-04-16 at 13:22 +0200, Gyorgy Sarvari wrote:
> Rendering[1] the error message shows a bit more details. The error
> seems
> to come from here[2].
>=20
> 1. You could send a patch to fix the error (I think nowadays it
> should
> be "urllib.parse.unquote_plus"), and wait till it's deployed
>=20

I believe I could.

> 2. It's a guess: have you changed the "version" attribute of the
> send-error-script? The error indicates that the user agent is
> "send-error-report/0.4", which seems to trigger the outdated
> codepath,
> and the user-agent is composed using the version variable of this
> script, which is 0.3, in master-next too[3].

The user agent is 'send-error/report/0.4' because I applied the
following patch on top of the master branch to figure out the
error:https://lore.kernel.org/all/20250416100149.274800-1-thomas.perrot@boo=
tlin.com/

Kind regards,
Thomas Perrot

>=20
> [1]: https://sarvari.me/deleteme.html=C2=A0(temporary link)
>=20
> [2]:
> https://git.yoctoproject.org/error-report-web/tree/Post/views.py#n60
>=20
> [3]:
> https://git.openembedded.org/openembedded-core/tree/scripts/send-error-re=
port?h=3Dmaster-next#n25
>=20
> On 4/16/25 12:14, Thomas Perrot via lists.yoctoproject.org wrote:
> > Hello,
> >=20
> > I would like to share the results of my CI jobs, so I am trying to
> > send
> > error reports using the send-error-report command, but they are
> > receiving an HTTP Error 500:
> > https://termbin.com/pq28
> >=20
> > Could you please advise me on how to resolve this issue?
> >=20
> > Kind regards,
> > Thomas Perrot
> >=20
> >=20
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#65184):
> > https://lists.yoctoproject.org/g/yocto/message/65184
> > Mute This Topic:
> > https://lists.yoctoproject.org/mt/112292345/6084445
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe:
> > https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[skandigraun@gmail.co=
m
> > ]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >=20

--=20
Thomas Perrot, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


--=-awYkHSHLUPKnnBPAxRc6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEh0B3xqajCiMDqBIhn8ALBXH+Cu0FAmf/n+kACgkQn8ALBXH+
Cu0zbgv/X/w3+RW+aPd9nr5xghTSZUFMqNc79bQ7Fgv6UWE1RgDOzBBiDrnE/aOx
hANgTWgJtarxeREDlt1UPNE/bA84jOaYYn+WqhkkmzfuEl/boc0KL1KvUV9r3+jg
LQTGNjn8lPGYjP4W19wNyvWmHKwgOHKRO9MQHWsAzgLeqmozbK1kJqu+t9ypNS7D
tYOvdvcUitZNjQxwja9FGSlru+R8/iA9UrNzSNu00GfsHJ/873hcphVNXPmsYktq
XgwSnAuDA5WUbOwK5AxpO0c6b+b1K8cSHUV9/qQZtuRH+O1uLhnRm+bZn19e32sC
vj4BCotT4Ai6uH7pjU4oBJkqclC9pT5xhgeuGqInpAJaEjQpefG4WK2ZUQHl+izW
URCjW0hmX5DWVF2qYxjdW/5qDtcvBSAb48iiM1UVw+CeVWgB5aZN0knZo3ano95q
S/Mp14esF9PbJSc3hY3wKYKH71/n3B5iyaXZlIvV1PlFjkt1J6Nv5ZxDpRKn3whF
+XU+b9Pd
=zcX7
-----END PGP SIGNATURE-----

--=-awYkHSHLUPKnnBPAxRc6--

