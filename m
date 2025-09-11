Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521B7CAC583
	for <webhook@archiver.kernel.org>; Thu, 11 Sep 2025 05:05:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by mx.groups.io with SMTP id smtpd.web11.38744.1757567101006852003
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Sep 2025 22:05:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=m/BN18Aj;
 spf=pass (domain: intel.com, ip: 198.175.65.19, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1757567101; x=1789103101;
  h=from:to:subject:date:message-id:mime-version;
  bh=HMq89hK2WpLQdW8lqkYU0/49lYHkmQycPBgZnH0KNnc=;
  b=m/BN18Ajv+yWE3K9mnni1GZPlkNEycvwN3pHwAFEMkIcmeA1gT8F2Bcw
   flvqu73OS1w2Istrcug6lVzpfFwcbiRKz1wRTNHLRBSVN2oTrOLFVub9u
   7oWDzq5ZGWbQXnXJZeySQ3uRPg68n6fXepFDVNR7D8ixJp6+c0Pn49hEQ
   NkHOBk1A9qDn0PGDiWmWxJgNFJD4j1f5g5STHYgjeH5fcZLKmGchlNVh3
   CVxzkrdclXv1E4G2oEzSVxy3Zel1MUQYTN0cZ3N5H9Q3q+OtY7X6q+ygy
   K8b9DXhxBqDZzgTuHuHSl8jhbchPiyQH4T6tmk/r158xnz4SirPBkfUqJ
   g==;
X-CSE-ConnectionGUID: rarWu23HSX2zwF/FotIbcw==
X-CSE-MsgGUID: WMcdgFlZQh2AVllLB3dFdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="59747485"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; 
   d="scan'208,217";a="59747485"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2025 22:05:00 -0700
X-CSE-ConnectionGUID: VWTxLqF3RZ+PzsSsBQBIfA==
X-CSE-MsgGUID: /T3wZqBuTyO32domAAl6Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; 
   d="scan'208,217";a="204573794"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2025 22:04:59 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 22:04:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 22:04:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.71)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 22:04:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aaWRkiKsrWGQ7HLeFhipcQHjZlGb1pdNi1G/csHqGdKBHKxoGVoRD6WGCh+cH8URi9ehSldtnUknA+zTj6IEosJRWVVLaXvSfjiIdgJDX3FXT7yNyMTY0Svs5ph3xEKkW14EWcrA3vAIFBv/z3LyPgVyaMQDauyubpxW3SjARirl8Y9EEvj3qcsW12qZ2GeDxnKa0NskjPyKbXvw0R5rgELVPzfB9mDBNEwqJKHIahTKxUNRwp613d2sf5qMBYRAGcdbU0CkmlA+HVkZwU159Cvp4PgsI5OvFY17tneukAJnkEsmFfxSF2gg92pKhQZjcRaB/eSXxT5ND3Y0l5I4ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2+oWJQYVMCbm2fvnJQTxlx0QACIv2Iw/WYoQbyCOAgE=;
 b=YVSRWxcJGx4xb22xSrCssAIn08I7QSQh4nPhUl4tuVJzUZj3BSbIvJTMQpjdtjrWLGII07FE/yzFF6G2uBoBR0Nwa+N0egCmY9p9EWNIX+HhL1E6hJ5nLw85e6683VtWoKHXPeam26O6MFi/p5VV6h29k7wLdr7DwAkVVOBJY09lgMP4OFhIrgXNVVEcf3Wpc0iMIaEtDnFcTn8N0phWpDpBOqWejqGff8M12UTlyNxQUUDz1UiaCSnEeTaGX3lywmOKVO3NFZcI5dJW58LuyOYBkkP+O3K4l4QsyEqrCO6MaU5/GWgDL/JK+P29SbOrnZV7N1ePlzhh1G25x2X5eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by PH7PR11MB8569.namprd11.prod.outlook.com (2603:10b6:510:304::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Thu, 11 Sep
 2025 05:04:54 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%5]) with mapi id 15.20.9094.021; Thu, 11 Sep 2025
 05:04:53 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.0.12(scarthgap-5.0.12) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.0.12(scarthgap-5.0.12) is
 Released
