Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
 by mx.groups.io with SMTP id smtpd.web09.538.1624471809672115612
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 11:10:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@free.fr header.s=smtp-20201208 header.b=lGvxpCnc;
 spf=pass (domain: free.fr, ip: 212.27.42.2, mailfrom: ydirson@free.fr)
Received: from zimbra39-e7.priv.proxad.net (unknown [172.20.243.189])
	by smtp2-g21.free.fr (Postfix) with ESMTP id C501C200385;
	Wed, 23 Jun 2021 20:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1624471808;
	bh=LbKwMgwJqAM3blBDU7YjYicaOwcbOr6KM+jOcPRyJUM=;
	h=Date:From:To:Cc:In-Reply-To:Subject:From;
	b=lGvxpCnc+06JSiS6JWegszjWNOhPpzkLx5gSdqT8ywTY/61SPoPAq9cjSppkgeTKL
	 oAm1fz+hwNoh0xscXQewGb0FRLdMv+8zKEgGcQ/Yk4yxRK1UJT1lXbxa7eBssuQ5p4
	 2U/NOCtSK0nggOxIZvDCm55UAAlNfwpM4qZ+UUQuNaPfov5KfDnnQtpOkkxtbLW6zp
	 F0R8dnKCjRsnq6TFSNrc1kcgw9I2FpXsIWh3D8qC47+6oxG0dtQDTO42LMoEiRVyRD
	 PO26d6LZ7jp3Hztz+2rAHfcPLWlZ0oh/O3/E4iA0VAfU34FqBix2NekD8+VdnX/RPX
	 FYA9warHQ21PQ==
Date: Wed, 23 Jun 2021 20:10:07 +0200 (CEST)
From: "Yann Dirson" <ydirson@free.fr>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Trevor Woerner <twoerner@gmail.com>
Message-ID: <111537338.865092101.1624471807760.JavaMail.root@zimbra39-e7>
In-Reply-To: <CAMKF1spxfj_RD3p_1yfjLSqTLYYaWrJ0PY1jZfbeMmigpWQ-RQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH 1/4] centralize console settings
MIME-Version: 1.0
X-Originating-IP: [88.120.44.86]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - FF3.0 (Linux)/7.2.0-GA2598)
X-Authenticated-User: ydirson@free.fr
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



----- Mail original -----
> De: "Khem Raj" <raj.khem@gmail.com>
> =C3=80: "Trevor Woerner" <twoerner@gmail.com>
> Cc: "Yocto-mailing-list" <yocto@lists.yoctoproject.org>
> Envoy=C3=A9: Mercredi 23 Juin 2021 11:32:57
> Objet: Re: [yocto] [meta-rockchip][PATCH 1/4] centralize console setting=
s
>=20
> On Wed, Jun 23, 2021 at 8:25 AM Trevor Woerner <twoerner@gmail.com>
> wrote:
> >
> > The console settings (baud and device) are scrambled and spread
> > throughout the
> > MACHINE configurations. Consolidate them and set defaults which are
> > then
> > overridden only as required.
> >
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >  conf/machine/include/nanopi-m4.inc         | 2 --
> >  conf/machine/include/rk3066.inc            | 1 +
> >  conf/machine/include/rk3188.inc            | 3 +++
> >  conf/machine/include/rk3288.inc            | 2 +-
> >  conf/machine/include/rk3328.inc            | 2 --
> >  conf/machine/include/rk3399.inc            | 2 --
> >  conf/machine/include/rock-pi-4.inc         | 2 --
> >  conf/machine/include/rockchip-defaults.inc | 3 +++
> >  conf/machine/marsboard-rk3066.conf         | 1 -
> >  conf/machine/radxarock.conf                | 1 -
> >  10 files changed, 8 insertions(+), 11 deletions(-)
> >
> > diff --git a/conf/machine/include/nanopi-m4.inc
> > b/conf/machine/include/nanopi-m4.inc
> > index a14b705..8a7c1d9 100644
> > --- a/conf/machine/include/nanopi-m4.inc
> > +++ b/conf/machine/include/nanopi-m4.inc
> > @@ -21,5 +21,3 @@ WKS_FILE_DEPENDS ?=3D " \
> >  IMAGE_BOOT_FILES ?=3D "\
> >      ${KERNEL_IMAGETYPE} \
> >      "
> > -
> > -SERIAL_CONSOLES =3D "1500000;ttyS2"
> > diff --git a/conf/machine/include/rk3066.inc
> > b/conf/machine/include/rk3066.inc
> > index dffbee0..76744ee 100644
> > --- a/conf/machine/include/rk3066.inc
> > +++ b/conf/machine/include/rk3066.inc
> > @@ -7,5 +7,6 @@ require conf/machine/include/tune-cortexa9.inc
> >  require conf/machine/include/soc-family.inc
> >  require conf/machine/include/rockchip-defaults.inc
> >
> > +RK_CONSOLE_BAUD =3D "115200"
> >  KBUILD_DEFCONFIG =3D "multi_v7_defconfig"
> >  KERNEL_IMAGETYPE =3D "zImage"
> > diff --git a/conf/machine/include/rk3188.inc
> > b/conf/machine/include/rk3188.inc
> > index 59e65d1..e21bbf7 100644
> > --- a/conf/machine/include/rk3188.inc
> > +++ b/conf/machine/include/rk3188.inc
> > @@ -9,3 +9,6 @@ require conf/machine/include/rockchip-defaults.inc
> >
> >  KBUILD_DEFCONFIG =3D "multi_v7_defconfig"
> >  KERNEL_IMAGETYPE =3D "zImage"
> > +
> > +RK_CONSOLE_BAUD =3D "115200"
> > +RK_CONSOLE_DEVICE =3D "ttyFIQ0"
>=20
> while I appreciate this change, it does have an effect of removing
> the
> users away from
> BSP variables that core metadata layers have, e.g. SERIAL_CONSOLES is
> a well defined
> and documented variable and if we synthesize it then its hidden which
> is fine if we document
> the new variables equally well although that means every BSP will
> invent these kind of
> variables so if a person was doing RPI and comes to work on rockchip
> boards he has more
> learnings to do.

