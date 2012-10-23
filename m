Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 581DBE00294
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:03:50 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id hm2so3356702wib.11
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=55dssDCvlXQmFGEVXW580YyP+UUQyYs0MzJ1UP6q0kk=;
	b=B6r/rlx1z7EQgI8rZeIB8V1WVZhFY7bi+nZy3PSMt6/zT82YaVYHuFBS1ekMI5oaq3
	PBz1xRYKqJAp+PhBHTHSY1xGxO94CQeS42MFcHrzj3XcDoXbIZcUpoAXcD4W3CcUYfW5
	WtssJgSs00E5kXOPNFLxrPKLVzL1ozMpERCsqpGs2VU79+ptdoYwIln9PFa1yBWE1jw1
	nye5onauVF1/0MGk7cxO8Sx39j3RhzL0JsQHF+A5As20KyvQEfeDNfDa0Wjuc1F6a8So
	UXQlIHGZcsT+hioIvQW5zJZ6kYMymJAJ9iQ9vvXYsxyLGF6KPT8iXJfc+qB7BTd3zZdw
	FGHQ==
Received: by 10.216.213.152 with SMTP id a24mr8599212wep.224.1351022629520;
	Tue, 23 Oct 2012 13:03:49 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id dm3sm494137wib.3.2012.10.23.13.03.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Oct 2012 13:03:46 -0700 (PDT)
Date: Tue, 23 Oct 2012 22:04:02 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
Message-ID: <20121023200402.GX3269@jama.jama.net>
References: <DDDB9E6645DE24488B8485B41A051F471D969119@Mercury.usurf.usu.edu>
	<20121023194651.GV3269@jama.jama.net>
	<DDDB9E6645DE24488B8485B41A051F471D96916E@Mercury.usurf.usu.edu>
MIME-Version: 1.0
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D96916E@Mercury.usurf.usu.edu>
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
X-List-Received-Date: Tue, 23 Oct 2012 20:03:50 -0000
X-Groupsio-MsgNum: 10235
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="1RhGCd1AsoFHGRHc"
Content-Disposition: inline

--1RhGCd1AsoFHGRHc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 23, 2012 at 07:54:58PM +0000, Jonathan Haws wrote:
> Thanks for the help.  I used the solution from the following thread to ta=
ke care of it:
>=20
> http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/027130=
=2Ehtml
>=20
> Are there others having this issue?  If so, is it something that should b=
e pushed upstream?

It's still valid for me, I'm still using this
https://github.com/shr-distribution/oe-core/commit/5d5e8783c0db7e2f0488eea0=
2f795c9f543cd626

Cheers,
--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--1RhGCd1AsoFHGRHc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlCG+DIACgkQN1Ujt2V2gBzOPgCggXhF2mcJLbRQQBK2fUdbXjtV
TvMAn3AT5KUf0VYutMwWLp3dM8oQzN3E
=jI7d
-----END PGP SIGNATURE-----

--1RhGCd1AsoFHGRHc--
