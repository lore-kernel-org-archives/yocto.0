Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49664E7717F
	for <webhook@archiver.kernel.org>; Thu, 12 Dec 2024 07:43:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by mx.groups.io with SMTP id smtpd.web11.15014.1733989432549725203
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2024 23:43:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=E2ENDqhl;
 spf=pass (domain: intel.com, ip: 192.198.163.17, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1733989432; x=1765525432;
  h=from:to:subject:date:message-id:mime-version;
  bh=itjtM5LnzOlEBYaGC6AJ1dYhZo4cSg1CxcKVRNzOBvc=;
  b=E2ENDqhlwi3Kt3NGXc8DICc4coltxq4Btw+1v0UsNvOGHHdEE8NJz/9F
   P0L3FRPTXHkvlcnbKnvrGBGQXnz3VNYnIAc/FS9p4h73uY5qwWhmiKISO
   yIrOXVk9SSEH8UwvC0oHMhvbMoo4sgS/wNaqdyyBW4iTbkscrVJlHgQUf
   VxDqFSe4MJrYM9UKfrLQQUV16dfrSyBCfVAEijHk8tDodg4p8srytFVzZ
   bRxU82GM01Go3hrebdVURwxc0Bj2MyfRtbE228NCoX3S0xZoaKR51fWwz
   WObh91C6u91lWzyRtr/oK5o5w5f1FlZ8YrCIbJiZYroEf1KQ3a85frzUm
   A==;
X-CSE-ConnectionGUID: BEahN4xkScS/p55lDLuelw==
X-CSE-MsgGUID: SYWL84FYQnKxE2z6FHPEBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="34302538"
X-IronPort-AV: E=Sophos;i="6.12,227,1728975600"; 
   d="scan'208,217";a="34302538"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2024 23:43:52 -0800
X-CSE-ConnectionGUID: q/YItO1uR1C5ZF3CIOWAsA==
X-CSE-MsgGUID: kl1G84ARSEy5xLrzmjBYRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208,217";a="133531421"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 11 Dec 2024 23:43:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 11 Dec 2024 23:43:51 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 11 Dec 2024 23:43:51 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Dec 2024 23:43:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h0bZYY6kS1yG6KbcIE2SE5YEPjTM+yHWPKJ6fjhQxttqXwIr34eVjnxfY+wSo0NyHt7TeoN7a0eHyufpJpJwKcPvkLxneEdaMX1iSoI91LIOEbvrPhqJdE4meUuOaQep4FEATv9OF59wsEY0clOZ1p1gh2eH5JN3D90hzoGsXCt2xlyLbBVbP+c/NYsjRw9opycyTfHqkFEkaHtc3Yw/3fDn7hSxiYZ8H8orgO5Fn+h2/yfdk2sCXtaohCtuMr0qOOCy3Ax6dRS/9Gwq+mvtNc2O6IsMDkVmwOnTGNEglnbpyir8ne2O7qFaZg50comEj4lsHJFHYI3gsLe5ySQWmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iSPuaqbGXwvYMtTItUVqeKNJxT38GF+lqNb98x91+VU=;
 b=SFCYEHzfVMvoii6xfM6+TsPXzGwfBuRzs0Y1yNBMDDU9hXTGCQKU8RUKdEJH9YmgVb0A5LL0+KvNvyK4E4o4i0wdEf7cF0NHuAMhSbMLcQDdcnVV7zqd0YaKezBmmYvM5jLhm4kw7nlEhcKrHmRCQOtOJrTWQ0f4tHLUiSqkWRGvlt5OQyZrHcPUKzZXl1Xx3S2ev77Wd6ZSAXHpQy4s5TvIHe5bzDkeZXKg8IfWjKr0T4veBPqNeDlH44NcDCNLI14DfQLkPDOPWgkPgNDodJju+KASmCaukd041RPwbva7567z7dQv+5l2ZkuGJeOQBKMaPCcvScanyptUk3V06w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by PH0PR11MB7542.namprd11.prod.outlook.com (2603:10b6:510:28b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.16; Thu, 12 Dec
 2024 07:43:42 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%4]) with mapi id 15.20.8251.008; Thu, 12 Dec 2024
 07:43:42 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.1.1 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.1.1 is Released
