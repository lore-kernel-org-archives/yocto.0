Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84743E0044C
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 20:56:22 -0800 (PST)
Received: by dadp13 with SMTP id p13so1975779dad.35
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 20:56:22 -0800 (PST)
Received: by 10.68.227.195 with SMTP id sc3mr9801498pbc.47.1329368180086;
	Wed, 15 Feb 2012 20:56:20 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id f3sm1313787pbr.61.2012.02.15.20.56.16
	(version=SSLv3 cipher=OTHER); Wed, 15 Feb 2012 20:56:19 -0800 (PST)
Message-ID: <1329368164.2747.9.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Autif Khan <autif.mlist@gmail.com>
Date: Thu, 16 Feb 2012 10:26:04 +0530
In-Reply-To: <CADzUK1+rXrSNS91NURP9=T_SoKm1a3xg4tmijoU134wUmQhnOg@mail.gmail.com>
References: <1329290581.3039.18.camel@babel.joshhome>
	<CAMKF1soCVQ9bKYdhMAHfkM-xcrqYrwMS-kUMR3g1-1fJro-__Q@mail.gmail.com>
	<1329321197.30001.6.camel@babel.joshhome>
	<CADzUK1+rXrSNS91NURP9=T_SoKm1a3xg4tmijoU134wUmQhnOg@mail.gmail.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQn5pF1Y/+6jGEh65Q4mDfjqxFCl7DaMKk7PajzfSB0Ij4Yhj+cY+B6oU0nJ1c5p5RMEKvFW
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RDEPENDS fails to find an existing package
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
X-List-Received-Date: Thu, 16 Feb 2012 04:56:22 -0000
X-Groupsio-MsgNum: 4846
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-xhEO1vF/CT67iEqcPqCA"

--=-xhEO1vF/CT67iEqcPqCA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Autif,

On Wed, 2012-02-15 at 18:23 -0500, Autif Khan wrote:
> > Adding FILES_${PN} =3D "${libdir}/lib*.so" made bitbake to create an
> > non-empty libharu package thereby fixing the problem.
>=20
> Heads up - if you are using 1.2 M2 - you may have to add the following
> line in your recipe:
>=20
> INSANE_SKIP_{PN} =3D "dev-so"

Can you please explain little bit more on what INSANE_SKIP_${PN} =3D
"dev-so" does. I don't find any documentation on it. The only piece of
information available by greping the code spoke something about skipping
QA tests (in insane.bbclass).

> for package in packages.split():
>     skip =3D (bb.data.getVar('INSANE_SKIP_' + package, d, True) or "").sp=
lit()
>     if skip:
>         bb.note("Package %s skipping QA tests: %s" % (package, str(skip))=
)
>     ...

It would be really helpful if you would enlighten me on this.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-xhEO1vF/CT67iEqcPqCA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk88jGQACgkQWw85XwuSFMI+owCgny6RNrI7FRaJ+Fqhw3+oehoY
jo0AoMYPK4y4dyMXqWunY+iGGIi0y7oM
=b6yU
-----END PGP SIGNATURE-----

--=-xhEO1vF/CT67iEqcPqCA--
