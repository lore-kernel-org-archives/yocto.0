Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E225E00C40; Wed, 21 Sep 2016 03:39:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29006E00B47
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 03:39:56 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id l132so7803803wmf.1
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 03:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=wCMK987BeeK7mCZYR4gJERC8yEodUSEEElWwRVw55lE=;
	b=MOaqEMzzFfUmTI8AgfLLeipJhPHFTINT6I6eAaMqySzUJDppJoZxjGMSA6hMcTShp7
	8eOtXqILbGL4VCW03HrZxkQsufyzrjsnj899PJXCQO5fnR5cNjg5XJl1vt9kEAQtpMnZ
	l7cpMdk4Z4qmletotD06eAaW67uE9lphx4IXnOFfjCFtyQkU+FhYptQ0T332Ou30zRVU
	oVhGeQGVuC8pMkvIv/bnvGMhH5K1ZbQ13gCD1FqL3pLksm3cnTN8dc1kTiBSlyv+g8Lj
	KHgWQs4kg6qaBNz8Wm8FQ1LsPJBNFZJXrUvfEh26ekBXEWOmrk7cXDTiUWocXnwfQNve
	+z/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=wCMK987BeeK7mCZYR4gJERC8yEodUSEEElWwRVw55lE=;
	b=i7H9GHbbvd5Rg4RWsqJajnADMNqzjmoIDKW9b/KBoHTjtN3pjO4UcMkRMYG+O9PAfM
	wJUHJqy0D+D89iIQyle+dXhc1TSQpnOrxlLkbBOX62X5TFX8iScfTK9DEVSxKgXZGK53
	1c64k8aDtaECnIP8KN8QNDWDpr7JCr9AWD/lGNp+OIhO4WvqzP5g/PK9+7CncJdjED4G
	V+0Dl9AcG+hvR23Xswu+MyI1Q2ut/HhA0b/hmTuSAqcZcFZdxEf1tu2rYkyqCK6iYxTp
	x9n0sbcSXWeSnDQEHGxvtgFXs7Me9PX/fp9woXRjgM71ntBZG5FcELWHVx/0xxTqI/Bv
	RGsg==
X-Gm-Message-State: AE9vXwMZysscKb1eh93AOT+cc/Z8vCVu+FDzHszU1zcV6ozS4ooApkZMcra/6F0G7B5Niw==
X-Received: by 10.28.52.210 with SMTP id b201mr2436268wma.32.1474454395924;
	Wed, 21 Sep 2016 03:39:55 -0700 (PDT)
Received: from resin (host86-179-71-51.range86-179.btcentralplus.com.
	[86.179.71.51]) by smtp.gmail.com with ESMTPSA id
	r194sm31974487wmf.22.2016.09.21.03.39.55 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 03:39:55 -0700 (PDT)
Date: Wed, 21 Sep 2016 11:39:54 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20160921103954.GB2403@resin>
References: <20160916163437.18455-1-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <20160916163437.18455-1-andrei@gherzan.ro>
User-Agent: Mutt/1.7.0 (2016-08-17)
Subject: Re: [meta-raspberrypi][PATCH 1/3] wiringpi: Update to 2.32
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
X-List-Received-Date: Wed, 21 Sep 2016 10:39:58 -0000
X-Groupsio-MsgNum: 32018
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cvVnyQ+4j833TQvp"
Content-Disposition: inline

--cvVnyQ+4j833TQvp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 16, 2016 at 05:34:35PM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-devtools/wiringPi/wiringpi_git.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-devtools/wiringPi/wiringpi_git.bb b/recipes-devtools/wiringPi/wiringpi_git.bb
> index 9d2206b..f2cacd3 100644
> --- a/recipes-devtools/wiringPi/wiringpi_git.bb
> +++ b/recipes-devtools/wiringPi/wiringpi_git.bb
> @@ -4,8 +4,8 @@ SECTION = "devel/libs"
>  LICENSE = "LGPLv3+"
>  LIC_FILES_CHKSUM = "file://COPYING.LESSER;md5=e6a600fd5e1d9cbde2d983680233ad02"
>
> -# tag 2.29
> -SRCREV = "d79506694d7ba1c3da865d095238289d6175057d"
> +# tag 2.32
> +SRCREV = "b0a60c3302973ca1878d149d61f2f612c8f27fac"
>
>  S = "${WORKDIR}/git"
>
> --
> 2.9.3
>

Merged to master.

--
Andrei Gherzan

--cvVnyQ+4j833TQvp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX4mN5AAoJEHO76Gt+erfPLFYP+QFvZJHJmaC/HRMKQsJsiQxa
gUd6dw8CFkSHSxHXBm08G/VufcIdwiqqxevyPtfABJXjAOUij+7wFmBXQQgXjcLr
JbH95opdaSJW8H0tk3LbXqa75BLps8QBd7g7A3G78Qk2+kLRHT7i8QSWqvo2Q4qZ
3MwTGnwuwecwLgIsgqWyHELe87Vcbdl+HDyEvy0uhkJs/wj/8GBMVmn4tyGHnr08
tWkGLllzIvMYWUOTG0pUAIGdyEoO2PcfCEt/b3VO/LSsP6tq2o1oivX0a0n2Kkcb
2XDDa4SiXWsypiiwdA9Olre5ZdSECtJ0dN5M3kp1PIJXiPKOz1k6kf1GMidNnPeg
OqWt5d0w0FrY1zd3uxT21cC7E9QkjsMmHOdVCE9baM4/TXoZmIQ9qVwUDjHJR4jV
WtV189bN+gTb+SPA6BBucbrZ/9qCh5jxr7rWJvUN1VSoEMUJmF03t8gJ7THXT0ER
nZE8pWEIBDEAtkKPr2/IGYXb5f9/d4CIkhuLiOLQb9CTiuGCOcPfRXSanWhE7B3D
jg+DSb/gkcaEDopzgm9o4yiSu5lj1X1l+pC/4+V9i+yZWuxp0vrs2hPvjK3t8vko
AA2EkkgVEZwHm8OHWzGR0YEXWkgcrBOP2l5rQbObzgqQHNK3k1qR6x8x9Hw1km8w
t7AkbUpxuCm7E+RXJlQu
=YYmE
-----END PGP SIGNATURE-----

--cvVnyQ+4j833TQvp--
