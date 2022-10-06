Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FA5C433FE
	for <webhook@archiver.kernel.org>; Thu,  6 Oct 2022 15:48:31 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web11.711.1665071308834056681
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Oct 2022 08:48:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=oNjpMZGd;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230,
 mailfrom: thomas.perrot@bootlin.com)
Received: (Authenticated sender: thomas.perrot@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id D1B52240006;
	Thu,  6 Oct 2022 15:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1665071306;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=P7HGdN6PUjaJ+yuziAjHfKu7oVIil8Qh1x91nhzvaos=;
	b=oNjpMZGd+Fvw1zzeTkaaS0rbsqx1CKXzs86oLT9xRBPAdbKDuI8oIDeW0bz9NFSb/SDsoY
	3rBtnQQBcsYfIguOr7oSmJ1u7Pi4KyCyWLCGbXfHq7sK6umE3cRS9fkUKEQpzS4Lq562nh
	1eoCVGU+eZaathqOJC04ABqBI8SdbQtwCQgYko0Lyqi3J7WIeLK6zJp/LGfqjv0eOTVnbs
	z5F+lwrmHad6YhYc+AWmnTUuzXmnUd9RQ3wHibxKfgkonBASTd9gQF97albXfJNmgX1Xvi
	qUKZ7scPR8oRj9p310QdJ8wz1tKyOSVMZWVPoroJhHotgExb2/ZX7A856qtBeA==
Message-ID: <782bfe190eeb1fa1f49a1f0e011bbc4c38eb5734.camel@bootlin.com>
Subject: Re: [yocto] core-image-minimal-xfce: Xorg screen remains black
From: Thomas Perrot <thomas.perrot@bootlin.com>
To: Manuel Wagesreither <ManWag@FastMail.FM>, yocto@lists.yoctoproject.org
Date: Thu, 06 Oct 2022 17:48:24 +0200
In-Reply-To: <6396a42f-477e-4f4d-a2cb-fa1e292a8b9b@app.fastmail.com>
References: <6396a42f-477e-4f4d-a2cb-fa1e292a8b9b@app.fastmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-TLAX/0Z6Eo4pM3XH34Rl"
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Oct 2022 15:48:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58277


--=-TLAX/0Z6Eo4pM3XH34Rl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I've also been reproducing this issue for a few days, and I haven't
found a fix yet.
Does anyone have an idea, to fix it?

Kind regards,
Thomas

On Thu, 2022-10-06 at 17:31 +0200, Manuel Wagesreither wrote:
> Hi all,
>=20
> I'd like to build core-image-minimal-xfce for qemux86-64. I'm on
> Dunfell.
>=20
> At first, Xorg didn't start properly but I could fix that by adding
> package xkeyboard-config manually to the image. Now Xorg seems to
> start (displays a mouse cursor), but the screen is otherwise black.
> At some point the screen flickers and I see a window for the fraction
> of a second, but then the screen goes dark again.
>=20
> I've attached what Xorg prints on stderr.
>=20
> There's heaps of error messages and I could go through them and fix
> them one after the other, but I figure something is broken on a
> fundamental level. After all, core-image-minimal-xfce should be
> expected to work, even if it's Dunfell, not?
>=20
> Can you tell me what's causing my problems?
>=20
> I'm on the Dunfell branch tip as it was on October 13th on both poky
> and meta-openembedded:
> https://gitlab.com/manuel_wagesreither/bora-proj/-/blob/xfce/kas/bora-xfc=
e.yml#L32
>=20
> Regards,
> Manuel
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58276):
> https://lists.yoctoproject.org/g/yocto/message/58276
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


--=-TLAX/0Z6Eo4pM3XH34Rl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEh0B3xqajCiMDqBIhn8ALBXH+Cu0FAmM++MgACgkQn8ALBXH+
Cu0Zawv8CEivcHbc51APjNI4OocGK/eUHcFzsDkJFCB8hWNUBUJ9asqsbfvXpkAR
KkQZuiVIBuBksR3bZTtYVbSLjtpidiHH4n4t0EozquOKpiY4Ndl0mjfKZ+qL+Wtj
FD6FRTQ77Jm/tA7BmL6ynolchV6BMReAOoS6s5yAHQ1D3eecw5lf2RVhZHV7R3Qb
BF11t2af15XvqMOD0A4hRksIPejgW99NjlSbCpucN4WxFPQ07vfAuiz9UxUvht9R
Ez87iBCkWqNHI7e6MdBBGmkMQQK9FBq5veWq9I8dbEyawO+5IfRymRZe8vq9DXA1
6vm0k2uGZygMSbEXIs3Dgp1oUbWn4HnoHSJtfai6CM65FrS/ugy2smHlfMrkNF7I
XyVPZ/O0U6XQ3TvulFAebKxzB14bLuSRzDvzUZNDCWETSUd/Ctod1MFxVAcPXdMT
LrHjNmbsQVNMPgX35Mz5lY+uqwaOnPNI3rfDVVWAByYYbuoDraYrdZ834XGMyio1
OPxitf3k
=uiFy
-----END PGP SIGNATURE-----

--=-TLAX/0Z6Eo4pM3XH34Rl--

