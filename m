Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web11.3441.1622170555908359090
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 May 2021 19:55:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: gjEEDJ6LjK5xNkVBKP1JpHVzqUGS5DLdHTvAlPh4wHYPybSFrANyIT0ZI8TRWy+gq4UmZ0ueSw
 ulQVlzwwyArg==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="266767144"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; 
   d="scan'208";a="266767144"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2021 19:55:53 -0700
IronPort-SDR: oM/pifSUUzEe7weNlSRnu2HH4TcTSlCx1m6N1lRUI/sEFbgYhT3J0U+JRnzuTlI155LpYyuycx
 tSredwqhHbcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; 
   d="scan'208";a="415148003"
Received: from pgsmsx603.gar.corp.intel.com ([10.108.199.138])
  by orsmga002.jf.intel.com with ESMTP; 27 May 2021 19:55:51 -0700
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 pgsmsx603.gar.corp.intel.com (10.108.199.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 28 May 2021 10:55:50 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.2242.008;
 Fri, 28 May 2021 10:55:50 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"wojciech.zmuda@huawei.com" <wojciech.zmuda@huawei.com>,
	"andrei.gherzan@huawei.com" <andrei.gherzan@huawei.com>,
	"zbigniew.bodek@huawei.com" <zbigniew.bodek@huawei.com>
CC: Amit Kucheria <amit.kucheria.ext@huawei.com>
Subject: Re: [meta-zephyr][PATCH 1/5] zephyr-kernel: Clone mbedtls
Thread-Topic: [meta-zephyr][PATCH 1/5] zephyr-kernel: Clone mbedtls
Thread-Index: AQHXUkTqLSyejCjVG0CvMfYs+fBuqar4NDOA
Date: Fri, 28 May 2021 02:55:50 +0000
Message-ID: <17d5cb076de346d5b3157a85bf21ba25@intel.com>
References: <cover.1621953714.git.amit.kucheria.ext@huawei.com>
 <a98ef69282feae355ff5a380d762c2c07f10af39.1621953714.git.amit.kucheria.ext@huawei.com>
In-Reply-To: <a98ef69282feae355ff5a380d762c2c07f10af39.1621953714.git.amit.kucheria.ext@huawei.com>
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

V2.6.0-rc1 patch is not merged as it is pre-release. Lets wait for stable r=
elease.
Could you please rebase these patches for v2.5.0 latest master ?

Regards,
Naveen

> -----Original Message-----
> From: amit.kucheria@verdurent.com <amit.kucheria@verdurent.com>
> Sent: Wednesday, May 26, 2021 11:36 PM
> To: yocto@lists.yoctoproject.org; wojciech.zmuda@huawei.com;
> andrei.gherzan@huawei.com; Saini, Naveen Kumar
> <naveen.kumar.saini@intel.com>; zbigniew.bodek@huawei.com
> Cc: Amit Kucheria <amit.kucheria.ext@huawei.com>
> Subject: [meta-zephyr][PATCH 1/5] zephyr-kernel: Clone mbedtls
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
>  recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc        | 1 +
>  recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc | 1 +
>  recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc           | 1 +
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
>  ZEPHYR_MODULES_append_openamp =3D "\;${S}/modules/lib/open-
> amp\;${S}/modules/hal/libmetal"
>=20
>  EXTRA_OECMAKE_append =3D " -DZEPHYR_MODULES=3D${ZEPHYR_MODULES}"
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
> b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
> index 6ea15931607d..a0e358ecd4f4 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
> @@ -6,5 +6,6 @@ SRCREV_stm32 =3D
> "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
>  SRCREV_open-amp =3D "6010f0523cbc75f551d9256cf782f173177acdef"
>  SRCREV_libmetal =3D "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
>  SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
> +SRCREV_mbedtls =3D "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
>=20
>  PV =3D "2.6.0-rc1+git${SRCPV}"
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes=
-
> kernel/zephyr-kernel/zephyr-kernel-src.inc
> index 9fc08baaf210..8dcfec6f1f88 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> @@ -17,6 +17,7 @@ SRC_URI =3D "\
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