Thread-Index: Adwi02KKLtSZVEKzQGKIDfrCgnNZHw==
Date: Thu, 11 Sep 2025 05:04:53 +0000
Message-ID: <BL4PR11MB8797199FB380E07DCCF2CB89B909A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|PH7PR11MB8569:EE_
x-ms-office365-filtering-correlation-id: c3927c1d-97f9-4756-5f5c-08ddf0f0be4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|366016|38070700021|13003099007|8096899003;
x-microsoft-antispam-message-info: =?us-ascii?Q?8kuHCEU87IxgC1MRjN7HMFLdJUx6YYV6i7V9uugZd8B//Y8vfC8O8bS4Alan?=
 =?us-ascii?Q?L0hHuyK6MTgnYL9EKkem9dFtTldm4CLObEcjlA5VTqk3QTrcoou8MDqRAnhI?=
 =?us-ascii?Q?VDmy/4sBZ+Jhsilim4T5/EVzTO8tdAAwhhbbJDNZ+DKYvLXCi5xC2ExVpW4e?=
 =?us-ascii?Q?pNAJzFAJR5VmPmj2PxotkgFl25A2+GSiSaM2iLO5R3lom8fH1N8TulIZIChQ?=
 =?us-ascii?Q?RjPNq7EPFOrfUveM5NEKHWaJziNKm0TkZlzC9QjcKa5wx8zZOv1PEMOAgx7I?=
 =?us-ascii?Q?ziWxo2jNEHSjumBhWxSPJleC/bWQRjmTvP8xzUdWlb67NtvPYAGDLG/XBGe+?=
 =?us-ascii?Q?5XNUknqglfiHIX2Q18qRGMdDe0Y51I3YRKY/rPJVhWqrTtCrnQRPp/1dVFzL?=
 =?us-ascii?Q?A6rGEAGYcwy7YEBjAyPH41DXGKu9l+sv1wpWHXKyz2Al1vmQdKC3lpaxyi7Z?=
 =?us-ascii?Q?vUNzWdAgwe4jYeOxT9lwAgv7fmXBjlsUQv9f4L2zU5SeCcakVcLNUHqfWXvT?=
 =?us-ascii?Q?S6Xg3HY0WhJGkHiNW3JYtuFqXE7f9UA2e1janXK3IUzRx/WpAi1DJSxPJShG?=
 =?us-ascii?Q?vjskHxPAdMYHVXvKuz0t2u3CUfsuW6bF111x73lhV/bOgPigHtYMLW8V5+NJ?=
 =?us-ascii?Q?tKw7Um6wCY+Zz24JoOJVUp6EFp+HDy8qvCuwzNpQJ2m7SdgxsX2mBs+1hq4V?=
 =?us-ascii?Q?9N3ZGYORA1naicK7LBaGpzyqSN1imUzbfiTg1PcwkDadiFZ5mfeFaCrElHRa?=
 =?us-ascii?Q?u9V6Bu/A+Jn3+aPxVC7dik4Uk0ufGLU0wr+Z3lDpMxr0cJQ/fvrOgCT8qm49?=
 =?us-ascii?Q?2LvYDDTNSX5gZpYKD5pp21HFNAxZa++7yPXHNXfO6YZXRrJTUtX1OjmVu5sR?=
 =?us-ascii?Q?MuGUu/ul7sXElISw416QuNOjoPmHbE37FoCxGfmxSqrwbn7SoIIseSgRS0kG?=
 =?us-ascii?Q?TGWXa9QxuvQerVVXwws3Mj3Aan8Zsiax2EAmOoe28tm4zwkDYxnZ4G3Ypd+4?=
 =?us-ascii?Q?ZXhu+uXSO57g9mttDmMsVU3TdcqRlJkke4YpPDI6N4BgLwt0HonM1dQy58a2?=
 =?us-ascii?Q?B6lKM7IaNXbJGRB7K75sOx6UMfDm9hgBqtaXbbYJ+/x3PwxzWgH22u7Ou/6o?=
 =?us-ascii?Q?ZoXHXDVdTwP82FI+wOiaRbT+tdbMqESUqxdJriu6voi7XbwQ5q/ZUxIe8g2Z?=
 =?us-ascii?Q?Vl4h+dUVv9Lxk9BfHcICu4En2K1Tk9A05QoN9r93SlxCv2L9qvT/WZi3aIUw?=
 =?us-ascii?Q?/GyfeaP7txgQo8SZd7QmIiEAEoBJlOfgLDJuPNi1d/7dDBb1COYSemE0eUa7?=
 =?us-ascii?Q?dlEmWf1Qymxkm2/Q/IRfdWc1ELAEfZyTZXpwRkCuyz079Ye5KH1d1uYY1qwH?=
 =?us-ascii?Q?n/suhBd1AB2zSuJe5M2VvDPEM4g7RVgUkSHFZyvo9Y/Av4ivpr2boP18SFGk?=
 =?us-ascii?Q?BATRpDu9Q9g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700021)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PbVCb1M16HkA2/H85whjHFR9Ww6GrqQjy0+yCPJtYv8+papRvwS8ydoLW59g?=
 =?us-ascii?Q?/WPd3MOlIRIk7qiEa10I5z07e6xwxtd4BenE7LcCW9XZFy5LynnT9ZPRSbfB?=
 =?us-ascii?Q?EVYfdvqW2XA5iLM0ZIQ1j0jV65sGXt4wjSMZTzlotnut5eyHlBMMF7rMSXcu?=
 =?us-ascii?Q?rHR1DGtAM6VfEWyLGVRcu7kAN3Abpsr0z5rzZfVyUrf/YbcAdRsCn0hv0abO?=
 =?us-ascii?Q?0sxhq5SqUFzM5Jcj9PE+qh0p6tPPJ8L59hdoibPsDhJfwB+JRwsKDwdMf+HZ?=
 =?us-ascii?Q?HtjP59w6GIkjA/xUhJ9Uuc/qppxJCL88O5MjefLNrsY7tQPyF7Sv15OSXnzh?=
 =?us-ascii?Q?8y1nqJVQSdUkagpjmBuEM62ufShh/iBGjnnzQhx5mPffN45ZHaiVXj9yJtM8?=
 =?us-ascii?Q?GOakVadNE30cGDmS6gwKPACWzIAFzG6ugOtitgb0DMea6j37j1BaoCX2lnlq?=
 =?us-ascii?Q?ywq3IdWHRhV0rQ+I+tloNn0LVb2U4yPeTqoM2nIcoOTCWsDWOtnEUfJtfPlH?=
 =?us-ascii?Q?KPMm9CxjmchISoiwDLkNHodE33wnrTB764CnygP1V38DjFQa4LuE4rJOKnwE?=
 =?us-ascii?Q?vP81XEQsS8Eakpod9lXKEqjyhEn9a6Sf/s6qRo9NqVPrmIdzP34H+SsjhHhg?=
 =?us-ascii?Q?v3pBjnWql3YUOhV0t09aUK7Q5l56p4VMaxZlnpoUw25n428puNS56OtBJcd0?=
 =?us-ascii?Q?6Go2hwKJuuQMLVT6Z9ILFIa3FfXj7H2kPUJPlrwS94t1XL6AP2oeuwJq/O5n?=
 =?us-ascii?Q?nHXle1f3UTqUhuN5ZumdtxGVBVw+Hgefgf/5BOkTW4W6gPhCATJw9DLMP9oQ?=
 =?us-ascii?Q?NUUdcJJ+6na2SehKqzdybbTE3Hb3eKWut+BC9AxayLCE9fp2qY7HnQfm9z4S?=
 =?us-ascii?Q?vuNJgyxp2VBvcB7tkATnHbQVROz6HTh42Flkq53e2RPb3x/aA366N9FQfaEd?=
 =?us-ascii?Q?/XSObPZS6IAdoTqL7utKd+IovC2aiICVrwqWFAneh4TFtB7ngaxyi/b9Hbfe?=
 =?us-ascii?Q?E8ip0Jpa2Ps201EMycgw5A5bEWDbxCJTBGC8OixzT92qDaNko9uauLxmv4/m?=
 =?us-ascii?Q?4yKp6be+LpyOEw/HfDPYJKTFf4ZvDmawaeZa+7W2mVmiUnXGy5CG4XqRHQ+m?=
 =?us-ascii?Q?UonvoOtQRKfquS3kMnzxUPihM6Lq/EBp8S/PpyzIAopvHWypxX4PYD9/VJ4H?=
 =?us-ascii?Q?h7V0tvp3k5OC31jd877pSHhx0fJmwH0aN9YbAVqTvcjAGvPZzCBb+OrovJ4e?=
 =?us-ascii?Q?to+vFYRA2/i3I3LgKEB1moK238qH5dQwFZXwN9b1Y/5p3bNfteiNx9qi6HyP?=
 =?us-ascii?Q?uHYkn9VG1a6Ym/FeNMBjw1ZJednfAXliiYU2307FxJ5OOfx9siVUl7pnT03G?=
 =?us-ascii?Q?ibWw5ckkFOSu1Rw2xXE5+rKOfSbnPJ1NUJDz0d8dx5jggw0jw3eElGewItxy?=
 =?us-ascii?Q?VFoZ2yf3aqvtjpfBpirPjA8Y96v4KkNkz5ylRjrd6n6jhXCOW1D+uAJdKYXG?=
 =?us-ascii?Q?VGtXnmyLi+ThL1EsKX4IYE12uZrK7qon3JxvY7PyRLNJNKzW2viAwdMO3tkq?=
 =?us-ascii?Q?PM3o67jF64Ex+O5tOZudr4QP6IyurIrGYX3tHirNqx5cuAVMo+1EF0ic5g/0?=
 =?us-ascii?Q?XZhhMU0PKr/VRYwCwfzRO43wZmSSwuwKUO6QGToz6ifx?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797199FB380E07DCCF2CB89B909ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3927c1d-97f9-4756-5f5c-08ddf0f0be4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2025 05:04:53.1798
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HtTG+VzMatauq/U5HkbV2YMGCDluMiRh6jwB0eHc6WE8n/+V5UW8IXTJtEwCrZDh30+BVDBUxFadMu4UBppNaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8569
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Sep 2025 05:05:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65826

