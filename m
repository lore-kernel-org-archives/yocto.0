Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 676DCC369AB
	for <webhook@archiver.kernel.org>; Mon, 21 Apr 2025 06:43:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by mx.groups.io with SMTP id smtpd.web10.10284.1745217790757703793
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Apr 2025 23:43:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=cBU1qX7F;
 spf=pass (domain: intel.com, ip: 198.175.65.9, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1745217791; x=1776753791;
  h=from:to:subject:date:message-id:mime-version;
  bh=RbxLl3LvvgQrVCN/1NtwkTGv443mH9m9uddV5p44GwY=;
  b=cBU1qX7F4LmesVJbs3K7XbTYQtGR0vNNbZkFqgEYyFGR4FZGDhRlPn2M
   AjAcdaLfpRAXrQ0ISABRiaWE+RbNFBi55pF45UboEhgLXc8+eoG9b5RJI
   kxSEOn17BhZZfWhPiK51JfFelDBl6wxaUbijoGcOiMb5T+wKhibZKqJQ7
   QOvaOeB/ZDBA5mFIM/06Z3gXgGd8jd94yb8rVH73i5ZPY65c6ZPLeipgw
   xYPKbWa38dlsxxqF/jiRdwc1waUI+08coWk+mFUSoktSr3y2ZJ5hxwxkJ
   zCUprvkfXEz4DbgPHUdauMe1WRnAbn2rBljpsI9nOIUEV4penwVayo3xp
   w==;
X-CSE-ConnectionGUID: Ts49t2VoQiCPhkGPega3cA==
X-CSE-MsgGUID: Ij3aqAYETwSX0Fe5YuN/Ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11409"; a="69239230"
X-IronPort-AV: E=Sophos;i="6.15,227,1739865600"; 
   d="scan'208,217";a="69239230"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2025 23:43:10 -0700
X-CSE-ConnectionGUID: 5ND18c7jSu2Qy/qTnBfD6g==
X-CSE-MsgGUID: B/APacWfTnSPlCSBD/z3dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,227,1739865600"; 
   d="scan'208,217";a="132520515"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2025 23:43:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 20 Apr 2025 23:43:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 20 Apr 2025 23:43:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 20 Apr 2025 23:43:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yP7oowd8MkX/lVpgNq137FtqX4HjKzzvZN1H16XW7AGYfcHt8MEGpkb2Imtt60Ac2H7O2ID6e8ZgGBGPT0h6bc4XW84PXgUBG6IEDAXh8yGymjXipOjy+PGfe4Dayu87gJbvZhqxtdf7s+UvmAWTmPNQ+GIEk0Fj11z9J5ljeuOZB0mNbvM0R6P7P0pmKDsx6MEjOfMAo+pdXpl32G/BSoG85bVV0sWkJA2Gm095PyXDP56CPT4eo4Svv8ovGcUtPnRDoUB3NpfCYpqe1TdQyG4Q/PP9OalCURA7yFDLEmiOICf0uT9pBRWedTOMVWm/7SlsWnvKCFrSyt0mWILsJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bxvn0htld+PJzdpllTfNpdvXte1Xs3szqD+MG2UGBfQ=;
 b=Ql7R+bo3FvULJ8lJkHl407jctZNrZm9Vl9tRYXuPeM3LLj08nnwDPf0QLkbvIfN3qnxP7zpPDFEG62YqZEWq7eOtmnUM55v8YwQpkwZGKRlS3qsgIOH43URu9Zu09OsJPsb5JRlTZ03cLbdRmrvu5Y9GRJLCECvbG45g8bbH9who1MstZwBJz51xoM5O6INdkMdNDajjMXIMZp/LypHmwzmpaZjApX+8KXnV63Ult/l/MRbHgNWK9x9iFLWV5g8K8t7aysk6XLDUNFNlx7r4fxi0u3qVluKw3oMzIEcmTuXFdAcdcEb1jkyAIeviqmxWXV3ZbbY2LdV03xMqw8Q2qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by MN0PR11MB6109.namprd11.prod.outlook.com (2603:10b6:208:3cf::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Mon, 21 Apr
 2025 06:42:24 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8655.031; Mon, 21 Apr 2025
 06:42:24 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.26 (Kirkstone-4.0.26) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.26 (Kirkstone-4.0.26) is
 Released
Thread-Index: AduygwH7ZjIt0po6SiWLtULGIrBwbg==
Date: Mon, 21 Apr 2025 06:42:24 +0000
Message-ID: <BL4PR11MB879702BB57439BE0116AF312B9B82@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|MN0PR11MB6109:EE_
x-ms-office365-filtering-correlation-id: 2f429cfe-6c58-41f4-5ff6-08dd809facec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|10070799003|366016|376014|8096899003|13003099007|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?XH9/sR54H3cJnYeLZL6JLvZt/y5TZ5vFwoX5hGlBzLgYYGzu7ACV1k7atdIm?=
 =?us-ascii?Q?GREiXIPuUTIjMhxAnLYip5YuMVMf0ej7ajRDxxDASR6dxHZrtYhgGcJ0wlpR?=
 =?us-ascii?Q?D+Bgh27j5arYaG9p9wYUdoh2Hhz5gje05NzkapTRIOiCYl4ASVT5SUxYba0a?=
 =?us-ascii?Q?ErpxhM+LTDnzvcfanIOwzmVNj1gD2lkjPc3BbM74lHd+zVECXFEkdmm26jZY?=
 =?us-ascii?Q?KgBp13zcMOOCPqmgw3raUrAJGXRB77rDtVnLEcd3a/FDBmq2lzji1H2bAe+J?=
 =?us-ascii?Q?R8Li4Z82+2sMruy2EJaQO37JQ1h4+VWsVgOqaixJdVFkwMpRxNjfFm6CwC9E?=
 =?us-ascii?Q?tOV+QVOkRfpqmAPLLn5EeDlQcWXZM2f+DKH/43aDZ6R29bQcqqVuHcvcfwxM?=
 =?us-ascii?Q?ToMUIWSWFwzuEXlsVQAOXKqtvUIQumg6flzqTgHmhlNNIB8yP6vyed6DRpLO?=
 =?us-ascii?Q?sQZOV9l624ijT6n9YuZ91Gib0NfDJJ3mMHzF1i8jUhPDLPrYCIjoj+4FeNVb?=
 =?us-ascii?Q?qLXoEJvm+LxusoJueGnhz0O5+tPPwk3lAcfga7l78TFh0PJ3M61BtAMP50sa?=
 =?us-ascii?Q?LouvDYB3iWghLag93+RbEhYCa0En2wu/OFThROlgLJoepPHhDLwjqCGE+b+H?=
 =?us-ascii?Q?anSqKjtp9hc8rYcFRm38i6ApCZaQosARyMzAY8RtdNeCPT3V/ilaUy2RETGf?=
 =?us-ascii?Q?qKaPu6Yis6j7lXHvQRWXmpFwZoEUKPpd8Mm5i8pb0KD2d+VYqR+Qidgo48Xb?=
 =?us-ascii?Q?wihpDZd0wlXysvCA1X8I2LclDOK8I159yp4bBKCq8pFHJCci3LMnI6OlEzaP?=
 =?us-ascii?Q?InCXrWE6PWf+Bu7Iit3e+s6RbaQMHvx1ikpuX89hiJB4cknuLlKlQ8EKK9H5?=
 =?us-ascii?Q?XlYIl3/dgs7HoqCDJzGQOrNmUDRTwxYglOzzumjIEIh+SzLwetpWHYafV2oM?=
 =?us-ascii?Q?O4SjZiK+plGuZs1jttKA81yqxYWSuQLpLna6V8G/Gb99yCZTJd3zuWIZaHvl?=
 =?us-ascii?Q?lwsIkt4XF5gZafsORJ/OHNjYVsypTMlUPpAyN5Pzpy4bowewq2/Szri9xGP1?=
 =?us-ascii?Q?WXZd7fGPTIsk7yjZxPHROUh8RHBNHpzxHjaCSFfhLTB8qmbAvASe+/STH8E/?=
 =?us-ascii?Q?85OzYN4RSXvbNULkKVZkzPlcK8zMmX5RHLUtUsO2KOkdxwUHbhfpscBIk3Tx?=
 =?us-ascii?Q?CIpU7E6ncZ2KB04n0YXDNvQtK9dTw6uNk2NO9oT7HhOEUtbxna0oFs+9gJZQ?=
 =?us-ascii?Q?R6kxedHFXZPEJQ0SFBI2Zdsc8BXtdZwOh3HnLlnUS4/X4T2bjLATSxR30gdf?=
 =?us-ascii?Q?grgr0sLaNEX4W5TC0+CQ8MrZ5KDBVuMzggfWTVE15r6yebvhViGkt7NShOjX?=
 =?us-ascii?Q?pv7QLtWGoHTH7nGleijWiA1xIh7NFk/8V/1Ur3/dU+BpH3a+fJHPQ14LpB9Q?=
 =?us-ascii?Q?MRP5VOtctP8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(8096899003)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NVPrEO8Nyvk2YiX9S+fgdcUtD+3p2q7g9aRJLyQFfj4NHioWbEsuIWgnU5EI?=
 =?us-ascii?Q?Tyjz6JqMIasSgKIgr2NQXTDhbn0QH4RbxEn/8ED95jfJUVJLPfxmSaWqDA5R?=
 =?us-ascii?Q?2AU03tD8yvWx/7EvUzMvhX9bxjeKNwSvnO2uf5uKEfsrHAmd1e6lbr3MvMkf?=
 =?us-ascii?Q?8NnZID1rQmrPXW6KU1MM63bFih3hYyWhZP15ESUL4giSX4r2xwqNlgjneVMw?=
 =?us-ascii?Q?loPoDuqA7CZGqA5vsvDeO1VV+ciiQxMfCaM8/PuKWtqAFFWG0ZAtmXuCRLvI?=
 =?us-ascii?Q?rzyF3h+YfywSYIAs7ZT2vRMoYdxdtWX5q5HVLjBXtgcOnHaJuuZD818leaEP?=
 =?us-ascii?Q?0vBsElg+GtHiAMVCGiOZjawpOEY1OHfyX+a/XxcYPivf/Wpbb/bG5N/0B4VY?=
 =?us-ascii?Q?tnb54f4+daI3YwgC2JfEJh+EKxXeBzbjX0Tw/AUYTemTVivdDz953hn7Ha32?=
 =?us-ascii?Q?kPs7bbbC9SYos1Ropld6IPAir4/wF7xx9Sh9XGqzmBpf96C1zvmNHkCKn4pg?=
 =?us-ascii?Q?QXg8yt6jK1ZeLG4ZXLRl+S1Fy39m4+kRI7r8RHAzmucygyG+hJjQOmsGWdky?=
 =?us-ascii?Q?zPX0bIUKbDwgaW4jZ44Q/OGU7ZPg8tv92G+v62EqS1Aanb9OR4Fc1i0XtNGi?=
 =?us-ascii?Q?3YGqPfWWwgcBlkxDN7dNj6yxBYzZSU4T9/rOKKNyabIgqRv8CyhuctyGhkCJ?=
 =?us-ascii?Q?s9UagRYJQnUVP++4WNmLuWYVSgcefiqe4zcqiig+0dV2T4wkrvXLbZCQgJqX?=
 =?us-ascii?Q?jh6aQobsOVxrTBqoBOdqSFglbn1KGN6nxTtQR7aGADtXFOS28wT9RLeJ8tls?=
 =?us-ascii?Q?lGozx4gxrevISKkXI6vLiqBQNgGiaey6lhxjh4hxCUeiyct/xXFOSKajcA38?=
 =?us-ascii?Q?xfjCqjUdFbcLUjcTWhcnx0n4n1ggrwr5BmHpJP5zCkPrEifqXe2X0a7bV/ZX?=
 =?us-ascii?Q?B01bhXHFZ2K0VdworHtNhgCuYvglbtE7iieFRtInEJsb3OgCXCNMqYnZr/z3?=
 =?us-ascii?Q?SW5Sftdaxy1+YIv7v+k2AH01SyOHuaI/FEcF1nnLP4Thte8/8GixJ+a3eDek?=
 =?us-ascii?Q?90SdcMbrPSVwM42ao7ulkTC9iQDku1SMmSxNR2IaieHmv5hKMqlME5PxXPxz?=
 =?us-ascii?Q?kccTWcGAnP7eEAxxSuy3xDcjXN0MSeAn7b0tSXivFPwLSmjY8z/syNGO2vRt?=
 =?us-ascii?Q?0G1cvxqGChnp0gwP6O80Cazed/fHzTtk2uCWzebkTmSxZg7SpmVlnoByISpT?=
 =?us-ascii?Q?h2hyTG4dRpBsW5kLpKcOWV7ftIb2TRVNHIXIl1vmfmaaAZr2I/WeiJhwl4mc?=
 =?us-ascii?Q?KIorcCIkhzUWAYAaJ7VAFufsBj4U+O07fO3aj+Hkac1itZZzLEdbhqVWuMwg?=
 =?us-ascii?Q?dbcX96aCxj8Ix+ZAhu5cz+j889+pp5RaYq3l1OJWQBvbODUlIQK436o1/MaN?=
 =?us-ascii?Q?uZYQ1UuXQjbM4kN7eBB2Nkuu7A4U6DJE4gbNn9+KqBvwJ6+IW7021xfqruue?=
 =?us-ascii?Q?3p+hlhM8Sy83pbhMBNGzmDHYAqo4CNqHHE1T0HsPV2VHkF0x+15AgK/sAfAc?=
 =?us-ascii?Q?jltVKK7XpKViMrfHRtYj2FC5MwPVjrBGF35j40rDnrpK04f1T23xNxDhAvob?=
 =?us-ascii?Q?VShwBa7HU5JVEuF8EtM+NBYjo4zQ5swr6aPn1RyO43m0?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB879702BB57439BE0116AF312B9B82BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f429cfe-6c58-41f4-5ff6-08dd809facec
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2025 06:42:24.5501
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: skj0k7iSLsGI9qniSO+3wap8xNrnrC2nM3qUjy/J16ERboseCkbH1/s1qgdhMfjTrwsFlVourYzEVgqSAYw20w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6109
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Apr 2025 06:43:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65205

--_000_BL4PR11MB879702BB57439BE0116AF312B9B82BL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We are pleased to announce the Yocto Project 4.0.26 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/poky-d70d287=
a77d5026b698ac237ab865b2dafd36bb8.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/poky-d70d287a77d5026b69=
8ac237ab865b2dafd36bb8.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-4.0.26 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.26
Git Revision: d70d287a77d5026b698ac237ab865b2dafd36bb8
Release Artefact: poky-d70d287a77d5026b698ac237ab865b2dafd36bb8
sha: 3ebfadb8bff4c1ca12b3cf3e4ef6e3ac2ce52b73570266daa98436c9959249f2
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/poky-d70d287=
a77d5026b698ac237ab865b2dafd36bb8.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/poky-d70d287a77d5026b69=
8ac237ab865b2dafd36bb8.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.26
Git Revision: 1efbe1004bc82e7c14c1e8bd4ce644f5015c3346
Release Artefact: oecore-1efbe1004bc82e7c14c1e8bd4ce644f5015c3346
sha: d3805e034dabd0865dbf55488b2c16d4ea0351d37aa826f0054a6bfdde5a8be9
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/oecore-1efbe=
1004bc82e7c14c1e8bd4ce644f5015c3346.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/oecore-1efbe1004bc82e7c=
14c1e8bd4ce644f5015c3346.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.26
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/meta-mingw-87c22abb1f11=
be430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.26
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/meta-gplv2-d2f8b5cdb285=
b72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.26
Git Revision: 046871d9fd76efdca7b72718b328d8f545523f7e
Release Artefact: bitbake-046871d9fd76efdca7b72718b328d8f545523f7e
sha: e9df0a9f5921b583b539188d66b23f120e1751000e7822e76c3391d5c76ee21a
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/bitbake-0468=
71d9fd76efdca7b72718b328d8f545523f7e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/bitbake-046871d9fd76efd=
ca7b72718b328d8f545523f7e.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.26
Git Revision: 9b4c36f7b02dd4bedfec90206744a1e90e37733c


---------------
Contributors
---------------
Aleksandar Nikolic
Alessio Cascone
Antonin Godard
Archana Polampalli
Ashish Sharma
Bruce Ashfield
Carlos Dominguez
Deepesh Varatharajan
Divya Chellam
Guocai He
Hitendra Prajapati
Hongxu Jia
Jiaying Song
Johannes Kauffmann
Kai Kang
Lee Chee Yang
Libo Chen
Marta Rybczynska
Michael Halstead
Mingli Yu
Moritz Haase
Narpat Mali
Paulo Neves
Peter Marko
Priyal Doshi
Richard Purdie
Robert Yang
Ross Burton
Sakib Sajal
Steve Sakoman
Vijay Anusuri
Yogita Urade
Zhang Peng


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
bind: Fix CVE-2024-11187 CVE-2024-12705
binutils: Fix CVE-2025-0840
elfutils: Fix CVE-2025-1352 CVE-2025-1372
ffmpeg: Fix CVE-2024-28661 CVE-2024-35369 CVE-2024-36613 CVE-2024-36616 CVE=
-2024-36617 CVE-2024-36618 CVE-2025-0518 CVE-2025-25473
ffmpeg: Ignore CVE-2023-46407 CVE-2023-47470 CVE-2024-7272 CVE-2024-22860 C=
VE-2024-22861 CVE-2024-22862
freetype: Fix CVE-2025-27363
gnutls: Fix CVE-2024-12243
grub: Fix CVE-2024-45774 CVE-2024-45775 CVE-2024-45776 CVE-2024-45777 CVE-2=
024-45778 CVE-2024-45779 CVE-2024-45780 CVE-2024-45781 CVE-2024-45782 CVE-2=
024-45783 CVE-2024-56737 CVE-2025-0622 CVE-2025-0624 CVE-2025-0677 CVE-2025=
-0684 CVE-2025-0685 CVE-2025-0686 CVE-2025-0689 CVE-2025-0678 CVE-2025-0690=
 CVE-2025-1118 CVE-2025-1125
gstreamer1.0-rtsp-server: fix CVE-2024-44331
libarchive: Fix CVE-2025-25724
libarchive: Ignore CVE-2025-1632
libcap: Fix CVE-2025-1390
linux-yocto/5.10: Fix CVE-2024-36476 CVE-2024-43098 CVE-2024-47143 CVE-2024=
-48881 CVE-2024-50051 CVE-2024-50074 CVE-2024-50082 CVE-2024-50083 CVE-2024=
-50099 CVE-2024-50115 CVE-2024-50116 CVE-2024-50117 CVE-2024-50142 CVE-2024=
-50148 CVE-2024-50150 CVE-2024-50151 CVE-2024-50167 CVE-2024-50168 CVE-2024=
-50171 CVE-2024-50185 CVE-2024-50192 CVE-2024-50193 CVE-2024-50194 CVE-2024=
-50195 CVE-2024-50198 CVE-2024-50201 CVE-2024-50202 CVE-2024-50205 CVE-2024=
-50208 CVE-2024-50209 CVE-2024-50229 CVE-2024-50230 CVE-2024-50233 CVE-2024=
-50234 CVE-2024-50236 CVE-2024-50237 CVE-2024-50251 CVE-2024-50262 CVE-2024=
-50264 CVE-2024-50265 CVE-2024-50267 CVE-2024-50268 CVE-2024-50269 CVE-2024=
-50273 CVE-2024-50278 CVE-2024-50279 CVE-2024-50282 CVE-2024-50287 CVE-2024=
-50292 CVE-2024-50296 CVE-2024-50299 CVE-2024-50301 CVE-2024-50302 CVE-2024=
-53042 CVE-2024-53052 CVE-2024-53057 CVE-2024-53059 CVE-2024-53060 CVE-2024=
-53061 CVE-2024-53063 CVE-2024-53066 CVE-2024-53096 CVE-2024-53097 CVE-2024=
-53101 CVE-2024-53103 CVE-2024-53104 CVE-2024-53145 CVE-2024-53146 CVE-2024=
-53150 CVE-2024-53155 CVE-2024-53156 CVE-2024-53157 CVE-2024-53161 CVE-2024=
-53165 CVE-2024-53171 CVE-2024-53173 CVE-2024-53174 CVE-2024-53194 CVE-2024=
-53197 CVE-2024-53217 CVE-2024-53226 CVE-2024-53227 CVE-2024-53237 CVE-2024=
-53239 CVE-2024-55916 CVE-2024-56548 CVE-2024-56558 CVE-2024-56567 CVE-2024=
-56568 CVE-2024-56569 CVE-2024-56572 CVE-2024-56574 CVE-2024-56581 CVE-2024=
-56587 CVE-2024-56593 CVE-2024-56595 CVE-2024-56596 CVE-2024-56598 CVE-2024=
-56600 CVE-2024-56601 CVE-2024-56602 CVE-2024-56603 CVE-2024-56605 CVE-2024=
-56606 CVE-2024-56615 CVE-2024-56619 CVE-2024-56623 CVE-2024-56629 CVE-2024=
-56634 CVE-2024-56642 CVE-2024-56643 CVE-2024-56648 CVE-2024-56650 CVE-2024=
-56659 CVE-2024-56662 CVE-2024-56670 CVE-2024-56688 CVE-2024-56698 CVE-2024=
-56704 CVE-2024-56716 CVE-2024-56720 CVE-2024-56723 CVE-2024-56724 CVE-2024=
-56728 CVE-2024-56739 CVE-2024-56746 CVE-2024-56747 CVE-2024-56748 CVE-2024=
-56754 CVE-2024-56756 CVE-2024-56770 CVE-2024-56779 CVE-2024-56780 CVE-2024=
-56781 CVE-2024-56785 CVE-2024-57802 CVE-2024-57807 CVE-2024-57850 CVE-2024=
-57874 CVE-2024-57890 CVE-2024-57896 CVE-2024-57900 CVE-2024-57901 CVE-2024=
-57902 CVE-2024-57910 CVE-2024-57911 CVE-2024-57913 CVE-2024-57922 CVE-2024=
-57938 CVE-2024-57939 CVE-2024-57946 CVE-2024-57951 CVE-2025-21638 CVE-2025=
-21687 CVE-2025-21689 CVE-2025-21692 CVE-2025-21694 CVE-2025-21697 CVE-2025=
-21699
linux-yocto/5.15: Fix CVE-2024-57979 CVE-2024-58034 CVE-2024-58052 CVE-2024=
-58055 CVE-2024-58058 CVE-2024-58063 CVE-2024-58069 CVE-2024-58071 CVE-2024=
-58076 CVE-2024-58083 CVE-2025-21700 CVE-2025-21703 CVE-2025-21715 CVE-2025=
-21722 CVE-2025-21727 CVE-2025-21731 CVE-2025-21753 CVE-2025-21756 CVE-2025=
-21760 CVE-2025-21761 CVE-2025-21762 CVE-2025-21763 CVE-2025-21764 CVE-2025=
-21796 CVE-2025-21811 CVE-2025-21887 CVE-2025-21898 CVE-2025-21904 CVE-2025=
-21905 CVE-2025-21912 CVE-2025-21917 CVE-2025-21919 CVE-2025-21920 CVE-2025=
-21922 CVE-2025-21934 CVE-2025-21943 CVE-2025-21948 CVE-2025-21951
libpcre2: Ignore CVE-2022-1586
libtasn1: Fix CVE-2024-12133
libxml2: Fix CVE-2022-49043 CVE-2024-56171 CVE-2025-24928 CVE-2025-27113
libxslt: Fix CVE-2024-55549 CVE-2025-24855
llvm: Fix CVE-2024-0151
mpg123: Fix CVE-2024-10573
openssh: Fix CVE-2025-26465
ovmf: Revert Fix for CVE-2023-45236 CVE-2023-45237
perl: Ignore CVE-2023-47038
puzzles: Ignore CVE-2024-13769 CVE-2024-13770 CVE-2025-0837
python3: Fix CVE-2025-0938
ruby: Fix CVE-2024-41946 CVE-2025-27219 CVE-2025-27220
subversion: Ignore CVE-2024-45720
systemd: Fix CVE-2022-3821 CVE-2022-4415 CVE-2022-45873 CVE-2023-7008
tiff: mark CVE-2023-30774 as patched with existing patch
u-boot: Fix CVE-2022-2347 CVE-2022-30767 CVE-2022-30790 CVE-2024-57254 CVE-=
2024-57255 CVE-2024-57256 CVE-2024-57257 CVE-2024-57258 CVE-2024-57259
vim: Fix CVE-2025-1215 CVE-2025-22134  CVE-2025-24014 CVE-2025-26603  CVE-2=
025-27423  CVE-2025-29768
xserver-xorg: Fix CVE-2022-49737 CVE-2025-26594 CVE-2025-26595 CVE-2025-265=
96 CVE-2025-26597 CVE-2025-26598 CVE-2025-26599 CVE-2025-26600 CVE-2025-266=
01
xwayland: Fix CVE-2022-49737 CVE-2024-9632 CVE-2024-21885 CVE-2024-21886 CV=
E-2024-31080 CVE-2024-31081 CVE-2024-31083 CVE-2025-26594 CVE-2025-26595 CV=
E-2025-26596 CVE-2025-26597 CVE-2025-26598 CVE-2025-26599 CVE-2025-26600 CV=
E-2025-26601
zlib: Fix CVE-2014-9485


---------------
Fixes
---------------
bind: Upgrade to 9.18.33
bitbake: cache: bump cache version
bitbake: siggen.py: Improve taskhash reproducibility
boost: fix do_fetch error
build-appliance-image: Update to kirkstone head revision
contributor-guide/submit-changes: add policy on AI generated code
cve-update-nvd2-native: handle missing vulnStatus
docs: Add favicon for the documentation html
docs: Remove all mention of core-image-lsb
libtasn1: upgrade to 4.20.0
libxcrypt-compat: Remove libcrypt.so to fix conflict with libcrypt
libxml2: fix compilation of explicit child axis in pattern
linux-yocto/5.10: update to v5.10.234
linux-yocto/5.15: update to v5.15.179
mesa: Fix missing GLES3 headers in SDK sysroot
mesa: Update SRC_URI
meta: Enable '-o pipefail' for the SDK installer
migration-guides: add release notes for 4.0.25
poky.conf: add ubuntu2404 to SANITY_TESTED_DISTROS
poky.conf: bump version for 4.0.26
procps: replaced one use of fputs(3) with a write(2) call
ref-manual: don't refer to poky-lsb
scripts/install-buildtools: Update to 4.0.24
scritps/runqemu: Ensure we only have two serial ports
systemd: upgrade to 250.14
tzcode-native: Fix compiler setting from 2023d version
tzcode: Update SRC_URI
tzdata/tzcode-native: upgrade 2025a
vim: Upgrade to 9.1.1198
virglrenderer: fix do_fetch error
vulnerabilities/classes: remove references to cve-check text format
xz: Update SRC_URI
yocto-uninative: Update to 4.7 for glibc 2.41




--_000_BL4PR11MB879702BB57439BE0116AF312B9B82BL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi,<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 4.0.26 Release is now available for download.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/poky-d70d287a77d5026=
b698ac237ab865b2dafd36bb8.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-4.0.26/poky-d70d287a77d5026b698ac237ab865b2dafd36bb8.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-4.0.26/poky-d70d287a77d5026b698ac237ab=
865b2dafd36bb8.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26=
/poky-d70d287a77d5026b698ac237ab865b2dafd36bb8.tar.bz2</a><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/testreport.txt</=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-4.0.26 Releas=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.26<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: d70d2=
87a77d5026b698ac237ab865b2dafd36bb8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-d70d287a77d5026b698ac237ab865b2dafd36bb8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 3ebfadb8bff4c1=
ca12b3cf3e4ef6e3ac2ce52b73570266daa98436c9959249f2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.26/poky-d70d287a77d5026b698ac237ab=
865b2dafd36bb8.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.26/poky-d70d287a77d5026b698ac237ab865b2dafd36=
bb8.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.26<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 1efbe=
1004bc82e7c14c1e8bd4ce644f5015c3346<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-1efbe1004bc82e7c14c1e8bd4ce644f5015c3346<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: d3805e034dabd0=
865dbf55488b2c16d4ea0351d37aa826f0054a6bfdde5a8be9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.26/oecore-1efbe1004bc82e7c14c1e8bd=
4ce644f5015c3346.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.26/oecore-1efbe1004bc82e7c14c1e8bd4ce644f5015=
c3346.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.26<o=
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
octoproject.org/releases/yocto/yocto-4.0.26/meta-mingw-87c22abb1f11be430caf=
4372e6b833dc7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.26/meta-mingw-87c22abb1f11be430caf4372e6b833d=
c7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.26<o=
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
octoproject.org/releases/yocto/yocto-4.0.26/meta-gplv2-d2f8b5cdb285b72a4ed9=
3450f6703ca27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.26/meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca=
27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.0<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.26<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 04687=
1d9fd76efdca7b72718b328d8f545523f7e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-046871d9fd76efdca7b72718b328d8f545523f7e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: e9df0a9f5921b5=
83b539188d66b23f120e1751000e7822e76c3391d5c76ee21a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.26/bitbake-046871d9fd76efdca7b7271=
8b328d8f545523f7e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.26/bitbake-046871d9fd76efdca7b72718b328d8f545=
523f7e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.26<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 9b4c3=
6f7b02dd4bedfec90206744a1e90e37733c<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alessio Cascone<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ashish Sharma<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Carlos Dominguez<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Guocai He<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hongxu Jia<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Johannes Kauffmann<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Kai Kang<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Libo Chen<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Marta Rybczynska<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michael Halstead<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mingli Yu<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Moritz Haase<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Narpat Mali<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Paulo Neves<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Priyal Doshi<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert Yang<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sakib Sajal<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bind: Fix CVE-2024-=
11187 CVE-2024-12705<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
025-0840<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">elfutils: Fix CVE-2=
025-1352 CVE-2025-1372<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Fix CVE-202=
4-28661 CVE-2024-35369 CVE-2024-36613 CVE-2024-36616 CVE-2024-36617 CVE-202=
4-36618 CVE-2025-0518 CVE-2025-25473<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Ignore CVE-=
2023-46407 CVE-2023-47470 CVE-2024-7272 CVE-2024-22860 CVE-2024-22861 CVE-2=
024-22862<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">freetype: Fix CVE-2=
025-27363<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnutls: Fix CVE-202=
4-12243<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub: Fix CVE-2024-=
45774 CVE-2024-45775 CVE-2024-45776 CVE-2024-45777 CVE-2024-45778 CVE-2024-=
45779 CVE-2024-45780 CVE-2024-45781 CVE-2024-45782 CVE-2024-45783 CVE-2024-=
56737 CVE-2025-0622 CVE-2025-0624 CVE-2025-0677
 CVE-2025-0684 CVE-2025-0685 CVE-2025-0686 CVE-2025-0689 CVE-2025-0678 CVE-=
2025-0690 CVE-2025-1118 CVE-2025-1125<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-rtsp-s=
erver: fix CVE-2024-44331<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Fix CVE=
-2025-25724<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Ignore =
CVE-2025-1632<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libcap: Fix CVE-202=
5-1390<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.10: F=
ix CVE-2024-36476 CVE-2024-43098 CVE-2024-47143 CVE-2024-48881 CVE-2024-500=
51 CVE-2024-50074 CVE-2024-50082 CVE-2024-50083 CVE-2024-50099 CVE-2024-501=
15 CVE-2024-50116 CVE-2024-50117 CVE-2024-50142
 CVE-2024-50148 CVE-2024-50150 CVE-2024-50151 CVE-2024-50167 CVE-2024-50168=
 CVE-2024-50171 CVE-2024-50185 CVE-2024-50192 CVE-2024-50193 CVE-2024-50194=
 CVE-2024-50195 CVE-2024-50198 CVE-2024-50201 CVE-2024-50202 CVE-2024-50205=
 CVE-2024-50208 CVE-2024-50209 CVE-2024-50229
 CVE-2024-50230 CVE-2024-50233 CVE-2024-50234 CVE-2024-50236 CVE-2024-50237=
 CVE-2024-50251 CVE-2024-50262 CVE-2024-50264 CVE-2024-50265 CVE-2024-50267=
 CVE-2024-50268 CVE-2024-50269 CVE-2024-50273 CVE-2024-50278 CVE-2024-50279=
 CVE-2024-50282 CVE-2024-50287 CVE-2024-50292
 CVE-2024-50296 CVE-2024-50299 CVE-2024-50301 CVE-2024-50302 CVE-2024-53042=
 CVE-2024-53052 CVE-2024-53057 CVE-2024-53059 CVE-2024-53060 CVE-2024-53061=
 CVE-2024-53063 CVE-2024-53066 CVE-2024-53096 CVE-2024-53097 CVE-2024-53101=
 CVE-2024-53103 CVE-2024-53104 CVE-2024-53145
 CVE-2024-53146 CVE-2024-53150 CVE-2024-53155 CVE-2024-53156 CVE-2024-53157=
 CVE-2024-53161 CVE-2024-53165 CVE-2024-53171 CVE-2024-53173 CVE-2024-53174=
 CVE-2024-53194 CVE-2024-53197 CVE-2024-53217 CVE-2024-53226 CVE-2024-53227=
 CVE-2024-53237 CVE-2024-53239 CVE-2024-55916
 CVE-2024-56548 CVE-2024-56558 CVE-2024-56567 CVE-2024-56568 CVE-2024-56569=
 CVE-2024-56572 CVE-2024-56574 CVE-2024-56581 CVE-2024-56587 CVE-2024-56593=
 CVE-2024-56595 CVE-2024-56596 CVE-2024-56598 CVE-2024-56600 CVE-2024-56601=
 CVE-2024-56602 CVE-2024-56603 CVE-2024-56605
 CVE-2024-56606 CVE-2024-56615 CVE-2024-56619 CVE-2024-56623 CVE-2024-56629=
 CVE-2024-56634 CVE-2024-56642 CVE-2024-56643 CVE-2024-56648 CVE-2024-56650=
 CVE-2024-56659 CVE-2024-56662 CVE-2024-56670 CVE-2024-56688 CVE-2024-56698=
 CVE-2024-56704 CVE-2024-56716 CVE-2024-56720
 CVE-2024-56723 CVE-2024-56724 CVE-2024-56728 CVE-2024-56739 CVE-2024-56746=
 CVE-2024-56747 CVE-2024-56748 CVE-2024-56754 CVE-2024-56756 CVE-2024-56770=
 CVE-2024-56779 CVE-2024-56780 CVE-2024-56781 CVE-2024-56785 CVE-2024-57802=
 CVE-2024-57807 CVE-2024-57850 CVE-2024-57874
 CVE-2024-57890 CVE-2024-57896 CVE-2024-57900 CVE-2024-57901 CVE-2024-57902=
 CVE-2024-57910 CVE-2024-57911 CVE-2024-57913 CVE-2024-57922 CVE-2024-57938=
 CVE-2024-57939 CVE-2024-57946 CVE-2024-57951 CVE-2025-21638 CVE-2025-21687=
 CVE-2025-21689 CVE-2025-21692 CVE-2025-21694
 CVE-2025-21697 CVE-2025-21699 <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: F=
ix CVE-2024-57979 CVE-2024-58034 CVE-2024-58052 CVE-2024-58055 CVE-2024-580=
58 CVE-2024-58063 CVE-2024-58069 CVE-2024-58071 CVE-2024-58076 CVE-2024-580=
83 CVE-2025-21700 CVE-2025-21703 CVE-2025-21715
 CVE-2025-21722 CVE-2025-21727 CVE-2025-21731 CVE-2025-21753 CVE-2025-21756=
 CVE-2025-21760 CVE-2025-21761 CVE-2025-21762 CVE-2025-21763 CVE-2025-21764=
 CVE-2025-21796 CVE-2025-21811 CVE-2025-21887 CVE-2025-21898 CVE-2025-21904=
 CVE-2025-21905 CVE-2025-21912 CVE-2025-21917
 CVE-2025-21919 CVE-2025-21920 CVE-2025-21922 CVE-2025-21934 CVE-2025-21943=
 CVE-2025-21948 CVE-2025-21951<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpcre2: Ignore CV=
E-2022-1586<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libtasn1: Fix CVE-2=
024-12133<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: Fix CVE-20=
22-49043 CVE-2024-56171 CVE-2025-24928 CVE-2025-27113<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxslt: Fix CVE-20=
24-55549 CVE-2025-24855<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">llvm: Fix CVE-2024-=
0151<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">mpg123: Fix CVE-202=
4-10573<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssh: Fix CVE-20=
25-26465<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ovmf: Revert Fix fo=
r CVE-2023-45236 CVE-2023-45237<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">perl: Ignore CVE-20=
23-47038<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">puzzles: Ignore CVE=
-2024-13769 CVE-2024-13770 CVE-2025-0837<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Fix CVE-20=
25-0938<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: Fix CVE-2024-=
41946 CVE-2025-27219 CVE-2025-27220<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">subversion: Ignore =
CVE-2024-45720<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: Fix CVE-20=
22-3821 CVE-2022-4415 CVE-2022-45873 CVE-2023-7008<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tiff: mark CVE-2023=
-30774 as patched with existing patch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">u-boot: Fix CVE-202=
2-2347 CVE-2022-30767 CVE-2022-30790 CVE-2024-57254 CVE-2024-57255 CVE-2024=
-57256 CVE-2024-57257 CVE-2024-57258 CVE-2024-57259<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Fix CVE-2025-1=
215 CVE-2025-22134&nbsp; CVE-2025-24014 CVE-2025-26603&nbsp; CVE-2025-27423=
&nbsp; CVE-2025-29768<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: Fix C=
VE-2022-49737 CVE-2025-26594 CVE-2025-26595 CVE-2025-26596 CVE-2025-26597 C=
VE-2025-26598 CVE-2025-26599 CVE-2025-26600 CVE-2025-26601<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xwayland: Fix CVE-2=
022-49737 CVE-2024-9632 CVE-2024-21885 CVE-2024-21886 CVE-2024-31080 CVE-20=
24-31081 CVE-2024-31083 CVE-2025-26594 CVE-2025-26595 CVE-2025-26596 CVE-20=
25-26597 CVE-2025-26598 CVE-2025-26599
 CVE-2025-26600 CVE-2025-26601<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">zlib: Fix CVE-2014-=
9485<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bind: Upgrade to 9.=
18.33<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: cache: bum=
p cache version<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: siggen.py:=
 Improve taskhash reproducibility<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">boost: fix do_fetch=
 error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to kirkstone head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide/s=
ubmit-changes: add policy on AI generated code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-update-nvd2-nat=
ive: handle missing vulnStatus<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Add favicon f=
or the documentation html<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Remove all me=
ntion of core-image-lsb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libtasn1: upgrade t=
o 4.20.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxcrypt-compat: R=
emove libcrypt.so to fix conflict with libcrypt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: fix compil=
ation of explicit child axis in pattern<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.10: u=
pdate to v5.10.234<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: u=
pdate to v5.15.179<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">mesa: Fix missing G=
LES3 headers in SDK sysroot<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">mesa: Update SRC_UR=
I<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta: Enable '-o pi=
pefail' for the SDK installer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.25<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: add ubun=
tu2404 to SANITY_TESTED_DISTROS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 4.0.26<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">procps: replaced on=
e use of fputs(3) with a write(2) call<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: don't r=
efer to poky-lsb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 4.0.24<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scritps/runqemu: En=
sure we only have two serial ports<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: upgrade to=
 250.14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzcode-native: Fix =
compiler setting from 2023d version<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzcode: Update SRC_=
URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzdata/tzcode-nativ=
e: upgrade 2025a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Upgrade to 9.1=
.1198<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">virglrenderer: fix =
do_fetch error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vulnerabilities/cla=
sses: remove references to cve-check text format<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xz: Update SRC_URI<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-uninative: Up=
date to 4.7 for glibc 2.41<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB879702BB57439BE0116AF312B9B82BL4PR11MB8797namp_--

