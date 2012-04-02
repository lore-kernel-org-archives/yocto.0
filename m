Return-Path: <tom.rini@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D248AE00596
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2012 10:13:55 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so1629097ghb.35
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2012 10:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:organization
	:user-agent; bh=1R3g2mSXY6/y4sb9dTP77Vv61Z9WwkyVDsyldBUZ6UI=;
	b=rjqYmBqpof5eQI/0QY/GVBpVu0/9hfP03tVX+mA3Sbi2+9EHyTxXiGMuyFnWcrofRr
	BschHGI+5y6HPqd17AiVVZyFpBuVwiQ4MyJq6k4Qgor/lO7VePHVDFQJHRUS966z0xUC
	fCa4swSoXiiv4hUBIqFqG/IuPARujnv63UDcTVAM3j4cZ31LNEZctw0aXH8kHeHKpwEX
	97Nkdgc3O98y9e3N0QoJ9pPxupsNOAbTcHCFL4k5R03dNwPz0soMBytswwxzWGca4gqC
	Rxn+lURrh9ZjfsktKpc6zpzv1pwFvIRgZ4hZEY7YDX99IehMjgdP4jPIWf3kankUSvlW
	bWMw==
Received: by 10.60.26.231 with SMTP id o7mr13650512oeg.31.1333386834797;
	Mon, 02 Apr 2012 10:13:54 -0700 (PDT)
Received: from bill-the-cat (ip68-230-54-74.ph.ph.cox.net. [68.230.54.74])
	by mx.google.com with ESMTPS id a8sm14582487oea.8.2012.04.02.10.13.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 02 Apr 2012 10:13:53 -0700 (PDT)
Date: Mon, 2 Apr 2012 10:13:56 -0700
From: Tom Rini <tom.rini@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120402171356.GE4829@bill-the-cat>
References: <26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F766B84.9080505@linux.intel.com>
Organization: Texas Instruments
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Mon, 02 Apr 2012 17:13:56 -0000
X-Groupsio-MsgNum: 5747
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zjcmjzIkjQU2rmur"
Content-Disposition: inline

--zjcmjzIkjQU2rmur
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 30, 2012 at 07:27:16PM -0700, Darren Hart wrote:

[snip]
> You've mentioned preferring to do this with set versions of bitbake and
> oe-core. Do oe-core and bitbake maintain stable branches? I didn't think
> they did. This makes it difficult to stabilize a release, and poky
> serves this purpose well in my opinion. I'm going to stop going down
> this path though as the policies surrounding this aren't clear to me and
> would be better coming from others (RP or Chris for example).

Again, the intention of poky the repository is not intended to have its
own changes.  oe-core will have a branch to go along with this release,
just like meta-oe, meta-ti, meta-fsl-arm, meta-fsl-ppc, meta-intel and
so forth.  Richard has even been (from how the branch layout looks) been
keeping master stable and doing master-next for things that will go in
post release.

I think at this point Richard (sorry!) really, really needs to find the
time to make poky the distro be a separate layer and Yocto adopt some
form of tooling, perhaps Angstrom's setup scripts with a little bit of
abstraction, to replace the conglomerate repository and stop some of the
confusion about repository directionality (and maybe move "I need to
resurrect idea X into a branch in upstream).  This could even be done as
part of Angstrom moving under the umbrella and one of the mutual
benefits :)

> Without this, people working with "The Yocto Project" are back to using
> different versions of bitbake and oe-core depending on which
> distribution or BSP they are building, and we ultimately end up where we
> started with unsolvable dependency chains and people passing around
> fixup patches for this or that issue.

Then perhaps non-SCM blobs should be part of a Yocto Project release.
The point is that poky the repository is NOT an upstream for anything
other than poky the distro specific things.`

> > or as I will label them from now on: forks.
> >
> >> Angstrom has been independent from poky and the Yocto Project in the
> >> past and I can understand not wanting to lose some of that
> >> individuality. However, too much individuality breeds chaos and
> >> fragmentation.
> >=20
> > I will draw a line in the sand here and say: Forcing people to ignore=
=20
> > upstream (oe-core/bitbake) and force a fork down their throats
> > breeds chaos and fragmentation.
>=20
> Don't be so dramatic Koen :-) Everybody involved knows the bitbake and
> oe-core in the poky repository are not forks, at least not in the sense
> you portray here. They are snapshots with the same maintainer (or subset
> of maintainers). They are no more "forks" than the stable Linux kernels
> maintained by Greg KH are forks of Linus' kernel. I won't presume to
> make a statement of policy regarding submitting patches against poky
> that aren't also destined for oe-core or bitbake as well, but I
> personally wouldn't deign to submit such a patch for fear of the wrath
> of Purdie (and a flame or two from a certain dutchman ;-).

Yes, you the day to day developer understand the relationship between
bitbake, oe-core and poky the distro within poky the repository.  To the
casual or new developer it's not clear because it's not done with git
submodules or repo or other standard multi-git-repos-in-a-single-dir
tools.  It's just manual merge.

> > I will again refer to the agreement between the OE community and yocto
> > for doing the 'merge'.
> >=20
> > If you people (all speaking personally of course) really think poky is =
the only
> > way to go, then please close down and remove the oe-core and bitbake re=
pos.
>=20
>=20
> I see poky as collecting and integrating these projects into a
> known-to-work-well-together snapshot. I suppose this is similar to what
> the Angstrom setup scripts do, except the fetching is done for you in
> poky instead of after the fact in Angstrom. I think this is a more
> accurate description than calling them forks.

So lets be clear.  poky the repository is a collection of exiting
branches or tags from other projects, done as a "lets make this easy on
new / casual users".  So why should Angstrom be forced to include poky
the repository in it's work-flow when the exact same results, excluding
poky the distro, can be achieved by working upstream?

--=20
Tom

--zjcmjzIkjQU2rmur
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk953lQACgkQdZngf2G4WwNRBACfT1P35UneEG+PLsURvV0wSuaW
7/QAn14EVzMKKpWWC+64CMm0wU1LZP42
=Z5iW
-----END PGP SIGNATURE-----

--zjcmjzIkjQU2rmur--
