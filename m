Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEE60E00AE6; Thu, 20 Apr 2017 04:24:29 -0700 (PDT)
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
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09F2EE00AF0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 04:24:26 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id z129so10213412wmb.1
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 04:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=AU7kOlnfOR4GINzg9Xo7TUdR5sATkItFBuN3580OMAU=;
	b=fWjhOx8VEMKUi+LpLRoKMx9GxGoYQ9q+nuQZVelfMn74XdGEWEFlaXoE4WzR/mSE/H
	LyqQq1CLqaGWzIn4I5dDp1vMO2iMkcE6p6O8phPFXcBgPDntqOLW7usAsaeANJVxVohs
	Wp64UOOU3Z2VZZG1yvP0TWLtT7gZWreQFE/qERDYq4agmpLJAp6kGOL3/kH8v50v2GNd
	QBqsKAlsusG0oRmLBXGFKD/7fpIOsSLSO0cmd+Qvazc61fAF+REo9p/tb2OLMwZNtCS7
	h9u6CwwVVoCkR/7zPQlyCGiuEWD71+XYIgi9lJHVLxQOmPPsZmCpAhMM/zzhkv8vrbXi
	TSpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=AU7kOlnfOR4GINzg9Xo7TUdR5sATkItFBuN3580OMAU=;
	b=pP0jbbQ0EhjYhgnfIivhXAfHgmZMvikv6pCHd8bJIIAbSZVQmNAFwnfNmjxfgQeuqr
	J+E0i8wVPqIvHifK4jvRBM9PU7Ht3MGMvdYbmbT19nx3617P06ZLPnjsc5patuvSHyso
	FWBxo+sExt0crCCHZfY6TFit4dF3jfgdg3TQHwmVSAydbLhRouKbpjt0TWO1Et/CF51K
	CVgmi885NlIll5n/5uz7f7WyKUV2tvGapYtmGhkXthqqEurkX2alwnLG4OCq8k0MwK6X
	XWYPsymvgXLqgzyZrSFVhZK3IK9hOE2T9bMIKXjjb94vYjnUXrmZBorvNtQo7A335s9R
	tLGw==
X-Gm-Message-State: AN3rC/6K7kkLFkQZ4lO52jTa4vaEyaMbiMUW30u2rBvuQeqQn3X7aQ9J
	bxD1e/Ylclew7Szl1Vs=
X-Received: by 10.28.100.137 with SMTP id y131mr2739378wmb.76.1492687465480;
	Thu, 20 Apr 2017 04:24:25 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	l36sm7218150wrl.59.2017.04.20.04.24.24 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 04:24:24 -0700 (PDT)
Date: Thu, 20 Apr 2017 12:24:22 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20170420112422.GH19325@carbonA>
References: <20170420112346.28646-1-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <20170420112346.28646-1-andrei@gherzan.ro>
User-Agent: Mutt/1.8.0 (2017-02-23)
Subject: Re: [meta-raspberrypi][PATCH 1/1] raspberrypi.conf: Have the ability to overwrite SERIAL_CONSOLE
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
X-List-Received-Date: Thu, 20 Apr 2017 11:24:29 -0000
X-Groupsio-MsgNum: 35695
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4C6bbPZ6c/S1npyF"
Content-Disposition: inline

--4C6bbPZ6c/S1npyF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 20, 2017 at 12:23:46PM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/raspberrypi.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
> index ad3b061..ddd3801 100644
> --- a/conf/machine/raspberrypi.conf
> +++ b/conf/machine/raspberrypi.conf
> @@ -7,7 +7,7 @@ DEFAULTTUNE ?= "arm1176jzfshf"
>  require conf/machine/include/tune-arm1176jzf-s.inc
>  include conf/machine/include/rpi-base.inc
>
> -SERIAL_CONSOLE = "115200 ttyAMA0"
> +SERIAL_CONSOLE ?= "115200 ttyAMA0"
>
>  UBOOT_MACHINE = "rpi_config"
>  VC4_CMA_SIZE_raspberrypi ?= "cma-64"
> --
> 2.12.2
>

Merged both in master in morty.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--4C6bbPZ6c/S1npyF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj4mmYACgkQJrqo2vax
FPb93g//c+mm50HDWbGS3FpRJ6sleJiN/1APFkUNpj83x9+RVhYHO4Pmo6VshblI
etCDffxgHeWYQHNKZ5t6qSdFNtZs6Eqc+hruW7LH8EltzADrzE4tnpwAL7QC0fOb
XoEpriDqtW/aWPjrhFuVSFImXITOoOsN8eyu4QDQKrqIf9O0XPs6ESMZj5OJlSwM
BJ5jvGz6JKi8G178my2HR8z8JyYs//Jq/wSjah1jEjfSHKmbOfQhSvOVBHlRY0kD
R3mJHQyeImSJlYFTEkwHPc4d7rbh427FwqillIooGhiscaUx1eG03ktd7udN70Un
4KEdQaRGxtNUqDcjF+5ELP9PIyFKGwcvVSifNa76SUKqRwSZCIipkrHy/kUXjI17
vOLp01zIak5YUSuyfgCkOOQGb4hN8PkiSTCTsdSF8mJG9U3dTr7PqMvqF6MsL3rI
M2J0FSnvwM4HKt5ULQonhpDnY0SgBV6F3YtSrDzSwAsaz2qAe72l6m00L3lLofLB
KHLyX0/Ff5cwc3HhGPpaeHeK+VIcLEBMiiIF/aCwiH6itAFNOUVmFactQdA2x7s1
Dm+9zYtquBq6lpfYOUlX1r+BQo9mkrQJ440hPXhWp3QFJ060fgE8vS273euwHrIm
ZZ1td9YPig7AfUzgfYpd3TX6irVl4CbEpsxSyCu+tM1pIKy6uo8=
=Wf0S
-----END PGP SIGNATURE-----

--4C6bbPZ6c/S1npyF--
