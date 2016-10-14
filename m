Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D296E00E73; Fri, 14 Oct 2016 02:25:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.43 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63D7FE00CCD
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 02:25:36 -0700 (PDT)
Received: by mail-lf0-f43.google.com with SMTP id x79so191055782lff.0
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 02:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=PdT82csWKaMzdM+FwBAxpYS0SqB+GwCP5CRZXIO8yFs=;
	b=a5CdOEkE5f8Gh3BpbNnNaXTP1rxo+WhFJpM0GYPv2yFMD9JgGB5zokkHt1sLZU17lM
	7DVRgPvcsysPbsTC+9GwKybf1wigUyFQ/Mc9LKbwK4jhsaGQWLn22Qfz+C0hNDfYvohe
	RPBZKAuuPJehuquzH1r7MGZn3Lhd7ggVwwUHhw44xF9T9pJRXhlpjQ3781M6yi5pBG0R
	3ZeHt+nwoslJ5C6KzB11l1PrzbdDZpum4gYT5dSv/eB/ehwyYpYCKIqVIpthtXMQZd/b
	mQagaAnNn5b2hjpCjHIHLngZaCwDA00pzkPxz9EmNIq5Vfe5/+qyFxHZRbn5ltBgliE/
	/PPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=PdT82csWKaMzdM+FwBAxpYS0SqB+GwCP5CRZXIO8yFs=;
	b=iLSzCdV6/YR2PU2XDNI0ZtqwfxoarV+aomMTlezMNeTNogMZal+MD70a5Lb8A0GcAX
	nLUyPtXkdnpht95Qr/MYkqrbgmAVuK4mDmlclZXvf7LRXw7rzwFwtWmH/cOCZivJQp8z
	FsAvIK8RjSSmVzmNNLfbOKzG9EqpKyYXV5uS65dcHBj+LdGnL1O40q/S6oE49wertIZr
	y/MVqVAU1BhofzflQoMuGnCfS7TKppHvCY0AXJKo6ENTBlYDNycaUTEgKkOSo/oXC2Ml
	uqV4iVX0zyTJdDIKiOATmLIkv5gGFJrCK51K9101Z7NPzJo1iQV0i2SBV8utGysV+kqK
	Sy1w==
X-Gm-Message-State: AA6/9RnTaSpnT1a57f+0i3QkWuRXsVjMuDVDq/1N4lC8EuKHw3suxtWCFkpE/uspNgcyww==
X-Received: by 10.28.93.134 with SMTP id r128mr982816wmb.13.1476437135876;
	Fri, 14 Oct 2016 02:25:35 -0700 (PDT)
Received: from resin ([88.128.80.31]) by smtp.gmail.com with ESMTPSA id
	i10sm16227639wjw.1.2016.10.14.02.25.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Oct 2016 02:25:04 -0700 (PDT)
Date: Fri, 14 Oct 2016 10:25:01 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20161014092501.GD28288@resin>
References: <20161002143422.GA24664@openSUSE-i7.site>
MIME-Version: 1.0
In-Reply-To: <20161002143422.GA24664@openSUSE-i7.site>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] taskhash mismatch
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
X-List-Received-Date: Fri, 14 Oct 2016 09:25:38 -0000
X-Groupsio-MsgNum: 32399
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FFoLq8A0u+X9iRU8"
Content-Disposition: inline

