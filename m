Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B8ECA0EE6
	for <webhook@archiver.kernel.org>; Thu, 21 Aug 2025 03:50:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by mx.groups.io with SMTP id smtpd.web11.1225.1755748240778096208
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Aug 2025 20:50:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=bePyGmeU;
 spf=pass (domain: intel.com, ip: 198.175.65.16, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1755748241; x=1787284241;
  h=from:to:subject:date:message-id:mime-version;
  bh=MtuXTDChIJdJj1siSxPSZAlR2RRI1dbSug8rOKSuDko=;
  b=bePyGmeUFJapXyJIFSHw1kwdsKCWfLb2UtZg4WJB3VbUTeDKsag5k333
   DBj4fRpH9hPTSfAYDfftEg5rabcLmKiUplBd3bR5VZi2bj2ZWoQRbZDL9
   9IaS/KgpK76umbmYOL2vHDRkxuMDre5IFqnD1lWtgMFP5I+5/w8p8yoh7
   Qm+WJXUPVgFtaIlc8v+zoWG7ujOVac43qvnEZtny3MU4A4yKvdU0kQm4F
   vF0BeWF73QEjkc3Qh1bUYSvebG67JvNDfHhwwQPft/P9nW1tEyQqufoC7
   DsDagtthwuz/w4FbLlfmZfn+9Ut3uEUVA5N2Yu9O733YRU2RJVm1Q+1aX
   g==;
X-CSE-ConnectionGUID: 7NGDEfB5R8+7wsluay+VCA==
X-CSE-MsgGUID: zKN88ge/TUG5rwaxw3x44A==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="58173002"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; 
   d="scan'208,217";a="58173002"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Aug 2025 20:50:40 -0700
X-CSE-ConnectionGUID: tvUJV8bGTza9pX10hu7Fqg==
X-CSE-MsgGUID: FB8hhouiQSWynX+bS3qlUg==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Aug 2025 20:50:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 20:50:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 20:50:38 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.60)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 20:50:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sgZYPryPve2zMRwrK4Dsk8AxWK9IXDB3xMyPBcxV+NkWThTLDXYIIqN3dcHIWwgUJoggRinXlM4C6rtdZ+CbpmmeOw8bEajceOYtXjPUapTqsWF4GJN4aPATN4ojBQn0KlL5k+YlyqIKJGyhrUWruEG62nywpiMj34goYzbtJr4cC5kibWryJFnU3LcANMu89myp7NNx8qSd/oECHpL5cpkMRL+RT3W5cWsUZuIFpV92CcNR/ZlsLOmEStgK+GJlIKPx5tgS1P7ZgKsqCf0rvkEClHYzD0BO/YRlIDRgOY2l+mNxL1T7TnH6UjVg24WwjrXPSrsPHKjVObEYecvJqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hrGspilANvXaWil5P5vY1xgS28fxJJPN+RRsJAPkoM0=;
 b=jxi/CsNjIhEg0dFfyY5dhQdr9B1LStVM3IgEge4EnBByQzESMv/tCkGwK9L4q+LKKfb9+bd2nL97yo/RrCMaimMJWtcwlQi7vriOVEff1HTKbzr3BIRz90h2mXD64q8fu9GoWq+JxLZcHy6xv6qr4MUDXJo2n1YkKFOSyK6HQiXkG2Fwqyx6IBGWp8ABvE6DAWrCpsBKTZNt3g3tBqPBKaXNNRPw3tmFfbrroCMp+Qjq48mUgQQ7v/3U+427iv3hEAmQLiW6i3SBTCwAjEfhIOmXHOLKslTRUFx0J6wZeHkitN9Zde87NZT64HALhgTmSekwOyEbCcPJbZNMkd1vrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by PH0PR11MB7658.namprd11.prod.outlook.com (2603:10b6:510:28d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Thu, 21 Aug
 2025 03:50:34 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%5]) with mapi id 15.20.9031.024; Thu, 21 Aug 2025
 03:50:34 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.29(kirkstone-4.0.29) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.29(kirkstone-4.0.29) is
 Released