Thread-Index: AdtMaSSRVPFpjRnqQJ6IqXnvs1nzbA==
Date: Thu, 12 Dec 2024 07:43:42 +0000
Message-ID: <BL4PR11MB8797306884FF4D777E25080DB93F2@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|PH0PR11MB7542:EE_
x-ms-office365-filtering-correlation-id: 8e2064eb-df58-48b6-7786-08dd1a80b348
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|10070799003|8096899003|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?ExLigN/vKK7WttRqGpMK1ENijWNqU4NNu/7uCzS0X65LNt2+cy0mX4rcTy?=
 =?iso-8859-1?Q?3qaiv1YTPLYFo6ynqIqjfrTAmDgX2vaMYJKWJD7MAcq2DNlL8CfVPQezcC?=
 =?iso-8859-1?Q?5Ez+4//QuRnfDYORdCX/HRM3NNRp71yUgV+QTA7iT+RclrEs7z0eZnJLIA?=
 =?iso-8859-1?Q?DCmQMVNoPvN+Alzcw7p9cQlRU0pUUWZWQ2hAt6yXHQlIX4ghwqaajdWY4k?=
 =?iso-8859-1?Q?W3KMZUZHHOI9DGZjKQEwY2iABjyd3Zci6B2hBRCFI4pB+gypTZMCQUNwsl?=
 =?iso-8859-1?Q?i6TU7Ytv19UXHGzraZKE25PcD2AxttJkuyDWYTZQUgkiVeIh+xsBe7diss?=
 =?iso-8859-1?Q?X+D17o0xO4/7acpVZshF032Y1VLTPpbp1eKQCI95SYLwni/vF9YKP3DN9x?=
 =?iso-8859-1?Q?ZKiKWsWQl5V0W/+nOaSYg5ddgDKSD9nEnYIjJjdb4ySyB96rsP5BQje2CZ?=
 =?iso-8859-1?Q?4ntaylYypv+mw2bUglIDwFZttEmg/sW8ehNyXAS5aN1KFmGEmN0iydLBfE?=
 =?iso-8859-1?Q?FoKdT+JMU/bsOqD4v0APDCyRpFWlk69KWmaCyw5LD1GUBoN1c56Bj6M7de?=
 =?iso-8859-1?Q?7xOtsHwJuPdx6unjFKuqrGBqFBt/vegLNpox/LTcK8IggjpCJdXFH0gvRb?=
 =?iso-8859-1?Q?x2keiTudbamKEhYE+Wnx96Uvz+PrMotx/+FpuhGcek2wW9Hbj37Q62Lp7K?=
 =?iso-8859-1?Q?Sp9ALD10veN/KaFh3ke2o7o6enTFiRQ4ujW8J7BdHczjrHm5W3oIYtj1kg?=
 =?iso-8859-1?Q?irju0oNHczswzTIpJFzYLKLY7Yf5TrDFX3J2V3qA5y1WR2ytz1fzsQBVt/?=
 =?iso-8859-1?Q?sDfbKnFdZa6UPy2SRy77CBY/HZstO2fGRNM6fcTvuVbZqCX3K7GmJJtIjM?=
 =?iso-8859-1?Q?JTfQRkRCw+PVdSgsAGdrbeEXENmPNUNRVRQQQztrbersMstOf9Jaj0nhbl?=
 =?iso-8859-1?Q?D/TZzjaPdpXo6ZIg5hea0xCbOtooLRPHsrTyrQCyO6hSDp8eDqfgoSvLyO?=
 =?iso-8859-1?Q?vBaELYhm7EsWlGqQkA3FaPhhSArNgwET7YO2zg87bFrEsQ8oWM8oVmi+TF?=
 =?iso-8859-1?Q?EylfKaOfK69pHDnVKJ7JBh08E1uqAQQnqyPTnrgUAvSi9KENHL/uBkx8rr?=
 =?iso-8859-1?Q?jp/uR5RfyT8MVM3jAJQ16jHXIvY8f+F4/Gy9+NQ2/7pXEMfGCguU7uskbp?=
 =?iso-8859-1?Q?6aJjjYFsYer8cqa7iDcKFmrcLfOpCoBYVCPV+Msxz0NkZnEn83/3hKykAy?=
 =?iso-8859-1?Q?fpgHiG9G+QdiYneuaOfbnSNYK8OCkOWqfjmEuvMgtOMLOxFO1wtSLQJqZN?=
 =?iso-8859-1?Q?VE6rGcGjMc6ZPKGOMxNGp5wGhuUJMiD7l1u1NP1AjUOyxBqp6f8HwxMh5z?=
 =?iso-8859-1?Q?LzKMi8o0IgxT4qT3hHR+U1RqAmReQP78k2K0MqOIBIcF8CMiHFGE8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Osb0+yW7FW/JWTj8R2fHoQnKor3py8FPuTxp6c1Kekfr32XMxxgGBxJySr?=
 =?iso-8859-1?Q?0u0P1cusfFHb0z7udZgarVTYx+15FP/DzWGdUuiPgzOJubL8wzbgvLvDrz?=
 =?iso-8859-1?Q?TLjw8PnNgEV/gQHPe21lRR1jCuxHHshIwILOG2L+iVQvNnx4s5qAmFu52E?=
 =?iso-8859-1?Q?+LEDOy6PP7Czw7V3nEVZrNxWsvAs7ZRdODSwRX5Ag/g4Mzi/Y9wHh658NR?=
 =?iso-8859-1?Q?3miGA4V8v6db0N8JEOcReDfgaw9gtKGOoYFeHTESdIAzC6NSTY/Lk1Awpo?=
 =?iso-8859-1?Q?sX8GtMh6nRtsX7BJwQiJLMB8R+z91zWLj21wDGkcgPYdUfsct0N3+MIe0I?=
 =?iso-8859-1?Q?RA+pfsjTvoUoeXOeYHd06Z3hYxqpEoVf85Nt1JRkUTO9MRCXrbJWbj5HTX?=
 =?iso-8859-1?Q?tEZCiRFtIZslbf55kGZ0eSvszPxmbPiKGbJa8uvYvZ0QBQd2l5bTWJyI72?=
 =?iso-8859-1?Q?R+hrwFruj/0Phkz/UHJTERkNLV8hRkPzWj4L1DMZPixv5xITTDWT1GuZYc?=
 =?iso-8859-1?Q?CJaY+/5buhNZOFNLzKpedxlGWImOTesTmuvKorasRsDcbHkLqfaTN8xNCI?=
 =?iso-8859-1?Q?WjZhnCGoYRVdl3XOvMNj/AvdujssEE+q9p+UVayzkyaiL3lFG60RLEka44?=
 =?iso-8859-1?Q?Csc1NIiaWosdB3nmxByunZBthnehvxX5ACdNsPjV5U7CuqhY7DwjuJRqyW?=
 =?iso-8859-1?Q?/bqvVdVj1tYzoUh915ldqHz/T7FxJ//2kHc6rHFwJWPhlUQ9nPJmhppe/q?=
 =?iso-8859-1?Q?+Mt9feFv27i/LJjhWzBewcGOIkLNttsUJn1J3FCUNmCFG7znOMHiGvEvi2?=
 =?iso-8859-1?Q?caDhnODRHHCK8+AuE+wGSAi3I4PDUdcjhkzaU8dZ5RfZwAhewSu5ZovyXW?=
 =?iso-8859-1?Q?ku+t7xYVYVsF0jtK7//PMkKlfjTXwSFG7Hg5Ks3L7I84nTF/kdfBU2smLt?=
 =?iso-8859-1?Q?HUt3sishX0JYdt8XrHnaCpP/NNW1U7kYU1NNgdZ5CVhcfDWOIsk4m9LjiA?=
 =?iso-8859-1?Q?gAVi/TtIXkvmHcBHL5xASRxQ9Kt/Nl2SrTPQq1jNm4ga7Zd1v6+XCkNpMc?=
 =?iso-8859-1?Q?u+vZDrgp/onQurCtXj8PgUXoOg6ESpXdAE1oNx7dzLbX/3GmM08rhqx5Uh?=
 =?iso-8859-1?Q?V73Qy9fHE18kund9YiwbU2wHsSH9nMyJF//lmZ1sKLSbvLbR9i3dn38D3l?=
 =?iso-8859-1?Q?DR4RJ76+j01BoiHGHmRjMcIt1ZQTczXsy5tUj5V3PVLpRFVtF7n9hWoig7?=
 =?iso-8859-1?Q?7s1HIYi3V2HyLEdm+HGCd5aIDuXHTKkX9LaTZhAG3SXuMRYwgwo2wi/Yt1?=
 =?iso-8859-1?Q?MuNZ//OfcNxcMo8ASsDoIIWaQ2ArMGck4bON4hQXj9D3ipTq/QD4VKiIdv?=
 =?iso-8859-1?Q?pCYOWIbxZqK+MAtgtlZF9hZG/Oqetyy78kSqX0RPwlwhOKdJVplhStkrKF?=
 =?iso-8859-1?Q?GesVQlaooaF0iaLSI+wcrV+XiUhB5JQ5h4qlZR8Su4mcmCCaUZT/ue83Fy?=
 =?iso-8859-1?Q?wZxk1C94Bm7PLYlPg0FjlaTVPPQG4ezbV6HV9meNGBOoKeN5Yt4nLkbZ19?=
 =?iso-8859-1?Q?AkH0nFAWT/COTttbLF+vcSnX4HUWp+Ee/9uTKiLkbVF3zxrHVgFw471TjP?=
 =?iso-8859-1?Q?PQH4Xk1XTJXneI17oP8Wkwqq/Pl2qzuwTM8Gvv8PO8aT1skS1VohMDDyc5?=
 =?iso-8859-1?Q?BeuZHFX8rC77fDI1tg3WCxXkIzRUmQ3w4SPFM0A7?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797306884FF4D777E25080DB93F2BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e2064eb-df58-48b6-7786-08dd1a80b348
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2024 07:43:42.2151
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /CDW5x44NeE2FRQTmOs5MRXQHfLz55drkgKMgbSNtWSF50DCThwMHpdRqVM8FUI/iMwE1aPfUA1fI73FjC6tRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7542
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Dec 2024 07:43:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64434