--_000_BL4PR11MB8797199FB380E07DCCF2CB89B909ABL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.12 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/poky-ec220ae=
083dba35c279192b2249ad03fe238446e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.12/poky-ec220ae083dba35c27=
9192b2249ad03fe238446e.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-5.0.12 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.12
Git Revision: ec220ae083dba35c279192b2249ad03fe238446e
Release Artefact: poky-ec220ae083dba35c279192b2249ad03fe238446e
sha: a5f8c2ad491c59d0bdfb85f46a136b0ee66cfdd4359ab1ab9dac2430d0a52c17
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/poky-ec220ae=
083dba35c279192b2249ad03fe238446e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.12/poky-ec220ae083dba35c27=
9192b2249ad03fe238446e.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.12
Git Revision: 93c7489d843a0e46fe4fc685b356d0ae885300d7
Release Artefact: oecore-93c7489d843a0e46fe4fc685b356d0ae885300d7
sha: 49695592179cd777eee337d922aae354dad4ab503628f0344b1b53329900c4d9
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/oecore-93c74=
89d843a0e46fe4fc685b356d0ae885300d7.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.12/oecore-93c7489d843a0e46=
fe4fc685b356d0ae885300d7.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.12
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.12/meta-mingw-bd9fef71ec00=
5be3c3a6d7f8b99d8116daf70c4f.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.12
Git Revision: 982645110a19ebb94d519926a4e14c8a2a205cfd
Release Artefact: bitbake-982645110a19ebb94d519926a4e14c8a2a205cfd
sha: f8d777d322b8f05372d7ce75c67df2db2b7de3f64d5b7769b8051c507161245d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/bitbake-9826=
45110a19ebb94d519926a4e14c8a2a205cfd.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.12/bitbake-982645110a19ebb=
94d519926a4e14c8a2a205cfd.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: scarthgap
Tag: yocto-5.0.12
Git Revision: 82602cda1a89644d1acbe230a81c93e3fb5031c8

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.12
Git Revision: dd665216fa578a1f2f268790d708c6a5d2912ecf


