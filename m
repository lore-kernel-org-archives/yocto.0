Return-Path: <martin.jansa@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C95A2E003E2
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 06:45:53 -0800 (PST)
Received: by eaai11 with SMTP id i11so1469167eaa.35
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 06:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=0a/y1vDH/UJknLJa2pofHnCbvN+ho0R3Fk/XVzRYsWE=;
	b=SOQrDKZ0G78zbsGpgXlqVk892z8bdDo2Ee7el98B70L1Z2jmLqXbWTOVMwRN/Cz97I
	PvU5ogGvJNGOIgVk5bI4/ELhtCj7sRtzSZ1muwcUDj+LF2pLvWMDwuaoicmLyWpEbLmu
	xcWr+ftyoiq8j+zDInCXhnT2x3cCiQrkrEycM=
Received: by 10.14.95.201 with SMTP id p49mr3875549eef.53.1329489952238;
	Fri, 17 Feb 2012 06:45:52 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id u9sm22153787eem.11.2012.02.17.06.45.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 17 Feb 2012 06:45:50 -0800 (PST)
Date: Fri, 17 Feb 2012 15:45:48 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Message-ID: <20120217144548.GH5822@jama.jama.net>
References: <1329489648.2709.14.camel@babel.joshhome>
MIME-Version: 1.0
In-Reply-To: <1329489648.2709.14.camel@babel.joshhome>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: unable to add a new file to base-files recipe via bbappend
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
X-List-Received-Date: Fri, 17 Feb 2012 14:45:54 -0000
X-Groupsio-MsgNum: 4874
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="rCwQ2Y43eQY6RBgR"
Content-Disposition: inline

--rCwQ2Y43eQY6RBgR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 17, 2012 at 08:10:48PM +0530, Joshua Immanuel wrote:
> Hello all,
> 	I added a base-files_3.0.14.bbappend file in my custom layer and
> pointed the SRC_URI as follows
>=20
>         SRC_URI +=3D "file://xorg.conf"
>        =20
> The xorg.conf file is at "base-files/files/xorg.conf" on my custom
> layer. But, the bitbake fails to find the file.
>=20
> > | ERROR: Function 'Fetcher failure for URL: 'file://xorg.conf'.=20
> > Unable to fetch URL file://xorg.conf from any source.' failed
>=20
> I guess, the method that I am following here to add a new source file
> via the bbappend is wrong.

You need to set something like
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
for fetcher to look in ${PN} subdirectory of directory where=20
you have .bbappend

And you're bbappending wrong recipe, xorg.conf belongs to
meta/recipes-graphics/xorg-xserver/xserver-xf86-config/

Cheers,

>=20
> Please guide me.
>=20
> Regards
> Joshua
> --=20
> Joshua Immanuel
> HiPro IT Solutions Private Limited
> http://hipro.co.in



> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--rCwQ2Y43eQY6RBgR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8+aBsACgkQN1Ujt2V2gBzvWwCfSeSCK/6NnhB0q+zLnVksXBb0
2FoAn0bCAvZOOYtHyPWXs0+0BNYa1TNg
=kLY7
-----END PGP SIGNATURE-----

--rCwQ2Y43eQY6RBgR--