--_000_BL4PR11MB8797306884FF4D777E25080DB93F2BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.1.1 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/poky-7e081bd9=
8fdc5435e850d1df79a5e0f1e30293d0.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.1/poky-7e081bd98fdc5435e85=
0d1df79a5e0f1e30293d0.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-5.1.1 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: styhead
Tag: yocto-5.1.1
Git Revision: 7e081bd98fdc5435e850d1df79a5e0f1e30293d0
Release Artefact: poky-7e081bd98fdc5435e850d1df79a5e0f1e30293d0
sha: 1ae688856bcd4aa2d1a14c2659217143cc2050151a8c194b99e6b472b0a99710
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/poky-7e081bd9=
8fdc5435e850d1df79a5e0f1e30293d0.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.1/poky-7e081bd98fdc5435e85=
0d1df79a5e0f1e30293d0.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: styhead
Tag: yocto-5.1.1
Git Revision: b511d0146a2e8f316f4aecc90c853215674013ea
Release Artefact: oecore-b511d0146a2e8f316f4aecc90c853215674013ea
sha: 71eb36bf898b3eb5a7a79c2f1c057755405740e82b21a57ac540cebc1337e151
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/oecore-b511d0=
146a2e8f316f4aecc90c853215674013ea.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.1/oecore-b511d0146a2e8f316=
f4aecc90c853215674013ea.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: styhead
Tag: yocto-5.1.1
Git Revision: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
Release Artefact: meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
sha: 4c7f8100a3675d9863e51825def3df5b263ffc81cd57bae26eedbc156d771534
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/meta-mingw-77=
fe18d4f8ec34501045c5d92ce7e13b1bd129e9.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.1/meta-mingw-77fe18d4f8ec3=
4501045c5d92ce7e13b1bd129e9.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.10
Tag: yocto-5.1.1
Git Revision: 9602a684568910fd333ffce907fa020ad3661c26
Release Artefact: bitbake-9602a684568910fd333ffce907fa020ad3661c26
sha: 8f5304b7a71cf7ad5dc8e5ee8bbfc041780bd402712f314d2c3c8be79c89a526
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/bitbake-9602a=
684568910fd333ffce907fa020ad3661c26.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.1/bitbake-9602a684568910fd=
333ffce907fa020ad3661c26.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: styhead
Tag: yocto-5.1.1
Git Revision: 8288c8cae7fe7303e89d8ed286de91fc26ce6cc3


