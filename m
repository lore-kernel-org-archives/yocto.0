Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web09.10562.1623148593441768141
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 03:36:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: MHK/1HDyWsDqr48SDgGDi0CNjfu5o+YCu7ZduCu+Ea38K3fUufwTyFxTw3sJP9Gt5+r/M93B7S
 Ig3noOMqybOA==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="290446800"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; 
   d="scan'208";a="290446800"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 03:36:32 -0700
IronPort-SDR: 61lbg0Hp9zP1IBjlSwQbmnz5OgSoy4Jn3LjeIPuaS8fGLbqTIjD880Ssa+g4/q9SPETsAK1VHh
 5QDoWIskmRPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; 
   d="scan'208";a="635023328"
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137])
  by fmsmga006.fm.intel.com with ESMTP; 08 Jun 2021 03:36:30 -0700
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 pgsmsx602.gar.corp.intel.com (10.108.199.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 18:36:29 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.2242.008;
 Tue, 8 Jun 2021 18:36:29 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"wojciech.zmuda@huawei.com" <wojciech.zmuda@huawei.com>,
	"andrei.gherzan@huawei.com" <andrei.gherzan@huawei.com>
CC: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: Re: [meta-zephyr][PATCHv2 1/5] zephyr-kernel: Clone mbedtls
Thread-Topic: [meta-zephyr][PATCHv2 1/5] zephyr-kernel: Clone mbedtls
Thread-Index: AQHXW2KGKGqIzQ/ED0WY2PpJ1Gb8Z6sJ7NKg
Date: Tue, 8 Jun 2021 10:36:29 +0000
Message-ID: <8ecf10e32bcb4c889d373b1ecc8c1462@intel.com>
References: <cover.1622535742.git.amit.kucheria.ext@huawei.com>
 <c6e00de83150cd7d99d172404ef8464526592529.1622535742.git.amit.kucheria.ext@huawei.com>
In-Reply-To: <c6e00de83150cd7d99d172404ef8464526592529.1622535742.git.amit.kucheria.ext@huawei.com>
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



> -----Original Message-----
> From: amit.kucheria@verdurent.com <amit.kucheria@verdurent.com>
> Sent: Monday, June 7, 2021 2:01 PM
> To: yocto@lists.yoctoproject.org; wojciech.zmuda@huawei.com;
> andrei.gherzan@huawei.com; Saini, Naveen Kumar
> <naveen.kumar.saini@intel.com>
> Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
> Subject: [meta-zephyr][PATCHv2 1/5] zephyr-kernel: Clone mbedtls
>=20
> From: Amit Kucheria <amit.kucheria.ext@huawei.com>
>=20
> MBed TLS is a library that implements cryptographic primitives and SSL/TL=
S
> and DTLS protocols that are needed in secure network communications.
>=20
> Add it to the kernel include files to build and link against applications=
 that
> need mbedtls.
>=20
> Signed-off-by: Amit Kucheria <amit.kucheria.ext@huawei.com>
> ---
>  recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc    | 1 +
>  recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc | 1 +
>  recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc       | 1 +
>  3 files changed, 3 insertions(+)
>=20
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> index 330fe59aebe5..c9acbbbc3645 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> @@ -28,6 +28,7 @@ ZEPHYR_MODULES =3D ""
>  ZEPHYR_MODULES_append_arm =3D "\;${S}/modules/cmsis"
>  ZEPHYR_MODULES_append_nordic =3D "\;${S}/modules/hal/nordic"
>  ZEPHYR_MODULES_append_stm32 =3D "\;${S}/modules/hal/stm32"
> +ZEPHYR_MODULES_append_mbedtls =3D "\;${S}/modules/lib/mbedtls"

Why override used here? I can see all new samples already adding mbedtls to=
 ZEPHYR_MODULES

>  ZEPHYR_MODULES_append_openamp =3D "\;${S}/modules/lib/open-
> amp\;${S}/modules/hal/libmetal"
>=20
>  EXTRA_OECMAKE_append =3D " -DZEPHYR_MODULES=3D${ZEPHYR_MODULES}"
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
> b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
> index 5d66f0f3cb5b..3aeb3bf6fc3f 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
> @@ -6,6 +6,7 @@ SRCREV_stm32 =3D
> "cc8731dba4fd9c57d7fe8ea6149828b89c2bd635"
>  SRCREV_open-amp =3D "de1b85a13032a2de1d8b6695ae5f800b613e739d"
>  SRCREV_libmetal =3D "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
>  SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
> +SRCREV_mbedtls =3D "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
>=20
>  PV =3D "2.5.0+git${SRCPV}"
>=20
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes=
-
> kernel/zephyr-kernel/zephyr-kernel-src.inc
> index 1d06d916a1e0..069fa561667c 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> @@ -13,6 +13,7 @@ SRC_URI =3D "\
>      git://github.com/zephyrproject-
> rtos/cmsis.git;protocol=3Dhttps;destsuffix=3Dgit/modules/cmsis;name=3Dcms=
is \
>      git://github.com/zephyrproject-
> rtos/hal_nordic.git;protocol=3Dhttps;destsuffix=3Dgit/modules/hal/nordic;=
name=3D
> nordic \
>      git://github.com/zephyrproject-
> rtos/hal_stm32.git;protocol=3Dhttps;destsuffix=3Dgit/modules/hal/stm32;na=
me=3D
> stm32 \
> +
> + git://github.com/zephyrproject-rtos/mbedtls.git;protocol=3Dhttps;destsu=
f
> + fix=3Dgit/modules/lib/mbedtls;name=3Dmbedtls \
>      git://github.com/zephyrproject-rtos/open-
> amp.git;protocol=3Dhttps;destsuffix=3Dgit/modules/lib/open-amp;name=3Dope=
n-
> amp \
>      git://github.com/zephyrproject-
> rtos/libmetal.git;protocol=3Dhttps;destsuffix=3Dgit/modules/hal/libmetal;=
name=3Dl
> ibmetal \
>      git://github.com/zephyrproject-
> rtos/tinycrypt.git;protocol=3Dhttps;destsuffix=3Dgit/modules/crypto/tinyc=
rypt;na
> me=3Dtinycrypt \
> --
> 2.25.1

