Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FF74E00BDA; Sun, 16 Apr 2017 18:30:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A14D0E00BD5
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:30:15 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id o81so6805800wmb.0
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=FSQ96QZfYa68YPAu4/xhIuKoXnPrh/xoGKOJksnWQkk=;
	b=imnzptlRVEzwmrB1A0h1ixdqqyRXweRSjenPlphcSTp0Wz+0MCRvg075U30BzF6OZ2
	/LekadKtyzNX4ri6acrHdke176jnd28f3897+DFrNVFzW9gJN1iZPNbOtzXnX4G2tIBv
	b9WjXDKvj6qDFZKdzBnVeWoxLVfif87FrzTLpKsFE1qQdy44601Nh/e9F0yxI9t8ww0Y
	+AhzanwYGWbH5ggoymPcw8dAmvkBLgsTf3exgZdUiQxziihha9s3mP83nt7pKSo8Qb9I
	XpoDjFT1zb6EaS/OSV3km4nTLyUS4KzdP1uJOgdRRNw2mgLyMxCa39zblXruimWcARDG
	oS+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=FSQ96QZfYa68YPAu4/xhIuKoXnPrh/xoGKOJksnWQkk=;
	b=iBbWq7Yki6shPUpadYUc7iaIiMPBk5jpymwYG+Rf73xKyCDgpD2De4u11GRQfkAAD0
	WjChnndCN59d/YXfB3/3HGbfnZ+pd9nROIT/fQMUATyTNTca7hYiSRqUqhQysBJ7YzZt
	N82COyNZcFd/U6tkgR+gmCHJC1Zifj3sIMCiHPg5hVSJQ3sk2DbdjF0aeEVvWeltr3Tu
	5MMDHoQ0vvI3UQsR5GQ45YQOpnKUqLYl4i0XRRBcSLCLlkrHgVAWPuwEyymlTI8gw8Zk
	YRgxL2JGzMYGgJ7JrSvGkbESmgtgjm023D31XwtfOcURMGaYFZ93KKQAPfwxkw2tzQI4
	Carg==
X-Gm-Message-State: AN3rC/4JzjxKNyN5kZ9do698ZaosfknIXlIlYROPolPjFZ6Y+KPShuuh
	jASTZDo220l9J6AyElU=
X-Received: by 10.28.236.135 with SMTP id h7mr6989477wmi.74.1492392615005;
	Sun, 16 Apr 2017 18:30:15 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191])
	by smtp.gmail.com with ESMTPSA id m83sm8466398wmc.7.2017.04.16.18.30.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:30:14 -0700 (PDT)
Date: Mon, 17 Apr 2017 02:30:12 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170417013012.GG16624@carbonA>
References: <20170414162035.23522-1-raj.khem@gmail.com>
	<20170414162035.23522-2-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170414162035.23522-2-raj.khem@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/5] linux-raspberrypi_4.9.bb: Update to 4.9.21
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
X-List-Received-Date: Mon, 17 Apr 2017 01:30:17 -0000
X-Groupsio-MsgNum: 35596
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UTZ8bGhNySVQ9LYl"
Content-Disposition: inline

--UTZ8bGhNySVQ9LYl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 14, 2017 at 09:20:32AM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> index 3aba67b..c0e8b83 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.9.13"
> +LINUX_VERSION ?= "4.9.21"
>
> -SRCREV = "28ea32b9afb5d813986c4ab940c26fe298d80ed2"
> +SRCREV = "5e4ee836560d4c0371e109bf469e1ad808ae7a44"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
>  "
>  require linux-raspberrypi.inc
> --
> 2.12.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged a similar patch to master.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--UTZ8bGhNySVQ9LYl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj0GqQACgkQJrqo2vax
FPYxBQ//QAR/lxdC3QR+YI7T9f0JQ0iORDtUgJCy20ZH5O+nvS22aNv37swaYsAx
ybxNSrNc6w/wxfhrRuSdUgu6fTGF1dRWLpF8zc1xJok3lNexlg28QlDmiT2+IaQq
hXeCyslJUDtzi9qfygHisUQmEsgiuZS2nOguztWq2hFJMPpT3S1MZpOllbOFbR+x
HZ8SzzyUwlMl2aD959I9xatxc3Sb4AZMfeWRtonVhXJ5WU8Wq4dfkGyoiXqa7mLL
ECIMiWvigL49fjZLAVCuJvY7H8JGHa3wEAcHAm7yxDDhuKxcX2JaVk80S9MDRCEC
4CN0Daurl9NDhhNyPeuShgWd9ucs6Exx9FePPRYo0s9NH0C5p3mL/NRm0OIoH86m
bDByPskdGah2ZLHv2XsSxhUhO5qcYxwoIugEA1Ie3W/tUlH3PstpYgiKq5T/74vt
FSec38Bn8d+67+kGTI+zBokaH28AKNcgVbTGJQRjXzlDGhpQnAMhvEqF6PLmQjOe
dS7uCzTMKv8HTq0iQAy+QUbzEJXV6NwvMq1hqbIulHDbM/wS1/g1q5wTNzHgywn6
Gxv+wOwH7sttU4tc/DrEDroYnjInEqZTvNR+QhNK38KFo4gUw6meunbkmf+nHg2x
Am6d1cAGHZDerB3AO8l+t0Ma1nJ6UvEA266AH91wW2Kru/dyXyg=
=Msib
-----END PGP SIGNATURE-----

--UTZ8bGhNySVQ9LYl--
