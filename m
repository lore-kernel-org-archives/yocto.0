Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA10C433FE
	for <webhook@archiver.kernel.org>; Tue, 11 Oct 2022 04:00:17 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web11.3530.1665460803131537644
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 21:00:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=DZHkE1FS;
 spf=pass (domain: intel.com, ip: 192.55.52.136,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665460803; x=1696996803;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=CfduTc0l50a43t8ycLQq1T2fjHCeVilEhNuiUe9D2zA=;
  b=DZHkE1FSaBrSQYoyhsuSNmOsH2zWfQOGqluftE7F0vyTKoQahOSJzf8o
   lxzhFHM1kncgCE4ap69NJ+qFg6j5OphcjzyW7FOMu6kNJJbIgVKlmR2i+
   W8c9W9HG1RMe18OArorufQzD1NiCpTDPk+UloxIRAkfiIg4e09Zmxpa+7
   nuSSe3ktYzuUucVqUgSzDCtDiZ3L1MuW/4ZQnoPyAW0KaUu3fN0MUmWDQ
   blRUWePJjbMk45oYCychvDRHUTm7rxwmybSYwTiSM3gS5Gzfui0ZaPt0C
   4yO0lR4chKo+NyEivQbTua3TaixEQYV3qzQahIzwrLOOXmKMOUroFVSXR
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="284129865"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800";
   d="scan'208";a="284129865"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 21:00:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="659392928"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800";
   d="scan'208";a="659392928"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by orsmga001.jf.intel.com with ESMTP; 10 Oct 2022 21:00:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 21:00:02 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 21:00:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 10 Oct 2022 21:00:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 10 Oct 2022 21:00:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fSXHlPX51Zh9jahUtiW9VNbLxn2hDhyqTuIkAThc5I5WH98OqvnNd9x6SZbquS+moY6pJqZRYLvqHF+8oqTm4N9EXJD11eNunntzb6muNOO2rYjMU9TWnHmIsByUEz15ndM2CjblVu0t7siyQ/8kFhk9S1dKox0vgQlp1HnG/rqzdt3lPUI25P3Lr0IkqfQ40yK3MUiMFFnGPdtDFKqiwNwOv2pfNwx0ZcefMLSB8BR5A5xqTk10DGG+9AW5h5/bwgR16MiCi1TE4dCjZOO2EnXO0aTMtQ0SjDXsHdZaqueBZHaGK7TIExmgcWBKK9WxupQZ6uaJ46eM5sxeAKmdiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kVZQX6dzrPVYduwlIz8mMK2BmK5AiXdQE5WeR4yPCpE=;
 b=bJY6P3cqBry4uS1QycYLmYjbYG+/580aDWlKNcC6Um97t5aOoYgL1RjR0tfJ2BRKgnPQb1BnRor1WVLye0S7uyNCq9NC/OwKsxrkI4whMPZ/xtfrI5Nhha0ZexuYFjjBxcyh418ifK17FnmG+Qq5jcAhvXpNHSBIhHQbHElhxd/ZvTKuBA9MhuyOicANMhTpaSKhXwl6uVi520mvhobkqKUd7+Ac54dts/MZt1kkuyzAHO/lcCSd80rwBCMWf4jT16rEN/ewR9uaKJYTiecd1rWltznlerZjjsd483SFrjKr/yGHPe9zIV+AbuAYe4cgIOdvthFfAAFjmWygfqvXPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by SA2PR11MB4907.namprd11.prod.outlook.com (2603:10b6:806:111::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.18; Tue, 11 Oct
 2022 03:59:59 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::b49:c23e:60e6:35d1]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::b49:c23e:60e6:35d1%2]) with mapi id 15.20.5709.019; Tue, 11 Oct 2022
 03:59:59 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Jon Mason <jdmason@kudzu.us>, Jon Mason <jon.mason@arm.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [meta-zephyr][PATCH 1/6] zephyr-bsp: add support for
 qemu-cortex-a9
Thread-Topic: [yocto] [meta-zephyr][PATCH 1/6] zephyr-bsp: add support for
 qemu-cortex-a9
