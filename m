Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA28BE00831; Thu, 19 Feb 2015 11:30:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D59DE00827
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 11:30:07 -0800 (PST)
Received: from svr-orw-fem-06.mgc.mentorg.com ([147.34.97.120])
	by relay1.mentorg.com with esmtp 
	id 1YOWnV-0007HC-Vz from Joe_MacDonald@mentor.com ;
	Thu, 19 Feb 2015 11:30:06 -0800
Received: from burninator (147.34.91.1) by SVR-ORW-FEM-06.mgc.mentorg.com
	(147.34.97.120) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 19 Feb 2015 11:30:05 -0800
Received: by burninator (Postfix, from userid 1000)	id D13355809D0; Thu, 19
	Feb 2015 14:30:07 -0500 (EST)
Date: Thu, 19 Feb 2015 14:30:07 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Message-ID: <20150219193007.GO5134@mentor.com>
References: <1424209275-12304-1-git-send-email-joe_macdonald@mentor.com>
	<CAPhnLPAS1i0YV_rHqdjPkq9uCegc4Y1sQ=-USZoAeNwGF79QFw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPhnLPAS1i0YV_rHqdjPkq9uCegc4Y1sQ=-USZoAeNwGF79QFw@mail.gmail.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [autobuilder][PATCH 1/4] README: update filenames and locations
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
X-List-Received-Date: Thu, 19 Feb 2015 19:30:12 -0000
X-Groupsio-MsgNum: 23671
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+wSiqF7c0ySQ2tNi"
Content-Disposition: inline

--+wSiqF7c0ySQ2tNi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [autobuilder][PATCH 1/4] README: update filenames and location=
s] On 15.02.19 (Thu 16:54) Flanagan, Elizabeth wrote:

> Pulled to master. Production this evening. Thanks!

Cool, thanks.  If you haven't already, please drop my 'templates' patch
=66rom consideration, I figure I'll send out the completed version,
including external configuration support, for consideration soon.  It
works well for me and I don't know that the half-step is really worth
it.

FWIW, it'll still be two separate patches, if you opt to pick the first
and not the second, I'll just include both in a single thread.

-J.

>=20
> On 17 February 2015 at 21:41, Joe MacDonald <joe_macdonald@mentor.com> wr=
ote:
> > The main README points at conf/autobuilder.conf and conf/yoctoAB.conf,
> > both of which aren't the current places where the autobuilder looks for
> > these files anymore.
> >
> > README-NEW-AUTOBUILDER has a bit of whitespace damage, in the text and =
in
> > the examples, so clean that up to make it more paste-friendly.
> >
> > Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> > ---
> >  README                 |  6 +++---
> >  README-NEW-AUTOBUILDER | 14 +++++++-------
> >  2 files changed, 10 insertions(+), 10 deletions(-)
> >
> > diff --git a/README b/README
> > index 94dae28..06b9cbc 100644
> > --- a/README
> > +++ b/README
> > @@ -97,13 +97,13 @@ Setting up build history requires the following ste=
ps:
> >  Files used for Yocto-Autobuilder Configuration
> >  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > -Name: conf/autobuilder.conf
> > +Name: config/autobuilder.conf
> >  Purpose:
> >  This file is used to set autobuilder wide parameters, like where vario=
us build
> >  artifacts are published to, DL_DIR, SSTATE_DIR or if build artifacts s=
hould be
> >  published (needed for production autobuilders, not needed for desktop =
builders)
> >
> > -Name: conf/yoctoAB.conf
> > +Name: buildset-config/yoctoAB.conf
> >  Purpose:
> >  This is the main yocto autobuilder config. Documentation for this and =
associated
> > -format is in README_CONFIG
> > +format is in README-NEW-AUTOBUILDER
> > diff --git a/README-NEW-AUTOBUILDER b/README-NEW-AUTOBUILDER
> > index 97bbe61..73be208 100644
> > --- a/README-NEW-AUTOBUILDER
> > +++ b/README-NEW-AUTOBUILDER
> > @@ -170,12 +170,12 @@ scheduler: A list of dicts. Each item defines a s=
cheduler associated with this
> >                      This defaults to '*', meaning every month.
> >                 dayOfWeek: The day of the week in which to start the bu=
ild, with
> >                      Monday =3D 1.  This defaults to '*', meaning every=
 day.
> > -              hour: The hour of the day in which to start the build, w=
ith
> > +               hour: The hour of the day in which to start the build, =
with
> >                      12:00 AM =3D 0.  This must be set by the user.
> > -              minute: The minute of the hour in which to start the bui=
ld, with
> > +               minute: The minute of the hour in which to start the bu=
ild, with
> >                      0 to 59 as valid values.  This must be set by the =
user.
> >
> > -         SingleBranchScheduler properties:
> > +       SingleBranchScheduler properties:
> >                 repository: the repository to attach the scheduler to; =
this
> >                      is the repo name from the 'repos' section; the bra=
nch which
> >                      the scheduler is attached to matches that in the r=
epo
> > @@ -185,7 +185,7 @@ scheduler: A list of dicts. Each item defines a sch=
eduler associated with this
> >                      triggering build to allow for changes to settle.  =
Defaults
> >                      to 60 seconds.
> >
> > -              change-user: the user name which the remote hook will us=
e; the
> > +               change-user: the user name which the remote hook will u=
se; the
> >                      default value is the repository name as per the 'r=
epository'
> >                      property.
> >
> > @@ -209,7 +209,7 @@ scheduler: A list of dicts. Each item defines a sch=
eduler associated with this
> >             Extra Notes on SingleBranchScheduler setup
> >             ------------------------------------------
> >
> > -          There is one SBS scheduler for each repository in the builds=
et, i.e.,
> > +           There is one SBS scheduler for each repository in the build=
set, i.e.,
> >             if your buildset contains more repositories, and you want b=
uild
> >             triggered by changes to any of them, you need to define a s=
cheduler
> >             for each. This also means that you can mix and match, e.g.,=
 only
> > @@ -272,8 +272,8 @@ steps: [{'SetDest':{}},
> >          {'PublishArtifacts': {'artifacts': ['qemux86', 'atom-pc']}}]
> >  scheduler: [{'dev-branch-scheduler' :
> >                  {'type':'SingleBranchScheduler',
> > -                'repository':'poky',
> > -                'stable-timer':30,
> > +                 'repository':'poky',
> > +                 'stable-timer':30,
> >                   'change-password':'secret_change_password'}}]
> >
> >  Adding Buildsteps
> > --
> > 1.9.1
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
--=20
-Joe MacDonald.
:wq

--+wSiqF7c0ySQ2tNi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJU5jm/AAoJEEn8ffcsOfaWeSEIAL9lDXaATP5tM0dHAhIJCFBE
mBQjz9HhFuRxEKgMl+VhXm66wmkybOOkChdFunKWIEo7HRz3cQzQGL9U+qhsFboP
Ce8/f6juo6je+YLEmQyGDsbRir09O0GFZtzwjp/VVHXMYYdT+asRq6TZ41Q2aIyb
79TTTgLWNqIBWVxEUd4nXeWfj+1C/76YRfKkrl7CiCKSXQHE6HHNPVuXbhYC9Ni2
kpTmHfK8VGvuTrCYUsUIBxuVT759YMqnNeLaOg9JbE//URu9jXXfgn99+FNpWQOd
j1P+/O5FYs3tJsaAwVl6nIiV3+Uan2OhpP9AhXTNYIuwh2POs7fxSWT3Dzw+tQU=
=kj9J
-----END PGP SIGNATURE-----

--+wSiqF7c0ySQ2tNi--
