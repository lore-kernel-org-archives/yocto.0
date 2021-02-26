Received: from zougloub.eu (zougloub.eu [69.70.16.42])
 by mx.groups.io with SMTP id smtpd.web08.11349.1614355321178951074
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Feb 2021 08:02:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zougloub.eu header.s=zougloub.eu header.b=OcT6aCXI;
 spf=pass (domain: zougloub.eu, ip: 69.70.16.42, mailfrom: cj-yocto@zougloub.eu)
Received: from pouet.cJ (exmakhina.com [69.70.16.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by zougloub.eu (Postfix) with ESMTPSA id 152DD14C8709;
	Fri, 26 Feb 2021 11:01:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zougloub.eu;
	s=zougloub.eu; t=1614355320;
	bh=S3G34hDAek7LjmxtS54ObEJlQXQkcbgSfpYo7if5GtY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=OcT6aCXIuNuL/O3S7M9D9UiuvlHsOxn0rPfUlWmMfYC+7ze4CUe+KNkpMyHzxsKeq
	 gGxRX593/wrVPs8grQdgxrC+cwZJ8O8m9YpyKEasLLsxaVipbLSjHoYoFmCejbmLaV
	 CKzSFFW3YpYikAU9DZwiDZNwoAvHbNnJVgN+mIqU=
Date: Fri, 26 Feb 2021 11:01:31 -0500
From: =?UTF-8?B?SsOpcsO0bWUgQ2FycmV0ZXJv?= <cJ-yocto@zougloub.eu>
To: "Mikko Rapeli" <mikko.rapeli@bmw.de>, <mikko.murto@hhpartners.fi>
Cc: <yocto@lists.yoctoproject.org>, <licensing@lists.yoctoproject.org>
Subject: Re: [licensing] [yocto] Package names in IMAGE_MANIFEST and PACKAGES
Message-ID: <20210226110158.6366efdb@pouet.cJ>
In-Reply-To: <YDkR5bUm7W9qCSyg@korppu>
References: <6de2fa72e60448a9980a3ff820f225bf@hhpartners.fi>
	<20210226100914.33f5684c@pouet.cJ>
	<YDkR5bUm7W9qCSyg@korppu>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Groupsio-MsgNum: 52495
Content-Type: multipart/signed; boundary="Sig_/CuxRJ71bg386cq9dR4JJk+6";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/CuxRJ71bg386cq9dR4JJk+6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 26 Feb 2021 15:21:10 +0000
"Mikko Rapeli" <mikko.rapeli@bmw.de> wrote:

> FWIW, the mapping from binary package names recipes and recipe metadata l=
ike
> LICENSE is available from buildhistory. Also binary package content of im=
ages
> is available from buildhistory.

Definitely more powerful than just image manifest + packages.

> With some scripting it is possible to list
> recipes which produce binaries to images, except for static linking and
> header-only recipes but I hope these cought via some other way.

Yeah, that "except" part is something that should be accounted for.

The thing is, I don't see how recipes make any difference between a
build-time dependency such as a build tool, or a statically linked
library, so that some additional information should be input somewhere;
failing to provide that, since I don't feel like finding static library
symbols in binaries to perform a discovery, I just tell my clients to
distribute everything except their proprietary bits...

--=20
J=C3=A9r=C3=B4me

--Sig_/CuxRJ71bg386cq9dR4JJk+6
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEk5TkdsnFh9XvC+SieNwb2r75s3MFAmA5G3YACgkQeNwb2r75
s3Pq0Q/5AebB0i22XJ/AAMSiIDTcembUM9ToFGL2uUxoIrCgbTvb46kKAQHAYIgS
vtrjNJBF3+VcfzaxEf14HniJ9zX4z2vtzisnj6YFst/IiL2dVxe9PVa6Slu+nKdJ
I2jc9fguLSXseSa1J+t6AHp+ztAQa59FUfdZfmsrBfiagthCWjuH+8dgPsSVqDHx
us5tBi1DcVPOjDcppYXy8iPqzsIUTPP7SQd3nTPBRosT/guZepRLzU9FjLblc1DY
5smg11bIUocK/OZYMc9f9qElQ3ncfuH0BEtjSfz6tCB9hxYVJUitCVOW2nHW7hdO
PivYv1/zkvrY2+mUwT+KJSbtlqVvFmqDtHUb3SUQ23FVng40AeiHDZMeXkaVmOm3
Hc4IGK4TEb2pEmMIvpiCsf0e7Zt2oViU22FelwOZUfVW2o0B0AhKLfaI3VAbGPLi
OogTfJKVkXj1piKUUX/4hvfBS77lxo5I9U6qOqz9Iv1/aZneQlMVhAVg+IZ8pNpt
KxYHICOJOsrKp17sdOKXyyc0aGLQQmhtEJnDhLglAQNV6J4Zm+z4lzZVV+Np6bMQ
JwMAGzGQrR7p+mcdk8HcZLK/G2l4Z/YKLRKrTr5pELxcW0Q4YxU69bOtNAUG6qH6
/E89/QgB6btGoniiLh/gS6MhqgD3YVK/IWFtcUGUPbd5T0m0JnA=
=UvKV
-----END PGP SIGNATURE-----

--Sig_/CuxRJ71bg386cq9dR4JJk+6--
