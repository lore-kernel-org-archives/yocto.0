Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58EA9111224D
	for <webhook@archiver.kernel.org>; Thu,  2 Apr 2026 01:34:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6506.1775093639308990607
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2026 18:33:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=FD2Nqcnd;
 spf=pass (domain: intel.com, ip: 198.175.65.14, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1775093639; x=1806629639;
  h=from:to:subject:date:message-id:mime-version;
  bh=B6TImMZ0GpqMBCaBNEZGmjo8Yomn5yWgAUU7VmmnpQ4=;
  b=FD2NqcndJVJo0ezlsOl95yP1OfCdgzSa34F87lbbnq4FFwMrnP4xNfNx
   VplASop5DY1QbEd6DdMVg0r7BqC4EjV1kkg8CetHasU1ZHVlsIg92l+wL
   A0AWoXSOJzjcXhsMpskslvGqmSGclK4dyyMbPQKkxnxY+hpGruu+OF0ft
   3ju8jF6Ey3kw9klzhoj7G50ga/KeG5hrWHoqMwEdXwa1A80yJOIrdjZYS
   +E21IQ9R+gWVdTQ98aEFdFLzyc/Dp7itJ7jorgAxa47HPmwtVjOv7ulRb
   vKMxAP3rwqaviYBqTXW/hB4sRU2Ii2NcQiqTejYa1hnREt1aBqoABR6R/
   A==;
X-CSE-ConnectionGUID: 0FeHWCLuTKaciTu3jijXRg==
X-CSE-MsgGUID: QEfabidjTSyhxx8KVuLCVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="80004882"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; 
   d="scan'208,217";a="80004882"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2026 18:33:56 -0700
X-CSE-ConnectionGUID: 2SUJUciLQyyfAIgYKrPMiA==
X-CSE-MsgGUID: nzlHqHtKTNGwwdV4MZ5tRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; 
   d="scan'208,217";a="225826811"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2026 18:33:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 18:33:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 18:33:55 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 18:33:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gMJ+QcEUFdfKCAd9Cz+PkVULd9KW+qHO+8fXNJvIWsJxtxZCBLiq1KEAPqyfDyDgOJUhb7TeGeJwhwCWtxrXAXD5tmdfVycGvB9qmUpo8FNa8tqV4+Nz0zTvpfTjc1n3NHEXPyj6gcCupNp9KJJf3TKnLl/NVwB5gvM5H0KtZ5Vf12VNHpWS8PvdyPgvswaOtdLFfWDtf+Hkrh6AghdAi3utzUCZfFgOleG/4ulBHQa0rvxTKDBv9nQOhxtr3lPttEN4p+mNdxjc88GXw8AiYkTtN/BXHauQymAS7TramYX2U0Vo7S17j5U5bvgJMgfSpcBpnc4rD6BnqiHuy5nFJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B6TImMZ0GpqMBCaBNEZGmjo8Yomn5yWgAUU7VmmnpQ4=;
 b=K2FsIoENE74urr0XIkzj5Xc3GXu6plvtF8frcHJlCDeq2ouh9rpdoCPurEbil1VZ3hU63jdUaF3FU1j7j3oI7OyHtSSSB0L6mrV5rsLoV0J0n8UOHcotnrmHRfQNas7r2A81/BgZMlXnlpHBH63PDRQQwIFE7xWp/reh+sm1Wq86ZSnT02q729xcvHtyDXExcIRqaGG0XQ8/uA90M2zmwMOSzJWvFlrS52AmrhksjSVDKYeXPJ6Au+sWZbuhNAtM7QPK27oM6zgfAHfS06c3TLbGweCFZqZoYnCefHjr2ZHql3zbbjK6lde3XdhkzBC7xHTJaJlfTSiFdGiPfBGOdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.7; Thu, 2 Apr
 2026 01:33:51 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.20.9769.015; Thu, 2 Apr 2026
 01:33:50 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.3.3 (whinlatter-5.3.3) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.3.3 (whinlatter-5.3.3) is
 Released
Thread-Index: AQHcwaHAu/fvKyvpcUCWNhEfKFrVDQ==
Date: Thu, 2 Apr 2026 01:33:50 +0000
Message-ID: <BL4PR11MB8797975279ABF98D5975AEDDB950A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|MW5PR11MB5812:EE_
x-ms-office365-filtering-correlation-id: 92913cba-322d-4c7a-940e-08de9057e4cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|10070799003|1800799024|38070700021|13003099007|56012099003|18002099003|8096899003;
x-microsoft-antispam-message-info: m5fH6WIzkw4kwhOcqrs/HHPXIJQ9BH7fNMpvyqonNCUMmT1rvWoFrliWzW5fI5hNcZgQyvB65LsNq/eV3+XMAy55XsxArxl11KnrLr+buMprx373D0LWf5jO1vc9X4jiXVrhDn1jH9Srr5SciCg1k1NNHkt7+D6a4jhLAjrmAmGa0jpuoBAcIKVc4hbGrxDJXyHu/YH+3mh1VEVigV7xRMRJX9CQqpFTQuHhWZP/vYL77tGzOoVS/VoNZglsio2uU9WatBuGE0gh1frhqdj4WvTkidf0MXG7DSrH1xJJxklUeYbLjqgJQ5MBZ+eYKA0vmcoiT2YObhD/ahVSRyaapzJXpCjjx4HTD0XWvDOk9ARdc6YV32kjp0ZwMDYhIrAOLB2U1f60Rj94fceEnqlFMKpJ8kZzjP4pJoFXDcNC4kKKskRaHKgdtT9V4/Hyhs5tHOWQTaQNmSPh35vcO2Dls2VyUBP0OBe/2OPdhAsbduoetEImGiUiAcU0c48Glw6w2mQ6PB2JFqPiVOvKF35RYbi3dT2rt3Mlyftbd6zDX59E5f2kjujrgpRAMVW/P5yk/GIP6WPrPYp8JH4oDt2gLETBlrz/w77RGm9hJojvj6TaQRwUP4stcd2jrBazwfSj8WLLchap+PRuq6ywqYIr8LrnejbmmoilcXxF3OuXFYWvMYq0pfIEW1WQV6Ii9QfxnDYinQYCIPPWfYigP98PBML9aKzNkwJg5ziGD0HEjiY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021)(13003099007)(56012099003)(18002099003)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?qE5qKUowObiDTXjmlbLaQznxicUMylvG8kpEWxWBCOj+N6NlDCacSezsV/?=
 =?iso-8859-1?Q?SGnbpwODVHKTmWd6gt4JhnlCEFNXldF7gG5nuBsjOCsV+aSmu1SqlygIEJ?=
 =?iso-8859-1?Q?oN6L3+xBeqqTYx9jb8po3Mis7YHfze++b4dMxb2bFgF46Ky5qp6vB4cf6q?=
 =?iso-8859-1?Q?nD9NYXd/41NxcILj+XmZqNAod94rUQJYDlzuhIop31ULxbUY5nzqQCI0Su?=
 =?iso-8859-1?Q?6VrHb1QvZCfGB38qBX4SyU1JRDi/SVYf4zpaJChnfc4LQoMfPy2GxYdJtz?=
 =?iso-8859-1?Q?DL3FxYToNJQbvYpu/7uK280E9NfqBOhCRh8taaQymj1v2RCU5cR0U3Ka/D?=
 =?iso-8859-1?Q?bufw/45TiIqrn2400LtrKGngv5WWkLGgYGomNx5GOn378TzCcg2LvLHTnV?=
 =?iso-8859-1?Q?3HX0G2xsePwsCfmnbmBRaWad7MIS4Ta6dNTQu/JDftKwBEkqVOY3CCCcaV?=
 =?iso-8859-1?Q?VVjngdX48n0tASsfzkAi0sZ6JccMAODQlN4V6ZFqENfQ8Ynojs058/jRoZ?=
 =?iso-8859-1?Q?n5e/noY0L4AcU5eHGc/0YT7VkViKY+/Jg81dugw1qW6dRzeMKQ9j9n0pMk?=
 =?iso-8859-1?Q?MPLBIbZ6jfSdBB3Z8OXnaR3YfhpWvsakBZwu9rT3S8WlBLC2QMFuPFIkTw?=
 =?iso-8859-1?Q?BgRTnDn73//OLn8e5mdkA+SmcoZMdOAkoVz/tXbVxbeDtE8+s0kaS77rjQ?=
 =?iso-8859-1?Q?McT4OD0ASCgS40/idDf7Wuz3WC2Am/5MWvY+SLXb34FLaJvF6sPeOTcIyj?=
 =?iso-8859-1?Q?rlxRgtiePWA2xvYp+jIWFOX8qtX0hIPhGWqlnj0y96O5JSqa+UdIJ361/e?=
 =?iso-8859-1?Q?Wr0AHoOA9kpgk8lWzKj9oACXplPUu2d+qw6k+glrWtwHNM1bufoyObfN3v?=
 =?iso-8859-1?Q?Oi7T5BhRdZPS1b3o26lS/omf5QrJ6mJtBeHHsWMqEGempVCgb3XN32QnPM?=
 =?iso-8859-1?Q?zxPjtTqKTQJ3Yv0VVxrOccskkbePMUCYgOIWaFHrKDiWjgbb0wgXwxtLEW?=
 =?iso-8859-1?Q?DjsbZH4UrKzfze+WmrDTf52Q2Pi41SHel0e6643p0Yhf2mH9OVEkgD40gW?=
 =?iso-8859-1?Q?TV16LhmIvZq194AxPjB/RtfZMWS6pYhQePcSkOyStG+4pBLXMnYNe5PZHP?=
 =?iso-8859-1?Q?3cT5mdqXrRjm2Ulh0dCZmOnd5ErGS2fT8r0d+8vZRoNmY3RR9iIOmfmiDw?=
 =?iso-8859-1?Q?942Rj5+U4671/woFhasuPjV9UjHfgZdRGEddDHJLPzrgoO+paZlNqRSaHc?=
 =?iso-8859-1?Q?9ZxF4U80VLfQFSCFcHt63eBAT92p7+XaU0qDZfm2LTHWzxaQKvOT7jPHcx?=
 =?iso-8859-1?Q?V1lDQCLdWDdc8P/iVNSO5WanB1VQ0+ACGMtPoYU+8qyjAcnfrZt0Ecj1Ff?=
 =?iso-8859-1?Q?JdJ5yxeO8GnFRkfh32kU/qRhSb31SE2Cnm7b1dxaos6pwtVmc8cFMsGb3L?=
 =?iso-8859-1?Q?cmi2C7HZARTsNpYz7sRGoZMjWRfzQe052R/dMhDw5PFNLWSnDnn1KHNGQt?=
 =?iso-8859-1?Q?se/mx1twLVaZCViOSKb8BXDpudbk/hqMrPRtHDoRyzj0zfG/IkeZ6T8lgg?=
 =?iso-8859-1?Q?HY6dZmR0t3tt0nK3/yEokxeYmiOqpnaS85ZInO2aa/3Rxk953RujEjLc3S?=
 =?iso-8859-1?Q?tIjrvzkOdsZJNINLyCoLfDyQty02TLpT7RMbIY6Tnqbu6ACcbAyELOdGHj?=
 =?iso-8859-1?Q?XePAykIjBkaUFM3NcHKHge83xf+K+xiZZvyt/+RBPWjcZMD0C9TC2BUb+/?=
 =?iso-8859-1?Q?i9zS95sVRU8IPHjSguK3qOLa9OLm0QBnzDXyGR9qufxqmgS4aXVyOP4Cp4?=
 =?iso-8859-1?Q?TI+AA1PusOPHHAnSdWwwSTndyxVh7nxL427dtX5wwTKszQEYrlKpCDSKEZ?=
 =?iso-8859-1?Q?qx?=
