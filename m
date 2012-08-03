Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 918B4E0144F
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 13:25:05 -0700 (PDT)
Received: by wibhq12 with SMTP id hq12so820263wib.11
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 13:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=BqP5Wp0YB5USrhyxcemn8kdhsmDPEVi+DC63x4HOnpo=;
	b=TA9hI5Tbs8Q+4ryRfd6JmDxc4Q7JZyZvAFleOxNhcWoOmcBx4KUQ4nFNuNzQK2n0Fh
	OqN5wqUSPdLh5hEa8WpH2k7oe2SUBTbLdzl6s2c2JlLc7QEzBR22mL21aLon3cBiC1le
	OD2Ii1TnuMzbGK0Zwk1GIDXijpN3KLRjkONnB9jMaQ451dXtNCabUDghTmVw8WKTrc/W
	TYB+54wn2yFWaksRGAg1DmkNgcuAiLi+st/jlrTCiLVrA9qDmSb2n3fmXUULXQ9KDgEH
	YBsTHnEson/t6ltIShpH4XQrLC+hFBE6O26aZAjCjr3IutJ25n2jaI5l9FYZjFTLjOrK
	ddtw==
Received: by 10.180.81.38 with SMTP id w6mr6967717wix.10.1344025504281;
	Fri, 03 Aug 2012 13:25:04 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id z11sm28671584wiv.10.2012.08.03.13.25.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 13:25:03 -0700 (PDT)
Date: Fri, 3 Aug 2012 22:25:02 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20120803202502.GE30148@jama.jama.net>
References: <1070990E-BAFD-408C-8EB8-37F29ADB87EB@gmail.com>
	<CB6BA0F1-3C99-4A6A-84F6-6EFE4CCADAA4@gmail.com>
MIME-Version: 1.0
In-Reply-To: <CB6BA0F1-3C99-4A6A-84F6-6EFE4CCADAA4@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-toolchain error with latest gcc commit: rpm-createsolvedb.py: command not found
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
X-List-Received-Date: Fri, 03 Aug 2012 20:25:06 -0000
X-Groupsio-MsgNum: 8395
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hwvH6HDNit2nSK4j"
Content-Disposition: inline

--hwvH6HDNit2nSK4j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 03, 2012 at 01:15:32PM -0700, Khem Raj wrote:
>=20
> On Aug 3, 2012, at 12:07 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>=20
> >=20
> > When I run bitbake meta-toolchain, I get the following error: rpm-creat=
esolvedb.py: command not found
> >=20
> >=20
>=20
>=20
> yes I have similar problems. see
>=20
> http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/027214=
=2Ehtml

Maybe something like
http://git.openembedded.org/openembedded-core/commit/meta/classes/populate_=
sdk_rpm.bbclass?id=3D8a71c1a507289d38a0f675584ab206abfa9aad9a
is needed?

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--hwvH6HDNit2nSK4j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlAcM54ACgkQN1Ujt2V2gBwjigCePsLa0aYDyChy4k6NjahzmWxt
fHAAoKm6fqZjycF8XVKVjFd0KwJJQGus
=Jcn0
-----END PGP SIGNATURE-----

--hwvH6HDNit2nSK4j--
