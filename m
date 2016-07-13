Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBC88E00D89; Wed, 13 Jul 2016 04:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 222C2E00D81
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:46:20 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id o80so5593912wme.0
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=QR/lAEx9dl6v8GHQ5NelYY9EPT558Xr1qhKDqskKg28=;
	b=JSSoAoGiLxOoIvO2dAuqbVCPWQ4ovuv2lCU3ODzCPnHYOPG37drq2B/ObMrbwFRCzB
	jcMxsN6/+tcOVHC9AZO1moTwOVltwATMYybKKT6kI9IYLsOIMQ6dycrxA9dFAhB3hoIw
	Uu6FnmZvp3Isn9jJMQmJ4EZTqAjv50KAErtm0E9L0/m3Kr5aDak9oWiG/xq64MjAVisk
	X0wu6wBPLwh/SVBTqr+OGN1nfkTvMXIqH0QsHnCVdG+Tt1ApAtw/85w4cF8ycZPTvtla
	vho48Je150Y8j0IuIo3XwQSkd8TvYY/YwIxEKyr1OPfn30ul8hcUP04ST4Sg1x47oXM1
	aTZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=QR/lAEx9dl6v8GHQ5NelYY9EPT558Xr1qhKDqskKg28=;
	b=OGyLMj9V5AFErSa/UPvhhTM53BVrHA1zzHx5srqc09EZNgAHTz9d6Xx562rP6LX62u
	ZXMUs0u3MugD+ilAYUceAqgYpE/DimXS+tRpf4gbkwInVyDW6k5PP+k+DzKF8i12c/d4
	lg+ZMd0qxSSmsmnEXu5j99KjC9KbSUyN+zfQgC0bP7qoXM6evU2Vkl/1AXgbT7eurK9Q
	+bOhQuaQHOt0t5QN0w6oTl8BCnTP+VsZ3u5rQklNmzyE/9imeeMra43GI9z+5d1qEDqk
	AF9j7i5i0H2CObpYozkHJoZflmn6z22avEXS2bYC4gK1leiCoxICNIfFUXS5BChqwOqc
	D1cw==
X-Gm-Message-State: ALyK8tJBmd8hab5WuvFLjf0MJz5bhIyScEs0+UEtC9tVgbKVtd+MMhvrR3uMinNczonavg==
X-Received: by 10.194.192.101 with SMTP id hf5mr558223wjc.66.1468410379602;
	Wed, 13 Jul 2016 04:46:19 -0700 (PDT)
Received: from resin.home (host109-152-128-245.range109-152.btcentralplus.com.
	[109.152.128.245]) by smtp.gmail.com with ESMTPSA id
	m201sm36989966wma.11.2016.07.13.04.46.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Jul 2016 04:46:18 -0700 (PDT)
Date: Wed, 13 Jul 2016 12:46:13 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160713114613.GA21822@resin.home>
References: <20160708145221.15596-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20160708145221.15596-1-raj.khem@gmail.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] sdcard_image-rpi.bbclass: Add the vardepexcludes
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
X-List-Received-Date: Wed, 13 Jul 2016 11:46:24 -0000
X-Groupsio-MsgNum: 31023
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline

--T4sUOijqQbZv57TR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 08, 2016 at 07:52:20AM -0700, Khem Raj wrote:
> The problem reappears because we need to add to the variable
> and not assign
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> index 6960aca..57cefea 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -72,8 +72,8 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>  FATPAYLOAD ?= ""
>
>  IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
> -IMAGE_CMD_rpi-sdimg[vardepsexclude] = "IMAGEDATESTAMP"
> -IMAGE_CMD_rpi-sdimg[vardepsexclude] = "DATETIME"
> +IMAGE_CMD_rpi-sdimg[vardepsexclude] += "IMAGEDATESTAMP"
> +IMAGE_CMD_rpi-sdimg[vardepsexclude] += "DATETIME"
>
>  IMAGE_CMD_rpi-sdimg () {
>
> --
> 2.9.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master.

--
Andrei Gherzan

--T4sUOijqQbZv57TR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXhioEAAoJEHO76Gt+erfPkAUP/3fDyvbC4ALEjeBo18R0gXcy
+NqmE8ECSQirvTSm8AkDuvCn1Jvve1ZlnEcRl2Gj/Qbb9ETdYuWwaQzsY50eYxgC
0LRRpYPTieSMc1gbennyHqSER/9ow6kHUFejMPygpa0A+lI/1+Jn7UVzlwGCbrx7
PaQEWPHfCP/mWx7qiLUfhA+VqN7iraTPfR5zAJLr1vTD125rClmbiCZF+zTGKN+j
9S4Aj8aS6BHPnD7ke/tIBv6cLHVEacBYa1iBz/zAae/E6UlaIQmEntGJ8KlIh1FV
9G3DuE2U3J+5QYS5G5CRXwibEbHe087yrO14vDjSv1SygPZDbTEeoYHIN8eIsj6l
KlwFZVNpO23HZEr2ZoPD0oxodj8HWhXxCju8MNY1pwRX01Q1xGN48PCr0Ieh66he
NzHM1zglYRcFVbA/5StlWs7ILyTL8cPtZnoDabigq31vc8etOlFqdCxH6H+3sbhA
dag5OMqAs+3U/ehb0ps3CKERdMaz/QnQdPEP7O5cf1IHc6zS7I2dQ9rhUHZXYUxY
9dt21wUzcWSuG1uU48tD3gvOgkPf2KHXMA2LRoBA/g91QL2r7eNxoFsOUZYFK5Lp
btmslxM1ic3eog/bWyFn8v8uw1+bD8S0AiIEbqhAGPIDYbvrEtLXgIpWcCXHKwdm
kxV75QZFsQtzXhjTaSRK
=KiQS
-----END PGP SIGNATURE-----

--T4sUOijqQbZv57TR--
