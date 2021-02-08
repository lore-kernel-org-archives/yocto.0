Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web08.33896.1612782846989947523
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 03:14:07 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4DZ3Lg5RcRz5tlN;
	Mon,  8 Feb 2021 12:14:03 +0100 (CET)
Date: Mon, 8 Feb 2021 12:14:01 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] PREFERRED_VERSION_pn-: which version is selected?
Message-ID: <20210208111401.lbmcikrsawzkrajr@qschulz>
References: <dce0933f-55a7-cdab-aec7-3662f130240b@faresoftware.it>
MIME-Version: 1.0
In-Reply-To: <dce0933f-55a7-cdab-aec7-3662f130240b@faresoftware.it>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Mauro,

On Mon, Feb 08, 2021 at 11:52:33AM +0100, Mauro Ziliani wrote:
> Hi all.
>=20
> I'm working with Krogoth on imx6
>=20
>=20
> I have the same recipe with different versions
>=20
> recipe1_0.9.bb
>=20
> recipe1_1.0.bb
>=20
>=20
> In the image recipe I put
>=20
>=20
> image-recipe.bb
>=20
> IMAGE_INSTALL_append :=3D " \
>=20
> =A0=A0=A0 recipe1 \
>=20
> "
>=20
> PREFERRED_VERSION_pn-recipe1 :=3D "0.9"
>=20

Yocto chant #1: Recipe data is local, conf data is global.

In other words, you cannot modify other recipes from one recipe.

Since image recipes are recipes, your PREFERRED_VERSION ni your image
recipe is effectively a no-op.

On a side note, :=3D operator is rarely seen outside of
FILESEXTRAPATHS_prepend in bbappend, try to keep it this way.

>=20
> If I do
>=20
> =A0bitbake -s
>=20
> I get
>=20
> recipe1=A0=A0=A0 :1.0-r0
>=20
>=20
> If I do
>=20
> bitbake image-recipe
>=20
>=20
> in image-recipe.manifest I look
>=20
> recipe1=A0 1.0-r0
>=20
>=20
> Why is not selected the preferred version?
>=20
> How can I choose the recipe's version I'd like?
>=20

In a configuration file: local.conf, distro.conf, machine.conf.

Though, it is heavily discouraged to use local.conf for anything except
debugging sessions, as it is meant only for **local** configuration and
isn't supposed to be versioned.

Cheers,
Quentin
