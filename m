Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42216E00C82; Tue, 14 Jun 2016 17:12:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65B59E00C7D
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 17:12:20 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id r5so2072044wmr.0
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 17:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Yp0ceVZvgU43+E2NtkRD+GeZHi7brCy1wFdxUBz/sRM=;
	b=A1iv2RjMrThqM0bvmmAQI+7yC78HFUXTsVx3d3BKPyJV/18LR8WNjwTqvYNlwBZDFm
	OrkZckAnzh+UJZGKeP17ti4SRemGRoHosNjymVTB8v6ViCdMvrzraEq1o5rcKUjgBY70
	OvHXVMg6gPMULYacMAipRhc/MAk1rBeSU+GTN4FeAW0VHS8uMHjW5K3vTrrXdwqua630
	JBbB/FN35EN3MAnR4t9xcABBFmjWhaiMMwPEszlYtOFgyCiokMmtLsuUD/v1q6Xp/Yde
	d1A3/g6b3ggtl2rBDP54gd4VMtoLmQ/aZi8b54wy21Kb+RU/EMlXMsVLyvAPMtCh+bJ0
	sH5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Yp0ceVZvgU43+E2NtkRD+GeZHi7brCy1wFdxUBz/sRM=;
	b=Ef7wrTU+gprNcC8ruxowie4+YDXjQX4zxZz6/87UEOzehn2tCbr3uFqmOa/tmkztAD
	LDhL+Pc/j/HgeZqFCxerlythmGSqH3MQdwg8/IklVviXns838eAujr38lv9hWU1FQErY
	2ei8yQ2eBu+xG5B0bohvaQGwGaa8CJJhL+1qZVc1t5tJZIaT316PaB8wE8zs06Lw5okz
	MIPe2obJVilED3bHK+gDAMA5dGmufG3umED2cXcPilp/vCMpIPAdpdat7t+ljoAOJgCK
	SupA8jSdoqUNjuamoLfAIzBLHEsocl9gr21v/EQWWwK/s9jRM4Dm7ZM4RUBUXka/ULFx
	QCOA==
X-Gm-Message-State: ALyK8tLyx39Ue/IsSPVMTuB1ruRXbfpK4xmx2totxlHtYf/muzkkoZF/abFAHjgv5t0K5w==
X-Received: by 10.194.101.233 with SMTP id fj9mr8303532wjb.54.1465949540151;
	Tue, 14 Jun 2016 17:12:20 -0700 (PDT)
Received: from resin ([85.255.232.185]) by smtp.gmail.com with ESMTPSA id
	jf3sm4681743wjb.41.2016.06.14.17.12.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Jun 2016 17:12:19 -0700 (PDT)
Date: Wed, 15 Jun 2016 01:12:12 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160615001212.GF22479@resin>
References: <1464641195-88380-1-git-send-email-herve.jourdain@neuf.fr>
	<1464641195-88380-4-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1464641195-88380-4-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v4 3/5] rpi-base.inc: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Wed, 15 Jun 2016 00:12:22 -0000
X-Groupsio-MsgNum: 30528
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3oCie2+XPXTnK5a5"
Content-Disposition: inline