x-ms-exchange-antispam-messagedata-1: EQ20xtwhqKNa0Q==
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797975279ABF98D5975AEDDB950ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nSn+2ieTWgFpXDnKeSRILU9ZHnvA8wYIvCCbAR5NFXzcW9QCWfN89/zqK8Y+jfrlo+pSVSmUbtErFW6JjjgRiXCCNU1YAi5lWptTmGH+WRsgvsK+qz6a4GUYcl+fhNz3reipqtvGhHwNQPYf9DOi0ReCtAGRtjimywNLm+n0t3PxIOcMBWSRQaU6ziv1wUGEf0+FNLxaz4iO5b7oB7WCWwPJeXHRhGptXtNTFvaN5Ay+NOlKMjWTAlst3GQ+edprrDdAfLXXWvX22lRklXxHYqnIl2OXLAEs/P0k8qhpSqxkCgCjQtuXJcCoLOU65qqJJ/JQ02YS5VfaTHHih2PeqA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92913cba-322d-4c7a-940e-08de9057e4cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2026 01:33:50.7981
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SrITqkZ5G0BucpLcvw5JAUAwAzXGHCvbih+uLau5P0Tu3lFbr9M9YyrLLU7zY5W3Of8xMuMBeVEXxHB5JNON6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5812
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Apr 2026 01:34:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66379

