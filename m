Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09DFAC369C2
	for <webhook@archiver.kernel.org>; Fri, 25 Apr 2025 14:35:40 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.7936.1745591732136538044
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Apr 2025 07:35:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=JcCIVcH9;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: thomas.perrot@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id F31B543A2B;
	Fri, 25 Apr 2025 14:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1745591730;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Q+d/ymVD/hbiKQ6gZdbLXW+qpTGtOv6K9lfxRCqQWgA=;
	b=JcCIVcH9h5/rKVFWzr6rGD7xm2OiQRfAmI/2ssq1o8l2qi44h4zLnCXWMgf3JuPA3o3axL
	CtwX/cu2uHSesrhAOSBkmEqlWzdmmss+aBaf9LbdSrkcUzg03yOyvTYnc6zf9g6+CHUzPc
	Cxkuiy+ok9Y8PBowLRwPQBd1bModlAUHjgfchS97RObVMKv2hozV7FrfknN2WrRa6+EWQB
	dT5DMuIOHk6Z+7gBmi83zB3m5DD7a5tO+BLVyVpI0Ptd2Dd2bYjt1hZ4Q2cHY2fT3IBa/V
	//A0hN4hTEw9ASFyFmCRTAsfmfAWpbfTJrxnPxbpl6BPUStpRCiUn+AFPDp3kg==
Message-ID: <05e18f350130899b5ad4888aad299c0a8958da31.camel@bootlin.com>
Subject: Re: [yocto] [error-report-web][PATCH] views: Increased
 send-error-report version check scalability
From: Thomas Perrot <thomas.perrot@bootlin.com>
To: yocto@lists.yoctoproject.org, youngseok1.jeong@lge.com
Cc: thomas.perrot@bootlin.com
Date: Fri, 25 Apr 2025 16:35:27 +0200
In-Reply-To: <20250425084830.741984-1-youngseok1.jeong@lge.com>
References: <20250425084830.741984-1-youngseok1.jeong@lge.com>
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
	protocol="application/pgp-signature"; boundary="=-EI8pZIIFHFmUUs9Xl3OL"
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvhedvheelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurhepkffuhffvveffjghftggfggesghdtreertderjeenucfhrhhomhepvfhhohhmrghsucfrvghrrhhothcuoehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeeljeeigeeuudeuhfehtdelteehvedtkeevgeejleehtdfhleduhffftdegueekfeenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgpdhkvghrnhgvlhdrohhrghdpsghoohhtlhhinhdrtghomhenucfkphepledtrdekledrudeifedruddvjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeeltddrkeelrdduieefrdduvdejpdhhvghloheplgduledvrdduieekrddtrddvgedtngdpmhgrihhlfhhrohhmpehthhhomhgrshdrphgvrhhrohhtsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopeefpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohephihouhhnghhsvghokhdurdhjvghonhhgsehlghgvrdgtohhmpdhrtghpthhtohepthhhohhmrghsrdhpvghrrhhothessghoohhtlhhinhdrtghomh
X-GND-Sasl: thomas.perrot@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Apr 2025 14:35:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65253


--=-EI8pZIIFHFmUUs9Xl3OL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, 2025-04-25 at 17:48 +0900, youngseok1.jeong via
lists.yoctoproject.org wrote:
> From: Youngseok Jeong <youngseok1.jeong@lge.com>
>=20
> The following error occurs due to incorrect url encoding caused by
> the
> version increase (0.4) of send-error-report.
> ERROR: HTTP Error 500: OK
> DEBUG: Response Content: {"error": "Invalid json"}
>=20
> This patch changes the version checking to be a bit more extensible.

I also submitted a patch to fix it a few days ago:
https://lore.kernel.org/all/20250416172309.671562-1-thomas.perrot@bootlin.c=
om/

Kind regards,
Thomas

>=20
> Signed-off-by: Youngseok Jeong <youngseok1.jeong@lge.com>
> ---
> =C2=A0Post/views.py | 3 ++-
> =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/Post/views.py b/Post/views.py
> index 3575c1d..9d24686 100644
> --- a/Post/views.py
> +++ b/Post/views.py
> @@ -50,8 +50,9 @@ def addData(request, return_json=3DFalse):
> =C2=A0=C2=A0=C2=A0=C2=A0 response =3D ''
> =C2=A0=C2=A0=C2=A0=C2=A0 if request.method =3D=3D 'POST':
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 user_agent =3D request.M=
ETA.get("HTTP_USER_AGENT", "")
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 user_agent_version =3D user_a=
gent.split("/")[-1]
> =C2=A0
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if "send-error-report/0.3" in=
 user_agent:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if user_agent_version >=3D "0=
.3":
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
data =3D request.body
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
# Backward compatibility with send-error-report < 0.3
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65251):
> https://lists.yoctoproject.org/g/yocto/message/65251
> Mute This Topic: https://lists.yoctoproject.org/mt/112447890/5443093
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[thomas.perrot@bootlin.=
com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Thomas Perrot, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


--=-EI8pZIIFHFmUUs9Xl3OL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEh0B3xqajCiMDqBIhn8ALBXH+Cu0FAmgLna8ACgkQn8ALBXH+
Cu1z3wwAlRo+OfNG+cZiBmsxd+yHYvSte24zMqPGprxadOMoeFslSC1S3LTTQR06
9GEE+RvwIz0YVWZ205T2p/GsRa1nz8NXmH63JuIuen2ZhGJdPHVZqCmzmrcgGyIE
irefSV3lulOECXPcrdC19X0ofm9Hn00MQpMufGZmDrklb6xNOqQtUyAPV+tH+ekE
Z34joyE/SICkaGOFpiwnUpogll7ZTYNb1I7dNUdH5Fq6OlZaHil1kaZ5CYzgObZ7
RwHlQYy1ESD+KGEybA12UUjkJRcGzSjhIz37YuugzYMVcUWzChSjP9lAdUsCbOBI
9F4St8CIR+p5R6mSinvgdgJPFIBawQR/zdLCdxfTg2ujEE3BG6YMKO7gcSeYIGR5
Hr9s+reHo4qTToZEfdABxj9EwjDO5Ege4drvKeeT35T9CuvYW3yky3JxgX1REGCP
ozvegrWp3mmjr/AWikPBaPHts40e3RElT2ESWhjk5ORTK54IwWEO+E/O5aFxUnuW
MUjnVwLV
=/Ddz
-----END PGP SIGNATURE-----

--=-EI8pZIIFHFmUUs9Xl3OL--

