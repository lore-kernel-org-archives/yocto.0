Return-Path: <tom.rini@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 184B7E0044D
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 10:15:40 -0700 (PDT)
Received: by yenq4 with SMTP id q4so2373472yen.35
	for <yocto@yoctoproject.org>; Tue, 03 Apr 2012 10:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:organization
	:user-agent; bh=+Gd75GEUyDjPPpGvfOfB0IFAZiQ4qqUL90qMZ4+77PE=;
	b=uwG2pdaUJ2V3/rXLo7h5xVmHlPeWpKil3q7a0UOj33yJNj2QYDFwg3e2DbvNwIqYGV
	tITsTEyWfBXKph5APjgwFxoax2wsq+9BdiDmrx9SXHtYNJn7KKrwZqNVO23DL8u5W9aM
	pphmh4m8zIoxkaZFaAmFCnNfijhm4jAHT0QQjGtIqmsZLKZOnFbLmZUt5vBQyJQ5BjtY
	L1/0OH1O3fio6KZ9b6FDlHVeHYKrs1EG4j7SuM2DHQPCWGG6fBgnBWSQYesvbZeCAw/J
	3IiJQyJ/R0fofkFlo9ZnH9vCTFaBfFD7/j4/YzOBZSAYuy5GlSmA4j4fmTtBwmHDB0lI
	rsmA==
Received: by 10.60.4.1 with SMTP id g1mr19537968oeg.55.1333473338880;
	Tue, 03 Apr 2012 10:15:38 -0700 (PDT)
Received: from bill-the-cat (ip68-230-54-74.ph.ph.cox.net. [68.230.54.74])
	by mx.google.com with ESMTPS id a8sm17333559oea.8.2012.04.03.10.15.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Apr 2012 10:15:37 -0700 (PDT)
Date: Tue, 3 Apr 2012 10:15:40 -0700
From: Tom Rini <tom.rini@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120403171540.GF4816@bill-the-cat>
References: <95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<20120402171356.GE4829@bill-the-cat>
	<4F7B1EBD.1030500@linux.intel.com>
	<20120403162541.GB3943@jama.jama.net>
	<4F7B261B.1090101@linux.intel.com>
	<20120403164432.GC3943@jama.jama.net>
	<4F7B2E9C.7040600@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F7B2E9C.7040600@linux.intel.com>
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
X-List-Received-Date: Tue, 03 Apr 2012 17:15:40 -0000
X-Groupsio-MsgNum: 5767
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="uCPdOCrL+PnN2Vxy"
Content-Disposition: inline

--uCPdOCrL+PnN2Vxy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 03, 2012 at 10:08:44AM -0700, Darren Hart wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> On 04/03/2012 09:44 AM, Martin Jansa wrote:
> > On Tue, Apr 03, 2012 at 09:32:27AM -0700, Darren Hart wrote:
> >> -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
> >> On 04/03/2012 09:25 AM, Martin Jansa wrote:
> >>> On Tue, Apr 03, 2012 at 09:01:01AM -0700, Darren Hart wrote:
> >>>> -----BEGIN PGP SIGNED MESSAGE----- Clear reproducible
> >>>> testing results. Whether or not a pair of git clones and some
> >>>> tinkering can result in the same thing as a poky repository
> >>>> or not isn't relevant in my opinion. I believe that we need a
> >>>> consistent mode of validating support for a Yocto Project X.Y
> >>>> release. Now if that is accomplished by building with the
> >>>> poky repository of the same vintage or by running some script
> >>>> that pulls the right bits together independently.... I
> >>>> honestly don't care, but I do think it should be consistent.
> >>>=20
> >>> so teach setup script something like: poky.sh checkout X.Y
> >>> (which checkouts whatever parts are needed for X.Y) poky.sh
> >>> update X.Y (dtto)
> >>>=20
> >>> Which creates the same structure like poky repository has, but
> >>> by checkouting upstream repositories or using submodules or
> >>> whatever.
> >>>=20
> >>> That's what oebb.sh and SHR makefile does for master/shr HEADs,
> >>> but can be extended do it for particular version too.
> >>>=20
> >>=20
> >>=20
> >> This is certainly doable, but it doesn't address the
> >> stabilization buffer poky provides that I mentioned.
> >=20
> > And is it? OE @ ~ $ diff -rq openembedded-core/ projects/poky/ |
> > grep -v '\.git' Files openembedded-core/README and
> > projects/poky/README differ Only in projects/poky/:
> > README.hardware Only in projects/poky/: bitbake Only in
> > openembedded-core/: dev Only in projects/poky/: documentation Only
> > in openembedded-core/meta/conf: bblayers.conf.sample Only in
> > openembedded-core/meta/conf: local.conf.sample Only in
> > openembedded-core/meta/conf: local.conf.sample.extended Only in
> > openembedded-core/meta/conf: site.conf.sample Only in
> > projects/poky/: meta-yocto Only in projects/poky/scripts: lib Files
> > openembedded-core/scripts/oe-setup-builddir and
> > projects/poky/scripts/oe-setup-builddir differ Only in
> > projects/poky/scripts: yocto-bsp Only in projects/poky/scripts:
> > yocto-kernel
> >=20
> > OE @ ~ $ diff -rq projects/bitbake/ projects/poky/bitbake/ | grep
> > -v '\.git' Only in projects/bitbake/: MANIFEST.in Only in
> > projects/bitbake/: TODO Only in projects/poky/bitbake/bin:
> > bitbake-runtask Only in projects/bitbake/: classes Only in
> > projects/bitbake/: conf Only in projects/bitbake/lib/bb: fetch Only
> > in projects/poky/bitbake/lib/bb: shell.py Only in
> > projects/bitbake/: setup.py
> >=20
> > Those changes doesn't look like stabilization buffer.. which is
> > fine we don't need bigger diff between oe-core repo and poky copy,
> > smaller would be nice.
> >=20
> > And "dangerous" changes are stopped to oe-core AFAIK, see e.g. my
> > 13 pending patches...
>=20
> I expect the buffer to be empty at times. Hopefully *MOST* of the time.

I really think what you're calling a stabilization buffer is what others
of us see when we branch the repo(s) we're working on until we're happy
with the changes.

--=20
Tom

--uCPdOCrL+PnN2Vxy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk97MDwACgkQdZngf2G4WwOjsgCeKoPqNYgMFWOTC5qshKXIYiRN
FlsAnRnc2he2wXEQ8C9b7OeBqLb3s9dM
=k9xW
-----END PGP SIGNATURE-----

--uCPdOCrL+PnN2Vxy--
