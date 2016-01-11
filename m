Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 750B8E007EA; Mon, 11 Jan 2016 09:55:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F5ACE0070F
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 09:55:46 -0800 (PST)
Received: by mail-pf0-f178.google.com with SMTP id e65so48218836pfe.0
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 09:55:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=iOsI3+yWwH2Z0s/6ra5657lHfeOypACG0kbqbvzkzAo=;
	b=O2tnyiEVAOxCvTdGUkL/ccguiMls9LuvPx/mAEG3X0RVTWKA5nJpQseYBtEano8B+X
	pZHYYXkfzIBZ3TBeUTwBtrIu0MjMUcPeQNiYjKOEbWVgsV/nJ/Lq9eQmy6ikZTYV2eFp
	TmahQ9DhtvCj57hiaSwuSc/SCnHWiSx8/PCFn8mBcIc8yo2UKyM9/ertngPTugMN9J4W
	/Adu9G9qgrp4ryvk0Gwtf/Bu4wIufmrvBOG8GfpO84sIj3mVqyde3lxm0Dd9QqUqgZ35
	4NpxOamLn9Den4zE6VvHTRMkhvSHCabOFR9G12IJXp0FrDao3SOiU/f19kV0hpNFApTY
	YyfQ==
X-Received: by 10.98.16.139 with SMTP id 11mr28232911pfq.128.1452534945342;
	Mon, 11 Jan 2016 09:55:45 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:d5b:ee56:59f:5eeb?
	([2601:646:8802:5d5c:d5b:ee56:59f:5eeb])
	by smtp.gmail.com with ESMTPSA id w64sm536445pfi.42.2016.01.11.09.55.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 11 Jan 2016 09:55:44 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1452530987-994-5-git-send-email-petter@technux.se>
Date: Mon, 11 Jan 2016 09:55:43 -0800
Message-Id: <7564A308-E4D5-4B05-B03A-95A2B37A5F59@gmail.com>
References: <1452530987-994-1-git-send-email-petter@technux.se>
	<1452530987-994-5-git-send-email-petter@technux.se>
To: =?utf-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/5] pitft: Add basic support for PiTFT
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
X-List-Received-Date: Mon, 11 Jan 2016 17:55:48 -0000
X-Groupsio-MsgNum: 27924
Content-Type: multipart/signed;
	boundary="Apple-Mail=_33A707ED-3C0E-46DA-B575-E636FD9C33BB";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_33A707ED-3C0E-46DA-B575-E636FD9C33BB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jan 11, 2016, at 8:49 AM, Petter Mab=C3=A4cker <petter@technux.se> =
wrote:
>=20
> Add basic support for PiTFT display by using device-trees.
>=20
> In order get it working below configurations must be active in
> local.conf:
>=20
> MACHINEOVERRIDES .=3D ":pitft=E2=80=9D

Using MACHINE_FEATURES will be more appropriate term. Effects are same.

