Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD19CE0070C
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 22:51:53 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so2190046wgb.11
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 22:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=8SWTCNoXl5LfTxTHm+E9DZChNH9VgNWRbyk84+YCJRs=;
	b=PXycMJTrtGtHH6CpioUMKL5ar5iXmwoyBs9cCGUYV0TuBuEAvIofZbW9/sSxX7Omeu
	xrUY7BNHUU/uEvQFi9N21VCqYRzzmKFxAjtRtbDb6REhLHBWaOKPymwADpZn4NJ0rtfa
	JZ3HE2FtHuikdaqriSk7h5UV5n+LoUrU+X+eysNbX6p4gYRLjDiQcroFdMT9Y5BgvGCU
	4nzUn0oS0OflYuK9f7IVwS8cxOaX9xRxcXCX2+892ALyy7kCCe8SnG5o9drLlk485+rh
	XdffqXI6yNNaKORe3taBzJLa5LDZvc1E7ExcCjR68Y0OEt+8DpyvTwL6ZAUo8djkoXjJ
	f76w==
Received: by 10.216.138.38 with SMTP id z38mr192382wei.63.1334296312505;
	Thu, 12 Apr 2012 22:51:52 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id 17sm3213895wis.0.2012.04.12.22.51.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 12 Apr 2012 22:51:51 -0700 (PDT)
Date: Fri, 13 Apr 2012 07:51:51 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Message-ID: <20120413055150.GA3652@jama.jama.net>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
	<1334216100.2759.2.camel@babel.joshhome>
	<20120412080021.GA3661@jama.jama.net>
	<4F86E2E8.2030607@linux.intel.com>
	<CAPhnLPCc1+uV5rM48k45JxbSwHpPqG9x7ci=uN_5TA8j1XmpJg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPhnLPCc1+uV5rM48k45JxbSwHpPqG9x7ci=uN_5TA8j1XmpJg@mail.gmail.com>
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
X-List-Received-Date: Fri, 13 Apr 2012 05:51:54 -0000
X-Groupsio-MsgNum: 6060
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 12, 2012 at 04:37:00PM -0700, Flanagan, Elizabeth wrote:
> On Thu, Apr 12, 2012 at 7:12 AM, Darren Hart <dvhart@linux.intel.com> wro=
te:
>=20
> > -----BEGIN PGP SIGNED MESSAGE-----
> > Hash: SHA1
> >
> >
> >
> > On 04/12/2012 01:00 AM, Martin Jansa wrote:
> > > On Thu, Apr 12, 2012 at 01:05:00PM +0530, Joshua Immanuel wrote:
> > >> Darren,
> > >>
> > >> On Wed, 2012-04-11 at 17:30 -0700, Darren Hart wrote:
> > >>> I run on a beast with 12 cores, 48GB of RAM, OS and sources on
> > >>> a G2 Intel SSD, with two Seagate Barracudas in a RAID0 array
> > >>> for my /build partition. I run a headless Ubuntu 11.10 (x86_64)
> > >>> installation running the 3.0.0-16-server kernel. I can build
> > >>> core-image-minimal in < 30 minutes and core-image-sato in < 50
> > >>> minutes from scratch.
> > >
> > > why not use so much RAM for WORKDIR in tmpfs? I bought 16GB just to
> > > be able to do my builds in tmpfs and keep only more permanent data
> > > on RAID.
> >
> > We've done some experiments with tmpfs, adding Beth on CC. If I recall
> > correctly, my RAID0 array with the mount options I specified
> > accomplishes much of what tmpfs does for me without the added setup.
> >
>=20
> This should be the case in general. For the most part, if you have a dece=
nt
> RAID setup (We're using RAID10 on the ab) with fast disks you should be
> able to hit tmpfs speed (or close to it). I've done some experiments with
> this and what I found was maybe a 5 minute difference, sometimes, from a
> clean build between tmpfs and RAID10.

5 minutes on very small image like core-image-minimal (30 min) is 1/6 of
that time :)..=20

I have much bigger images and even bigger ipk feed, so to rebuild from
scratch takes about 24 hours for one architecture..

And my system is very slow compared to yours, I've found my measurement
of core-image-minimal-with-mtdutils around 95 mins
http://patchwork.openembedded.org/patch/17039/
but this was with Phenom II X4 965, 4GB RAM, RAID0 (3 SATA2 disks) for
WORKDIR, RAID5 (the same 3 SATA2 disks) BUILDDIR (raid as mdraid), now
I have Bulldozer AMD FX(tm)-8120, 16GB RAM, still the same RAID0 but
different motherboard..

Problem with tmpfs is that no RAM is big enough to build whole feed in
one go, so I have to build in steps (e.g. bitbake gcc for all machines
with the same architecture, then cleanup WORKDIR and switch to another
arch, then bitbake small-image, bigger-image, qt4-x11-free, ...).
qt4-x11-free is able to eat 15GB tmpfs almost completely.

> I discussed this during Yocto Developer Day. Let me boil it down a bit to
> explain some of what I did on the autobuilders.
>=20
> Caveat first though. I would avoid using autobuilder time as representati=
ve
> of prime yocto build time. The autobuilder hosts a lot of different
> services that sometimes impact build time and this can vary depending on
> what else is going on on the machine.
>=20
> There are four places, in general, where you want to look at optimizing
> outside of dependency issues. CPU, disk, memory, build process. What I
> found was that the most useful of these in getting the autobuilder time
> down was disk and build process.
>=20
> With disk, spreading it across the RAID saved us not only a bit of time,
> but also helped us avoid trashed disks. More disk thrash =3D=3D higher fa=
ilure
> rate. So far this year we've seen two disk failures that have resulted in
> almost zero autobuilder downtime.

True for RAID10, but for WORKDIR itself RAID0 is cheeper and even higher
failure rate it's not big issue for WORKDIR.. just have to cleansstate
tasks which were in hit in the middle of build..

> The real time saver however ended up being maintaining sstate across build
> runs. Even with our sstate on nfs, we're still seeing a dramatic decrease
> in build time.
>=20
> I would be interested in seeing what times you get with tmpfs. I've done
> tmpfs builds before and have seen good results, but bang for the buck did
> end up being a RAID array.

I'll check if core-image-minimal can be built with just 15GB tmpfs,
otherwise I would have to build it in 2 steps and the time wont be
precise.

> With a higher commit interval, the kernel doesn't try to sync the
> > dcache with the disks as frequently (eg not even once during a build),
> > so it's effectively writing to memory (although there is still plenty
> > of IO occurring).
> >
> > The other reason is that while 48GB is plenty for a single build, I
> > often run many builds in parallel, sometimes in virtual machines when
> > I need to reproduce or test something on different hosts.
> >
> > For example:
> >
> > https://picasaweb.google.com/lh/photo/7PCrqXQqxL98SAY1ecNzDdMTjNZETYmyP=
Jy0liipFm0?feat=3Ddirectlink

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--sm4nu43k4a2Rpi4c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk+HvvYACgkQN1Ujt2V2gBwiCACfQ3LaZQAv+4T3xznA8vtkemG9
gS0AoJU4pPmVliEIX3veAcuuFff+br3B
=WAtA
-----END PGP SIGNATURE-----

--sm4nu43k4a2Rpi4c--