What about making this change at the poky level, then ?

>=20
> > diff --git a/conf/machine/include/rk3288.inc
> > b/conf/machine/include/rk3288.inc
> > index 480e250..2715e73 100644
> > --- a/conf/machine/include/rk3288.inc
> > +++ b/conf/machine/include/rk3288.inc
> > @@ -10,7 +10,7 @@ require
> > conf/machine/include/rockchip-defaults.inc
> >  KBUILD_DEFCONFIG ?=3D "multi_v7_defconfig"
> >  KERNEL_IMAGETYPE =3D "zImage"
> >
> > -SERIAL_CONSOLES =3D "115200;ttyS2"
> > +RK_CONSOLE_BAUD =3D "115200"
> >
> >  PREFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot"
> >  SPL_BINARY ?=3D "idbloader.img"
> > diff --git a/conf/machine/include/rk3328.inc
> > b/conf/machine/include/rk3328.inc
> > index a4bbc5d..5b11868 100644
> > --- a/conf/machine/include/rk3328.inc
> > +++ b/conf/machine/include/rk3328.inc
> > @@ -19,7 +19,5 @@ TFA_BUILD_TARGET =3D "bl31"
> >  UBOOT_SUFFIX ?=3D "itb"
> >  UBOOT_ENTRYPOINT ?=3D "0x06000000"
> >
> > -SERIAL_CONSOLES =3D "1500000;ttyS2"
> > -
> >  PREFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot"
> >  SPL_BINARY ?=3D "idbloader.img"
> > diff --git a/conf/machine/include/rk3399.inc
> > b/conf/machine/include/rk3399.inc
> > index f6b7826..9f9f474 100644
> > --- a/conf/machine/include/rk3399.inc
> > +++ b/conf/machine/include/rk3399.inc
> > @@ -19,8 +19,6 @@ TFA_BUILD_TARGET =3D "bl31"
> >  UBOOT_SUFFIX ?=3D "itb"
> >  UBOOT_ENTRYPOINT ?=3D "0x06000000"
> >
> > -SERIAL_CONSOLES =3D "115200;ttyS2"
> > -
> >  PREFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot"
> >  SPL_BINARY ?=3D "idbloader.img"
> >
> > diff --git a/conf/machine/include/rock-pi-4.inc
> > b/conf/machine/include/rock-pi-4.inc
> > index 9c21084..a3e60c7 100644
> > --- a/conf/machine/include/rock-pi-4.inc
> > +++ b/conf/machine/include/rock-pi-4.inc
> > @@ -17,6 +17,4 @@ IMAGE_BOOT_FILES ?=3D "\
> >      ${KERNEL_IMAGETYPE} \
> >      "
> >
> > -SERIAL_CONSOLES =3D "1500000;ttyS2"
> > -
> >  MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> > diff --git a/conf/machine/include/rockchip-defaults.inc
> > b/conf/machine/include/rockchip-defaults.inc
> > index a4e2a2c..fe4052e 100644
> > --- a/conf/machine/include/rockchip-defaults.inc
> > +++ b/conf/machine/include/rockchip-defaults.inc
> > @@ -21,6 +21,9 @@ XSERVER =3D " \
> >         "
> >
> >  # misc
> > +RK_CONSOLE_DEVICE ?=3D "ttyS2"
> > +RK_CONSOLE_BAUD ?=3D "1500000"
> > +SERIAL_CONSOLES =3D "${RK_CONSOLE_BAUD};${RK_CONSOLE_DEVICE}"
> >  IMAGE_FSTYPES +=3D "ext4"
> >
> >  # boot device (sd-card/emmc)
> > diff --git a/conf/machine/marsboard-rk3066.conf
> > b/conf/machine/marsboard-rk3066.conf
> > index 09414bc..52fd256 100644
> > --- a/conf/machine/marsboard-rk3066.conf
> > +++ b/conf/machine/marsboard-rk3066.conf
> > @@ -8,5 +8,4 @@
> >
> >  require conf/machine/include/rk3066.inc
> >
> > -SERIAL_CONSOLES =3D "115200;ttyS2"
> >  KERNEL_DEVICETREE =3D "rk3066a-marsboard.dtb"
> > diff --git a/conf/machine/radxarock.conf
> > b/conf/machine/radxarock.conf
> > index 2036f6a..42d8848 100644
> > --- a/conf/machine/radxarock.conf
> > +++ b/conf/machine/radxarock.conf
> > @@ -9,5 +9,4 @@
> >
> >  require conf/machine/include/rk3188.inc
> >
> > -SERIAL_CONSOLES =3D "115200;ttyFIQ0"
> >  KERNEL_DEVICETREE =3D "rk3188-radxarock.dtb"
> > --
> > 2.30.0.rc0
> >
> >
> >=20
> >
>=20
>=20
>=20
>=20
>=20
