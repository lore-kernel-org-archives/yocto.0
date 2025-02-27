Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 604AFC021BE
	for <webhook@archiver.kernel.org>; Thu, 27 Feb 2025 07:25:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by mx.groups.io with SMTP id smtpd.web11.5714.1740641128626181515
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2025 23:25:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=HCaOHL6f;
 spf=pass (domain: intel.com, ip: 198.175.65.18, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1740641129; x=1772177129;
  h=from:to:subject:date:message-id:mime-version;
  bh=/bZkn4TuDszkK6gmbcpKok4LH4hdqLHefj8Pu9hsQ40=;
  b=HCaOHL6fPJMpazdi5tpjlMghVCcBk8xwujrXcbOZ+dXci9RBkLBp+DKt
   9weUlmXNeMi7dsYS86ouNmTqJpI5iZ+FKLBc2twU0QMGAIAt4xo6lRS4u
   WT0CWZkueGgXlBHmwpexyVzpziwxzW3b8dDBDD+oGksxUqFSAIUsrzw0Q
   buJyjtuHrnTUgyLGKSUphG0U/tzpuXsQSRB2LAbl/n6IuEAMiOKVbM2L5
   It3/Jln9AfoVbvZTAiooD/hhe0LzkCwhBR8m968BUTEmw6sPYrGRRlh61
   RWIaHiAFtvXDicO4brQQWRE1YZjniMh9jfBYkloLpBrwJCKcbXJgrcmuB
   w==;
X-CSE-ConnectionGUID: wM5xxAJ8QAKmadc1F8bFsQ==
X-CSE-MsgGUID: 9fHbBllzT5iwPfia9D5OTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="41716405"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; 
   d="scan'208,217";a="41716405"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2025 23:25:28 -0800
X-CSE-ConnectionGUID: ISgU1HGETdyG5zPXHixanw==
X-CSE-MsgGUID: qtq5tEPETGmPtkVPj4DmaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208,217";a="117856977"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 26 Feb 2025 23:25:28 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Feb 2025 23:25:27 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 26 Feb 2025 23:25:27 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 23:25:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AAS/0MApB9oSSQ9TwqR6agA0FNxSkHrqC+NfHO11oay4PU2Aqo3osRWy4feCHm+oKru6EZsR6NX4AxcKvESg/XjRCSmkUy1wdcS1nK8BHcfDr6Cw6qasLpZoWL+QAodLknNICbq9WvhxJtAdCunapFimMlgvpruzQRaVEi04TAA1TrHoRBdv5ywhgPERjcOkQVyNuH5IB9TG4+7NOtV7XTGBhxKYSqUXqbhLXFseOPvTHbMT+wVKaOjBc8nrmSwZMK8ESpm87e6GWPnxXP2o7i4DEauWgqyCdbXFcxUwop9PCWo2ye5I0k6WrsYUnVlZdMZkY/cy/d44SibbVmol6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKg6hEogONdSmxgPYbrGa9XkO3alOIfXQHRCfEXyS4k=;
 b=pHxMNzVp6hR70JYg8AsdpFmk3BV0gLpyJLjuyEBERS+utlLviaYmCawzfRgIBHtVFBYMV+aF+Gxh1Y6DKFu9AvJxJ4UVlEpA1xm5l9CWXDtpPns4bW+hEbErBn52xDSZ6VW2xc9y+jnRlUoUVXC87MvP5ydnK2rPKSiauDyl2GPFI16QOMZQKgVF9LolBl8h2jPTmNLNQPHLXxOHpbWALE2BizxEgSrmbBVo+/LyDKKJ5YIflbwznpGemm+eOQPFAkR9Ybt1HIyjpCsSoCQ9TDQzTCspU2tMAKw8cTdkcLqesF5xUTbrDmXrYXM0QhyVK4In1z4Br9PDXUCQmqUe6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SA3PR11MB7433.namprd11.prod.outlook.com (2603:10b6:806:31e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.22; Thu, 27 Feb
 2025 07:25:24 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%6]) with mapi id 15.20.8466.020; Thu, 27 Feb 2025
 07:25:24 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.25 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.25 is Released
