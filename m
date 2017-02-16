Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D327E00A0C; Wed, 15 Feb 2017 17:45:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C1E4E009DF
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 17:45:46 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id v184so405933pgv.1
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 17:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=V9+XyLdJ9+mqqb1WvfIueOf/U3ZuNiaIu4KmaVV96lA=;
	b=NjidiPhXvz7/J/+Ae2Iu/5gwienX9C3xZ+MJek7plDFwOI2ln4b5C80fGVUuWPNQlJ
	o5l9ewt5ge7+BcCL0Kue/+gz+IX1ZtdTzfK+oaw2iK+wGuUafMciQ5IZRXfAGtfUHPxG
	Jlc6dU8wE7MK7CgmnU2UyHtYejOOTVaNzELJzb0ZvmZPkkLaHCjpGHzBJmw9xPmIhPy7
	6FW5M0ESR+YNJjc4/RXoo64Ygzw7xYBqM2u305Zx0cn/quUibboCCSRD79cYVZfdO1Nm
	oWeU9qxIkSVxjPdQG0Xcyo70ko9cLRiCDN8oAFxTCETBnFFTejNczZd6AO16QNNWbJ9A
	F0fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=V9+XyLdJ9+mqqb1WvfIueOf/U3ZuNiaIu4KmaVV96lA=;
	b=C1UMuwyFCTEQtXyt3oP3N/il70B61eHFBOY8Z1Srv8Lw9SuYpzipjEwqGAGe5GnxOD
	fwyC6LEBPAUYqg71XLyWDgtmqNCx8D7o1bYs9aMnzJpgodYK4erAnCwFcBsXfRZoMSKJ
	7Q2lFQnmmimy1VNnQCwdiKUwJSud0tM9sXzseML6/d7jKjq9T0QGDA5xMzVfF/VxS5pG
	1CgMNZsetzSozGKa9kkhp4odZjUxYMnd1l7VlSP0ztcJIJu8lY1waKKShWMSQrOCD/EO
	p/cgRnAkGGuBCmrF3hT+nOLJknmDCkIhQv0KWtXzcZOJfABb2hMkwQDy39J4dDFkSXxr
	yoAg==
X-Gm-Message-State: AMke39niQksHTteYN52Pbs7aBgv38VtO5juJwILOo8KZTrTWy9xLP3gXS70XJBSSy16tKQ==
X-Received: by 10.84.142.101 with SMTP id 92mr47371120plw.66.1487209546285;
	Wed, 15 Feb 2017 17:45:46 -0800 (PST)
Received: from carbonA ([2603:3023:807:fbe0:ab77:6fd:9c01:1923])
	by smtp.gmail.com with ESMTPSA id q64sm9782761pga.0.2017.02.15.17.45.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Feb 2017 17:45:45 -0800 (PST)
Date: Wed, 15 Feb 2017 17:45:44 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Message-ID: <20170216014544.GD31588@carbonA>
References: <1486913148-23185-1-git-send-email-mickey.happygolucky@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1486913148-23185-1-git-send-email-mickey.happygolucky@gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-base.inc: Add xf86-input-evdev to XSERVER
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
X-List-Received-Date: Thu, 16 Feb 2017 01:45:50 -0000
X-Groupsio-MsgNum: 34499
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rz+pwK2yUstbofK6"
Content-Disposition: inline

--rz+pwK2yUstbofK6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 13, 2017 at 12:25:48AM +0900, Yusuke Mitsuki wrote:
> In order to fix problem that mouse does not work.
>
> This is removed c40558173ffd96c499d101155f6c4c2be85d9f0f.
> However mouse does not worked from this.
> ---
>  conf/machine/include/rpi-base.inc | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index e069e70..051c717 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -11,6 +11,7 @@ XSERVER = " \
>      xserver-xorg \
>      ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xserver-xorg-extension-glx", "", d)} \
>      ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xf86-video-modesetting", "xf86-video-fbdev", d)} \
> +    xf86-input-evdev \
>      "
>
>  KERNEL_DEVICETREE ?= " \
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

CC-ing schnitzeltony@googlemail.com as he might have an opinion about
this. I personally don't really hold on any of the options.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--rz+pwK2yUstbofK6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAlilBEcACgkQc7voa356
t88E8xAAu8iT7gSS1FTcUoGFlcKLlnMsrqRoWJk7w2pLxNYj256nrgpa/7+mgSs4
8LvYQKRy7eLPSJ5CYqh8Y+vtZa4Gb9qFl1srQy+xNdoGiKPsc1fxnTTUw1tLORuC
cmmKRoYtmbxsPotWaRC4xGkk7QB2+BmQis5G1I/ApwBL1FfrhDBWTjTnbD7Ajf/9
1lp7l4I7+84apFz9ModXuhsU1MM6dv7Bw1FGIniVATYiauf777BSXoLA2WzZVhlA
CUqrSoaYYQTpOftN9wEOBynVFm2G4N6+/jgLb1AOChfno2lbmxlFMuAh7D294f4Y
VC0Cs7R0u862g8hihAywdwVSWEM3sVvx1k/ecEdFOFU8SZM82abPmOyYBvD1Igoc
15YEfbPJ7NEqqkGdFD23x7nIF8syQMKBKP273QTA2V/uLWrYUsDWD9a1ZlMId7Nh
V6UMKoFf3UlniqJmaVsWYsi4ZVMO0CSjF4bJD7cqJqFjrlzYoUA5rxa2YiVm0Bjq
T9vJxQXFva2Omdw/r9wfjFuuOy+H8e6+a2PPeDcBMCfabwBLjkrZ3mwA2PRa/Nr5
t/SeNgVw2LzvrgmzeCH3LhrTzfqnkOXde9uVIjl+MTN7ikGuensdNxWZ2yYp+m8G
OFjtGQLNd/vmSUiWyymYEZbP2yUYkJVBa2UbRi2qYJcXQoutROw=
=DCWf
-----END PGP SIGNATURE-----

--rz+pwK2yUstbofK6--
