Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11326C4332F
	for <webhook@archiver.kernel.org>; Mon, 17 Oct 2022 08:09:52 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web09.38550.1665994181634986451
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Oct 2022 01:09:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=M82jHlGi;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: thomas.perrot@bootlin.com)
Received: (Authenticated sender: thomas.perrot@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 2CBFFFF819;
	Mon, 17 Oct 2022 08:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1665994179;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=cgFO4T1VQKBYkrmFOOsaUeOkhOBb2HHFX4D8uhCZnzc=;
	b=M82jHlGizuKl9+ueX+jU867n0xwBVID6deLImNiCkJJ9AZcrNisC2lF0WWKlmpeZgNHiLe
	9sjst16xgeYMbwL4xjodQdO0AHlggkiMWwZbJ/PFFnKgp9gZVmmFf+NOVWXd0m+7aFUgFb
	iIgpP2HG4RDDljGU/Fp9YEUfuHePfmGaHLVKTz03SPfB9W1qzHEWBpDHhe8VONyOQbnpVV
	9RD/EQjuhCXj5R/K6maB2RKgHT1sgnRXe6xBKb+SEgxbkH/gezt0N+yVKZGQ57wjnlBQlK
	npouX1FzVd8ObZTBVr8zZFef8DaSPeV5NXUJ8kOKmzBLdO+TzG/tclMNevOY5A==
Message-ID: <41d570b0f879cceeaa5e1160cd283392529a50bd.camel@bootlin.com>
Subject: Re: [yocto] core-image-minimal-xfce: Xorg screen remains black
From: Thomas Perrot <thomas.perrot@bootlin.com>
To: Manuel Wagesreither <ManWag@FastMail.FM>, yocto@lists.yoctoproject.org
Date: Mon, 17 Oct 2022 10:09:38 +0200
In-Reply-To: <b8081bba-aca7-416e-a928-317182c4393f@app.fastmail.com>
References: <6396a42f-477e-4f4d-a2cb-fa1e292a8b9b@app.fastmail.com>
	 <782bfe190eeb1fa1f49a1f0e011bbc4c38eb5734.camel@bootlin.com>
	 <b8081bba-aca7-416e-a928-317182c4393f@app.fastmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-RiykqoiUm0sBtwadUFr0"
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Oct 2022 08:09:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58348


--=-RiykqoiUm0sBtwadUFr0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Manuel,

The regression is linked to the update of the libx11 from 1.8.0 to
1.8.1.
While waiting for a fix you can revert the commit that updates libx11
(7918a25736a7).

Kind regards,
Thomas

On Thu, 2022-10-06 at 23:31 +0200, Manuel Wagesreither wrote:
> I realized `core-image-minimal-xfce.bb` adds `packagegroup-core-x11`
> to IMAGE_INSTALL.
> Yet,=20
> * It doesn't add `x11` to IMAGE_FEATURES which would do the same but
> perhaps a bit more.
> * It doesn't add `x11-base` to IMAGE_FEATURES, which would add
> `packagegroup-core-x11-base` to IMAGE_INSTALL and perhaps a bit more.
>=20
> Hence I added `x11` and `x11-base` to IMAGE_FEATURES and it changed
> things in so far as when the flickering occurs, the black screen
> changes into a gray screen.
>=20
> Regards,
> Manuel
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58279):
> https://lists.yoctoproject.org/g/yocto/message/58279
> Mute This Topic: https://lists.yoctoproject.org/mt/94160185/5443093
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


--=-RiykqoiUm0sBtwadUFr0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEh0B3xqajCiMDqBIhn8ALBXH+Cu0FAmNNDcIACgkQn8ALBXH+
Cu3Qgwv/Y8erHlTDWdc7zgCLu2kt48corGVlQrCo5G3FCt6Di0Pp3LXe7vLBsvDN
l9/TtRAYI090yTVlbuJ+ePGXZ6SQ+3eZIkAkb7XadqU63+B4ej7tZLuy4BMBSqmp
wpk3jzzhWw/TUdCmN/qpAf93f+QDkFpkHilBPEe6rOWx9O6pxux48SUehXA2gut/
PlJq4+uHtTiUmqf8yd2V7XkVr1x066LsKsEH/UOfZr+XABeUYezdcnCcmLTH5ODM
RNuwXVk8KcbnljhbZrtbcmHTqAI+YLqEnwUuJqyWxuqeGnOO64a+A7VtS1nTrdyh
DkOCsxfhiL6+AvKXNL1DMSwAR+WJ4Qt/rQ8zhxmpLsyuJBYp4uFj5lmF0QVDmpdb
Ljw+Mtwu4nO6ctUXT3q7MF6C9xuPilmjUokB1NBAqE62XFQoHaRm8f+ZRgxRbXLJ
D3g1mOZlAil5s0R3rR+4p5/m1YkYU6c5AWjIVLuGBsM14iEY2xvFMuzSFFbmnunt
L77pqNB3
=yRTd
-----END PGP SIGNATURE-----

--=-RiykqoiUm0sBtwadUFr0--

