Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.186.1582658902568313808
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 11:28:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eFtshZg8;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E805E0175E; Tue, 25 Feb 2020 11:28:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C48C3E003DB
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 11:28:20 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id j7so3657177wrp.13
        for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 11:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kDh8aOS548KHCLNpRmlp2HWTf1R3DGUPXpTTVGUKnXk=;
        b=eFtshZg8HecA7ThJoz++iA3XAKdHUnt8+Qrc0+EpopPGPmWSM91JBqU8n7e58Rvbod
         4BoGUwIEoFb3ZvYUKgA4UtS4Wybqay62+xlcuqDIroaBgvTfZagTYJSd13odXfyyo1Yx
         pqrbQJ32BBPKd5UJY/OIBJbqtK5i5m/riLMKpMwXbtLx8RDBbe2eCdQCEurcacEUPb9l
         cXjOrGegu1nThg0/+8Go3T/TvPk7qUgF5bEtfgTnqBQqT3V+vxT53X2anfNu/1a4xFOm
         xWupLQbggyJDx+S6l5jr1C+yd9pjIkz5opLnk+IHpo9JzldE7gMlV8KK80Um3XwJKAl0
         jcCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kDh8aOS548KHCLNpRmlp2HWTf1R3DGUPXpTTVGUKnXk=;
        b=VwnY+r5mLQ/wKeF3eD27kwZY/2fl+vVR7Uv2MWp6XgcwyZkrO5OSVVchTbsrudud2g
         RmJ8GrpTcgKuHyKFouNF6ctFTWbEX/yt+qCZox59E4D9ix26d8hlvcGUoC0pyykox7PE
         2C6UmN7cIL2IAmczjS0KFXK3Bzz3YgQZyaBw7lVHE+WP+Tj9aFt9kYu/SQBt4MwUVk+N
         VZwwDfUaUI1JKJWGhquFAQzG1DjiZq5Z1f5j/5fTKbcQ1A+qTjkaUuVEixyzTIBINwLE
         C3riLGbd3P0WAt6FWorglixUL0w7BL8Z7pTGa0vD2YVVuzYLfmHkSTQygjrvPSz3cqSS
         N1qg==
X-Gm-Message-State: APjAAAU7qkBvyuKydC7gmkRB0Lm3/d2OigPpsGb+GRsMbXOkhjd2ArAj
	Bfz3p/7cehznf5zP3i6fDCk=
X-Google-Smtp-Source: APXvYqw8I4o5movT0/uQ3yhjWXCJyj6pvsprjfPXgdKxOwiBZJLbASwhmOZcPVqTBJaFvBfaiNYoTA==
X-Received: by 2002:adf:de10:: with SMTP id b16mr626116wrm.145.1582658899762;
        Tue, 25 Feb 2020 11:28:19 -0800 (PST)
Received: from localhost ([109.238.218.228])
        by smtp.gmail.com with ESMTPSA id z1sm5315231wmf.42.2020.02.25.11.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 11:28:18 -0800 (PST)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 25 Feb 2020 20:28:18 +0100
To: Joel A Cohen <aaron@assonance.org>
Cc: Denys Dmytriyenko <denis@denix.org>,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] Using "latest git" versions of recipes
Message-ID: <20200225192818.bbv3zouozqbxvta4@jama>
References: <CAFSZm+g8iFD3XgDK9XbcQmzDJdH70=URXXqZdMPcEjT2wU286Q@mail.gmail.com>
 <20200225183024.GA1578@denix.org>
 <CAFSZm+jMJYU3JNCSQLNQwXs0chBh-yoYx2vE2v+Eti=xTDZYsg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFSZm+jMJYU3JNCSQLNQwXs0chBh-yoYx2vE2v+Eti=xTDZYsg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Groupsio-MsgNum: 48603
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mnikszt7zhz5iqzq"
Content-Disposition: inline

--mnikszt7zhz5iqzq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 25, 2020 at 02:10:15PM -0500, Joel A Cohen wrote:
> Hmm, that is a very good suggestion that I hadn't thought of. I guess th=
e
> only disadvantage is that PV doesn't get changed so you end up having to
> keep track of which "recipe_1.0.0.rpm" is the test one and which is the
> good version, but even that you could probably do:
>=20
> SRCREV_pn-recipe1 =3D "${AUTOREV}"