Thread-Index: AdwSTc21QkHgFpzXReKKbEwGIQXNpA==
Date: Thu, 21 Aug 2025 03:50:34 +0000
Message-ID: <BL4PR11MB879768C4DB15C96D2F46FE15B932A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|PH0PR11MB7658:EE_
x-ms-office365-filtering-correlation-id: fced2337-91c2-4e83-ea9e-08dde065e214
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|10070799003|1800799024|38070700018|8096899003|13003099007;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?IO4+GDSmoxiY5yNpTmQOpcpLYP1nC0tkECeQiza8/5ZYNFkXLhIQwBLPEy?=
 =?iso-8859-1?Q?BBImJTm0fd+ZAZqOe15jNuO2Ng5+yb5QAfmcHBp0dqKVRcL8h96+UJxicM?=
 =?iso-8859-1?Q?1nA09d/xPlRoq/jYNOkmmJ/Hglh2No/EzjGJ6BU9p1mg0KwqxS2CgbeZRK?=
 =?iso-8859-1?Q?jrJexfwib2siAWpoeG7WFU5Qb8u3dyH4c7g5Xl/h26SalLkGdEnl8EhAu1?=
 =?iso-8859-1?Q?4+6w6WS4znjwm7byNzt+QliJs0VSAsHr4q1mCEx6FdcVFW75iZTVGAqH7Q?=
 =?iso-8859-1?Q?BPN0f/LMk43sr7tO+9D0rCnZnlwt2/6U/9VdVQI8Jlq2cIRjzhS6v13UHa?=
 =?iso-8859-1?Q?AfhNFy5KOfEDhl/n4emX0ichN6LFeN7koHwzoBSgpkwGcqaeSk/oDtLbdN?=
 =?iso-8859-1?Q?14nB+9UwAo6fIXcrHx+3hCNqaW9TGeH+MavKhGn07F2hpd9kgoIKnoh+12?=
 =?iso-8859-1?Q?t6guqWvWk3SFVIQBZtZ7qiB6D5BkE+PoDvDlz5cfkKhLNjtoD0fJPpMLmm?=
 =?iso-8859-1?Q?i0Diw4dWGmfhwMBzF5ugxZIRG3ZjjzI/J6IWyk0NJguMpSowY+2bmG8KZk?=
 =?iso-8859-1?Q?l856di87mIEwiKH8mNmynOXHsHGt7bKHX7lYD6U8A9GDJYow1Bitsy7YgB?=
 =?iso-8859-1?Q?Va694nUW7gOb1Fiz1mAJsKVAKCcubQr3UXSxFjVz5S0kUD3vw/tJJHOxJM?=
 =?iso-8859-1?Q?dDXAKrRjRcgkY9ferhuhNsOm6lteVGgzaAsc4ZT2I2hdBsyCzpp4y/oCnT?=
 =?iso-8859-1?Q?CS10mfUO6cWMiKTC/jvOsIpYTELQBHaK4na1iE9bpcOj1m4FePWtlUvH7a?=
 =?iso-8859-1?Q?TNdCoZ2kbUD3kaZUngGjQr0Drvz4a5NAEAW2zFjTn+s81PgwOhsIXYt0IV?=
 =?iso-8859-1?Q?TpasIeoMO1SXrDgHa0/1QjOyW/G9pM+cOODlfVenLM4Fjr2M2IEpShCuSc?=
 =?iso-8859-1?Q?JY7Y2e5rgdHIylcAAKcsZRHMfOetpPSJaWt2mqEI9kPZzVbSPWA2nu8iVO?=
 =?iso-8859-1?Q?ekl+mMLnbW5dVe/lxtSGZNq1TC6WMHTOpAJX86aAqofVEhKHz2IKi+GFSK?=
 =?iso-8859-1?Q?QA5ovN3GjUAaNrADQhT0rMe3fm33n5/ViUoOJQuAG4DHOmdYS3yFZ0zy+o?=
 =?iso-8859-1?Q?X+5+kdlCjxcky3nY3EwVRX7PBAv4tsx5wEpOCMqc2Rd9kiK9LhTCsVfaTX?=
 =?iso-8859-1?Q?MeGyvxa4h7OlcBEs7hmo6ow7sTd9SQuNWCkCe+RaIYBYAvJcscGqazyMw1?=
 =?iso-8859-1?Q?+SyY5n0cZLyLKH2KtG//q+cPsrswkIMM79nY5rCy1mKRU/zvCi6l4kQEuW?=
 =?iso-8859-1?Q?ziBz9+KLw1v0i1kZfVRc97ZaSzO+6UaA39MzmiGGYYEa6FOZ+Fcpk3FsS5?=
 =?iso-8859-1?Q?w7r0Muzl2kJ4HfuzxbthG7Xlfbn3dAsQOZuyyB/fSSrDivGSSB2Vlp095z?=
 =?iso-8859-1?Q?Szovxi3dqmb+YeC+6US4yp4WT1gvvZSH+NX6UKIgtAAGOx8lHURZNkCk0p?=
 =?iso-8859-1?Q?g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700018)(8096899003)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?nNdH02mwG1kS2JE2vPaD0Sy0iVxzvu2/6fPUR7S01L0Twgnmh/teK58UFt?=
 =?iso-8859-1?Q?fsO9sY2AJPr6O3YbLiqlNiuP0JsFaRJpIVW+wm/EYO4kxoYok5VixMwijS?=
 =?iso-8859-1?Q?GkA6qheae58MvT3IWf+Buj5RP2lYrpdA0edDR7E+iQOnhFFmm44Dgs0v1O?=
 =?iso-8859-1?Q?MKicD98L2i43+PwJ5ZLh8UAjysO/9Ew/UtvKC0MI/Bo3Fta3GGec0zP2vy?=
 =?iso-8859-1?Q?H2hlfevPDV0PXMMPtiWRnz6aQjnJP4WEXphAe4uNaZbNA8Lm4AgDJZDJv7?=
 =?iso-8859-1?Q?MUKZG6rKwbDFhoWtudlMQHo/11z7Dmhp3bwjCclSvX7Rxl1Z9CJgyqkFCk?=
 =?iso-8859-1?Q?lws+WEL2YBdd5FlemqegYAzBPE3tbwwXOpCKfb2XgcNUGecDHaJ/T/1IDO?=
 =?iso-8859-1?Q?Wi2aG7PmYKLdocQtCNg8Q7vu94MyqcwibGw2OqNTIR89LEmTyE+ES4bu3+?=
 =?iso-8859-1?Q?BB0SORLd94ut0pYBs/+1JQ0u41KHO29n3OH/8Knq38d4dz/3zufhpfWDoa?=
 =?iso-8859-1?Q?2QTORD7PVs8Ccml5EQzi4MoywWEcwxVrPG6u7nDnsCYwmWTTGncGa1dM4O?=
 =?iso-8859-1?Q?q9wkqPv452uN599JJzpVNWxGs14lxtvbXeCdZx/luxeXEVlRvvF14RgRj0?=
 =?iso-8859-1?Q?JdnMgKirdnm4FMyzQ1T4Hq6Q0urxVLdjda+bkpAVv4SJlWRwlkeGdl2Ymp?=
 =?iso-8859-1?Q?86ISNld094eyUYknbl+D+9dxHMVI3TAZEFH7bc6d+iJPOWvR5mrEPgPgT6?=
 =?iso-8859-1?Q?vlwYTFQBoRWyOc78dUruYK8dB1wrJ5qdBW2w7aWJPseoz2ih4WSPCv2NlS?=
 =?iso-8859-1?Q?5kHrgkKWuRjrX0KD3iumJWI5qmmj+3g7wd0EPidN00pa9ctnrap/ywPjoQ?=
 =?iso-8859-1?Q?FI3YtUzhWQ7X0IT4yhxIjPdqFJm5vCpjCjCIr/XDg15LKFYyP0ly2bHvgB?=
 =?iso-8859-1?Q?VWBXmo70jvxX2oLo/lw1vuFWZGob2h9kz0/pYj3TIUGTmgKnWydpWIePNU?=
 =?iso-8859-1?Q?k8ByNm9pggGdlnIAFVoFzLYdZr5pGGVFokLa9zdDMNKpkXeJNAtIvdYKz4?=
 =?iso-8859-1?Q?L3IoqU/Op9K/KIZ6l/KXC1S7lEx1u6den1BbMOiAnjQkxe0SLwzxrpkixz?=
 =?iso-8859-1?Q?DwoQ76jbCB+l7RdMAYHk4H9mpzoCPy6S9XDB/QnVRfwpHlu1UF4sA+1NwB?=
 =?iso-8859-1?Q?yDMAOsjOtZFETDRil3H+k8dugLpUBfB+dUpQn3kUu/Z6I2CILGIYt4+Wft?=
 =?iso-8859-1?Q?DaYXOktdpxH0uru+GekR7Aegs5x/prCxnvJ92DgRJdZnYE6VErx1aAgcUt?=
 =?iso-8859-1?Q?ETFjTxZauw6yUAK01HiuxFc3cv9jb0/ppnytRBX5Nq3JrQ/dBwLqEjn/n/?=
 =?iso-8859-1?Q?lpyGsbmMrwl+N+teyKRUz946MAP+7l1Mvg03BKD2jTWfC/8XOoxIsi17od?=
 =?iso-8859-1?Q?CJbh9GoCZfqJkmnNy4rUrIkp9vudmiv0tpiWpF5TKC5qrG7JoEzmIJmDAs?=
 =?iso-8859-1?Q?I1NpjYE5rATHNbimQKYL0DwxxkD0LqEPcmgf8vJGIS73XYEPShr4WRQ03m?=
 =?iso-8859-1?Q?kATbHrTZKjqNA/eRaQ9MIR/DTW4gjeOrhJIlrGAQpiw/P7dMEVfK8dhtCA?=
 =?iso-8859-1?Q?w3jdP56+xofgtSX2RTKzF7iZ3jp7MdfBB1A2z9+a5U7Mf8Lw80DcyJhFpt?=
 =?iso-8859-1?Q?btgm1I10mS63CHGC765IPnTXutkTk9M1V/fqNme9?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB879768C4DB15C96D2F46FE15B932ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fced2337-91c2-4e83-ea9e-08dde065e214
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 03:50:34.5306
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OwZoKQ0z3ZZv7/52z4NDGelD4BwPYnf4Bip9ONGoDXWdWzzhzzKj08PSwrFbHoRQj9JP35BekRq2VObPwhnInQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7658
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Aug 2025 03:50:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65780

