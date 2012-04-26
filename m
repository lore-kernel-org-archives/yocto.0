Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41FD9E01206
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 11:52:23 -0700 (PDT)
Received: by wibhr14 with SMTP id hr14so1345132wib.11
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 11:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=PaJQB4h27MHeTJvz7trrH4yVvP4DGH+15RPFmV0fjB4=;
	b=FA/CAvn8dw3rehfBdjvnO8UOu+c0WvGUm0MHFQuZujWJ52xVZwZc0mjQ4v16hXCq7U
	5zmL5Kr8iT11tSFn9cjH21hFlY2TzHsp3RQqManm9nYpduSNxle3cwlrdBO/Kme8fhtW
	nx/agv8dOE0Loxr/YEnrC/VnDi1xJ6NgHEuk2GahoMAXGY5zc/3d8KJ0HqLFsEkzNo8/
	ih54+ohhUcEnj27r3dwUaxya0+mFVoRlAK3Q4+M2R9ftqY2EKH8LYa80BQcow+XCr7KO
	hCD+bPi0Vb2WZlsL4on6780kyyuDJ+aFlrqDYrPc+oaD270FS+1V/CMoGnjJNTkYVrqo
	pIuA==
Received: by 10.180.105.69 with SMTP id gk5mr33878795wib.3.1335466342268;
	Thu, 26 Apr 2012 11:52:22 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id n20sm13801840wiw.5.2012.04.26.11.52.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 26 Apr 2012 11:52:20 -0700 (PDT)
Date: Thu, 26 Apr 2012 20:52:24 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Koen Kooi <koen@beagleboard.org>
Message-ID: <20120426185224.GF3646@jama.jama.net>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
	<1335436998.20130.0.camel@ted>
	<EE230536-AE66-41DB-93EE-B1A7CA9FFD75@beagleboard.org>
MIME-Version: 1.0
In-Reply-To: <EE230536-AE66-41DB-93EE-B1A7CA9FFD75@beagleboard.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org, Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Subject: Re: [opkg-utils][PATCH 00/22] Partially prepare for python3 and fix old Packages file reuse
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
X-List-Received-Date: Thu, 26 Apr 2012 18:52:23 -0000
X-Groupsio-MsgNum: 6231
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="kR3zbvD4cgoYnS/6"
Content-Disposition: inline

--kR3zbvD4cgoYnS/6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 26, 2012 at 06:21:45PM +0200, Koen Kooi wrote:
>=20
> Op 26 apr. 2012, om 12:43 heeft Richard Purdie het volgende geschreven:
>=20
> > On Fri, 2012-03-30 at 00:21 +0200, Martin Jansa wrote:
> >> First 5 patches are taken from oe-core.
> >>=20
> >> Then there are some cleanups and fixes for issues I've found while loo=
king=20
> >> for cause of very long package-index calls.
> >>=20
> >> Some patches uses compatible changes from 2to3 (tested with python2.7)=
, but
> >> python3 support is not 100% complete, but were closer.
> >>=20
> >> And in the end I've found the cause.. printing long fields (e. g. desc=
ription)
> >> with opkg.py was producing empty lines in Packages file (which are Pac=
kages entry=20
> >> separators) so only first entries till first empty line were processed=
 from old
> >> Packages file and the rest was always extracted from control files in =
packaged .ipk.
> >>=20
> >> And this also fixes Packages.filelist generation.
> >>=20
> >> I don't use python very much, so please review.
> >>=20
> >> And the speedup? Almost 60 times :)
>=20
> [..]
>=20
> > I reviewed these and they all look like good improvements. I've merged
> > it into master, thanks!
>=20
> After some more time in oe-core master for testing we should seriously co=
nsider cherry-picking the SRCREV bump to the denzil branch.

Agreed, saves about 4 hours per day (13 images each with own package-index =
run=20
and extra run for feed if built after iamges) on my buildhost for last mont=
h or so :)

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--kR3zbvD4cgoYnS/6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk+ZmWcACgkQN1Ujt2V2gBzX4wCgl9bRVFzaj1moQ16VGqBi48ZH
/EsAoI+qjvKRWZm4XxQfXfG30azKXRxd
=+JVY
-----END PGP SIGNATURE-----

--kR3zbvD4cgoYnS/6--
