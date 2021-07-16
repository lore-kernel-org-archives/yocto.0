Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web10.2793.1626415425943961776
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jul 2021 23:03:46 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10046"; a="210491309"
X-IronPort-AV: E=Sophos;i="5.84,244,1620716400"; 
   d="scan'208";a="210491309"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2021 23:03:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,244,1620716400"; 
   d="scan'208";a="413873984"
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143])
  by orsmga003.jf.intel.com with ESMTP; 15 Jul 2021 23:03:43 -0700
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 kmsmsx603.gar.corp.intel.com (172.21.219.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 14:03:42 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.2242.010;
 Fri, 16 Jul 2021 14:03:42 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: Stefan Schmidt <stefan@datenfreihafen.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: Stefan Schmidt <stefan.schmidt@huawei.com>
Subject: Re: [yocto] [meta-zephyr][PATCH v4 1/2] zephyr-kernel-src.inc: Add backport patch for storage partition
Thread-Topic: [yocto] [meta-zephyr][PATCH v4 1/2] zephyr-kernel-src.inc: Add
 backport patch for storage partition
Thread-Index: AQHXeXjCnKupzkr3zEiR9IInM7942KtFHZeA
Date: Fri, 16 Jul 2021 06:03:42 +0000
Message-ID: <f82bc28cf170483989f90f2cf02c87de@intel.com>
References: <20210715125523.491476-1-stefan@datenfreihafen.org>
In-Reply-To: <20210715125523.491476-1-stefan@datenfreihafen.org>
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

Merged after minor changes.

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Stefan Schmidt
> Sent: Thursday, July 15, 2021 8:55 PM
> To: yocto@lists.yoctoproject.org
> Cc: Stefan Schmidt <stefan@datenfreihafen.org>; Stefan Schmidt
> <stefan.schmidt@huawei.com>
> Subject: [yocto] [meta-zephyr][PATCH v4 1/2] zephyr-kernel-src.inc: Add
> backport patch for storage partition
>=20
> From: Stefan Schmidt <stefan.schmidt@huawei.com>
>=20
> Patch already merged upstream, but after the 2.6 release we are based on.
> Taking the backport in here until we can figure out if that can go to the
> Zephyr 2.6 LTS branch.
>=20
> The storage partition itself is needed on the Arduino Nano e.g. for
> OpenThread or applications needed a storage space.
>=20
> Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
> ---
> since v3: Added backported patch for flash layout
>=20
>  ...rduino-nano-33-ble-storage-partition.patch | 46 +++++++++++++++++++
>  .../zephyr-kernel/zephyr-kernel-src.inc       |  1 +
>  2 files changed, 47 insertions(+)
>  create mode 100644 recipes-kernel/zephyr-kernel/files/arduino-nano-33-
> ble-storage-partition.patch
>=20
> diff --git a/recipes-kernel/zephyr-kernel/files/arduino-nano-33-ble-stora=
ge-
> partition.patch b/recipes-kernel/zephyr-kernel/files/arduino-nano-33-ble-
> storage-partition.patch
> new file mode 100644
> index 0000000..fa0f27f
> --- /dev/null
> +++ b/recipes-kernel/zephyr-kernel/files/arduino-nano-33-ble-storage-par
> +++ tition.patch
> @@ -0,0 +1,46 @@
> +commit 6c9945aafa00c09149e2052a9c2bccad16dd1d8a
> +Author: Stefan Schmidt <stefan.schmidt@huawei.com>
> +Date:   Fri May 7 11:47:44 2021 +0200
> +
> +    boards/arduino_nano_33_ble: add storage partition at end of flash
> +
> +    Change default partition table to allow for application which need
> +    storage. One use case is running the OpenThread integration which ha=
s
> +    a dependency on this.
> +
> +    Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
> +
> +diff --git a/boards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts
> +b/boards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts
> +index d09b66ec43..d11d800eb5 100644
> +--- a/boards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts
> ++++ b/boards/arm/arduino_nano_33_ble/arduino_nano_33_ble.dts
> +@@ -44,15 +44,27 @@
> +
> + 		boot_partition: partition@0 {
> + 			label =3D "sam-ba";
> +-			reg =3D <0x0 0x10000>;
> ++			reg =3D <0x00000000 0x00010000>;
> + 			read-only;
> + 		};
> +
> + 		code_partition: partition@10000 {
> + 			label =3D "code";
> +-			reg =3D <0x10000 0xf0000>;
> ++			reg =3D <0x00010000 0x000e8000>;
> + 			read-only;
> + 		};
> ++
> ++		/*
> ++		 * The flash starting at 0x000f8000 and ending at
> ++		 * 0x000fffff is reserved for use by the application.
> ++		 *
> ++		 * Storage partition will be used by FCB/LittleFS/NVS
> ++		 * if enabled.
> ++		 */
> ++		storage_partition: partition@f8000 {
> ++			label =3D "storage";
> ++			reg =3D <0x000f8000 0x00008000>;
> ++		};
> + 	};
> + };
> +
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes=
-
> kernel/zephyr-kernel/zephyr-kernel-src.inc
> index a0004ed..227c7f4 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> @@ -18,6 +18,7 @@ SRC_URI =3D "\
>      git://github.com/zephyrproject-
> rtos/openthread.git;protocol=3Dhttps;branch=3Dzephyr;destsuffix=3Dgit/mod=
ules/l
> ib/openthread;name=3Dopenthread \
>      git://github.com/zephyrproject-
> rtos/libmetal.git;protocol=3Dhttps;destsuffix=3Dgit/modules/hal/libmetal;=
name=3Dl
> ibmetal \
>      git://github.com/zephyrproject-
> rtos/tinycrypt.git;protocol=3Dhttps;destsuffix=3Dgit/modules/crypto/tinyc=
rypt;na
> me=3Dtinycrypt \
> +    file://arduino-nano-33-ble-storage-partition.patch \
>      "
>  S =3D "${WORKDIR}/git"
>=20
> --
> 2.31.1