> - This will enable SPI bus and i2c device-trees, it will also setup
>   framebuffer for console and x server on PiTFT.
>=20
> [Support #70]
>=20
> Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
> ---
> README                                             | 29 =
++++++++++++++++------
> recipes-bsp/bootfiles/rpi-config_git.bb            | 14 +++++++++++
> .../rpi/xorg.conf.d/99-pitft.conf                  |  5 ++++
> .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  1 +
> recipes-kernel/linux/linux-raspberrypi.inc         |  1 +
> 5 files changed, 42 insertions(+), 8 deletions(-)
> create mode 100644 =
recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft=
.conf
>=20
> diff --git a/README b/README
> index 8ef4e7a..791038f 100644
> --- a/README
> +++ b/README
> @@ -22,10 +22,11 @@ Contents:
>     2.H. Optional - Enable kgdb over console support
>     2.I. Optional - Enable SPI bus
>     2.J. Optional - Enable I2C
> -    2.K. Images
> -    2.L. Boot to U-Boot
> -    2.M. Image with Initramfs
> -    2.N. Device tree support
> +    2.K. Optional - Enable PiTFT support
> +    2.L. Images
> +    2.M. Boot to U-Boot
> +    2.N. Image with Initramfs
> +    2.O. Device tree support
> 3. Extra apps
>     3.A. omxplayer
> 4. Source code and mirrors
> @@ -157,7 +158,19 @@ ENABLE_SPI_BUS =3D "1"
> When using device tree kernels, set this variable to enable I2C
> ENABLE_I2C =3D "1"
>=20
> -2.K. Images
> +2.K. Optional - Enable PiTFT support
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +Basic support for using PiTFT screens can be enabled by adding
> +below in local.conf:
> +
> +MACHINEOVERRIDES .=3D ":pitft"
> +  - This will enable SPI bus and i2c device-trees, it will also setup
> +    framebuffer for console and x server on PiTFT.
> +
> +NOTE: To get this working the overlay for the PiTFT model must be =
build,
> +      added and specified as well (dtoverlay=3D<driver> in =
config.txt)
> +
> +2.L. Images
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> * rpi-hwup-image
>     Hardware up image
> @@ -167,7 +180,7 @@ ENABLE_I2C =3D "1"
>     Image based on rpi-basic-image which includes most of the packages =
in this
>     layer and some media samples.
>=20
> -2.L. Boot to U-Boot
> +2.M. Boot to U-Boot
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> To have u-boot load kernel image, set in your local.conf
> KERNEL_IMAGETYPE =3D "uImage"
> @@ -175,7 +188,7 @@ KERNEL_IMAGETYPE =3D "uImage"
> This will make kernel.img be u-boot image which will load uImage.
> By default, kernel.img is the actual kernel image (ex. Image).
>=20
> -2.M. Image with Initramfs
> +2.N. Image with Initramfs
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> To build an initramfs image :
>     * Set this 3 kernel variables (in linux-raspberrypi.inc for =
example)
> @@ -188,7 +201,7 @@ To build an initramfs image :
>     * Set the meta-rasberrypi variable (in raspberrypi.conf for =
example)
>         - KERNEL_INITRAMFS =3D "-initramfs"
>=20
> -2.N. Device tree support
> +2.O. Device tree support
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> Device tree for RPi is only supported when using linux-raspberrypi =
3.18+
> kernels.
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb =
b/recipes-bsp/bootfiles/rpi-config_git.bb
> index ccb9b7f..9f20352 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -80,6 +80,20 @@ do_deploy() {
>     fi
> }
>=20
> +do_deploy_append_pitft() {
> +    # Add SPI BUS and I2C support if needed
> +    if [ -z "${ENABLE_SPI_BUS}" ]; then
> +        echo "# Enable SPI bus" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtparam=3Dspi=3Don" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi
> +
> +    if [ -z "${ENABLE_I2C}" ]; then
> +        echo "# Enable I2C" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtparam=3Di2c1=3Don" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtparam=3Di2c_arm=3Don" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi
> +}
> +
> addtask deploy before do_package after do_install
> do_deploy[dirs] +=3D "${DEPLOYDIR}/bcm2835-bootfiles"
>=20
> diff --git =
a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pit=
ft.conf =
b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pit=
ft.conf
> new file mode 100644
> index 0000000..0d2b36b
> --- /dev/null
> +++ =
b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pit=
ft.conf
> @@ -0,0 +1,5 @@
> +Section "Device"
> +    Identifier "Adafruit PiTFT"
> +    Driver "fbdev"
> +    Option "fbdev" "/dev/fb1"
> +EndSection
> diff --git =
a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend =
b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> index 2cf40f8..db8e4c1 100644
> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -1,6 +1,7 @@
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> SRC_URI_append_rpi =3D " file://xorg.conf.d/10-evdev.conf "
> +SRC_URI_append_pitft =3D " file://xorg.conf.d/99-pitft.conf "
>=20
> do_install_append_rpi () {
> 	install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc =
b/recipes-kernel/linux/linux-raspberrypi.inc
> index 70e8bfe..420346a 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -24,6 +24,7 @@ CMDLINE =3D "dwc_otg.lpm_enable=3D0 =
console=3DttyAMA0,115200 root=3D/dev/mmcblk0p2 rootf
>=20
> # Add the kernel debugger over console kernel command line option if =
enabled
> CMDLINE_append =3D ' ${@base_conditional("ENABLE_KGDB", "1", =
"kgdboc=3DttyAMA0,115200", "", d)}'
> +CMDLINE_append_pitft =3D "fbcon=3Dmap:10 fbcon=3Dfont:VGA8x8"
>=20
> UDEV_GE_141 ?=3D "1"
>=20
> --
> 1.9.1
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_33A707ED-3C0E-46DA-B575-E636FD9C33BB
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaT7J8ACgkQuwUzVZGdMxSE7QCfUMmP8ZVI+69dHBlBn8/4BlZ1
8+4AniDDDtErjSjFp1qt8EbYkSWSVrN4
=a4rq
-----END PGP SIGNATURE-----

--Apple-Mail=_33A707ED-3C0E-46DA-B575-E636FD9C33BB--
