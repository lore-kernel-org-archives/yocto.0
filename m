Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4267E00E68; Thu, 19 May 2016 08:13:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FA2DE00D86
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:13:20 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id w143so21755495wmw.3
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=PyxBSnaTJzobgtTg1kbCqQWwce0eUO2aI7w14xrjYyw=;
	b=Lo9SERYPgTzvxwInM1jNYMvGY9qB+ZV/jjlOQvQzDYFf+GdtC6O1VigN81ZVtB9eWt
	DvuuE8KkR/jdkif0ZGVz+moLGWdzgr96ohnUzRIQtLZBN5cF2AhInjxKDwgdK/R55JZN
	D6hNvUvigkvi3YBSqOIMQuca4qcxNwDToehhEJ+4plfvkiFQ7UyMc6FCVWsqc9epwISQ
	b2Kln7RdVr4/fOE63fJqe6CmZxFnw19ccVj2VgaF+zhKJhO547tTkeYViJnO7l6fxpmH
	2Gtfg2VQ1ucayD6jaagIJ13zV0pC63sQXXrwYYZSMnRL6T0x9woRCY0218APSKrv82bN
	BcpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=PyxBSnaTJzobgtTg1kbCqQWwce0eUO2aI7w14xrjYyw=;
	b=h3dwxg+JueBlDfZ3f5jo6chOMUQ/FlhREXpxlX4bQBsuG5w98dyUDAkvqwlORZPzhe
	ZACkxWEuhPzIeUbzINacE36WU3gU/XV2rh/5TDWbx5KWEGppxL+wfZ/6h2lLc7Ayk/wG
	3N6zQbiwqO+eFDK36Dj0icR2gwgOO1KHnudHNZK55iJU/t9V6hH4dU1rUEjR5I9Uefp5
	wfTLQBx8EG9aNE+UPz2yEyU2h3r+U039F0SYyKEXFqKQF1ZsQb9vobkqUh9etbzcP1Aq
	IeRba43Wv8j+nyWnrzyWnyOJaY4oXTJ/OVodfvngh9+1wv0JMMRZNN6OfLlFhZFhtw95
	CmBw==
X-Gm-Message-State: AOPr4FVdmMzL2d296DXa8TF+LHEJdgf6uNnzFLcZK6wSFGDNIJ/1tQT8FfNT5Oa2CaJrEg==
X-Received: by 10.28.234.130 with SMTP id g2mr15175616wmi.42.1463670799587;
	Thu, 19 May 2016 08:13:19 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188]) by smtp.gmail.com with ESMTPSA id
	g132sm15454850wme.0.2016.05.19.08.13.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 08:13:18 -0700 (PDT)
Date: Thu, 19 May 2016 17:13:17 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20160519151317.GC9848@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
	<CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
	<CALbNGRSPbcfuyxaRxQcux01wKJmtSrG-ViK=sP8q82KM7AwtxQ@mail.gmail.com>
	<024301d1b18e$5e9cc5e0$1bd651a0$@neuf.fr>
	<CALbNGRQT6mBkosf2psOY5qWv9KLdv=3DXXwJNEBHZxS64eGzeA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRQT6mBkosf2psOY5qWv9KLdv=3DXXwJNEBHZxS64eGzeA@mail.gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Thu, 19 May 2016 15:13:24 -0000
X-Groupsio-MsgNum: 30078
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ctP54qlpMx3WjD+/"
Content-Disposition: inline

--ctP54qlpMx3WjD+/
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 19, 2016 at 08:28:00AM +0200, Andreas M=FCller wrote:
> On Thu, May 19, 2016 at 7:21 AM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
> > Hi Andreas,
> >
> > I've been able to do some testing with the latest 4.1 kernel.
> > So it can actually "work" in a way, but both the device tree overlay an=
d the driver in the kernel are "old".
> > This has an impact on stability: I can definitely start wayland/weston,=
 and it's "responsive", BUT after I started playing out with the demo appli=
cations, it quickly crashed...
> > So we could either try to backport the newer driver / dt overlay to the=
 4.1, which could be possible, or we could just support vc4graphics only fo=
r 4.4.10+...
> >
> > Since 4.1 is not heavily maintained anymore on github, since 4.4 is now=
 the default revision on github, and since development branches for 4.5 and=
 4.6 are already there on github, I would personally be inclined to support=
 vc4graphics only for 4.4.10+...
> > And I would also be in favor of moving the default version of the kerne=
l to the 4.4 series...
> >
> > What do you think is the best option there?
> >
> No need to backport to 4.1. 4.4 is fine. One question: are you able to
> change screen resolution for HDMI monitor (elder sdl fullscreen games
> need that)? This was not possible for kernel 4.1.
>
> Just to avoid misunderstandings: I like this patch series very much
> and would be happy to see it applied.
>

Santa heard you.

--
Andrei Gherzan

--ctP54qlpMx3WjD+/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPdgNAAoJEHO76Gt+erfPqkoP/2GYVq++fqaPl50nxPY9z6xd
RMeylVl08GeOQnUovuNcjIRTPDCuSH8dArf/nn9prpzzgbeH/bE3r+bEs+HfNfm7
qQhkm+TRsek5edaW0/B+Ibjd4EkeNBOJShEBTwQnyHDefkMnrbDbRz6VVy5hfIfl
OJNmR9bnNwiiR09/oxz0OF8I4GeWP8LEUY4sdK+qQDwOKBWHdDuCZGotgtO7qStp
wR0xcm3CZrnRiWx6kv+LCCIpCWgk0fjNSHL6BDpo/WyQoooN578BlpFVSM2s6yE6
xgIQ4CAqNONVHRjQiFn/uoeIHimO8tp4Z61qjlzx9f8TLzIHVBxpUgxgF3zvlO4w
c5/E3KVMHEhIq8k+vmA+6R9AKvh+85vOFUfg0r5yimdcFpCCVKd5yM8OEJK8Mknn
8bRv1UeeIxVnJjojzWqX7wX0y2/2yPPfp43iHNpikLPgJGD9p0HuNKA2mA9e8ggZ
WovDBOAkiZMaaZUfWSAfvtQmsd7hNoSqQZGmuBQuUXUyty3d8wN8wJ3LBg/FmJOH
vtbC6O0g5YacA8f6LUeT6P+EksbJ02lf/uV+LG0zrJVdarFX8ru0q3IQWWKV3XbD
CzvueSjtkC9XJF0bgPJ562HsbJGa/nDVzJUMMhQmqQwfdYD4H0UhZnpYQ3MS5Hrf
F5qLEfKTsZubOm5STwaV
=V1re
-----END PGP SIGNATURE-----

--ctP54qlpMx3WjD+/--