Thread-Index: AduI3x0+jrInd3mSSH+3AKWDOnALmw==
Date: Thu, 27 Feb 2025 07:25:24 +0000
Message-ID: <BL4PR11MB879727F81258489FF3526BAEB9CD2@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SA3PR11MB7433:EE_
x-ms-office365-filtering-correlation-id: 6a6724a6-cdd5-4d34-e71e-08dd56ffe6c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|8096899003|13003099007|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?D/iP6XqTupsC4zqX9EQgl7Y0H58x4z2meEswxtCwU/+nACvtPGDNN8w/PDRv?=
 =?us-ascii?Q?Bb7IInFiwmOvzBS0TyDi74tJhiwLEDZhFFWYGY3OZmJxYa1mzIsk36xGg0uw?=
 =?us-ascii?Q?qkZzgTPHHG12fn2yhyuyLv38c08x9HiMOoMoSkWjdx16PL4A3PMr1BGNGgaP?=
 =?us-ascii?Q?oc5zIm64FlwfVR9I/3g3tNMYUzNc7Fq2S2xbN2NkPu0C+6hbFk6DSPQ5g4Ns?=
 =?us-ascii?Q?2aI0s/AvgQc10IewBo9Df4wGKSxL0F2bxhYzvZ4HTLS9jGKuUhtVbRQ14cOd?=
 =?us-ascii?Q?sslX0w/mYEDob8SjCI9IAvtLvljS+E6ZZzzSKV3SPEgJOxkl0aOXcBdHvwzs?=
 =?us-ascii?Q?M+alqIGwLukJWh6/PWlffv/yppEdWFoYQLrI8/9Uy/48U4EECzQxvv5DOloF?=
 =?us-ascii?Q?pb6OI0mG9UBSEPKtuhYbXakSZrLXXUqHvIL6LUq1SSAllWx7epajcZ+WP71o?=
 =?us-ascii?Q?3Iw4r9mPVOgDS1nanxxoE9jAGSBlElEd6pKuIQ+UpRi2+UyAqx4C872fuO8/?=
 =?us-ascii?Q?wTnUFFclaTpUGv1hBrvcTL5fryvh7PrtDJCynBydyMc1KWYZTaBH4riAeuaS?=
 =?us-ascii?Q?+odVNFoBat6mUexke5AOqkXsyIXedB2kCDpGpsLl0YV5m2U2mMLlL/qif3Yj?=
 =?us-ascii?Q?h4/Ia9qokCaR4NJZQb3xT6x/poirC/CQFNjc18U7isa5MC0eu02xPLmtL0pr?=
 =?us-ascii?Q?nVxq+NMLQXwWvV4gB4+mnrew8Ri2jj2m7S8zHmZ+KpStK5nD0RfXZkPBKZ/c?=
 =?us-ascii?Q?wZXWuPFGT75YxTIJP0Mzz7fBGvZ+jpAyIAn1hYmMjxheZOOCS2sd6c+6s2zM?=
 =?us-ascii?Q?eje+rF6PJP6ijwS13p4oeru2aavqsWUl5gXd6kSntQ9qOHWdQAaPpBvkTKBz?=
 =?us-ascii?Q?RMwdKwYN5zs/PsH3wuEJiQOhFICw4Hn2xFo97Z4yQ1iqwi56ChFtx3YsQlLv?=
 =?us-ascii?Q?7t9gJ+Z/TYZhN9gXPXP4pBjCXGy5b5RnyCg2cKxpcbldO3K9WzBnpvwiu23J?=
 =?us-ascii?Q?sYfUewdohzn62RlYOl0Em8lwH6YXHt6BPLaD400CPK22lfYe3ujIWJ87sX9A?=
 =?us-ascii?Q?A7kHI+IZ8OX4oUZDH9uktICij1NHiHEJK0KZJPclips4D+tSHWJ0LeK6IVxb?=
 =?us-ascii?Q?M/JQ0u83qMRFbWn2e8gP4FvmCY09AenXoGHVrTmqvr8nuv429FLqZgLgT7sp?=
 =?us-ascii?Q?a13NCNiFsT/R/q3TGlOMnsUltuV4cEGCcLnbUGqOAQcw1CFRs7+WdBse49oh?=
 =?us-ascii?Q?OTXx8G0YVSm0PWAQZfgvRk1vqpj2hVh9qfGtcYFnIYDoAwJpSgfLF7cRWcUE?=
 =?us-ascii?Q?r5j7JCxk8f3RsQZRN0aJFM+p78EA5ZEoVUNs4cOWioGdawGeoua0ib/BACDA?=
 =?us-ascii?Q?8JhtCHYB0zt67YzAOzzvTuT5UEvT?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(8096899003)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+rAphPaJDBU3/sqNy2CRb0uo1w7QVBJQTO/rkx//MbE4dg/fL27Xv1EmbIqB?=
 =?us-ascii?Q?QF5IUBXZAfdggpd7/ew54AMns+HNU/n0EfKNfLFC1+qpF54X/k0QXAcwldmO?=
 =?us-ascii?Q?hGHepVEosuiirMfIq6Y/uKnDkaPlm3EUOgv7fXMZVTridW2hsay5IeRV2Wln?=
 =?us-ascii?Q?8oLbp9XQE24Tu3pa70j7EmxQwF1vZhao3csoAwPfMFy8t6FGqLBWpRvUyktE?=
 =?us-ascii?Q?UFH3LJcZnnT30ArRz782qae28ytjEqqESPqqtoaC2MHosaRlZ1PM8uN8C3PI?=
 =?us-ascii?Q?cjCd4dLLvoftyIlswwqWwk71xAeooz9lyZtQnM4idQa2O+6UfXIB2J8xAeQU?=
 =?us-ascii?Q?1SfOnqhGkt2+nstfUzBvVEi8NVSeBEYebJn8wjVKIR9LGegZrmw/MJWjvRUD?=
 =?us-ascii?Q?O1WPykUhmq/mOtySBqWWdufgwy4ikdRT9hLwo5xHZOqNazPQKeFRegydm3Im?=
 =?us-ascii?Q?TKAfBG13FHG5h+53ONM+xS55NUgJkrOlMGpkvzB3uh836K6O6bnzeov+UPOs?=
 =?us-ascii?Q?J+3Ss6TPlEyu3ue72uyilhgWwjswmtoa4sc/x+YU5+zifzloT8+DBAy/JJZH?=
 =?us-ascii?Q?pJnAd64QEp/kXpZj5A1H1Sj8Vdh4iYXnCt8Wx/0tNFW6Po7+cbyBdp004Mbs?=
 =?us-ascii?Q?5ZnhkGHzvAaRtr/v+IP9m5RIxhLL69YLQcOiwDF+chIl7Wgv+/mQbeJgnIWd?=
 =?us-ascii?Q?Ej/VLxpWSUDH42MEEYwVd/caD9hyz9OVPNz/eDtQpcCm2hyNLo4HCkiSfBXi?=
 =?us-ascii?Q?Yb/RBKb7cScaNa61/OUdlkZ6pUvf24sTINYnGWU57FWropcLLHcFXwQNX9rN?=
 =?us-ascii?Q?6v0G/eY61WWiuE+JboYRemlOO3eYJ/F9OZxwKqEbsr+4FAeZg0fFS5HAZvQ/?=
 =?us-ascii?Q?FdR/ItRuLWmYr07dAd3WL3AMMxCWuRVMO5UNPPXh6uorqgfnSYknQyB8sZaV?=
 =?us-ascii?Q?hiLmcuRa1fqi1OTSk/vCFAuXEtJl+sPo5f9NStyCG+RacUTBdnuo/aNKUotQ?=
 =?us-ascii?Q?G352xFyLrJjfmxEYlDUGcdyEtgBlMWheoBydJ7xE1vhOXgcSBeB2PbC9yqur?=
 =?us-ascii?Q?3DTQPwwxzj1/OxCi8Ud1vd8kbrAG07V36wrpNdpheyBd2sUnge/aiUjBNsii?=
 =?us-ascii?Q?PxAiA5RjAnc18TgCurWtGDN3D/495/moOiTyOmmI57ktJu0HZFhMiRof5VR6?=
 =?us-ascii?Q?Pgf6cy1WQwI1sbnhCvDO9lEyK7gkUCE3CZv16bVFEu/Ld00rtPXsxb9cWSqj?=
 =?us-ascii?Q?wWhrGKk7p/Tje8Jxq3aHj7fVCRVWPWi0fGGu2ggyREviDomSiZenVxfvIbQ8?=
 =?us-ascii?Q?eADGXxNulSOnKw/oqZEBfLezST4KTZDyqBczZLgtQvdWK4YLtK5GEDCapKE1?=
 =?us-ascii?Q?EkCtUm3SZ8yxnTaHaqEeh5wKpkbratPfS1Jk0H1iRL13okuG1RE9eEG7ix2P?=
 =?us-ascii?Q?XjJG5wIYMzvQnWAR238TIT3z1gfWapXrU8NvHx2sms+xfSsmUUpRG4pC2uDw?=
 =?us-ascii?Q?vOzpBC/uw9+MhqrdJkyF0WLVKiQAF0qb939hcP1iTbrHwD5tLpOqBcGskMqC?=
 =?us-ascii?Q?EmR/CaOjNyAt3wwC7PiAZr6ZGYzNi2/yA1+d0WWQ?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB879727F81258489FF3526BAEB9CD2BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a6724a6-cdd5-4d34-e71e-08dd56ffe6c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2025 07:25:24.4149
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y15oWLw0aiyF8GuaCC/BWxI/Nc3avnm+kV6cIywbLnxE+xfHr998ORWXS/MEC78oQsKksloFw6ji4PIewm5yGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7433
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2025 07:25:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64882

