Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A136CCF9F0
	for <webhook@archiver.kernel.org>; Sat,  1 Nov 2025 10:52:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.3174.1761994351733286210
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Nov 2025 03:52:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=IS44XIw3;
 spf=pass (domain: intel.com, ip: 192.198.163.8, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761994352; x=1793530352;
  h=from:to:subject:date:message-id:mime-version;
  bh=ukRtcJ5Ng0S3B1CzMMiezPMTG2U8XZIgCJjOGE9oYZY=;
  b=IS44XIw3Pv3ZfmQLdj6bH/am/PTw0NNLc3kJGenHdC4haRKhfk47yqzG
   nb+xgSAL2EIgb9VJhq3lZYfXVQGVgTEAPjihGXNeUEzIirgpCb1vDECms
   krElYCywt/8jgZ09PLGdOOF+euIKIun71AE9X3c4lK1D6a/JKFJ2xZAuz
   GTEUa2nFz3w2CAOPSQXDPvmRsuW4KOBJT3o2gv5RjQwbgVtaSFn5xJlEj
   ttjxlEW3tQbKs9IbqkuvTK30h87SzP5RhxRtmFSOX+FJWyIMCyukEknH2
   Yn+w9LA0PvSrtFUkBuEK6zIkhhAEaTU0vdm+PSeHGJr9K/kITXKpWFYvR
   Q==;
X-CSE-ConnectionGUID: z7+T3e9iSKOR6nF42CGA6A==
X-CSE-MsgGUID: SGWn1y88QgyrxKsFphKNRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="81770480"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; 
   d="scan'208,217";a="81770480"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2025 03:52:31 -0700
X-CSE-ConnectionGUID: thIOfBsMTCyJiQzYnt3JPg==
X-CSE-MsgGUID: Mb2NxFBcS5qXyQR36gXLxg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2025 03:52:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sat, 1 Nov 2025 03:52:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sat, 1 Nov 2025 03:52:30 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.0) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sat, 1 Nov 2025 03:52:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KAO0VChL7UEXO3S22vSKuXMD+vbkd5Hl8IWoZeopLgU8S1Lsxf+8nD/cFcqW3ht42nP7kQQI13Yli1mdErUvWlKO+rfP5FA+GoPMF5Igdues5LvmghCl4wvP58AMMpeW+TaXIepU5p6UP/bHaO5OdZi4fW21yzkUDqIh9ILIlCOcgl1VnVFbQSG16YJagot8INnItBGi7vP90i2TdmuEss7z0fklzitByfaVH24FdydNii5ueJScCCHptaFYlhBDmeYbzmLdPGe1YKUGKUp1/PaFx3sX4911bzVB8COTxnitYGXlosOVMnYu//XvrWJ10rNU7JPlr2zGhj6oRJld4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HJq78e9E0c/Rn9bmDwodXM/oNIqyhuVsxVFprsDlULY=;
 b=uQtZpaMFXjD2V5jq2S6nn1DK3QMK2/rroy145AshgJugzyjQ4cuapQ4bVi+6kvHKkZOhYHmlR0n3GP8p8NU056BqxsrOHX1Lyl4VAHOUecCtYE/ySUQFWXW5ZQ6gaofCujsLVI0mLJQ9ajldzMJVoki6nJPT7A2zKbcVbwUtbtzS1Sy/anA2O2r2fuJc5ONI8lDq1u0FmlYeNYKaJskVR2O13KOcGnkfg9DCWN5PFaXbBcN56a9EEspWbLDT49k9ahf1zYy4A5Uy8NiDDKJgInumC+8/eBUSDEx2CUjot0r4xGso8CC43CXm2sqvJb19OKVlEX4fWbOm3DSoCSdHag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SA2PR11MB5179.namprd11.prod.outlook.com (2603:10b6:806:112::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Sat, 1 Nov
 2025 10:52:23 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%5]) with mapi id 15.20.9275.013; Sat, 1 Nov 2025
 10:52:23 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT]  Yocto Project 5.0.13(scarthgap-5.0.13) is Released
Thread-Topic: [ANNOUNCEMENT]  Yocto Project 5.0.13(scarthgap-5.0.13) is
 Released
