Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D50BFE00764
	for <yocto@yoctoproject.org>; Sat, 18 Jan 2014 22:51:46 -0800 (PST)
Received: by mail-pd0-f181.google.com with SMTP id y10so2066117pdj.12
	for <yocto@yoctoproject.org>; Sat, 18 Jan 2014 22:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:user-agent:in-reply-to:references
	:mime-version:content-type;
	bh=YdS7Vurhht1eSzQs2ntXUfCGO9MOhC3TmBEEMov5FrA=;
	b=OfxrK38qwKMHK2TQrSdZrJqsfEbsgYgEfd9MvFtGF5vLg8B3VOdT2wyEak8gUU+q37
	bZ1AKVu4wbnsvYsKq2aCpkQVNAbmdyenXbc8/Nixsq5e/P4A51KxgpxkzySEH4rTZ+Ys
	XzU8esQfz5A78IwOtAQPy3MDmQVAHCsnSe83dZvL6dgry4H4oRBs4Lc0c6XduLdRLf9A
	9ydGW9MVdojvS3xDOM6a8TNWnphNM1qHrxEu3QRAELM0BjTtzLIuEt1ViXAQcxOvTO4Z
	4bMnRlsVjJwpVvkVnCXgyEbsIqmR9RznRanNpKiOdqz8/NvDZPEwVpoNX92ofWa7VKuS
	76Gw==
X-Received: by 10.66.142.107 with SMTP id rv11mr11821644pab.17.1390114306436; 
	Sat, 18 Jan 2014 22:51:46 -0800 (PST)
Received: from leo.localnet (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30]) by mx.google.com with ESMTPSA id
	sy10sm49040671pac.15.2014.01.18.22.51.44 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 18 Jan 2014 22:51:45 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 18 Jan 2014 22:51:43 -0800
Message-ID: <7724482.rWPM3HpHt3@leo>
X-Face: (*D:+-|[O9m:a&dKxg#R`m^Nxy<HmNPV<Ic-_>RMPm0'o70t~39kUjcE\?l`>41l^%&x; O
	ss*RIK.m#<6OwX.R&K={4[\RYyqeUgI^7G0BRJfLXVkrEjSlX5rk\rOt"ur?`%"2}`hDBt
	QHQ|<@r6-hq"([T&r02ayw^tEXBwsh6g%qt!Q?)*H$OE6mk^BUm30s`G[u:_wi&vIUh&Lh
	L_.\+; 0Q:nB(8TJq\bWseix)aav+[*-wMDT5+55W^jS%u-J{Hv)&lSoaU^m_+*>]"
User-Agent: KMail/4.12.1 (Linux/3.12.7-2-ARCH; KDE/4.12.1; x86_64; ; )
In-Reply-To: <52DA771E.50907@googlemail.com>
References: <52DA771E.50907@googlemail.com>
MIME-Version: 1.0
Subject: Re: How to fix : "WARNING: The recipe XXX is trying to install files into a shared area ..."
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
X-List-Received-Date: Sun, 19 Jan 2014 06:51:48 -0000
X-Groupsio-MsgNum: 17817
Content-Type: multipart/signed; boundary="nextPart35645581.PKQWnxEg11";
	micalg="pgp-sha1"; protocol="application/pgp-signature"

--nextPart35645581.PKQWnxEg11
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

On Saturday, January 18, 2014 01:44:14 PM Christian Ege wrote:
> Hi,
>=20
> I do have two recipes which install files in a shared area both packa=
ges
> install files with the same name but maybe with
> a slightly different content. So splitting packages will not be a goo=
d
> solution. What else can I do?
>=20
> I tried setting both packages to conflict each other that also did no=
t
> fixed things up.
>=20
> Are there any hints?

Rename one of the files or stash them in different directory heirarchy.=


>=20
> regards,
>=20
> Christian
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

=2D-=20
=2DKhem

--nextPart35645581.PKQWnxEg11
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEABECAAYFAlLbdgwACgkQuwUzVZGdMxQZGgCgk2K3GXhS9eMu3aGJtqTuNscC
AEQAn0j5EwEcnYBBhrBohCRHH63FF0OW
=N4aq
-----END PGP SIGNATURE-----

--nextPart35645581.PKQWnxEg11--
