Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f182.google.com (mail-ea0-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E05BE015C6
	for <yocto@yoctoproject.org>; Sat,  3 Aug 2013 04:17:05 -0700 (PDT)
Received: by mail-ea0-f182.google.com with SMTP id o10so751965eaj.41
	for <yocto@yoctoproject.org>; Sat, 03 Aug 2013 04:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=tail3JyM+Tl4wmCmdVqvL5oiPs1sxLj7fWCxpjT4zwg=;
	b=t9SFIRgGaijD5TtFCWw6ajhaJC5dxaVWIDVPR4r0/5j+HKZTMPyasiZtlXTY3+6Y/h
	2Yb49pJqq2Umy6EQcgnYqUjIYMBFjJZi/ElGOpPMqDhN998odaC4cCtV7xIBF5T9D99c
	LRoii38QArN5Vcqk7lCgRd3f7SB7nIK5Ug9f9j21BMNalSc8tcvVGAoAS/Gbplobm54n
	7QgQikxlPrYGnR7l3jh+JNcpY8Yq1WLYfybXlNqRWl68m4RXx1HK+jwVQuKu3G5kyCFN
	aTCzNkBDBVb31CDwtk5t1pArtdm0UXVncaXrzmRqsUygHDGXPfNjihtQ0+KawE71L/ou
	sAZg==
X-Received: by 10.15.24.9 with SMTP id i9mr9310592eeu.28.1375528624230;
	Sat, 03 Aug 2013 04:17:04 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	p5sm18419387eeg.5.2013.08.03.04.17.02 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Sat, 03 Aug 2013 04:17:03 -0700 (PDT)
Date: Sat, 3 Aug 2013 13:17:42 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20130803111742.GX3280@jama>
References: <CANyK_8e_1LtgJeFu=7m4qhepV-hZ=9Ji5H7hTuhbexs40qv5NQ@mail.gmail.com>
	<CANyK_8dfwsyoSd0eKncA59UbNFm_nUov6nOBs-kzqXUKO4wwFw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANyK_8dfwsyoSd0eKncA59UbNFm_nUov6nOBs-kzqXUKO4wwFw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Recipe naming
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
X-List-Received-Date: Sat, 03 Aug 2013 11:17:07 -0000
X-Groupsio-MsgNum: 15334
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ed2sj0fx90rgoibw"
Content-Disposition: inline

--ed2sj0fx90rgoibw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 03, 2013 at 12:07:41PM +0100, Paul Barker wrote:
> On 3 August 2013 11:52, Paul Barker <paul@paulbarker.me.uk> wrote:
> > Should I call this:
> >
> >     "opkg_testing.bb"
> >     set PREFERRED_VERSION_opkg =3D "testing" to use
> >
>=20
> Martin has just commented elsewhere that having this recipe in a meta-opk=
g layer
> will always override the recipe in oe-core:
>=20
> > You probably know about this already, but for other possible users of t=
his
> > layer:
> >
> > bitbake will always select "devel" version from meta-opkg layer if it h=
as
> > higher BBFILE_PRIORITY even if you put negative DEFAULT_PREFERRENCE into
> > "devel" recipes. Only if you put lower-than-oe-core BBFILE_PRIORITY in
> > layer.conf then it will force user to select "devel" version by
> > PREFERRED_VERSION.
>=20
> So maybe opkg-testing_{version} would work better.

opkg-testing with PROVIDES =3D "opkg" won't work well for runtime dependenc=
ies
(even if you add RPROVIDES unless something will explicitly pull
opkg-testing into the image - VIRTUAL-RUNTIME vars...)

I would name the recipe opkg_git.bb with PV corresponding to real
version based on SRCREV e.g. "1.9+git${SRCPV}".

with
BBFILE_PRIORITY =3D "4"
and
PREFERRED_VERSION_opkg =3D "1.9+git%"
it should work as expected

This should be discussed on oe-core ML rather then yocto ML.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ed2sj0fx90rgoibw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlH85tYACgkQN1Ujt2V2gByFGACfQwpGmKIs/w3OE6dTo+1UX8SC
la8An0d9Xp4zJ9FbhOloL6hm8Q18qSTi
=ekPb
-----END PGP SIGNATURE-----

--ed2sj0fx90rgoibw--