---------------
Contributors
---------------
Aditya Tayade
Alban Bedel
Aleksandar Nikolic
Alexander Kanavin
Antonin Godard
Bruce Ashfield
Chen Qi
Chris Laplante
Christian Lindeberg
Claus Stovgaard
Clayton Casciato
Daniel McGregor
Deepthi Hemraj
Harish Sadineni
Hiago De Franco
Hongxu Jia
Jagadeesh Krishnanjanappa
Jinfeng Wang
Jonas Gorski
Jose Quaresma
Joshua Watt
Julien Stephan
J=F6rg Sommer
Kai Kang
Katawann
Khem Raj
Lee Chee Yang
Markus Volk
Martin Jansa
Mathieu Dubois-Briand
Michael Opdenacker
Mikko Rapeli
Niko Mauno
Ola x Nilsson
Pavel Zhukov
Peter Kjellerstedt
Peter Marko
Purushottam Choudhary
Regis Dargent
Richard Purdie
Robert Yang
Rohini Sangam
Ross Burton
Sergei Zhmylev
Shunsuke Tokumoto
Steve Sakoman
Talel BELHAJSALEM
Tom Hochstein
Vijay Anusuri
Wang Mingyu
Yi Zhao
Yoann Congal
Zahir Hussain


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
go: Fix CVE-2024-34155 CVE-2024-34156 CVE-2024-34158
linux-yocto/6.6: Fix CVE-2023-52917 CVE-2024-46735 CVE-2024-46737 CVE-2024-=
46738 CVE-2024-46739 CVE-2024-46740 CVE-2024-46741 CVE-2024-46742 CVE-2024-=
46743 CVE-2024-46744 CVE-2024-46746 CVE-2024-46747 CVE-2024-46749 CVE-2024-=
46750 CVE-2024-46755 CVE-2024-46756 CVE-2024-46757 CVE-2024-46758 CVE-2024-=
46759 CVE-2024-46760 CVE-2024-46761 CVE-2024-46762 CVE-2024-46763 CVE-2024-=
46765 CVE-2024-46768 CVE-2024-46770 CVE-2024-46771 CVE-2024-46773 CVE-2024-=
46776 CVE-2024-46777 CVE-2024-46780 CVE-2024-46781 CVE-2024-46782 CVE-2024-=
46783 CVE-2024-46784 CVE-2024-46785 CVE-2024-46786 CVE-2024-46787 CVE-2024-=
46788 CVE-2024-46791 CVE-2024-46794 CVE-2024-46795 CVE-2024-46796 CVE-2024-=
46797 CVE-2024-46798 CVE-2024-46800 CVE-2024-46822 CVE-2024-46825 CVE-2024-=
46826 CVE-2024-46827 CVE-2024-46828 CVE-2024-46829 CVE-2024-46830 CVE-2024-=
46831 CVE-2024-46832 CVE-2024-46835 CVE-2024-46836 CVE-2024-46838 CVE-2024-=
46840 CVE-2024-46843 CVE-2024-46844 CVE-2024-46845 CVE-2024-46846 CVE-2024-=
46847 CVE-2024-46848 CVE-2024-46849 CVE-2024-46852 CVE-2024-46853 CVE-2024-=
46854 CVE-2024-46855 CVE-2024-46857 CVE-2024-46858 CVE-2024-46859 CVE-2024-=
46860 CVE-2024-46861 CVE-2024-46863 CVE-2024-46864 CVE-2024-47663 CVE-2024-=
47664 CVE-2024-47665 CVE-2024-47666 CVE-2024-47667 CVE-2024-47668 CVE-2024-=
47669 CVE-2024-47670 CVE-2024-47671 CVE-2024-47672 CVE-2024-47673 CVE-2024-=
47674 CVE-2024-47675 CVE-2024-47678 CVE-2024-47679 CVE-2024-47681 CVE-2024-=
47682 CVE-2024-47683 CVE-2024-47684 CVE-2024-47685 CVE-2024-47686 CVE-2024-=
47688 CVE-2024-47689 CVE-2024-47690 CVE-2024-47691 CVE-2024-47692 CVE-2024-=
47693 CVE-2024-47695 CVE-2024-47696 CVE-2024-47697 CVE-2024-47698 CVE-2024-=
47699 CVE-2024-47700 CVE-2024-47701 CVE-2024-47705 CVE-2024-47706 CVE-2024-=
47707 CVE-2024-47710 CVE-2024-47712 CVE-2024-47713 CVE-2024-47714 CVE-2024-=
47715 CVE-2024-47716 CVE-2024-47718 CVE-2024-47719 CVE-2024-47720 CVE-2024-=
47723 CVE-2024-47727 CVE-2024-47728 CVE-2024-47730 CVE-2024-47731 CVE-2024-=
47734 CVE-2024-47735 CVE-2024-47737 CVE-2024-47738 CVE-2024-47739 CVE-2024-=
47741 CVE-2024-47742 CVE-2024-47743 CVE-2024-47744 CVE-2024-47745 CVE-2024-=
47747 CVE-2024-47748 CVE-2024-47749 CVE-2024-47750 CVE-2024-47751 CVE-2024-=
47752 CVE-2024-47753 CVE-2024-47754 CVE-2024-47757 CVE-2024-49850 CVE-2024-=
49851 CVE-2024-49852 CVE-2024-49853 CVE-2024-49854 CVE-2024-49855 CVE-2024-=
49856 CVE-2024-49858 CVE-2024-49859 CVE-2024-49860 CVE-2024-49861 CVE-2024-=
49862
linux-yocto/6.10: Fix CVE-2023-52917 CVE-2024-46714 CVE-2024-46719 CVE-2024=
-46720 CVE-2024-46721 CVE-2024-46722 CVE-2024-46723 CVE-2024-46724 CVE-2024=
-46725 CVE-2024-46726 CVE-2024-46727 CVE-2024-46728 CVE-2024-46730 CVE-2024=
-46731 CVE-2024-46732 CVE-2024-46735 CVE-2024-46737 CVE-2024-46738 CVE-2024=
-46739 CVE-2024-46740 CVE-2024-46741 CVE-2024-46742 CVE-2024-46743 CVE-2024=
-46744 CVE-2024-46746 CVE-2024-46747 CVE-2024-46749 CVE-2024-46750 CVE-2024=
-46751 CVE-2024-46755 CVE-2024-46756 CVE-2024-46757 CVE-2024-46758 CVE-2024=
-46759 CVE-2024-46760 CVE-2024-46761 CVE-2024-46762 CVE-2024-46763 CVE-2024=
-46765 CVE-2024-46766 CVE-2024-46768 CVE-2024-46769 CVE-2024-46770 CVE-2024=
-46771 CVE-2024-46772 CVE-2024-46773 CVE-2024-46774 CVE-2024-46775 CVE-2024=
-46776 CVE-2024-46777 CVE-2024-46778 CVE-2024-46779 CVE-2024-46780 CVE-2024=
-46781 CVE-2024-46782 CVE-2024-46783 CVE-2024-46784 CVE-2024-46785 CVE-2024=
-46786 CVE-2024-46787 CVE-2024-46788 CVE-2024-46789 CVE-2024-46790 CVE-2024=
-46791 CVE-2024-46792 CVE-2024-46793 CVE-2024-46794 CVE-2024-46795 CVE-2024=
-46796 CVE-2024-46797 CVE-2024-46798 CVE-2024-46799 CVE-2024-46800 CVE-2024=
-46801 CVE-2024-46802 CVE-2024-46803 CVE-2024-46804 CVE-2024-46805 CVE-2024=
-46806 CVE-2024-46807 CVE-2024-46808 CVE-2024-46809 CVE-2024-46810 CVE-2024=
-46811 CVE-2024-46812 CVE-2024-46813 CVE-2024-46814 CVE-2024-46815 CVE-2024=
-46816 CVE-2024-46817 CVE-2024-46818 CVE-2024-46819 CVE-2024-46820 CVE-2024=
-46821 CVE-2024-46822 CVE-2024-46823 CVE-2024-46824 CVE-2024-46825 CVE-2024=
-46826 CVE-2024-46827 CVE-2024-46828 CVE-2024-46829 CVE-2024-46830 CVE-2024=
-46831 CVE-2024-46832 CVE-2024-46833 CVE-2024-46834 CVE-2024-46835 CVE-2024=
-46836 CVE-2024-46837 CVE-2024-46838 CVE-2024-46840 CVE-2024-46841 CVE-2024=
-46842 CVE-2024-46843 CVE-2024-46844 CVE-2024-46845 CVE-2024-46846 CVE-2024=
-46847 CVE-2024-46848 CVE-2024-46849 CVE-2024-46850 CVE-2024-46851 CVE-2024=
-46852 CVE-2024-46853 CVE-2024-46854 CVE-2024-46855 CVE-2024-46856 CVE-2024=
-46857 CVE-2024-46858 CVE-2024-46859 CVE-2024-46860 CVE-2024-46861 CVE-2024=
-46862 CVE-2024-46863 CVE-2024-46864 CVE-2024-46866 CVE-2024-46867 CVE-2024=
-46868 CVE-2024-46869 CVE-2024-46870 CVE-2024-46871 CVE-2024-47658 CVE-2024=
-47659 CVE-2024-47660 CVE-2024-47661 CVE-2024-47662 CVE-2024-47663 CVE-2024=
-47664 CVE-2024-47665 CVE-2024-47666 CVE-2024-47667 CVE-2024-47668 CVE-2024=
-47669 CVE-2024-47670 CVE-2024-47671 CVE-2024-47672 CVE-2024-47673 CVE-2024=
-47674 CVE-2024-47675 CVE-2024-47676 CVE-2024-47677 CVE-2024-47678 CVE-2024=
-47679 CVE-2024-47680 CVE-2024-47681 CVE-2024-47682 CVE-2024-47683 CVE-2024=
-47684 CVE-2024-47685 CVE-2024-47686 CVE-2024-47687 CVE-2024-47688 CVE-2024=
-47689 CVE-2024-47690 CVE-2024-47691 CVE-2024-47692 CVE-2024-47693 CVE-2024=
-47695 CVE-2024-47696 CVE-2024-47697 CVE-2024-47698 CVE-2024-47699 CVE-2024=
-47700 CVE-2024-47701 CVE-2024-47702 CVE-2024-47703 CVE-2024-47704 CVE-2024=
-47705 CVE-2024-47706 CVE-2024-47707 CVE-2024-47710 CVE-2024-47712 CVE-2024=
-47713 CVE-2024-47714 CVE-2024-47715 CVE-2024-47716 CVE-2024-47717 CVE-2024=
-47718 CVE-2024-47719 CVE-2024-47720 CVE-2024-47721 CVE-2024-47723 CVE-2024=
-47724 CVE-2024-47727 CVE-2024-47728 CVE-2024-47730 CVE-2024-47731 CVE-2024=
-47732 CVE-2024-47733 CVE-2024-47734 CVE-2024-47735 CVE-2024-47736 CVE-2024=
-47737 CVE-2024-47738 CVE-2024-47739 CVE-2024-47741 CVE-2024-47742 CVE-2024=
-47743 CVE-2024-47744 CVE-2024-47745 CVE-2024-47746 CVE-2024-47747 CVE-2024=
-47748 CVE-2024-47749 CVE-2024-47750 CVE-2024-47751 CVE-2024-47752 CVE-2024=
-47753 CVE-2024-47754 CVE-2024-47757 CVE-2024-49850 CVE-2024-49851 CVE-2024=
-49852 CVE-2024-49853 CVE-2024-49854 CVE-2024-49855 CVE-2024-49856 CVE-2024=
-49858 CVE-2024-49859 CVE-2024-49860 CVE-2024-49861 CVE-2024-49862 CVE-2024=
-49863 CVE-2024-49864 CVE-2024-49866 CVE-2024-49867 CVE-2024-49868 CVE-2024=
-49870 CVE-2024-49871 CVE-2024-49874 CVE-2024-49875
orc: Fix CVE-2024-40897 (follow-up fix)
vim: Fix CVE-2024-45306 CVE-2024-47814
wpa-supplicant: Ignore CVE-2024-5290
xserver-xorg: Fix CVE-2024-9632
xwayland: Fix CVE-2024-9632


