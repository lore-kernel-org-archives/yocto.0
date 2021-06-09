Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web12.2818.1623206516173115401
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 19:41:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: ZIU10b1ivaAC0h/RHp+vQhtfpq8lTM5aQ5LogFEm7Ziv+LeWcSbbbtNyTQQfOehGXfDYt8pSvF
 Ra+zhouD7tMg==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="204955006"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="204955006"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:41:55 -0700
IronPort-SDR: yv9FvHc3miBSzfHiIrOg63W1dtBfKf0sCiExys7tPFY+ZRrqTRrGsWYY5iaY4d09SGYrhdI3Sv
 cmP9qzLfQGng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="482213140"
Received: from pgsmsx603.gar.corp.intel.com ([10.108.199.138])
  by orsmga001.jf.intel.com with ESMTP; 08 Jun 2021 19:41:53 -0700
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 pgsmsx603.gar.corp.intel.com (10.108.199.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 9 Jun 2021 10:41:52 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.2242.008;
 Wed, 9 Jun 2021 10:41:52 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: Amit Kucheria <amit.kucheria.ext@huawei.com>,
	"amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Wojciech Zmuda
	<wojciech.zmuda@huawei.com>, Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: Re: [meta-zephyr][PATCHv2 1/5] zephyr-kernel: Clone mbedtls
Thread-Topic: [meta-zephyr][PATCHv2 1/5] zephyr-kernel: Clone mbedtls
Thread-Index: AQHXW2KGKGqIzQ/ED0WY2PpJ1Gb8Z6sJ7YrA//+DnQCAAYkTsA==
Date: Wed, 9 Jun 2021 02:41:52 +0000
Message-ID: <d7faaa13286f43c39f52da682adfbf3b@intel.com>
References: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
 <c6e00de83150cd7d99d172404ef8464526592529.1622535742.git.amit.kucheria.ext@huawei.com>
 <804db4de35bb4fe2bdfc7c4a9371c744@intel.com>
 <21f4e4928aa1406c98c6d0ae974b5d9c@huawei.com>
In-Reply-To: <21f4e4928aa1406c98c6d0ae974b5d9c@huawei.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Made few changes in this patch. Re-sent patchset including some additional =
patches.

Regards,
Naveen

> -----Original Message-----
> From: Amit Kucheria <amit.kucheria.ext@huawei.com>
> Sent: Tuesday, June 8, 2021 7:11 PM
> To: Saini, Naveen Kumar <naveen.kumar.saini@intel.com>;
> amit.kucheria@verdurent.com; yocto@lists.yoctoproject.org; Wojciech
> Zmuda <wojciech.zmuda@huawei.com>; Andrei Gherzan
> <andrei.gherzan@huawei.com>
> Subject: RE: [meta-zephyr][PATCHv2 1/5] zephyr-kernel: Clone mbedtls
>=20
> Hi Naveen,
>=20
> I'll take a look with the specific revision ID mentioned. I don't see a b=
uild
> failure here locally.
>=20
> On a related note, since 2.6 is now released, should we just focus on get=
ting
> all this working on 2.6 (assuming you'll move meta-zephyr to it soon)?
>=20
> Regards,
> Amit
>=20
> > -----Original Message-----
> > From: Saini, Naveen Kumar [mailto:naveen.kumar.saini@intel.com]
> > Sent: 08 June 2021 16:10
> > To: amit.kucheria@verdurent.com; yocto@lists.yoctoproject.org;
> > Wojciech Zmuda <wojciech.zmuda@huawei.com>; Andrei Gherzan
> > <andrei.gherzan@huawei.com>
> > Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
> > Subject: RE: [meta-zephyr][PATCHv2 1/5] zephyr-kernel: Clone mbedtls
> >
> > Build failing:
> >
> > Could not open 'poky/build-zephyr/tmp-newlib/work/armv7m-yocto-
> > eabi/zephyr-mqtt-publisher/2.5.0+gitAUTOINC+fe7c2efca8_c3bd2094f9-
> > r0/git/' (in 'osource "$(ZEPHYR_MBEDTLS_KCONFIG)"') (EISDIR: Is a
> > directory)
> >
> >
> >
> > To fix, can you try following revision for mbedtls.
> >     - name: mbedtls
> >       revision: 24d84ecff195fb15c889d9046e44e4804d626c67
> > https://github.com/zephyrproject-rtos/zephyr/blob/zephyr-
> > v2.5.0/west.yml#L94
> >
> > Regards,
> > Naveen
> >
> >
> >
> > > -----Original Message-----
> > > From: amit.kucheria@verdurent.com <amit.kucheria@verdurent.com>
> > > Sent: Monday, June 7, 2021 2:01 PM
> > > To: yocto@lists.yoctoproject.org; wojciech.zmuda@huawei.com;
> > > andrei.gherzan@huawei.com; Saini, Naveen Kumar
> > > <naveen.kumar.saini@intel.com>
> > > Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
> > > Subject: [meta-zephyr][PATCHv2 1/5] zephyr-kernel: Clone mbedtls
> > >
> > > From: Amit Kucheria <amit.kucheria.ext@huawei.com>
> > >
> > > MBed TLS is a library that implements cryptographic primitives and
> > > SSL/TLS and DTLS protocols that are needed in secure network
> > communications.
> > >
> > > Add it to the kernel include files to build and link against
> > > applications that need mbedtls.
> > >
> > > Signed-off-by: Amit Kucheria <amit.kucheria.ext@huawei.com>
> > > ---
> > >  recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc    | 1 +
> > >  recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc | 1 +
> > >  recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc       | 1 +
> > >  3 files changed, 3 insertions(+)
> > >
> > > diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> > > b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> > > index 330fe59aebe5..c9acbbbc3645 100644
> > > --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> > > +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> > > @@ -28,6 +28,7 @@ ZEPHYR_MODULES =3D ""
> > >  ZEPHYR_MODULES_append_arm =3D "\;${S}/modules/cmsis"
> > >  ZEPHYR_MODULES_append_nordic =3D "\;${S}/modules/hal/nordic"
> > >  ZEPHYR_MODULES_append_stm32 =3D "\;${S}/modules/hal/stm32"
> > > +ZEPHYR_MODULES_append_mbedtls =3D "\;${S}/modules/lib/mbedtls"
> > >  ZEPHYR_MODULES_append_openamp =3D "\;${S}/modules/lib/open-
> > > amp\;${S}/modules/hal/libmetal"
> > >
> > >  EXTRA_OECMAKE_append =3D " -
> DZEPHYR_MODULES=3D${ZEPHYR_MODULES}"
> > > diff --git
> > > a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
> > > b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
> > > index 5d66f0f3cb5b..3aeb3bf6fc3f 100644
> > > --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
> > > +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
> > > @@ -6,6 +6,7 @@ SRCREV_stm32 =3D
> > > "cc8731dba4fd9c57d7fe8ea6149828b89c2bd635"
> > >  SRCREV_open-amp =3D "de1b85a13032a2de1d8b6695ae5f800b613e739d"
> > >  SRCREV_libmetal =3D "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
> > >  SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
> > > +SRCREV_mbedtls =3D "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
> > >
> > >  PV =3D "2.5.0+git${SRCPV}"
> > >
> > > diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > > b/recipes- kernel/zephyr-kernel/zephyr-kernel-src.inc
> > > index 1d06d916a1e0..069fa561667c 100644
> > > --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > > +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > > @@ -13,6 +13,7 @@ SRC_URI =3D "\
> > >      git://github.com/zephyrproject-
> > > rtos/cmsis.git;protocol=3Dhttps;destsuffix=3Dgit/modules/cmsis;name=
=3Dcmsis
> \
> > >      git://github.com/zephyrproject-
> > > rtos/hal_nordic.git;protocol=3Dhttps;destsuffix=3Dgit/modules/hal/nor=
dic
> > > ;n
> > > ame=3D
> > > nordic \
> > >      git://github.com/zephyrproject-
> > > rtos/hal_stm32.git;protocol=3Dhttps;destsuffix=3Dgit/modules/hal/stm3=
2;n
> > > am
> > > e=3D
> > > stm32 \
> > > +
> > > + git://github.com/zephyrproject-rtos/mbedtls.git;protocol=3Dhttps;de=
s
> > > + ts uf fix=3Dgit/modules/lib/mbedtls;name=3Dmbedtls \
> > >      git://github.com/zephyrproject-rtos/open-
> > > amp.git;protocol=3Dhttps;destsuffix=3Dgit/modules/lib/open-
> amp;name=3Dopen
> > > -
> > > amp \
> > >      git://github.com/zephyrproject-
> > > rtos/libmetal.git;protocol=3Dhttps;destsuffix=3Dgit/modules/hal/libme=
tal
> > > ;n
> > > ame=3Dl
> > > ibmetal \
> > >      git://github.com/zephyrproject-
> > > rtos/tinycrypt.git;protocol=3Dhttps;destsuffix=3Dgit/modules/crypto/t=
iny
> > > cr
> > > ypt;na
> > > me=3Dtinycrypt \
> > > --
> > > 2.25.1

