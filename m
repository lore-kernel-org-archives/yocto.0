Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19A15E00A0A; Wed, 15 Feb 2017 18:09:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C19F9E009DF
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:09:21 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id 19so343507pfo.3
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=YHyBcm0lBxQw7u1sanSDOHtjFQGBJcNSge387Ye3KVk=;
	b=xDdcOditCbodZDJ/vSA/8Dsrasye48PgyZWnX/HjKv2CCmrNXHpf4kDO/xgTpcdnk3
	NO7I99MaemZ28bDmfEEHCThMcoLGIaPHWPi6bEp2ho3AvEcwg06Gua+61/Wx8GVTx3IL
	2zSzKYJ3Sr/tPR0DOaJSsxqazfq59cIvYX15KXmXQ5LfIdzyh6E98biVdS7+ZSlcX5SL
	zOfs4oO9KcoOWyoHE/7F+7DbCRtLV6BFeffDN+qt8LY2FCtXsQiA4iQCZW2JL5TCA7WC
	5qGHAO/zn/izBSVmrqPTXpQLYwyuA3biaVU5xl/ay8g8R8uxxcfSGrDTZiDbBuUTlNSz
	Vv4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=YHyBcm0lBxQw7u1sanSDOHtjFQGBJcNSge387Ye3KVk=;
	b=t4L7r3YzCZF8X2vubIVN3tnimlcCfvupsXS0PmBm42q7d99pCdnVnXeMVm9MpLxxBH
	qbSfQQpSyUNqCdHmuzoerzeofg35IGg3vE6oFFADpIFamd0J3NwM1FA8hhV408SGsEtv
	mluHw2GwESItIaKzV+ydBvkKD0hn+0X9O393t7AvSF0pK7W6oSJePXnl5e75tIumHFsd
	RiKWnF7x+U3bGTGe/dGs4wypSnwQ1QP8W0rYclWuSvSnuxrzJNC7jI2d1xUhXaX8L/zG
	GyfqpCbRypQ1UbAoXoGUONYSdaAfY5P8DTCTuHc5++xWJ6rnTtVI+fLwisN5BWR3J9sj
	0vLQ==
X-Gm-Message-State: AMke39mwuauhHoNqEMF3NiHswDF+XkZ+qRjVYc2nc4rwHoqDpVS5JkWOiw+QxQfY6+5vsg==
X-Received: by 10.99.160.1 with SMTP id r1mr41933749pge.171.1487210960700;
	Wed, 15 Feb 2017 18:09:20 -0800 (PST)
Received: from carbonA ([2603:3023:807:fbe0:ab77:6fd:9c01:1923])
	by smtp.gmail.com with ESMTPSA id
	z127sm9823915pgz.29.2017.02.15.18.09.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Feb 2017 18:09:20 -0800 (PST)
Date: Wed, 15 Feb 2017 18:09:18 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170216020918.GE31588@carbonA>
References: <20170212052655.12342-1-raj.khem@gmail.com>
	<20170212052655.12342-3-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170212052655.12342-3-raj.khem@gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V2 03/11] raspberrypi3-64.conf: Use 4.9 as default kernel
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
X-List-Received-Date: Thu, 16 Feb 2017 02:09:24 -0000
X-Groupsio-MsgNum: 34500
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a+b56+3nqLzpiR9O"
Content-Disposition: inline

--a+b56+3nqLzpiR9O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 11, 2017 at 09:26:47PM -0800, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  conf/machine/raspberrypi3-64.conf | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
> index 5598e50..cdcd726 100644
> --- a/conf/machine/raspberrypi3-64.conf
> +++ b/conf/machine/raspberrypi3-64.conf
> @@ -13,3 +13,5 @@ SERIAL_CONSOLE = "115200 ttyS0"
>  VC4_CMA_SIZE ?= "cma-256"
>
>  UBOOT_MACHINE = "rpi_3_config"
> +
> +PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"

This doesn't really work as rpi-default-versions.inc already sets the
version and this will not overwrite. Maybe have this before including
rpi-base.inc?

> --
> 2.11.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--a+b56+3nqLzpiR9O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAlilCc0ACgkQc7voa356
t89Nfw//QLMmMvMWgpLPWnAThGfrOLOKOi+aGM/pxpEoRJL7YDPKAK4Q2K7Ye4V5
OARhBQnc29g1oi0GqbfePbca559wZxBMbIY0iPiHHp6K7MNEFDpkQKcFyULe/TGU
OpShwOet1Upr6V3OVJDcA5vo+sngKvY/3c+K87U0V9lJYM1kUCsop/moggOSU7tx
P5UXWBqog0+eMEOSUXe7IlnlvDgVKW7VkT1gt/85PEbDDD0rOQItVbkv752nxHaG
oqYBF37Muiq4/BYtpbxHOSQsf10mH39MNMGPKSOM/r92is7z59G4/KGAu1qour8K
wwvTYJB81kRtXjTYK3p8vZVPAjIpdWjZIsnbuqw/vSd80yfKZ7UAHRQPx0/90U+K
6wYyGYLUc8PD8Q8jvIPtRDckXs8YXbdNF31PtVRQIHBHW+x263JUwJc3r49Ikbgm
t4GwdQv8560x4JIEcyV/28FcNIj1KU9qaw7vW5BikgndKcjz8xsnsXLva0j0zP4a
5Yaa/P3DcvfLVfiEr0DCsSv3YhJFDk/gsKI9A0F+dnd7sLLMbo2k92SYVGamdeMv
4zgy5HJCBgY4go2DfM+wEcH35IMyJrTjqmfxSPlt+soiZIpMuAi2RJk4AwIESaWH
IlxnqllbOpT5n5fvkbtckJK4m5Bu8XAbAjHfMklOF4+dNaks5X8=
=EZZ9
-----END PGP SIGNATURE-----

--a+b56+3nqLzpiR9O--
