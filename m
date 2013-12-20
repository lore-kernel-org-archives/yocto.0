Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f41.google.com (mail-ee0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BB44E00809
	for <yocto@yoctoproject.org>; Fri, 20 Dec 2013 02:00:34 -0800 (PST)
Received: by mail-ee0-f41.google.com with SMTP id t10so944603eei.14
	for <yocto@yoctoproject.org>; Fri, 20 Dec 2013 02:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=IOE80HsCq2MNHIjBoEW9zVg2nlyHyjAW3wzUekIG3XY=;
	b=z72BsX60kr84zt8BYRlri1mAp+OFj+ucUsBqC5sOEHCDPL53vSlJscRNjXjjyAzo7/
	2OGcMiir7f/eBD3TOEu/nrq+wRbwvnGwOmIDGSPmYit3ag4gezjfJfT/Roy/RAMVf3Mk
	lY7BkWSjMR2JcamnkUBC6tJKmLBigllTSMX5b5fNs+oFtv4y94HNSolyErHBluNAWF1C
	CzdG3BmCamQvUFBOpDM0h1/zZP6uKB2oCGKYfhM0bJZ/XbBBxAPzChljZU7qKOgGKxsx
	SeNFblSF7O2LhAwQuH3AScQ8FPLCcu4y3K5vg++sVerYWg4kPnYIcIpSuloaqgUE0Umn
	InIQ==
X-Received: by 10.14.108.6 with SMTP id p6mr3697239eeg.31.1387533633643;
	Fri, 20 Dec 2013 02:00:33 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id g7sm17065870eet.12.2013.12.20.02.00.32
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 Dec 2013 02:00:32 -0800 (PST)
Date: Fri, 20 Dec 2013 11:01:06 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Brad Litterell <brad@evidence.com>
Message-ID: <20131220100106.GS3706@jama>
References: <E51394554A503C4E852F9BEE46B03E8D019AC4B3@TI-THOR.tasernet.com>
	<ad9adfd66f224dd98d4ec05596eaaa8e@DM2PR03MB399.namprd03.prod.outlook.com>
	<E51394554A503C4E852F9BEE46B03E8D019AC7CA@TI-THOR.tasernet.com>
	<14453943.1Qpn4azGq8@helios>
	<E51394554A503C4E852F9BEE46B03E8D019AC9AE@TI-THOR.tasernet.com>
	<20131218093624.GK3706@jama>
	<E51394554A503C4E852F9BEE46B03E8D019ADA5F@TI-THOR.tasernet.com>
	<20131220093433.GQ3706@jama>
	<E51394554A503C4E852F9BEE46B03E8D019ADBC1@TI-THOR.tasernet.com>
MIME-Version: 1.0
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8D019ADBC1@TI-THOR.tasernet.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting PV dynamically in a recipe
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
X-List-Received-Date: Fri, 20 Dec 2013 10:00:40 -0000
X-Groupsio-MsgNum: 17604
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XDqeUMnLaDfDQgU1"
Content-Disposition: inline

--XDqeUMnLaDfDQgU1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 20, 2013 at 09:39:13AM +0000, Brad Litterell wrote:
> I'm using it in a task, like this:
> do_install_prepend() {
>     if [ ! -z ${ETM_DEBUG} ]; then
> ...        do debugging stuff   ...
>     fi
> }
>=20
> but having it in a task definition doesn't seem to taint the sstate.  Try=
ing to figure out what other variables go into it. E.g. does DESCRIPTION ge=
t included in the sstate? (I'd assume not).  Is there a meta-list somewhere=
 of what goes in the state hash?

You can use bitbake-diffsigs command on one of sigdata files from your
recipe to see if the variable is included.

But here you're showing ETM_DEBUG not MY_FEATURES, is it the same?
>=20
>  _______________________________________
> From: Martin Jansa [martin.jansa@gmail.com]
> Sent: Friday, December 20, 2013 1:34 AM
> To: Brad Litterell
> Cc: Paul Eggleton; yocto@yoctoproject.org
> Subject: Re: [yocto] Setting PV dynamically in a recipe
>=20
> On Fri, Dec 20, 2013 at 03:09:31AM +0000, Brad Litterell wrote:
> > Hi Martin,
> >
> > I decided just to create my own feature list:
> >
> > MY_FEATURES=3D"debug"
> >
> > and I can happily query it in my custom recipes.
> >
> > However, I haven't quite figured out the best way to taint the status h=
ashes for my packages so that changes to this flag force a rebuild.  I orig=
inally tried putting the marking in PR, which works for causing the right t=
hings to rebuild, but when I switch from debug to release, I get errors lik=
e this:
> >
> > ERROR: Package version for package my-config-files went backwards which=
 would break package feeds from (0:2.0.0.0-r0-debug to 0:2.0.0.0-r0)
> >
> > Is there a way I can taint my recipes so that changing MY_FEATURES caus=
es them all to be evaluated as out of date.  I don't care if that causes so=
me extra rebuilds when I switch MY_FEATURES - I care more about avoiding th=
e error message.  Or is there a way I can turn off this particular error me=
ssage on specific recipes?
>=20
> Depends on where you're using MY_FEATURES variable in the recipe, in
> most cases it should be included in sstate signature and rebuilt
> automatically (with the same version) when MY_FEATURES is changes.
>=20
> If you're using latest oe-core, that error is QA check, which can be
> disabled with SKIP_INSANE (per package) or moved from ERROR_QA to
> WARN_QA in distro config.
>=20
> > ________________________________________
> > From: Martin Jansa [martin.jansa@gmail.com]
> > Sent: Wednesday, December 18, 2013 1:36 AM
> > To: Brad Litterell
> > Cc: Paul Eggleton; yocto@yoctoproject.org
> > Subject: Re: [yocto] Setting PV dynamically in a recipe
> >
> > On Wed, Dec 18, 2013 at 01:29:25AM +0000, Brad Litterell wrote:
> > > Hi Paul,
> > >
> > > Thanks for that tip.  For my private packages I don't build directly =
=66rom git, but from a tarball (in turn created from my working directory) =
because I want to be able to build the source I'm working on without commit=
ting it to git.
> > >
> > > In an ideal world, I'd like to to be able to build in two modes: dev =
& release.  Release mode would use the git-based solution (and enforce buil=
ding from git), and in the dev mode, build from something like externalsrc.=
  (The reason I don't use externalsrc directly is because it didn't detect =
changes in the underlying external source, so I created a script that does =
and updates the tarball.)
> > >
> > > What is the best way to switch recipes between dev & test modes like =
that.  It appears debug-tweaks is only used in image recipes, so I don't kn=
ow whether I should (or could) use something like this in a package recipe:
> > >
> > > SRC_URI +=3D '${@base_contains("EXTRA_IMAGE_FEATURES", "debug-tweaks"=
, "...tarball...", "...git..."}'
> > >
> > > or whether something like that is asking for trouble.  My current sol=
ution is manual - edit the recipe, but that feels kinda lame.
> > >
> > > It seems like most of the yocto build tools assume building directly =
=66rom git (or with external-src but without dependency checking).
> > >
> > > Any suggestions?
> >
> > Don't use *IMAGE_FEATURES* to in recipe conditionals.
> >
> > When you're building some package you don't know in which image it will
> > be included so you cannot know with which *IMAGE_FEATURES* it should be
> > built.
> >
> > It's true that EXTRA_IMAGE_FEATURES are often set in DISTRO config, but
> > still it's unsafe to assume they are "global". With improved
> > base_contains and sstate interaction, using some flag in DISTRO_FEATURES
> > shouldn't cause so many packages to rebuild, so it could be usable for
> > "debug-build" flag.
> >
> > > ________________________________________
> > > From: Paul Eggleton [paul.eggleton@linux.intel.com]
> > > Sent: Tuesday, December 17, 2013 12:24 PM
> > > To: Brad Litterell
> > > Cc: zhenhua.luo@freescale.com; yocto@yoctoproject.org
> > > Subject: Re: [yocto] Setting PV dynamically in a recipe
> > >
> > > Hi Brad,
> > >
> > > On Tuesday 17 December 2013 19:46:11 Brad Litterell wrote:
> > > > Thank you for the reply.  However, That's not what I'm looking for.=
  I
> > > > already get the latest version of the source code.
> > > >
> > > > What I'm really after is the ability to generate output packages th=
at have
> > > > increasing version numbers so I can use the package manager to upda=
te them.
> > > >
> > > > I think Martin's subsequent reply is the secret to use PKGV.  I did=
n't know
> > > > about that variable.
> > >
> > > You don't need to use any special classes to get this behaviour. Put =
this in
> > > your recipe (replacing 1.2.3 with the appropriate base version you are
> > > building):
> > >
> > > PV =3D "1.2.3+git${SRCPV}"
> > >
> > > and enable the PR service, which will ensure SRCREV changes always in=
crement
> > > the version properly:
> > >
> > > http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#w=
orking-with-a-pr-service
> > >
> > > Cheers,
> > > Paul
> > >
> > > --
> > >
> > > Paul Eggleton
> > > Intel Open Source Technology Centre
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>=20
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--XDqeUMnLaDfDQgU1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlK0FWIACgkQN1Ujt2V2gBw9cgCfb9ozszZtw9OXWu77FL9PcSrx
+IQAoKs2/+4E3ya1kz9Xmcb2OZ319mdV
=uJ/u
-----END PGP SIGNATURE-----

--XDqeUMnLaDfDQgU1--