Thread-Index: AdxKPuj+BB9+pESJSNy9oAIuNoBzkQ==
Date: Sat, 1 Nov 2025 10:52:23 +0000
Message-ID: <BL4PR11MB8797611B95C56D63BDA48F40B9F9A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SA2PR11MB5179:EE_
x-ms-office365-filtering-correlation-id: 4a1fe301-2c7b-49f2-4df8-08de1934bcff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|10070799003|366016|38070700021|13003099007|8096899003;
x-microsoft-antispam-message-info: =?us-ascii?Q?HTyoyPUiRG4Jav9AIzNNSEXuIvNt8ai6QolrnomN1xvUVjVVOkyDQlAPVrzp?=
 =?us-ascii?Q?MpWnfSAGuLppu225URTV2VEcIw+F18zgILrP80bMMUrMSu5BIHjEFN9aGqB0?=
 =?us-ascii?Q?V5PPI+DDKLXKGR6osUlVZm3XHLT9T9X+aAbvixzZ01/Fgy7Lc1dabh/njGak?=
 =?us-ascii?Q?AjUn7baqATzBgA9mzK9HnkZllPbTDs9PPbBo6A4K1ggXataZuiBMc23++MTH?=
 =?us-ascii?Q?VpLSSMgBUJzTCJCA2xS3J2a76lp7V8Bq5CI+cjE9hw8Tmp19fvwwSfquuBR1?=
 =?us-ascii?Q?MeJmgErQh61gmm1koTdpOAMXIU8c3PCbfGg8keDeGZeYYqveznniHB3keTKT?=
 =?us-ascii?Q?PQyxRCCiJRc85DSSnu82BdCZnRonbzfZu8akL9KTwzC27HgVh8yobuE/km43?=
 =?us-ascii?Q?3fwWhm7BTapT26ZVikgkZUyawB5CNryrPWdJDmeeXYYwRE/QXJUrcR0ABSJb?=
 =?us-ascii?Q?sXpUEH9lLuo/AL3YpkMo5DsL4NyxJcwYyesIF2k7TWQsN57BKJZ7pTRd1cqx?=
 =?us-ascii?Q?ygaTz9AxMkMM5zFFhr8h+imFdalOAYlSlfF0dNRUzeHqAnEo0WSNiaSjEtHb?=
 =?us-ascii?Q?/XcFmZ7Ab43WsoIuJr6I+JG5BVmz6NffMm2HH42eCVvwrInVBgF6TjEMI82C?=
 =?us-ascii?Q?fW0vBKpK5GCkJmI1h51qQEOJ+QN3XcgXpc/OGfF5Q4KvIaU6APgMyZM31Pzl?=
 =?us-ascii?Q?0i3NCyO6SzBamB1kmZyK+zvqud9tsh23CW3wjUh00ZEXD2BBQyi2O2nw7PS1?=
 =?us-ascii?Q?I8P5Q5lTWS65RVnBiDMDjNSq6KhtBEqnKh/d6+XsY5lZTP6BsGZkoWivtJa2?=
 =?us-ascii?Q?hhlZytizcG/lmIw5VqE/0VGGG90JmKHHehiqqv7fEcazX7ulsm9lE2XCwQc6?=
 =?us-ascii?Q?y5oT6aF04lXALFWP+OL7XVssiumQjXpTY1Yzo4Yo039FmSI367rvG4WwGcfu?=
 =?us-ascii?Q?xD5hFStfnCGDmyJOkrQ/aNEMyTMieXsS2yLi5IStq07xKa7XafdWiG97jzR/?=
 =?us-ascii?Q?cTxvvzpF2yIIvEwytB68YdQttsDLf2HDPnw9HWSabgDWXad4MAv6dvxGyT5M?=
 =?us-ascii?Q?V1s/pxVidyZs8ammFJJe30wHcYw4XRMakcNhHvK48mb5XqYrUuEQwFzbE9HR?=
 =?us-ascii?Q?X1K+0ruWVdCxMNtBat/CfnQu3h/Z3INxe4gb+ILuKp6t2GaaquGzUntFSOAP?=
 =?us-ascii?Q?QqrDqO8x6gjuuudv4cnPhEoexCfwk31Z+eVh0SksPrq7u9mKhDsAUXi5tfev?=
 =?us-ascii?Q?GmNbIPMK2M+m90K0nCSEYxb7e02/Mo1NhCDy709LdEk98fXzfKRa/2cDuyrY?=
 =?us-ascii?Q?DQDEXaXavBj62Tt4Riu5b0uAWUYZogWkfb+Gj1XMHibm51uanz6Z1qNubAiu?=
 =?us-ascii?Q?vKiLeO8zq4xRpmYMkX/Df4CIlb40z+mw7wQBNUS/sw46PWtVf8RV6c+lNqgk?=
 =?us-ascii?Q?B5QIyndTnSe1MWa2cFfuikF0WqV84+X2Cqz0oUVzXUgXhj8l4Vvt3A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hR4tj079BWRJL5c3i3/K18PHppUwlnQEnGxf36qfhbe8CY811+4UPfMEbFqc?=
 =?us-ascii?Q?LKmX1XN41PKOHOOE4GN58+Z1LfFxnTJOaNrZfvbm6FbVKhmSpHUG0CFZYckS?=
 =?us-ascii?Q?TvVDRE1yR77vC2JWEp9NDeKxSQR76/XTnJPrbP5hEOqcxb8IMX93rpOJRDOx?=
 =?us-ascii?Q?FZemsK2H7bjj4ZI5EXVdoxeRsk2zFHbv8IouSkuE8cB3vRgit4LgDXa5wfY0?=
 =?us-ascii?Q?SD6DG4EJIOUNGH8Zuf9cHmnwZcOt5aZkLw6xVTf/1Y4pRFDNwLoicSfHSomy?=
 =?us-ascii?Q?JmER8PC3KEkrJ74SXJnJxDwUVLZRr2Ussw2MuAG+fOWpxq2YahMCmgNNRjHN?=
 =?us-ascii?Q?mCWxcbe9B+E62/bQB/yKPbFTultE0TSxsDEvRVa6BpxbUlGxvqMmVq1X+sdx?=
 =?us-ascii?Q?fwMlyWc58HS+QnRzaPqQf5vt9OPxRDRmqKdSKeD0rQelNSIzJs0n4npRm0lR?=
 =?us-ascii?Q?vOATGoFsdlz3rxWPkSncRzCLcOaxpgiSRmGl7OnzXPNQeD7jGgjvRUr97OOC?=
 =?us-ascii?Q?MgVBsIpfMn8xh+JHL0NxV7xXqBljMnVPT+qZbmEbbFlK+fqlyGbzJqk6oGUi?=
 =?us-ascii?Q?D0VWTo0340ahSnxXw3f9Qx5gYToLnsFVaaD1g7lF9ahjw0FPYTURAz3/8CuP?=
 =?us-ascii?Q?7Q6uKg0JsZ1Qy9bs/F3TgkNka+NCoXRwWSzOkGj1yEYMWdU6i5JdgA6kk0dz?=
 =?us-ascii?Q?f+VYEDlPuwFCIdk4MkTDNgfthPPSbI3M9avNlFJl4UtoC0eyMe6yy80Mbc2r?=
 =?us-ascii?Q?yAwn3CZ3d8PTkWRhUxFkWQUFpaOIXzq0ZCKUOLgEku6yS1dHba4UUbz6P75Q?=
 =?us-ascii?Q?3TG6vE1iZrJttgIgZoXJjB1lMdXZtlFCRVNPNDw2Uajcx1qtFrblbAc5FGuK?=
 =?us-ascii?Q?XwdL71s1acTvQX1x6XLFGsVCGFB4iuvf11TdRE87yhxIymyhMNaQscwLvuqm?=
 =?us-ascii?Q?nq6h0xGeN+Ey96qXVV2Ujjdt5AsAu44Asj0b/XlmOVz4qVyCzIHnQen5OlUo?=
 =?us-ascii?Q?du4AC/+5YNGC3Ff1iF9TK3TQFsqhMPempnzkn873damqd0ftZgIgXbf+y7od?=
 =?us-ascii?Q?2ZV6Mop9i3vbnI8CYMFu0wrcEk+woUnPiJiU0mV/lX2TUsVmV6wolG32a2u8?=
 =?us-ascii?Q?M/b4Z3oGmEtq1Kufjcc2tYZ7kht66ILm46j+ytj0nZvC+fmXz/vHha7+DUxK?=
 =?us-ascii?Q?fRRc+ZzOK73i6a3l72T5CaPVUyCumEon5kMP+xGRzaUKkY5U/jbAX5vXDZvG?=
 =?us-ascii?Q?zArH+4IugoaYsWbPyUVrF1qsWEZ53eY98Z1Fnwd8/VcfrN7a8gGGXXg9PwiR?=
 =?us-ascii?Q?ak828AV3ai6hIBVgaqAWNpDTmuB6+Up2Xuvmh1GDK1oHNiS6h1MsR+7zp3cD?=
 =?us-ascii?Q?0YjiKtbLd79bImwYnq9m4h23leL4qM+nPrWFOe2UxT+nmSvCH/bsiQo0X40f?=
 =?us-ascii?Q?5ZydY7GfLYMmjLa+sMaD88Rghgnx+A+fUdXRLL0RdBZu5ircIRWX9/lBUvVn?=
 =?us-ascii?Q?Do/CAvaEC06iiHvBZRV+5WKVryYLU5KA974Xrb/9N3MsWFOYxX2OK37PXhpD?=
 =?us-ascii?Q?QfSaEkzoGN+EanZTGMJKzmVSoAv+H4XId1di7t2esQ6HmeNqEjyQ45Uga2C7?=
 =?us-ascii?Q?Y5Fh7jF3bVL2dwQgA9nGsJ73RwR4LNexLsLnp9E9GkN/?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797611B95C56D63BDA48F40B9F9ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a1fe301-2c7b-49f2-4df8-08de1934bcff
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2025 10:52:23.2754
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wDeTzCOZgwQAspuSBF1gynL84zuNyWvDLyLftITQ0hjHjyNHn9Ni+Ibwss5BtNd3kCJa0OFVCrTFNGFWciNkiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5179
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Nov 2025 10:52:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65990