---------------
Contributors
---------------
Aleksandar Nikolic
Alexander Kanavin
Antonin Godard
Archana Polampalli
Daniel Turull
Deepesh Varatharajan
Erik Lindsten
Fabio Berton
Hitendra Prajapati
Jinfeng Wang
Joe Slater
Khem Raj
Lee Chee Yang
Marco Cavallini
Mark Hatle
Martin Jansa
Michal Seben
Nikhil R
Peter Marko
Philip Lorenz
Praveen Kumar
Quentin Schulz
Richard Purdie
Robert P. J. Day
Roland Kovacs
Steve Sakoman
Vijay Anusuri
Wang Mingyu
Yash Shinde
Yi Zhao
Zhang Peng

---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
avahi: Fix CVE-2024-52615
binutils: Fix CVE-2025-7545 CVE-2025-7546
busybox: Fix CVE-2023-39810
dropbear: Fix CVE-2025-47203
gdk-pixbuf: Fix CVE-2025-7345
git: Fix CVE-2025-27613 CVE-2025-27614 CVE-2025-46334 CVE-2025-46835 CVE-20=
25-48384 CVE-2025-48385 CVE-2025-48386
glib-2.0: Ignore CVE-2025-4056
glibc: Fix CVE-2025-8058
gnutls: Fix CVE-2025-6395 CVE-2025-32988 CVE-2025-32989 CVE-2025-32990
go: Ignore CVE-2025-0913
gstreamer1.0-plugins-base: Fix CVE-2025-47806 CVE-2025-47808
gstreamer1.0-plugins-good: Fix CVE-2025-47183 CVE-2025-47219
iputils: Fix CVE-2025-48964
libpam: Fix CVE-2025-6020
libxml2: Fix CVE-2025-6170 CVE-2025-49794 CVE-2025-49795 CVE-2025-49796
libxml2: Ignore CVE-2025-8732
ncurses: Fix CVE-2025-6141
openssl: Fix CVE-2024-41996 CVE-2025-27587
python3: Fix CVE-2025-8194
sqlite3: Fix CVE-2025-6965
sudo: Fix CVE-2025-32463
xserver-xorg: Fix CVE-2022-49737 CVE-2025-49175 CVE-2025-49176 CVE-2025-491=
77 CVE-2025-49178 CVE-2025-49179 CVE-2025-49180 CVE-2025-49176
xz: Ignore CVE-2024-47611

