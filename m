Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23F1CE007AD; Mon, 18 Aug 2014 07:43:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4449AE007A2
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 07:43:22 -0700 (PDT)
Received: by mail-lb0-f180.google.com with SMTP id v6so4274095lbi.11
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 07:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=/+EpIqaGDe0vbUS9H1rbEFbeDXjzrERjPM+DuTkdZ30=;
	b=rFKzvvjQmDrXBlvGAGCXuf4HQjej6i9iwcN/UYkwu6h4/94ODNqilpOR2mySvGv0p+
	HPr7MrRgfN4Fm69ypeo79uKf/dNBjFeaPos1D3dpIaRWbhFBM0rFxL6OaKUA07kGir3N
	3NvGXRC5TlGFHqmzSqsMGkoYjOpc43qNAN5AXtr/m5Tx7Wj4ptKxWxLysdH7xI56thGo
	Wn9CByPUdGYsmXNKuZ4/UUIWit9dOC/opMTOhA7vY09+hIKf2dgSCTaDtF84TrISMmxV
	XlwZhv4HeFGXWWTTKULyo98aJORWuHy6t2z59o9UZcqhBcbn8ajhHHoGEJg8HDJavZMv
	wkZA==
X-Received: by 10.152.5.194 with SMTP id u2mr13369211lau.68.1408373001449;
	Mon, 18 Aug 2014 07:43:21 -0700 (PDT)
Received: from gmail.com (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id m1sm10667903laj.6.2014.08.18.07.43.19
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 18 Aug 2014 07:43:20 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
Date: Mon, 18 Aug 2014 14:43:16 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Christopher Larson <clarson@kergoth.com>
Message-ID: <20140818144316.GF12992@gmail.com>
References: <20140818134453.GE12992@gmail.com>
	<CABcZANmKtKEC=VX2La83gpvQVA84yf6VdUvNXv412Nwjk_2zDA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABcZANmKtKEC=VX2La83gpvQVA84yf6VdUvNXv412Nwjk_2zDA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE Devel <openembedded-devel@lists.openembedded.org>
Subject: Re: toybox in OpenEmbedded
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
X-List-Received-Date: Mon, 18 Aug 2014 14:43:29 -0000
X-Groupsio-MsgNum: 21140
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="nYySOmuH/HDX6pKp"
Content-Disposition: inline

--nYySOmuH/HDX6pKp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 18, 2014 at 07:29:33AM -0700, Christopher Larson wrote:
> On Mon, Aug 18, 2014 at 6:44 AM, Paul Barker <paul@paulbarker.me.uk> wrot=
e:
>=20
> > I've been wanting to try out toybox within OpenEmbedded for quite a whi=
le
> > and
> > have finally found time to put a recipe together. Toybox is a BSD-licen=
sed
> > alternative to Busybox which may be of interest to a few people. It's
> > still a
> > work in progress but it already covers a large number of the basic
> > commands a
> > system needs. It should tie in well with the recent work Khem has done =
to
> > enable
> > the use of musl in OpenEmbedded as toybox and musl are often used toget=
her
> > (e.g.
> > Aboriginal Linux distro).
> >
> > My patches are currently against openembedded-core for convenience but =
this
> > probably belongs in meta-oe for now. I've done some basic testing on
> > qemuarm but
> > nothing significant. toybox builds and installs correctly though and I'=
ve
> > set
> > ALTERNATIVE_PRIORITY =3D 60 so that it takes precedence over busybox to=
ols.
> >
> > Removing toybox after it has been installed currently bricks the system
> > though
> > as the postrm script runs after '/bin/toybox' has been removed (so thin=
gs
> > like
> > '/bin/ln' become broken links and the update-alternatives script can't
> > run).
> >
>=20
> One option for that might be to try the C implementation of alternatives
> that's provided in chkconfig, rather than cworth's shell version. I haven=
't
> tested it in that context, but I doubt it runs so many external tools.

I did try that at one point in the last year or so but couldn't get it to w=
ork.
I think it was something to do with it lacking offline root support. The on=
ly
implementation I've been able to get working is the shell script one which =
is
now in opkg-utils.

I'm actually looking at making a new update-alternatives implementation in =
C as
I wanted to explore a few alternative ways of doing things. I was going to =
post
about that once I have some basic working code.

I think the solution for the removal problem is to call update-alternatives=
 in a
pre-rm script rather than a post-rm script. There's already an entry in the=
 opkg
issue tracker for adding support for pre-rm scripts, that's another thing I=
'm
planning on fixing soon.

Thanks,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--nYySOmuH/HDX6pKp
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJT8hEEAAoJEBwoJlo7UPQDjtMH/R0DdX7utgM6DFtecMfFMJw3
zoIiU4BSpBaCY+Nbzr98Enq6H602Nc0jnsVEJJ14YSYJ+Cc9CgsS4EHRZvts+/nC
iLGCdwQam0hyMNa+uXmgwUDqWH5zo5YK/OyHL8MwTuPC5wrvsUW1SCE2mQX67Tu+
PmuE4y+zgXlqt8VvWHxDWOy9+z63D7wSUeiSM/g+RHNsIbUtUCxz1+9ZZ8HnsWhQ
IHd9B11yRmGuCYIlQc358Z8Dgu2GPfzMAhwH5gvrHURpTXJ5ck+P7hASW6fUtvdf
rPU/d0hTUvcR1BGiigD7RUy/Cp1lo6H361RuZihpd64gpedaJj05NLXbosRas6M=
=d5Sf
-----END PGP SIGNATURE-----

--nYySOmuH/HDX6pKp--
