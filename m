Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BD6BE00B9C; Tue, 29 Mar 2016 06:21:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B822FE00B30
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 06:21:24 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id p65so5262232wmp.1
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 06:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Q3Z3+G/ZhhR4R7+pS5QoLZIma/voIE3V0zqZVpYxT+A=;
	b=qCQD/0F6mmGfQirViA4Zjqneh9K7vJFw/FlMIST8DS/0lCwmBztRNPhBViDwywyGFG
	LYba8ME5ILf0xalUX+M9NPNxNf1SUWN1CEbqMYkhGFePj87UV1ygBaPgpnsdxFiAzjM6
	Eq+le3wwbsyfP3scAjlFdjon16/rDxF5QkuOp9ybrSc7PdPvVNt3+OnsTryLFfxfrb1N
	4o4iF3Qo8gCnGEJhcHqUQLdZihqGXyhHVdyYPMIvymHsmh8Ar+K+uZxrMccltOKOfU6G
	AXpJW1XLgZ7OPXWKGAVGdrLmCxf4KCiLouX0CLKA+75ctXoWMsdAo7UyfVMiepkQoylO
	Vumg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Q3Z3+G/ZhhR4R7+pS5QoLZIma/voIE3V0zqZVpYxT+A=;
	b=J08s+TAwHUWbElFEuJOndfenvB9WUZGm3pAr96I0+XbumXeXIXsBNJhmBi6tXXTXSy
	MY01pHlK5ZXBXlgzX0k3FGgoSOT7YqP4l6/hTjylh5BFLLarDsx3cXlMJ3NDJjNeh1A1
	0zsa4ULgTB1Xmue9cCYArmERF3svXQMZJtAlHFdOFp0YmYZq0D2ublHGGJLRuWphieF/
	4ZbdyQ1JYc/kNDThTLeQVPfg35nlCM7ulvN0v5VIzWfRAz307GBuatlVq8vv/fH4OBgl
	gojoKO4TloAM566nz5BhIuU7MpoWl5tPLCG7n1czu1VkeaEa5AOaIaGzfGaFRmaL0RlN
	8BFA==
X-Gm-Message-State: AD7BkJI6zxq6a1gN4R5798+IQMBNIaVT+uxk0/rRhpomWHsuE4OHG0fvu+kcObPQZKUSww==
X-Received: by 10.28.142.213 with SMTP id q204mr15963141wmd.69.1459257683548; 
	Tue, 29 Mar 2016 06:21:23 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192]) by smtp.gmail.com with ESMTPSA id
	ka7sm29323939wjb.8.2016.03.29.06.21.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 Mar 2016 06:21:22 -0700 (PDT)
Date: Tue, 29 Mar 2016 15:21:20 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160329132120.GC4325@resin>
References: <1459011577-14870-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1459011577-14870-1-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/5] linux-raspberrypi-4.4: Add the pitft22 overlay from adafruit
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
X-List-Received-Date: Tue, 29 Mar 2016 13:21:29 -0000
X-Groupsio-MsgNum: 29191
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bi5JUZtvcfApsciF"
Content-Disposition: inline