--_000_BL4PR11MB8797975279ABF98D5975AEDDB950ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.3.3 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/
https://mirrors.kernel.org/yocto/yocto/yocto-5.3.3/

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release


--------------------------
yocto-5.3.3 Release Notes
--------------------------


--------------------------
 Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: whinlatter
Tag: yocto-5.3.3
Git Revision: 82bd1a71e6e6a707d0009725969976cf2256af36
Release Artefact: yocto-docs-82bd1a71e6e6a707d0009725969976cf2256af36
sha: fcf7020e34198f3b89077f9649cec579f4d23228f7f0a3a28a21c6b5b3649857
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/yocto-docs-82=
bd1a71e6e6a707d0009725969976cf2256af36.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.3/yocto-docs-82bd1a71=
e6e6a707d0009725969976cf2256af36.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: whinlatter
Tag: yocto-5.3.3
Git Revision: ab57471acad7ce2a037480dc7b301104620f1ebf
Release Artefact: oecore-ab57471acad7ce2a037480dc7b301104620f1ebf
sha: 63ed486722e186d517e333c204def0a7bf578ca78bdeb2ad982625c49e7ee833
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/oecore-ab5747=
1acad7ce2a037480dc7b301104620f1ebf.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.3/oecore-ab57471acad7=
ce2a037480dc7b301104620f1ebf.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: whinlatter
Tag: yocto-5.3.3
Git Revision: 9b98ec5e6cfb6c9dc74d3c2e6304eeb274f7c487
Release Artefact: meta-yocto-9b98ec5e6cfb6c9dc74d3c2e6304eeb274f7c487
sha: fcb81c6835036c4157b16dfc9f6d8c5a7dd0ed7ac72f59be238e99b486b1f8fa
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/meta-yocto-9b=
98ec5e6cfb6c9dc74d3c2e6304eeb274f7c487.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.3/meta-yocto-9b98ec5e=
6cfb6c9dc74d3c2e6304eeb274f7c487.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: whinlatter
Tag: yocto-5.3.3
Git Revision: 00323de97e397d4f6734ef2191806616989f5e10
Release Artefact: meta-mingw-00323de97e397d4f6734ef2191806616989f5e10
sha: c9a70539b12c0642596fde6a2766d4a6a8fec8b2a366453fb6473363127a1c77
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/meta-mingw-00=
323de97e397d4f6734ef2191806616989f5e10.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.3/meta-mingw-00323de9=
7e397d4f6734ef2191806616989f5e10.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.16
Tag: yocto-5.3.3
Git Revision: 7af7e04f3adc8ba144d9e2e6b37ed4ddb3b59df0
Release Artefact: bitbake-7af7e04f3adc8ba144d9e2e6b37ed4ddb3b59df0
sha: 06dd68908a5ffafae46ff7616e93a80f8b73c016f541e9517cf63b05f52f15c7
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/bitbake-7af7e=
04f3adc8ba144d9e2e6b37ed4ddb3b59df0.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.3/bitbake-7af7e04f3ad=
c8ba144d9e2e6b37ed4ddb3b59df0.tar.bz2


