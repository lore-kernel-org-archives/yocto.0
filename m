Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web12.2616.1623374772148250240
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jun 2021 18:26:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: Bjl4ZVP8Q4kBixaZ4SbNyqIcTDWyYUdfQskk/tDCS3Ikp8fM/3NnVLThXgTAMUAyLcwdegqWsy
 W8z1cMaL1Bzw==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="203605344"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; 
   d="scan'208";a="203605344"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2021 18:26:10 -0700
IronPort-SDR: i14MOFzgXXyKKk9/XpdBMlPBzjdN0P50EjCickDoj4YkC12biA7/H41UwCwamfgoOvVMChCzjV
 UWyVwMyQHo/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; 
   d="scan'208";a="450593833"
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136])
  by fmsmga008.fm.intel.com with ESMTP; 10 Jun 2021 18:26:09 -0700
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 pgsmsx601.gar.corp.intel.com (10.108.199.136) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 11 Jun 2021 09:26:08 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.2242.008;
 Fri, 11 Jun 2021 09:26:08 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: Stefan Schmidt <stefan@datenfreihafen.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: Stefan Schmidt <stefan.schmidt@huawei.com>
Subject: Re: [yocto] [meta-zephyr][PATCH v2 1/2] zephyr-kernel: Add OpenThread add module to build
Thread-Topic: [yocto] [meta-zephyr][PATCH v2 1/2] zephyr-kernel: Add
 OpenThread add module to build
Thread-Index: AQHXXdKtPt6WYFTTtEek8rW6EqSHFasOBLwA
Date: Fri, 11 Jun 2021 01:26:08 +0000
Message-ID: <c9e28126afae401cbea54236836daaca@intel.com>
References: <20210610082731.3820-1-stefan@datenfreihafen.org>
In-Reply-To: <20210610082731.3820-1-stefan@datenfreihafen.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Stefan Schmidt
> Sent: Thursday, June 10, 2021 4:28 PM
> To: yocto@lists.yoctoproject.org
> Cc: Stefan Schmidt <stefan@datenfreihafen.org>; Stefan Schmidt
> <stefan.schmidt@huawei.com>
> Subject: [yocto] [meta-zephyr][PATCH v2 1/2] zephyr-kernel: Add
> OpenThread add module to build
>=20
> From: Stefan Schmidt <stefan.schmidt@huawei.com>
>=20
> OpenThread support in Zephyr is realised as an external module. Make sure
> we pull it in and have it available for applications to use it.
>=20
> Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
> ---
>  recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc    | 1 +
>  recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc | 1 +
>  recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc       | 1 +
>  3 files changed, 3 insertions(+)
>=20
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> index 330fe59..35c4106 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> @@ -29,6 +29,7 @@ ZEPHYR_MODULES_append_arm =3D
> "\;${S}/modules/cmsis"
>  ZEPHYR_MODULES_append_nordic =3D "\;${S}/modules/hal/nordic"
>  ZEPHYR_MODULES_append_stm32 =3D "\;${S}/modules/hal/stm32"
>  ZEPHYR_MODULES_append_openamp =3D "\;${S}/modules/lib/open-
> amp\;${S}/modules/hal/libmetal"
> +ZEPHYR_MODULES_append_openthread =3D
> "\;${S}/modules/lib/openthread"

This is not required. It already listed in required sample recipe. Please r=
emove it.=20

>=20
>  EXTRA_OECMAKE_append =3D " -DZEPHYR_MODULES=3D${ZEPHYR_MODULES}"
>=20
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
> b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
> index 8475b5b..4910db2 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
> @@ -4,6 +4,7 @@ SRCREV_cmsis =3D
> "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
>  SRCREV_nordic =3D "574493fe29c79140df4827ab5d4a23df79d03681"
>  SRCREV_stm32 =3D "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
>  SRCREV_open-amp =3D "6010f0523cbc75f551d9256cf782f173177acdef"
> +SRCREV_openthread =3D "385e19da1ae15f27872c2543b97276a42f102ead"
>  SRCREV_libmetal =3D "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
>  SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
>  SRCREV_mbedtls =3D "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes=
-
> kernel/zephyr-kernel/zephyr-kernel-src.inc
> index 5e43583..4937a77 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> @@ -15,6 +15,7 @@ SRC_URI =3D "\
>      git://github.com/zephyrproject-
> rtos/hal_stm32.git;protocol=3Dhttps;destsuffix=3Dgit/modules/hal/stm32;na=
me=3D
> stm32 \
>      git://github.com/zephyrproject-
> rtos/mbedtls.git;protocol=3Dhttps;destsuffix=3Dgit/modules/lib/mbedtls;na=
me=3D
> mbedtls \
>      git://github.com/zephyrproject-rtos/open-
> amp.git;protocol=3Dhttps;destsuffix=3Dgit/modules/lib/open-amp;name=3Dope=
n-
> amp \
> +
> + git://github.com/zephyrproject-rtos/openthread.git;protocol=3Dhttps;bra=
n
> + ch=3Dzephyr;destsuffix=3Dgit/modules/lib/openthread;name=3Dopenthread \
>      git://github.com/zephyrproject-


It  would cause build failure with v2.5.0. So add SRCREV_openthread in zeph=
yr-kernel-src-2.5.0.inc too.
=20

> rtos/libmetal.git;protocol=3Dhttps;destsuffix=3Dgit/modules/hal/libmetal;=
name=3Dl
> ibmetal \
>      git://github.com/zephyrproject-
> rtos/tinycrypt.git;protocol=3Dhttps;destsuffix=3Dgit/modules/crypto/tinyc=
rypt;na
> me=3Dtinycrypt \
>      file://0001-cmake-add-yocto-toolchain.patch \
> --
> 2.31.1

