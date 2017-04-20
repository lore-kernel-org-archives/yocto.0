Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E7FAE00AE6; Thu, 20 Apr 2017 03:59:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 445F0E00ADD
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 03:59:23 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id w50so2209200wrc.0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 03:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=v7ERbxcND1KyP31XLN+11FsYQ3FaPqmTWWeTZDJ5P9U=;
	b=XtY3Iewc2IMcDkUDaw8duFjX62VyuzpWWf50r7XigtqVfScWWQewQgLehJstMJU/aB
	CVJiAdNhxeKOzqV01S/YsBL4cWINGAsT936jiqiYI4vg0Jun2SdHw8/BpJYim8ZgRIdH
	3avFqqpSS6nMV8S0DMP2MG4UOuzyYibc1cHyPCSI2IhzbrBShO/hMTYGuejfCcuYJmxL
	PND91qj2ir4v+iwDmfo44SFrL4v/3RTvMVKdfV7u36sYjOjfno1e9zYT4Sx/JI4h3/oV
	IJcWwPOdr+bLNg1fOV6/7Yw3bwy5PRym4rwtjH/UUNmy85+I/VgHNbrvWwz8WYd5eIT9
	2mqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=v7ERbxcND1KyP31XLN+11FsYQ3FaPqmTWWeTZDJ5P9U=;
	b=tw90CSj+o4xH7KoIH7s/8BM5/X+yXNnHD6gYI6Jl82D69PPdYk2rg/g5fpQUoQRq6R
	nH6TgBZXZPMjETaDEbi97GP69yjPue3pctMXfkAbDGpsPdX+ivN/dpcxPeBspP1sIA0H
	vAHMADrlT1Bnsp0YHnwpTOFBMKZEaDm4b/jyla9zXDoYNtqNPS8JSafC2fFquD5S0r86
	A4B5haXNqIFksjRy6EH6mPCPslnHbp8FYAT2Ch7jCiGA25ylehSvcYOwP3WOqzbm+yRy
	tKSye2+PJsrEMny9x+vWOsm0TjqyKxwGw6Jr5DsoGZ8+Mb2Gx/O/Ea4rw5Jrxz3jfJ5u
	8A5Q==
X-Gm-Message-State: AN3rC/6klFe68BU6NOtad7lse0ZZfqPjmEN86J32zTj3eEUZnOIezqjk
	ZTn07Glg/NF21mJin2A=
X-Received: by 10.223.138.152 with SMTP id y24mr7218298wry.26.1492685963218;
	Thu, 20 Apr 2017 03:59:23 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	l201sm9945449wmb.3.2017.04.20.03.59.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 03:59:22 -0700 (PDT)
Date: Thu, 20 Apr 2017 11:59:21 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170420105921.GG19325@carbonA>
References: <20170420084022.14927-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170420084022.14927-1-raj.khem@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.9.bb: Update to 4.9.23
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
X-List-Received-Date: Thu, 20 Apr 2017 10:59:25 -0000
X-Groupsio-MsgNum: 35693
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2E/hm+v6kSLEYT3h"
Content-Disposition: inline

--2E/hm+v6kSLEYT3h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 20, 2017 at 01:40:22AM -0700, Khem Raj wrote:
> bring CMA > 256M changes
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> index c0e8b83..70b16a6 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.9.21"
> +LINUX_VERSION ?= "4.9.23"
>
> -SRCREV = "5e4ee836560d4c0371e109bf469e1ad808ae7a44"
> +SRCREV = "53460a0a50f3dd5e60266e945d0ac794ce0eca77"
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

Merged to master. Thanks.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--2E/hm+v6kSLEYT3h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj4lIgACgkQJrqo2vax
FPY9wA//Z0RW5PBHudbAhI/g+ZyvQSfwUTyfmDTk88SVx6xmKJK3tjk9BI3V7JFY
tY7Yz4lJl4q7aQQIwIzsaFfM8Mo0MZVqUdLTMZNYg32VLZMVQUpJim3LLObPhrON
lg+/CbMnntsMu0izfjgpfoQxkdDxf7vuoJaTIZA2ZPFknHd3jlJ6ZDbTY3osIbS7
WPZEU+iQUtr93s5A2VGOxA+lva2O+pZzmO0Qq4OE8JPMTZHcSL9eDik3hwYC0Lox
0jWvsHcrvv4gVK4fa8y/XnP7UcwlrvsxcZucJXCJgchrjMRWmk2sIjyKdDsDxTNq
l0D/GIH4A/qV8kVjQLNiSCGb/1CkI2kF8JvQI+DPTVdphYFKo+IyO46y1bhDiXXT
0MUUeiZZu7YMjiMYxbZoEjlBATeQJMa9KdLTrNHelHJtVu+ifRC9nnJCzUUImkLX
LIQ6jo3rd4nJSHNM+TuehTVkKM2c7J0BUMvWaJaqS+uM2xnitbOriMbMG+mhq25Y
mhyzURG+Q0oMtOD1MUvXvBFIJfC8+uUEw+vILbQ0JqPk3MTWsMBGMEeqnBYZvs/V
phF+A32FOEpy+lOxS4xplx4GHLQxoguBwrneCX40xA5kS9nR2K7td1IJCXn9wEZi
J2kF2CvbRYD80nSYm6gyJA/Wd4wa372mBlMJw6oIf9jPgCqcLdc=
=q22T
-----END PGP SIGNATURE-----

--2E/hm+v6kSLEYT3h--