---------------
Fixes
---------------
bash: Stick to C17 std
bash: use -std=3Dgnu17 also for native CFLAGS
binutils: stable 2.42 branch updates
bitbake: bitbake: runqueue: Verify mcdepends are valid
bitbake: test/fetch: Switch u-boot based test to use our own mirror
bitbake: utils: Optimise signal/sigmask performance
build-appliance-image: Update to scarthgap head revision
cairo: fix build with gcc-15 on host
cmake: Add PACKAGECONFIG option for debugger support
cve-check: Add missing call to exit_if_errors
dev-manual/start.rst: added missing command in Optimize your VHDX file usin=
g DiskPart
e2fsprogs: Fix build failure with gcc 15
git: Upgrade to 2.44.4
glibc: stable 2.39 branch updates
gnutls: patch read buffer overrun in the "pre_shared_key" extension
gnutls: patch reject zero-length version in certificate request
go-helloworld: fix license
kea: set correct permissions for /var/run/kea
linux-libc-headers: Fix invalid conversion in cn_proc.h
migration-guides: add release notes for 5.0.11
mtools: upgrade to 4.0.49
oe-debuginfod: add option for data storage
orc: set CVE_PRODUCT
overview-manual/yp-intro.rst: fix broken link to article
parted: Fix build with GCC 15
poky.conf: bump version for 5.0.12
python3: update CVE product
ref-manual/classes.rst: document the testexport class
ref-manual/system-requirements.rst: update supported distributions
ref-manual/variables.rst: document SPL_DTB_BINARY FIT_CONF_PREFIX variable
scripts/install-buildtools: Update to 5.0.11
sudo: upgrade to 1.9.17p1
timedated: wait for jobs before SetNTP response
variables.rst: remove references to obsolete tar packaging
xserver-xorg: upgrade to 21.1.18



