Return-Path: <josh@hipro.co.in>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D822DE00595
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 22:37:26 -0800 (PST)
Received: by iagz35 with SMTP id z35so1619842iag.35
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 22:37:26 -0800 (PST)
Received: by 10.50.77.226 with SMTP id v2mr5365594igw.12.1328078245944;
	Tue, 31 Jan 2012 22:37:25 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id ak10sm13522575igc.6.2012.01.31.22.37.24
	(version=SSLv3 cipher=OTHER); Tue, 31 Jan 2012 22:37:25 -0800 (PST)
Message-ID: <1328078233.2628.4.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 01 Feb 2012 12:07:13 +0530
In-Reply-To: <1327993829.2696.18.camel@babel.joshhome>
References: <1327993829.2696.18.camel@babel.joshhome>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Subject: Re: forcing a task to run while building an image
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
X-List-Received-Date: Wed, 01 Feb 2012 06:37:27 -0000
X-Groupsio-MsgNum: 4530
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-0xY+z0AIm666oURsSdR+"

--=-0xY+z0AIm666oURsSdR+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, 2012-01-31 at 12:40 +0530, Joshua Immanuel wrote:
> At present in my custom image recipe I've added the following
> lines
>        =20
>         SOME_VARIABLE =3D "Blah"
>         do_bootimg[depends] +=3D "base-files:do_install"
>        =20
> But the contents of ${SOME_VARIABLE} is not available in the
> 'base-files' recipe. Even
>=20
>         export SOME_VARIABLE =3D "Blah"
>        =20
> doesn't solve the problem.=20

        $ bitbake custom-image -c devshell

In the above devshell I can find the contents of ${SOME_VARIABLE}
available but the content of it is empty in 'base-files' recipe. Can
someone guide me?

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-0xY+z0AIm666oURsSdR+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8o3ZkACgkQWw85XwuSFMKECQCgmuFr+xgaLlB6Er8sUSKR9mMQ
c5EAoKCNZ4r71MEqZPJSJpnFxyeROwts
=xbwT
-----END PGP SIGNATURE-----

--=-0xY+z0AIm666oURsSdR+--
