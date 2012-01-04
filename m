Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CD53E01366
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2012 05:36:12 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eekd49 with SMTP id d49so18005778eek.35
	for <yocto@yoctoproject.org>; Wed, 04 Jan 2012 05:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=kojEb8I5dWqoz51SgvokWT0ugFc86GZ8nOE4SOXlD9E=;
	b=YAPuAUmFCFZCHEtm+8c786G00hXLEA6G42U9qtYoXFi4qflH8Ej6sN93TQlZMaXs3c
	oOIfvHI1FhQIYgIFJj8JJRndrCrwu+D3DDSLzhNLISlstT6EgeptBA9TVkbpwrp6uAij
	weaGYcm8/X0Xdz0iD6g9Q8wwifu25FWwVRIwc=
Received: by 10.213.10.137 with SMTP id p9mr14637548ebp.38.1325684171132;
	Wed, 04 Jan 2012 05:36:11 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id q67sm157809991eea.8.2012.01.04.05.36.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 04 Jan 2012 05:36:09 -0800 (PST)
Date: Wed, 4 Jan 2012 14:36:08 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Pedro Algarvio <pedro@algarvio.me>
Message-ID: <20120104133608.GE6485@jama.jama.net>
References: <4F02005F.4080705@algarvio.me>
	<20120104055803.GL31275@sakrah.homelinux.org>
	<4F0454F0.3000107@algarvio.me>
MIME-Version: 1.0
In-Reply-To: <4F0454F0.3000107@algarvio.me>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Python Math Module
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
X-List-Received-Date: Wed, 04 Jan 2012 13:36:12 -0000
X-Groupsio-MsgNum: 4071
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="orO6xySwJI16pVnm"
Content-Disposition: inline

--orO6xySwJI16pVnm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 04, 2012 at 01:32:32PM +0000, Pedro Algarvio wrote:
> First of all, Thanks!
>=20
> So basically, for a smaller space, python is split into several
> packages, how can I known which packages exist?
>=20
> Look at it's recipe?

Usually yes, in this case it's a bit more complicated, because important
line in recipe
require python-${PYTHON_MAJMIN}-manifest.inc

and in=20
meta/recipes-devtools/python/python-2.7-manifest.inc
you'll find python-math and other python subpackages

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--orO6xySwJI16pVnm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8EVcgACgkQN1Ujt2V2gBwVbgCglqX5ng7blC1nxt7eMj7gyoa8
y4AAnjy3WRUvdIwNWbnbdvli/CwEUpvK
=S2cF
-----END PGP SIGNATURE-----

--orO6xySwJI16pVnm--