You can put these in .inc file so that other people can enable it for
the same group of recipes in one "require" line in local.conf.

> PV_pn-recipe1 =3D "1.0.1+git${SRCPV}"  # I'm not sure if this would actu=
ally
> work?

Yes, this is how SRCPV is supposed to be used, but you can have this in
the normal recipe without the override.

You can also use one of the bbclasses like:
meta-openembedded/meta-oe/classes/gitpkgv.bbclass
to have nicer versions, if the components have some usable git tags

> My bbclass thing is a little easier if you have to do a bunch of those, =
but
> maybe not worthwhile then.
>=20
> Thanks!
> Aaron
>=20
>=20
> On Tue, Feb 25, 2020 at 1:30 PM Denys Dmytriyenko <denis@denix.org> wrot=
e:
>=20
> > On Tue, Feb 25, 2020 at 01:21:53PM -0500, Joel A Cohen wrote:
> > > Hi all,
> > >
> > > What I've done for quite a while when creating recipes for code that=
 is
> > > under heavy development is create 2 version of the recipe.
> > >
> > > 1) recipe_1.0.0.bb (a known-stable recipe)
> > >
> > > 2) recipe_git.bb (which contains something like:
> > > SRCREV=3D"${AUTOREV}"
> > > SRCPV=3D"1.0.1+git${SRCPV}"
> > > DEFAULT_PREFERENCE =3D "-1"
> > >
> > >
> > > The major problem I have with this, is that it defeats BB_NO_NETWORK=
,
> > even
> > > if I'm not using the git version of the recipe (because bitbake want=
s to
> > go
> > > check what the latest version is of the recipe during parsing).
> > >
> > > I'm currently experimenting with a different approapch, which seems =
to
> > have
> > > several advantages. I wanted to share it and get commentary.
> > >
> > > 1) Add a new class, "use-git.bbclass":
> > > # This allows using the latest version of the source without requiri=
ng a
> > > separate
> > > # "recipe_git.bb". To use:
> > > # 1) Add: INHERIT +=3D "use-git"
> > > # 2) Add: GIT_PNS =3D "recipe1 recipe2 etc"
> > >
> > > GIT_PNS ?=3D ""
> > > GIT_PNS[type] =3D "list"
> > >
> > > python () {
> > >     pn =3D d.getVar('PN')
> > >     git_pns =3D d.getVar('GIT_PNS', [])
> > >
> > >     if pn in git_pns:
> > >         d.setVar('SRCREV', d.getVar('AUTOREV'))
> > >         srcpv =3D d.getVar('SRCPV')
> > >         d.appendVar('PV', '+git' + srcpv)
> > >         bb.note('Using latest git source code for %s, as recipe %s' =
%
> > (pn,
> > > d.getVar('BP')))
> > > }
> > >
> > >
> > >
> > > 2) In local.conf:
> > > INHERIT +=3D "use-git"
> > > GIT_PNS =3D "recipe1 recipe2 etc"
> > >
> > >
> > >
> > > This is nice, because I no longer have to create those recipe_git.bb
> > > recipes, and it's a central place to go configure a "use latest sour=
ce
> > > code" setting.
> > >
> > > Is this interesting to anyone else?
> > >
> > > --Aaron
> >
> > You know that you can poke SRCREV and other vars from a config file,
> > such as local.conf?
> >
> > SRCREV_pn-recipe1 =3D "${AUTOREV}"
> > SRCREV_pn-recipe2 =3D "${AUTOREV}"
> >
> > --
> > Denys
> >

>=20


--mnikszt7zhz5iqzq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXlV1UQAKCRA3VSO3ZXaA
HANNAJ9nyHHnYnKQ2a4GoYE4vzNxdacuAACggS4Oqx7VEZ4HFKNMwRy2s7eKoqU=
=U1nv
-----END PGP SIGNATURE-----

--mnikszt7zhz5iqzq--
