Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 879E8E00C27; Tue, 29 Mar 2016 08:59:19 -0700 (PDT)
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
	*      [209.85.220.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E801FE00BFD
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 08:59:16 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id tt10so16592304pab.3
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 08:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=V13HXcH2ty0SxJhxTJ9zAFI39Q65OeCMyFxm2y5OTzU=;
	b=DuFAzGo67Z1hfZOX+kOL3F1bSNoY+Keo28DbAIraL2MQLwjFspEJO/nizM/CgK3hla
	gCRHiQxtUhAeb2RuMflqHUxgtPP3VuaEGXomsmtzH2NuS6fNS9HEsAd1tFfRaibJZTQj
	hX8cA+sx/MivvskcIDvm7rZ6UdgyLKotpBIo2srOyJYCp1Y7i9VnQrkfHCVzFnr9ZefV
	8dt2U/oTrRYvXMhmTUoDsoXaED0uT5/tirOTyw2nBoU4doGnJIdF9gAMLN/TFuabh3J4
	Nzh+/funY1mqbGwLy7qjoN9Kp8jrAUoBWcCT5CX0TwZZV+sDibs0FQzfgNEUQgFLpt9P
	6SOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=V13HXcH2ty0SxJhxTJ9zAFI39Q65OeCMyFxm2y5OTzU=;
	b=S/9YNvxnXdJ6OJxN3mh+SY9kSnT6gIwsjn3PMBawJhwYYTTbPhDK2cdCpv6BJPcnqX
	Qo4VjPehKV8YXdh5s8tw0YrNYNk2wRLSPuTsymvCi2T951o9vQq7oUajMUeaEJuVYXYP
	9uJ7TDgbGZ6Zbu9/f0pLwJS61WehZmVbDwKhzlmLw3trH/J1rc1tCEhnbujYmzVP0hed
	uDGU6+tfGjuuo8JHyGYfgCO6ucQ9/QareKkA1Key6zwQzX8QkhuaZJ8V6zj4h/77FI8E
	C+yQXlHVRrcJsByXuBk6JytrM/EJ/0DAEt4OpQFYXacrb/SHBJ72xNnRb0MCnGjDVJL9
	OMeg==
X-Gm-Message-State: AD7BkJKKaOUlI3X0Q2IQwlAXi/xGkBTZsTGA5Jyes3bAbiq1bGjj1JE4zwsfea85MIdaHQ==
X-Received: by 10.66.120.46 with SMTP id kz14mr4619535pab.61.1459267155725;
	Tue, 29 Mar 2016 08:59:15 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:5557:97af:e383:d3a6?
	([2601:646:8800:5a9a:5557:97af:e383:d3a6])
	by smtp.gmail.com with ESMTPSA id
	q2sm44189364pfq.88.2016.03.29.08.59.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 Mar 2016 08:59:14 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1459263851-32643-2-git-send-email-petter@technux.se>
Date: Tue, 29 Mar 2016 08:59:09 -0700
Message-Id: <127D05D7-F0BC-4D36-8E9E-4F3C10E104EF@gmail.com>
References: <1459263851-32643-1-git-send-email-petter@technux.se>
	<1459263851-32643-2-git-send-email-petter@technux.se>
To: =?utf-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/4] pitft: Add support for pitft28r
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
X-List-Received-Date: Tue, 29 Mar 2016 15:59:19 -0000
X-Groupsio-MsgNum: 29197
Content-Type: multipart/signed;
	boundary="Apple-Mail=_AACD6587-AEFA-4E9C-9E1C-A04AC39D5443";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_AACD6587-AEFA-4E9C-9E1C-A04AC39D5443
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Mar 29, 2016, at 8:04 AM, Petter Mab=C3=A4cker <petter@technux.se> =
wrote:
>=20
> The support for PiTFT 28 inch resistive touchscreen is optional
> and can be enabled by adding below in local.conf:
>=20
> MACHINE_FEATURES +=3D "pitft pitft28r=E2=80=9D
>=20

will this work with all kernel recipes available in layer ?


> Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
> ---
> README                                                              | =
1 +
> conf/machine/include/rpi-base.inc                                   | =
1 +
> recipes-bsp/bootfiles/rpi-config_git.bb                             | =
6 ++++++
> .../xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pitft.conf  | =
5 +++++
> .../xserver-xf86-config/rpi/xorg.conf.d/99-calibration.conf         | =
6 ++++++
> .../xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf  | =
5 -----
> recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend      | =
6 ++++--
> recipes-kernel/linux/linux-raspberrypi.inc                          | =
2 ++
> 8 files changed, 25 insertions(+), 7 deletions(-)
> create mode 100644 =
recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pitft=
.conf
> create mode 100644 =
recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-calib=
ration.conf
> delete mode 100644 =
recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft=
.conf
>=20
> diff --git a/README b/README
> index 536926b..54b1ac3 100644
> --- a/README
> +++ b/README
> @@ -232,6 +232,7 @@ the modelname should be added as a =
MACHINE_FEATURES in local.conf like below:
>=20
> List of currently supported models:
>     - pitft22
> +    - pitft28r
>=20
>=20
> 4. Extra apps
> diff --git a/conf/machine/include/rpi-base.inc =
b/conf/machine/include/rpi-base.inc
> index 792150e..a9e8053 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -33,6 +33,7 @@ KERNEL_DEVICETREE ?=3D " \
>     overlays/iqaudio-dacplus-overlay.dtb \
>     overlays/lirc-rpi-overlay.dtb \
>     overlays/pitft22-overlay.dtb \
> +    overlays/pitft28-resistive-overlay.dtb \
>     overlays/pps-gpio-overlay.dtb \
>     overlays/w1-gpio-overlay.dtb \
>     overlays/w1-gpio-pullup-overlay.dtb \
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb =
b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 4d41723..2941982 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -17,6 +17,7 @@ PR =3D "r4"
>=20
> PITFT=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", =
d)}"
> PITFT22=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", =
"0", d)}"
> +PITFT28r=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", =
"0", d)}"
>=20
> inherit deploy
>=20
> @@ -90,6 +91,11 @@ do_deploy() {
>         echo "# Enable PITFT22 display" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>         echo =
"dtoverlay=3Dpitft22,rotate=3D270,speed=3D32000000,txbuflen=3D32768" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>     fi
> +
> +    if [ "${PITFT28r}" =3D "1" ]; then
> +        echo "# Enable PITFT28r display" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo =
"dtoverlay=3Dpitft28-resistive,rotate=3D90,speed=3D32000000,txbuflen=3D327=
68" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi
> }
>=20
> addtask deploy before do_package after do_install
> diff --git =
a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pit=
ft.conf =
b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pit=
ft.conf
> new file mode 100644
> index 0000000..0d2b36b
> --- /dev/null
> +++ =
b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pit=
ft.conf
> @@ -0,0 +1,5 @@
> +Section "Device"
> +    Identifier "Adafruit PiTFT"
> +    Driver "fbdev"
> +    Option "fbdev" "/dev/fb1"
> +EndSection
> diff --git =
a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-cal=
ibration.conf =
b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-cal=
ibration.conf
> new file mode 100644
> index 0000000..f8b578c
> --- /dev/null
> +++ =
b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-cal=
ibration.conf
> @@ -0,0 +1,6 @@
> +Section "InputClass"
> +        Identifier      "calibration"
> +        MatchProduct    "stmpe-ts"
> +        Option  "Calibration"   "3800 200 200 3800"
> +        Option  "SwapAxes"      "1"
> +EndSection
> diff --git =
a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pit=
ft.conf =
b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pit=
ft.conf
> deleted file mode 100644
> index 0d2b36b..0000000
> --- =
a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pit=
ft.conf
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -Section "Device"
> -    Identifier "Adafruit PiTFT"
> -    Driver "fbdev"
> -    Option "fbdev" "/dev/fb1"
> -EndSection
> diff --git =
a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend =
b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> index 0ae2ee0..062de2d 100644
> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -1,7 +1,8 @@
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> SRC_URI_append_rpi =3D " file://xorg.conf.d/10-evdev.conf \
> -                       file://xorg.conf.d/99-pitft.conf \
> +                       file://xorg.conf.d/98-pitft.conf \
> +                       file://xorg.conf.d/99-calibration.conf \
>                      "
>=20
> do_install_append_rpi () {
> @@ -10,7 +11,8 @@ do_install_append_rpi () {
>=20
> 	PITFT=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", =
"0", d)}"
> 	if [ "${PITFT}" =3D "1" ]; then
> -		install -m 0644 ${WORKDIR}/xorg.conf.d/99-pitft.conf =
${D}/${sysconfdir}/X11/xorg.conf.d/
> +		install -m 0644 ${WORKDIR}/xorg.conf.d/98-pitft.conf =
${D}/${sysconfdir}/X11/xorg.conf.d/
> +		install -m 0644 =
${WORKDIR}/xorg.conf.d/99-calibration.conf =
${D}/${sysconfdir}/X11/xorg.conf.d/
> 	fi
> }
>=20
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc =
b/recipes-kernel/linux/linux-raspberrypi.inc
> index 24e7fe2..142ad7f 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -27,6 +27,8 @@ CMDLINE_append =3D ' =
${@base_conditional("ENABLE_KGDB", "1", "kgdboc=3DttyAMA0,11520
>=20
> UDEV_GE_141 ?=3D "1"
>=20
> +KERNEL_MODULE_AUTOLOAD +=3D "${@bb.utils.contains("MACHINE_FEATURES", =
"pitft28r", "stmpe-ts", "", d)}"
> +
> # Set programmatically some variables during recipe parsing
> # See =
http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-=
manual.html#anonymous-python-functions
> python __anonymous () {
> --
> 1.9.1
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_AACD6587-AEFA-4E9C-9E1C-A04AC39D5443
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlb6plEACgkQuwUzVZGdMxQJRACeLnpB1qGSWFhLVoABCb7cVgtx
6PcAnR7ZpsMxkqWpATWK+97IZpYDPDKp
=mt/3
-----END PGP SIGNATURE-----

--Apple-Mail=_AACD6587-AEFA-4E9C-9E1C-A04AC39D5443--
