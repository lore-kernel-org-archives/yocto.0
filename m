Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B919CE003D8
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 23:08:31 -0800 (PST)
Received: by mail-pd0-f180.google.com with SMTP id x10so5216080pdj.11
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 23:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-type;
	bh=jpeT2deWUIgOTfQczSrQIi+eEP1plNPT8g2GkRknj0E=;
	b=DIiAiGqVDLr/oOHNkdalQp3BOI+Il7KQBBpHm/GGEBZDbqkLhgESZnPxz8dxvkGXlT
	qYeO9JjFIq6QlsfX5O+H9aNTjI3JBEcOLGWE6vh7BRinFAVZYopfzs5ij6Vr667+wxQa
	B0Hprr7Q+CijHnvS0RLfm08JNo2OGgsrPhDC/GjtkGavx7GzLHPJ3MG/UxJZUNXZOSrc
	Uy8PK70tGmTDpw+fxeyuFaH/Y8qlVzMt9Sde6vr7cMD1LHITUJS+TOhyRTfrmkE/shuQ
	mtAVMVyLmzQlY1bkzyb0HGZkDkgtRUCiByXhPWTzXVY1wxci0tO0k+yxrnxDrtfIrUVG
	cRMQ==
X-Received: by 10.68.12.138 with SMTP id y10mr16918476pbb.101.1390201710917;
	Sun, 19 Jan 2014 23:08:30 -0800 (PST)
Received: from leo.localnet (108-65-193-118.lightspeed.sntcca.sbcglobal.net.
	[108.65.193.118])
	by mx.google.com with ESMTPSA id un5sm656266pab.3.2014.01.19.23.08.29
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Jan 2014 23:08:29 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
Date: Sun, 19 Jan 2014 22:43:55 -0800
Message-ID: <77247586.nOUUETFFot@leo>
X-Face: (*D:+-|[O9m:a&dKxg#R`m^Nxy<HmNPV<Ic-_>RMPm0'o70t~39kUjcE\?l`>41l^%&x; O
	ss*RIK.m#<6OwX.R&K={4[\RYyqeUgI^7G0BRJfLXVkrEjSlX5rk\rOt"ur?`%"2}`hDBt
	QHQ|<@r6-hq"([T&r02ayw^tEXBwsh6g%qt!Q?)*H$OE6mk^BUm30s`G[u:_wi&vIUh&Lh
	L_.\+; 0Q:nB(8TJq\bWseix)aav+[*-wMDT5+55W^jS%u-J{Hv)&lSoaU^m_+*>]"
User-Agent: KMail/4.12.1 (Linux/3.12.7-2-ARCH; KDE/4.12.1; x86_64; ; )
In-Reply-To: <CABhkJRc_V2uA40Hct1FbJ8GpBMSsum+NRm8Hkq9Z18spqfWxag@mail.gmail.com>
References: <CABhkJRcAAvORSQ0d_bhEi5eX9yJfOLQ32gHiQHN4074ptDJXrQ@mail.gmail.com>
	<CABhkJRf5PSkpjwzdD2Wweo02QTV2vLq9WSL33aY7+7dKRBfeog@mail.gmail.com>
	<CABhkJRc_V2uA40Hct1FbJ8GpBMSsum+NRm8Hkq9Z18spqfWxag@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: meta-oracle-java fails
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
X-List-Received-Date: Mon, 20 Jan 2014 07:08:34 -0000
X-Groupsio-MsgNum: 17833
Content-Type: multipart/signed; boundary="nextPart36598457.ID9ecpi4PR";
	micalg="pgp-sha1"; protocol="application/pgp-signature"

--nextPart36598457.ID9ecpi4PR
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

On Monday, January 20, 2014 11:15:44 AM Ashish Dalela wrote:
> I need help on this one to resolve the problem. I have noticed that t=
he
> Java download from Oracle website has library dependencies on both .5=
2 and
> .53 versions. This in itself is unusual because in Yocto we expect on=
ly one
> library version. But, as it may be, to use this recipe I need to get =
two
> versions of libav.
>=20
> 1. How can I force libav recipe to build two versions (.52 and .53) i=
nstead
> of one? I am currently copying .53 to .52 in the do_install_append, b=
ut it
> doesn't seem to help.

you can add a new recipe something like libav52.bb which installs .53
make sure that library package renaming doesnt create same providers in=
 both
.53 and .52 versions

>=20
> 2. How does Yocto build determine that a package does not support a
> particular version? What files/data is it looking up before it comes =
to
> that conclusion?
>=20
> Thanks
> -Ashish
>=20
> On Sat, Jan 18, 2014 at 1:46 AM, Ashish Dalela=20
<ashish.dalela@gmail.com>wrote:
> > I already have the following in my jdk and jre recipes:
> >=20
> > DEPENDS =3D "libav gtk+ libxslt libxtst"
> >=20
> > Should I have RDEPENDS?
> >=20
> > Thanks
> > -Ashish
> >=20
> > On Sat, Jan 18, 2014 at 1:23 AM, Khem Raj <raj.khem@gmail.com> wrot=
e:
> >> On Fri, Jan 17, 2014 at 11:46 AM, Ashish Dalela <ashish.dalela@gma=
il.com>
> >>=20
> >> wrote:
> >> > Hi,
> >> >=20
> >> > I'm trying to build JDK and JRE using the meta-oracle-java recip=
es. The
> >> > recipes build fine, but during do_rootfs (core-image-basic) I se=
e the
> >> > following errors:
> >> >=20
> >> > FOR JRE:
> >> > | Computing transaction...error: Can't install
> >> >=20
> >> > oracle-jse-jre-i586-1.7.0-u25r0@i586: no package provides
> >>=20
> >> libavcodec.so.52
> >>=20
> >> > FOR JDK:
> >> > | Computing transaction...error: Can't install
> >> >=20
> >> > oracle-jse-jdk-i586-1.7.0-u51r0@i586: no package provides
> >> > libavcodec.so.52(LIBAVCODEC_52)
> >> >=20
> >> > meta/recipes-multimedia/libav/libav_0.7.4.bb builds libavcodec.s=
o.53.
> >> >=20
> >> > Does anyone know how to fix this issue?
> >>=20
> >> add libav to DEPENDS in recipe which is providing oracle-jse-jdk
> >>=20
> >> > I already tried manually copying libavcodec.so.53 to libavcodec.=
so.52
> >>=20
> >> but it
> >>=20
> >> > does not help.
> >> >=20
> >> > Thanks
> >> > -Ashish
> >> >=20
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto

=2D-=20
=2DKhem

--nextPart36598457.ID9ecpi4PR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEABECAAYFAlLcxbkACgkQuwUzVZGdMxR52QCfbifsMzMt2V8v9qqrUXsMj1jX
ZDgAoIzPM9iauhj3grAIhFo0wSIvXxSf
=TGL5
-----END PGP SIGNATURE-----

--nextPart36598457.ID9ecpi4PR--
