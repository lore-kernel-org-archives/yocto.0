Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C8BC98302
	for <webhook@archiver.kernel.org>; Wed, 23 Sep 2026 01:21:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.2146.1790126496548590879
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Sep 2026 18:21:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=FWSJHYed;
 spf=pass (domain: intel.com, ip: 192.198.163.9, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1790126496; x=1821662496;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=vNArCpxlKXOSyj/NzsYWuhSVjdnosYSAy8Y82wJ+vG8=;
  b=FWSJHYednbD5KTqmEdICmH2YlW414eEEWYygqHfwYby7wCh20PEKmAZe
   J/zJ/cRlobfMFRzH/LCUUF5K3bpFL1GEVNWUXuy8Zu06SICSu7/nyiEas
   YFxgNtcVWCYKQQjn2p1h9McMiSLY/VYsBXV7j5OU+ADlRHGY8LVXKKrqT
   Se+VLtCpbspV77y0cLw6hpJ6zdNSpV6bt7seWQ/kvA43UibUJ2X4LTskW
   yCs3ziCzaef4XynjZTI9cOofIifTjOUoRF9ACP+XUJIp93F90LxSGJYvk
   CDM5Niu5dIpDO6OwgAWBBwdeZT23eXiWfvGwFYKj9CPwfWIWNzQVjzGad
   A==;
X-CSE-ConnectionGUID: A0UOP8n0TiqLYl5Kryv5Wg==
X-CSE-MsgGUID: wgSaZwKRSDiwiMrMGKm4AQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11913"; a="101442802"
X-IronPort-AV: E=Sophos;i="6.27,117,1787036400"; 
   d="scan'208";a="101442802"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Sep 2026 18:21:36 -0700
X-CSE-ConnectionGUID: J3z5atDoTtORi/w1k1yvwA==
X-CSE-MsgGUID: 5fBgDX2bReSMZ+kfR8cO7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,117,1787036400"; 
   d="scan'208";a="278136363"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Sep 2026 18:21:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46; Tue, 22 Sep 2026 18:21:35 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46 via Frontend Transport; Tue, 22 Sep 2026 18:21:35 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46; Tue, 22 Sep 2026 18:21:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=udCzW0TfM450i9MUHcSni5DjrBygig0yUhKyrZEfDkCZBR8/gVjKW34T/MAOzZZybWUnaEFBnzAXXzGq4as3kjv2KWF5zWiE+OfmGoAqFs9bHy7PyykLlmaXA2YUFt9NbCdORAoChxVBgDYbEuNw8FEmROHaTgIt+pGbLSneBsf6yR//C67Z5nHBLJfkxJi6mLlZSNZiF5Dx8hApx/i+AnNlWFrzyakNVlGDB+FM1VMj8cJMeyzU+hEIZglpLnKRoGloyjiq59Fq5n8CXJO8laVSJLLKBt2rEBaA+KrOTuAc71cL78RZqzwfTdXINqytCFFGoLhWZw777xP85S5Mzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vNArCpxlKXOSyj/NzsYWuhSVjdnosYSAy8Y82wJ+vG8=;
 b=JieT6zJdi+Q+DsuY0hIrCEwJhnKK1S62KKAl91ar+5IGaNeKCBv6UM4x1TJ1Dw6GK9BMth9DazBq4FuMHOIoztv/ZkAYjRpYopyO5uL/DkiF8cv+AviTNYSLpa4ALgUPmpGMLjaLCY+D4rj1jdS+G6Z4h6WPX1UGdRQhcOI9zUfdjtEl0HaICoyBYl4LZQCGzqPzHMcW/CGmA82ZidydEggSz1X41l7Wc8kDwYrwSSOVt2HmXQFswN1O5OLFwFwSjQDfc7FdChDdWJDZsnscdxb06lzSuU3I6QmocuFFK/0/IPEmkRIHj7ogjrW5ZZhbofaj9GY6C4MvKcmsLss0Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by DS0PR11MB8717.namprd11.prod.outlook.com (2603:10b6:8:1ab::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.451.14; Wed, 23 Sep
 2026 01:21:31 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%5]) with mapi id 15.21.0428.015; Wed, 23 Sep 2026
 01:21:31 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 6.1 (yocto-6.1_M3) Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 3 for Yocto Project 6.1 (yocto-6.1_M3)
 Now Available
