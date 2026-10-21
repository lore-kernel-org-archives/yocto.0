Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7597.1792575463064663835
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2026 02:37:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=SwPxTmAX;
 spf=pass (domain: intel.com, ip: 198.175.65.18, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1792575463; x=1824111463;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=6udoBgp82R6sDRUdFxtT21ChnEFhOO4YBpsKHjjYhVg=;
  b=SwPxTmAXlAEL2GjShHmaHq1XKQswGFfMrqSmSgQMmWpdD1CdxQ4oxa07
   AhNRHOxSe5JGu8P+7xkueA7Gguq4AnbxZp/nq73obwHVSxoy6nbcrK0Ol
   dfpVsfPdmVIQTrwEdj6P2WXYLzFHpiyfcovSnSGYd3qrwtk8ljjFmjNvf
   RU0Ei9tRXlkbt9V6Bnnb1qPT5RgmvkNja8OAY9xI/mHJLap2VOVnLbtJk
   VLnAnFJ3Ziph+L6tU0jNmrB9uwfHaNs+bBhzv9BcRJOZJlI3eBIMimyX3
   QG7h2BJZt2g/KDMJ68NvJsso8OVJGL19af8I+OxKYnxV3QtTGAJmBpVXG
   A==;
X-CSE-ConnectionGUID: v0vzvhNcQ+aKhC80MbOJ3g==
X-CSE-MsgGUID: cNFUE/6ARk2D1OoCIRkDCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11941"; a="1306156"
X-IronPort-AV: E=Sophos;i="6.27,169,1787036400"; 
   d="scan'208";a="1306156"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2026 02:37:42 -0700
X-CSE-ConnectionGUID: uXHDZ1dcSPeRwBlvv3TxMQ==
X-CSE-MsgGUID: P4JG1+NzRIiqoqL+QdN3qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,169,1787036400"; 
   d="scan'208";a="3367316"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2026 02:37:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.49; Wed, 21 Oct 2026 02:37:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.49 via Frontend Transport; Wed, 21 Oct 2026 02:37:41 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.9) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.49; Wed, 21 Oct 2026 02:37:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HrGJs14nZ8fRqOFC9oCYHUbp6xN48Vnr3elzA7VgCpU2lWl7QP2EeONZqQ/rj5iWUFwT3GqD8cWli6alJ/DMVx8IOyTDrPmJ/quHdnDCc3XdK1SQmGUQM5RxiWD4l84XkhlidVtcID/AsBaJ2TQYqov+ix7b4Xrs36FnOhzzBR/Bq+kwe51msKUWknWM+15zl4DmLqZhnJYGgrDisiSRSqCa/SshdhD4QTStbKRJlUF5f51cGr00X617a4mdz71VA/tNYnRrfOAQhxrKFrrj4BGyXThYM8t5W7dgS+huVaa4smoVPAnr7fUKY8dgcQ1fS4cP3cBmd3QRDAsdU4TqYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eRVCtKMSYCgJ1uXw7CYOHlsLtXoFtk/Tr4EkiQXUa44=;
 b=jZud+aA8PrD4I+BnHfeLm/5ZiPxgarsM+NuFrtEn02WgroxHYvVoipOrEKEC+X84WWHL9NTloz9vOrUwB5iU9xOUe0sSwCsCFCyRZQ59a5Qga9Fl1PDTNayaNIUXJN5nLmOLX+sgJJzh2K1as94duiahW19M0HfOZnGnZAZhTR7BdIQIgQRD0v+JtxcY360zVfFq/RGCW4dM/sVGT2xmjpwK2IZhcdItenGiUsMFLCVW1H0TDkzCAeo6YPbcC4yvt1Z/rSN5mATDBUnImRkTKyInX8RJumfjfMCKS4rowGyxIEzWKKrPUFIAf0sYKIh9B2psMZQZJk/yiYkIuFnOpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SA0PR11MB4589.namprd11.prod.outlook.com (2603:10b6:806:9a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.546.15; Wed, 21 Oct
 2026 09:37:39 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%5]) with mapi id 15.21.0522.016; Wed, 21 Oct 2026
 09:37:39 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 6.0.4 (wrynose-6.0.4) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 6.0.4 (wrynose-6.0.4) is Released
