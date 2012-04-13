Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CADE3E01374
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 03:00:42 -0700 (PDT)
Received: by wibhr14 with SMTP id hr14so2514613wib.11
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 03:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=pDUkawArUMWk0Wq+NhTIc8fqi1touTwJpWLWuI1MQuo=;
	b=uL5Dd7HWybU/8mT4xo0fo8fQvqaNGqt76526oMzZU3v3VxIGeqAcq+RoLGZSB4oaTJ
	n7GC+vs5BQXmHJ9CoHgIkK/pRYFBwiezvLjykqRNQF7wfIo7qEVMuvI9ohL5Fox8DzQL
	JbsTL6ZSelWL2J6Bvyg8IZQp2kjsbU+Ph2N741or1VHGgm9pnDiP1qgORKRMK4n0zp/r
	KPMk7Sf+l4/JhxG5ZT9eE8qoNM20yy3kvaqCqwTY9e71OYWet8qWIDPcmaxyHfoQjgHS
	Bm39t6omy27eSjJhGxvF0/aVkYzVhD1vXGenTAWeA7uNm6LF0ygpIhpxt/X+M6qMfE9u
	vDkw==
Received: by 10.180.102.100 with SMTP id fn4mr3214734wib.1.1334311241675;
	Fri, 13 Apr 2012 03:00:41 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id fl2sm6303377wib.2.2012.04.13.03.00.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 13 Apr 2012 03:00:39 -0700 (PDT)
Date: Fri, 13 Apr 2012 12:00:39 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Message-ID: <20120413100039.GC3651@jama.jama.net>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
	<4F7E30CA.6080306@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F7E30CA.6080306@linux.intel.com>
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
X-List-Received-Date: Fri, 13 Apr 2012 10:00:43 -0000
X-Groupsio-MsgNum: 6070
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="t0UkRYy7tHLRMCai"
Content-Disposition: inline

--t0UkRYy7tHLRMCai
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 05, 2012 at 04:54:50PM -0700, Saul Wold wrote:
>=20
> Martin,
>=20
> Just wanted to let you know that this was received, I am holding off=20
> doing anything about it right now until we get through the current=20
> release process, this will be build and tested with early in the 1.3 as=
=20
> appropriate.

Hi,

can you please apply at least first patchset (just import of patches we
already had), someone wanted to switch opkg-utils in oe-classic from svn
to this git repo, so it would be nice to just use correct SRCREV instead
of importing those local patches.

Or import everything as it won't be used until we change SRCREV in
recipe and we'll change SRCREV in 1.3 cycle.

Thanks!

>=20
> Thanks
> 	Sau!
>=20
>=20
> On 03/29/2012 03:21 PM, Martin Jansa wrote:
> > First 5 patches are taken from oe-core.
> >
> > Then there are some cleanups and fixes for issues I've found while look=
ing
> > for cause of very long package-index calls.
> >
> > Some patches uses compatible changes from 2to3 (tested with python2.7),=
 but
> > python3 support is not 100% complete, but were closer.
> >
> > And in the end I've found the cause.. printing long fields (e. g. descr=
iption)
> > with opkg.py was producing empty lines in Packages file (which are Pack=
ages entry
> > separators) so only first entries till first empty line were processed =
=66rom old
> > Packages file and the rest was always extracted from control files in p=
ackaged .ipk.
> >
> > And this also fixes Packages.filelist generation.
> >
> > I don't use python very much, so please review.
> >
> > And the speedup? Almost 60 times :)
> > before:
> > real    20m10.484s
> > user    18m32.335s
> > sys     0m11.885s
> >
> > after
> > real    0m24.492s
> > user    0m23.748s
> > sys     0m0.565s
> >
> > The following changes since commit 002d29bc605d7c2d02e4cf20a43c5277c15f=
5597:
> >
> >    [opkg-utils] fix install fail problem  Thanks for khorben's patch :-=
)  https://docs.openmoko.org/trac/attachment/ticket/2072/patch-opkg-utils_M=
akefile_install_path.diff (2008-11-03 03:59:59 +0000)
> >
> > are available in the git repository at:
> >    git://github.com/shr-project/opkg-utils jansa/pull
> >    https://github.com/shr-project/opkg-utils/tree/jansa/pull
> >
> > Christopher Larson (1):
> >    Use python via the PATH, rather than hardcoding /usr/bin/python
> >
> > Enrico Scholz (1):
> >    opkg-make-index: convert mtime to int before comparing it
> >
> > Khem Raj (1):
> >    opkg.py: Add knowledge about License field in ipk headers
> >
> > Martin Jansa (17):
> >    opkg.py: use hashlib instead of old md5 module
> >    opkg.py, arfile.py: report which file has wrong format and use the
> >      same test
> >    arfile: decode read lines as ascii string before getting fields from
> >      it
> >    2to3: use subprocess instead of commands
> >    2to3: print fixes
> >    2to3: dictionary fixes
> >    2to3: exception handling fixes
> >    opkg-make-index: show OSError/IOError
> >    opkg.py: use string funtcions directly on string variable
> >    opkg.py: catch TypeError when reading control file, to show which one
> >      is failing
> >    arfile: fix test
> >    opkg-make-index: don't use stdout for Packages output and use __str__
> >      instead of __repr__
> >    opkg.py: cast lines from controlfile as string
> >    opkg.py: computeFileMD5 only when we have fn, otherwise fails to read
> >      None file
> >    opkg.py: fix write_package when called from main test
> >    opkg.py: use textwrap for description writing
> >    opkg.py: improve test so it prints temporary control file with long
> >      description and then reads it back
> >
> > Richard Purdie (1):
> >    opkg-make-index: don't error out when some package disappears
> >
> > Scott Anderson (1):
> >    arfile.py: handle six digit UIDs
> >
> >   arfile.py            |   55 +++++++++++++---------
> >   makePackage          |    2 +-
> >   opkg-compare-indexes |   22 ++++----
> >   opkg-list-fields     |    4 +-
> >   opkg-make-index      |   74 +++++++++++++++++++----------
> >   opkg-show-deps       |   28 +++++------
> >   opkg-unbuild         |    4 +-
> >   opkg-update-index    |    5 +-
> >   opkg.py              |  125 +++++++++++++++++++++++++++++------------=
--------
> >   9 files changed, 186 insertions(+), 133 deletions(-)
> >

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--t0UkRYy7tHLRMCai
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk+H+UcACgkQN1Ujt2V2gBxeDQCggxnWTLi3Xbf0Y6gSRWw3InVR
FzMAn0eaI8ZSeuKdKlQElJDYXEXTU1A6
=Hq3k
-----END PGP SIGNATURE-----

--t0UkRYy7tHLRMCai--