---------------
 Contributors
---------------

Thanks to the following people who contributed to this release:

Adarsh Jagadish Kamini
Ankur Tyagi
Antonin Godard
Benjamin Robin (Schneider Electric)
Daniel Dragomir
Fabio Berton
Hugo SIMELIERE
Jan Vermaete
Kristiyan Chakarov
Liu Yiding
Livin Sunny
Martin Jansa
Michael Opdenacker
Paul Barker
Peter Marko
Quentin Schulz
Richard Purdie
Robert P. J. Day
Ross Burton
Shaik Moin
Vijay Anusuri
Yoann Congal

---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------
alsa-lib: patch CVE-2026-25068
busybox: Fix CVE-2025-60876
ffmpeg: Ignore CVE-2025-12343
freetype: Fix CVE-2026-23865
gdk-pixbuf: Fix CVE-2025-6199
glib-2.0: Fix CVE-2026-1484 CVE-2026-1485 CVE-2026-1489
gnutls: Fix CVE-2025-14831
go: Fix CVE-2026-25679 CVE-2026-27137 CVE-2026-27138 CVE-2026-27139 CVE-202=
6-27142
harfbuzz: Fix CVE-2026-22693
inetutils: Fix CVE-2026-28372
libpam: Ignore CVE-2024-10041
libpng: Fix CVE-2026-25646
linux-yocto: Ignore CVE-2022-38096 CVE-2023-6535 CVE-2023-39176 CVE-2023-39=
179 CVE-2023-39180
python3-pip: Fix CVE-2026-1703
python3-urllib3: Fix CVE-2025-66471
zlib: Fix CVE-2026-27171

