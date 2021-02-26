Received: from zougloub.eu (zougloub.eu [69.70.16.42])
 by mx.groups.io with SMTP id smtpd.web09.10620.1614352157939514499
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Feb 2021 07:09:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zougloub.eu header.s=zougloub.eu header.b=wrfyWqja;
 spf=pass (domain: zougloub.eu, ip: 69.70.16.42, mailfrom: cj-yocto@zougloub.eu)
Received: from pouet.cJ (exmakhina.com [69.70.16.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by zougloub.eu (Postfix) with ESMTPSA id A259414C86A8;
	Fri, 26 Feb 2021 10:09:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zougloub.eu;
	s=zougloub.eu; t=1614352156;
	bh=5IIZk2E2G0BamvwmyzTQx6/Vv1rKpiQlbWL2hKikEbw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=wrfyWqjaVK3kpMfDnwJ/OgCRnQciHLm3stFTDywX601MNr1NpCZUojp0kIVQoQI/P
	 BFer29QL6NEU9V6g/uzhCqF95EluOIE+EVBSPpAv7foBYiuXkpg7ZPVRJuNRC8n1Ll
	 CxPGx/ZAuNldekGOuBoXvH+V7DQIHG00yEYVwhnc=
Date: Fri, 26 Feb 2021 10:08:47 -0500
From: =?UTF-8?B?SsOpcsO0bWUgQ2FycmV0ZXJv?= <cJ-yocto@zougloub.eu>
To: "Mikko Murto" <mikko.murto@hhpartners.fi>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 licensing@lists.yoctoproject.org
Subject: Re: [yocto] Package names in IMAGE_MANIFEST and PACKAGES
Message-ID: <20210226100914.33f5684c@pouet.cJ>
In-Reply-To: <6de2fa72e60448a9980a3ff820f225bf@hhpartners.fi>
References: <6de2fa72e60448a9980a3ff820f225bf@hhpartners.fi>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Groupsio-MsgNum: 52492
Content-Type: multipart/signed; boundary="Sig_/SSptwnjQr3QEvEmiBfIK2if";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/SSptwnjQr3QEvEmiBfIK2if
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mikko,


On Fri, 26 Feb 2021 14:18:59 +0000
"Mikko Murto" <mikko.murto@hhpartners.fi> wrote:

> The crux of the matter is that I need to find packages created by recipes=
 and to link the packages listed in image's manifest files to these package=
s.=20

The way I've been doing it, which is probably not optimal and specific
to one package format, is to lookup .ipk packages from the image
manifest, then use the .ipk control info "OE" key to find the
originating recipe.

Here's a link of this method in use in order to try and identify
license-related obligations from an image:
 https://gitlab.com/exmakhina/xm_oe/-/blob/47183b74/licenses.py#L24


Hoping to help,

--=20
J=C3=A9r=C3=B4me

--Sig_/SSptwnjQr3QEvEmiBfIK2if
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEk5TkdsnFh9XvC+SieNwb2r75s3MFAmA5DxoACgkQeNwb2r75
s3N1mQ//SJReuL6Zr3IoCtM9dQkaK4PaysBrliJ+t3xkrXsWufaUkDUGCcM9nydL
xiKQiDxSv5SCRhW5QnYDz0sF7YBe7WYDzBPBmYMMZgO9Mdjrqbhq9lpFamHxwj8E
8QNe40C9aaIOlc/cZWl7VmuR2ZkNFxbF9dCHVXBqY5U1n8n0SRIiUWQEOkP6PlcZ
7YoR+6jVyEuCxPxMU8Kei9+BZ8gXdaxsFlYvDkIpX3P8pwDLfFZ886SBk69c4bKe
VSyHSF9n0woXVZg28xZVu11GX1tJDYVAZ/Fii0eayMUe1CYyMQj6TlQsV0CVzQgu
M1ipeIR4lg/lDZu1X6chcLwGT+fy86Oz8Co0EXSmDYOX6wMRgRHO3yOH8IL1lknP
x1KRkR1MyDb0rCDI6LRwf/cOe/OXP7Kpc6VNan7RYuYe3VamDuydvJONEMw4sRrp
mJj1Z49bw9wwOmIWTBNzDrc/ILM4+d8tk1RFuVOLst7KkdOeD7xLygAe9usoK7rf
YcypwqAadiDRU+xXFJp1k432IiXgVcUVBwpz+Jyj8rifZ+7bsLT/7HT8TPEQtCg3
arQeEOeWu757yRs5ewxncJUwkWoRTCR9/0+OWV8iehxfW+iKRZClWkOoOjnh1g8P
ptXD72w2SnwP4RWQGAylAMNAbvaoqvc5g+h8qAx3CKVAqUpRR3k=
=sgB3
-----END PGP SIGNATURE-----

--Sig_/SSptwnjQr3QEvEmiBfIK2if--
