Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web09.4379.1582199746648765833
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 03:55:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lmZLZAVL;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id a6so1735793wme.2
        for <yocto@lists.yoctoproject.org>; Thu, 20 Feb 2020 03:55:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=G8mgLdwRBQYhOPus6QPk9LzIbq16c64wUF5BQd3yH8o=;
        b=lmZLZAVLQPnEyZd5CttkrZ9Icw/uOhaXtqFiJ5tjg8KghlbxW5iSBveeXh7j+mekBu
         BaL4A2WQeok5i+/MSrO6SwSgo797WJ8rMvXFEHJ4BLn8O9NCVtJ9IfQJEkzhD8USIScK
         dRVr1xrwr6CDEAeMHt/HKriJ2h+/18K/m5IH5JsS8Gd2onpsoweErhdrELNvfPljq147
         K+z+NMDjRUF1FQr5qVkeZ9rWGvr3A4NCftYISKaxkzdUs0qo+p0svhwwQE1OdW19qxd/
         2akth7eppg9Uu22Pt7R0BUL9R8wrwK8rTwH2MkI/oP7TpZgk4F++aCOppCdwmsv6GVwc
         +bGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=G8mgLdwRBQYhOPus6QPk9LzIbq16c64wUF5BQd3yH8o=;
        b=hEa0ime0fSfSvGfLzJOecZmbISniN5++EChzZku5Mh9uI0wvUdBWSbtS54eqJL1nTk
         WxUo3LvZcoJSnphtQ0Y2cCSQpXhFJ8dwKPI0Qb2esS3ZhjqBG9hE39BhrARfJAbkHwdB
         5j6eX+HuKp8hqG1q+QUbLNfImPKnWYdnTnUBvG2Z6DGlOsfcy+pS+TKUuDd5CfXaeBky
         pRYOOUxLaSt5WK6vHYzFaB/6Au2yNYWtN9ou8Qwjs9Q1Aq5Ex/IW0IN8Di5CmyNYHjiN
         YFychCKcWIfvYEz2njRq3UrPHBGlWTU+127oRrFzUzSlO7kCXwiP5mZmpRatcyJLdq0b
         iI+A==
X-Gm-Message-State: APjAAAVCYPxusgnEDlSESEKl9uF8HdzMaRaqHOVqch2HU5VNuHZ5ZA2b
	7t64H2qxMziINwyJj3ZFL1U=
X-Google-Smtp-Source: APXvYqw2kPrygsNqoGueS70bBSq8AUDshSLDD7avuy8aiA+Dxo0kFi3SX19INYksDo0ZQxCzReCOFA==
X-Received: by 2002:a7b:cd8e:: with SMTP id y14mr4202952wmj.150.1582199745163;
        Thu, 20 Feb 2020 03:55:45 -0800 (PST)
Return-Path: <martin.jansa@gmail.com>
Received: from localhost ([109.238.218.228])
        by smtp.gmail.com with ESMTPSA id t187sm4489092wmt.25.2020.02.20.03.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 03:55:44 -0800 (PST)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 20 Feb 2020 12:55:43 +0100
To: Mikko.Rapeli@bmw.de
Cc: j.armandohernandez.j@gmail.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] how to reuse generated library in a nativesdk recipe #sdk #systemd
Message-ID: <20200220115543.2f3hnbia5tytxfeq@jama>
References: <m6OI.1582105039365385215.XDJN@lists.yoctoproject.org>
 <20200219094422.GV104502@korppu>
 <CA+chaQeh2s-T-qXABAkr_28Wp2UZe0-WkZCEOuZ52cnUYtQsfg@mail.gmail.com>
 <20200220081404.GF104502@korppu>
MIME-Version: 1.0
In-Reply-To: <20200220081404.GF104502@korppu>
User-Agent: NeoMutt/20180716
X-Groupsio-MsgNum: 48529
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ycyrl3tva6bq5l4r"
Content-Disposition: inline

--ycyrl3tva6bq5l4r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 20, 2020 at 08:14:04AM +0000, Mikko.Rapeli@bmw.de wrote:
> On Wed, Feb 19, 2020 at 10:57:41PM +0100, Martin Jansa wrote:
> > > DEPENDS_class-target +=3D "systemd"
> >=20
> > You surely meant
> > DEPENDS_append_class-target =3D " systemd"
> > here
>=20
> Yes, quite likely. Tough reason why +=3D doesn't work is a mystery to me=
 :)
>=20
> I hack things until "bitbake -e" shows the right things for the recipes.

I agree it's a bit confusing at first (I was doing the same long time
ago, before bitbake -e was even showing the history of evaluation), but
everybody who uses bitbake often should learn this simple difference:

FOO_append_override =3D " bar"
  is "conditional" append, so it will append "bar" only when "override" is
being used

FOO_override +=3D "bar"
  always appends to "FOO_override" and then it overrides whole "FOO" varia=
ble

There are other more subtle differences like "+=3D" adds leading space,
_append doesn't and _append is processed later (which is important when
appending to variable set with ?=3D), but the above difference is a must
to know.

Also
FOO_append +=3D "bar"
is just silly way how to add leading space to the value, one should
always use
FOO_append =3D " bar"
when appending to space separated list (like DEPENDS).

Cheers,

> -Mikko
>=20
> > On Wed, Feb 19, 2020 at 10:48 PM Mikko Rapeli <mikko.rapeli@bmw.de> wr=
ote:
> >=20
> > > Hi,
> > >
> > > On Wed, Feb 19, 2020 at 01:37:19AM -0800, Armando Hernandez wrote:
> > > > Hello,
> > > >
> > > > I have a recipe that builds a library. The recipe specifies an
> > > additional package "${PN}-systemd" along with other systemd related
> > > variables and finally it instructs that the package should be built =
with
> > > "-DWITH_SYSTEMD=3DON" being passed to cmake. So far so good. But, I =
extended
> > > this recipe to nativesdk because I need this library on it. When try=
ing to
> > > build the corresponding nativesdk package, the build fails at the
> > > configuration step (i.e. "do_configure") claiming it cannot find the
> > > package systemd.
> > > >
> > > > Is there a way I can install the -already-generated libraries into=
 my
> > > SDK (potentially via the corresponding nativesdk recipe) without hav=
ing to
> > > rebuild the package? Or do I need to somehow include such systemd pa=
ckage
> > > in my sdk (which I don't think I need at all)?
> > > >
> > > > Any hints and pointers as to were to look at are very well appreci=
ated.
> > > > Thanks.
> > >
> > > Make the systemd dependency for target only, e.g. DEPENDS_class-targ=
et +=3D
> > > "systemd"
> > > etc.
> > >
> > > There may be relevant use cases to build some of systemd components =
or
> > > tools
> > > to native or nativesdk targets too. In that case add BBCLASSEXTEND +=
=
=3D
> > > "nativesdk" etc
> > > in a bbappend to systemd.
> > >
> > > Hope this helps,
> > >
> > > -Mikko
> > >

--ycyrl3tva6bq5l4r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXk5zvAAKCRA3VSO3ZXaA
HEcdAJ0UiwLpwKf8DErx83IgN1vD+NObSgCeJRYdoZPukh94Ey5gNz+AWe88gig=
=5sLA
-----END PGP SIGNATURE-----

--ycyrl3tva6bq5l4r--