---------------
Fixes
---------------

oecore
-----------
README: Add whinlatter subject-prefix to git-send-email suggestion
avahi: Remove a reference to the rejected CVE-2021-36217
b4-config: add send-prefixes for whinlatter
build-appliance-image: Update to whinlatter head revisions
classes/buildhistory: Do not sign buildhistory commits
create-pull-request: Keep commit hash to be pulled in cover email
glib-2.0: upgrade to 2.86.4
gnutls: fix postinst script for ${PN}-fips for multilibs
gnutls: use libtool to install test binaries
go: upgrade to 1.25.8
libpng: upgrade to 1.6.55
linux-yocto: apply cve-exclusions also to rt and tiny recipe variants
lsb.py: strip ' from os-release file
lz4: Remove a reference to the rejected CVE-2025-62813
pseudo: Update to include a fix for systems with kernel <5.6
python3: skip flaky test_default_timeout test
scripts/install-buildtools: Update to 5.3.2
wic/engine: error on old host debugfs for standalone directory copy
wireless-regdb: upgrade to 2026.02.04

meta-yocto
-----------
poky.conf: Bump version for 5.3.3 release

yocto-docs
-----------
Makefile: pass -silent to latexmk
dev-manual: delete references to "tar" package format
overview-manual/concepts: list other possible class directories
overview-manual: escape wildcard in inline markup
qemu.rst: parsing of the code-block was not done
ref-manual/classes.rst: fix broken links to U-Boot documentation
tools/host_packages_scripts/tlmgr_docs_pdf.sh: install perl
what-i-wish-id-known.rst: replace figure by the new SVG



--_000_BL4PR11MB8797975279ABF98D5975AEDDB950ABL4PR11MB8797namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
We are pleased to announce the Yocto Project 5.3.3 Release is now available=
 for download.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/" =
