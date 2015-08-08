Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E3A5E003D7; Sat,  8 Aug 2015 12:43:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31DE2E00349
	for <yocto@yoctoproject.org>; Sat,  8 Aug 2015 12:43:46 -0700 (PDT)
Received: by pabxd6 with SMTP id xd6so92320923pab.2
	for <yocto@yoctoproject.org>; Sat, 08 Aug 2015 12:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=aLtoRr1TQDJWCbUSg7ucAl0bkw89HPe2DaxofCGKGcw=;
	b=eij2Uhvh9LCwHS8cDyrUTsXAbue8zeRBMgCHZ9K/OdbBZMpMYBNyuZTJOyCaZ5uG6k
	uAyDp6SIWb/npCCYz+3go/Y3dUAymvDRryz+U7ILoJ4aMuMSj4GXqjo+fYZaRs6ehZkt
	BFe0AlclS8IJ1a9mLqeMFnWCM/eL8itG+QeqkVasAjnIs+o8KLkpC36o8ZqH8A6s+4Wx
	wqbuOA7bPb7ks17X1sfw1yv0Jb3P1TrWN+tqfrFrsc2Gjz4Fq534ZTIKq9Dv5HbWzzFn
	0z0OWRHU5qmQCljp95ZL/FfqnOvVIH29nxiummCqlCBOdf4FiyhoHjxFYyn/jixeTq0z
	6yjg==
X-Received: by 10.66.157.167 with SMTP id wn7mr28776198pab.119.1439063025918; 
	Sat, 08 Aug 2015 12:43:45 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:61b5:b56b:3665:2b08?
	([2601:646:8601:4580:61b5:b56b:3665:2b08])
	by smtp.gmail.com with ESMTPSA id
	fe8sm4303550pab.40.2015.08.08.12.43.45
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 08 Aug 2015 12:43:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACTu1LisUnCWjJxrPeUnYyZRpcAoCEA9YQ6QduJhDjH8DFEnYA@mail.gmail.com>
Date: Sat, 8 Aug 2015 12:43:37 -0700
Message-Id: <FA3BC399-97D4-4421-B556-0A879EA727B7@gmail.com>
References: <CACTu1LisUnCWjJxrPeUnYyZRpcAoCEA9YQ6QduJhDjH8DFEnYA@mail.gmail.com>
To: yocto yocto <yoctomailinglist@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: libmcrypt not part of the image
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
X-List-Received-Date: Sat, 08 Aug 2015 19:43:51 -0000
X-Groupsio-MsgNum: 25939
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B7884AF5-1558-480F-A813-6D3FF9E664E9";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B7884AF5-1558-480F-A813-6D3FF9E664E9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 7, 2015, at 2:25 AM, yocto yocto <yoctomailinglist@gmail.com> =
wrote:
>=20
> I added the meta-openembedded layer to my configuration. I want to =
have libmcrypt (in meta-openembedded/meta-oe/recipes-support) on my =
system:
>=20
> IMAGE_INSTALL +=3D "libmcrypt"
>=20
> The library (libmcrypt.so) is actually being built. Everything is =
located in "libmcrypt/2.5.8-r0/package/usr", however after flashing the =
image libmcrypt is not part of the filesystem.
>=20

build system has preset rules for shared libraries that follow the =
versioning scheme, in that scheme foo.so is a symlink to real shared =
object which is something like foo.x.y.z or something like that. then =
packager goes in and bundles the .so into -dev ipk and real shared =
object into proper ipk and all works. So is this library using =
versioning ? if not you have to jump through some hoops to let system =
know about that so it stats treating .so as final shared object and not =
as symlink.


> I tried writing some kind of "libmcrypt_%.bbappend" with
>=20
> do_install() {
> 	install -m 0755 ${WORKDIR}/package/usr ${D}/
> }

you need to specify filenames or wildchars something like  =
${WORKDIR}/package/usr/bin/mybinary or something like that look at =
manpage of install utility for more insights

>=20
> However, I get a bitbake error that do_install failed but there is =
exact message. Any ideas how to solve this properly?
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_B7884AF5-1558-480F-A813-6D3FF9E664E9
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXGW/AACgkQuwUzVZGdMxRhqACgg/Ki+69FUlsQ0pYXu4Sz601S
4l4AoJOukHfK4IEdlXb0iylu2W+PLhoW
=OboW
-----END PGP SIGNATURE-----

--Apple-Mail=_B7884AF5-1558-480F-A813-6D3FF9E664E9--
