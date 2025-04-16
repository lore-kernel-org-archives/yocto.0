Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB363C369C2
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 13:30:44 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.19626.1744810243008254930
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 06:30:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=XTL3tF8S;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: thomas.perrot@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id EE5E01FCEC;
	Wed, 16 Apr 2025 13:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1744810241;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=q419BdVvnFQbwxz+x269gDRmNtYNuGfyBAMnE71Di2g=;
	b=XTL3tF8SdapwvdHTdvp6mPLuWSj9xO2HckNi5FkoEvOAOx8dN9PNBb3wvMul6k5sa9b5Ri
	UIqHy2FiPm9306h9e0/xwBuYRRvJyJEX0piQ/OSbtlp+rQvyg5CEU1RnlBL28JrYz42+yu
	5eN/e+8+E/86t8uE/9dp9gE0OiNdIXU5rghCaoOrq6o+pvawsX/106Sn3yWlqtSBZxmhfd
	QGsnXENRn6rP8MupnEQM24kAeenRCrKZwlMpveCHy0DbvmezwbQBibNysVEOs5FnmOI4dr
	yxPO7iwyvoiVT7ueKQbbQbUW6THt9qQhsOZGqYJAiXX7GY6zEZ263xX4Fwkzgg==
Message-ID: <5a38f406630d79fd44571a6b6b9cba405a4c5228.camel@bootlin.com>
Subject: Re: [yocto] [error-report-web][PATCH] view: fix unquote_plus import
From: Thomas Perrot <thomas.perrot@bootlin.com>
To: Gyorgy Sarvari <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
Cc: thomas.perrot@bootlin.com
Date: Wed, 16 Apr 2025 15:30:40 +0200
In-Reply-To: <9f8b626c-d277-4f08-8ac5-ad3baea13000@gmail.com>
References: <20250416131828.441127-1-thomas.perrot@bootlin.com>
	 <9f8b626c-d277-4f08-8ac5-ad3baea13000@gmail.com>
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
	protocol="application/pgp-signature"; boundary="=-QCxhA9js1+Fab/EVD36S"
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvdeigeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurhepkffuhffvveffjghftggfggesghdtreertderjeenucfhrhhomhepvfhhohhmrghsucfrvghrrhhothcuoehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpefhjefhheekteekfeevhefgkefgudfgffevfefhvdehiedvhefhgfelledugffhjeenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgpdgsohhothhlihhnrdgtohhmnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopegludelvddrudeikedrtddrvdegtdgnpdhmrghilhhfrhhomhepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepfedprhgtphhtthhopehskhgrnhguihhgrhgruhhnsehgmhgrihhlrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomh
X-GND-Sasl: thomas.perrot@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 13:30:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65192


--=-QCxhA9js1+Fab/EVD36S
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2025-04-16 at 15:26 +0200, Gyorgy Sarvari wrote:
> On 4/16/25 15:18, Thomas Perrot via lists.yoctoproject.org wrote:
> > From: Thomas Perrot <thomas.perrot@bootlin.com>
> >=20
> > The "unquote_plus" function is provided by the "urllib.parse"
> > module in Python 3.
> >=20
> > Signed-off-by: Thomas Perrot <thomas.perrot@bootlin.com>
> > ---
> > =C2=A0Post/views.py | 4 ++--
> > =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/Post/views.py b/Post/views.py
> > index 3575c1da9854..c0538fd4927e 100644
> > --- a/Post/views.py
> > +++ b/Post/views.py
> > @@ -57,7 +57,7 @@ def addData(request, return_json=3DFalse):
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 # Backward compatibility with send-error-report < 0.3
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 # The json is url encoded so we need to undo this
> > here.
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 data =3D request.body[len('data=3D'):]
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dat=
a =3D urllib.unquote_plus(data)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dat=
a =3D urllib.parse.unquote_plus(data)
>=20
>=20
> Looking at this a bit more, while this is definitely a bug, you
> should
> also check the "if" condition. The else branch seems to be there for
> backwards compatibility for old scripts, and you want to use the true
> branch, me thinks

I'm working on fixing it.

Kind regards,
Thomas Perrot

>=20
>=20
> > =C2=A0
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p =3D Parser(data)
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 result =3D p.parse(req=
uest)
> > @@ -96,7 +96,7 @@ def apply_filter(context, items, name, value):
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ':' in value:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 recipe =3D value.split(':')[0].strip()
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 task =3D value.split(':')[1].strip()
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fil=
ters.append(('TASK', task))=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fil=
ters.append(('TASK', task))
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 filters.append(('RECIPE', recipe))
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 filters.append(('TASK', value))
> >=20
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#65188):
> > https://lists.yoctoproject.org/g/yocto/message/65188
> > Mute This Topic:
> > https://lists.yoctoproject.org/mt/112294515/6084445
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


--=-QCxhA9js1+Fab/EVD36S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEh0B3xqajCiMDqBIhn8ALBXH+Cu0FAmf/sQAACgkQn8ALBXH+
Cu1Wzwv/SKco5aeJXCodqyesavomYiiZzyEYlrQTOPTwBdyXZbUJgWizYqWZa9DD
vXofmdNb3Z2j3cE4eNnFFzabc1U1eIyKpU0JDThOIeUfhBID1Yk4nHrDXMfxtdCU
aJs3w+2aTd8xmr7s7V+rhqejPvNJeK6raKGbwm6kV1i+5RLeXDrJt/qITUyK015I
RfBaq9IJrtxfiEZBg5FMWFTgkb4h8f61DIfcQysTFOH6M/FTDHe1froTjnMmuqAo
TKyyHfDexT51re0jR6tK4c8o5RaSAhadka6BK3ysJIhHYJwpv0x5Eoez5+9aFRuI
V/auATPIcl8u0oM8UMD3hzLZ74LMqnr/plskud2no7BH+1THiDfbzgp/adMqpaE0
lgkkyHwHL2fOEgLxaXI47S76TZiNOzuZ8T45ebA58ygLXO5TdEg6nWwLkBvpERF0
8I3SQj4vp+CKfgpZAhj2mPBVUkp0OY8odwCL1Y+Jt+RxskyYqpR2Acj01R7yTHOj
6cBcIRv9
=au+W
-----END PGP SIGNATURE-----

--=-QCxhA9js1+Fab/EVD36S--

