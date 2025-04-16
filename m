Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1897C369BD
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 13:28:44 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.19575.1744810122476656315
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 06:28:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=SYJ2qX/n;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: thomas.perrot@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 73D2F43859;
	Wed, 16 Apr 2025 13:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1744810120;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=UiIDBODyYZ1RvMCNJ2Ju7CKhztMNaVPJQz4k4eJmSW0=;
	b=SYJ2qX/nVSKVYWb6n3HHfQr1j7SF24ZadOhlfzy8xFjOnvyxXUeiA+g2xPtQm/WSZhbRPJ
	Rj36QG8DLS78LE5Ap4cfqko6mwFXa3zolwfVcvrfD6RtAjDXpHEZjQSMpHecg4pRoTp++B
	BpRwNmnLz2qwAYePyfkfDLc9oYbmwBKt3raXTvaN6wihe1aTStc3uEYVOHDmrKEen03mD5
	oRZAhV6bn0liu1NREO7CxVqMiAjPn2mIrflzGVmXp63AwnGnykhUW4InmNpaoKZBxyHlD0
	c+d3sqImdw9BGvJ2p/QFe3GUccODKx8Jc8F/7HcveTJ71IeMLtEbI+uHEFCWNg==
Message-ID: <9be005368fbce86de50cb308656f2217a1b0b9dc.camel@bootlin.com>
Subject: Re: [yocto] Reseive a HTTP Error 500 when send error report
From: Thomas Perrot <thomas.perrot@bootlin.com>
To: yocto@lists.yoctoproject.org, Gyorgy Sarvari <skandigraun@gmail.com>
Cc: thomas.perrot@bootlin.com
Date: Wed, 16 Apr 2025 15:28:39 +0200
In-Reply-To: <1836CBB1B501AE62.22324@lists.yoctoproject.org>
References: <2e9cf6ffee73d3e37142c09a39b2f712bf29dc4d.camel@bootlin.com>
		 <06bfb359-54ec-46fb-8ae5-5aa402ffcc4e@gmail.com>
	 <1836CBB1B501AE62.22324@lists.yoctoproject.org>
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
	protocol="application/pgp-signature"; boundary="=-RQHPTKz93vVNWmu94sst"
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvdeigeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurhepkffuhffvveffjghftggfggesghdtreertderjeenucfhrhhomhepvfhhohhmrghsucfrvghrrhhothcuoehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpedthfelveeivddttdejgfetueehgfffgfejgfegkedtheekffevvddugfeujeelgeenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgpdhkvghrnhgvlhdrohhrghdpthgvrhhmsghinhdrtghomhdpshgrrhhvrghrihdrmhgvpdhvihgvfihsrdhphidpohhpvghnvghmsggvugguvggurdhorhhgpdgsohhothhlihhnrdgtohhmnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopegludelvddrudeikedrtddrvdegtdgnpdhmrghilhhfrhhomhepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepfedprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrghdprhgtphhtthhopehskhgrnhguihhgrhgruhhnsehgmhgrihhlrdgtohhmpdhrt
 ghpthhtohepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomh
X-GND-Sasl: thomas.perrot@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 13:28:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65190


--=-RQHPTKz93vVNWmu94sst
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Gyorgi,

On Wed, 2025-04-16 at 14:17 +0200, Thomas Perrot via
lists.yoctoproject.org wrote:
> Hello Gyorgi,
>=20
> On Wed, 2025-04-16 at 13:22 +0200, Gyorgy Sarvari wrote:
> > Rendering[1] the error message shows a bit more details. The error
> > seems
> > to come from here[2].
> >=20
> > 1. You could send a patch to fix the error (I think nowadays it
> > should
> > be "urllib.parse.unquote_plus"), and wait till it's deployed
> >=20
>=20
> I believe I could.

I submitted a patch:
https://lore.kernel.org/all/20250416131828.441127-1-thomas.perrot@bootlin.c=
om/

>=20
> > 2. It's a guess: have you changed the "version" attribute of the
> > send-error-script? The error indicates that the user agent is
> > "send-error-report/0.4", which seems to trigger the outdated
> > codepath,
> > and the user-agent is composed using the version variable of this
> > script, which is 0.3, in master-next too[3].
>=20
> The user agent is 'send-error/report/0.4' because I applied the
> following patch on top of the master branch to figure out the
> error:
> https://lore.kernel.org/all/20250416100149.274800-1-thomas.perrot@bootlin=
.com
> /
>=20

Following the log when the version is 0.3:
https://termbin.com/8fy1

Kind regards,
Thomas Perrot

> Kind regards,
> Thomas Perrot
>=20
> >=20
> > [1]: https://sarvari.me/deleteme.html=C2=A0(temporary link)
> >=20
> > [2]:
> > https://git.yoctoproject.org/error-report-web/tree/Post/views.py#n60
> >=20
> > [3]:
> > https://git.openembedded.org/openembedded-core/tree/scripts/send-error-=
report?h=3Dmaster-next#n25
> >=20
> > On 4/16/25 12:14, Thomas Perrot via lists.yoctoproject.org wrote:
> > > Hello,
> > >=20
> > > I would like to share the results of my CI jobs, so I am trying
> > > to
> > > send
> > > error reports using the send-error-report command, but they are
> > > receiving an HTTP Error 500:
> > > https://termbin.com/pq28
> > >=20
> > > Could you please advise me on how to resolve this issue?
> > >=20
> > > Kind regards,
> > > Thomas Perrot
> > >=20
> > >=20
> > >=20
> > >=20
>=20

--=20
Thomas Perrot, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


--=-RQHPTKz93vVNWmu94sst
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEh0B3xqajCiMDqBIhn8ALBXH+Cu0FAmf/sIcACgkQn8ALBXH+
Cu2eiAv+Pwy18nRMVbUNYm1q+i7FrMbUQZNJ/mVhwgZu/68VisdpPcgFi27c4DqC
9GFseQzl6GvpfI3Vbllg84nmdkMXZeTG9/afzSSThe2e1v6G24ruBfmWXgN5Yxy6
w6QH+j0G0lD2VQOWYjLFlssHU6lyY2UgmtUb1hiv5hNkDVq0/XVeTLzA3mNQHmnr
44+oF6D4Pfz/IG6wt71CTaeIC1ZiM+gSwr6T9VhcRvTh7qwM/Dnyjcoe/MUrmjau
HL2a+gGWSAwHH2pW28QkIQpSftlLFu8xtIiEuIlWiK5TOS9kIrqEhg0akUVAmMwS
Ylk+zC8vzIPz40OL1qqXE2Qj0DCiorHrZ5Vravrpf9Q4NsBEiplOvYZ3Ja4+mgV4
wKJoV7AXNsVM1lsDGHIz+GLD96TiDwx2RajbQK4bKuqnfYxiRo0YRurCFJnEbdxa
g5m/5oaD5ZbPOfFzAn4fMHLWixnLgA7BXjq7boB8G8Kl6Ma6iiGoDkuOxK4sVd1x
Qa4vg2Bz
=ukNV
-----END PGP SIGNATURE-----

--=-RQHPTKz93vVNWmu94sst--