--_000_BL4PR11MB879768C4DB15C96D2F46FE15B932ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.29 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/poky-81ab000=
fa437ca04f584a3327b076f7a512dc6d0.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.29/poky-81ab000fa437ca04f5=
84a3327b076f7a512dc6d0.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-4.0.29 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.29
Git Revision: 81ab000fa437ca04f584a3327b076f7a512dc6d0
Release Artefact: poky-81ab000fa437ca04f584a3327b076f7a512dc6d0
sha: 2fecf3cac5c2361c201b5ae826960af92289862ec9be13837a8431138e534fd2
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/poky-81ab000=
fa437ca04f584a3327b076f7a512dc6d0.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.29/poky-81ab000fa437ca04f5=
84a3327b076f7a512dc6d0.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.29
Git Revision: bd620eb14660075fd0f7476bbbb65d5da6293874
Release Artefact: oecore-bd620eb14660075fd0f7476bbbb65d5da6293874
sha: f32ab195c7090268e6e87ccf8db2813cf705c517030654326d14b25d926de88e
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/oecore-bd620=
eb14660075fd0f7476bbbb65d5da6293874.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.29/oecore-bd620eb14660075f=
d0f7476bbbb65d5da6293874.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.29
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.29/meta-mingw-87c22abb1f11=
be430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.29
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.29/meta-gplv2-d2f8b5cdb285=
b72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.29
Git Revision: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
Release Artefact: bitbake-8e2d1f8de055549b2101614d85454fcd1d0f94b2
sha: fad4e7699bae62082118e89785324b031b0af0743064caee87c91ba28549afb0
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/bitbake-8e2d=
1f8de055549b2101614d85454fcd1d0f94b2.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.29/bitbake-8e2d1f8de055549=
b2101614d85454fcd1d0f94b2.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: kirkstone
Tag: yocto-4.0.29
Git Revision: e916d3bad58f955b73e2c67aba975e63cd191394

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.29
Git Revision: bf855ecaf4bec4cef9bbfea2e50caa65a8339828