--3oCie2+XPXTnK5a5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 31, 2016 at 04:46:33AM +0800, Herve Jourdain wrote:
> Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
> Add support for both variants of overlays ("-overlay.dtb" and ".dtbo") for the default KERNEL_DEVICETREE variable
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  conf/machine/include/rpi-base.inc | 36 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 35 insertions(+), 1 deletion(-)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 56ca83e..2c9d8e0 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -16,7 +16,7 @@ XSERVER = " \
>      "
>
>  # Really supported starting from linux-raspberrypi 3.18.y only
> -KERNEL_DEVICETREE ?= " \
> +KERNEL_DEVICETREE_OVERLAYS_DTB = " \
>      bcm2708-rpi-b.dtb \
>      bcm2708-rpi-b-plus.dtb \
>      bcm2709-rpi-2-b.dtb \
> @@ -38,6 +38,40 @@ KERNEL_DEVICETREE ?= " \
>      overlays/w1-gpio-pullup-overlay.dtb \
>      overlays/pi3-miniuart-bt-overlay.dtb \
>      "
> +KERNEL_DEVICETREE_OVERLAYS_DTBO = " \
> +    bcm2708-rpi-b.dtb \
> +    bcm2708-rpi-b-plus.dtb \
> +    bcm2709-rpi-2-b.dtb \
> +    bcm2710-rpi-3-b.dtb \
> +    \
> +    overlays/hifiberry-amp.dtbo \
> +    overlays/hifiberry-dac.dtbo \
> +    overlays/hifiberry-dacplus.dtbo \
> +    overlays/hifiberry-digi.dtbo \
> +    overlays/i2c-rtc.dtbo \
> +    overlays/iqaudio-dac.dtbo \
> +    overlays/iqaudio-dacplus.dtbo \
> +    overlays/lirc-rpi.dtbo \
> +    overlays/pitft22.dtbo \
> +    overlays/pitft28-resistive.dtbo \
> +    overlays/pps-gpio.dtbo \
> +    overlays/rpi-ft5406.dtbo \
> +    overlays/w1-gpio.dtbo \
> +    overlays/w1-gpio-pullup.dtbo \
> +    overlays/pi3-miniuart-bt.dtbo \
> +    "
> +
> +def cmpver_strings(ver1, ver2, truevalue, falsevalue):
> +    from distutils.version import LooseVersion
> +    ver1 = ''.join(ch for ch in ver1 if ch in '0123456789.')
> +    ver2 = ''.join(ch for ch in ver2 if ch in '0123456789.')
> +    if LooseVersion(ver1) >= LooseVersion(ver2):
> +        return truevalue
> +    else:
> +        return falsevalue
> +
> +KERNEL_DEVICETREE ?= "${@cmpver_strings("${PREFERRED_VERSION_linux-raspberrypi}", "4.4", "${KERNEL_DEVICETREE_OVERLAYS_DTBO}", "${KERNEL_DEVICETREE_OVERLAYS_DTB}")}"
> +
>  KERNEL_IMAGETYPE ?= "Image"
>

Can we avoid this duplication by translating dtbo->dtb for kernels
before 4.4? And I would suggest doing this in
linux-raspberrypi-base.bbclass . What do you think? We should reuse code
there for version too.

>  MACHINE_FEATURES += "apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--3oCie2+XPXTnK5a5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXYJ1cAAoJEHO76Gt+erfPI8cP/ii6DHS454LmETFaiC7nVf05
aZQef0R++ww+edfju8fwf6XSi2YhDBwdlzQHn7cqd4mG8mwZSYwDmMsh+mD+UY4W
12SlyNzzpnEegPRA914eIjdgbegGvDO8AokHEd1vatakNCNO4mC0MWoQc2k6kszl
bMhjwk2TzxhhRi+dlYwBFTiqL5+kCZNNCahJXVN3YnR0AXytfwRJfrhGNA/yh+Pr
QeT/LsmoHlxuDIpAZiDOlxLDJYO38ir5jluO8e+0W3FHsGnLMBa5ES/dfeyRKnbO
dtPWIJTPTsMEwMAAGRcQuIUDSJCNVgEJxBQPsA8Gl/sQAce44L7TUiUlh2g0guHM
bTA6cUsK8e6WwXEn7ChAWa5ZtjbAix/EXT5gqcTJSWutxVYlzyjVGsnxlXWMegoU
AGdKL/mvqS0H54DerZOwcyEf9H7WDrpILX2nEQfbNHy9fT6A5qKq9a2Jv2Mn+HLZ
68ZylUrt5mU8sLIbhqHcj5BzaWfeFiX50wgasirXEoGo6Nar7RQihf2+1n0g2FHC
t8g64iiRskPNxBbFYCut0KEPz2Jo4D2VdY9ZDH9rZX/i43VO2dvLox68dydzdOWp
6mMlxvhrL6eF8rKHs5QQLgVIomea94sz9P+5pqeft9vigfkitjde8BYWomjeA1Di
lm1kkrj9Le3kbJeIB76S
=10k0
-----END PGP SIGNATURE-----

--3oCie2+XPXTnK5a5--
