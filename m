Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D455E0044D
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 03:19:41 -0800 (PST)
Received: by dadv6 with SMTP id v6so4796927dad.28
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2012 03:19:41 -0800 (PST)
Received-SPF: pass (google.com: domain of josh@hipro.co.in designates
	10.68.236.35 as permitted sender) client-ip=10.68.236.35; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of josh@hipro.co.in
	designates 10.68.236.35 as permitted sender)
	smtp.mail=josh@hipro.co.in
Received: from mr.google.com ([10.68.236.35])
	by 10.68.236.35 with SMTP id ur3mr1481046pbc.84.1330946381045 (num_hops
	= 1); Mon, 05 Mar 2012 03:19:41 -0800 (PST)
Received: by 10.68.236.35 with SMTP id ur3mr1276869pbc.84.1330946380751;
	Mon, 05 Mar 2012 03:19:40 -0800 (PST)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id b7sm13115459pba.2.2012.03.05.03.19.37
	(version=SSLv3 cipher=OTHER); Mon, 05 Mar 2012 03:19:39 -0800 (PST)
Message-ID: <1330946371.2746.47.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Darren Hart <dvhart@linux.intel.com>
Date: Mon, 05 Mar 2012 16:49:31 +0530
In-Reply-To: <4F4FCB48.4070200@linux.intel.com>
References: <4F4EBEC8.7060705@linux.intel.com>
	<CABcZAN=xxYE+fxC_VhhsH+53eOMR4EPX4apWOG6Ut7zmOnSqyg@mail.gmail.com>
	<4F4EC558.3040401@linux.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123793B741DAC@ORSMSX101.amr.corp.intel.com>
	<4F4FCB48.4070200@linux.intel.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQnK0Jj4QRZot6adlZhjuhq/KQWl6YLRaTDSikuHU822PRocyVpC7i9zGuNdiqW6tuWoezjf
Cc: Yocto Project <yocto@yoctoproject.org>, Chris Larson <clarson@kergoth.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Documentation: Default FILESDIR
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
X-List-Received-Date: Mon, 05 Mar 2012 11:19:41 -0000
X-Groupsio-MsgNum: 5145
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-AqWhW0ktEWMiswfpmD0i"

--=-AqWhW0ktEWMiswfpmD0i
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Darren,

On Thu, 2012-03-01 at 11:17 -0800, Darren Hart wrote:
> FILESPATH: The ":" delimited set of paths that bitbake will search for
> files referenced in the SRC_URI. Defaults to ".:files:${PN}".
>=20
> FILESEXTRAPATHS: Appends a ":" delimited set of paths to FILESPATH.
> This
> is intended for use in .bbappend files to include any additional files
> provided in that layer. This is typically done as:
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> As an aside, it might be nice to make this 'FILESEXTRAPATHS_prepend :=3D
> "${THISDIR}/${PN}:"' the default for bbappend files. Although I
> imagine
> there are good reasons for why it is the way it is.

Thanks for the documentation. In this regard I would like to clarify a
small doubt. When I bbappend the xserver-xf86-config_0.1 recipe in order
to override the default xorg.conf, FILESEXTRAPATHS_prepend doesn't seem
to have an effect. As I am not adding an extra file but trying to
replace the default file of the recipe, should I manipulate the
FILESPATH variable?

I am asking this because Paul mentioned that we should not modify the
FILESPATH directly.

Please guide me.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-AqWhW0ktEWMiswfpmD0i
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9UoUMACgkQWw85XwuSFMLZxgCggoD/YVjcoXzAmlTpbEYhcYPY
iG8AoMPKlKHS+9H78hetkczZfQ+1CiOO
=most
-----END PGP SIGNATURE-----

--=-AqWhW0ktEWMiswfpmD0i--
