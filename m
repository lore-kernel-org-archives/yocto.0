Return-Path: <josh@hipro.co.in>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 502C0E01452
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2012 23:18:41 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so7257237pbb.35
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2012 23:18:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=uERL601hD/mgbz+0YHY9HfSMyiViBK+l7Imtq/BNg5U=;
	b=mOeGUCreuDbecwonBAjysBKL8jvo0RiPoI6enaOyKozwd8tJuUn1oi1dNxoS+b0ELu
	0VmQBx+NllZXBr3ua7uHEfM548phKOspur0SdzWre3HivzZ/WfJeIy4QScm/7aKAapTZ
	gLvzZhpbZu/bTTZgxr/NMTzmjJAWvQhxnWh4BxFWc30GYqGp0uS/OXYYHu681/5YoxmT
	PjlhicxqdjiKGs3C5qSDfuvS9MY4tFfFgTomInuO+mQiQCpJKl+1eEoLWnUtCJFfzk9j
	D4JZflUeKw3ZhjrHBdMynzAnRt9wq7C75qHthRpwjzC3SAnxtOxmKXXs8nBFRZL3aZ7A
	FhHA==
Received: by 10.68.223.35 with SMTP id qr3mr37675670pbc.83.1340605120867;
	Sun, 24 Jun 2012 23:18:40 -0700 (PDT)
Received: from [192.168.10.211] ([59.99.251.45])
	by mx.google.com with ESMTPS id ms1sm7527568pbb.63.2012.06.24.23.18.36
	(version=SSLv3 cipher=OTHER); Sun, 24 Jun 2012 23:18:39 -0700 (PDT)
Message-ID: <1340605104.4089.12.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Chris Larson <clarson@kergoth.com>
Date: Mon, 25 Jun 2012 11:48:24 +0530
In-Reply-To: <CABcZANmax+eu__f2vkyDrOZ=G_zX4XCMCfCO6cas7UfN6u_W1g@mail.gmail.com>
References: <1340207171.3727.0.camel@babel.joshhome>
	<CABcZANmax+eu__f2vkyDrOZ=G_zX4XCMCfCO6cas7UfN6u_W1g@mail.gmail.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1+b1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQm/z+QjXvQ58P4BSd5zZJc7Jz+TWkG5Flj9a5ff+OfatdVuMIrIeIUYtCoNYDiRwcRx6iwq
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: default variables in a python task/function
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
X-List-Received-Date: Mon, 25 Jun 2012 06:18:41 -0000
X-Groupsio-MsgNum: 7423
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-qw8NwZBwtNyAX8Km28y1"

--=-qw8NwZBwtNyAX8Km28y1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Chris,

On Fri, 2012-06-22 at 18:28 -0700, Chris Larson wrote:
> 'bb' and 'os' are always imported, automatically, by bitbake itself,
> and as such are available in all python contexts. 'd' is available in
> python tasks and anonymous python functions and in inline python
> snippets, but *not* in event handlers. event handlers get their event
> passed as 'e'.
>  ...
> Unlike 'bb' and 'os', 'd' is not available in def'd python functions,
> only in tasks and anonymous functions and in inline python snippets.
> As such, it needs to be passed in by the caller.
>=20
> E.g.
>=20
> def foo(d):
>     # do something with d
>=20
> FOO =3D "${@foo(d)}"=20

Thanks for your detailed explanation.

IMHO, this information should be added in the main documentation. It
would be definitely helpful for others too.

Regards
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-qw8NwZBwtNyAX8Km28y1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAk/oArAACgkQWw85XwuSFMJY4gCggh1hhCpQfb4i0qfHZzaOkgL0
/RkAmQFhgUizphugjNxoaBCplqMUb2Aa
=uYgm
-----END PGP SIGNATURE-----

--=-qw8NwZBwtNyAX8Km28y1--