id=3D"OWA6503a1a8-c2b5-60dc-f532-be0a558f5f4c" class=3D"OWAAutoLink" data-a=
uth=3D"NotApplicable">https://downloads.yoctoproject.org/releases/yocto/yoc=
to-5.3.3/</a>&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.3.3/" id=3D"OWA74=
1287ee-757a-8157-8e95-173681ba0d50" class=3D"OWAAutoLink" data-auth=3D"NotA=
pplicable">https://mirrors.kernel.org/yocto/yocto/yocto-5.3.3/</a>&nbsp;</d=
iv>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
A gpg signed version of these release notes is available at:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/RE=
LEASENOTES" id=3D"OWA27a68765-2097-2ac0-dbed-3ed1d43005de" class=3D"OWAAuto=
Link" data-auth=3D"NotApplicable">https://downloads.yoctoproject.org/releas=
es/yocto/yocto-5.3.3/RELEASENOTES</a>&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Full Test Report:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/te=
streport.txt" id=3D"OWA32b3a189-1149-881c-707c-9d4c28f4fc7a" class=3D"OWAAu=
toLink" data-auth=3D"NotApplicable">https://downloads.yoctoproject.org/rele=
ases/yocto/yocto-5.3.3/testreport.txt</a>&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thank you for everyone's contributions to this release.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Chee Yang</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
chee.yang.lee@intel.com</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Yocto Project Build and Release</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
yocto-5.3.3 Release Notes</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp;Repositories/Downloads</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Name: yocto-docs</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Location: https://git.yoctoproject.org/yocto-docs</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Branch: whinlatter</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.3.3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: 82bd1a71e6e6a707d0009725969976cf2256af36</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: yocto-docs-82bd1a71e6e6a707d0009725969976cf2256af36</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: fcf7020e34198f3b89077f9649cec579f4d23228f7f0a3a28a21c6b5b3649857</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/yocto-docs-82=
bd1a71e6e6a707d0009725969976cf2256af36.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.3/yocto-docs-82bd1a71=
e6e6a707d0009725969976cf2256af36.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Name: openembedded-core</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Location: https://git.openembedded.org/openembedded-core</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Branch: whinlatter</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.3.3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: ab57471acad7ce2a037480dc7b301104620f1ebf</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: oecore-ab57471acad7ce2a037480dc7b301104620f1ebf</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: 63ed486722e186d517e333c204def0a7bf578ca78bdeb2ad982625c49e7ee833</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/oecore-ab5747=
1acad7ce2a037480dc7b301104620f1ebf.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.3/oecore-ab57471acad7=
ce2a037480dc7b301104620f1ebf.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Name: meta-yocto</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Location: https://git.yoctoproject.org/meta-yocto</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Branch: whinlatter</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.3.3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: 9b98ec5e6cfb6c9dc74d3c2e6304eeb274f7c487</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: meta-yocto-9b98ec5e6cfb6c9dc74d3c2e6304eeb274f7c487</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: fcb81c6835036c4157b16dfc9f6d8c5a7dd0ed7ac72f59be238e99b486b1f8fa</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/meta-yocto-9b=
98ec5e6cfb6c9dc74d3c2e6304eeb274f7c487.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.3/meta-yocto-9b98ec5e=
6cfb6c9dc74d3c2e6304eeb274f7c487.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Name: meta-mingw</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Location: https://git.yoctoproject.org/meta-mingw</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Branch: whinlatter</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.3.3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: 00323de97e397d4f6734ef2191806616989f5e10</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: meta-mingw-00323de97e397d4f6734ef2191806616989f5e10</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: c9a70539b12c0642596fde6a2766d4a6a8fec8b2a366453fb6473363127a1c77</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/meta-mingw-00=
323de97e397d4f6734ef2191806616989f5e10.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.3/meta-mingw-00323de9=
7e397d4f6734ef2191806616989f5e10.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Name: bitbake</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Location: https://git.openembedded.org/bitbake</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Branch: 2.16</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.3.3</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: 7af7e04f3adc8ba144d9e2e6b37ed4ddb3b59df0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: bitbake-7af7e04f3adc8ba144d9e2e6b37ed4ddb3b59df0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: 06dd68908a5ffafae46ff7616e93a80f8b73c016f541e9517cf63b05f52f15c7</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.3.3/bitbake-7af7e=
04f3adc8ba144d9e2e6b37ed4ddb3b59df0.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.3.3/bitbake-7af7e04f3ad=
c8ba144d9e2e6b37ed4ddb3b59df0.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp;Contributors</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks to the following people who contributed to this release:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Adarsh Jagadish Kamini</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Ankur Tyagi</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Antonin Godard</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Benjamin Robin (Schneider Electric)</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Daniel Dragomir</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Fabio Berton</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hugo SIMELIERE</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Jan Vermaete</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Kristiyan Chakarov</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Liu Yiding</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Livin Sunny</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Martin Jansa</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Michael Opdenacker</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Paul Barker</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Peter Marko</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Quentin Schulz</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Richard Purdie</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Robert P. J. Day</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Ross Burton</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Shaik Moin</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Vijay Anusuri</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Yoann Congal</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp;Known Issues</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
N/A</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Security Fixes</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
alsa-lib: patch CVE-2026-25068</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
busybox: Fix CVE-2025-60876</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
ffmpeg: Ignore CVE-2025-12343</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
freetype: Fix CVE-2026-23865</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
gdk-pixbuf: Fix CVE-2025-6199</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
glib-2.0: Fix CVE-2026-1484 CVE-2026-1485 CVE-2026-1489</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
gnutls: Fix CVE-2025-14831</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
go: Fix CVE-2026-25679 CVE-2026-27137 CVE-2026-27138 CVE-2026-27139 CVE-202=
6-27142</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
harfbuzz: Fix CVE-2026-22693</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
inetutils: Fix CVE-2026-28372</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libpam: Ignore CVE-2024-10041</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libpng: Fix CVE-2026-25646</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
linux-yocto: Ignore CVE-2022-38096 CVE-2023-6535 CVE-2023-39176 CVE-2023-39=
179 CVE-2023-39180</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3-pip: Fix CVE-2026-1703</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3-urllib3: Fix CVE-2025-66471</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
zlib: Fix CVE-2026-27171</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Fixes</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
oecore</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-----------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
README: Add whinlatter subject-prefix to git-send-email suggestion</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
avahi: Remove a reference to the rejected CVE-2021-36217</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
b4-config: add send-prefixes for whinlatter</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
build-appliance-image: Update to whinlatter head revisions</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
classes/buildhistory: Do not sign buildhistory commits</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
create-pull-request: Keep commit hash to be pulled in cover email</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
glib-2.0: upgrade to 2.86.4</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
gnutls: fix postinst script for ${PN}-fips for multilibs</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
gnutls: use libtool to install test binaries</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
go: upgrade to 1.25.8</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libpng: upgrade to 1.6.55</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
linux-yocto: apply cve-exclusions also to rt and tiny recipe variants</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
lsb.py: strip ' from os-release file</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
lz4: Remove a reference to the rejected CVE-2025-62813</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
pseudo: Update to include a fix for systems with kernel &lt;5.6</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3: skip flaky test_default_timeout test</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
scripts/install-buildtools: Update to 5.3.2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
wic/engine: error on old host debugfs for standalone directory copy</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
wireless-regdb: upgrade to 2026.02.04</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
meta-yocto</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-----------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
poky.conf: Bump version for 5.3.3 release</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
yocto-docs</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-----------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Makefile: pass -silent to latexmk</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
dev-manual: delete references to &quot;tar&quot; package format</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
overview-manual/concepts: list other possible class directories</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
overview-manual: escape wildcard in inline markup</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
qemu.rst: parsing of the code-block was not done</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
ref-manual/classes.rst: fix broken links to U-Boot documentation</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
tools/host_packages_scripts/tlmgr_docs_pdf.sh: install perl</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
what-i-wish-id-known.rst: replace figure by the new SVG</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_BL4PR11MB8797975279ABF98D5975AEDDB950ABL4PR11MB8797namp_--