Thread-Index: AQHdYT2gu63oCF2PVUiKOf7X5nBaUQ==
Date: Wed, 21 Oct 2026 09:37:39 +0000
Message-ID: <BL4PR11MB87978088AAB1190F3CDE86F1B9662@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SA0PR11MB4589:EE_
x-ms-office365-filtering-correlation-id: 192bab44-844e-48be-15ae-08df2f56f28a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|23010399003|38070700021|56012099006|260925022911599003|260925021911599003|260925021311599003|11063799006|261009223027099003|261009221227099003|10067099003|18002099003|6133799003|3023799007;
x-microsoft-antispam-message-info: YzzVpUON7xVLfcVdX0KK5XpU3H5a5NdjM1iPZQc9bmMv/isL3fmm9R+j0xN138GjpQeW0MXUfdWej6CjrjLwLXyFqgjNJ+yVvad7DFnduJBErHkACmIsr0rn/ksHiJ6FWnsDpXY5Q+lABrT8xkF6iLWouw9pSATcGSm42tAVctWzTeZEoO7t6vcsh+MUCJJz5i+8AxpPHNk6/5DuYiDYm8CxcCAjlls2iE/ShrOnezW7RkwAPJbNP1E0AidXij9Mp2wp0iITv0q0t1DTquPYxireTGmmltR3Vxzoj3MstFPb4FoBW8ARnC7A6GA0wHPQ62924VK72Cmonhke3RcPDWmJ3pLUloWlQLNX0OeFohAUMqvw9N1fwMR1Rf9OrXdz8fo2kHA4atApAbaOAAjJ9/VYL/SyZfM2twzC3PnR3PVPzJ5TC/Y2zS33KRbrapRD+vPG9O1g91LFvjZXp+UGXD/C9VY2IkWi3Mupv3lEViwnfxoxGfcDv+Xy4KRTDH1QQvgsnWfUZlMmip5gwTR8q+2PJXso/0/TlnOm4FCehBr4qNBQUZmMcZhl4wnju58kMwEtEO78A50qlkKFDKckkECPfzqHpMeJKpW7Y9tRICsdxHPTtxvr00XdF+Fbe6yMhnNGMK1Ann33O4EN+pm7syp9H+fzzzYBK/gudzC7EkM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(38070700021)(56012099006)(260925022911599003)(260925021911599003)(260925021311599003)(11063799006)(261009223027099003)(261009221227099003)(10067099003)(18002099003)(6133799003)(3023799007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?cZnprdpUw+ykcOFdgrRZbcYyFNttYvZ3ANI6gZft0n6wdYOcjJSEXFIdSd?=
 =?iso-8859-1?Q?/lCgp7c6pFidtdADioGnov92FKS1hsIMwWq6W/0phY6OM4RR3C3yvee9U6?=
 =?iso-8859-1?Q?M2VV9QepkrpWxGYDPxEO4vVQCIz2p4G/kEhqF0r2dBgc81eoy73q5BbOqS?=
 =?iso-8859-1?Q?1jJgng1jwyPK5DwG0OMSY91MvFy3FIoUQjcCaiSxIFXQeQ4mGmG7LFGxBs?=
 =?iso-8859-1?Q?h6A/C1XhQ2/Ou+wmjwA3FAksNm0lo1JXY8s+SSu/ZTptcN4pg7z+7u5AIe?=
 =?iso-8859-1?Q?Of2bLNe13sHUjjAHaDUTf1WSUwUJJkuZ7Dz4KJnB/sbOAm0iTjKzcrUaT6?=
 =?iso-8859-1?Q?PnIHUyTikq0q/veuuDQmc4J3QIbvS9M2VHPherjL1s4El7oyRHJyAyERJb?=
 =?iso-8859-1?Q?uRE1SVdcfyaLZEALwo6bcZcc3z3MgK4bqWAeYY3SbdZJ+JJQhM02jspoNj?=
 =?iso-8859-1?Q?Ory9SCK8RT/lqIcA4ei1/Ke0NOE3o++Iruq6r4zkSr+oSQK2yGLlr4x48q?=
 =?iso-8859-1?Q?t+m9RZU6IZ2O5YzgqpM8YYnWpeUxVhqmzU0hlbjz7DJhJS9WwckYBwWH9G?=
 =?iso-8859-1?Q?I624CxeTQbQauO4HXorIrJ3OMJ1XNMtIRYgfCSZScYFydYaZ9L6sVz5YLc?=
 =?iso-8859-1?Q?NetiyIh1030IUkl9k5p2JKxkVlx4g2xByKsnYDX4rJTHvz2XAN9Vn43Vpu?=
 =?iso-8859-1?Q?r/3NlDsUAKVF6BXI/YKWFPqK8rdBouSatjnfrNmnY6br27UajzgburjSu3?=
 =?iso-8859-1?Q?Q0GTtic+eKfmHPy+z4TBgfT+WaK8/gpayOZypZs8iagL2LTTtWseMoTsgr?=
 =?iso-8859-1?Q?47Xe3YjmNcMWED2vJm8DG2ZRg/nA3fHw5zRS4U77wFXNDP4lfrZ3uOvoHu?=
 =?iso-8859-1?Q?2erTWcEUtByK2tBLtk8MgGHI8EOnWQw3XyKqzOfRkmA8rv3KfDNKV8Sku1?=
 =?iso-8859-1?Q?hEoC80+3zPhjO5d7ToYzQP3qA1bkcZTuajC0PIVHjQTIyItsjZEeRCEHDO?=
 =?iso-8859-1?Q?sCDRG0p5BtdMXAaAILQj/n9917wlkrYvEpAe349ka8UjMydMo0bC8J1Kbl?=
 =?iso-8859-1?Q?0jU0DrhNcZAa+Wr06pLd0+fZ6zMpejYWgRvdgonprd7lf5onp9UEUPGv/R?=
 =?iso-8859-1?Q?sR32Y6mA3wlkGCHVRlyRss6dYUIeWRxHhvaoP5QNnKnKhdUwWXuSNUCn4r?=
 =?iso-8859-1?Q?WY0MJt8UXy2UoNJ5WkqQ25XbNYgXNvmmJ/fzBPcoHuyS5qWtm4Rz+7Uug2?=
 =?iso-8859-1?Q?zrHw4UEIFfs/1HXVlGLH8oC5L5gud9g4y6yAPCjZNN2l+I666vpFF10ZfN?=
 =?iso-8859-1?Q?5FkT8pQPpZkXJ4tWngHZSralwXsIrl/N4xV1UJdjXYErmO/wkMkjkkmtyU?=
 =?iso-8859-1?Q?yaaM6hpOHici8yMrpP9jF0d6zNSZOrUQAaqQ6KmXLgIN0S1KZfZeD+KjlQ?=
 =?iso-8859-1?Q?CjP9yH1mMX40n0lIcyiEwJA8oNCug8SLVmXUDqQFOFI1AIQ7VifcvSMALN?=
 =?iso-8859-1?Q?OPYkBLVlAIx7UK8wOFnu8qGHfhTtOiWMzY7mIJBgGhLq/uFqXgx/F50EYR?=
 =?iso-8859-1?Q?qKsne84DALX2hzL2IXEply7VWtZ5xBNTMzJVQlI3+OedNwtLaBEbuAykSD?=
 =?iso-8859-1?Q?pJ8gcjzTaBuO+ZyXG9I8UinZGk+a03WM/ABo8J01+P34wsUdB+i7KhB53M?=
 =?iso-8859-1?Q?jchWvvp8IGzva2i695gr2h1QJG+bNE2By4DeK8RXfTJ4bfCqzwu4N27eZV?=
 =?iso-8859-1?Q?RHnFbK7pAKJ7jzBZb+iJE0FfrGV1K1lunTgy+rcukqwRuqnqQhmgNKzVIf?=
 =?iso-8859-1?Q?q2IiMCBmLQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 0JsSLc4NE9q8O6UQ/9U0EJLJBFHMNZeJzVOJ9lXjcQvTmCvalaPH06ePB+jSIsvh58fuPrOELYCbkBbSjKfvTlotFpoBYvYJrOLWuhfL6BCAN9+8gvgVArw5uIbizbB78NHk3ubtSnRQe2lXdhpT3vjVcR0qye/1uhz3sGITihbiuOpXg7PUWboCxeYcD2tjQIjqQ1qCrwj2nTQuowHX8zZ/DRorm4I7hHWWjiXkatLnDRpNhWZYLiwTXWzUhFJ4sLmfgf3HMXHVNHj1KUWsnar84oPxNJcRlzqFsWjimrOxS8dSZ2muaL8jfeUJgtQTwwUOOjx7epGCI3AL2dgi8Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 192bab44-844e-48be-15ae-08df2f56f28a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2026 09:37:39.2547
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6wbMXR6I1rbQL6n1eBE74oy7GY8tgiJEeXtL9ffi3fHHiM150UGzEgWMJLtbPnYUQdivNejf5bhetKWcyyE92Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4589
Return-Path: chee.yang.lee@intel.com
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2026 09:37:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66773

Hi=0A=
=0A=
We are pleased to announce the Yocto Project 6.0.4 Release is now available=
 for download.=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.4/=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.4/=0A=
=0A=
A gpg signed version of these release notes is available at:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.4/RELEASENOTES=
=0A=
=0A=
Full Test Report:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.4/testreport.tx=
t=0A=
=0A=
Thank you for everyone's contributions to this release.=0A=
=0A=
Chee Yang=0A=
chee.yang.lee@intel.com=0A=
Yocto Project Build and Release=0A=
=0A=
=0A=
--------------------------=0A=
yocto-6.0.4 Release Notes=0A=
--------------------------=0A=
=0A=
sbom-cve-check has been updated to v1.3.5 and will now generate a "not affe=
cted" assessment if a vulnerability is disputed.=0A=
=0A=
Expat has been updated to v2.8.3 to fix CVEs for which the patches were too=
 complex to backport.=0A=
=0A=
The fix for CVE-2026-72693 will change behavior of "openvt -u" when root is=
 involved. See:=0A=
  https://lore.kernel.org/all/CANQUz1807YxnBxVQMeJn8N1mhC698-NEk_tE8XQqRxwa=
8ke9Vw@mail.gmail.com/=0A=
=0A=
We merged patches to support stable AUH upgrades on a selected few recipes:=
 =0A=
  - babeltrace2 =0A=
  - binutils=0A=
  - dbus=0A=
  - git=0A=
  - glib-2.0=0A=
  - libgcrypt=0A=
  - libxml2=0A=
  - lttng-modules=0A=
  - lttng-tools=0A=
  - lttng-ust=0A=
  - openssl=0A=
  - perl=0A=
  - python3=0A=
  - sqlite3=0A=
  - systemd=0A=
  - util-linux=0A=
  - xz=0A=
=0A=
=0A=
--------------------------=0A=
 Repositories/Downloads=0A=
--------------------------=0A=
=0A=
Repository Name: yocto-docs=0A=
Repository Location: https://git.yoctoproject.org/yocto-docs=0A=
Branch: wrynose=0A=
Tag: yocto-6.0.4=0A=
Git Revision: a2cc1f5b86f3cdc9ad3257a2545322c5169da3ca=0A=
Release Artefact: yocto-docs-a2cc1f5b86f3cdc9ad3257a2545322c5169da3ca=0A=
sha: 1addfdd9f0f9a98a325102aabd24e221173f42dd1e62b8aa2d0b5f224e25d21a=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.4/yocto-docs-a2=
cc1f5b86f3cdc9ad3257a2545322c5169da3ca.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.4/yocto-docs-a2cc1f5b=
86f3cdc9ad3257a2545322c5169da3ca.tar.bz2=0A=
=0A=
Repository Name: openembedded-core=0A=
Repository Location: https://git.openembedded.org/openembedded-core=0A=
Branch: wrynose=0A=
Tag: yocto-6.0.4=0A=
Git Revision: 0f03c732a0a2d0506b41b1abe60b3f368b2300dc=0A=
Release Artefact: oecore-0f03c732a0a2d0506b41b1abe60b3f368b2300dc=0A=
sha: a35af9fd6d814ee2fbe21bbcb8de19cdf63fb2c5c78e8f5badf91dfc723a7748=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.4/oecore-0f03c7=
32a0a2d0506b41b1abe60b3f368b2300dc.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.4/oecore-0f03c732a0a2=
d0506b41b1abe60b3f368b2300dc.tar.bz2=0A=
=0A=
Repository Name: meta-yocto=0A=
Repository Location: https://git.yoctoproject.org/meta-yocto=0A=
Branch: wrynose=0A=
Tag: yocto-6.0.4=0A=
Git Revision: 7c25b11156553145fa6b241a2d4f65d94438f804=0A=
Release Artefact: meta-yocto-7c25b11156553145fa6b241a2d4f65d94438f804=0A=
sha: 411c783757cd2931e407dff408248b6b15f4508e4bf7a9ceedec13c0e7874b84=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.4/meta-yocto-7c=
25b11156553145fa6b241a2d4f65d94438f804.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.4/meta-yocto-7c25b111=
56553145fa6b241a2d4f65d94438f804.tar.bz2=0A=
=0A=
Repository Name: bitbake=0A=
Repository Location: https://git.openembedded.org/bitbake=0A=
Branch: 2.18=0A=
Tag: yocto-6.0.4=0A=
Git Revision: 51fd94a67fa17650a9ff623492005972bbc7d26f=0A=
Release Artefact: bitbake-51fd94a67fa17650a9ff623492005972bbc7d26f=0A=
sha: a541a9535cca6e342151e8e7b0c11f322dab879317b32e71bd47490c28af8b7d=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.4/bitbake-51fd9=
4a67fa17650a9ff623492005972bbc7d26f.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.4/bitbake-51fd94a67fa=
17650a9ff623492005972bbc7d26f.tar.bz2=0A=
=0A=
=0A=
---------------=0A=
 Contributors=0A=
---------------=0A=
=0A=
Thanks to the following people who contributed to this release:=0A=
=0A=
Abhishek Bachiphale=0A=
Adarsh Jagadish Kamini=0A=
Adrian Freihofer=0A=
Alejandro Mery=0A=
Alexander Kanavin=0A=
Andrei Lalaev=0A=
Ankur Tyagi=0A=
Antonin Godard=0A=
AshishKumar Mishra=0A=
Benjamin Robin=0A=
Benjamin Robin (Schneider Electric)=0A=
Bhavesh R Maheshwari=0A=
Bruce Ashfield=0A=
Chen Qi=0A=
Chris Laplante=0A=
Daiane Angolini=0A=
Daniel Dragomir=0A=
Daniel Turull=0A=
Darsh Kelaiya=0A=
Deepak Rathore=0A=
Devansh Patel=0A=
Esa Jaaskela=0A=
Francisco Pedraza=0A=
Ghanshyam Banait=0A=
Harish Sadineni=0A=
Hetvi Thakar=0A=
Hiago De Franco=0A=
Himani Ramesh Barde=0A=
Himanshu Jadon=0A=
Hitendra Prajapati=0A=
Jaipaul Cheernam=0A=
Jakub Szczudlo (Nokia)=0A=
Jonas Juffinger=0A=
Jose Quaresma=0A=
Joshua Watt=0A=
Kyungjik Min=0A=
Lee Chee Yang=0A=
Leonid Iziumtsev=0A=
Michal Sieron=0A=
Paul Barker=0A=
Peter Marko=0A=
Peter Tatrai=0A=
Pratik Farkase=0A=
Quentin Schulz=0A=
Richard Purdie=0A=
Robert P. J. Day=0A=
Roopa Kalmath=0A=
Ross Burton=0A=
Siddharth Doshi=0A=
Sowmya Sathram=0A=
Sudhir Dumbhare=0A=
Tafil Avdyli=0A=
Tim Orling=0A=
Trevor Woerner=0A=
Vijay Anusuri=0A=
Wang Mingyu=0A=
Xiuzhuo Shang=0A=
Yoann Congal=0A=
=0A=
=0A=
---------------=0A=
 Known Issues=0A=
---------------=0A=
N/A=0A=
=0A=
=0A=
---------------=0A=
Security Fixes=0A=
---------------=0A=
=0A=
alsa-lib: Fix CVE-2026-56109=0A=
apr-util: Fix CVE-2025-49506 CVE-2026-32327 CVE-2026-34191 CVE-2026-34501 C=
VE-2026-34502=0A=
apt: Ignore CVE-2011-3374=0A=
binutils: Fix CVE-2026-3441 CVE-2026-3442 CVE-2026-15003 CVE-2026-18220=0A=
bison: Fix CVE-2026-56389=0A=
busybox: Fix CVE-2026-38754=0A=
coreutils: Fix CVE-2026-56391=0A=
cpio: Fix CVE-2026-66484 CVE-2026-66485 CVE-2026-66486=0A=
curl: Fix CVE-2026-4873 CVE-2026-7009 CVE-2026-8286 CVE-2026-8925 CVE-2026-=
8927 CVE-2026-8932 CVE-2026-9079 CVE-2026-9080 CVE-2026-9545 CVE-2026-9546 =
CVE-2026-11352 CVE-2026-11586 CVE-2026-13608 CVE-2026-80229=0A=
curl: Ignore CVE-2026-8458 CVE-2026-8924 CVE-2026-9547 CVE-2026-12064 CVE-2=
026-82209=0A=
diffutils: Fix CVE-2026-53910=0A=
expat: Ignore CVE-2026-72522=0A=
expat: Fix CVE-2026-50219 CVE-2026-56131 CVE-2026-56412 CVE-2026-72522=0A=
ffmpeg: Fix for CVE-2025-69693 CVE-2026-8461 CVE-2026-30997 CVE-2026-30998 =
CVE-2026-30999 CVE-2026-40962 CVE-2026-52295 CVE-2026-52296 CVE-2026-52297 =
CVE-2026-64830 CVE-2026-64831 CVE-2026-64832 CVE-2026-64833 CVE-2026-64834 =
CVE-2026-64835 CVE-2026-65703 CVE-2026-65704 CVE-2026-65705 CVE-2026-65706 =
CVE-2026-66037 CVE-2026-66038 CVE-2026-66039=0A=
glibc: Fix CVE-2026-5435 CVE-2026-5450 CVE-2026-5928 CVE-2026-6238 CVE-2026=
-6791 =0A=
gnutls: Fix CVE-2026-5419 CVE-2026-33845 CVE-2026-42010 CVE-2026-42011=0A=
go: Fix CVE-2026-33818 CVE-2026-39821 CVE-2026-46600 CVE-2026-56864 CVE-202=
6-56865 CVE-2026-56853 CVE-2026-56858 CVE-2026-56859 CVE-2026-56860 CVE-202=
6-56862 =0A=
gstreamer1.0*: Fix CVE-2026-12891 CVE-2026-12892=0A=
kbd: Fix CVE-2026-72693=0A=
libarchive: Ignore CVE-2026-14164=0A=
libevent: Ignore CVE-2026-63380=0A=
libpcap: Fix CVE-2026-0799 CVE-2026-6244 CVE-2026-6554 CVE-2026-18238 CVE-2=
026-18313 CVE-2026-31911 CVE-2026-31912=0A=
libsndfile1: Fix CVE-2026-37555=0A=
libsoup: Fix CVE-2026-4271=0A=
libssh2: Fix CVE-2026-58051 CVE-2026-58050 CVE-2026-66032 CVE-2026-66033 CV=
E-2026-66034 CVE-2026-66035=0A=
libxfont2: Fix CVE-2026-44950 CVE-2026-56001 CVE-2026-56002 CVE-2026-56003 =
CVE-2026-59679=0A=
libxfont: Fix CVE-2026-56001 CVE-2026-56002 CVE-2026-56003=0A=
libxml2: Ignore CVE-2026-6732=0A=
libxml2: Fix CVE-2026-11979 CVE-2026-86137 CVE-2026-86138 CVE-2026-86139 CV=
E-2026-86140 CVE-2026-86141 CVE-2026-86142 CVE-2026-86143 CVE-2026-86144 =
=0A=
nghttp2: Ignore CVE-2026-58055=0A=
openssh: Ignore CVE-2026-55653=0A=
openssl: Fix CVE-2026-14456 CVE-2026-14457 CVE-2026-18798 CVE-2026-54874 CV=
E-2026-63072 CVE-2026-63073 CVE-2026-63074 CVE-2026-63075 CVE-2026-63076 CV=
E-2026-75803=0A=
p11-kit: Fix CVE-2026-13757 CVE-2026-18938=0A=
patch: Fix CVE-2026-56288 CVE-2026-56289=0A=
perl: Fix CVE-2026-13221 CVE-2026-42496 CVE-2026-42497 CVE-2026-57432 CVE-2=
026-57433=0A=
python3-click: Fix CVE-2026-7246=0A=
python3-cryptography(-vectors): Fix CVE-2026-34073 CVE-2026-39892=0A=
python3-cryptography: Fix CVE-2026-69248 CVE-2026-69249=0A=
python3-git: Fix CVE-2026-42215 CVE-2026-42284 CVE-2026-44243 CVE-2026-4424=
4=0A=
python3-idna: Fix CVE-2026-45409=0A=
python3-lxml: Fix CVE-2026-41066=0A=
python3-pip: Fix CVE-2026-8643 CVE-2026-13346=0A=
python3-pyasn1: Fix CVE-2026-30922 CVE-2026-59884 CVE-2026-59885 CVE-2026-5=
9886 =0A=
qemu: Fix CVE-2026-48914=0A=
rpcbind: Fix CVE-2026-16277=0A=
ruby: Fix CVE-2026-41316 CVE-2026-46727=0A=
u-boot: Ignore  CVE-2026-33243=0A=
u-boot, u-boot-tools: Fix CVE-2026-46728=0A=
u-boot-tools: Ignore CVE-2026-29007 CVE-2026-29008 CVE-2026-29009 CVE-2026-=
33243=0A=
util-linux: Fix CVE-2026-3184=0A=
util-linux: Ignore CVE-2026-13595=0A=
vim: Fix CVE-2026-28417  CVE-2026-52858  CVE-2026-55693 CVE-2026-55895 CVE-=
2026-57451 CVE-2026-57453 CVE-2026-57454 CVE-2026-57455 CVE-2026-57456 CVE-=
2026-59856 CVE-2026-59857 CVE-2026-59858 CVE-2026-73072 CVE-2026-73073 CVE-=
2026-73074 CVE-2026-73076 CVE-2026-73077 CVE-2026-73078=0A=
wget: Fix CVE-2026-16599 CVE-2026-58469 CVE-2026-58470 CVE-2026-58471 CVE-2=
026-58472=0A=
wpa-supplicant: Fix CVE-2026-58374=0A=
=0A=
=0A=
---------------=0A=
Fixes=0A=
---------------=0A=
=0A=
bitbake=0A=
-----------=0A=
asyncrpc: Close the client event loop when the client is collected=0A=
bb/tests/fetch.py: add case for filter_regex parameter in latest_versionstr=
ing=0A=
data: Fix expandKeys recursion issue=0A=
data: Return a list from exported_vars()=0A=
doc: bitbake-user-manual-environment-setup: use pip to install bitbake-setu=
p=0A=
fetch/gitsm: Store the original url data to fix relative gitsm paths=0A=
fetch/wget: Handle long filenames correctly=0A=
fetch2/__init__.py: add filter_regex to default latest_versionstring=0A=
fetch2/crate.py: add filter_regex parameter to latest_versionstring=0A=
fetch2/git.py: add filter_regex parameter to latest_versionstring=0A=
fetch2/wget.py: add filter_regex parameter to latest_versionstring=0A=
runqueue: Fix pending_hash_index not including taskname=0A=
runqueue: fix bad check in process_possible_migrations=0A=
runqueue: wait for covered tasks before setscene=0A=
tests/fetch: Drop ftp checkstatus test=0A=
tests/fetch: Swap bitbake github mirror for YP one=0A=
tests/fetch: Swap github grpc repo for our own small test repo=0A=
tests/fetch: Switch to YP mirror repos instead of github=0A=
toastergui/views: Replace os.system call with improved parameter handling=
=0A=
=0A=
oecore=0A=
-----------=0A=
apr-util: upgrade to 1.6.5=0A=
at-spi2-core: RDEPENDS on gsettings-desktop-schemas=0A=
babeltrace2: inherit upstream-stable-release-point=0A=
binutils: inherit upstream-stable-release-point=0A=
binutils: stable 2.46 branch updates=0A=
bitbake.conf: pseudo add rootfs-dbg to PSEUDO_INCLUDE_PATHS=0A=
bluez5: restrict delta=3D0 RSSI to proximity filters=0A=
build-appliance-image: Update to wrynose head revisions=0A=
ca-certificates: upgrade 20260601 -> 20260816=0A=
cmake-native: use bundled nghttp2 with bundled curl=0A=
connman: remove connection_manager from CVE_PRODUCTS=0A=
dbus: inherit upstream-stable-release-point=0A=
devtool/upgrade.py: add --stable option=0A=
dhcpcd: upgrade to 10.3.2=0A=
expat: upgrade to 2.8.3=0A=
ffmpeg: upgrade to 8.0.3=0A=
fmt: update branch name to main=0A=
gawk: skip randtest in ptest suite=0A=
git: inherit upstream-stable-release-point=0A=
glib-2.0: inherit upstream-stable-release-point=0A=
glibc: stable 2.43 branch updates=0A=
go: upgrade to 1.26.8=0A=
golang: fix homepage=0A=
grub: disable grub-protect for native builds=0A=
gst-devtools: upgrade to 1.28.5=0A=
gstreamer1.0*: upgrade to 1.28.5=0A=
gstreamer1.0: disable an intermittently failing test=0A=
improve_kernel_cve_report: Fix backported-patch check=0A=
kernel-fit-image: Don't add hash node when signing is enabled=0A=
kernel-yocto-rust: Add clang toolchain check for riscv64=0A=
kern-tools: bump SRCREV for conditional 'depends on X if Y' support=0A=
lib/oe/recipeutils: make stable_upgrade argument optional in get_recipe_ups=
tream_version()=0A=
libevent: upgrade to 2.1.13=0A=
libgcrypt: inherit upstream-stable-release-point=0A=
libslirp: add tag in SRC_URI=0A=
libslirp: fix upstream version check=0A=
libslirp: upgrade to 4.9.3=0A=
libxml2: inherit upstream-stable-release-point=0A=
libxml2: upgrade to 2.15.4=0A=
linux-yocto/6.18: fix kernel reproducibility issues=0A=
linux-yocto/6.18: update to v6.18.52=0A=
lttng-modules: inherit upstream-stable-release-point=0A=
lttng-tools: inherit upstream-stable-release-point=0A=
lttng-ust: inherit upstream-stable-release-point=0A=
mesa: align x86 mesa config with LLVM graphics=0A=
mirrors: Disable YP mirrors on autobuilder=0A=
oeqa/maturin: Update dependency version=0A=
openssl: inherit upstream-stable-release-point=0A=
openssl: upgrade to 3.5.8=0A=
perl: inherit upstream-stable-release-point=0A=
procps: ptest: skip flaky pgrep full process name match test=0A=
pseudo: upgrade to 1.9.11=0A=
pseudo: Add in openat2, exec and linkat fixes=0A=
pseudo: Update to 1.9.10=0A=
python3: add missing pyc files to core=0A=
python3: fix stringold cache files=0A=
python3: inherit upstream-stable-release-point=0A=
python3: upgrade to 3.14.7=0A=
python3-attrs: Fix CVE_PRODUCT=0A=
python3-babel: Fix CVE_PRODUCT=0A=
python3-certifi: fix homepage=0A=
python3-click: Fix CVE_PRODUCT=0A=
python3-click: upgrade to 8.3.3=0A=
python3-cryptography(-vectors): upgrade to 46.0.7=0A=
python3-cryptography: backport stray file install fix=0A=
python3-dbusmock: Fix CVE_PRODUCT=0A=
python3-git: Fix CVE_PRODUCT=0A=
python3-mako: correct CVE_PRODUCT mapping=0A=
python3-mako: upgrade to 1.3.12=0A=
python3-numpy: Fix CVE_PRODUCT=0A=
python3-pyasn1: upgrade to 0.6.4=0A=
python3-pycryptodome: Fix CVE_PRODUCT=0A=
python3-pycryptodomex: Fix CVE_PRODUCT=0A=
python3-sbom-cve-check: update to version 1.3.5=0A=
python3-shacl2code: upgrade to 1.1.0=0A=
python3-spdx-python-model: upgrade to 0.0.6=0A=
python3-wheel: Fix CVE_PRODUCT=0A=
qemu: guard RESOLVE_CACHED strace flag=0A=
recipeutils: add optional stable_upgrade parameter to get_recipe_upgrade_st=
atus=0A=
rootfs.py: fix run-postinsts removal on multilib images=0A=
rpcbind: Drop dependency on quota=0A=
rpcbind: upgrade to 1.2.9=0A=
ruby: upgrade to 4.0.5=0A=
sbom-cve-check-update-{nvd-native,cvelist-native}: upgrade to 2026.09.12=0A=
sbom-cve-check-update-db: Exclude recipes from rm_work=0A=
scripts/install-buildtools: Update to 6.0.3=0A=
sqlite3: inherit upstream-stable-release-point=0A=
sstate: Update mtime/atime for sig/siginfo files in sstate_checkhashes()=0A=
sstate: Update unpack touch code to be consistent=0A=
systemd: inherit upstream-stable-release-point=0A=
testimage: handle bootlog variants on failed qemu tests=0A=
time64: enable 64-bit time/file-offset flags for 32-bit nativesdk=0A=
toolchain-scripts: fix kernel host tool builds broken in the SDK=0A=
u-boot: share CVE_PRODUCT with u-boot-tools=0A=
upstream-stable-release-point.bbclass: add bbclass for stable point upgrade=
=0A=
util-linux: inherit upstream-stable-release-point=0A=
volatile-binds: order systemd-timesyncd after /var/lib=0A=
wireless-regdb: upgrade to 2026.09.03=0A=
xserver-xorg: upgrade to 21.1.24=0A=
xwayland: upgrade to 24.1.13=0A=
xz: inherit upstream-stable-release-point=0A=
=0A=
=0A=
meta-yocto=0A=
-----------=0A=
poky.conf: Bump version for 6.0.4 release=0A=
yocto-bsps: update to v6.18.52=0A=
=0A=
yocto-docs=0A=
-----------=0A=
README: add references to recent security documents=0A=
README: update instructions for installing vale and sphinx-lint=0A=
bitbake.rst: rename section to "BitBake User Manual"=0A=
bsp-manual/bsp.rst: fix a "local.conf" -> "layer.conf" typo=0A=
contributor-guide/identify-component.rst: use the same tense as other secti=
on=0A=
dev-manual/poky-manual-setup.rst: suggest use of fragment instead of assign=
ments=0A=
dev-manual/wic.rst: remove local.conf mentions=0A=
dev-manual: correct OVERRIDES to FILESOVERRIDES for FILESPATH=0A=
dev-manual: drop link to out-of-date wiki page=0A=
dev-manual: quote the values in two recipe examples=0A=
docs-wide: fix manual names in cross references=0A=
documentation: use "https" protocol for git.yoctoproject.org=0A=
index.rst: add introduction paragraphs=0A=
index.rst: move external links to the bottom of the intro section=0A=
index.rst: move release notes in their own section=0A=
index.rst: move the "Overview and Concepts" manual in the "Introduction and=
 Overview" section=0A=
index.rst: move the contributor guide out of the Manuals section=0A=
index.rst: show the intro paragraph only for html-based docs=0A=
migration-guide: add release notes for 5.0.20 6.0.3=0A=
overview-manual: move the intro content in the index=0A=
ref-manual/classes.rst: buildstats: remove local.conf default value=0A=
ref-manual/features.rst: add tools-profile=0A=
ref-manual/features.rst: fix some cross references=0A=
ref-manual/structure.rst: fix a "local.conf" -> "layer.conf" typo=0A=
ref-manual/system-requirements.rst: drop ccache in distros=0A=
ref-manual/variables.rst: BBMULTICONFIG: fix a typo=0A=
ref-manual/variables.rst: Document SPDX_AUTHORS=0A=
ref-manual/variables.rst: Fix the documentation for the SPDX agent variable=
s=0A=
ref-manual/variables.rst: document the PACKAGEFUNCS PACKAGE_NO_LOCALE varia=
ble=0A=
ref-manual/variables.rst: fix local.conf.extended obsolete path=0A=
ref-manual/variables.rst: mention built-in fragments for MACHINE/DISTRO=0A=
ref-manual/variables.rst: GCCVERSION: replace local.conf and mention recipe=
 existence=0A=
ref-manual/varlocality.rst: mention built-in fragments for distro/machine=
=0A=
ref-manual/varlocality.rst: remove BBFILES from local configuration assignm=
ents=0A=
ref-manual: drop the full stop from the QB_SMP example=0A=
ref-manual: fix a typo in the QB_SMP description=0A=
ref-manual: update DEBUG_OPTIMIZATION/FULL_OPTIMIZATION=0A=
security-manual/securing-images.rst: remove "your" in "your OE-Core"=0A=
toaster-manual: spell the json code-block language in lower case=0A=
=0A=