--_000_BL4PR11MB879727F81258489FF3526BAEB9CD2BL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.25 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/poky-b5aa03f=
336c121269551f9e7baed4c677c76bb39.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.25/poky-b5aa03f336c1212695=
51f9e7baed4c677c76bb39.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-4.0.25 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.25
Git Revision: b5aa03f336c121269551f9e7baed4c677c76bb39
Release Artefact: poky-b5aa03f336c121269551f9e7baed4c677c76bb39
sha: 7afbcb25f0dd89a4fb6dd4c5945061705ef9ce79a6863806278603273c2b3b4a
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/poky-b5aa03f=
336c121269551f9e7baed4c677c76bb39.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.25/poky-b5aa03f336c1212695=
51f9e7baed4c677c76bb39.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.25
Git Revision: 5a794fd244f7fdeb426bd5e3def6b4effc0e8c62
Release Artefact: oecore-5a794fd244f7fdeb426bd5e3def6b4effc0e8c62
sha: 8fc93109693e5f4702b3fe0633b6be833605291b3d595dc8bdeb6379f40cd2de
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/oecore-5a794=
fd244f7fdeb426bd5e3def6b4effc0e8c62.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.25/oecore-5a794fd244f7fdeb=
426bd5e3def6b4effc0e8c62.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.25
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.25/meta-mingw-87c22abb1f11=
be430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.25
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.25/meta-gplv2-d2f8b5cdb285=
b72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.25
Git Revision: e71f1ce53cf3b8320caa481ae62d1ce2900c4670
Release Artefact: bitbake-e71f1ce53cf3b8320caa481ae62d1ce2900c4670
sha: 007eef35174586c85b233f4ec91578956fe21e0236f7ca2c3f90f9d034f94b5b
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/bitbake-e71f=
1ce53cf3b8320caa481ae62d1ce2900c4670.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.25/bitbake-e71f1ce53cf3b83=
20caa481ae62d1ce2900c4670.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.25
Git Revision: c6dce0c77481dee7b0a0fcdc803f755ceccef234