Thread-Index: AQHY2lbZxKWde4g5Ek+15vudSsp7M64C+v2AgAWb7hA=
Date: Tue, 11 Oct 2022 03:59:59 +0000
Message-ID: 
 <CO1PR11MB5026925400F53BB4289E585BC4239@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20221007141203.16632-1-jon.mason@arm.com>
 <Y0A1e6PVWB3N8jC2@kudzu.us>
In-Reply-To: <Y0A1e6PVWB3N8jC2@kudzu.us>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5026:EE_|SA2PR11MB4907:EE_
x-ms-office365-filtering-correlation-id: 1ac3b63b-b22a-4aaa-ab41-08daab3d1138
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 O67BX58KZskAu4VdrXgDeWO3HYnJMx0CrPW2YUDSi/PxiAvJDhMBbBMaenvt2LCIshvuOz5Z6Zy1CDzfWXSMDRhPadqosQtQZZDGFNb4SbN6pgREwc8mahS/GyjHKBCfQ8bDWiFPs+DSGD4BfQok+dh7CkTlNGO8n5EK8sG/AlqICNyeD4+IopMzEJL/dseTLegKIKpB/1lyXFLZzfDhcXRO4zwgakmHQOfzTYJL84gGJrfO0noG7WtN0VFXWFzPSTKk+myV8g5blwVgs4TV+s3cdHwsZMoa+RevclqfJgEdMXQtBnuiozquvYwtCL2vQ+X+ny95ibQaV0TT2bA0Thu2myRsmBBiJzVBTbawfhVMynHqJy+C8vKUFlMS54ZFMFbQGw7dSARCnCetriXf3TdrbzfM5NaBPkUPEQ9f6E6mlAAYArSduoCLphAZ44Fv6cNobN86DoA5My4gU+sHLUZUBhuiIN2oF96mK+iZbjD9gatdlCX9X+Q/6flwq9Hs1aL0ujpjtCoy+Md1OP7D9WRhn5FKZsBWHrA+jAACDpu8Q4LiX1fqIeDmsgckJSm+7pqUAUhczz2wdtbYqNuabyAjjFz7imipAGgw4N5er7gjX6BDWDOhuUWe3+oui+ReEFS4dMwOsZy1PqZMq94dQcUbain5f8mPcqCAI6wkG1nuT2qJSN4M6a2+wUExxKa8G1pW6RA5Eey6DdhBDzhB8meq8u7qiX1tka0SvwOQBWVlAk6M3QGPFzNmePHLVLU1jZUP/XkF6DUGVCXpacwuN6+/V7Jrvii7X0EcUUQj6fE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39860400002)(396003)(366004)(346002)(376002)(136003)(451199015)(33656002)(86362001)(5660300002)(38100700002)(122000001)(82960400001)(186003)(38070700005)(83380400001)(110136005)(9686003)(53546011)(7696005)(6506007)(26005)(966005)(478600001)(71200400001)(8676002)(316002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(52536014)(8936002)(41300700001)(2906002)(4326008)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?R4MMuNBqQwFfqArZ2qkavZwG5fXbv7KMqJKEAelarPqCRq0ky2wZUOGa5y25?=
 =?us-ascii?Q?NiLyZxT9eyLLuqZmvc3ohJXGn4NzgfAfU0nAx7pn6yZb74Lu8fBVv86Dz2cS?=
 =?us-ascii?Q?/Db22o6ybBJ3QRFHlNdFZ2Tv+wOzT5hxm5ZtmHbmPnr+56njh2X17ReijooT?=
 =?us-ascii?Q?0psBAf+GHgDPmkTdglneCR2BZNUU732g2q/LX26ddUnHTkrnpZbiBuw2sr9A?=
 =?us-ascii?Q?s9zwkbESNrAaXxv5vVXLVnnfioE46QXcbdM5StLsrG4FvjrxUWtac5+bAOh1?=
 =?us-ascii?Q?RFMfPmwVKE+5zrUyA7IbqVEOyKusyoS1wNK2kP+xL4dnBUuWFucL+9+ETYL9?=
 =?us-ascii?Q?Fp7y9sZ9aa961RC//6vaXMoDKUzrG1PFlyIXNGW2bbLq6g4DnsPuswcFZXZV?=
 =?us-ascii?Q?pAzj7wMJpBw+hhJtocyEyZ5Rz9n9jgbBcRuRuHUzDHpkukJmjAIG+59VZkUR?=
 =?us-ascii?Q?Z00OP26nufofdwnAKRa2KX2XSkA8twfPoPJvOGr45Z+m2BmOlXaOz6ohf/LM?=
 =?us-ascii?Q?rAsYGgdltpmARAd20cGAlbm0RPWRy36VcPMzKa7+wz0svbh88q47F0uOZAAj?=
 =?us-ascii?Q?yzm8d0ufpO5lJyw5OuKHywzkRSGicCUPYgl8y86OQGXmxd9K/KepM277e+i1?=
 =?us-ascii?Q?vWaphtLvYbJ6Snoqtr3ifB821MDyu/LB5rMkk5rZJzps4J2CgpOis87zz0Ze?=
 =?us-ascii?Q?D5A5GrhuyBS+C9GWEs2mIcvihHawTwLHcAUOUZ/iIfB6Wp7Hpn13g5WHu8bi?=
 =?us-ascii?Q?vDzVP8NJQuc7BcD3W1y7F6V98EkeMtUpvUJrJjToEaUISbZ4dizDm48cNjjt?=
 =?us-ascii?Q?w/+0HLqgaOpQzxXnlLUBfURcEhI8joiV3zM622rkYBILdi4Pw2gN4u33lieh?=
 =?us-ascii?Q?jWjin7qa12JnveSVDoYFuu5ETDY7Q0RnxDgomQmHGj6ZZiNZ+6VrlzTnuBkg?=
 =?us-ascii?Q?xzBJkSnwPnNczbRS5ZNX8pl6NA5irs/e//0fiRpvjkD2rVL2cwgMY2dPzZgD?=
 =?us-ascii?Q?z+hOo0ORggdoU1+o87utXBYjioZbCBSO2RG+zN1kppWPlWfPU2MzTJQqKOau?=
 =?us-ascii?Q?ZtMx/jNdSAbp8Yc7EVFtK6TLuj/op9RiIny2fjP6rvgtBigsiBLSZR5rlGAd?=
 =?us-ascii?Q?4nthb3YlNDWHktI7QbkjoFttkLfgufyBFv5qSAABwehp+rplRZ9aNjzvJTEM?=
 =?us-ascii?Q?0YY39BMCYOVt+Y19Ecj41FVhIwgy5gORtGSEAq9mDv+gbxsFlNdcwa/4uvza?=
 =?us-ascii?Q?c3okBSa/m1+bPQ2qo61bbpMUzuSRipmLrIYxDlzQ5H7PZxBsWK40u9VpI5mB?=
 =?us-ascii?Q?xSoTT1vccR8SD4COW2TjJ57kCmhb+Bhaa8tBb3GU++6vHpwoqktVWrhYlo2S?=
 =?us-ascii?Q?yF/Qov2Abx60KCk1j7sH8wrMT7HEoxFbQpAeM+KKYYUtGbT6A3VniDJip71k?=
 =?us-ascii?Q?+2QZCsCvoL9J/YZiuFe2aUXhJ1/cuG2AHl1OnVMxe+kPj7Y7PT2BBr3/7zhc?=
 =?us-ascii?Q?f9/WXbaZhYr9Lc5+y8qx7fW2NXHxMNszP5f24jseGecqoZXC+hbozF3ujPz5?=
 =?us-ascii?Q?aynnv6I6RGJN0byEdtWFpZSkNA6YNfdkoYdxWCN7Q4SdM73CXOejT/4qiQYX?=
 =?us-ascii?Q?bQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1ac3b63b-b22a-4aaa-ab41-08daab3d1138
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2022 03:59:59.6314
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 zfQRpX+XYpWq82sIDkaFL8bO/1/bqu7n5J7jCSYKI/HhqmbF2YZKA8q4CM6F0aJQr1UAmD49m0Y4JEnC/mFLQU3XHLlEZEHM7L8bUPGKoNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4907
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Oct 2022 04:00:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58313

While running qemu, it throws following error:

runqemu - ERROR - Failed to run qemu: qemu-system-arm: -device virtio-rng-p=
ci,rng=3Drng0: No 'PCI' bus found for device 'virtio-rng-pci'

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Jon Mason
> Sent: Friday, October 7, 2022 10:20 PM
> To: Jon Mason <jon.mason@arm.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] [meta-zephyr][PATCH 1/6] zephyr-bsp: add support for
> qemu-cortex-a9
>=20
> FYI, the CI for this series can be seen at
> https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/660400016
>=20
> On Fri, Oct 07, 2022 at 10:11:58AM -0400, Jon Mason wrote:
> > Signed-off-by: Jon Mason <jon.mason@arm.com>
> > ---
> >  .gitlab-ci.yml                                |  7 +++++++
> >  ci/qemu-cortex-a9.yml                         | 10 ++++++++++
> >  .../conf/machine/qemu-cortex-a9.conf          | 20 +++++++++++++++++++
> >  3 files changed, 37 insertions(+)
> >  create mode 100644 ci/qemu-cortex-a9.yml  create mode 100644
> > meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf
> >
> > diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml index 5752254..031b5c5
> > 100644
> > --- a/.gitlab-ci.yml
> > +++ b/.gitlab-ci.yml
> > @@ -90,6 +90,13 @@ qemu-cortex-a53:
> >        - TOOLCHAIN: [default, zephyr-toolchain]
> >          TESTING: testimage
> >
> > +qemu-cortex-a9:
> > +  extends: .build
> > +  parallel:
> > +    matrix:
> > +      - TOOLCHAIN: [default, zephyr-toolchain]
> > +        TESTING: testimage
> > +
> >  qemu-cortex-m0:
> >    extends: .build
> >    parallel:
> > diff --git a/ci/qemu-cortex-a9.yml b/ci/qemu-cortex-a9.yml new file
> > mode 100644 index 0000000..cc44730
> > --- /dev/null
> > +++ b/ci/qemu-cortex-a9.yml
> > @@ -0,0 +1,10 @@
> > +header:
> > +  version: 11
> > +  includes:
> > +    - ci/base.yml
> > +
> > +local_conf_header:
> > +  failing_tests: |
> > +    ZEPHYRTESTS:remove =3D "common queue"
> > +
> > +machine: qemu-cortex-a9
> > diff --git a/meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf
> > b/meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf
> > new file mode 100644
> > index 0000000..9dfee42
> > --- /dev/null
> > +++ b/meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf
> > @@ -0,0 +1,20 @@
> > +#@TYPE: Machine
> > +#@NAME: qemu-cortex-a9
> > +#@DESCRIPTION: Machine for Zephyr BOARD qemu_cortex_a9
> > +
> > +DEFAULTTUNE ?=3D "cortexa9"
> > +require conf/machine/include/qemu.inc require
> > +conf/machine/include/arm/armv7a/tune-cortexa9.inc
> > +
> > +TCLIBC =3D "newlib"
> > +
> > +# For runqemu
> > +QB_SYSTEM_NAME =3D "qemu-system-arm"
> > +QB_MACHINE =3D "-machine xilinx-zynq-a9"
> > +QB_CPU =3D "-cpu cortex-a9"
> > +QB_GRAPHICS =3D "-nographic -vga none"
> > +QB_OPT_APPEND =3D "-icount shift=3D3,align=3Doff,sleep=3Doff -rtc cloc=
k=3Dvm"
> > +
> > +# Zephyr RTOS settings
> > +ZEPHYR_INHERIT_CLASSES +=3D "zephyr-qemuboot"
> > +ARCH:qemu-cortex-a9 =3D "arm"
> > --
> > 2.17.1
> >
> >

