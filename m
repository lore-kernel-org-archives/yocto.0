Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web12.7641.1621403868572681237
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 22:57:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: x5SvhI0GQNixOu/ODU42psd2w+vN9FLBO0fzhh+ehl4Zwt1rns+YILxPDU8Yp4OOziY8V0BVC9
 USYy87SDIqsQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="221961826"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; 
   d="scan'208";a="221961826"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 May 2021 22:57:46 -0700
IronPort-SDR: KGtXt3IZmuEaxuOUMiy2ouychUBo4yQsyHCEdwcJXqN8QU5FhY922DEAXQEhFicBD3Y3pNZJU1
 p2KNaW5/hQcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; 
   d="scan'208";a="630791363"
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136])
  by fmsmga005.fm.intel.com with ESMTP; 18 May 2021 22:57:45 -0700
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 pgsmsx601.gar.corp.intel.com (10.108.199.136) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 13:57:44 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.2242.008;
 Wed, 19 May 2021 13:57:44 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: Wojciech Zmuda <zmuda.w@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] nrf52840dk_nrf52840.conf: Add nRF52840 DK support
Thread-Topic: [yocto] [meta-zephyr][PATCH 2/2] nrf52840dk_nrf52840.conf: Add
 nRF52840 DK support
Thread-Index: AQHXS9j9sI9ia8B50E2h8r2Hzq/5a6rqTyPA
Date: Wed, 19 May 2021 05:57:44 +0000
Message-ID: <77db93726b8d407d8e3831794f701580@intel.com>
References: <20210518112803.2548979-1-zmuda.w@gmail.com>
 <20210518112803.2548979-3-zmuda.w@gmail.com>
In-Reply-To: <20210518112803.2548979-3-zmuda.w@gmail.com>
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

So far, MACHINE configurations are named using '-' instead of '_' . Could y=
ou use change it ?

Regards,
Naveen

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Wojciech Zmuda
> Sent: Tuesday, May 18, 2021 7:28 PM
> To: yocto@lists.yoctoproject.org
> Cc: Wojciech Zmuda <wojciech.zmuda@huawei.com>
> Subject: [yocto] [meta-zephyr][PATCH 2/2] nrf52840dk_nrf52840.conf: Add
> nRF52840 DK support
>=20
> From: Wojciech Zmuda <wojciech.zmuda@huawei.com>
>=20
> Add support for Nordic Semiconductor nRF52840 Development Kit board.
>=20
> This is a generic MACHINE over nRF52 SoC family config plus PyOCD flashin=
g
> ability.
>=20
> Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
> ---
>  conf/machine/nrf52840dk_nrf52840.conf | 8 ++++++++
>  1 file changed, 8 insertions(+)
>  create mode 100644 conf/machine/nrf52840dk_nrf52840.conf
>=20
> diff --git a/conf/machine/nrf52840dk_nrf52840.conf
> b/conf/machine/nrf52840dk_nrf52840.conf
> new file mode 100644
> index 0000000..0aa50e0
> --- /dev/null
> +++ b/conf/machine/nrf52840dk_nrf52840.conf
> @@ -0,0 +1,8 @@
> +#@TYPE: Machine
> +#@NAME: nrf52840dk_nrf52840
> +
> +#@DESCRIPTION: Machine configuration for Nordic Semiconductor
> nRF52840 Development Kit.
> +
> +require conf/machine/include/nrf52.inc
> +ZEPHYR_INHERIT_CLASSES +=3D "zephyr-flash-pyocd"
> +ARCH_nrf52840dk_nrf52840 =3D "arm"
> --
> 2.25.1