---------------
Contributors
---------------
Aleksandar Nikolic
Alexander Kanavin
Antonin Godard
Archana Polampalli
Bruce Ashfield
Deepesh Varatharajan
Divya Chellam
Joshua Watt
Khem Raj
Lee Chee Yang
Nikhil R
Pedro Ferreira
Peter Marko
Praveen Kumar
Richard Purdie
Ross Burton
Simon A. Eugster
Steve Sakoman
Yash Shinde
Yogita Urade
Zhang Peng


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
avahi: Fix CVE-2024-52616
binutils: Fix CVE-2024-53589
gdb: Fix CVE-2024-53589
go: Fix CVE-2024-34155 CVE-2024-34156 CVE-2024-34158 CVE-2024-45336
gstreamer1.0: Ignore CVE-2024-47537 CVE-2024-47539 CVE-2024-47540 CVE-2024-=
47543 CVE-2024-47544 CVE-2024-47545 CVE-2024-47538 CVE-2024-47541 CVE-2024-=
47542 CVE-2024-47600 CVE-2024-47607 CVE-2024-47615 CVE-2024-47835 CVE-2024-=
47546 CVE-2024-47596 CVE-2024-47597 CVE-2024-47598 CVE-2024-47599 CVE-2024-=
47601 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834 CVE-2024-47602 CVE-2024-=
47603 CVE-2024-47613 CVE-2024-47774 CVE-2024-47775 CVE-2024-47776
linux-yocto/5.15: Fix CVE-2024-36476  CVE-2024-55916 CVE-2024-56369 CVE-202=
4-56626 CVE-2024-56627 CVE-2024-56715 CVE-2024-56716 CVE-2024-57802 CVE-202=
4-57807 CVE-2024-57841 CVE-2024-57890 CVE-2024-57896 CVE-2024-57900 CVE-202=
4-57910 CVE-2024-57911 CVE-2024-57938 CVE-2024-57951 CVE-2025-21631 CVE-202=
5-21665 CVE-2025-21666 CVE-2025-21669 CVE-2025-21680 CVE-2025-21683 CVE-202=
5-21694 CVE-2025-21697 CVE-2025-21699
ofono: Fix CVE-2024-7539 CVE-2024-7540 CVE-2024-7541 CVE-2024-7542 CVE-2024=
-7543 CVE-2024-7544 CVE-2024-7545 CVE-2024-7546 CVE-2024-7547
openssl: Fix CVE-2024-13176
rsync: Fix CVE-2024-12084 CVE-2024-12085 CVE-2024-12086 CVE-2024-12087 CVE-=
2024-12088 CVE-2024-12747
ruby: Fix CVE-2024-49761
socat: Fix CVE-2024-54661
vte: Fix CVE-2024-37535
wget: Fix CVE-2024-10524