---------------
Contributors
---------------
Aleksandar Nikolic
Antonin Godard
Archana Polampalli
Bruce Ashfield
Changqing Li
Chen Qi
Colin Pinnell McAllister
Daniel D=EDaz
Deepesh Varatharajan
Divya Chellam
Dixit Parmar
Enrico J=F6rns
Guocai He
Hitendra Prajapati
Lee Chee Yang
Marco Cavallini
Martin Jansa
Peter Marko
Praveen Kumar
Richard Purdie
Rob Woolley
Ross Burton
Steve Sakoman
Vijay Anusuri
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
avahi: Fix CVE-2024-52615
binutils: Fix CVE-2025-7545 CVE-2025-7546
coreutils: Fix CVE-2025-5278
curl: Fix CVE-2024-11053 CVE-2025-0167
dropbear: Fix CVE-2025-47203
ffmpeg: Ignore CVE-2022-3109 CVE-2022-3341
gdk-pixbuf: Fix CVE-2025-7345
ghostscript: Ignore CVE-2025-46646
gnupg: Fix CVE-2025-30258
gnutls: Fix CVE-2025-6395 CVE-2025-32988 CVE-2025-32989 CVE-2025-32990
iputils: Fix CVE-2025-48964
libarchive: Fix CVE-2025-5914 CVE-2025-5915 CVE-2025-5916 CVE-2025-5917
libpam: Fix CVE-2025-6020
libsoup-2.4: Fix CVE-2025-4945
libsoup-2.4: Fix CVE-2025-4969 (update patch)
libsoup: Fix CVE-2025-4945 CVE-2025-6021 CVE-2025-6170 CVE-2025-49794 CVE-2=
025-49796
ncurses: Fix CVE-2025-6141
ofono: Fix CVE-2023-4232 CVE-2023-4235
openssl: Fix CVE-2024-41996
python3-urllib3: Fix CVE-2025-50181
ruby: Fix CVE-2024-43398 (update patches)
sqlite3: Fix CVE-2025-6965 CVE-2025-7458
sqlite3: Ignore CVE-2025-3277
systemd: Fix CVE-2025-4598
xwayland: Fix CVE-2025-49175 CVE-2025-49176 CVE-2025-49177 CVE-2025-49178 C=
VE-2025-49179 CVE-2025-49180

