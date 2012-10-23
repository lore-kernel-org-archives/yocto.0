Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECD04E00294
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:12:55 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id dt10so2739204wgb.11
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=WPW+QT6wp63GYMIIaCQ7Q8kw+QIHQ6ty0HvzUj5LPO8=;
	b=cw9lIl1szfSCtuUu8mpXxxyI3w1xaxNteR7BR1FKSplQO5Y5mgZOL30wcF3p9sMX77
	r4Hhu+9LVTVWrkCwJFjixWLP9oZWqLJ/a6cSvvblfM+Ee5xP2IYhmeXwrxuv31StBtA8
	A+Lu00yQM6lXXk4GevH7fqwZ8Hile8Eog8y9J5Y1yZVwi3PpHHr9lSs5ozauGSPrELUE
	HlmNisPZsoZBiXhbQkDVmuQDegnm+p0VEWbXVM0oZ1+qXWKXWlttbK1NQ228m7i8/1Iv
	b/FdkBHuY5+GpaC3moUVxnfrrR9VuXAnicYRWu457wJRqVylDIwOlUL9MAnophxCKIFk
	dRqw==
Received: by 10.180.79.202 with SMTP id l10mr504611wix.9.1351023175053;
	Tue, 23 Oct 2012 13:12:55 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id dq6sm470918wib.5.2012.10.23.13.12.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Oct 2012 13:12:54 -0700 (PDT)
Date: Tue, 23 Oct 2012 22:13:10 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
Message-ID: <20121023201310.GY3269@jama.jama.net>
References: <DDDB9E6645DE24488B8485B41A051F471D969119@Mercury.usurf.usu.edu>
	<20121023194651.GV3269@jama.jama.net>
	<DDDB9E6645DE24488B8485B41A051F471D96916E@Mercury.usurf.usu.edu>
	<20121023200402.GX3269@jama.jama.net>
	<DDDB9E6645DE24488B8485B41A051F471D96918D@Mercury.usurf.usu.edu>
MIME-Version: 1.0
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D96918D@Mercury.usurf.usu.edu>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Unreadable menuconfig
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
X-List-Received-Date: Tue, 23 Oct 2012 20:12:56 -0000
X-Groupsio-MsgNum: 10237
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gu8wNMO+QVC0jLZM"
Content-Disposition: inline

--gu8wNMO+QVC0jLZM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 23, 2012 at 08:08:29PM +0000, Jonathan Haws wrote:
> >It's still valid for me, I'm still using this
> >https://github.com/shr-distribution/oe-core/commit/5d5e8783c0db7e2f0488e=
ea02f795c9f543cd626
>=20
> Hmmmm.  I did a fresh download of the Yocto repos last week and that is n=
ot what I have.  My file still has the HOSTLDFLAGS variable set.

this isn't in upstream oe-core repo, but in shr branch for
shr-distribution.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--gu8wNMO+QVC0jLZM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlCG+lYACgkQN1Ujt2V2gByVJgCcC2Jdk0lcqvi6Pgn5UK9Z8Yx5
3+wAoInGuqEtLLaWPPF1zQw0Rn5S91N3
=pEJf
-----END PGP SIGNATURE-----

--gu8wNMO+QVC0jLZM--
