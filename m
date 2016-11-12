Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93AB3E00AB4; Sat, 12 Nov 2016 04:24:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 2.6 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server *      [46.198.0.251 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60212E00A84
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 04:23:55 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id g23so3039058wme.1
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 04:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=OdYvnoLYqbCMiR0GT/1S8JX7RGIbeLUmNh8m2fsW+SU=;
	b=Fc9ZQrS/l7Ri+CHknhgJeTvQQO7RaayjfQxBFiJKaLcrUNkrE1n9S0bFC/G4WucZUy
	MdDMs8XHlhWLBRb+ZJ+tRFFwEy5HgBHXEolaJzA9IDyvkvyheKRW4heGU1KL8ErrTSE/
	oXMezBt3MIO5fLkBAGrS998KNun6d3spNnt4cTf1eN6pk6H6hFG72/r+UBugix6NtJHw
	cR3ZQ6Foj8lDChVZw2bplJSCr2ftuvzMFopnWw6RBoBBMWP6HAtyoO3stK629RCI9+1a
	GX3ALXzRsDtrHzpb42T0z/LFVvSycIXDU39sgZ1OmsNpXTSjqLTI43JVdfDPFJ+641FQ
	X7/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=OdYvnoLYqbCMiR0GT/1S8JX7RGIbeLUmNh8m2fsW+SU=;
	b=DqWN9pzG0yFWtgs4B+1wmJKT9GokiJhFYbWlIO+MeEV1KMZgL51irLIgHa7oFD7Z5r
	E4lcBinHpWm0Ml7jUOjykGfljy8rqJX3dM2Mc8t6Ua3SgIFvnuBrbuS0qZyAEJrPNdUJ
	mr6nhLnVEYALlW3R7bW/xyUEczN9eIZPMbZn6I9qLe01D17UHFNR8aPh8JMSzNzJkzMm
	IJzKH5vDgZSoCnm13YxVygCSdPuhOsGns1tcjavW8bl4h6ogcqHoAfLy1cTJ4fZOka2v
	b4Th+CNH1T8pPlpCItNWJg9urZ0qtniHSdyLWh+Q+8D/e+Qh6g5L39MC1jeNvV/YSfj8
	ETlA==
X-Gm-Message-State: ABUngvfJQzXa8tUgaHE/3vBtNGbAk/YBiHnGag+MD9mbevaRmkUwxOT5RB6botP96KMDkw==
X-Received: by 10.194.82.163 with SMTP id j3mr1301695wjy.232.1478953434755;
	Sat, 12 Nov 2016 04:23:54 -0800 (PST)
Received: from carbonA.lan (46-198-0-251.adsl.cyta.gr. [46.198.0.251])
	by smtp.gmail.com with ESMTPSA id y4sm16877975wjp.0.2016.11.12.04.23.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 12 Nov 2016 04:23:53 -0800 (PST)
Date: Sat, 12 Nov 2016 12:23:45 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161112122345.GA14139@carbonA.lan>
References: <20161106072515.3505-1-raj.khem@gmail.com>
	<CAK18fxEVW3NTsxOUbJQfM3XP6V7==G_V_dPG7P9-cjxVoWhpNg@mail.gmail.com>
	<ebb5bf5e-6ac5-a97d-09b3-d292f1f72995@mlbassoc.com>
	<20161108113838.GC19379@carbonA>
	<CAMKF1spR5-PpjfkfDadP_8FqrGHt0-T34k=RjwrwPg9y2Bd0Hg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1spR5-PpjfkfDadP_8FqrGHt0-T34k=RjwrwPg9y2Bd0Hg@mail.gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 1/2] firmware: Use release tarballs
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
X-List-Received-Date: Sat, 12 Nov 2016 12:24:00 -0000
X-Groupsio-MsgNum: 32949
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline

--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 08, 2016 at 06:46:45AM -0800, Khem Raj wrote:
> On Tue, Nov 8, 2016 at 3:38 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Tue, Nov 08, 2016 at 12:35:47PM +0100, Gary Thomas wrote:
> >> On 2016-11-08 12:16, Andrei Gherzan wrote:
> >> > On Sun, Nov 6, 2016 at 7:25 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >> > > This is a binary repo and its quite large in size
> >> > > we do not need the whole history of this repo since
> >> > > most of stuff needed is binaries, therefore switch
> >> > > to release tarballs
> >> > >
> >> > > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> >> > > ---
> >> > >  recipes-bsp/common/firmware.inc | 12 +++++++-----
> >> > >  1 file changed, 7 insertions(+), 5 deletions(-)
> >> > >
> >> > > diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> >> > > index ed0782f..8862f58 100644
> >> > > --- a/recipes-bsp/common/firmware.inc
> >> > > +++ b/recipes-bsp/common/firmware.inc
> >> > > @@ -1,8 +1,10 @@
> >> > > -RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
> >> > > -RPIFW_DATE ?= "20161030"
> >> > > -RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
> >> > > -RPIFW_S ?= "${WORKDIR}/git"
> >> > > +RPIFW_DATE ?= "20161020"
> >> > > +RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
> >> > > +RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
> >> > >
> >> > >  SRC_URI = "${RPIFW_SRC_URI}"
> >> > > -SRCREV = "${RPIFW_SRCREV}"
> >> > > +SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
> >> > > +SRC_URI[sha256sum] = "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
> >> > > +
> >> > >  PV = "${RPIFW_DATE}"
> >> >
> >> > Merged to master. Thanks.
> >>
> >> Sadly, the firmware revision went backwards in this change.
> >> Do you want a new patch to play catch-up?
> >>
> >
> > Good catch. I'll fix it. Thanks.
>
> ah sorry about that.
> just hardcode PV = "20161030" for now. with next release we will get it right
> since its already past oct 30.

Actually the last archive is 1.20161020.
https://github.com/raspberrypi/firmware/releases

--
Andrei Gherzan

--LZvS9be/3tNcYl/X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYJwnNAAoJEHO76Gt+erfPHzQP/Avr3XnpyseSbRTGkPjpxcwz
1dhgc2CZRfq5aMHgAY9Ie6bb57uSn2aFwhIz5v5Zmc5kKN9R704KsgEtLY0NUtoV
Nw3Jz5GODuS4y2+TJIAlO2AvMp3SRjXFpVD7O5gpXxZ1fCKgqH6sCJ6dIVOicQ2m
u2kFNrbGBylBmPx7C9F2dcU7Ziep7IeoS/KtNMR5FPHoGZXZtlWor1tbL7fSlqRI
Db0A30zeV+YYgMuHTbXSJE9zPYDmKljHEmmILlgvXpzYupAZ1sBLBbAA332T1Te4
IWTS1IgK28EsXsAO8WClj5Yl0sELooqscxWnstMiZ9u6SkgpBpcMx3bzu8wpu6lT
1Ek7dtT54dF1fhIHgSs5NkKmwuESekuXIUnCTDLtoxKuCUe/SK5IcB7LZDYsAsd2
aAGQ5mH7ZA3P4UwtPhNPmHLz+/g+wF04ByOUq5a6EnAo3GC3RwM9G87xBf+aJKXi
GWJ7f+sy2u4pjUMWSkC7Tj0zPU/Z3sFpiFZnviq7H1+S6KTcBLn/kEPmXPQXTq2J
so4WVRauEBgelyyTjY5tuaHwd7oqqDcC352+PFsU2mvZWYoJOLZXp5l8lYRimnyg
bYUV+g3rheNpjJ/wEDYDe3+iMO2Bap5ao6y+hSPT5KHEKQZI+pK/tRbkTKg4J2tD
EwCz8rq08D8Vz1qrRjCI
=Tn/S
-----END PGP SIGNATURE-----

--LZvS9be/3tNcYl/X--