--_000_BL4PR11MB8797199FB380E07DCCF2CB89B909ABL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi <br>
<br>
We are pleased to announce the Yocto Project 5.0.12 Release is now availabl=
e for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/poky-ec220ae083dba35=
c279192b2249ad03fe238446e.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-5.0.12/poky-ec220ae083dba35c279192b2249ad03fe238446e.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.12/poky-ec220ae083dba35c279192b224=
9ad03fe238446e.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.0.12=
/poky-ec220ae083dba35c279192b2249ad03fe238446e.tar.bz2</a><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-5.0.12/testreport.txt</=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.0.12 Releas=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.12<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: ec220=
ae083dba35c279192b2249ad03fe238446e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-ec220ae083dba35c279192b2249ad03fe238446e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: a5f8c2ad491c59=
d0bdfb85f46a136b0ee66cfdd4359ab1ab9dac2430d0a52c17<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.12/poky-ec220ae083dba35c279192b224=
9ad03fe238446e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.12/poky-ec220ae083dba35c279192b2249ad03fe2384=
46e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.12<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 93c74=
89d843a0e46fe4fc685b356d0ae885300d7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-93c7489d843a0e46fe4fc685b356d0ae885300d7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 49695592179cd7=
77eee337d922aae354dad4ab503628f0344b1b53329900c4d9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.12/oecore-93c7489d843a0e46fe4fc685=
b356d0ae885300d7.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.12/oecore-93c7489d843a0e46fe4fc685b356d0ae885=
300d7.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.12<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: bd9fe=
f71ec005be3c3a6d7f8b99d8116daf70c4f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: ab073def6487f2=
37ac125d239b3739bf02415270959546b6b287778664f0ae65<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.12/meta-mingw-bd9fef71ec005be3c3a6=
d7f8b99d8116daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.12/meta-mingw-bd9fef71ec005be3c3a6d7f8b99d811=
6daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.8<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.12<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 98264=
5110a19ebb94d519926a4e14c8a2a205cfd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-982645110a19ebb94d519926a4e14c8a2a205cfd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: f8d777d322b8f0=
5372d7ce75c67df2db2b7de3f64d5b7769b8051c507161245d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.12/bitbake-982645110a19ebb94d51992=
6a4e14c8a2a205cfd.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.12/bitbake-982645110a19ebb94d519926a4e14c8a2a=
205cfd.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.12<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 82602=
cda1a89644d1acbe230a81c93e3fb5031c8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.12<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: dd665=
216fa578a1f2f268790d708c6a5d2912ecf<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Daniel Turull<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Erik Lindsten<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fabio Berton<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jinfeng Wang<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joe Slater<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Khem Raj<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Marco Cavallini<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mark Hatle<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Martin Jansa<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michal Seben<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Nikhil R<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Philip Lorenz<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Quentin Schulz<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert P. J. Day<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Roland Kovacs<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yash Shinde<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yi Zhao<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Zhang Peng<o:p></o:=
p></span></p>
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
-52615<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
025-7545 CVE-2025-7546
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">busybox: Fix CVE-20=
23-39810<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dropbear: Fix CVE-2=
025-47203<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gdk-pixbuf: Fix CVE=
-2025-7345<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">git: Fix CVE-2025-2=
7613 CVE-2025-27614 CVE-2025-46334 CVE-2025-46835 CVE-2025-48384 CVE-2025-4=
8385 CVE-2025-48386<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: Ignore CV=
E-2025-4056<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: Fix CVE-2025=
-8058 <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnutls: Fix CVE-202=
5-6395 CVE-2025-32988 CVE-2025-32989 CVE-2025-32990<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Ignore CVE-2025=
-0913<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-base: Fix CVE-2025-47806 CVE-2025-47808<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-good: Fix CVE-2025-47183 CVE-2025-47219<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">iputils: Fix CVE-20=
25-48964<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpam: Fix CVE-202=
5-6020<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: Fix CVE-20=
25-6170 CVE-2025-49794 CVE-2025-49795 CVE-2025-49796<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: Ignore CVE=
-2025-8732<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ncurses: Fix CVE-20=
25-6141<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Fix CVE-20=
24-41996 CVE-2025-27587<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Fix CVE-20=
25-8194<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sqlite3: Fix CVE-20=
25-6965<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sudo: Fix CVE-2025-=
32463<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: Fix C=
VE-2022-49737 CVE-2025-49175 CVE-2025-49176 CVE-2025-49177 CVE-2025-49178 C=
VE-2025-49179 CVE-2025-49180 CVE-2025-49176<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xz: Ignore CVE-2024=
-47611<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bash: Stick to C17 =
std<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bash: use -std=3Dgn=
u17 also for native CFLAGS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: stable 2.=
42 branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: bitbake: r=
unqueue: Verify mcdepends are valid<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: test/fetch=
: Switch u-boot based test to use our own mirror<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: utils: Opt=
imise signal/sigmask performance<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to scarthgap head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cairo: fix build wi=
th gcc-15 on host<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cmake: Add PACKAGEC=
ONFIG option for debugger support<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check: Add miss=
ing call to exit_if_errors<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/start.rs=
t: added missing command in Optimize your VHDX file using DiskPart<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">e2fsprogs: Fix buil=
d failure with gcc 15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">git: Upgrade to 2.4=
4.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.39 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnutls: patch read =
buffer overrun in the &quot;pre_shared_key&quot; extension<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnutls: patch rejec=
t zero-length version in certificate request<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go-helloworld: fix =
license<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kea: set correct pe=
rmissions for /var/run/kea<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-libc-headers:=
 Fix invalid conversion in cn_proc.h<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 5.0.11<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">mtools: upgrade to =
4.0.49<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oe-debuginfod: add =
option for data storage<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">orc: set CVE_PRODUC=
T<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual/yp-=
intro.rst: fix broken link to article<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">parted: Fix build w=
ith GCC 15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.0.12<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: update CVE=
 product<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/classes.=
rst: document the testexport class<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/system-r=
equirements.rst: update supported distributions
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document SPL_DTB_BINARY FIT_CONF_PREFIX variable<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.0.11<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sudo: upgrade to 1.=
9.17p1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">timedated: wait for=
 jobs before SetNTP response<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">variables.rst: remo=
ve references to obsolete tar packaging<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: upgra=
de to 21.1.18<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797199FB380E07DCCF2CB89B909ABL4PR11MB8797namp_--