---------------
Fixes
---------------
binutils: Add missing perl modules to RDEPENDS for nativsdk variant
binutils: Fix binutils mingw packaging
bitbake.conf: Mark VOLATILE_LOG_DIR & VOLATILE_TMP_DIR as obsolete
bitbake: Remove custom exception backtrace formatting
bitbake: bitbake: doc/user-manual: Update the BB_HASHSERVE_UPSTREAM
bitbake: fetch2/git: Use quote from shlex, not pipes
bitbake: fetch2: don't try to preserve all attributes when unpacking files
bitbake: fetch2: use persist_data context managers
bitbake: fetch/wget: Increase timeout to 100s from 30s
bitbake: gitsm: Add call_process_submodules() to remove duplicated code
bitbake: gitsm: Remove downloads/tmpdir when failed
bitbake: persist_data: close connection in SQLTable __exit__
bitbake: tests/fetch: Update GoModTest and GoModGitTest
bitbake: tests/fetch: Use our own mirror of mobile-broadband-provider to de=
couple from gnome gitlab
bitbake: tests/fetch: Use our own mirror of sysprof to decouple from gnome =
gitlab
bluez: Fix mesh builds on musl
build-appliance-image: Update to styhead head revision
cml1.bbclass: do_diffconfig: Don't override .config with .config.orig
contributor-guide: Remove duplicated words
cve-check: add field "modified" to JSON report
cve-check: add support for cvss v4.0
cve-check: do not skip cve status description after :
cve-check: fix malformed cve status description with : characters
dev-manual: add bblock documentation
dev-manual: bblock: use warning block instead of attention
dev-manual: document how to provide confs from layer.conf
documentation: features: describe distribution feature pni-name
documentation; features: remove duplicate word in distribution feature ext2
documentation: Makefile: add SPHINXLINTDOCS to specify subset to sphinx-lin=
t
documentation: Makefile: add support for xelatex
documentation: Makefile: publish pdf and epub versions too
documentation: Makefile: remove inkscape, replace by rsvg-convert
documentation: README: add instruction to run Vale on a subset
documentation: Replace VOLATILE_LOG_DIR with FILESYSTEM_PERMS_TABLES
documentation: Replace VOLATILE_TMP_DIR with FILESYSTEM_PERMS_TABLES
documentation: add a download page for epub and pdf
documentation: conf.py: add a bitbake_git extlink
documentation: conf.py: rename :cve: role to :cve_nist:
documentation: sphinx-static/switchers.js.in: do not refer to URL_ROOT anym=
ore
documentation: styles: vocabularies: Yocto: add sstate
e2fsprogs: removed 'sed -u' option
efi-bootdisk.wks: Increase overhead-factor to avoid test failures
ffmpeg: Add "libswresample libavcodec" to CVE_PRODUCT
ffmpeg: Disable asm optimizations on x86
ffmpeg: fix packaging examples
ffmpeg: nasm is x86 only, so only DEPEND if x86
ffmpeg: no need for textrel INSANE_SKIP
gcc-source: Fix racing on building gcc-source-14.2.0 and lib32-gcc-source-1=
4.2.0
gcc: add a backport patch to fix an issue with tzdata 2024b
git: upgrade to 2.46.1
glib-2.0: fix glib-2.0 ptest failure when upgrading tzdata2024b
glibc: Fix missing randomness in __gen_tempname
glibc: stable 2.40 branch updates
go: upgrade to 1.22.8
groff: fix rare build race in hdtbl
icu: update patch Upstream-Status
image.bbclass: Drop support for ImageQAFailed exceptions in image_qa
json-c: avoid ptest failure caused by valgrind
kexec-tools: update COMPATIBLE_HOST because of makedumpfile
kmscube: Upgrade to latest revision (b2f97f53e0..)
lib/oe/package-manager: skip processing installed-pkgs with empty globs
libevdev: upgrade to 1.13.3
libgfortran: fix buildpath QA issue
libpam: use libdir in conditional
linux-yocto/6.6: update to v6.6.54
linux-yocto/6.10: bsp/genericarm64: disable ARM64_SME
linux-yocto/6.10: cfg: gpio: allow to re-enable the deprecated GPIO sysfs i=
nterface
linux-yocto/6.10: genericarm64.cfg: enable CONFIG_DMA_CMA
linux-yocto/6.10: update to v6.10.14
linux-yocto: Enable l2tp drivers when ptest featuee is on
lsb-release: fix Distro Codename shell escaping
migration-guides/release-notes-4.0: update BB_HASHSERVE_UPSTREAM for new in=
frastructure
migration-guides/release-notes-5.0: NO_OUTPUT -> NO_COLOR
migration-guides/release-notes-5.1: add beaglebone-yocto parselogs test oeq=
a failure
migration-guides/release-notes-5.1: document added python3-libarchive-c pte=
st
migration-guides/release-notes-5.1: document fixed _test_devtool_add_git_ur=
l test
migration-guides/release-notes-5.1: document oeqa/selftest envvars change
migration-guides/release-notes-5.1: document spirv-tools reproducibility
migration-guides/release-notes-5.1: fix spdx bullet point
migration-guides/release-notes-5.1: update for several section
migration-guides/release-notes-5.1: update release note for styhead
migration-guides: 5.1: fix titles
migration-guides: add release notes for 4.0.21 and 4.0.22
oeqa/postactions: Fix archive retrieval from target
oeqa/runtime/ssh: Fix incorrect timeout fix
oeqa/runtime/ssh: Rework ssh timeout
oeqa/selftest/gcc: Fix kex exchange identification error
oeqa/selftest: Update the BB_HASHSERVE_UPSTREAM
openssl: Fix SDK environment script to avoid unbound variable
orc: upgrade to 0.4.40
overview-manual: concepts: add details on package splitting
ovmf-native: remove .pyc files from install
package_rpm: Check if file exists before open()
package_rpm: restrict rpm to 4 threads
package_rpm: use zstd's default compression level
poky.conf: bump version for 5.1.1
pseudo: Fix envp bug and add posix_spawn wrapper
python3-maturin: sort external libs in wheel files
python3-setuptools: Add "python:setuptools" to CVE_PRODUCT
qemu: Fix build on musl/riscv64
qemurunner: Clean up serial_lock handling
ref-manual: add missing CVE_CHECK manifest variables
ref-manual: add missing EXTERNAL_KERNEL_DEVICETREE variable
ref-manual: add missing OPKGBUILDCMD variable
ref-manual: add missing TESTIMAGE_FAILED_QA_ARTIFACTS
ref-manual: add missing image manifest variables
ref-manual: add missing nospdx class
ref-manual: add missing variable PRSERV_UPSTREAM
ref-manual: add mission pep517-backend sanity check
ref-manual: add new RECIPE_UPGRADE_EXTRA_TASKS variable
ref-manual: add new retain class and variables
ref-manual: add new vex class
ref-manual: devtool-reference: document missing commands
ref-manual: devtool-reference: refresh example outputs
ref-manual: drop TCLIBCAPPEND variable
ref-manual: drop siteconfig class
ref-manual: faq: add q&a on class appends
ref-manual: fix ordering of insane checks list
ref-manual: merge patch-status-* to patch-status
ref-manual: release-process: add a reference to the doc's release
ref-manual: release-process: refresh the current LTS releases
ref-manual: release-process: update releases.svg
ref-manual: release-process: update releases.svg with month after "Current"
ref-manual: structure.rst: document missing tmp/ dirs
ref-manual: variables: add SIGGEN_LOCKEDSIGS* variables
rootfs-postcommands.bbclass: make opkg status reproducible
scripts/install-buildtools: Update to 5.1
selftest/sstatetests: run CDN mirror check only once
shadow: use update-alternatives to handle groups.1
strace: download release tarballs from GitHub
systemd: fix broken links for sysvinit-compatible commands
tcl: skip io-13.6 test case
toolchain-shar-extract.sh: exit when post-relocate-setup.sh fails
tune-cortexa32: set tune feature as armv8a
tzdata/tzcode-native: upgrade to 2024b
uboot-sign: fix concat_dtb arguments
udev-extraconf: fix network.sh script did not configure hotplugged interfac=
es
util-linux: Add `findmnt` to the bash completion RDEPENDS
vim: Upgrade to 9.1.0764
virglrenderer: Add patch to fix -int-conversion build issue
weston: Add missing runtime dependency on freerdp
weston: backport patch to allow neatvnc < v0.9.0
wireless-regdb: upgrade to 2024.10.07
xserver-xorg: upgrade to 21.1.14
xwayland: upgrade to 24.1.4



