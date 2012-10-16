Return-Path: <josh@hipro.co.in>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9614EE00292
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 23:48:59 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp12so6977555pab.35
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 23:48:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=n5aKkPpJ4/9YRfmcdGk+Gx58M5eDPJwAi/DqG19dvnk=;
	b=BcDXM4Y8pMl49cOE+eEidHdZ50HaimdDOLnyAHUnvjZBk3+HPRIA23TojtjFNfe6ja
	qKf7Z+Ag2NwRoPyM5q2Fwss48IAN43LxK3Vd3tV9v5wQeUg9O8ioYlPZ9sgQCvXcSyeZ
	Ichqf5YYfzPaw9t+re/f3DO9zrYOe9gQJeXV5UHmIiLttOnssalR8T2PkW5Kkjwx7LeX
	UTUQ+CPISlMv297Z8wYMjixl2013TSUV99d1sw4hJnXn1ScynknibVZi46oa5u3mGX2/
	hgWkQZnLEW2vG9PQdVfbWju51z3BaVtiB3NZfeBAlgdLJufJY0k7DhHjSzi2Isc4UBop
	+Yog==
Received: by 10.68.138.198 with SMTP id qs6mr44324729pbb.151.1350370125323;
	Mon, 15 Oct 2012 23:48:45 -0700 (PDT)
Received: from [192.168.10.204] ([59.99.251.45])
	by mx.google.com with ESMTPS id qf4sm10317968pbc.1.2012.10.15.23.48.41
	(version=SSLv3 cipher=OTHER); Mon, 15 Oct 2012 23:48:44 -0700 (PDT)
Message-ID: <1350370104.4218.4.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Tue, 16 Oct 2012 12:18:24 +0530
In-Reply-To: <507C61B9.8060300@windriver.com>
References: <DDDB9E6645DE24488B8485B41A051F471D95AFA5@Mercury.usurf.usu.edu>
	<1350284380.4115.18.camel@babel.joshhome>
	<507C61B9.8060300@windriver.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.4.3-1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQmrQ4jlFK/MVm+n9CDX13l/cusFgN75iXBlV2JACDiAWx6iVHgl6L/2MvakSKJKvfAAFSwA
Cc: yocto@yoctoproject.org
Subject: Re: Multiple partitions in drive image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Oct 2012 06:48:59 -0000
X-Groupsio-MsgNum: 10096
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-i86EZDdnKLrAEOpjZmfF"

--=-i86EZDdnKLrAEOpjZmfF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Mark,

On Mon, 2012-10-15 at 14:19 -0500, Mark Hatle wrote:
> Is the code you used for the dynamic fstab, partition map, and
> bootloader setup and image creation available anywhere?
>=20
> I expect it isn't too difficult to create, but if there is something
> to start with it would be useful.

My layer contains parts which I cannot put on the Internet. Give me a
few days I'll split out those parts, make an usable example and put them
up somewhere.=20
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-i86EZDdnKLrAEOpjZmfF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAlB9AzgACgkQWw85XwuSFMLO0ACeJBYJ5y+eUxXbtZXgpYo6c3Ln
VoMAoM2L15Z9rDqpSjM0PnNvSq4lOc83
=kLKM
-----END PGP SIGNATURE-----

--=-i86EZDdnKLrAEOpjZmfF--
