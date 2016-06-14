Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60A2FE00C29; Tue, 14 Jun 2016 11:30:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A96EE00C1D
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 11:30:29 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id k184so505011wme.2
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 11:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=FKD+HKxe4B7yrDSRbNV1K0NNzYh1tK5CtcDzM0+yA/8=;
	b=XvC26KBR3T6G1fc9SjJ0LaiI3nH5kHmYc3PMBz0u3sOO+vvhYbfsKNHtIunlj+0KNZ
	bPVnoTio1Du8xRR1AADgRZzXmj9nrfWFAcUIyQgxxQ0BJkVoWX/WSItdwqO6/wcLZK+N
	kgBXWYRvd0jhJ4rN4UnRZHH2TRjKTEfFNL42vfKQaDeEGRWAyD3gB8GwM2XAQ9g6uEnU
	U/RVRV/ToICZKaYUkD0/b2bzdmQh+gGHmcROY21f0Pi3/agthxbIvZri1QQ5AdE7bTCJ
	D4BeikSFb6Sy9GzssAPRlkKg1WS+HQgRF8776/4Yk5vy3+qjHOg+3pIHXCJG+yg89m4v
	xatA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=FKD+HKxe4B7yrDSRbNV1K0NNzYh1tK5CtcDzM0+yA/8=;
	b=Jg6p4DGxMhZJhdIAN9L8u1bcEf6zAoIHY0Q9Jz0aEo0dl9EkzThoOuL+ilsAgroQSW
	8Uux4YVxC1tmEDg/uDvFVIm/GfwHmsE6u0b2kr6T0JvHi256bWE8DUGwu1k9ndphbZM9
	8Q5rmor52JMx5uasiYhvleYFL7qIB846cVYsIe6MxyVg6mqlABl04SosNPuGKfKTQYhu
	Ld+JsDwDLOsf9IV6O0UUQKKSSAHFAiVEH7yatrL1qbLpb9gKCPsIteWRvkmF82IaD0Cd
	mdqIROEyL8AtcNm0nHhYxQT70zVdFhLGsE4FoXbU0T3fDrvfDCd94Bx8cKEAjqq1rWPy
	01JA==
X-Gm-Message-State: ALyK8tLIhjIT4GPeJ3XebnvNWUZLediwWovR6xnzec5Tfp/xR1RCmEQDfb7VjrGXLJDiLw==
X-Received: by 10.28.109.198 with SMTP id b67mr7953426wmi.53.1465929028020;
	Tue, 14 Jun 2016 11:30:28 -0700 (PDT)
Received: from resin.lan (179.154.125.91.dyn.plus.net. [91.125.154.179])
	by smtp.gmail.com with ESMTPSA id
	z1sm30814462wju.32.2016.06.14.11.30.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Jun 2016 11:30:26 -0700 (PDT)
Date: Tue, 14 Jun 2016 19:30:25 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20160614183025.GB12722@resin.lan>
References: <1465390949-26330-1-git-send-email-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <1465390949-26330-1-git-send-email-paul@paulbarker.me.uk>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi: Prevent taskhash mismatch
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
X-List-Received-Date: Tue, 14 Jun 2016 18:30:33 -0000
X-Groupsio-MsgNum: 30519
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IrhDeMKUP4DT/M7F"
Content-Disposition: inline

--IrhDeMKUP4DT/M7F
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Paul,

On Wed, Jun 08, 2016 at 02:02:29PM +0100, Paul Barker wrote:
> As recently discussed on the mailing list, bitbake now issues an error when the
> task hash computed by the bitbake master differs from the task hash computed by
> the bitbake worker. This usually happens when the task hash depends on the date
> and time for some reason.
>
> This affects IMAGE_CMD_rpi-sdimg and is fixed by excluding the dependency on the
> current date and time from the command.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  classes/sdcard_image-rpi.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> index 3b4f13f..a8d83a3 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -72,7 +72,7 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>  FATPAYLOAD ?= ""
>
>  IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
> -IMAGE_CMD_rpi-sdimg[vardepsexclude] = "IMAGEDATESTAMP"
> +IMAGE_CMD_rpi-sdimg[vardepsexclude] = "DATETIME"
>
>  IMAGE_CMD_rpi-sdimg () {

I can't seem to replicate this issue with currrent poky master. Any idea
why? Maybe this got fixed in poky?



--
Andrei Gherzan

--IrhDeMKUP4DT/M7F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXYE09AAoJEHO76Gt+erfPr0UP/ipRgS6g8po2FLhfvkky9HeQ
cYp4VV7zBZphm6Raaf+63KjTvyT01WGuZNebahS3B1l/6/JQEFRAT19B+pfZMpfd
BIJHDLj90Kt5Ap+iSy7lqO8legngbtooFl3F7Es5DRKjUAJtGmcY0kYkz4CwUgEx
ZiSEd8C6A14Ro2drGEh1HeWOCxOoh2AFtfgI6518pfNGTaoAfHd2Ndh4Bzl4R6r0
fMXpVFtHSk+/SlaHi7kbx/eBwxtQDsqGQy7gWJR5tVpCV1V+J/bdNln2jA90Ejio
imBt8A0f13ShGgfw+/q53IG6yOgas9oqRfa7F3C9pifC2LrfmEiRPv4RPAsEc0uH
+qxu/vldhgQUX2vbjU3d7uRuHL5eYfxw91Vk9MFVqEDA9q1NzY5eaKTCJVrqmrZD
k93VfUnK0jlIR5FMpQT2OLncoKoxboa8F0MUP7QCiOqWEfbB6Ia1aCPaVCjVco9D
kUcwuYouoIOoOHFMnTonw40sXKWMTlICLc78xoMIqEC8pQ8Jve5md9gmQaEZxP9D
xizyt0uTe9Cpb9jm73L4VDF42mgKCHvFE4QZZDoEiD9yQiM/8nhC2b2q7AS2YEwd
1uZyDOxgPEYJgFBuWTLLIH33g7oIjayJpK2EMQScIXcm2W2DyPpeV+fzT3W2m7Dn
v5ghV+ul2avKgFIi/hKp
=wtWX
-----END PGP SIGNATURE-----

--IrhDeMKUP4DT/M7F--
