Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E77D9E0076C; Thu,  2 Oct 2014 12:08:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01BAFE00749
	for <yocto@yoctoproject.org>; Thu,  2 Oct 2014 12:08:13 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id d1so5133891wiv.6
	for <yocto@yoctoproject.org>; Thu, 02 Oct 2014 12:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=wq7XPGdgEPxaQZAtjC+ZHryHxy7XlEPWfHz0I7MFZp8=;
	b=Kh9HpgyTJmY0L7KZDoMB2c2JnSj/WhAUGhP1nMFWaHUVerkKH0mQvMhTK01ZS4Lhsr
	1Ydw1PJM23kPwVvsaFQygN2bFa9idwn7YXlAuP/uPatYuLxWltarAUwZQ4wn+3q5h8sf
	gpLqpR1C26w9aVne3QeHUW+P/KPe40p7B5k6nXQmi2ZdbvAJWmIhem49L21eBU1pMvrF
	gAl7Ow5E9BXNL1YrljR4Skf0SyDTVR6Ys8/FhHrPz+UKtHf7eI1pK0pqGUyE/PI1iEfg
	dol9bq+f3kjPLrn4FqWxAcnQTmbpPwCtPOAtdxMgWj49gIQLYSuAEj7RmPE2fto9qasQ
	7YXA==
X-Received: by 10.180.75.210 with SMTP id e18mr6833230wiw.6.1412276892402;
	Thu, 02 Oct 2014 12:08:12 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	ei1sm2151395wib.20.2014.10.02.12.08.11 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 Oct 2014 12:08:11 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 2 Oct 2014 21:09:08 +0200
To: Chris Tapp <opensource@keylevel.com>
Message-ID: <20141002190908.GJ25706@jama>
References: <OF2C69ED33.175EBBCF-ONC1257D65.0034C92B@alpine.de>
	<CAJTo0LaHLETQJxzVpm_B9y+GX9RNBiCY1UF7kBhuWBEeMcs+Uw@mail.gmail.com>
	<3235B79C-5FB8-46CD-82AD-96E2A6BBB159@keylevel.com>
MIME-Version: 1.0
In-Reply-To: <3235B79C-5FB8-46CD-82AD-96E2A6BBB159@keylevel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recommended Hardware for building
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
X-List-Received-Date: Thu, 02 Oct 2014 19:08:18 -0000
X-Groupsio-MsgNum: 21744
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="to+bXLvrczl8f0V1"
Content-Disposition: inline

--to+bXLvrczl8f0V1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 02, 2014 at 05:51:29PM +0100, Chris Tapp wrote:
>=20
> On 2 Oct 2014, at 11:04, Burton, Ross <ross.burton@intel.com> wrote:
>=20
> > On 2 October 2014 10:36, Oliver Novakovic <Oliver.Novakovic@alpine.de> =
wrote:
> >> Can anyone recommend a reasonable performant hardware setup to use ?
> >>=20
> >> What should be considered ? Are there any pitfalls ? What about bottle=
necks
> >> in the build system ?

you should start by saying what you're going to build, my experience is
quite different when building "small" images like console-image or even
x11-image and "big" images/feeds which contain whole qt5 stack, 3 webkits a=
nd
2 chromium builds.

In general: bitbake will better utilize all available performance with
bigger image (e.g. build time for console image won't change so much if
you go from 8 cores to 24, but building e.g. just webkit alone will be
more than twice faster on 24 cores).

Regards,

> >> Specifically:
> >>=20
> >> How many cores are recommended ? And how much cache is necessary ?
> >> How much of the main memory does Yocto really use ? Is 32 GB sufficien=
t or
> >> should I go for 64 ?
> >>=20
> >> Does it make sense to use two SSDs as Raid0  to get builds faster ?
> >=20
> > As much of everything as you can afford.  :)  The build isn't heavy in
> > any particular metric, so don't sacrifice RAM for SSDs for example.
> >=20
> > RAID 0 over SSD would be nice and fast, but I prefer having a good
> > amount of RAM and a tuned ext4 (no journal, long commit delay) so data
> > doesn't actually hit the disk as frequently. Keeping the actual build
> > directories on a separate disk is good for performance and not causing
> > data loss when you lose a disk.
> >=20
> > There are people that have 64GB in machines and then set TMPDIR to a
> > tmpfs.  Surprisingly this isn't that much faster (5% or so), but it's
> > a lot easier on the hardware and power consumption.
>=20
> My experience:
>=20
> I've got a quad core with hyper-threading (so 8 usable cores) running at =
about 3.8 GHz, 16GB of RAM and use multiple SSDs - one to hold the meta dat=
a, downloads and top level build areas (local.conf, etc) and have the TMPDI=
R on a second SSD (so, as Ross says, I don't get a surprise when it wears o=
ut!).
>=20
> I can build my images (basically an x11 image) in just under 60 minutes (=
once all the files have been fetched). I run with BB_NUMBER_THREADS and PAR=
ALLEL_MAKE both set to 16 to make sure the cores are fully loaded as much a=
s possible (other says that should be 8 and 8 to reduce scheduling overhead=
).
>=20
> During the build the system is CPU bound quite a bit of the time (so more=
 cores should help), but there are significant periods where the build depe=
ndency chain means this isn't the case and only two or three cores are acti=
ve. Previously I recall comparing results with someone else and finding tha=
t having lots more cores (24, I think) didn't give a significant improvemen=
t in build time (certainly not for the 3x system build cost).
>=20
> I've never seen peak memory usage go much above 9 GB during a build, and =
the peaks generally coincide with linking activities for "big" items (gcc, =
eglibc). This is likely to go higher with more active threads.
>=20
> I started out with a RAID-0 SSD build array, but I didn't really see any =
difference over a single high-spec (consumer) SSD. As Ross said, running a =
fast file system on the disk is a good idea.
>=20
> --
>=20
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>=20
> ----
> You can tell you're getting older when your car insurance gets real cheap!
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--to+bXLvrczl8f0V1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlQtotQACgkQN1Ujt2V2gBysmACgl7vo2a1IvtdnhSQJkyWiDwMN
G6UAnRGNcY62vD+FfPvGGpmYZiEwkpUk
=hA2x
-----END PGP SIGNATURE-----

--to+bXLvrczl8f0V1--
