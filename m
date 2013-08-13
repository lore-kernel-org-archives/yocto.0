Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1CABE01405
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 04:32:03 -0700 (PDT)
Received: by mail-ea0-f178.google.com with SMTP id a15so3993615eae.37
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 04:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=SUaLbs22C0B7HRQpGRZx7zlTTL1cptomGWeu/EhOncw=;
	b=PL5QlEiiSBr0HO6eilY032s/TcJjDgU9UTfu4E09wSFQ3lILaMmkl86mTbLsyGvjVA
	Gy7JjkU9Gos1c/Qbkng7MvJ4Mb792vDA4LXBiCb7Yyz12yTot3zq9uqpd10wOHgPt+o9
	lmyWhkyTHZSjnmDeIjUisk3ImotUs0lIWRSvvJNUz78NMBZQoymnoZQeI2OLWOtrozQ6
	4kkguVOYjsNljwm9SQyVZfDLpfjU3l4V35epoDlh7k2T4mBl75LcVTp6A4mm5PA1590g
	NgWHYP9vbo/cem1ZylMjycAxVEMI9bEXZobteQDxhqcOm0BmKXO8DsWrlVfBmb6eTbR5
	Va4g==
X-Received: by 10.15.109.135 with SMTP id cf7mr6124417eeb.0.1376393522832;
	Tue, 13 Aug 2013 04:32:02 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	bn13sm65606235eeb.11.2013.08.13.04.32.01 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 13 Aug 2013 04:32:02 -0700 (PDT)
Date: Tue, 13 Aug 2013 13:32:52 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20130813113252.GM17945@jama>
References: <CAJTo0LbWwCShYjVUfemPkiXP5fZjLwQoM2HNdYuqorXv_UNt8g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbWwCShYjVUfemPkiXP5fZjLwQoM2HNdYuqorXv_UNt8g@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Using tmpfs for WORKDIR
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
X-List-Received-Date: Tue, 13 Aug 2013 11:32:06 -0000
X-Groupsio-MsgNum: 15449
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="m+utxuhC6KVTvgNz"
Content-Disposition: inline

--m+utxuhC6KVTvgNz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 13, 2013 at 11:40:03AM +0100, Burton, Ross wrote:
> Hi,
>=20
> For a while I've been wondering about the possible performance
> improvement from using a tmpfs as $WORKDIR, so each package is
> unpacked, compiled, installed, and packaged in a tmpfs and then the
> final packages moved to the deploy/sstate/sysroot in persistent
> storage.  In theory with lots of RAM and a relatively long file system
> commit duration this should be what effectively happens, but there is
> a lot of I/O still happening during builds (and occasionally pausing
> the build whilst buffers empty here) which I was trying to mitigate,
> despite 12G of my 16G RAM being used as the page cache.
>=20
> Last night I finally got around to testing this.  Unless you've an
> ungodly amount of RAM the use of rm_work is mandatory (a 6G tmpfs
> wasn't sufficient as a kernel build almost fills that, 8G was
> sufficient for me) so I did the HDD times with and without rm_work for
> fair comparisons.  Each build was only done once but the machine was
> otherwise idle so error margins should be respectable.  The benchmark
> was core-image-sato for atom-pc from scratch (with cached downloads).
>=20
> Work in HDD without rm_work: ~68 minutes
> Work in HDD with rm_work: ~71 minutes
> Work in tmpfs with rm_work: ~64 minutes
>=20
> Everyone loves graphs, so here's one I knocked up:  http://bit.ly/146B0Xo
>=20
> Conclusion: even with the overhead of rm_work there's a performance
> advantage to using a tmpfs for the workdir, but the build isn't
> massively I/O bound on commodity hardware (i7 with WD Caviar Green
> disks).  It's definitely a quick and easy test (assuming enough RAM)
> to see how I/O bound your own builds are.

I'm building in tmpfs for long time so I can add few more comments.

1) with 64GB ram + rm_work I can do my huge world builds (with 20+ layers)
in tmpfs (whole TMPDIR not only WORKDIR), before
http://git.openembedded.org/openembedded-core/commit/meta/classes/rm_work.b=
bclass?id=3D4067afcda78d17058f2aa8d7f82173d181e0aae4
I had to build in "steps"

2) rm_work.bbclass sets BB_SCHEDULER ?=3D "completion", but it doesn't
work as I would expect, it still keeps many build directories around,
before rm_work task is executed, simple solution for lazy people is to
build in "steps", instead of
bitbake my-big-image
do
bitbake gcc-cross
bitbake virtual/kernel
bitbake webkit-gtk
bitbake my-big-image
it will force rm_work to be executed sooner (before each target is
finished and will clean more space in tmpfs with each step). This way
I'm able to use 14GB tmpfs WORKDIR on my poor desktop with only 16GB RAM
to build anything (webkit builds for x86-64 MACHINE are the worst)

3) there is bug in sstate dependency handling that too many
do_package_setscene tasks are executed in each build with rm_work, which
also causes package/packages-split directories to be created again in
tmpfs, see
http://git.openembedded.org/openembedded-core/commit/?id=3D6107ee294afde395=
e39d084c33e8e94013c625a9

4) using tmpfs has 2 more advantages
   - disks don't wear off so fast
   - system is more responsible when you're using the same disk for
     something else e.g. to edit recipes when some build is already
     running or when night backup starts when build is still running

Regards,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--m+utxuhC6KVTvgNz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlIKGWQACgkQN1Ujt2V2gBwgaACfZuRJYo0Jf+kGUb1XQfHl+IXc
FxAAoJHMLr9enHXgWLKb1WpaVaDyf1P6
=WauP
-----END PGP SIGNATURE-----

--m+utxuhC6KVTvgNz--