--_000_BL4PR11MB8797306884FF4D777E25080DB93F2BL4PR11MB8797namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 5.1.1 Release is now available for download.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/poky-7e081bd98fdc5435=
e850d1df79a5e0f1e30293d0.tar.bz2">https://downloads.yoctoproject.org/releas=
es/yocto/yocto-5.1.1/poky-7e081bd98fdc5435e850d1df79a5e0f1e30293d0.tar.bz2<=
/a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.1.1/poky-7e081bd98fdc5435e850d1df79a=
5e0f1e30293d0.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.1.1/p=
oky-7e081bd98fdc5435e850d1df79a5e0f1e30293d0.tar.bz2</a><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/RELEASENOTES">https:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/RELEASENOTES</a><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/testreport.txt">https=
://downloads.yoctoproject.org/releases/yocto/yocto-5.1.1/testreport.txt</a>=
<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.1.1 Release=
 Notes<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 7e081=
bd98fdc5435e850d1df79a5e0f1e30293d0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-7e081bd98fdc5435e850d1df79a5e0f1e30293d0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 1ae688856bcd4a=
a2d1a14c2659217143cc2050151a8c194b99e6b472b0a99710<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.1/poky-7e081bd98fdc5435e850d1df79a=
5e0f1e30293d0.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.1/poky-7e081bd98fdc5435e850d1df79a5e0f1e30293=
d0.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: b511d=
0146a2e8f316f4aecc90c853215674013ea<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-b511d0146a2e8f316f4aecc90c853215674013ea<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 71eb36bf898b3e=
b5a7a79c2f1c057755405740e82b21a57ac540cebc1337e151<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.1/oecore-b511d0146a2e8f316f4aecc90=
c853215674013ea.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.1/oecore-b511d0146a2e8f316f4aecc90c8532156740=
13ea.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 77fe1=
8d4f8ec34501045c5d92ce7e13b1bd129e9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 4c7f8100a3675d=
9863e51825def3df5b263ffc81cd57bae26eedbc156d771534<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.1/meta-mingw-77fe18d4f8ec34501045c=
5d92ce7e13b1bd129e9.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.1/meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b=
1bd129e9.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.10<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 9602a=
684568910fd333ffce907fa020ad3661c26<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-9602a684568910fd333ffce907fa020ad3661c26<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 8f5304b7a71cf7=
ad5dc8e5ee8bbfc041780bd402712f314d2c3c8be79c89a526<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.1/bitbake-9602a684568910fd333ffce9=
07fa020ad3661c26.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.1/bitbake-9602a684568910fd333ffce907fa020ad36=
61c26.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 8288c=
8cae7fe7303e89d8ed286de91fc26ce6cc3<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aditya Tayade<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alban Bedel<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexander Kanavin<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chen Qi<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chris Laplante<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Christian Lindeberg=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Claus Stovgaard<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Clayton Casciato<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Daniel McGregor<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepthi Hemraj<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Harish Sadineni<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hiago De Franco<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hongxu Jia<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jagadeesh Krishnanj=
anappa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jinfeng Wang<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jonas Gorski<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jose Quaresma<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joshua Watt<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Julien Stephan<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">J=F6rg Sommer<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Kai Kang<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Katawann<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Khem Raj<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Markus Volk<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Martin Jansa<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mathieu Dubois-Bria=
nd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michael Opdenacker<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mikko Rapeli<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Niko Mauno<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ola x Nilsson<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Pavel Zhukov<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Kjellerstedt<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Purushottam Choudha=
ry<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regis Dargent<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert Yang<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rohini Sangam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sergei Zhmylev<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Shunsuke Tokumoto<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Talel BELHAJSALEM<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tom Hochstein<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yi Zhao<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yoann Congal<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Zahir Hussain<o:p><=
/o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2024-34=
155 CVE-2024-34156 CVE-2024-34158<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: Fi=
x CVE-2023-52917 CVE-2024-46735 CVE-2024-46737 CVE-2024-46738 CVE-2024-4673=
9 CVE-2024-46740 CVE-2024-46741 CVE-2024-46742 CVE-2024-46743 CVE-2024-4674=
4 CVE-2024-46746 CVE-2024-46747 CVE-2024-46749
 CVE-2024-46750 CVE-2024-46755 CVE-2024-46756 CVE-2024-46757 CVE-2024-46758=
 CVE-2024-46759 CVE-2024-46760 CVE-2024-46761 CVE-2024-46762 CVE-2024-46763=
 CVE-2024-46765 CVE-2024-46768 CVE-2024-46770 CVE-2024-46771 CVE-2024-46773=
 CVE-2024-46776 CVE-2024-46777 CVE-2024-46780
 CVE-2024-46781 CVE-2024-46782 CVE-2024-46783 CVE-2024-46784 CVE-2024-46785=
 CVE-2024-46786 CVE-2024-46787 CVE-2024-46788 CVE-2024-46791 CVE-2024-46794=
 CVE-2024-46795 CVE-2024-46796 CVE-2024-46797 CVE-2024-46798 CVE-2024-46800=
 CVE-2024-46822 CVE-2024-46825 CVE-2024-46826
 CVE-2024-46827 CVE-2024-46828 CVE-2024-46829 CVE-2024-46830 CVE-2024-46831=
 CVE-2024-46832 CVE-2024-46835 CVE-2024-46836 CVE-2024-46838 CVE-2024-46840=
 CVE-2024-46843 CVE-2024-46844 CVE-2024-46845 CVE-2024-46846 CVE-2024-46847=
 CVE-2024-46848 CVE-2024-46849 CVE-2024-46852
 CVE-2024-46853 CVE-2024-46854 CVE-2024-46855 CVE-2024-46857 CVE-2024-46858=
 CVE-2024-46859 CVE-2024-46860 CVE-2024-46861 CVE-2024-46863 CVE-2024-46864=
 CVE-2024-47663 CVE-2024-47664 CVE-2024-47665 CVE-2024-47666 CVE-2024-47667=
 CVE-2024-47668 CVE-2024-47669 CVE-2024-47670
 CVE-2024-47671 CVE-2024-47672 CVE-2024-47673 CVE-2024-47674 CVE-2024-47675=
 CVE-2024-47678 CVE-2024-47679 CVE-2024-47681 CVE-2024-47682 CVE-2024-47683=
 CVE-2024-47684 CVE-2024-47685 CVE-2024-47686 CVE-2024-47688 CVE-2024-47689=
 CVE-2024-47690 CVE-2024-47691 CVE-2024-47692
 CVE-2024-47693 CVE-2024-47695 CVE-2024-47696 CVE-2024-47697 CVE-2024-47698=
 CVE-2024-47699 CVE-2024-47700 CVE-2024-47701 CVE-2024-47705 CVE-2024-47706=
 CVE-2024-47707 CVE-2024-47710 CVE-2024-47712 CVE-2024-47713 CVE-2024-47714=
 CVE-2024-47715 CVE-2024-47716 CVE-2024-47718
 CVE-2024-47719 CVE-2024-47720 CVE-2024-47723 CVE-2024-47727 CVE-2024-47728=
 CVE-2024-47730 CVE-2024-47731 CVE-2024-47734 CVE-2024-47735 CVE-2024-47737=
 CVE-2024-47738 CVE-2024-47739 CVE-2024-47741 CVE-2024-47742 CVE-2024-47743=
 CVE-2024-47744 CVE-2024-47745 CVE-2024-47747
 CVE-2024-47748 CVE-2024-47749 CVE-2024-47750 CVE-2024-47751 CVE-2024-47752=
 CVE-2024-47753 CVE-2024-47754 CVE-2024-47757 CVE-2024-49850 CVE-2024-49851=
 CVE-2024-49852 CVE-2024-49853 CVE-2024-49854 CVE-2024-49855 CVE-2024-49856=
 CVE-2024-49858 CVE-2024-49859 CVE-2024-49860
 CVE-2024-49861 CVE-2024-49862<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.10: F=