---------------
Fixes
---------------
bitbake: tests/fetch: Fix git shallow test failure with git >=3D 2.48
build-appliance-image: Update to kirkstone head revision
classes-global/insane: Look up all runtime providers for file-rdeps
classes/nativesdk: also override TUNE_PKGARCH
classes/qemu: use tune to select QEMU_EXTRAOPTIONS, not package architectur=
e
cmake: apply parallel build settings to ptest tasks
dev-manual/building: document the initramfs-framework recipe
docs: Update autobuilder URLs to valkyrie
documentation: Fix typo in standards.md
glibc: Suppress GCC -Os warning on user2netname for sunrpc
glibc: stable 2.35 branch updates
lib/packagedata.py: Add API to iterate over rprovides
linux-yocto/5.15: upgrade to v5.15.178
migration-guides: add release notes for 4.0.24
openssl: upgrade to 3.0.16
poky.conf: bump version for 4.0.25
python3: Treat UID/GID overflow as failure
rsync: Delete pedantic errors re-ordering patch
rsync: upgrade to 3.2.7
rust-common.bbclass: soft assignment for RUSTLIB path
scripts/install-buildtools: Update to 4.0.23
test-manual/reproducible-builds: fix reproducible links





--_000_BL4PR11MB879727F81258489FF3526BAEB9CD2BL4PR11MB8797namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-MY" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 4.0.25 Release is now available for download.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/poky-b5aa03f336c1212=
69551f9e7baed4c677c76bb39.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-4.0.25/poky-b5aa03f336c121269551f9e7baed4c677c76bb39.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-4.0.25/poky-b5aa03f336c121269551f9e7ba=
ed4c677c76bb39.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-4.0.25=
/poky-b5aa03f336c121269551f9e7baed4c677c76bb39.tar.bz2</a><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-4.0.25/testreport.txt</=
a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you for every=
one's contributions to this release.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chee Yang<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"mailto:c=
hee.yang.lee@intel.com">chee.yang.lee@intel.com</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yocto Project Build=
 and Release<br>