---------------
Fixes
---------------
bintuils: stable 2.38 branch update
bitbake: test/fetch: Switch u-boot based test to use our own mirror
build-appliance-image: Update to kirkstone head revision
conf.py: improve SearchEnglish to handle terms with dots
db: ignore implicit-int and implicit-function-declaration issues fatal with=
 gcc-14
dev-manual/start.rst: added missing command in Optimize your VHDX file usin=
g DiskPart
glibc: stable 2.35 branch updates
glibc: stable 2.35 branch updates
gnutls: patch read buffer overrun in the "pre_shared_key" extension
gnutls: patch reject zero-length version in certificate request
linux-yocto/5.15: update to v5.15.186
linux-yocto/5.15: update to v5.15.186
migration-guides: add release notes for 4.0.28
oeqa/core/decorator: add decorators to skip based on HOST_ARCH
openssl: upgrade to 3.0.17
orc: set CVE_PRODUCT
overview-manual/concepts.rst: fix sayhello hardcoded bindir
poky.conf: bump version for 4.0.29
python3: update CVE product
ref-manual: document KERNEL_SPLIT_MODULES variable
scripts/install-buildtools: Update to 4.0.28
sudo: upgrade to 1.9.17p1
tcf-agent: correct the SRC_URI



--_000_BL4PR11MB879768C4DB15C96D2F46FE15B932ABL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<br>
<br>
We are pleased to announce the Yocto Project 4.0.29 Release is now availabl=
e for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/poky-81ab000fa437ca0=
4f584a3327b076f7a512dc6d0.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-4.0.29/poky-81ab000fa437ca04f584a3327b076f7a512dc6d0.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-4.0.29/poky-81ab000fa437ca04f584a3327b=
076f7a512dc6d0.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-4.0.29=
/poky-81ab000fa437ca04f584a3327b076f7a512dc6d0.tar.bz2</a><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-4.0.29/testreport.txt</=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-4.0.29 Releas=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.29<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 81ab0=
00fa437ca04f584a3327b076f7a512dc6d0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-81ab000fa437ca04f584a3327b076f7a512dc6d0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 2fecf3cac5c236=
1c201b5ae826960af92289862ec9be13837a8431138e534fd2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.29/poky-81ab000fa437ca04f584a3327b=
076f7a512dc6d0.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.29/poky-81ab000fa437ca04f584a3327b076f7a512dc=
6d0.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.29<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: bd620=
eb14660075fd0f7476bbbb65d5da6293874<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-bd620eb14660075fd0f7476bbbb65d5da6293874<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: f32ab195c70902=
68e6e87ccf8db2813cf705c517030654326d14b25d926de88e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.29/oecore-bd620eb14660075fd0f7476b=
bbb65d5da6293874.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.29/oecore-bd620eb14660075fd0f7476bbbb65d5da62=
93874.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.29<o=
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
octoproject.org/releases/yocto/yocto-4.0.29/meta-mingw-87c22abb1f11be430caf=
4372e6b833dc7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.29/meta-mingw-87c22abb1f11be430caf4372e6b833d=
c7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.29<o=
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
octoproject.org/releases/yocto/yocto-4.0.29/meta-gplv2-d2f8b5cdb285b72a4ed9=
3450f6703ca27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.29/meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca=
27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.0<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.29<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 8e2d1=
f8de055549b2101614d85454fcd1d0f94b2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-8e2d1f8de055549b2101614d85454fcd1d0f94b2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: fad4e7699bae62=
082118e89785324b031b0af0743064caee87c91ba28549afb0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.29/bitbake-8e2d1f8de055549b2101614=
d85454fcd1d0f94b2.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.29/bitbake-8e2d1f8de055549b2101614d85454fcd1d=
0f94b2.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.29<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: e916d=
3bad58f955b73e2c67aba975e63cd191394<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.29<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: bf855=
ecaf4bec4cef9bbfea2e50caa65a8339828<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Changqing Li<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chen Qi<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Colin Pinnell McAll=
ister<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Daniel D=EDaz<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Dixit Parmar<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Enrico J=F6rns<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Guocai He<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Marco Cavallini<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Martin Jansa<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rob Woolley<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yash Shinde<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
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
025-7545 CVE-2025-7546<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">coreutils: Fix CVE-=
2025-5278<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Fix CVE-2024-=
11053 CVE-2025-0167<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dropbear: Fix CVE-2=
025-47203<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Ignore CVE-=
2022-3109 CVE-2022-3341<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gdk-pixbuf: Fix CVE=
-2025-7345<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Ignore=
 CVE-2025-46646<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnupg: Fix CVE-2025=
