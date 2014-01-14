Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75517E0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:47:43 -0800 (PST)
Received: by mail-ee0-f42.google.com with SMTP id e49so232710eek.29
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=waJamzDapneBMb2BtJtULabDOYxKf3g7KMSBdB3LJBc=;
	b=QIjGVaJ4Wo5tqUPEa9DrucLUd4EY2eUrNnHiCNn3O3QuOBEHc5ha1cjk1S0JBy1Lvn
	pIAq0xtfcNc/o/qdrbjEomoyZIKfqYM3URT/JzNzQfhwTV8lzYkbtvd8Hud25pjcRgZo
	k4Z/w3EtPb6vmA/9D98zWOUh6ZJnQGCcSJ4rID9Ogi+RY7CU63jIEiJ8OCITOheAb+fM
	KCTSqbX02tvdZcugw8vuRParHMQZ4nXpRFSWEfFRGwoLaP97WZPZ8CAn7yCyMkrtUMnZ
	xDtfZZj/pbuXgct1VAxsn4Fi0TDbhHg52a2Gp21chtd0wavhkHVyI7HI3nIXnXtYE0CM
	Cd4w==
X-Received: by 10.15.91.3 with SMTP id r3mr2511853eez.18.1389707262335;
	Tue, 14 Jan 2014 05:47:42 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id 7sm1773179eee.12.2014.01.14.05.47.38
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Jan 2014 05:47:41 -0800 (PST)
Date: Tue, 14 Jan 2014 14:47:54 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20140114134754.GD3717@jama>
References: <52D536A0.5060307@mlbassoc.com>
	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
	<52D53908.30304@mlbassoc.com>
	<CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>
	<52D53D02.1050207@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <52D53D02.1050207@mlbassoc.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: gstreamer without X11?
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
X-List-Received-Date: Tue, 14 Jan 2014 13:47:44 -0000
X-Groupsio-MsgNum: 17771
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FFoLq8A0u+X9iRU8"
Content-Disposition: inline

--FFoLq8A0u+X9iRU8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 14, 2014 at 06:34:58AM -0700, Gary Thomas wrote:
> On 2014-01-14 06:32, Burton, Ross wrote:
> > On 14 January 2014 13:18, Gary Thomas <gary@mlbassoc.com> wrote:
> >>>      I don't understand why this happens though as the gst-plugins-ba=
se
> >>>      recipe uses PKGCONFIG to control this:
> >>>         PACKAGECONFIG ??=3D "${@base_contains('DISTRO___FEATURES', 'x=
11',
> >>> 'x11', '', d)}"
> >>>         PACKAGECONFIG[x11] =3D "--enable-x --enable-xvideo,--disable-x
> >>> --disable-xvideo,virtual/__libx11 libxv libsm libice"
> >
> >
> > Check that gst-plugins-base resolved PACKAGECONFIG hasn't been
> > explicitly set somewhere (again, use bitbake -e gst-plugins-base).
>=20
> Not sure exactly what you mean, but this showed nothing as well:
>    $ bitbake -e gst-plugins-base | grep PACKAGECONFIG

nothing? It should show at least assignment of empty value and a lot of
PACKAGECONFIG usages.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--FFoLq8A0u+X9iRU8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlLVQAoACgkQN1Ujt2V2gBxAhQCgiLeDiU08kEMc0zjwrKmtAhhQ
sG8AoLezTl2H8rPoFCkjJJ/W0kRXrMWa
=vTT2
-----END PGP SIGNATURE-----

--FFoLq8A0u+X9iRU8--
