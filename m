Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BDE5E00E68; Thu, 19 May 2016 08:11:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21BAEE00D86
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:11:14 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id s63so7269494wme.2
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=s3ndBmnAozM9nivsAdm2jIW6hxeOFXANawCe3vmdNLI=;
	b=bwyA6cq3hrwHze4VMbFHsF1Hin1HUDnxeTcvCNdi3J9elrZnG0NQVpxDTELI1nKKAj
	dVQVPh5Ng2NzCDU8duVdxTX5ybD0czE0x8a0wgThAdOGY5bpyZZpHtUccEVy4wkyH8C8
	zsatyfIXAi6Rvw47My1ZIwuH46lbDLDrv/vnSnWW0Z/Z1n22l4bXoLuaXasydog+oSKG
	OsTS3RbHR3Zv2L6D1W+uBekhIu4nU2QPsU2e+Qfr4wIBqC4wlpqWXAlNjqysOkSEF90Y
	+ujuEVOhvwZCP2sP3Srm/zvVCJ63iWApXpaAwf9kr7OiYK8nnMgekymJNLmRzCv0HEBf
	T2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=s3ndBmnAozM9nivsAdm2jIW6hxeOFXANawCe3vmdNLI=;
	b=Wkngg+8FNoTrztQBH5mP/EIDWvqCCZR75dy7lPjXSOOsJvChD9tGfck74B5eoegAj0
	D+uWTudLyRlwQxay6LPvkf48k8M5ibMzW52oONVkIJ6WR4UhXZ5ibOu91E/mnVdfoCiv
	ZOdOXjjZvdrUtHXzLsXlwywKCovsVrSJ01keriE9GqzdjYT0TfVfYQatuO2zvbgjS5+L
	3tARSQ9e1qfvvdaEDN7V6sTJGLJjiw/aHtIGFa7cw8NfWx7wz4gX6VX0+2KGsWYCiC4L
	fEiyfuMLwrG4A/iLSOHQQ/G3tBxf3hGjmC2+0ZycV8hU4EDIHQTT4DP9rnRRLFF6pOBY
	ht8A==
X-Gm-Message-State: AOPr4FUs86qkRINti4bQQ9ceUsZsuNEGwVzqxp4bFfD7OBR5UO5WflCLniuzthnrR5o20A==
X-Received: by 10.28.23.138 with SMTP id 132mr14854125wmx.50.1463670674017;
	Thu, 19 May 2016 08:11:14 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188]) by smtp.gmail.com with ESMTPSA id
	o8sm10393677wjs.19.2016.05.19.08.11.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 08:11:13 -0700 (PDT)
Date: Thu, 19 May 2016 17:11:11 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20160519151111.GB9848@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
	<CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
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
X-List-Received-Date: Thu, 19 May 2016 15:11:22 -0000
X-Groupsio-MsgNum: 30077
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kORqDWCi7qDJ0mEj"
Content-Disposition: inline

--kORqDWCi7qDJ0mEj
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 18, 2016 at 11:46:39PM +0200, Andreas M=FCller wrote:
> On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
> > One thing I didn't make configurable, but that maybe could be, is the p=
arameter passed to the overlay.
> > I selected cma-256, based on experience from other people, and because =
my configuration is RPI2/3 with 1G of memory.
> > I realize it might not work well with RPI0/1, which have less memory av=
ailable...
> > So even if I believe cma-256 is a good default value, it might be made =
selectable by the user, if we want to consider vc4 on RPI0/1.
> I played around with vc4 to but did not manage to get it work for an
> elder version 4.1 of kernel.
>
> I did in rpi-config:
>
> CMA_SIZE =3D "cma-256"
> CMA_SIZE_raspberrypi =3D "cma-64"

I sent reply about this too. This is definitely one solution would I
would rather have a CMA_SIZE default value and a python function to
check its match with board variant. Cause in this way a user might be
able to use cma-96 on rapsberrypi.

> CMA_SIZE_raspberrypi0 =3D "cma-128"
> ...
> echo "dtoverlay=3Dvc4-kms-v3d-overlay,${CMA_SIZE}"
> >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>
> This is nothing but an untested suggestion.
>
> Without testing your series I would be very happy to see this or very
> similar applied in master: Since vc4 works, RaspberryPi turned into my
> reference test board - e.g. have not seen kde5 running that nice on
> another board..
>
> Andreas
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--kORqDWCi7qDJ0mEj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPdePAAoJEHO76Gt+erfPkKoQAKO8baJXugKXUFKwjDaG6658
xrpfu5cgR4HLIzwiL8f55TlX9cqW2D/GyvvEDfmd9+lwibJKdVghdS1dFJPq/ZqB
6v59djulSJHVVDfNLRDzTo3KCRpEnted+tpzVFHxCbnHZ8rnM8zv9IvgCL+COYqb
HUJ85s7YyMR8XTF0MpJOopUeYpQgQI7t39E14aFCRy2Jk7UsTlkq61FnKRDgaCaq
RCrnk5pZFefquzxCtC6iu6dee+4ES9w6dUKS4KObfsMzgEFm8GOYjCvLDRThXOMt
ygPtpW+V989F3rTYRdYHYkSBzEPnMco0gFMb1l1gpCeSuqhCWqR2FRJa1WtkHEux
O1MyuYLttxQxVnYFGHxUpFn3AdSBzhkjeS4GJHb9RCLUVbYQpjPw+rV9/6IkeeL9
2Z+Z1MsXmCLWVj8XMTzbAM7TockIP/+s+0pll7/W9/Pkbk7uMhRxA+SjuhhmXyHU
8gkjrPdEvb9AVYMNjyaj9PdcZciULLxRz/Ck24CV5t3bdbaqkHQos4Dlk0zxGcez
hUxRd0vwtKPSs/dzFT7s1HwMv2p4x/RMg1Bag7AzcLTrVIKHtded10QzdV/QTzTg
Igron8UxbECy0DI4uXU03bYmnDZL7aw1WLD7MdWU8Oqnzc8arJ9HGj+x/XZZ2vtG
CihjJt1bCS11jcw8VNZI
=btCl
-----END PGP SIGNATURE-----

--kORqDWCi7qDJ0mEj--