-30258<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnutls: Fix CVE-202=
5-6395 CVE-2025-32988 CVE-2025-32989 CVE-2025-32990<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">iputils: Fix CVE-20=
25-48964<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Fix CVE=
-2025-5914 CVE-2025-5915 CVE-2025-5916 CVE-2025-5917<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpam: Fix CVE-202=
5-6020<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-2.4: Fix CV=
E-2025-4945<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-2.4: Fix CV=
E-2025-4969 (update patch)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup: Fix CVE-20=
25-4945 CVE-2025-6021 CVE-2025-6170 CVE-2025-49794 CVE-2025-49796<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ncurses: Fix CVE-20=
25-6141<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ofono: Fix CVE-2023=
-4232 CVE-2023-4235<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Fix CVE-20=
24-41996<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-urllib3: Fi=
x CVE-2025-50181<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: Fix CVE-2024-=
43398 (update patches)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sqlite3: Fix CVE-20=
25-6965 CVE-2025-7458<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sqlite3: Ignore CVE=
-2025-3277<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: Fix CVE-20=
25-4598<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xwayland: Fix CVE-2=
025-49175 CVE-2025-49176 CVE-2025-49177 CVE-2025-49178 CVE-2025-49179 CVE-2=
025-49180<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bintuils: stable 2.=
38 branch update<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: test/fetch=
: Switch u-boot based test to use our own mirror<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to kirkstone head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">conf.py: improve Se=
archEnglish to handle terms with dots<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">db: ignore implicit=
-int and implicit-function-declaration issues fatal with gcc-14<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/start.rs=
t: added missing command in Optimize your VHDX file using DiskPart<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.35 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.35 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnutls: patch read =
buffer overrun in the &quot;pre_shared_key&quot; extension<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnutls: patch rejec=
t zero-length version in certificate request<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: u=
pdate to v5.15.186<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: u=
pdate to v5.15.186<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.28<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/core/decorator=
: add decorators to skip based on HOST_ARCH<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: upgrade to=
 3.0.17<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">orc: set CVE_PRODUC=
T<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual/con=
cepts.rst: fix sayhello hardcoded bindir<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 4.0.29<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: update CVE=
 product<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: documen=
t KERNEL_SPLIT_MODULES variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 4.0.28<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sudo: upgrade to 1.=
9.17p1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tcf-agent: correct =
the SRC_URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB879768C4DB15C96D2F46FE15B932ABL4PR11MB8797namp_--