Thread-Index: AQHdSvi2fWMin2udOEuqhWMjyMHZNA==
Date: Wed, 23 Sep 2026 01:21:31 +0000
Message-ID: <BL4PR11MB8797CF0A3B0EC84C1B24B0D4B9822@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|DS0PR11MB8717:EE_
x-ms-office365-filtering-correlation-id: 2f676cdb-99ef-4e56-8b70-08df1910fff9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|23010399003|376014|11063799006|10067099003|18002099003|56012099006|38070700021;
x-microsoft-antispam-message-info: asgFEYLHbYyylKp5WLoS5W+skv/xbRWkbAl8+WVhGuwKBGcw1neI2l78NxJxGHNxGBJsWCSDZOUkUgSgjmXHo5KDiQ/cN7cXzXN+Uvk96fI4emmdwzDKA8aHa5/I45BT4KfT26wXYksL2cEIFvFupeEjq+F4/dgNq28ux0tw7o5Pcs3MDA6JU1z2JJBUT14BjVGwqmoegfTafzBNINGaAnUZ6dGg77sH24r6sC6By6zahSHn5B1zxeYWahhCmJQekRkSsGNsSPrr4ULSC0x0GKo6c/XrGy3XTAaTnIyT5mTd+Q7avl41IM7AV7FbZ6v0+I0QPwIEfsg1of+AXVEQR/kfVCDe0n330TOKPtJdzK6PsXVO0IJ80Z7MZsuiQ2ebdgiAWlia/O21NaX7oc3zaRDsYWOesuRcFkGqEGCgTyeDX8NW/ksViQzAxRicO+sCO/vAgMWpUJ1aCQmy/3acRLQF1/qZAvL8KvGZWa42yDMuIglWeaNZ0Q2lSWG2NbEDUFev/1zO5b/Dbds1HeWbdUuT0obryUDFzsPpN8gYuorxQRFeMyIKrLlBhqyj3udzp5SfV62eDbHjt4ekfGZSICPTlDAOvsIOMUFbqUzUgAtCR2112gjhd5wDmq9dUZc5HFS1HGaAf1es9DSe2t5mKgkBw9pW8qA0pz13BWtXTIg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(11063799006)(10067099003)(18002099003)(56012099006)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Ue2Wy7YpjSJ1jhIdZ8txW7BJHSK0f9QRoAP7Bp/+X6LPXXfTi0hYRpJI3J?=
 =?iso-8859-1?Q?BusldHhbd5T1g/dYk1gQ35hQOlebh1FX+4ALrUfe+4/x4p/1NTcgRx9TTI?=
 =?iso-8859-1?Q?vZ96CxwQvI6VRAvhu8+IdSwrSBSkm9LStfRtAR7ujdbdZyvjxyR1QF1YZA?=
 =?iso-8859-1?Q?j/wTl2bw+xdJJaMklQNDZC9v+5ig9m1FWE7cExvPO9A6T7m2pZfrjIylEB?=
 =?iso-8859-1?Q?IK80hRi5AGoFUunpdB1VvTESUyBc9aKkSblThhZDutRLv5zPlgghEHeWjk?=
 =?iso-8859-1?Q?PX07qIOqpbPlPxEcGS6BXmX8IDIwv9D3nNXY6b+YS3cr7z5ofXPSLzBmh7?=
 =?iso-8859-1?Q?zNOHHHfDVpBiXko3XlC1abXrzhndpXCMvD3/M8tPOWv8uztplLFnX8txk+?=
 =?iso-8859-1?Q?10DPMoowOr+q6Pi7y0tUavwQuA/hhpRbOcwvwoQU3gVtMWfekefWvkNBEg?=
 =?iso-8859-1?Q?2XyGlL0XlsmY/nKmCnyOQ5PmBUuDeVUOf0gQqYotq/EGng9OEh+WTtYPfV?=
 =?iso-8859-1?Q?6dPDicIzENxrwWhUsCfrEItK9fI6w+8zA3udu4anchJBBYGKYu+B5ejzpl?=
 =?iso-8859-1?Q?prn0ZTAKM/V+Yp//TleXG88mE2Yk0SoSaI+etkDnvg78D/QKobpemBq+6e?=
 =?iso-8859-1?Q?Bn3a2Men1bruRpt6hzCLL8spRuqkssxtW//afXlarmlxWG12aNZZM8vVBG?=
 =?iso-8859-1?Q?3C0Q9pUl1+bkL41AavE9c0Iy1RV6c4HM4+b1w60dNxJRqvIVnJLl08DgP0?=
 =?iso-8859-1?Q?qsQocmOA2b8y+WrONGQWGZnCRjjppfuX1QYS/SyOBADyj4izXulq8U75S2?=
 =?iso-8859-1?Q?NhyFWwa1cyu7jd04StmagaqsQVWKhhfW625DbM2sOSbGIOFhNjPy1sPUDk?=
 =?iso-8859-1?Q?8uDI+6FqwVHUcYkRhzy002WiMzJ3p3OMagYkbJfLncec6vOYFYUyXyheaH?=
 =?iso-8859-1?Q?Rh6oEeKWOpHRktGT3PxsUgXY357Q8Gcqh3oKL0xzAbTIWGsl4m8tjwpMha?=
 =?iso-8859-1?Q?LMdyGh5XS1gMhm6NakqtjkvEAPqYB04ErE2dJaGmWKtMoFD2qVxBu6G5fd?=
 =?iso-8859-1?Q?LEDrj+CPplJaC26uplAqMTyKia6WZHnoCZCm2AARoMy++mP1u5st+bRtk6?=
 =?iso-8859-1?Q?v3DeW88TBpoy7dAODPMl+IODBAmw5pvAYU+9zLo2rLpoRAeQYb9Z3eyLpU?=
 =?iso-8859-1?Q?5PeHQ2bl8MAB8EW4WVBqt+9ICEq6smkYEFHjkHlgVx6tvrdnj8OVgEerME?=
 =?iso-8859-1?Q?xAG6znQsSmqQDHBKE+66p+9q8h8TxQbDwjelM5sn3SopGB8f3SxnxLlTac?=
 =?iso-8859-1?Q?XB3BNIImcHYkWoj9PXH3bcJx7v2fdy4o//qnDBbZykPrF8EMGp4h45E8wH?=
 =?iso-8859-1?Q?CprjAFIybl4M78THHsrvNOlkzk8Qz+wf48KPNhuimeitSAL8uJOIIIL2I+?=
 =?iso-8859-1?Q?bnp9T0iFYkunsAElma8ScZbv/Y/MRvcoqxT0ysU/zvkrtVSaQlW4fRHiZJ?=
 =?iso-8859-1?Q?jGdcLV66BJyq9dXjL2GcrtgjFLwswlzcImHRjLCmdkoGwphA/0Pc6hoUSm?=
 =?iso-8859-1?Q?XKcnMQ+UlTlA7dxo646p8HLJCp/i2nEdkYaZyZhgJpSW4jpHs8OvI5ppmj?=
 =?iso-8859-1?Q?2Z0n9LRRilLYLa8DUZbHMOEeSf7m+YUCXrT8U0Kox6pFQbsVBImirtGlaO?=
 =?iso-8859-1?Q?2P5xHSQq1Ei9dCBxoNL0A/n9pk56pu0et4THPLwa+riKZtoj/AtihtUgoG?=
 =?iso-8859-1?Q?vCI5kIWh2tUOCewbNE4M4N1mDMC/m6RiJlkc9WGo3mF/woBPILO/5KUR9R?=
 =?iso-8859-1?Q?gfof4ZuMBA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lJDQrXGkgOVYIhIuMoSSShAvvCYatMtdYkNfrdlLARZyGI6sx2IHFqVqxOLbBEdRrrch0lVEZyKbvmX67/rwRrr4LOUMUhd+dBJi4rguEYaPXCyxr1xoAbGfRT001IEuhKiIYLD3RUjDE4eueVfyNMdrgrF8zkHRl8U7BJS41oHntfuGf22Q7Jl1IMdyv+Hn6Npkj1VQwTqz53OO5BTMzsnEDFL348ryPeI2iENBa6O68eo2gnKsOWLGMYz9OWa9HZ5WRmDirBko8H1+hkqzsFziN4AzL/mpDM7wgJGkvu6dihSxBfSBhxA/RhkPOHUB9aJfaEPD35vyI49hIVAv/A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f676cdb-99ef-4e56-8b70-08df1910fff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2026 01:21:31.4428
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PCiQjadqIDo8r2jZp0pr665LRlWFJ/aJD0wY9QDtFnAbCf1O4Un1YhfohXsz1/0nhA3p/WbPztPqRmljCarwuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8717
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Sep 2026 01:21:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66739

