Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93633E0132F
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 08:29:28 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so563364wib.11
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 08:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=blHd/mBhRCi8zVuNjyYfqGiitWM+p9QQMOyIEOZw4+k=;
	b=cYQia3faMJGgtaYM7NR2jbvxhGfZ03pvfqubMcCHtTsOiZanPe+ePLlFZrepV11kJA
	khcetu6+CDB0x8cQLkzL37oJW9MLcl/dHacljzl/mlEFRvLT8aVBlmqgI3OxQtWR6IwT
	gA646wRkmUCdQnUKfEuFaKNbEEAs7E8SI5XA2ulpAmOIasVmKenLW+dw8jo9ROy/l7rA
	N4b/pCRoO4UeDs9sa3NZpnuPmLLvqRvBzKhpt9UTXi7ecWwqHibftN4iVYKReK4qcXIU
	1FNOOMZssKfgBM0RrjFBWpZRde7mR46jYKMNXH9deMpaKgoBTQ4omhIWiroYEFGRZxjh
	fEwQ==
Received: by 10.180.79.135 with SMTP id j7mr8115179wix.19.1334676567352;
	Tue, 17 Apr 2012 08:29:27 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id k6sm27592727wie.9.2012.04.17.08.29.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 17 Apr 2012 08:29:24 -0700 (PDT)
Date: Tue, 17 Apr 2012 17:29:23 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Message-ID: <20120417152923.GF3665@jama.jama.net>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
	<1334216100.2759.2.camel@babel.joshhome>
	<20120412080021.GA3661@jama.jama.net>
	<4F86E2E8.2030607@linux.intel.com>
	<CAPhnLPCc1+uV5rM48k45JxbSwHpPqG9x7ci=uN_5TA8j1XmpJg@mail.gmail.com>
	<20120413055150.GA3652@jama.jama.net>
MIME-Version: 1.0
In-Reply-To: <20120413055150.GA3652@jama.jama.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Build time data
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
X-List-Received-Date: Tue, 17 Apr 2012 15:29:29 -0000
X-Groupsio-MsgNum: 6131
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fwqqG+mf3f7vyBCB"
Content-Disposition: inline

--fwqqG+mf3f7vyBCB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 13, 2012 at 07:51:51AM +0200, Martin Jansa wrote:
> On Thu, Apr 12, 2012 at 04:37:00PM -0700, Flanagan, Elizabeth wrote:
> > On Thu, Apr 12, 2012 at 7:12 AM, Darren Hart <dvhart@linux.intel.com> w=
rote:
> >=20
> > > -----BEGIN PGP SIGNED MESSAGE-----
> > > Hash: SHA1
> > >
> > >
> > >
> > > On 04/12/2012 01:00 AM, Martin Jansa wrote:
> > > > On Thu, Apr 12, 2012 at 01:05:00PM +0530, Joshua Immanuel wrote:
> > > >> Darren,
> > > >>
> > > >> On Wed, 2012-04-11 at 17:30 -0700, Darren Hart wrote:
> > > >>> I run on a beast with 12 cores, 48GB of RAM, OS and sources on
> > > >>> a G2 Intel SSD, with two Seagate Barracudas in a RAID0 array
> > > >>> for my /build partition. I run a headless Ubuntu 11.10 (x86_64)
> > > >>> installation running the 3.0.0-16-server kernel. I can build
> > > >>> core-image-minimal in < 30 minutes and core-image-sato in < 50
> > > >>> minutes from scratch.
> > > >
> > > > why not use so much RAM for WORKDIR in tmpfs? I bought 16GB just to
> > > > be able to do my builds in tmpfs and keep only more permanent data
> > > > on RAID.
> > >
> > > We've done some experiments with tmpfs, adding Beth on CC. If I recall
> > > correctly, my RAID0 array with the mount options I specified
> > > accomplishes much of what tmpfs does for me without the added setup.
> > >
> >=20
> > This should be the case in general. For the most part, if you have a de=
cent
> > RAID setup (We're using RAID10 on the ab) with fast disks you should be
> > able to hit tmpfs speed (or close to it). I've done some experiments wi=
th
> > this and what I found was maybe a 5 minute difference, sometimes, from a
> > clean build between tmpfs and RAID10.
>=20
> 5 minutes on very small image like core-image-minimal (30 min) is 1/6 of
> that time :)..=20
>=20
> I have much bigger images and even bigger ipk feed, so to rebuild from
> scratch takes about 24 hours for one architecture..
>=20
> And my system is very slow compared to yours, I've found my measurement
> of core-image-minimal-with-mtdutils around 95 mins
> http://patchwork.openembedded.org/patch/17039/
> but this was with Phenom II X4 965, 4GB RAM, RAID0 (3 SATA2 disks) for
> WORKDIR, RAID5 (the same 3 SATA2 disks) BUILDDIR (raid as mdraid), now
> I have Bulldozer AMD FX(tm)-8120, 16GB RAM, still the same RAID0 but
> different motherboard..
>=20
> Problem with tmpfs is that no RAM is big enough to build whole feed in
> one go, so I have to build in steps (e.g. bitbake gcc for all machines
> with the same architecture, then cleanup WORKDIR and switch to another
> arch, then bitbake small-image, bigger-image, qt4-x11-free, ...).
> qt4-x11-free is able to eat 15GB tmpfs almost completely.
>=20
> > I discussed this during Yocto Developer Day. Let me boil it down a bit =
to
> > explain some of what I did on the autobuilders.
> >=20
> > Caveat first though. I would avoid using autobuilder time as representa=
tive
> > of prime yocto build time. The autobuilder hosts a lot of different
> > services that sometimes impact build time and this can vary depending on
> > what else is going on on the machine.
> >=20
> > There are four places, in general, where you want to look at optimizing
> > outside of dependency issues. CPU, disk, memory, build process. What I
> > found was that the most useful of these in getting the autobuilder time
> > down was disk and build process.
> >=20
> > With disk, spreading it across the RAID saved us not only a bit of time,
> > but also helped us avoid trashed disks. More disk thrash =3D=3D higher =
failure
> > rate. So far this year we've seen two disk failures that have resulted =
in
> > almost zero autobuilder downtime.
>=20
> True for RAID10, but for WORKDIR itself RAID0 is cheeper and even higher
> failure rate it's not big issue for WORKDIR.. just have to cleansstate
> tasks which were in hit in the middle of build..
>=20
> > The real time saver however ended up being maintaining sstate across bu=
ild
> > runs. Even with our sstate on nfs, we're still seeing a dramatic decrea=
se
> > in build time.
> >=20
> > I would be interested in seeing what times you get with tmpfs. I've done
> > tmpfs builds before and have seen good results, but bang for the buck d=
id
> > end up being a RAID array.
>=20
> I'll check if core-image-minimal can be built with just 15GB tmpfs,
> otherwise I would have to build it in 2 steps and the time wont be
> precise.