--_000_BL4PR11MB8797611B95C56D63BDA48F40B9F9ABL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.13 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/poky-f16cffd=
030d21d12dd57bb95cfc310bda41f8a1f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.13/poky-f16cffd030d21d12dd=
57bb95cfc310bda41f8a1f.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release



--------------------------
yocto-5.0.13 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.13
Git Revision: 6f086fd3d9dbbb0c80f6c3e89b8df4fed422e79a
Release Artefact: yocto-docs-6f086fd3d9dbbb0c80f6c3e89b8df4fed422e79a
sha: 454601d8b6034268212f74ca689ed360b08f7a4c7de5df726aa3706586ca4351
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/yocto-docs-6=
f086fd3d9dbbb0c80f6c3e89b8df4fed422e79a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.13/yocto-docs-6f086fd3d9db=
bb0c80f6c3e89b8df4fed422e79a.tar.bz2

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.13
Git Revision: f16cffd030d21d12dd57bb95cfc310bda41f8a1f
Release Artefact: poky-f16cffd030d21d12dd57bb95cfc310bda41f8a1f
sha: 1367e43907f5ffa725f3afb019cd7ca07de21f13e5e73a1f5d1808989ae6ed2a
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/poky-f16cffd=
030d21d12dd57bb95cfc310bda41f8a1f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.13/poky-f16cffd030d21d12dd=
57bb95cfc310bda41f8a1f.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.13
Git Revision: 7af6b75221d5703ba5bf43c7cd9f1e7a2e0ed20b
Release Artefact: oecore-7af6b75221d5703ba5bf43c7cd9f1e7a2e0ed20b
sha: 4dcf636ec4a7b38b47a24e9cb3345b385bc126bb19620bf6af773bf292fef6b2
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/oecore-7af6b=
75221d5703ba5bf43c7cd9f1e7a2e0ed20b.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.13/oecore-7af6b75221d5703b=
a5bf43c7cd9f1e7a2e0ed20b.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: scarthgap
Tag: yocto-5.0.13
Git Revision: 3ff7ca786732390cd56ae92ff4a43aba46a1bf2e
Release Artefact: meta-yocto-3ff7ca786732390cd56ae92ff4a43aba46a1bf2e
sha: 8efbaeab49dc3e1c4b67ff8d5801df1b05204c2255d18cff9a6857769ae33b23
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/meta-yocto-3=
ff7ca786732390cd56ae92ff4a43aba46a1bf2e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.13/meta-yocto-3ff7ca786732=
390cd56ae92ff4a43aba46a1bf2e.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.13
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.13/meta-mingw-bd9fef71ec00=
5be3c3a6d7f8b99d8116daf70c4f.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.13
Git Revision: 1c9ec1ffde75809de34c10d3ec2b40d84d258cb4
Release Artefact: bitbake-1c9ec1ffde75809de34c10d3ec2b40d84d258cb4
sha: 98bf54fa3abe237b73a93b1e33842a429209371fca6e409c258a441987879d16
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/bitbake-1c9e=
c1ffde75809de34c10d3ec2b40d84d258cb4.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.13/bitbake-1c9ec1ffde75809=
de34c10d3ec2b40d84d258cb4.tar.bz2