Hi=0A=
=0A=
We are pleased to announce the third milestone release for Yocto Project 6.=
1 (yocto-6.1_M3) is now available for download.=0A=
=0A=
Download:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.1_M3=
=0A=
=0A=
bitbake: fae9db3168dbff1b8c76fe9c6726a9687ff97514=0A=
meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc=0A=
meta-arm: 0979b80429099f1a42dc0026c8c466cee780bc74=0A=
meta-aws: 5e7cc95f7d55a0ba0ae6a7e6e43e6323811a140a=0A=
meta-clang: ef0d22f21910a0c30c967eeb17d8f209806e2d81=0A=
meta-intel: 79a9681ce83f6bf36aede3aeb8c1707d29bca329=0A=
meta-mingw: 5876c193da3ad86b5e23012374b5350e49b0c755=0A=
meta-openembedded: 6bf0d8ad57b33950bab4c7f6c037e1ccb6f6e2eb=0A=
meta-qcom: bfa25fcfda87cb483aeb8259494b0a7ba65f7422=0A=
meta-virtualization: 30f1a9d7e5ef1b41c64ff4c3c40951133d548ed8=0A=
meta-yocto: 1b132647002eea43a2c7a7f857f63f42dacbc26c=0A=
oecore: ef022bf82d79015802309d14c28b13373ebe53f5=0A=
yocto-docs: 5b1ff88511d90634bb3077b878176de577464e12=0A=
=0A=
=0A=
Full Test Report:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.1_M3/t=
estreport.txt=0A=
=0A=
Thank you.=0A=
=0A=
Chee Yang=0A=
chee.yang.lee@intel.com=0A=
Yocto Project Build and Release=0A=

