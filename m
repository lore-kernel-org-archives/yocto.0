Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7225BE00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 12:46:37 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id dt10so2723778wgb.11
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 12:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=L7UiJNwJuHS20IpopICu7virb4xllG8SFYCeBM3fPu8=;
	b=wYj6boD1LVIfMHAxhPGR+0TW99ZUWwzuOeefQvkXHH3Cupc9kj+Eqp6QO9S6dlWT5N
	b6/gw1C3hcDVOvlSq0hBdrgxr/feksGbDZMy7cobJHxoBwONqWXC9Nlr72s/k4SCfhX2
	/ML03LqY5/cFKuef627r5k6pzc7w5M6h3kF/JFlYMyvV8ErZ3/B6lMaEuihMmNHQ7ljg
	FFJR6VG2zfhY+u1DK03tiIepRkAsnMDwwDGezcyKGfX/xNtxs3mtsyOTX46O5BOm0yJU
	mbJz51/96G+OYs5KTOxljqhDZ4iePEC0ECB6xH6EANGflFdsRA+Gs3jyZ9wk2gEBis+v
	2oZw==
Received: by 10.180.94.102 with SMTP id db6mr317797wib.20.1351021596071;
	Tue, 23 Oct 2012 12:46:36 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id ay10sm418719wib.2.2012.10.23.12.46.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Oct 2012 12:46:34 -0700 (PDT)
Date: Tue, 23 Oct 2012 21:46:51 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
Message-ID: <20121023194651.GV3269@jama.jama.net>
References: <DDDB9E6645DE24488B8485B41A051F471D969119@Mercury.usurf.usu.edu>
MIME-Version: 1.0
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D969119@Mercury.usurf.usu.edu>
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
X-List-Received-Date: Tue, 23 Oct 2012 19:46:37 -0000
X-Groupsio-MsgNum: 10231
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qa1NXTiqN6KSzHv0"
Content-Disposition: inline

--qa1NXTiqN6KSzHv0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 23, 2012 at 07:33:44PM +0000, Jonathan Haws wrote:
> When I run 'bitbake linux-yocto -c menuconfig' I was not getting a menuco=
nfig - I had to tell my local.conf to use screen because auto was selecting=
 a gnome terminal which would resize itself to something too small and menu=
config would exit with an error.
>=20
> Now I can get menuconfig and make changes, but it is extremely difficult =
to read.  I have attached a screenshot of what I am talking about.
>=20
> Can anyone point me in the right direction on how to fix this?  I would l=
ike to use the correct commands so that I don't mess anything up.  Right no=
w I have resorted to running menuconfig down in my build directory where th=
e .config file is stored with the kernel source.

see this thread
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-June/024199.html

there are some solutions for this (you have to follow it in later months
then 2012-June too).

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--qa1NXTiqN6KSzHv0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlCG9CsACgkQN1Ujt2V2gBzgAACfS2A7BlE1hNe88962NJUAiZ0m
Y6AAoIK7FNLx51cb97EQdoO8tHOU/Vh2
=SdZ7
-----END PGP SIGNATURE-----

--qa1NXTiqN6KSzHv0--