<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-4.0.25 Releas=
e Notes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repositories/Downlo=
ads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.25<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: b5aa0=
3f336c121269551f9e7baed4c677c76bb39<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-b5aa03f336c121269551f9e7baed4c677c76bb39<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 7afbcb25f0dd89=
a4fb6dd4c5945061705ef9ce79a6863806278603273c2b3b4a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.25/poky-b5aa03f336c121269551f9e7ba=
ed4c677c76bb39.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.25/poky-b5aa03f336c121269551f9e7baed4c677c76b=
b39.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.25<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 5a794=
fd244f7fdeb426bd5e3def6b4effc0e8c62<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-5a794fd244f7fdeb426bd5e3def6b4effc0e8c62<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 8fc93109693e5f=
4702b3fe0633b6be833605291b3d595dc8bdeb6379f40cd2de<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.25/oecore-5a794fd244f7fdeb426bd5e3=
def6b4effc0e8c62.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.25/oecore-5a794fd244f7fdeb426bd5e3def6b4effc0=
e8c62.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.25<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 87c22=
abb1f11be430caf4372e6b833dc7d77564e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: f0bc4873e2e031=
9fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.25/meta-mingw-87c22abb1f11be430caf=
4372e6b833dc7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.25/meta-mingw-87c22abb1f11be430caf4372e6b833d=
c7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.25<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: d2f8b=
5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: c386f59f8a6727=
47dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.25/meta-gplv2-d2f8b5cdb285b72a4ed9=
3450f6703ca27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.25/meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca=
27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.0<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.25<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: e71f1=
ce53cf3b8320caa481ae62d1ce2900c4670<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-e71f1ce53cf3b8320caa481ae62d1ce2900c4670<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 007eef35174586=
c85b233f4ec91578956fe21e0236f7ca2c3f90f9d034f94b5b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.25/bitbake-e71f1ce53cf3b8320caa481=
ae62d1ce2900c4670.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.25/bitbake-e71f1ce53cf3b8320caa481ae62d1ce290=
0c4670.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.25<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: c6dce=
0c77481dee7b0a0fcdc803f755ceccef234<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Contributors<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexander Kanavin<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joshua Watt<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Khem Raj<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Nikhil R<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Pedro Ferreira<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Simon A. Eugster<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yash Shinde<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Zhang Peng<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issues<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">N/A<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Security Fixes<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">avahi: Fix CVE-2024=
-52616<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
024-53589<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gdb: Fix CVE-2024-5=
3589<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2024-34=
155 CVE-2024-34156 CVE-2024-34158 CVE-2024-45336<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: Ignor=
e CVE-2024-47537 CVE-2024-47539 CVE-2024-47540 CVE-2024-47543 CVE-2024-4754=
4 CVE-2024-47545 CVE-2024-47538 CVE-2024-47541 CVE-2024-47542 CVE-2024-4760=
0 CVE-2024-47607 CVE-2024-47615 CVE-2024-47835
 CVE-2024-47546 CVE-2024-47596 CVE-2024-47597 CVE-2024-47598 CVE-2024-47599=
 CVE-2024-47601 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834 CVE-2024-47602=
 CVE-2024-47603 CVE-2024-47613 CVE-2024-47774 CVE-2024-47775 CVE-2024-47776=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: F=
ix CVE-2024-36476&nbsp; CVE-2024-55916 CVE-2024-56369 CVE-2024-56626 CVE-20=
24-56627 CVE-2024-56715 CVE-2024-56716 CVE-2024-57802 CVE-2024-57807 CVE-20=
24-57841 CVE-2024-57890 CVE-2024-57896 CVE-2024-57900
 CVE-2024-57910 CVE-2024-57911 CVE-2024-57938 CVE-2024-57951 CVE-2025-21631=
 CVE-2025-21665 CVE-2025-21666 CVE-2025-21669 CVE-2025-21680 CVE-2025-21683=
 CVE-2025-21694 CVE-2025-21697 CVE-2025-21699<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ofono: Fix CVE-2024=
-7539 CVE-2024-7540 CVE-2024-7541 CVE-2024-7542 CVE-2024-7543 CVE-2024-7544=
 CVE-2024-7545 CVE-2024-7546 CVE-2024-7547<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Fix CVE-20=
24-13176<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rsync: Fix CVE-2024=
-12084 CVE-2024-12085 CVE-2024-12086 CVE-2024-12087 CVE-2024-12088 CVE-2024=
-12747<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: Fix CVE-2024-=
49761<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">socat: Fix CVE-2024=
-54661<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vte: Fix CVE-2024-3=
7535<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wget: Fix CVE-2024-=
10524<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Fix git shallow test failure with git &gt;=3D 2.48<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to kirkstone head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">classes-global/insa=
ne: Look up all runtime providers for file-rdeps<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">classes/nativesdk: =
also override TUNE_PKGARCH<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">classes/qemu: use t=
une to select QEMU_EXTRAOPTIONS, not package architecture<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cmake: apply parall=
el build settings to ptest tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/building=
: document the initramfs-framework recipe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Update autobu=
ilder URLs to valkyrie<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: Fix =
typo in standards.md<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: Suppress GCC=
 -Os warning on user2netname for sunrpc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.35 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lib/packagedata.py:=
 Add API to iterate over rprovides<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: u=
pgrade to v5.15.178<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.24<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: upgrade to=
 3.0.16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 4.0.25<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Treat UID/=
GID overflow as failure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rsync: Delete pedan=
tic errors re-ordering patch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rsync: upgrade to 3=
.2.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust-common.bbclass=
: soft assignment for RUSTLIB path<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 4.0.23<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual/reprodu=
cible-builds: fix reproducible links<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB879727F81258489FF3526BAEB9CD2BL4PR11MB8797namp_--

