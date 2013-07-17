Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f44.google.com (mail-ee0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C807E0071F
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 08:28:08 -0700 (PDT)
Received: by mail-ee0-f44.google.com with SMTP id c13so1142089eek.3
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 08:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=B045dpJMsItalgGBQbZFTB9CadbKemLkRfsOgWqc13Y=;
	b=xZjxnzJlxTaijKy5L28hhsZn+VC7HeWGC3h/B/jNyOToSXGVlY8W3qRpKrkQ5JHhuK
	YgPF5RaD0GRXk0eOaFiDz/htZwduB6KPx0K+HC79kvwfMPTa7eQllN5uzcDy4Mu7AbAG
	Kj6hdmhd5ylNxDGQL5nBTFvdpi1A47fXWsGhIVjuKVtEBNl4TFVDaFP58Hyq2kQ0E8da
	0T5uFeicxreFEr5/2hutg8WMhuCuRK3cpw+QGP0G+ytcFvTfrCS9ZMFbngoX25TKidqK
	y7WtbaKvLw7gkQqoaqJjKt1VlH6DtOA8DyUYWXd9VIjocOYoDyE2Uo6umLz2BQkBG6PV
	qxAg==
X-Received: by 10.14.53.75 with SMTP id f51mr7031310eec.30.1374074887870;
	Wed, 17 Jul 2013 08:28:07 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	a4sm11719793eez.0.2013.07.17.08.28.06 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 17 Jul 2013 08:28:07 -0700 (PDT)
Date: Wed, 17 Jul 2013 17:28:24 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Tino Breddin <tbreddin@tpip.net>
Message-ID: <20130717152824.GC9527@jama>
References: <2018085420.634497.1374059058554.JavaMail.root@tpip.net>
	<2109127027.634544.1374059656770.JavaMail.root@tpip.net>
MIME-Version: 1.0
In-Reply-To: <2109127027.634544.1374059656770.JavaMail.root@tpip.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Problem with AUTOINC and ipk
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
X-List-Received-Date: Wed, 17 Jul 2013 15:28:09 -0000
X-Groupsio-MsgNum: 15007
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="tqI+Z3u+9OQ7kwn0"
Content-Disposition: inline

--tqI+Z3u+9OQ7kwn0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 17, 2013 at 01:14:16PM +0200, Tino Breddin wrote:
> Hi there,
>=20
> We are having problems with using AUTOINC together with the ipk package f=
ormat. I'm not sure whether this issue applies to rpm and deb as well.
>=20
> Given the following configuration in a recipe:
>=20
> SRCREV =3D "AUTOINC"
> PV =3D "git${SRCPV}"
> PR =3D "r0"
>=20
> The generated package will have a version like this:
>=20
> git0+e6d1870200802f32e17e334272191397e15aec53-r0
>=20
> In case the latest Git revision changes, the new package would have the v=
ersion:
>=20
> git0+30249a36b39482a98772c881334ee703715a54cc-r0
>=20
> My understanding is that the first integer before the + is meant to be in=
cremented monotonically to allow the package manager to figure out that a u=
pgrade is available. Where is the state for this integer kept? Obviously if=
 2 developers build the package independent from each other it would always=
 be 0 initially. But it will stay 0 for a single developer too if the packa=
ge is cleaned first. At least that is what we are seeing.
>=20
> I'd appreciate any feedback on how to handle recipes which should follow =
the Git HEAD.

Before PR service it was using bitbake's persistent cache in
PERSISTENT_DIR, now PR service is used for that:

https://wiki.yoctoproject.org/wiki/PR_Service

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--tqI+Z3u+9OQ7kwn0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlHmuBgACgkQN1Ujt2V2gBzPpgCfVXrIxA+uAgykxqYLuoGed9F9
llAAn1mevIdex/Lrc0fQDFUugInW/cjK
=oFdt
-----END PGP SIGNATURE-----

--tqI+Z3u+9OQ7kwn0--
