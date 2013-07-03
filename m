Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42D58E013CB
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 05:31:16 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id c50so42872eek.39
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 05:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=c4uyhZJalnFaVHpl80WUpW6w8Z2coSC8izULY4LukHY=;
	b=w0GW9pjRAeHzWXPTKe6XezxkfpdtCi30nR3clscN8u0SFVE4QDp1TZrH64hO3Vvx1a
	1FhTiw+jqAP75YZ2ZEl852EKyjC+BG+E6DnSTDv/8iQQmFo0yZyjAuR2TBJUajT7zYLU
	dSK0A5x0gFDqhrjAJi5R+CgeGe1pf0pxH7HyGElPd98ApuwFrxte5e3uQyKYIgjp26dn
	mVtutRvxnTsTbZD6mUKxSK1Kus55IERsNgWOImUhH9bJYjdkzYQ5SuT32awI4zFnJj6o
	wBZOXZzbuCZeXTQRdeTw67aFzAqB6qWZHvD+WKD4oVgS5Yix3KLyz1hIaWrKo5bhip42
	lnRQ==
X-Received: by 10.15.36.133 with SMTP id i5mr912803eev.52.1372854675456;
	Wed, 03 Jul 2013 05:31:15 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	n5sm43894532eed.9.2013.07.03.05.31.14 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 03 Jul 2013 05:31:14 -0700 (PDT)
Date: Wed, 3 Jul 2013 14:31:16 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20130703123116.GA3452@jama>
References: <1372850887-10185-1-git-send-email-sergey_matyukevich@mentor.com>
	<CAJTo0LYDTjrq+aSQK638pedtiCpX+_a7uzYwd1Gbe0F41T7p6A@mail.gmail.com>
	<51D4120F.6040306@mentor.com>
	<CAJTo0LagT0i=JkkxEkd1mPbNH-F17vV9z4Pw9-bf8yNAUE0XHA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LagT0i=JkkxEkd1mPbNH-F17vV9z4Pw9-bf8yNAUE0XHA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-ivi] [PATCHv2] connman: do not delete init scripts in bbappend
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
X-List-Received-Date: Wed, 03 Jul 2013 12:31:17 -0000
X-Groupsio-MsgNum: 14816
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cWoXeonUoKmBZSoM"
Content-Disposition: inline

--cWoXeonUoKmBZSoM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 03, 2013 at 01:09:47PM +0100, Burton, Ross wrote:
> In that case, you can delete INITSCRIPT_NAME and INITSCRIPT_PARAMS too
> surely.  Then all you're left is the PRINC, so you can delete that if
> you don't care/are using the PR service, or delete that bbappend when
> connman 1.16 is integrated.

Using PR service isn't enough to keep binary feed sane after removing
PRINC.

PR service bumps least significant number in PKGR value. PRINC bumps
most significant (even from INC_PR when used).

INC_PR =3D "r1"
PR =3D "${INC_PR}.1"
PRINC :=3D "${@int(PRINC) + 1}"
EXTENDPRAUTO =3D ".1"

PKGR =3D "r2.1.1"

After removing PRINC, EXTENDPRAUTO is bumped, but still PKGR is lower:

PKGR =3D "r1.1.2"

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--cWoXeonUoKmBZSoM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlHUGZQACgkQN1Ujt2V2gBypUwCgmHq8LqvlBYLxMrnKp+OvsXq/
ThsAnifAlbF/F8QcXTRQpson43pX9Orj
=Bx61
-----END PGP SIGNATURE-----

--cWoXeonUoKmBZSoM--
