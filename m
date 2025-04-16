Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E26EDC369C2
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 10:14:33 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web11.15543.1744798467006110304
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 03:14:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=OtRikjxU;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: thomas.perrot@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id F388443981;
	Wed, 16 Apr 2025 10:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1744798465;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:mime-version:mime-version:content-type:content-type:autocrypt:autocrypt;
	bh=rLtpnAVizHkzShIr+Y8iXpGsFbimWh/JZdefIkzn6bQ=;
	b=OtRikjxU7FRknDff8qHzl6hQturND0lyksh0/x0khkN69B262MIvs+GdPRDcLtnw2qF1Uh
	Yr7iqKCl0QUAOga2/0HeWvwMKKGJctWDVGfp4LQpfzyBdq8Dzjkq5+4VXBnGai6Gi4D2L1
	wRj55z8Y4EgAVk38HnRpfKGmo2+kqmv0aI8V9+9DcbrtBkH643akU55oIoX2egs+hAQj4N
	Nc46SJ7bDurcpGRDfVvvD0psmQEw0k6zzC3w5gV/7T83y3Hh4GdAqXdDFUZEs4LWjJPzLU
	SbhO5HUHC4zk2tlV7sREBR/uNejUto+kP2sknALzeoSnspqRVFGaftOMDNSy8A==
Message-ID: <2e9cf6ffee73d3e37142c09a39b2f712bf29dc4d.camel@bootlin.com>
Subject: Reseive a HTTP Error 500 when send error report
From: Thomas Perrot <thomas.perrot@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: thomas.perrot@bootlin.com
Date: Wed, 16 Apr 2025 12:14:24 +0200
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
	protocol="application/pgp-signature"; boundary="=-JWLXl/5dJ7N7DEyfQECH"
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvdeiuddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurhepkffuhffvvefftggfggesghdtreertderjeenucfhrhhomhepvfhhohhmrghsucfrvghrrhhothcuoehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeehieegtdeuleekgfejhfejiefgteeukeegffeivdeuleffveegteeglefffeefgfenucffohhmrghinhepthgvrhhmsghinhdrtghomhdpsghoohhtlhhinhdrtghomhenucfkphepledtrdekledrudeifedruddvjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeeltddrkeelrdduieefrdduvdejpdhhvghloheplgduledvrdduieekrddtrddvgedtngdpmhgrihhlfhhrohhmpehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopedvpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomh
X-GND-Sasl: thomas.perrot@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 10:14:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65184


--=-JWLXl/5dJ7N7DEyfQECH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to share the results of my CI jobs, so I am trying to send
error reports using the send-error-report command, but they are
receiving an HTTP Error 500:
https://termbin.com/pq28

Could you please advise me on how to resolve this issue?

Kind regards,
Thomas Perrot

--=20
Thomas Perrot, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


--=-JWLXl/5dJ7N7DEyfQECH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEh0B3xqajCiMDqBIhn8ALBXH+Cu0FAmf/gwAACgkQn8ALBXH+
Cu2g2Av+LDmwN2jWbLQAzi1wTmFgIuNhmay6jXPL4hnEvwBBReti/OxOHbWCKBje
F4IfqZi1rcgIbVfR5gJcjcWQtNFZAC5TLlGr8CW+BRnPyw1wIhRXpd+1LdKExBsv
RbF5zl7/1bqOC/OTCsXzRKo5NF463M7a/Fj2hCOIILYK57v59kzVw4MuBcDkSHz4
MPJNyvvrSohew18/6Nir3b+J1rr33DatSI9IT8V5nXmydjTKJ8wE+oVm4frUgaPe
gQJest02qIy70YRqxRM+sHQVplGJWjP+KnLJE0yoLBkdeCSaCS5vFFu2iHBfKMEN
u0Vb0THYMEQhRrW3nfaJFHiaSRdbgSV9ziRLv2MZ6schrFE2A6p+LS3fyLsHEiFg
wLtoxVxMCKx7XTNANSXMMIodZRbFQf110mWyx7MUJCEOkPljkoIjUdqcsDPrBIa0
yRrS80DY9EtwfWSvvzK45HptswYCXGK5SkbH1cnDt+lQvUzaWJ53BGny8QeJO6p1
rkXY3WQv
=QhoS
-----END PGP SIGNATURE-----

--=-JWLXl/5dJ7N7DEyfQECH--

