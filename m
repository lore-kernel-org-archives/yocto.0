Return-Path: <josh@hipro.co.in>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D067FE00594
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 07:50:00 -0800 (PST)
Received: by iagz35 with SMTP id z35so2405380iag.35
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2012 07:50:00 -0800 (PST)
Received: by 10.50.196.228 with SMTP id ip4mr27077590igc.28.1328111400225;
	Wed, 01 Feb 2012 07:50:00 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id ko6sm14909289igc.2.2012.02.01.07.49.58
	(version=SSLv3 cipher=OTHER); Wed, 01 Feb 2012 07:49:59 -0800 (PST)
Message-ID: <1328111395.2628.32.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 01 Feb 2012 21:19:55 +0530
In-Reply-To: <1328078233.2628.4.camel@babel.joshhome>
References: <1327993829.2696.18.camel@babel.joshhome>
	<1328078233.2628.4.camel@babel.joshhome>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Subject: creating global variables in a recipes
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
X-List-Received-Date: Wed, 01 Feb 2012 15:50:01 -0000
X-Groupsio-MsgNum: 4538
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-j85poQq2MLuGNAgw7qWS"

--=-j85poQq2MLuGNAgw7qWS
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

On Wed, 2012-02-01 at 12:07 +0530, Joshua Immanuel wrote:
> > At present in my custom image recipe I've added the following
> > lines
> >        =20
> >         SOME_VARIABLE =3D "Blah"
> >         do_bootimg[depends] +=3D "base-files:do_install"
> >        =20
> > But the contents of ${SOME_VARIABLE} is not available in the
> > 'base-files' recipe. Even
> >=20
> >         export SOME_VARIABLE =3D "Blah"
> >        =20
> > doesn't solve the problem.=20
>=20
>         $ bitbake custom-image -c devshell
>=20
> In the above devshell I can find the contents of ${SOME_VARIABLE}
> available but the content of it is empty in 'base-files' recipe.=20

In other words, I need to define global variables in a package which can
be used across multiple packages. At present the only option I have is
to export the variable in build/conf/local.conf. IMHO, this doesn't feel
like a proper solution (as the variable is my layer specific). Moreover,
I can't change the value of it in one package to be used in other
package(s).

Is there any other way to do this? Please guide me.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-j85poQq2MLuGNAgw7qWS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8pXyMACgkQWw85XwuSFMKJpQCfcdRl+YmfYa2OdBExmsY2CbdG
h0sAnAg4MWv4DC42olCChP8PR5kdhKa5
=rcwD
-----END PGP SIGNATURE-----

--=-j85poQq2MLuGNAgw7qWS--