ix CVE-2023-52917 CVE-2024-46714 CVE-2024-46719 CVE-2024-46720 CVE-2024-467=
21 CVE-2024-46722 CVE-2024-46723 CVE-2024-46724 CVE-2024-46725 CVE-2024-467=
26 CVE-2024-46727 CVE-2024-46728 CVE-2024-46730
 CVE-2024-46731 CVE-2024-46732 CVE-2024-46735 CVE-2024-46737 CVE-2024-46738=
 CVE-2024-46739 CVE-2024-46740 CVE-2024-46741 CVE-2024-46742 CVE-2024-46743=
 CVE-2024-46744 CVE-2024-46746 CVE-2024-46747 CVE-2024-46749 CVE-2024-46750=
 CVE-2024-46751 CVE-2024-46755 CVE-2024-46756
 CVE-2024-46757 CVE-2024-46758 CVE-2024-46759 CVE-2024-46760 CVE-2024-46761=
 CVE-2024-46762 CVE-2024-46763 CVE-2024-46765 CVE-2024-46766 CVE-2024-46768=
 CVE-2024-46769 CVE-2024-46770 CVE-2024-46771 CVE-2024-46772 CVE-2024-46773=
 CVE-2024-46774 CVE-2024-46775 CVE-2024-46776
 CVE-2024-46777 CVE-2024-46778 CVE-2024-46779 CVE-2024-46780 CVE-2024-46781=
 CVE-2024-46782 CVE-2024-46783 CVE-2024-46784 CVE-2024-46785 CVE-2024-46786=
 CVE-2024-46787 CVE-2024-46788 CVE-2024-46789 CVE-2024-46790 CVE-2024-46791=
 CVE-2024-46792 CVE-2024-46793 CVE-2024-46794
 CVE-2024-46795 CVE-2024-46796 CVE-2024-46797 CVE-2024-46798 CVE-2024-46799=
 CVE-2024-46800 CVE-2024-46801 CVE-2024-46802 CVE-2024-46803 CVE-2024-46804=
 CVE-2024-46805 CVE-2024-46806 CVE-2024-46807 CVE-2024-46808 CVE-2024-46809=
 CVE-2024-46810 CVE-2024-46811 CVE-2024-46812
 CVE-2024-46813 CVE-2024-46814 CVE-2024-46815 CVE-2024-46816 CVE-2024-46817=
 CVE-2024-46818 CVE-2024-46819 CVE-2024-46820 CVE-2024-46821 CVE-2024-46822=
 CVE-2024-46823 CVE-2024-46824 CVE-2024-46825 CVE-2024-46826 CVE-2024-46827=
 CVE-2024-46828 CVE-2024-46829 CVE-2024-46830
 CVE-2024-46831 CVE-2024-46832 CVE-2024-46833 CVE-2024-46834 CVE-2024-46835=
 CVE-2024-46836 CVE-2024-46837 CVE-2024-46838 CVE-2024-46840 CVE-2024-46841=
 CVE-2024-46842 CVE-2024-46843 CVE-2024-46844 CVE-2024-46845 CVE-2024-46846=
 CVE-2024-46847 CVE-2024-46848 CVE-2024-46849
 CVE-2024-46850 CVE-2024-46851 CVE-2024-46852 CVE-2024-46853 CVE-2024-46854=
 CVE-2024-46855 CVE-2024-46856 CVE-2024-46857 CVE-2024-46858 CVE-2024-46859=
 CVE-2024-46860 CVE-2024-46861 CVE-2024-46862 CVE-2024-46863 CVE-2024-46864=
 CVE-2024-46866 CVE-2024-46867 CVE-2024-46868
 CVE-2024-46869 CVE-2024-46870 CVE-2024-46871 CVE-2024-47658 CVE-2024-47659=
 CVE-2024-47660 CVE-2024-47661 CVE-2024-47662 CVE-2024-47663 CVE-2024-47664=
 CVE-2024-47665 CVE-2024-47666 CVE-2024-47667 CVE-2024-47668 CVE-2024-47669=
 CVE-2024-47670 CVE-2024-47671 CVE-2024-47672
 CVE-2024-47673 CVE-2024-47674 CVE-2024-47675 CVE-2024-47676 CVE-2024-47677=
 CVE-2024-47678 CVE-2024-47679 CVE-2024-47680 CVE-2024-47681 CVE-2024-47682=
 CVE-2024-47683 CVE-2024-47684 CVE-2024-47685 CVE-2024-47686 CVE-2024-47687=
 CVE-2024-47688 CVE-2024-47689 CVE-2024-47690
 CVE-2024-47691 CVE-2024-47692 CVE-2024-47693 CVE-2024-47695 CVE-2024-47696=
 CVE-2024-47697 CVE-2024-47698 CVE-2024-47699 CVE-2024-47700 CVE-2024-47701=
 CVE-2024-47702 CVE-2024-47703 CVE-2024-47704 CVE-2024-47705 CVE-2024-47706=
 CVE-2024-47707 CVE-2024-47710 CVE-2024-47712
 CVE-2024-47713 CVE-2024-47714 CVE-2024-47715 CVE-2024-47716 CVE-2024-47717=
 CVE-2024-47718 CVE-2024-47719 CVE-2024-47720 CVE-2024-47721 CVE-2024-47723=
 CVE-2024-47724 CVE-2024-47727 CVE-2024-47728 CVE-2024-47730 CVE-2024-47731=
 CVE-2024-47732 CVE-2024-47733 CVE-2024-47734
 CVE-2024-47735 CVE-2024-47736 CVE-2024-47737 CVE-2024-47738 CVE-2024-47739=
 CVE-2024-47741 CVE-2024-47742 CVE-2024-47743 CVE-2024-47744 CVE-2024-47745=
 CVE-2024-47746 CVE-2024-47747 CVE-2024-47748 CVE-2024-47749 CVE-2024-47750=
 CVE-2024-47751 CVE-2024-47752 CVE-2024-47753
 CVE-2024-47754 CVE-2024-47757 CVE-2024-49850 CVE-2024-49851 CVE-2024-49852=
 CVE-2024-49853 CVE-2024-49854 CVE-2024-49855 CVE-2024-49856 CVE-2024-49858=
 CVE-2024-49859 CVE-2024-49860 CVE-2024-49861 CVE-2024-49862 CVE-2024-49863=
 CVE-2024-49864 CVE-2024-49866 CVE-2024-49867
 CVE-2024-49868 CVE-2024-49870 CVE-2024-49871 CVE-2024-49874 CVE-2024-49875=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">orc: Fix CVE-2024-4=
0897 (follow-up fix)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Fix CVE-2024-4=
5306 CVE-2024-47814<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wpa-supplicant: Ign=
ore CVE-2024-5290<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: Fix C=
VE-2024-9632<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xwayland: Fix CVE-2=
024-9632<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Add missi=
ng perl modules to RDEPENDS for nativsdk variant<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix binut=
ils mingw packaging<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake.conf: Mark =
VOLATILE_LOG_DIR &amp; VOLATILE_TMP_DIR as obsolete<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: Remove cus=
tom exception backtrace formatting<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: bitbake: d=
oc/user-manual: Update the BB_HASHSERVE_UPSTREAM<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch2/git=
: Use quote from shlex, not pipes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch2: do=
n't try to preserve all attributes when unpacking files<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch2: us=
e persist_data context managers<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch/wget=
: Increase timeout to 100s from 30s<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: gitsm: Add=
 call_process_submodules() to remove duplicated code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: gitsm: Rem=
