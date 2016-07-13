Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B864E00DAB; Wed, 13 Jul 2016 04:54:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE08DE00D81
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:54:09 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id i5so5618526wmg.2
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=yxPG/yYTXAMrP1OJUBCcZHtmBZJKiVyYXkpiSqL8j50=;
	b=dSWaC0vAAyUHk/VXksZb6+cHyUnfws3yjboeYcagBHu2twD+bixj0qUsqnbUbGhPT2
	TTwGLjofWne16SKsTzYD/g84nXCZwx//RPcMKEpPNZDtXgdabSAI1ULkLUvpV0psHikW
	LxFQxoKoKNV4+CiRS0HyaY/lCN4ZdaGyXr7JFEjj7XHJgeZ0C/3tFVaAiWvg8mEmr8+W
	Fnnt+s1IE+GNuCIQq2mU752BQ1IgLwnmSUJ/zrFlgCMNtu7rtbEzHHQv6Es815D9PNf4
	klMkTz2CMz7en+xMCVtVA4nAz68i+6zitt1nUayyjuJoTiFWJhMK7SoanCUfpTDpB6lJ
	anMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=yxPG/yYTXAMrP1OJUBCcZHtmBZJKiVyYXkpiSqL8j50=;
	b=Pc9xQXl7utqgQzWn7Z2U2PqDmTjyGG6O/GOYVh0r6gKw0KZY6EgX5DfL92pcYETlhB
	42lIeV2EMkF0GBL3qBpq9EtYAuBuy3RC1skD44kG0SqtvyBD/09bQZ8rZCT9dU0Z26IY
	f+opZjeqHkc7ABORBVeL/2zflzfEB425PW792c05SRl36giE/zFgk3yBAkAPHH13zLKd
	XyOKK4/w28mT6HGV07JiRrzfdHhcb84X4NXxBsLLIEWG4dWPzumq24rbCK62brMYVUYf
	I+amGH1v4WqCcgvMj4X56ERvF0Ib361HBysad5CsRQx67mAfH4jctvrWBh11IhWQfnZT
	Ymyw==
X-Gm-Message-State: ALyK8tI4Evt/YnXUltkUcRcp6Kq6H8l3X0cUGkqDeyGfDrE3gWI41gx03gx1DP8DxTKovA==
X-Received: by 10.28.234.16 with SMTP id i16mr19549812wmh.76.1468410848631;
	Wed, 13 Jul 2016 04:54:08 -0700 (PDT)
Received: from resin.home (host109-152-128-245.range109-152.btcentralplus.com.
	[109.152.128.245])
	by smtp.gmail.com with ESMTPSA id i4sm524434wja.1.2016.07.13.04.54.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Jul 2016 04:54:07 -0700 (PDT)
Date: Wed, 13 Jul 2016 12:54:05 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20160713115405.GE21822@resin.home>
References: <1468192676-22030-1-git-send-email-paul@paulbarker.me.uk>
	<1468192676-22030-4-git-send-email-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <1468192676-22030-4-git-send-email-paul@paulbarker.me.uk>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 3/3] sdcard_image-rpi.bbclass: Include boot script when using u-boot
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
X-List-Received-Date: Wed, 13 Jul 2016 11:54:11 -0000
X-Groupsio-MsgNum: 31027
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vmttodhTwj0NAgWp"
Content-Disposition: inline

--vmttodhTwj0NAgWp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Paul,

On Mon, Jul 11, 2016 at 12:17:56AM +0100,Paul Barker wrote:
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  classes/sdcard_image-rpi.bbclass | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> index 6960aca..20be56f 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -55,7 +55,7 @@ IMAGE_DEPENDS_rpi-sdimg = " \
>  			dosfstools-native \
>  			virtual/kernel:do_deploy \
>  			${IMAGE_BOOTLOADER} \
> -			${@bb.utils.contains('KERNEL_IMAGETYPE', 'uImage', 'u-boot', '',d)} \
> +			${@bb.utils.contains('KERNEL_IMAGETYPE', 'uImage', 'u-boot u-boot-scr', '',d)} \

Should uboot RDEPEND on u-boot-scr? In my head this would make more
sense and we can avoid this change if so.

>  			"
>
>  # SD card image name
> @@ -128,6 +128,7 @@ IMAGE_CMD_rpi-sdimg () {
>  	"uImage")
>  		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/u-boot.bin ::${SDIMG_KERNELIMAGE}
>  		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::uImage
> +		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/boot.scr ::boot.scr
>  		;;
>  	*)
>  		mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::${SDIMG_KERNELIMAGE}
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--vmttodhTwj0NAgWp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXhivdAAoJEHO76Gt+erfPrQIQAIBwwsmYwhF315dfCkJg1Mmb
X++C9gn3dYe2dN29kGH7jkUTfLQKT6xojOwgM0SLbpr12IpFFFAbmAxugllTbaOP
0oZjI2lUpAZtkvPrlL/HS5JX3K9LH9PsWhSMd2AF5kwWiR68EzdIPPncZvw/UHjb
FB430R9uEFMkLND7MAxegYXqCS43zQXu6/A2F7p6S6rLHyzT+kMOiqrMq5773Lue
j5y6wRZM96JuxCsi0PKvRvtskbuidI4wTvBzdlqovxRRatPrggGDJGHKphZvJWC8
aYbdQTnkWvTOemlhNZe3Ir0o76GA9IrMBbHnq41Py9kn1I1YQq4O+h4l47a5OzkL
yiTMaA2TQ1vU936Y1eRohzKN39pnRrfz4vkE4RkSyp+X37F7jq8T+w5W6gNwdRPk
MWB+OFVKfY69u/cUHlmJXcusZodOyUjrnViQeJjkyvv4UBj/wYeAa8OZ7Kayzo+5
Krpa+JPzt+XEMQRSRm/tEojIo4Eqt2ot4zIOtigmUBGDHxJf8ZgIzKcnPf8YMncb
8o7jpjSr6y/OMLl7ms/ociFs9xsjA/Kyy30j19oG+0GAs+qPtVZ3IEpSmynnnSMW
mL32UYdLx8IyaeWUhk8FvE3mVqCMjb9wjqBai7cruKAg3y7iGZ1W/YH+1n+1ZdSw
mp9yrnBjtRxvDCIZvHgd
=RfqF
-----END PGP SIGNATURE-----

--vmttodhTwj0NAgWp--