---------------
Contributors
---------------
Adam Blank
Adrian Freihofer
Aleksandar Nikolic
Antonin Godard
Archana Polampalli
AshishKumar Mishra
Barne Carstensen
Chris Laplante
Deepak Rathore
Divya Chellam
Gyorgy Sarvari
Haixiao Yan
Hitendra Prajapati
Hongxu Jia
Jan Vermaete
Jiaying Song
Jinfeng Wang
Joao Marcos Costa
Joshua Watt
Khem Raj
Kyungjik Min
Lee Chee Yang
Libo Chen
Martin Jansa
Michael Halstead
Nitin Wankhade
Peter Marko
Philip Lorenz
Praveen Kumar
Quentin Schulz
Ross Burton
Stanislav Vovk
Steve Sakoman
Talel BELHAJ SALEM
Vijay Anusuri
Vrushti Dabhi
Yogita Urade


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
busybox: Fix CVE-2025-46394
cups: Fix CVE-2025-58060 CVE-2025-58364
curl: Fix CVE-2025-9086
dpkg: Fix CVE-2025-6297
expat: follow-up Fix CVE-2024-8176
ffmpeg: Fix CVE-2025-1594
ffmpeg: Ignore CVE-2023-49502 CVE-2023-50007 CVE-2023-50008 CVE-2023-50009 =
CVE-2023-50010 CVE-2024-31578 CVE-2024-31582 CVE-2024-31585
ghostscript: Fix CVE-2025-59798 CVE-2025-59799 CVE-2025-59800
glib-2.0: Fix CVE-2025-6052 CVE-2025-7039
go-binary-native: Ignore CVE-2025-0913
go: Fix CVE-2025-4674 CVE-2025-47906 CVE-2025-47907
grub2: Fix CVE-2024-56738
grub2: Ignore CVE-2024-2312
gstreamer1.0-plugins-bad: Fix CVE-2025-3887
gstreamer1.0-plugins-base: Fix CVE-2025-47807
gstreamer1.0-plugins-base: Ignored CVE-2025-47806 CVE-2025-47808
gstreamer1.0-plugins-good: Ignore CVE-2025-47183 CVE-2025-47219
gstreamer1.0: Ignore CVE-2025-2759
libpam: Fix CVE-2024-10963
libxslt: Fix CVE-2025-7424
openssl: Fix CVE-2025-9230 CVE-2025-9231 CVE-2025-9232
pulseaudio: Ignore CVE-2024-11586
qemu: Ignore CVE-2024-7730
tiff: Fix CVE-2025-9900
tiff: Ignore CVE-2024-13978 CVE-2025-8176 CVE-2025-8177 CVE-2025-8534 CVE-2=
025-8851
vim: Fix CVE-2025-9389
wpa-supplicant: Fix CVE-2022-37660