--bi5JUZtvcfApsciF
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 26, 2016 at 04:59:33PM +0000, Khem Raj wrote:
> Upgrade to 4.4.6
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../0001-dts-add-overlay-for-pitft22.patch         | 106 +++++++++++++++=
++++++
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  10 +-
>  2 files changed, 113 insertions(+), 3 deletions(-)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts-a=
dd-overlay-for-pitft22.patch
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts-add-over=
lay-for-pitft22.patch b/recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts=
-add-overlay-for-pitft22.patch
> new file mode 100644
> index 0000000..7cb076f
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi-4.4/0001-dts-add-overlay-for=
-pitft22.patch
> @@ -0,0 +1,106 @@
> +From a28bd410022b32a64e208f04b45add6326990332 Mon Sep 17 00:00:00 2001
> +From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3DA4cker?=3D <petter@technux.se>
> +Date: Fri, 8 Jan 2016 09:02:44 +0100
> +Subject: [PATCH] dts: add overlay for pitft22
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=3DUTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +Upstream-Status: Pending
> +
> +Add the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo:
> +https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic
> +
> +Signed-off-by: Petter Mab=E4cker <petter@technux.se>
> +---
> + arch/arm/boot/dts/overlays/Makefile            |  1 +
> + arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69 +++++++++++++++++++=
+++++++
> + 2 files changed, 70 insertions(+)
> + create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts
> +
> +Index: kernel-source/arch/arm/boot/dts/overlays/pitft22-overlay.dts
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- /dev/null
> ++++ kernel-source/arch/arm/boot/dts/overlays/pitft22-overlay.dts
> +@@ -0,0 +1,69 @@
> ++/*
> ++ * Device Tree overlay for pitft by Adafruit
> ++ *
> ++ */
> ++
> ++/dts-v1/;
> ++/plugin/;
> ++
> ++/ {
> ++        compatible =3D "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
> ++
> ++        fragment@0 {
> ++                target =3D <&spi0>;
> ++                __overlay__ {
> ++                        status =3D "okay";
> ++
> ++                        spidev@0{
> ++                                status =3D "disabled";
> ++                        };
> ++
> ++                        spidev@1{
> ++                                status =3D "disabled";
> ++                        };
> ++                };
> ++        };
> ++
> ++        fragment@1 {
> ++                target =3D <&gpio>;
> ++                __overlay__ {
> ++                        pitft_pins: pitft_pins {
> ++                                brcm,pins =3D <25>;
> ++                                brcm,function =3D <1>; /* out */
> ++                                brcm,pull =3D <0>; /* none */
> ++                        };
> ++                };
> ++        };
> ++
> ++        fragment@2 {
> ++                target =3D <&spi0>;
> ++                __overlay__ {
> ++                        /* needed to avoid dtc warning */
> ++                        #address-cells =3D <1>;
> ++                        #size-cells =3D <0>;
> ++
> ++                        pitft: pitft@0{
> ++                                compatible =3D "ilitek,ili9340";
> ++                                reg =3D <0>;
> ++                                pinctrl-names =3D "default";
> ++                                pinctrl-0 =3D <&pitft_pins>;
> ++
> ++                                spi-max-frequency =3D <32000000>;
> ++                                rotate =3D <90>;
> ++                                fps =3D <25>;
> ++                                bgr;
> ++                                buswidth =3D <8>;
> ++                                dc-gpios =3D <&gpio 25 0>;
> ++                                debug =3D <0>;
> ++                        };
> ++
> ++                };
> ++        };
> ++
> ++        __overrides__ {
> ++                speed =3D   <&pitft>,"spi-max-frequency:0";
> ++                rotate =3D  <&pitft>,"rotate:0";
> ++                fps =3D     <&pitft>,"fps:0";
> ++                debug =3D   <&pitft>,"debug:0";
> ++        };
> ++};
> +Index: kernel-source/arch/arm/boot/dts/overlays/Makefile
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- kernel-source.orig/arch/arm/boot/dts/overlays/Makefile
> ++++ kernel-source/arch/arm/boot/dts/overlays/Makefile
> +@@ -43,6 +43,7 @@ dtbo-$(RPI_DT_OVERLAYS) +=3D pi3-disable-b
> + dtbo-$(RPI_DT_OVERLAYS) +=3D pi3-miniuart-bt.dtbo
> + dtbo-$(RPI_DT_OVERLAYS) +=3D piscreen.dtbo
> + dtbo-$(RPI_DT_OVERLAYS) +=3D piscreen2r.dtbo
> ++dtbo-$(RPI_DT_OVERLAYS) +=3D pitft22-overlay.dtbo
> + dtbo-$(RPI_DT_OVERLAYS) +=3D pitft28-capacitive.dtbo
> + dtbo-$(RPI_DT_OVERLAYS) +=3D pitft28-resistive.dtbo
> + dtbo-$(RPI_DT_OVERLAYS) +=3D pps-gpio.dtbo
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kern=
el/linux/linux-raspberrypi_4.4.bb
> index f7c5bfb..8e4530f 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,6 +1,10 @@
> -LINUX_VERSION ?=3D "4.4.3"
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>
> -SRCREV =3D "36babd89241c85258acebe06616f1f1a58356f8e"
> -SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branc=
h=3Drpi-4.4.y"
> +LINUX_VERSION ?=3D "4.4.6"
> +
> +SRCREV =3D "2faaa2ccef9e4c595bd26f14285c225ceea6097e"
> +SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branc=
h=3Drpi-4.4.y \
> +           file://0001-dts-add-overlay-for-pitft22.patch \
> +"
>
>  require linux-raspberrypi.inc
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged all to master. Thanks.

--
Andrei Gherzan

--bi5JUZtvcfApsciF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJW+oFLAAoJENTZT2etDpZA+YcP/AmytQej/j+nAR3J5MsBhg/M
U11YW3fTvZZ21rYERrcqP0icfFqYbYWznfqHJwAr4vwAUMtrfO8tU9EhWoPUIjpM
3WwhfBinh06ifU8I/MRBxhepKFAkRfgjoXwAsT8ophpiSqX/GCbVlhWElGkzHSZ7
KU9/D5pxo2fnBmGO7/oKwXmvI+hpUor5D8Tp3cPseicSI+uCBrRhraY2Ouu6PRh7
MLFVl37RWE2iYro08WsFA5jz2duzCO3i4V0dQy3xJJoXTHf8z3c8spJANPsg7LlR
y6cQELGL5NQOwX87QaX8qe5uIRoalx2GUmInzGUsWtBwbo5TmQWX1QUvQFVaA41v
LQCDA73NcFYLRxVy/AWiPe5PThJp/cbmRiAKNxr2b6yFX8B5umYd5JSUYdJMJGGY
l0sRlciNI75sg/B0VTT4B9rY/oqWpoKVSKVuDhNtSYoUpUGIOedwqIX9GasKFzIl
OmR4rkOBvda++YNg7hB72xy96OvV72Ka21b60u1xROLvssIZQQp7Aixmzgti8zcJ
Pu0LukarJMhfxPtcM/M6VRVSil6EzdAo4dqPEaWCLlZV5P1/0Hsf4ASB90fzqC9x
vVyMV4f7JkX0ez5cEndMlvUP6akdEED0NZXn9wHVJh8b2B9PKZS2KhfclyLGeXYs
lMOaptgP/UfXzAOTwM0l
=0Rv/
-----END PGP SIGNATURE-----

--bi5JUZtvcfApsciF--
