Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.11791.1594218162005430901
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jul 2020 07:22:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4B21jV6p9sz5tlH;
	Wed,  8 Jul 2020 16:22:38 +0200 (CEST)
Date: Wed, 8 Jul 2020 16:22:37 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: sdw@inea.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Configuring UIO to handle GPIO interrupt #yocto #linux
Message-ID: <20200708142237.efkkqariqateo2st@qschulz>
References: <xX9c.1594217717668483382.XXBG@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <xX9c.1594217717668483382.XXBG@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Scott,

On Wed, Jul 08, 2020 at 07:15:17AM -0700, sdw@inea.com wrote:
> Dear Yocto community,
>=20
> I am hoping that you can provide advice on configuring UIO to handle a =
GPIO interrupt from user space.  I found an excellent summary at https://=
yurovsky.github.io/2014/10/10/linux-uio-gpio-interrupt.html and have trie=
d to follow it as well as I can, being a newcomer to Yocto and embedded L=
inux.=20
>=20
> We are using a Variscite DART-MX8M-MINI development kit, with the i.MX8=
M Mini processor on a System-on-Module.  I have enabled spidev, which I a=
m using to communicate with an ADS1299 EEG analog front end from TI.  It =
generates a =E2=80=9Cdata ready=E2=80=9D interrupt DRDY# (active low).  I=
=E2=80=99d like to be able to handle this falling-edge interrupt by conne=
cting it to a GPIO (GPIO1_0) and either read() or poll() to wait for an i=
nterrupt, and can then read the acquired data using /dev/spidev0.0.=20
>=20
> In my device tree, I have added the following under my &ecspi1 node.  I=
 am not certain this is the correct place to add this information, or if =
I can simply add it within the device tree =E2=80=9Croot=E2=80=9D node =E2=
=80=9C/ {=E2=80=9C.  I would appreciate your advice on the best place add=
 this information!
>        // Added for DRDY# interrupt on GPIO1_0 from user space=20
>        user_io@0 {=20
>               compatible =3D "mydevice,generic-uio,ui_pdrv";=20
>               status =3D "okay";=20
>               interrupt-parent =3D <&gpio1>;=20
>               interrupts =3D <0 IRQ_TYPE_EDGE_FALLING>;=20
>               pinctrl-names =3D "default";=20
>               pinctrl-0 =3D <&pinctrl_user_io>;=20
>        };=20
>=20
> Under my dts &iomuxc node, the various pinctrl groups are defined.  I a=
dded the following for GPIO1_0:=20
>               // Added for DRDY# interrupt on GPIO1_0 from user space=20
>               pinctrl_user_io: user_io-0 {=20
>                      fsl,pins =3D <=20
>                            MX8MM_IOMUXC_GPIO1_IO00_GPIO1_IO0           =
0x1c0=20
>                      >;=20
>               };
> This should configure the pin to enable a pull-up.
>=20
> I have modified my kernel .config file via 'bitbake -c menuconfig virtu=
al/kernel', and it contains the following entries:=20
> CONFIG_UIO=3Dy
> CONFIG_UIO_PDRV_GENIRQ=3Dm=20
>=20
> The =E2=80=9Cy=E2=80=9D setting for CONFIG_UIO was evidently due to oth=
er dependencies in the provided configuration.  I then built the SD card =
image using 'bitbake fsl-image-qt5', and programmed it onto my SD card.
>=20

Up till there, this discussion would probably fit some kernel
communities more than the Yocto one.

A few things though:

 - Bear in mind that using bitbake -c menuconfig virtual/kernel, the
 changes aren't permanent. If there's a clean rebuild of the kernel for
 some reason, your changes will be overwritten, you need to create a
 patch for it (or take a defconfig) and add it to your kernel recipe (or
 fork the kernel repo and add your own defconfig),

 - Modules aren't shipped by default by Yocto, so you need either to
 add kernel-modules to IMAGE_INSTALL or probably smarter to have it in
 your machine configuration file in MACHINE_EXTRA_RRECOMMENDS, this will
 install **all** kernel modules created by yocto,
 or just add kernel-module-uio-pdrv-genirq (probably, don't know the exac=
t
 name of it) the same way to only have uio,

Quentin
