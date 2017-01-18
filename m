Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F75EE00A16; Wed, 18 Jan 2017 07:41:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BABEE009CF
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 07:41:31 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id r126so4921796wmr.3
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 07:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=0PS1yBu3M/jdrsdNgA4IT3onBUB58lah4XNaOiBmRMY=;
	b=hdRyule4V16RWkiHgfIZbv1/f3EjA+8yjDiwAfvcQyDdJu6Gy9YduNEWQcXu7jA+c1
	BnrBHCEPFfvgoDCcK88dmviym8p+9RGKRXHE2U2HkX8P+Y8aNO5EUe2wbkMRUEe5XgJh
	qSUTxZ6fseRU3ail7mYA4TV6GVAGGWQjT7FD9lDXvuJ7391CeiSe8Co9wiXxLw/cyP66
	MKd1zIAGEqEYgiBo30ztwUJldIBg26u57Ef+awmXj1IM5h9wbqOKEzgvACL0D/Cde5Nq
	DlG30l/BqTut/SSnTAh6hqY4TVYlsemW1++4ODz7dYbzHZhVrvlXj1ywSWuv0Re/WEXA
	JqNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=0PS1yBu3M/jdrsdNgA4IT3onBUB58lah4XNaOiBmRMY=;
	b=YQQIiM+zCYAexhVtBD77VwU4rx8uy7dJxbIqZsE82szxszNdJKkVpcrZ45gsSM4p3z
	NmTt+gvo3oVnis/tI7KaOToTMQH4+UDApnycsOK8Pu6ykl1Wg+hgjXxxQyMWipY5EQxo
	XuR7gSe7V7GhlhiSwJnQi1rqtU8WwnCKPOpz3jfzRY+wLOuWDFmfTCh9NjJL2vRobMxL
	M4fWlSaU8em7aMGzEiRuCY++pSbXW5LNznCp9jp3PNBQJTtoB5DwknhXgjYCOEr6HByh
	KJAna9plKq03XWpIzZExNQxijLx5MZDXyeGHonQDrtOltWQizEeGRFRkMrGC4DBCRYiR
	gsMA==
X-Gm-Message-State: AIkVDXITp05fRav40uOLNVmeSB9My+0xrjB0UZ72qRLWINPA4DvCx4VJu9+/M2hy3j4zRw==
X-Received: by 10.223.145.45 with SMTP id j42mr3850942wrj.141.1484754090758;
	Wed, 18 Jan 2017 07:41:30 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	135sm5660740wmh.14.2017.01.18.07.41.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jan 2017 07:41:29 -0800 (PST)
Date: Wed, 18 Jan 2017 15:41:27 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20170118154127.GB31825@carbonA>
References: <1483363213-27822-1-git-send-email-paul@paulbarker.me.uk>
	<20170116071523.4bae5890@nuc.betafive.co.uk>
MIME-Version: 1.0
In-Reply-To: <20170116071523.4bae5890@nuc.betafive.co.uk>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/3] Kernel update and getVar cleanup
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
X-List-Received-Date: Wed, 18 Jan 2017 15:41:34 -0000
X-Groupsio-MsgNum: 33908
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eAbsdosE1cNLO4uF"
Content-Disposition: inline

--eAbsdosE1cNLO4uF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 16, 2017 at 07:15:23AM +0000, Paul Barker wrote:
> On Mon,  2 Jan 2017 13:20:10 +0000
> Paul Barker <paul@paulbarker.me.uk> wrote:
>
> > These patches have been boot tested for both raspberrypi and raspberrypi3.
> >
> > The first patch in the series probably breaks things for the morty branch. I'm
> > also proposing we drop support for linux-raspberrypi v4.1 as it's currently
> > broken on master. We should create a morty branch for meta-raspberrypi before
> > applying these patches.
> >
> > Any objections to dropping linux-raspberrypi v4.1 or making a morty branch at
> > this point?
> >
> > Paul Barker (3):
> >   Remove True option to getVar calls
> >   linux-raspberrypi: Drop v4.1
> >   linux-raspberrypi: Upgrade to v4.4.39
> >
> >  classes/linux-raspberrypi-base.bbclass             |   4 +-
> >  .../0001-dts-add-overlay-for-pitft22.patch         | 110 ---------------------
> >  ...ove-unused-sm_cache_map_vector-definition.patch |  31 ------
> >  .../linux-raspberrypi-4.1/0003-fix-gcc6.patch      |  78 ---------------
> >  recipes-kernel/linux/linux-raspberrypi.inc         |   4 +-
> >  recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  12 ---
> >  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |   4 +-
> >  7 files changed, 6 insertions(+), 237 deletions(-)
> >  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-overlay-for-pitft22.patch
> >  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
> >  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
> >  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.1.bb
> >
>
> Ping on this patch series.

On it right now.

--
Andrei Gherzan

--eAbsdosE1cNLO4uF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAlh/jKYACgkQc7voa356
t88ErBAAm3zvD51LUqtfPKcAziet2n94QFQRlXYZKFStP7by/Hko0y5NjT05C9pA
lGLXoQGFAMK6wkAxZYUGg+TjcVatiw56dsW7KF/oz3nEEx94AmJgpV4gxEj/C32I
LYfw1iAy36aTolIEV9uaAaXSnMzLIbymzpQ3Ky3Nhed5Ha+axOphd3jq6/41Y8lG
zLndnOwpRmPJvcJHuS0VXbzD0YJSEQBZ0DaKrkSB/5LyYavihLD7f1D6ACq4hq2Y
h87d1NamB9Sy+BWsIyWQiBvXOtIh5O4tbWIBGOrC2AY9aLtUv5gMZigHRN40asvi
LycqjfD/qwGfUBlwuTsHEMlHeQ9Y3nwmxljQrlZYanCYuq0GCy1Uj/tGQNhENBqG
5MKkcWww1Be/LRnrjTeLHoK81So0V8uji1AhHVj75fv6ofk3Y6wOFC2YN029rWhQ
cdnTlfGMUSwao33aJ8ImR8pZ7zoX/tt3PNrluxKdtRYC2ynEClBJea/A0jk0rulL
2zOL7VSSAQXEFl1u8FSSHb8VCsvz+COvC1ev458foaB/UjpoIim4xr4K6uoNMJtq
t4MkYcm8gxyoyhHBeHxHHsHaoCzR8p6zgQ0loBIqhFDVmQMwnjkjKgyTwx2Tl/mI
/KYD/HkoZCYTNjz+Q9ThfEqvMwZ7Ha84mkCcE/Lr14ghOfBkOvU=
=UmLa
-----END PGP SIGNATURE-----

--eAbsdosE1cNLO4uF--