It was enough with rm_work, so here are my results:

The difference is much smaller then I've expected, but again those are
very small images (next time I'll try to do just qt4 builds).

Fastest is TMPDIR on tmpfs (BUILDDIR is not important - same times with
BUILDDIR also in tmpfs and on SATA2 disk).

raid0 is only about 4% slower

single SATA2 disk is slowest but only a bit slower then raid5, but that
could be caused by bug #2314 as I had to run build twice..

And all times were just from first successfull build, it could be
different with avg time over 10 builds..

And all builds on=20
AMD FX(tm)-8120 Eight-Core Processor
16G DDR3-1600 RAM
standalone SATA2 disk ST31500341AS
mdraid on 3 older SATA2 disks HDS728080PLA380

bitbake:
commit 4219e2ea033232d95117211947b751bdb5efafd4
Author: Saul Wold <sgw@linux.intel.com>
Date:   Tue Apr 10 17:57:15 2012 -0700

openembedded-core:
commit 4396db54dba4afdb9f1099f4e386dc25c76f49fb
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Sat Apr 14 23:42:16 2012 +0100
+ fix for opkg-utils, so that package-index doesn't take ages to complete

BUILDDIR =3D 1 SATA2 disk
TMPDIR =3D tmpfs

real    84m32.995s
user    263m46.316s
sys     48m26.376s

BUILDDIR =3D tmpfs
TMPDIR =3D tmpfs

real    84m10.528s
user    264m16.144s
sys     50m21.853s

BUILDDIR =3D raid5
TMPDIR =3D raid5

real    91m20.470s
user    263m47.156s
sys     52m23.400s

BUILDDIR =3D raid0
TMPDIR =3D raid0

real    87m29.526s
user    263m0.799s
sys     51m37.242s

BUILDDIR =3D 1 SATA2 disk
TMPDIR =3D the same SATA2 disk

Summary: 1 task failed:
  /OE/oe-core/openembedded-core/meta/recipes-core/eglibc/eglibc_2.15.bb,
do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit
code.
  see https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2314

  real    48m23.412s
  user    163m55.082s
  sys     23m26.990s
+
touch
oe-core/tmp-eglibc/work/x86_64-oe-linux/eglibc-2.15-r6+svnr17386/eglibc-2_1=
5/libc/Makerules
+
Summary: There were 6 WARNING messages shown.

real    44m13.401s
user    92m44.427s
sys     27m38.347s

=3D

real    92m36.813s
user    255m99.509s
sys     51m05.337s

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--fwqqG+mf3f7vyBCB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk+NjFMACgkQN1Ujt2V2gBxlhQCgrEdrf5O0J9LJ3Zrqw6dCp/hl
o5YAmQFN+zhhm0nGqj7LQ+b1anO51oHp
=jRxU
-----END PGP SIGNATURE-----

--fwqqG+mf3f7vyBCB--