ove downloads/tmpdir when failed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: persist_da=
ta: close connection in SQLTable __exit__<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Update GoModTest and GoModGitTest<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Use our own mirror of mobile-broadband-provider to decouple from gnome g=
itlab<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Use our own mirror of sysprof to decouple from gnome gitlab<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bluez: Fix mesh bui=
lds on musl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to styhead head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cml1.bbclass: do_di=
ffconfig: Don't override .config with .config.orig<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
Remove duplicated words<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check: add fiel=
d &quot;modified&quot; to JSON report<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check: add supp=
ort for cvss v4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check: do not s=
kip cve status description after :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check: fix malf=
ormed cve status description with : characters<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual: add bbl=
ock documentation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual: bblock:=
 use warning block instead of attention<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual: documen=
t how to provide confs from layer.conf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: feat=
ures: describe distribution feature pni-name<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation; feat=
ures: remove duplicate word in distribution feature ext2<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: Make=
file: add SPHINXLINTDOCS to specify subset to sphinx-lint<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: Make=
file: add support for xelatex<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: Make=
file: publish pdf and epub versions too<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: Make=
file: remove inkscape, replace by rsvg-convert<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: READ=
ME: add instruction to run Vale on a subset<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: Repl=
ace VOLATILE_LOG_DIR with FILESYSTEM_PERMS_TABLES<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: Repl=
ace VOLATILE_TMP_DIR with FILESYSTEM_PERMS_TABLES<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: add =
a download page for epub and pdf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: conf=
.py: add a bitbake_git extlink<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: conf=
.py: rename :cve: role to :cve_nist:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: sphi=
nx-static/switchers.js.in: do not refer to URL_ROOT anymore<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: styl=
es: vocabularies: Yocto: add sstate<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">e2fsprogs: removed =
'sed -u' option<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">efi-bootdisk.wks: I=
ncrease overhead-factor to avoid test failures<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Add &quot;l=
ibswresample libavcodec&quot; to CVE_PRODUCT<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Disable asm=
 optimizations on x86<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: fix packagi=
ng examples<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: nasm is x86=
 only, so only DEPEND if x86<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: no need for=
 textrel INSANE_SKIP<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc-source: Fix rac=
ing on building gcc-source-14.2.0 and lib32-gcc-source-14.2.0<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: add a backport=
 patch to fix an issue with tzdata 2024b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">git: upgrade to 2.4=
6.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: fix glib-=
2.0 ptest failure when upgrading tzdata2024b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: Fix missing =
randomness in __gen_tempname<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.40 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: upgrade to 1.22=
.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">groff: fix rare bui=
ld race in hdtbl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">icu: update patch U=
pstream-Status<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">image.bbclass: Drop=
 support for ImageQAFailed exceptions in image_qa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">json-c: avoid ptest=
 failure caused by valgrind<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kexec-tools: update=
 COMPATIBLE_HOST because of makedumpfile<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kmscube: Upgrade to=
 latest revision (b2f97f53e0..)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lib/oe/package-mana=
ger: skip processing installed-pkgs with empty globs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libevdev: upgrade t=
o 1.13.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libgfortran: fix bu=
ildpath QA issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpam: use libdir =
in conditional<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: up=
date to v6.6.54<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.10: b=
sp/genericarm64: disable ARM64_SME<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.10: c=
fg: gpio: allow to re-enable the deprecated GPIO sysfs interface<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.10: g=
enericarm64.cfg: enable CONFIG_DMA_CMA<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.10: u=
pdate to v6.10.14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto: Enable=
 l2tp drivers when ptest featuee is on<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lsb-release: fix Di=
stro Codename shell escaping<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides/re=
lease-notes-4.0: update BB_HASHSERVE_UPSTREAM for new infrastructure<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides/re=
lease-notes-5.0: NO_OUTPUT -&gt; NO_COLOR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides/re=
lease-notes-5.1: add beaglebone-yocto parselogs test oeqa failure<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides/re=
lease-notes-5.1: document added python3-libarchive-c ptest<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides/re=
lease-notes-5.1: document fixed _test_devtool_add_git_url test<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides/re=
lease-notes-5.1: document oeqa/selftest envvars change<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides/re=
lease-notes-5.1: document spirv-tools reproducibility<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides/re=
lease-notes-5.1: fix spdx bullet point<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides/re=
lease-notes-5.1: update for several section<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides/re=
lease-notes-5.1: update release note for styhead<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: 5=
.1: fix titles<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.21 and 4.0.22<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/postactions: F=
ix archive retrieval from target<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/runtime/ssh: F=
ix incorrect timeout fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/runtime/ssh: R=
ework ssh timeout<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/selftest/gcc: =
Fix kex exchange identification error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/selftest: Upda=
te the BB_HASHSERVE_UPSTREAM<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Fix SDK en=
vironment script to avoid unbound variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">orc: upgrade to 0.4=
.40<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual: co=
ncepts: add details on package splitting<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ovmf-native: remove=
 .pyc files from install<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package_rpm: Check =
if file exists before open()<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package_rpm: restri=
ct rpm to 4 threads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package_rpm: use zs=
td's default compression level<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.1.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Fix envp bu=
g and add posix_spawn wrapper<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-maturin: so=
rt external libs in wheel files<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-setuptools:=
 Add &quot;python:setuptools&quot; to CVE_PRODUCT<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Fix build on =
musl/riscv64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemurunner: Clean u=
p serial_lock handling<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing CVE_CHECK manifest variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing EXTERNAL_KERNEL_DEVICETREE variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing OPKGBUILDCMD variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing TESTIMAGE_FAILED_QA_ARTIFACTS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing image manifest variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing nospdx class<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing variable PRSERV_UPSTREAM<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sion pep517-backend sanity check<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add new=
 RECIPE_UPGRADE_EXTRA_TASKS variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add new=
 retain class and variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add new=
 vex class<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: devtool=
-reference: document missing commands<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: devtool=
-reference: refresh example outputs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: drop TC=
LIBCAPPEND variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: drop si=
teconfig class<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: faq: ad=
d q&amp;a on class appends<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: fix ord=
ering of insane checks list<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: merge p=
atch-status-* to patch-status<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: add a reference to the doc's release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: refresh the current LTS releases<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: update releases.svg<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: update releases.svg with month after &quot;Current&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: structu=
re.rst: document missing tmp/ dirs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: variabl=
es: add SIGGEN_LOCKEDSIGS* variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rootfs-postcommands=
.bbclass: make opkg status reproducible<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">selftest/sstatetest=
s: run CDN mirror check only once<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">shadow: use update-=
alternatives to handle groups.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">strace: download re=
lease tarballs from GitHub<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: fix broken=
 links for sysvinit-compatible commands<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tcl: skip io-13.6 t=
est case<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">toolchain-shar-extr=
act.sh: exit when post-relocate-setup.sh fails<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tune-cortexa32: set=
 tune feature as armv8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzdata/tzcode-nativ=
e: upgrade to 2024b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">uboot-sign: fix con=
cat_dtb arguments<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">udev-extraconf: fix=
 network.sh script did not configure hotplugged interfaces<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">util-linux: Add `fi=
ndmnt` to the bash completion RDEPENDS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Upgrade to 9.1=
.0764<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">virglrenderer: Add =
patch to fix -int-conversion build issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">weston: Add missing=
 runtime dependency on freerdp<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">weston: backport pa=
tch to allow neatvnc &lt; v0.9.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wireless-regdb: upg=
rade to 2024.10.07<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: upgra=
de to 21.1.14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xwayland: upgrade t=
o 24.1.4<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797306884FF4D777E25080DB93F2BL4PR11MB8797namp_--

