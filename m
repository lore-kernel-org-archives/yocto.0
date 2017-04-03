Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39952E00A81; Mon,  3 Apr 2017 06:36:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C28E3E00A51
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 06:36:38 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id p52so33748899wrc.2
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 06:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=oL756Qyu5A9YyeSo9llIu21fkU7Ea2UBtW/RPuqIx5g=;
	b=qdNGqKK+bgu4/KVXSuBO0H+mqureVETzaowVEtkwY3L0anQKMeP2ysLwoAteK4J9Rn
	yM8XcXwYQVWWnCgAFR7RADBDx4Ig3hWKGUs6ajLSWM8YI4OnDEah8qreM9vBuIyvOX1L
	Ww7hP9oLOZiTupVeKDO/38VfqmnoRtiFiNjJtlsCEZABBqx3RCKSGL0FdPm1XycYvXXA
	lnAMezVCVU3auTwtOv7yFlE7QTR++DcTTg4U9eVKrd6GhYNX0wDXLnpYXKdhJe/HAy45
	aKsdzegyazrziX/4/Uz153HUfJ037maX37A2Nhd/JOShwusuHbnLAxi/NqM/1w8cjEhP
	RvVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=oL756Qyu5A9YyeSo9llIu21fkU7Ea2UBtW/RPuqIx5g=;
	b=HS5DaolIQGgpxNRSFEEOlFLtnIZ5pJcthqf7TOirjzBK7VBGFqpfOIYzYPXnyrd0h6
	WQNKbZovLCzli0ANNBIzw3jeJWFrHMZXmsIR7kxdSQQ6+FySA/XryayseIzxptQAN7Sx
	EoB9frf0LKX5GEPnyrTBbvD4vk50Kc57MiGZmh6BMHViKP1GGynGwVrP0mqPnBYyEgGR
	6zebXFtPxmpGxxz/ivGBUUXNYw7uh+psvfUNeIRwZ5g9UfCxJieMtlTGggNPS2Qo8Xli
	cYGQVJ8hY11QvaFJtretTCicaCF0SAKxF/m5b5tFBjduxqnPuxu5hizMd9Xh4BYvNn6X
	RAXw==
X-Gm-Message-State: AFeK/H2woWQhOEPKeLTXcrtR8bE+dqJLxm9r2C9Vyfmhr173bXfDvOldOpDkyg3yyjJX4w==
X-Received: by 10.223.167.66 with SMTP id e2mr15086258wrd.48.1491226597080;
	Mon, 03 Apr 2017 06:36:37 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	u63sm14329428wmu.22.2017.04.03.06.36.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Apr 2017 06:36:36 -0700 (PDT)
Date: Mon, 3 Apr 2017 14:36:34 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <pbarker@toganlabs.com>
Message-ID: <20170403133634.GB27299@carbonA>
References: <20170314103237.9533-1-pbarker@toganlabs.com>
MIME-Version: 1.0
In-Reply-To: <20170314103237.9533-1-pbarker@toganlabs.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][morty][PATCH 0/3] Stable branch kernel updates
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
X-List-Received-Date: Mon, 03 Apr 2017 13:36:42 -0000
X-Groupsio-MsgNum: 35371
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JP+T4n/bALQSJXh8"
Content-Disposition: inline

--JP+T4n/bALQSJXh8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 14, 2017 at 10:32:34AM +0000, Paul Barker wrote:
> This series contains backports of patches from Khem's latest combined pull
> request. I've boot tested a raspberrypi3 (4.4.y and 4.9.y kernels) and a
> raspberrypi (4.9.y kernel) using these patches and all looks good.
>
> Khem Raj (1):
>   linux-raspberrypi_4.9.bb: Update to 4.9.13
>
> Paul Barker (2):
>   linux-raspberrypi: Fix uImage build on 4.9.y and later
>   linux-raspberrypi_4.4: Update to 4.4.50
>
>  ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 ----------------------
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  5 ++--
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb      | 10 +++++---
>  3 files changed, 10 insertions(+), 34 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
>
> --
> 2.11.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to morty branch. Thanks.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--JP+T4n/bALQSJXh8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljiT+IACgkQJrqo2vax
FPYk2RAAj1D2l31mAN3bXI5iniOV+lM56GF6a6KA0/6WXCsmOu1ubb5cna4v3FYP
Vq4SzWay169JmEFndtGuU3B7yUqZQdjkP34h/deAt4yhp9OaZTvB5NyXSHY/TCxw
+aGOZ0DlE/Qma2HtLbOOz2zPqFzoikErCqtWc9PC9mFQ+DCjAVPvu7igE3onky3H
6Tfwmk1wJMN7r67RBGGljfeYLRTHCP4mm1FF3e8DteSvSOkEhfaczz90j0L5Cm5c
9AXgI4vfKzaI+qzNT6puZn4RTWFv/V/zLv0jSQQKi96ukRxd3mVf6qLV6Rdwf4iJ
DFxE+1VZ9N39v+HAB8l0GpMYs9JnD6XeVdxZE4KYuMDJukbJbJ1A01P2nla0UNlA
l0NJCs8vwq1A2lGORQHBv++U7nWlCblafCzNbeSk6X0uC4JvLWzO06p7qmpSDXXi
Wes7eRZOoXlIX1hKxRdUJjvarY32iw8Fd+sozZB3HtQeJmfrujVsPAHjfgLvGLU9
9anAIilIOds9B1HNwO1gFnqiRm8Gc/Bl783URCpXi37e2TNxdEZJoq/0z+bydkBi
0Nn9XTivPhSBnfpRLErEFdE5cD/ZFl8ujbwx2kGnWGa0iIj5ed8VDvInF6hYWJjy
dXO//0ms0cwGCula++ljqTUPyjj7SlIF+qvRRjYxo+PkYUUXjSA=
=HX4i
-----END PGP SIGNATURE-----

--JP+T4n/bALQSJXh8--