---------------
Fixes
---------------
binutils: fix build with gcc-15
bitbake: Use a "fork" multiprocessing context
bitbake: bitbake: Bump version to 2.8.1
build-appliance-image: Update to scarthgap head revision
buildtools-tarball: fix unbound variable issues under 'set -u'
cmake: fix build with gcc-15 on host
conf/bitbake.conf: use gnu mirror instead of main server
contributor-guide: submit-changes: align CC tag description
contributor-guide: submit-changes: clarify example with Yocto bug ID
contributor-guide: submit-changes: fix improper bold string
contributor-guide: submit-changes: make "Crediting contributors" part of "C=
ommit your changes"
contributor-guide: submit-changes: make the Cc tag follow kernel guidelines
contributor-guide: submit-changes: number instruction list in commit your c=
hanges
contributor-guide: submit-changes: reword commit message instructions
cpio: Pin to use C17 std
cups: upgrade to 2.4.11
curl: update CVE_STATUS for CVE-2025-5025
dbus-glib: fix build with gcc-15
default-distrovars.inc: Fix CONNECTIVITY_CHECK_URIS redirect issue
dev-manual/building.rst: add note about externalsrc variables absolute path=
s
dev-manual/security-subjects.rst: update mailing lists
elfutils: fix build with gcc-15
examples: genl: fix wrong attribute size
expect: Fix build with GCC 15
expect: Revert "expect-native: fix do_compile failure with gcc-14"
expect: cleanup do_install
expect: don't run aclocal in do_configure
expect: fix native build with GCC 15
expect: update code for Tcl channel implementation
ffmpeg: upgrade to 6.1.3
gdbm: Use C11 standard
git: fix build with gcc-15 on host
gmp: Fix build with GCC15/C23
gmp: Fix build with older gcc versions
kernel-dev/common.rst: fix the in-tree defconfig description
lib/oe/utils: use multiprocessing from bb
libarchive: patch regression of patch for CVE-2025-5918
libgpg-error: fix build with gcc-15
libtirpc: Fix build with gcc-15/C23
license.py: avoid deprecated ast.Str
llvm: fix build with gcc-15
llvm: update to 18.1.8
m4: Stick to C17 standard
migration-guides: add release notes for 4.0.29 5.0.12
ncurses: Pin to C17 standard
oeqa/sdk/cases/buildcpio.py: use gnu mirror instead of main server
openssl: upgrade to 3.2.6
p11-kit: backport fix for handle USE_NLS from master
pkgconfig: fix build with gcc-15
poky.conf: bump version for 5.0.13
pulseaudio: Add audio group explicitly
ref-manual/structure: document the auto.conf file
ref-manual/variables.rst: expand IMAGE_OVERHEAD_FACTOR glossary entry
ref-manual/variables.rst: fix the description of KBUILD_DEFCONFIG STAGING_D=
IR
rpm: keep leading `/' from sed operation
ruby-ptest: some ptest fixes
runqemu: fix special characters bug
rust-llvm: fix build with gcc-15
sanity.conf: Update minimum bitbake version to 2.8.1
scripts/install-buildtools: Update to 5.0.12
sdk: The main in the C example should return an int
selftest/cases/meta_ide.py: use use gnu mirror instead of main server
shared-mime-info: Handle USE_NLS
sudo: remove devtool FIXME comment
systemd: backport fix for handle USE_NLS from master
systemtap: Fix task_work_cancel build
test-manual/yocto-project-compatible.rst: fix a typo
test-manual: update runtime-testing Exporting Tests section
unifdef: Don't use C23 constexpr keyword
unzip: Fix build with GCC-15
util-linux: use ${B} instead of ${WORKDIR}/build, to fix building under dev=
tool
vim: upgrade to 9.1.1683
yocto-uninative: Update to 4.9 for glibc 2.42  GCC 15.1




--_000_BL4PR11MB8797611B95C56D63BDA48F40B9F9ABL4PR11MB8797namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
--></style>
</head>
<body lang=3D"EN-MY" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<br>
<br>
We are pleased to announce the Yocto Project 5.0.13 Release is now availabl=
e for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/poky-f16cffd030d21d1=
2dd57bb95cfc310bda41f8a1f.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-5.0.13/poky-f16cffd030d21d12dd57bb95cfc310bda41f8a1f.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.13/poky-f16cffd030d21d12dd57bb95cf=
c310bda41f8a1f.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.0.13=
/poky-f16cffd030d21d12dd57bb95cfc310bda41f8a1f.tar.bz2</a><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-5.0.13/testreport.txt</=
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
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.0.13 Releas=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.13<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 6f086=
fd3d9dbbb0c80f6c3e89b8df4fed422e79a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: y=
octo-docs-6f086fd3d9dbbb0c80f6c3e89b8df4fed422e79a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 454601d8b60342=
68212f74ca689ed360b08f7a4c7de5df726aa3706586ca4351<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.13/yocto-docs-6f086fd3d9dbbb0c80f6=
c3e89b8df4fed422e79a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.13/yocto-docs-6f086fd3d9dbbb0c80f6c3e89b8df4f=
ed422e79a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.13<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: f16cf=
fd030d21d12dd57bb95cfc310bda41f8a1f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-f16cffd030d21d12dd57bb95cfc310bda41f8a1f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 1367e43907f5ff=
a725f3afb019cd7ca07de21f13e5e73a1f5d1808989ae6ed2a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.13/poky-f16cffd030d21d12dd57bb95cf=
c310bda41f8a1f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.13/poky-f16cffd030d21d12dd57bb95cfc310bda41f8=
a1f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.13<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 7af6b=
75221d5703ba5bf43c7cd9f1e7a2e0ed20b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-7af6b75221d5703ba5bf43c7cd9f1e7a2e0ed20b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 4dcf636ec4a7b3=
8b47a24e9cb3345b385bc126bb19620bf6af773bf292fef6b2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.13/oecore-7af6b75221d5703ba5bf43c7=
cd9f1e7a2e0ed20b.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.13/oecore-7af6b75221d5703ba5bf43c7cd9f1e7a2e0=
ed20b.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.13<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 3ff7c=
a786732390cd56ae92ff4a43aba46a1bf2e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-yocto-3ff7ca786732390cd56ae92ff4a43aba46a1bf2e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 8efbaeab49dc3e=
1c4b67ff8d5801df1b05204c2255d18cff9a6857769ae33b23<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.13/meta-yocto-3ff7ca786732390cd56a=
e92ff4a43aba46a1bf2e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.13/meta-yocto-3ff7ca786732390cd56ae92ff4a43ab=
a46a1bf2e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.13<o=
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
octoproject.org/releases/yocto/yocto-5.0.13/meta-mingw-bd9fef71ec005be3c3a6=
d7f8b99d8116daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.13/meta-mingw-bd9fef71ec005be3c3a6d7f8b99d811=
6daf70c4f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.8<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.13<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 1c9ec=
1ffde75809de34c10d3ec2b40d84d258cb4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-1c9ec1ffde75809de34c10d3ec2b40d84d258cb4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 98bf54fa3abe23=
7b73a93b1e33842a429209371fca6e409c258a441987879d16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.0.13/bitbake-1c9ec1ffde75809de34c10d=
3ec2b40d84d258cb4.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.0.13/bitbake-1c9ec1ffde75809de34c10d3ec2b40d84d=
258cb4.tar.bz2<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Adam Blank<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Adrian Freihofer<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">AshishKumar Mishra<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Barne Carstensen<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chris Laplante<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepak Rathore<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gyorgy Sarvari<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Haixiao Yan<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hongxu Jia<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jan Vermaete<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jinfeng Wang<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joao Marcos Costa<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joshua Watt<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Khem Raj<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Kyungjik Min<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Libo Chen<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Martin Jansa<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michael Halstead<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Nitin Wankhade<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Philip Lorenz<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Quentin Schulz<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Stanislav Vovk<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Talel BELHAJ SALEM<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vrushti Dabhi<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">busybox: Fix CVE-20=
25-46394<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cups: Fix CVE-2025-=
58060 CVE-2025-58364<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Fix CVE-2025-=
9086<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dpkg: Fix CVE-2025-=
6297<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expat: follow-up Fi=
x CVE-2024-8176<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Fix CVE-202=
5-1594<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Ignore CVE-=
2023-49502 CVE-2023-50007 CVE-2023-50008 CVE-2023-50009 CVE-2023-50010 CVE-=
2024-31578 CVE-2024-31582 CVE-2024-31585<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Fix CV=
E-2025-59798 CVE-2025-59799 CVE-2025-59800<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: Fix CVE-2=
025-6052 CVE-2025-7039<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go-binary-native: I=
gnore CVE-2025-0913<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2025-46=
74 CVE-2025-47906 CVE-2025-47907<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub2: Fix CVE-2024=
-56738<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub2: Ignore CVE-2=
024-2312<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-bad: Fix CVE-2025-3887<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-base: Fix CVE-2025-47807<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-base: Ignored CVE-2025-47806 CVE-2025-47808<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-good: Ignore CVE-2025-47183 CVE-2025-47219<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: Ignor=
e CVE-2025-2759<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpam: Fix CVE-202=
4-10963<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxslt: Fix CVE-20=
25-7424<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Fix CVE-20=
25-9230 CVE-2025-9231 CVE-2025-9232<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pulseaudio: Ignore =
CVE-2024-11586<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Ignore CVE-20=
24-7730<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tiff: Fix CVE-2025-=
9900<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tiff: Ignore CVE-20=
24-13978 CVE-2025-8176 CVE-2025-8177 CVE-2025-8534 CVE-2025-8851<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Fix CVE-2025-9=
389<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wpa-supplicant: Fix=
 CVE-2022-37660<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: fix build=
 with gcc-15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: Use a &quo=
t;fork&quot; multiprocessing context<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: bitbake: B=
ump version to 2.8.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to scarthgap head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">buildtools-tarball:=
 fix unbound variable issues under 'set -u'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cmake: fix build wi=
th gcc-15 on host<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">conf/bitbake.conf: =
use gnu mirror instead of main server<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: align CC tag description<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: clarify example with Yocto bug ID<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: fix improper bold string<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: make &quot;Crediting contributors&quot; part of &quot;Commi=
t your changes&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: make the Cc tag follow kernel guidelines<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: number instruction list in commit your changes<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: reword commit message instructions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cpio: Pin to use C1=
7 std<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cups: upgrade to 2.=
4.11<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: update CVE_ST=
ATUS for CVE-2025-5025<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dbus-glib: fix buil=
d with gcc-15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">default-distrovars.=
inc: Fix CONNECTIVITY_CHECK_URIS redirect issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/building=
.rst: add note about externalsrc variables absolute paths<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/security=
-subjects.rst: update mailing lists<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">elfutils: fix build=
 with gcc-15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">examples: genl: fix=
 wrong attribute size<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expect: Fix build w=
ith GCC 15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expect: Revert &quo=
t;expect-native: fix do_compile failure with gcc-14&quot;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expect: cleanup do_=
install<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expect: don't run a=
clocal in do_configure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expect: fix native =
build with GCC 15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expect: update code=
 for Tcl channel implementation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: upgrade to =
6.1.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gdbm: Use C11 stand=
ard<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">git: fix build with=
 gcc-15 on host<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gmp: Fix build with=
 GCC15/C23<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gmp: Fix build with=
 older gcc versions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kernel-dev/common.r=
st: fix the in-tree defconfig description<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lib/oe/utils: use m=
ultiprocessing from bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: patch r=
egression of patch for CVE-2025-5918<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libgpg-error: fix b=
uild with gcc-15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libtirpc: Fix build=
 with gcc-15/C23<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">license.py: avoid d=
eprecated ast.Str<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">llvm: fix build wit=
h gcc-15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">llvm: update to 18.=
1.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">m4: Stick to C17 st=
andard<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.29 5.0.12
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ncurses: Pin to C17=
 standard<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/sdk/cases/buil=
dcpio.py: use gnu mirror instead of main server<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: upgrade to=
 3.2.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">p11-kit: backport f=
ix for handle USE_NLS from master<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pkgconfig: fix buil=
d with gcc-15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.0.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pulseaudio: Add aud=
io group explicitly<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/structur=
e: document the auto.conf file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: expand IMAGE_OVERHEAD_FACTOR glossary entry<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: fix the description of KBUILD_DEFCONFIG STAGING_DIR<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rpm: keep leading `=
/' from sed operation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby-ptest: some pt=
est fixes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">runqemu: fix specia=
l characters bug<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust-llvm: fix buil=
d with gcc-15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sanity.conf: Update=
 minimum bitbake version to 2.8.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.0.12<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sdk: The main in th=
e C example should return an int<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">selftest/cases/meta=
_ide.py: use use gnu mirror instead of main server<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">shared-mime-info: H=
andle USE_NLS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sudo: remove devtoo=
l FIXME comment<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: backport f=
ix for handle USE_NLS from master<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemtap: Fix task=
_work_cancel build<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual/yocto-p=
roject-compatible.rst: fix a typo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual: update=
 runtime-testing Exporting Tests section<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">unifdef: Don't use =
C23 constexpr keyword<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">unzip: Fix build wi=
th GCC-15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">util-linux: use ${B=
} instead of ${WORKDIR}/build, to fix building under devtool<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: upgrade to 9.1=
.1683<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-uninative: Up=
date to 4.9 for glibc 2.42&nbsp; GCC 15.1<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797611B95C56D63BDA48F40B9F9ABL4PR11MB8797namp_--

