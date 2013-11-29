Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f179.google.com (mail-ea0-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FE32E007A1
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2013 05:41:27 -0800 (PST)
Received: by mail-ea0-f179.google.com with SMTP id r15so6781380ead.38
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2013 05:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=UPoQ17coaxaLCRKgomo6tevHJsOi2lIA8FZisz8702s=;
	b=b3bNBoqJkN7UT8vVY+u8Eq7u1ijsa++VEQxSEpb8aewBWBW2CfektOTUzReL8y5rtx
	GFJPzJyxE3TPGsr02ZRRvwlnAUS7+3mYU6DXmbs7ieq6AyzA9ytrM0uE/S8WspS651X/
	tDyPveOyh/ySey4xb+0k+BRr6FZJ+q/ucYvJ1dfW4G/bjYDqOFIlEvM3uCz2TRd3swum
	W0GwkbrTkAAIddYpj3XM7/ak8uAfcqhp3hPRGXOKLQ9Dcr3XBK06qdlt0caAe6LuFk6C
	/ji5EziLh5XzsurzrwH4RSHKSxqs5+cbq4Z8HW/xughomu3bLhtxg4OP7xYB6wrzsibU
	z+tQ==
X-Received: by 10.15.32.202 with SMTP id a50mr1253518eev.128.1385732486565;
	Fri, 29 Nov 2013 05:41:26 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id g1sm40777557eew.1.2013.11.29.05.41.25
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Nov 2013 05:41:25 -0800 (PST)
Date: Fri, 29 Nov 2013 14:41:27 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: "Guenzel, Robert" <Robert.Guenzel@windriver.com>
Message-ID: <20131129134127.GA2860@jama>
References: <D6170FF7C32A6B4A895BCD8D281C7934A6D74693@ALA-MBA.corp.ad.wrs.com>
MIME-Version: 1.0
In-Reply-To: <D6170FF7C32A6B4A895BCD8D281C7934A6D74693@ALA-MBA.corp.ad.wrs.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documentation on WORKDIR
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Nov 2013 13:41:29 -0000
X-Groupsio-MsgNum: 17389
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XsQoSWH+UP9D9v3l"
Content-Disposition: inline

--XsQoSWH+UP9D9v3l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 29, 2013 at 09:02:47AM +0000, Guenzel, Robert wrote:
> Hello,
>=20
> I am currently starting to work with Yocto and I am having a bit of a har=
d time to figure out how the two documented versions of WORKDIR come into e=
xistence.
>=20
> The doc states:
> """
> For packages that are not dependent on a particular machine, WORKDIR is d=
efined as follows:
>    ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}/${PV}-${PR}
> [...]
> For packages that are dependent on a particular machine, WORKDIR is defin=
ed slightly different:
>   ${TMPDIR}/work/${MACHINE}-poky-${TARGET_OS}/${PN}/${PV}-${PR}
> """
>=20
> Now I tried to figure out how a package becomes machine dependent, and I =
could not find this.
> After poking around in already existing layers and recipes, I think that =
the doc is misleading.
>=20
> It appears to me that only one version exists, which is:
>   ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}/${PV}-${PR}

The correct definition is:
bitbake.conf:BASE_WORKDIR ?=3D "${TMPDIR}/work"
bitbake.conf:WORKDIR =3D "${BASE_WORKDIR}/${MULTIMACH_TARGET_SYS}/${PN}/${E=
XTENDPE}${PV}-${PR}"
bitbake.conf:MULTIMACH_TARGET_SYS =3D "${PACKAGE_ARCH}${TARGET_VENDOR}-${TA=
RGET_OS}"


>=20
> And in case a package is machine specific, one overrides the default PACK=
AGE_ARCH with (the undocumented)
> variable MACHINE_ARCH like this:
>   PACKAGE_ARCH=3D"${MACHINE_ARCH}"
> (where I believe that MACHINE_ARCH is equal to MACHINE??)

For machines with '-' it isn't.
bitbake.conf:MACHINE_ARCH =3D "${@[d.getVar('TUNE_PKGARCH', True), d.getVar=
('MACHINE', True)][bool(d.getVar('MACHINE', True))].replace('-', '_')}"

> Which will then lead to a WORKDIR that looks like ${TMPDIR}/work/${MACHIN=
E}-poky-${TARGET_OS}/${PN}/${PV}-${PR}
> (but still is ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}/${PV=
}-${PR}).
>=20
> (there are some bbclasses that do this, and there are some recipes that d=
o it).

When the recipe is something MACHINE-specific or depends on something
MACHINE-specific it assigns to PACKAGE_ARCH

PACKAGE_ARCH =3D "${MACHINE_ARCH}"

In some cases it's done automagically, when you have file://foo in
SRC_URI and foo file is taken from path which contains MACHINE, e.g.
when building pointercal recipe for qemux86, this file will be used:
=2E/recipes-bsp/pointercal/pointercal/qemux86/pointercal
and base.bbclass will detect it and change PACKAGE_ARCH to MACHINE_ARCH
if it isn't already MACHINE_ARCH.

> Being pretty new to Yocto, I have the feeling that I simply got it all wr=
ong, so before posting bugs or something, I'd wanted to know
> if anybody could shed light on this.
>=20
> thanks and best regards
>   Robert
>=20

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--XsQoSWH+UP9D9v3l
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlKYmYcACgkQN1Ujt2V2gBzhxACgt+aUtubcvD2/ewxD/L+BxN7T
DgwAoKMsGT0+NC1ST90Vlr5ey1QoTLmG
=0NGs
-----END PGP SIGNATURE-----

--XsQoSWH+UP9D9v3l--
