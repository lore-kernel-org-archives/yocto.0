Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79D57E007E8; Tue,  8 Nov 2016 02:39:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE55BE00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 02:39:20 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id a20so10872499wme.2
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 02:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=lAbj6lTt1b+urwcid98LAzZCB580MyYnF2tROgmjQFA=;
	b=ZaqtgnJ7LiaIXo+CstVcoJW+NT24XcTAifAC/7OgZ/AHzOi2OigM4N05CoEnkpH6wH
	5f6QLL9/ykCzbXhbtJTp5BBQbg9t+UVJnmWnTUCFgViJ18G84r9Rg3sHQX3foMeCVr7x
	dOH00irrbLfrVbrZT557vurOqtQJwbYZFoaAscKI+RBEAdneXKYxNtrg6+QOY1nIEMLF
	46K/bszyA69lSMxVE54DalvxwvCf7o6DJ08I2EUpZqzthlt/1rCiqNjBv9j4GzJjHHF5
	IyQqU86AzPvXw+O6xomdGCrXa4p/SiWy/DrnGVyIG942LipPvFvq+J1b0yKhs3fmaunt
	AMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=lAbj6lTt1b+urwcid98LAzZCB580MyYnF2tROgmjQFA=;
	b=MOyKQUpo4wchQlZ7r9CyF+aNTurBDAehRkEL0xhDKVNzLFMsksAqLJzVCbmvHCPoZs
	iN7++rcj2FCf13kH6w90i5WKgGG5hYx/jZi5++gUttF01FUqa89nXOoOv62BeSYQHltg
	dtnY/g/naespI+xSlx1xkEsdPGCXcV4eWJXehJcsEAZEOB2/dlXXRuuWZoLQmsxuSdkL
	XHkVR99Nn7RpdRw+7M+ATskcRw2u3EaFgCCFphWH6h8+aXyOiJRFsZ0I6leHQyHBpAyg
	UtuTtCs3jiHG39mYw6k+MbT/xgDk2OndzMChx6stIIsFZRX7IyNU47Tee2NDivYfUCs8
	Fa6w==
X-Gm-Message-State: ABUngvdLcQE+WLkp20NX0Yu6gwVRHURKet7jQ+3z6lCzViksXi7a05hGxjLjnpgjC2IUog==
X-Received: by 10.28.184.74 with SMTP id i71mr11339097wmf.49.1478601559584;
	Tue, 08 Nov 2016 02:39:19 -0800 (PST)
Received: from carbonA (adsl-191.109.242.150.tellas.gr. [109.242.150.191])
	by smtp.gmail.com with ESMTPSA id
	js10sm18933150wjb.19.2016.11.08.02.39.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 02:39:19 -0800 (PST)
Date: Tue, 8 Nov 2016 10:39:04 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161108103904.GB19465@carbonA>
References: <20161031165208.16286-1-raj.khem@gmail.com>
	<20161031165208.16286-6-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161031165208.16286-6-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 6/6] linux-raspberrypi-4.4: Update to 4.4.28
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
X-List-Received-Date: Tue, 08 Nov 2016 10:39:26 -0000
X-Groupsio-MsgNum: 32906
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6sX45UoQRIJXqkqR"
Content-Disposition: inline

--6sX45UoQRIJXqkqR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 31, 2016 at 09:52:08AM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index 4b15f88..19e8552 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.4.23"
> +LINUX_VERSION ?= "4.4.28"
>
> -SRCREV = "c2a1d975537fcac01da80ce34f10bc491620a64e"
> +SRCREV = "5afda48c3408e15742d4569459a4ff668e2857f7"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
>             file://0001-fix-dtbo-rules.patch \
>  "
> --
> 2.10.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--6sX45UoQRIJXqkqR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYIatIAAoJEHO76Gt+erfP6UAP/0WassEw0y8Sgl/P/iW8lWyE
24mtIeK9k9jBA24z1PsGT9och7jHDxAfs/cVn7KzmG3bdcsNND+X8f9LtJbU3VXO
EzZjI8T3Ne1Y4Vx4EmWYVCp/F8xU2/u/93WL/PKAsNOEIvRNRamka535MGEhuo2D
OsM5E2olGcFRYC60g5w9n8M5DuJFiBy/t8vwegsiZewyAKVzui3jgnr0ypu/Roiz
nVT5PzrZcyWC/1PagfX+eT8lk7DJfAlgnxr8PxvaqmAe/RIJV718jS7coIeg4Drp
HaeQDzEl8s6KTfF2eMVwqTp4F18KDR96Y1iWEk0LB4TDcmDCztOL7I/uBVQDBUVd
qiCKShmDjhEfKM9VtelFmapsov1tZ2MrKrta88lTsAm05hqzlsMS7o2s2rEVjGCn
ea2U6EDSIT+MbWTXHNyFWBiqA3ytaN7lWLj3wjW+3uOun+Zj3NW6wXF1c10MxcJE
hqCVLlms5SZdQ+K0/3NI4VIKZV6+hiozk31XcaVLs1xJkFTvEXm/1zSpH3W86/sN
X4uwrtJ5zA+CtiPjgx/J4eOYzZBqjMTpPmv2s+WdClH1UXqJ6qfS7ugp5bOJewyT
B0dbfBw4lZfivuaawfcT9AG4wSa/bQPO/7lvVOIDVmpTMAsrmKJWHs1QGBha6jeD
tkunGMv5aWYx3voTtLqf
=lgf1
-----END PGP SIGNATURE-----

--6sX45UoQRIJXqkqR--