--FFoLq8A0u+X9iRU8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 02, 2016 at 10:34:22AM -0400, Trevor Woerner wrote:
> Hi,
>
> For the last week or so my raspberry pi builds have been failing with:
>
> ERROR: core-image-minimal-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 2920e557ac3a011d5679a52590cb664d versus a47bfc12fdfa29c58fe72cf8e0a28e91 for /z/raspi2/poky/meta/recipes-core/images/core-image-minimal.bb.do_image_rpi_sdimg
> ERROR: Taskhash mismatch 2920e557ac3a011d5679a52590cb664d versus a47bfc12fdfa29c58fe72cf8e0a28e91 for /z/raspi2/poky/meta/recipes-core/images/core-image-minimal.bb.do_image_rpi_sdimg
>
> This is with both poky and oe+bitbake, master branches all around, and fully
> up-to-date. Before sending this email I pulled yet again and re-tested just to
> confirm.
>
> Poky:
>
> 	Build Configuration:
> 	BB_VERSION        = "1.31.1"
> 	BUILD_SYS         = "x86_64-linux"
> 	NATIVELSBSTRING   = "SUSELINUX-42.1"
> 	TARGET_SYS        = "arm-poky-linux-gnueabi"
> 	MACHINE           = "raspberrypi"
> 	DISTRO            = "poky"
> 	DISTRO_VERSION    = "2.1+snapshot-20161002"
> 	TUNE_FEATURES     = "arm armv6  vfp arm1176jzfs callconvention-hard"
> 	TARGET_FPU        = "hard"
> 	meta
> 	meta-poky         = "master:3a73fe0efcb7aeefcca7011bba887caad03d4d03"
> 	meta-raspberrypi  = "master:4817e2c087097c02755d6309304878e42cf61d3c"
>
> OE + bitbake:
>
> 	Build Configuration:
> 	BB_VERSION        = "1.31.1"
> 	BUILD_SYS         = "x86_64-linux"
> 	NATIVELSBSTRING   = "SUSELINUX-42.1"
> 	TARGET_SYS        = "arm-oe-linux-gnueabi"
> 	MACHINE           = "raspberrypi"
> 	DISTRO            = "nodistro"
> 	DISTRO_VERSION    = "nodistro.0"
> 	TUNE_FEATURES     = "arm armv6  vfp arm1176jzfs callconvention-hard"
> 	TARGET_FPU        = "hard"
> 	meta              = "master:21cc2a3f63ea260dbf6b50e2fd4dd50cacdd9935"
> 	meta-raspberrypi  = "master:4817e2c087097c02755d6309304878e42cf61d3c"
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I know I'm kinda late to the party but just wanted to say that this was
fixed in master. Cheers!

--
Andrei Gherzan

--FFoLq8A0u+X9iRU8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYAKRqAAoJEHO76Gt+erfPa10P/3wBSKoeNBm8NQlLaJ8TbWot
TlfTKH4hRo1UorHi2ojQbeSBABbFVGsyDLnYpZyTXlLIuA0/4CXQ/WyCJzpxxToz
0xnynmXaDxVc+edK3pOeYxHEb/e4snSTiiDkRytw3EGRgpX9dVNzUgQWCIE5pVwp
5BTBKwkHpVBDMLAqe9ChHN+/2EAeZwTKBrae2TX4ksxYdWZhxm7ZLf7zsxLdPSvl
T1LcFQfeTJteYM7i0wcnvk23GC9r1nRVLtiPMWLP22z2aDsC+ojl05TF4s0Vppt8
ERhDQXMxT3K3C7IPOyFlVYsKrHfe+TJO4CqiALXB5Koz+Ni/O1ocgj6kgsglLxXJ
uAhpqGOdqnTbT0oW1FpbNQ2XSJ75Wa1s8PxuMHMAK8jimCYWgVbZKRZSig9JYVOk
tmtCUPInqDl2PJY4+H+NNG4vp7UfbVc6ENYhT8nUUO5zfm3vaYBV5VGdcv041xJ5
Y3FsyTZjKpzryUBuC9hCuKUsWE/fXn9WdNmzn7AoAJ173E+U0OKOaoULaTMFwQ67
z2bOdQxiLS/NCtdR2TC+dusKagHInltWgrqlSnW+fYMcLPMlfur2e4mCCewQGB0W
RJukqnrtPGwvZIGX+hkz10Eel8QbHbMZPrgVGICmdao4JcQkrqo1ttfstwptMQdv
2h/Ai7szumgrRhrS+Iw8
=wb9N
-----END PGP SIGNATURE-----

--FFoLq8A0u+X9iRU8--
