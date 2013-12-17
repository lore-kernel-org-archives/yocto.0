Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f41.google.com (mail-ee0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DABBE006C7
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 06:01:32 -0800 (PST)
Received: by mail-ee0-f41.google.com with SMTP id t10so2927898eei.0
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 06:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=+G/WpPCkR8Hxav5fDYDwyJbfL6NiyTCzV9auYh0h7I4=;
	b=iL+EuSYaCp/7XuDADiaYWLw9N8e6xwSbB+aAT6YvGH/KVBgNbElywGdSixwsaF2OJR
	pawP6pXYBkp/MhwAMPmQd+HHoLhgyeLMG53/DNxbuoow8pE6AqR40UPap9W1qRrNBteM
	Mj1oYWviidm/LsbAwaquMwYhZ8DgpUl0kBPZs+kn5IMXZ/mHo5m7svwm8h++yyi3ivc6
	2lD9QMbM3x13sLHYkysMynF0u1ekz0O2D9SXiP5NJrgcU/4RNzNC66YHDsEQ/jWDxKR+
	/JKXaEtleQty95KI2pSZu6YY1GQXXotEkpQO7Xd5Qw5cBboLb0Bj2jGyYTC131r1Pt7h
	svQQ==
X-Received: by 10.15.54.72 with SMTP id s48mr22839137eew.3.1387288891062;
	Tue, 17 Dec 2013 06:01:31 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id e3sm53305352eeg.11.2013.12.17.06.01.27
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Dec 2013 06:01:28 -0800 (PST)
Date: Tue, 17 Dec 2013 15:01:59 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Brad Litterell <brad@evidence.com>
Message-ID: <20131217140159.GG3706@jama>
References: <E51394554A503C4E852F9BEE46B03E8D019AC4B3@TI-THOR.tasernet.com>
MIME-Version: 1.0
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8D019AC4B3@TI-THOR.tasernet.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting PV dynamically in a recipe
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
X-List-Received-Date: Tue, 17 Dec 2013 14:01:34 -0000
X-Groupsio-MsgNum: 17568
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SUk9VBj82R8Xhb8H"
Content-Disposition: inline

--SUk9VBj82R8Xhb8H
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 17, 2013 at 08:16:40AM +0000, Brad Litterell wrote:
> Hi,
>=20
> I have a few recipes in my image that represent my own custom code.  I wo=
uld like to generate PV dynamically from my source code, but since the reci=
pe is parsed before the code is extracted from the tarball, that's not easy=
 to do.
>=20
> The Poky reference manual implies this is possible:
> PV is generally not overridden within a recipe unless it is building an u=
nstable (i.e. development) version from a source code repository (e.g. Git =
or Subversion).
>=20
> However, I have not found an actual example. Is there a recommended way t=
o do this?

Do you really need to change PV? Check PKGV,
meta-openembedded/meta-oe/classes/gitpkgv.bbclass could be interesting
example for you.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--SUk9VBj82R8Xhb8H
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlKwWVYACgkQN1Ujt2V2gBz5JwCggUMHFpkEd9i4P0ofj5keHqGh
N4MAn1sYobRXqmvh3+dl/3Gb/xevc4du
=mhxk
-----END PGP SIGNATURE-----

--SUk9VBj82R8Xhb8H--
