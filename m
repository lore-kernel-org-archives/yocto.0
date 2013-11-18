Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 982E2E0053B
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 12:17:00 -0800 (PST)
Received: by mail-ee0-f42.google.com with SMTP id e52so2810860eek.1
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 12:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=J5owoo3azGTQDD6IVXkZcRxeuwIACYZkQqF3mTqBWNE=;
	b=DBXGn8rRtI2VJkwk9Eo44PYu8sg38NyxbMSKpK05tm2TJLZ74y5AZz3M2vqRZPwLuL
	aDablKCCUGIvsA2rtMcbActQG/ipzCIDlTTkNxchOTXmKppDJeO3HAIgsqgMYZ524D8O
	NdWKazCzxuf3ISUTDMaIMCt9BTIHR83LtiQuxIS0Sb/0IHAsQl2gBVsr5KAYumvjw0id
	vqJRxC0J3rdexRSntu00waW5ig672p61HyB4vESjCg3mFh8tW56tUMH7WYU5kIw6muC/
	3WnmJ7xsJ2H271TrAro8e7/rz2YwFOonnrVpabZAMqzHU1+ikvfBxqIst9Vpz/GF1qMu
	zV6w==
X-Received: by 10.14.216.136 with SMTP id g8mr4931133eep.61.1384805819811;
	Mon, 18 Nov 2013 12:16:59 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id o45sm23127301eep.2.2013.11.18.12.16.58
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 18 Nov 2013 12:16:58 -0800 (PST)
Date: Mon, 18 Nov 2013 21:16:59 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Spenner <gwt.scott@gmail.com>
Message-ID: <20131118201659.GJ3727@jama>
References: <loom.20131118T201313-225@post.gmane.org>
MIME-Version: 1.0
In-Reply-To: <loom.20131118T201313-225@post.gmane.org>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: How to add modphp
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
X-List-Received-Date: Mon, 18 Nov 2013 20:17:05 -0000
X-Groupsio-MsgNum: 17227
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="u3W6riq+uV6J42Ub"
Content-Disposition: inline

--u3W6riq+uV6J42Ub
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 18, 2013 at 07:23:28PM +0000, Spenner wrote:
> Hi!
>=20
> I am trying to add modphp to my image and always seem to get
>  the same build error;
>=20
> ERROR: Task 2693
> (/home/gw/sources/meta-openembedded/meta-oe/recipes-support/
> mysql/mariadb-native_5.1.67.bb,do_compile) failed with exit code '1'

read log.do_compile, hard to say what went wrong when you don't share
any details

> I can add the apache2 package and the image will build and work fine but
> when I add modphp in the same fashion, i get the build error above.
>=20
> Is there any dependencies for modphp that I could be missing?=20
>=20
> Thanks for any insight!
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--u3W6riq+uV6J42Ub
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlKKdbsACgkQN1Ujt2V2gBxaKwCgsFihZfhAFjBbD7el/8BvLDLI
l1UAn3nU74ZEQhBeneTlcn5lElOjcy5L
=RYwN
-----END PGP SIGNATURE-----

--u3W6riq+uV6J42Ub--
