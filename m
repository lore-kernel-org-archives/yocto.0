Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E9FBF8E49C
	for <webhook@archiver.kernel.org>; Fri, 17 Apr 2026 01:28:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.31669.1776389278234998387
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Apr 2026 18:27:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=YHIkOIQK;
 spf=pass (domain: intel.com, ip: 192.198.163.13, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1776389278; x=1807925278;
  h=from:to:subject:date:message-id:mime-version;
  bh=+2cK0qYmo4eN56E7c93+8EPhAMdMMPJ5/7nPUp7hAWw=;
  b=YHIkOIQKY5EU4d6/BuvIRwL27xSMUnmgZ63znVHcvuDR0evw1kzmNzjF
   czGi1X1sGwL+btmXZENuqMhQoC2veU4V4s7dg9hrMbpyDtRgfapPClEDQ
   mNSgDuW7PiTNT0G0YVy5J4nEHxVAvpcv4U/9eK0OYJXrYx2ODJ7GpEN4J
   4uD82gjHRjUzkpqcDeenb5wbahrrskP0SFEBFRMGBYKfVT2cbsgoqaZ3H
   p3miC6U1seiUCvfbcPyupIkWRXQ2JXt7qunZpemPEbOhLQSJZez+arsMW
   NGgo0ELuesD5ouqvcRr9GGVl3+TNq5tmSmlZ18HnLsXWt0b/PerjlABBh
   g==;
X-CSE-ConnectionGUID: FAPzk2vPQA+uTfhFHTV0wA==
X-CSE-MsgGUID: p3i2b4q1QIK7hoZGJ1l7bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="79991459"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; 
   d="scan'208,217";a="79991459"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2026 18:27:57 -0700
X-CSE-ConnectionGUID: mweUY0O/RCqanQAwt/7ixg==
X-CSE-MsgGUID: 1Th3aDbBQLKwZy7YjzgL3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; 
   d="scan'208,217";a="227757367"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
  by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2026 18:27:57 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 18:27:56 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 18:27:56 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 18:27:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b5+4kGEwBV8Ur34pSOiXwAnKP+vOFeJZOTIMXWSUGbAkUmxgcZx/rTHqpOxYpvHoJFB/yL7NXV78WRZ6aAWE3JkSF97WoQDJFp8vszMxlH1/IVDjMGMIULc6nkUCemBW5kKFwZ7GHwoQ3fa8FFBdkePfgnUsYznM5gknYjvHQhO/ozMiCAH8Ynf+wwcsElVEgNlZ4vFczhs40WP+vmYL0LowqsPMz5YRWNxvW1MmO4okwKGqAASkJ0V8PrlrhxOnZFvKmSukQJ5ZwKIOzuKJrinD91JFDtZygO8swdfVDfnweer575OEFNJoi4Qu34Y/UIyYl6uccmKHI3fa2a6IWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1M02VHLoKfdpDcvdxJe7haqtY07rFKzQ1cb4rRivHaw=;
 b=FDhBMjP66IAp1Xaq/0k6XtNw6UsyFbAG1P3WnhkGWzcaLwR8L529AWF5x35Z2BbrgiGO8zjXbxVcOSsdjPjNZyc3DU7x7b+j1ILb2ZdgtP6gqVz4CaH+KsGjHySH5+Tya5ywYSubUM78bK5geW0WY6Pf3azpr1kuYNBxxg9U+JZGkW1+oH9R46O+go8alScyGB5lJjprYBDjpV71mUX7pN+4phs78uLABxWZbVSLznwl7RMIU4ajDwg/n9up3Y4P6WIXzwixzbnGm3za354XQqxTHTA8MYviI7DQKLvUmU7dKYlludgslparIvezuy5jpYFy/s7ndFK5/sIYq0tF5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by CY8PR11MB7195.namprd11.prod.outlook.com (2603:10b6:930:93::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.21; Fri, 17 Apr
 2026 01:27:50 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.20.9818.023; Fri, 17 Apr 2026
 01:27:50 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.0.17(scarthgap-5.0.17) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.0.17(scarthgap-5.0.17) is
 Released
Thread-Index: AQHczIfK/mOm2Yqr302CmM8Wc2axBw==
Date: Fri, 17 Apr 2026 01:27:50 +0000
Message-ID: <BL4PR11MB87973C4D4E8C4A68A944697DB9222@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|CY8PR11MB7195:EE_
x-ms-office365-filtering-correlation-id: a5686991-2029-4362-777f-08de9c208a47
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|10070799003|366016|1800799024|376014|38070700021|8096899003|13003099007|56012099003|18002099003;
x-microsoft-antispam-message-info: 3IKqqKbttBXJjVGwx8AOwSSXBgVHMXKVZrLPc20OPRiWa1866gyL1GZiY/cYypytZwUcpsYhu6iRhiJYm6MrBtx4sba2rS1lx6rS+eUoaG8ZhhwrkQKg472NgxSfmOKijNpu3fIew2oUCOA0tIEivIQdnlPwTKIXv/oOZl3ICrC1c0l0Lc8g8tGZRIHF+TbmvMqx4T9jvcTZlPoRSE4RkxcpZtQV4l32kF/c7W4E8/A7Kc3gy/NaKWndZbYgk1Is7kHIXmxxwBfEsNc26u3ajAWqCvknvwVIzepQKQnL2JtPY/JI48rglryeiWPgDT+OfEnBVitW5AeWqXRVmz9LRo2pvG2pWaQMwJzFIE98qJJ+vPBzpLTbBt7NoTy1U4W7CwMflzItOxv0viHqEBSZpxhSEB3DoA7U/y1Wt6eul8th3/TzVV8GXud1U5t1mSvrjs5MqI5JMoUWWdVxrvddC9RFmd4gTzqyJBsMaOpMVKA6NkhO6WC2UkOvUtkbkFDH5G3wjPVYj+6F/L+Bt4PJIm18Ksp1gKt0vxc0zZQyS/OP75rQXs6LrgT/FmCDk2Gv8NFnbGl+fBnlCX5pU+KXlkEJrcaL46Vf4FoGuIW45NwBzdF1wbGTMHfvkmEHGxo/a5arPelHLUoqJEiYPo2g0oViJN+KiPmdTujKdJG4U+K+DKzTmT6855U3kI4FX/XkBrkACK2E58dk87yMkZy0Qi0t26mR4oJ7Yna85eHc/BKdmqxARxNsHv7z78XmKMUI
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021)(8096899003)(13003099007)(56012099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?qryHPKkiZ/A1ASA/LyEBsW4aNJxCu7LTsiCkwlRmRCWDjNRvbeUL0oPvYp?=
 =?iso-8859-1?Q?mOvGb9JaDTD/kBJRR4Zq1vjBOgfZA4w7P6Pw+22lrcqmMdsbYF6/c4jgsO?=
 =?iso-8859-1?Q?6jKK6+ASi1EaTa4DKBivqxbzqZByJEv0YsmQT4buC+gr/S/e+mz9P9TLR/?=
 =?iso-8859-1?Q?xr/E0Z39AiudWiaIKCnQB8iuz8OqccnwdN5xpiRzMRasLeEu9o/AaR3bjp?=
 =?iso-8859-1?Q?5kqolmiOJ23Lsejjy7aEM8pLgO96K1AR/h1H5e1leONhuUPCNg4oCZRA57?=
 =?iso-8859-1?Q?luVbRcy4ZDtLR0d3PRvBk75m65qGPrIcLdgHr0hq0YM8yeXCHg2SeoaK8j?=
 =?iso-8859-1?Q?/ZCBRyLHVSoerdD6YCa3FE6ff03H7CPx4LEGNl+GAdpFyn9l87s0yQJfDq?=
 =?iso-8859-1?Q?BtLZ/UeLmUgyNTdTPn9oOpXD/SLQ6xKKs4lAu0Q35euNmE5ioFFcN+SGjH?=
 =?iso-8859-1?Q?tIhKywjZ3AStatJEZtEPUxGSyZQOmWPjKy1VC81kG5mTsC8faOrFaGkYVM?=
 =?iso-8859-1?Q?FJWQJTqXHHrFY9MpmOCCGoUWeubfRoO1fxbsmXx9+hbUmQIBUU3Z5l4lvY?=
 =?iso-8859-1?Q?ORbmnmspgPva66wHTad9a+VA5Wge1PRkVpHDnuuu55sDbql3e0Y5z8VtrV?=
 =?iso-8859-1?Q?c0PYChMXzxL21CgmVsMgBuE9/cGZq7503Mq8rqHuSajhnENncy4oIKiTiR?=
 =?iso-8859-1?Q?NVTlnVSjH1cRN67FtclWge61dkvM4Dmrra9Xcm6621+xp3YhIKjvX3ZG9H?=
 =?iso-8859-1?Q?pEzXff952J0clcA4LjNQGmM1a/61RSwU8u1WVjEGGQ7TElDjmPX0HydQSO?=
 =?iso-8859-1?Q?vQGweByjXN+kILZOEowqmL1NIm+CQ5QdQvk/o18H1ztct3hagDsbDLPUI/?=
 =?iso-8859-1?Q?53L5cUF5Pacs1IwwxLROiQGt7zdhe49+rJOz3tBPdMBSuV42Tq2jxOiDs6?=
 =?iso-8859-1?Q?L5Q7iGQliARqFaYseg6n0x1VGbN5NTEu+HxWN/c+w3wftP8Qm1oTOte2B3?=
 =?iso-8859-1?Q?lof2LIiE0LKZy8K0FPuhwR/Nm4rSofn4R1x6Ebv+b45vs9KjwqKAVJxm1y?=
 =?iso-8859-1?Q?sY7MzseUN0IzwBRp0rX//dRFfPvy2kxnm6aO/HMdpgF4y5/m8u5VchflpC?=
 =?iso-8859-1?Q?+qlUUePzD/FwUF2zZ6spbqjHyefvd7aqEpbnNqz7JrrVWbrV/qduNFZm0u?=
 =?iso-8859-1?Q?RBt7VIltnHe9SwKH9/5P2xs4/DVtB5Z3aaqD6P01mxLgIogCfpLdqPd1WX?=
 =?iso-8859-1?Q?T/pG/bA2vR+nmJmnj7AHzKohlpaH1hfevQu5c/4fdhwdDviOiXG7Q9VpPC?=
 =?iso-8859-1?Q?Sqj75ZzMlDdjeyEIelYvDp9EV/TzmV4r8RGBhvdYUzY9L0LKGH1RAU2Fhh?=
 =?iso-8859-1?Q?VkK17RwKV7m+8Dr/T5x2iUTOmgYQUE0N08VKMBb4hIVybCbSZqB1iUEE7o?=
 =?iso-8859-1?Q?d/NKyUgQWYNBHhvCuCAKFPRWSg4W3QButdRYxlR6HODbmiZuAaiMDn1PHI?=
 =?iso-8859-1?Q?U5/EOSRAycf83Vz8AUVkfoIvAO/acBlUC6LXn9WnDIXUtBI2wzJnSTXkod?=
 =?iso-8859-1?Q?Vtijd8fOUaDXPYWsxHGA9g13KJ8MN1RNFiGK8dxaxViV09h4bDSaCoRAaO?=
 =?iso-8859-1?Q?04iwdJ7/6hLftfbEngLxRN1+BI+MTb3B8DQwgP1+h2TUthQK435SY8vq75?=
 =?iso-8859-1?Q?nbRRkxrUT9gUbRoChNEn5n1uwr2VlLxrvtHT26Ffq0rQlzVV3mhXIHqRVR?=
 =?iso-8859-1?Q?L48A7uD363EjNaFIl/UE9qZHCGjPt2g7s7bYkApaBzL2heqPf4/ZLWDKWL?=
 =?iso-8859-1?Q?5VL2HNyNlfaBO21S5rINFhiQn+kIe+F0WecjmQJM8uZzB8M4f9Eyc2E8Fk?=
 =?iso-8859-1?Q?nM?=
x-ms-exchange-antispam-messagedata-1: 8+t19uURdqRM7w==
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87973C4D4E8C4A68A944697DB9222BL4PR11MB8797namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WNAmzV0ZzizSqgSTc3RNkHL+fll6kdr1PU20Y2gFyLmVJBoPbVDyOtIXRBUQ2BUJkO8dCazYkz9k1WAFOq7y3K7SPIFPFP6juw7jiK0qahL2qX+sXAx6CfZC7NDqBjZpOFvXU6O4WM3AWpmfHY54u/l8BvGnL3n8ym2BC7kmC95y1PfaFeYMITDEYXQycIxePGzKwzhQTttrACfik8sXCbv6EUoFOhTII4yhtKuePl68KPKK6dTxTKKlCDFedF5rn5qv6+SEoGzNGfbZgDTWPqULCW9G0Q6fhdNbv60MJ/3gfJGEabFR7o2oNJ/r48KVEGFt2IwV72Q/nIfE6zngIA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5686991-2029-4362-777f-08de9c208a47
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 01:27:50.5847
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uuVAszm9ftqpIwxCfVO3rVtLjZFYyj6ktvtp7Hw9yqdo5cXJ8hlcfDyTAGybuLaxgzB0A3H9f49S0jZPZRdwKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7195
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Apr 2026 01:28:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66422

--_000_BL4PR11MB87973C4D4E8C4A68A944697DB9222BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.17 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/poky-1e80998=
46661571ede077f533eb1b6c86818ddce.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.17/poky-1e8099846661571ede=
077f533eb1b6c86818ddce.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release



--------------------------
yocto-5.0.17 Release Notes
--------------------------


--------------------------
 Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.17
Git Revision: aa7226705451e6c1ef964d49963bbed29b267c27
Release Artefact: yocto-docs-aa7226705451e6c1ef964d49963bbed29b267c27
sha: d429833609637657f213611317dfadbd70293fff2f9e22753d1f71ef8515a6c0
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/yocto-docs-a=
a7226705451e6c1ef964d49963bbed29b267c27.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/yocto-docs-aa72267=
05451e6c1ef964d49963bbed29b267c27.tar.bz2

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.17
Git Revision: 1e8099846661571ede077f533eb1b6c86818ddce
Release Artefact: poky-1e8099846661571ede077f533eb1b6c86818ddce
sha: b56890576f593cc881ea8e467562d842cfca248099ce653d28ca14d250f6219e
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/poky-1e80998=
46661571ede077f533eb1b6c86818ddce.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/poky-1e80998466615=
71ede077f533eb1b6c86818ddce.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.17
Git Revision: 52380df998b3a8fe6a091f8547434a3231320a8e
Release Artefact: oecore-52380df998b3a8fe6a091f8547434a3231320a8e
sha: a948d75acf76a392d170129ce6eb6f5fe45082d95b4fd28045aac58b8373cb26
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/oecore-52380=
df998b3a8fe6a091f8547434a3231320a8e.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/oecore-52380df998b=
3a8fe6a091f8547434a3231320a8e.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: scarthgap
Tag: yocto-5.0.17
Git Revision: c7c38663a1cafb1fa8593c0b246811e51d3bbe20
Release Artefact: meta-yocto-c7c38663a1cafb1fa8593c0b246811e51d3bbe20
sha: 5a2a9360249e639694cc2a75985e3907085512b3eb236e8491cb07f1e0cb0f19
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/meta-yocto-c=
7c38663a1cafb1fa8593c0b246811e51d3bbe20.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/meta-yocto-c7c3866=
3a1cafb1fa8593c0b246811e51d3bbe20.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.17
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/meta-mingw-bd9fef7=
1ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.17
Git Revision: d3b4c352dd33fca90cd31649eda054b884478739
Release Artefact: bitbake-d3b4c352dd33fca90cd31649eda054b884478739
sha: 1021fc412780e21b25ccb045b66368ebe3fc4e785a65066ac0cafb9bdd5492fa
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/bitbake-d3b4=
c352dd33fca90cd31649eda054b884478739.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/bitbake-d3b4c352dd=
33fca90cd31649eda054b884478739.tar.bz2


---------------
 Contributors
---------------
Aleksandar Nikolic
Amaury Couderc
Ankur Tyagi
Antonin Godard
Benjamin Robin (Schneider Electric)
Bruce Ashfield
Daniel Dragomir
Daniel Turull
Deepak Rathore
Dragomir, Daniel
Eduardo Ferreira
Fabio Berton
Hitendra Prajapati
Hugo SIMELIERE
Jo=E3o Marcos Costa (Schneider Electric)
Kristiyan Chakarov
Krupal Ka Patel
Lee Chee Yang
Livin Sunny
Martin Jansa
Michael Opdenacker
Ming Liu
Nguyen Dat Tho
Paul Barker
Peter Marko
Philip Lorenz
Quentin Schulz
Richard Purdie
Robert P. J. Day
Robert Yang
Ross Burton
Ryan Eatmon
Shaik Moin
Tom Hochstein
Trent Piepho
Vijay Anusuri
Yoann Congal

---------------
 Known Issues
---------------
N/A


---------------
Security Fixes
---------------
alsa-lib: Fix CVE-2026-25068
avahi: Fix CVE-2025-68276 CVE-2025-68468 CVE-2025-68471 CVE-2026-24401
bind: Fix CVE-2025-13878
busybox: Fix CVE-2025-60876
ffmpeg: ignore CVE-2025-1594 CVE-2025-10256 CVE-2025-12343  CVE-2025-25468
freetype: Fix CVE-2026-23865
gdk-pixbuf: Fix CVE-2025-6199
glib-2.0: Fix CVE-2026-1484 CVE-2026-1485 CVE-2026-1489
gnupg: Fix CVE-2025-68973
gnutls: Fix CVE-2025-14831
go 1.22.12: Fix CVE-2025-61726 CVE-2025-61728 CVE-2025-61730 CVE-2025-61731=
 CVE-2025-61732 CVE-2025-68119 CVE-2025-68121
harfbuzz: Fix CVE-2026-22693
inetutils: Fix CVE-2026-28372 CVE-2026-32746
libpng: Fix CVE-2026-25646
libsndfile1: Fix CVE-2025-56226
libtheora: Ignore CVE-2024-56431
linux-yocto/6.6: Fix CVE-2025-38593 CVE-2025-38643 CVE-2025-38678 CVE-2025-=
40039 CVE-2025-40040 CVE-2025-40149 CVE-2025-40164 CVE-2025-40251 CVE-2025-=
68211 CVE-2025-68214 CVE-2025-68223 CVE-2025-68340 CVE-2025-68365 CVE-2025-=
68725 CVE-2025-68817 CVE-2025-71068 CVE-2025-71071 CVE-2025-71075 CVE-2025-=
71077 CVE-2025-71078 CVE-2025-71079 CVE-2025-71081 CVE-2025-71082 CVE-2025-=
71083 CVE-2025-71084 CVE-2025-71085 CVE-2025-71086 CVE-2025-71087 CVE-2025-=
71088 CVE-2025-71089 CVE-2025-71091 CVE-2025-71093 CVE-2025-71094 CVE-2025-=
71095 CVE-2025-71096 CVE-2025-71097 CVE-2025-71098 CVE-2025-71101 CVE-2025-=
71102 CVE-2025-71104 CVE-2025-71105 CVE-2025-71107 CVE-2025-71108 CVE-2025-=
71111 CVE-2025-71112 CVE-2025-71113 CVE-2025-71114 CVE-2025-71116 CVE-2025-=
71118 CVE-2025-71119 CVE-2025-71120 CVE-2025-71121 CVE-2025-71122 CVE-2025-=
71125 CVE-2025-71126 CVE-2025-71127 CVE-2025-71129 CVE-2025-71130 CVE-2025-=
71131 CVE-2025-71132 CVE-2025-71133 CVE-2025-71136 CVE-2025-71137 CVE-2025-=
71138 CVE-2025-71141 CVE-2025-71143 CVE-2025-71147 CVE-2025-71148 CVE-2025-=
71149 CVE-2025-71150 CVE-2025-71151 CVE-2025-71153 CVE-2025-71154 CVE-2025-=
71160 CVE-2025-71162 CVE-2025-71163 CVE-2025-71180 CVE-2025-71182 CVE-2025-=
71183 CVE-2025-71185 CVE-2025-71186 CVE-2025-71188 CVE-2025-71189 CVE-2025-=
71190 CVE-2025-71191 CVE-2025-71200 CVE-2026-22976 CVE-2026-22977 CVE-2026-=
22978 CVE-2026-22979 CVE-2026-22980 CVE-2026-22982 CVE-2026-22984 CVE-2026-=
22990 CVE-2026-22991 CVE-2026-22992 CVE-2026-22994 CVE-2026-22997 CVE-2026-=
22998 CVE-2026-22999 CVE-2026-23001 CVE-2026-23003 CVE-2026-23005 CVE-2026-=
23006 CVE-2026-23010 CVE-2026-23011 CVE-2026-23019 CVE-2026-23020 CVE-2026-=
23021 CVE-2026-23025 CVE-2026-23026 CVE-2026-23060 CVE-2026-23061 CVE-2026-=
23062 CVE-2026-23063 CVE-2026-23064 CVE-2026-23068 CVE-2026-23069 CVE-2026-=
23071 CVE-2026-23073 CVE-2026-23074 CVE-2026-23075 CVE-2026-23076 CVE-2026-=
23078 CVE-2026-23080 CVE-2026-23083 CVE-2026-23084 CVE-2026-23085 CVE-2026-=
23086 CVE-2026-23087 CVE-2026-23088 CVE-2026-23089 CVE-2026-23090 CVE-2026-=
23091 CVE-2026-23093 CVE-2026-23094 CVE-2026-23095 CVE-2026-23096 CVE-2026-=
23097 CVE-2026-23098 CVE-2026-23099 CVE-2026-23101 CVE-2026-23102 CVE-2026-=
23103 CVE-2026-23105 CVE-2026-23107 CVE-2026-23108 CVE-2026-23110 CVE-2026-=
23113 CVE-2026-23116 CVE-2026-23119 CVE-2026-23120 CVE-2026-23121 CVE-2026-=
23123 CVE-2026-23124 CVE-2026-23125 CVE-2026-23126 CVE-2026-23128 CVE-2026-=
23131 CVE-2026-23133 CVE-2026-23135 CVE-2026-23136 CVE-2026-23139 CVE-2026-=
23140 CVE-2026-23141 CVE-2026-23142 CVE-2026-23144 CVE-2026-23146 CVE-2026-=
23150 CVE-2026-23156 CVE-2026-23160 CVE-2026-23163 CVE-2026-23164 CVE-2026-=
23167 CVE-2026-23168 CVE-2026-23170 CVE-2026-23172 CVE-2026-23173 CVE-2026-=
23212
openssl: fix CVE-2025-15468 CVE-2025-69419
python3-cryptography: Fix CVE-2026-26007
python3-pip: Fix CVE-2026-1703
python3-pyopenssl: Fix CVE-2026-27448 CVE-2026-27459
tiff: ignore CVE-2025-61143, CVE-2025-61144 CVE-2025-61145
vim: ignore CVE-2025-66476
zlib: Fix CVE-2026-27171

---------------
Fixes
---------------
README: Add scarthgap subject-prefix to git-send-email suggestion
bind: upgrade to 9.18.44
bitbake: COW: Fix hardcoded magic numbers and work with python 3.13
bitbake: fetch2: Fix LFS object checkout in submodules
bitbake: fetch2: Fix incorrect lfs parametrization for submodules
bitbake: fetch2: don't try to preserve all attributes when unpacking files
bitbake: gitsm: Add clean function
build-appliance-image: Update to scarthgap head revision
classes/buildhistory: Do not sign buildhistory commits
create-pull-request: Keep commit hash to be pulled in cover email
dev-manual: delete references to "tar" package format
docs: Makefile: pass -silent to latexmk
go-vendor: Fix absolute paths issue
improve_kernel_cve_report: add option to read debugsources.zstd
improve_kernel_cve_report: do not override backported-patch
improve_kernel_cve_report: do not use custom version
linux-yocto/6.6: upgrade to v6.6.123
lsb.py: strip ' from os-release file
migration-guides: add release notes for 5.0.16
mobile-broadband-provider-info: upgrade to 20251101
oe-setup-build: Fix typo
oeqa/selftest/wic: test recursive dir copy on ext partitions
openssl: upgrade to 3.5.5
overview-manual/concepts: list other possible class directories
overview-manual: escape wildcard in inline markup
poky.conf: Bump version for 5.0.17 release
poky.conf: add Centos Stream 9, fedora-41, rocky-8 to SANITY_TESTED_DISTROS
pseudo: Update to include a fix for systems with kernel <5.6
python3-pip: drop unused Windows distlib launcher templates
python3-setuptools: drop Windows launcher executables on non-mingw builds
ref-manual/classes.rst: fix broken links to U-Boot documentation
ref-manual/system-requirements.rst: update supported, end-of-life and untes=
ted distros
scripts/install-buildtools: Update to 5.0.15
spdx30_tasks: Exclude 'doc' when exporting PACKAGECONFIG to SPDX
spdx: add option to include only compiled sources
systemd-systemctl: Fix instance name parsing with escapes or periods
tzdata,tzcode-native: upgrade to 2025c
u-boot: move CVE Fixes out of the common .inc file
uboot-config: Fix devtool modify
weston: fix a touch-calibrator issue
what-i-wish-id-known.rst: replace figure by the new SVG
wic/engine: error on old host debugfs for standalone directory copy
wic/engine: fix copying directories into wic image with ext* partition
wireless-regdb: upgrade to 2026.02.04



--_000_BL4PR11MB87973C4D4E8C4A68A944697DB9222BL4PR11MB8797namp_
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
We are pleased to announce the Yocto Project 5.0.17 Release is now availabl=
e for download.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/p=
oky-1e8099846661571ede077f533eb1b6c86818ddce.tar.bz2" id=3D"anchor-e968d813=
-a08a-561e-1653-36c63ae8106b">https://downloads.yoctoproject.org/releases/y=
octo/yocto-5.0.17/poky-1e8099846661571ede077f533eb1b6c86818ddce.tar.bz2</a>=
&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.17/poky-1e80998=
46661571ede077f533eb1b6c86818ddce.tar.bz2" id=3D"anchor-3262483e-6f9c-1413-=
850e-b277f6bf689e">https://mirrors.kernel.org/yocto/yocto/yocto-5.0.17/poky=
-1e8099846661571ede077f533eb1b6c86818ddce.tar.bz2</a>&nbsp;</div>
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
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/R=
ELEASENOTES" id=3D"anchor-be9f7fce-d15a-1e0f-6ebe-90c4a5beaf87">https://dow=
nloads.yoctoproject.org/releases/yocto/yocto-5.0.17/RELEASENOTES</a>&nbsp;<=
/div>
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
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/t=
estreport.txt">https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.=
17/testreport.txt</a>&nbsp;</div>
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
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
--------------------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
yocto-5.0.17 Release Notes</div>
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
Branch: scarthgap</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.0.17</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: aa7226705451e6c1ef964d49963bbed29b267c27</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: yocto-docs-aa7226705451e6c1ef964d49963bbed29b267c27</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: d429833609637657f213611317dfadbd70293fff2f9e22753d1f71ef8515a6c0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/yocto-docs-a=
a7226705451e6c1ef964d49963bbed29b267c27.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/yocto-docs-aa72267=
05451e6c1ef964d49963bbed29b267c27.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Name: poky</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Repository Location: https://git.yoctoproject.org/poky</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Branch: scarthgap</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.0.17</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: 1e8099846661571ede077f533eb1b6c86818ddce</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: poky-1e8099846661571ede077f533eb1b6c86818ddce</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: b56890576f593cc881ea8e467562d842cfca248099ce653d28ca14d250f6219e</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/poky-1e80998=
46661571ede077f533eb1b6c86818ddce.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/poky-1e80998466615=
71ede077f533eb1b6c86818ddce.tar.bz2</div>
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
Branch: scarthgap</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.0.17</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: 52380df998b3a8fe6a091f8547434a3231320a8e</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: oecore-52380df998b3a8fe6a091f8547434a3231320a8e</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: a948d75acf76a392d170129ce6eb6f5fe45082d95b4fd28045aac58b8373cb26</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/oecore-52380=
df998b3a8fe6a091f8547434a3231320a8e.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/oecore-52380df998b=
3a8fe6a091f8547434a3231320a8e.tar.bz2</div>
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
Branch: scarthgap</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.0.17</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: c7c38663a1cafb1fa8593c0b246811e51d3bbe20</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: meta-yocto-c7c38663a1cafb1fa8593c0b246811e51d3bbe20</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: 5a2a9360249e639694cc2a75985e3907085512b3eb236e8491cb07f1e0cb0f19</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/meta-yocto-c=
7c38663a1cafb1fa8593c0b246811e51d3bbe20.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/meta-yocto-c7c3866=
3a1cafb1fa8593c0b246811e51d3bbe20.tar.bz2</div>
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
Branch: scarthgap</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.0.17</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/meta-mingw-bd9fef7=
1ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2</div>
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
Branch: 2.8</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tag: yocto-5.0.17</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Git Revision: d3b4c352dd33fca90cd31649eda054b884478739</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Release Artefact: bitbake-d3b4c352dd33fca90cd31649eda054b884478739</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
sha: 1021fc412780e21b25ccb045b66368ebe3fc4e785a65066ac0cafb9bdd5492fa</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Download Locations:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.17/bitbake-d3b4=
c352dd33fca90cd31649eda054b884478739.tar.bz2</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.17/bitbake-d3b4c352dd=
33fca90cd31649eda054b884478739.tar.bz2</div>
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
Aleksandar Nikolic</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Amaury Couderc</div>
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
Bruce Ashfield</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Daniel Dragomir</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Daniel Turull</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Deepak Rathore</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Dragomir, Daniel</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Eduardo Ferreira</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Fabio Berton</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hitendra Prajapati</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hugo SIMELIERE</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Jo=E3o Marcos Costa (Schneider Electric)</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Kristiyan Chakarov</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Krupal Ka Patel</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Lee Chee Yang</div>
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
Ming Liu</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Nguyen Dat Tho</div>
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
Philip Lorenz</div>
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
Robert Yang</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Ross Burton</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Ryan Eatmon</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Shaik Moin</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Tom Hochstein</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Trent Piepho</div>
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
alsa-lib: Fix CVE-2026-25068</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
avahi: Fix CVE-2025-68276 CVE-2025-68468 CVE-2025-68471 CVE-2026-24401</div=
>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
bind: Fix CVE-2025-13878</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
busybox: Fix CVE-2025-60876</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
ffmpeg: ignore CVE-2025-1594 CVE-2025-10256 CVE-2025-12343 &nbsp;CVE-2025-2=
5468</div>
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
gnupg: Fix CVE-2025-68973</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
gnutls: Fix CVE-2025-14831</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
go 1.22.12: Fix CVE-2025-61726 CVE-2025-61728 CVE-2025-61730 CVE-2025-61731=
 CVE-2025-61732 CVE-2025-68119 CVE-2025-68121</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
harfbuzz: Fix CVE-2026-22693</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
inetutils: Fix CVE-2026-28372 CVE-2026-32746</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libpng: Fix CVE-2026-25646</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libsndfile1: Fix CVE-2025-56226</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
libtheora: Ignore CVE-2024-56431</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
linux-yocto/6.6: Fix CVE-2025-38593 CVE-2025-38643 CVE-2025-38678 CVE-2025-=
40039 CVE-2025-40040 CVE-2025-40149 CVE-2025-40164 CVE-2025-40251 CVE-2025-=
68211 CVE-2025-68214 CVE-2025-68223 CVE-2025-68340 CVE-2025-68365 CVE-2025-=
68725 CVE-2025-68817 CVE-2025-71068
 CVE-2025-71071 CVE-2025-71075 CVE-2025-71077 CVE-2025-71078 CVE-2025-71079=
 CVE-2025-71081 CVE-2025-71082 CVE-2025-71083 CVE-2025-71084 CVE-2025-71085=
 CVE-2025-71086 CVE-2025-71087 CVE-2025-71088 CVE-2025-71089 CVE-2025-71091=
 CVE-2025-71093 CVE-2025-71094 CVE-2025-71095
 CVE-2025-71096 CVE-2025-71097 CVE-2025-71098 CVE-2025-71101 CVE-2025-71102=
 CVE-2025-71104 CVE-2025-71105 CVE-2025-71107 CVE-2025-71108 CVE-2025-71111=
 CVE-2025-71112 CVE-2025-71113 CVE-2025-71114 CVE-2025-71116 CVE-2025-71118=
 CVE-2025-71119 CVE-2025-71120 CVE-2025-71121
 CVE-2025-71122 CVE-2025-71125 CVE-2025-71126 CVE-2025-71127 CVE-2025-71129=
 CVE-2025-71130 CVE-2025-71131 CVE-2025-71132 CVE-2025-71133 CVE-2025-71136=
 CVE-2025-71137 CVE-2025-71138 CVE-2025-71141 CVE-2025-71143 CVE-2025-71147=
 CVE-2025-71148 CVE-2025-71149 CVE-2025-71150
 CVE-2025-71151 CVE-2025-71153 CVE-2025-71154 CVE-2025-71160 CVE-2025-71162=
 CVE-2025-71163 CVE-2025-71180 CVE-2025-71182 CVE-2025-71183 CVE-2025-71185=
 CVE-2025-71186 CVE-2025-71188 CVE-2025-71189 CVE-2025-71190 CVE-2025-71191=
 CVE-2025-71200 CVE-2026-22976 CVE-2026-22977
 CVE-2026-22978 CVE-2026-22979 CVE-2026-22980 CVE-2026-22982 CVE-2026-22984=
 CVE-2026-22990 CVE-2026-22991 CVE-2026-22992 CVE-2026-22994 CVE-2026-22997=
 CVE-2026-22998 CVE-2026-22999 CVE-2026-23001 CVE-2026-23003 CVE-2026-23005=
 CVE-2026-23006 CVE-2026-23010 CVE-2026-23011
 CVE-2026-23019 CVE-2026-23020 CVE-2026-23021 CVE-2026-23025 CVE-2026-23026=
 CVE-2026-23060 CVE-2026-23061 CVE-2026-23062 CVE-2026-23063 CVE-2026-23064=
 CVE-2026-23068 CVE-2026-23069 CVE-2026-23071 CVE-2026-23073 CVE-2026-23074=
 CVE-2026-23075 CVE-2026-23076 CVE-2026-23078
 CVE-2026-23080 CVE-2026-23083 CVE-2026-23084 CVE-2026-23085 CVE-2026-23086=
 CVE-2026-23087 CVE-2026-23088 CVE-2026-23089 CVE-2026-23090 CVE-2026-23091=
 CVE-2026-23093 CVE-2026-23094 CVE-2026-23095 CVE-2026-23096 CVE-2026-23097=
 CVE-2026-23098 CVE-2026-23099 CVE-2026-23101
 CVE-2026-23102 CVE-2026-23103 CVE-2026-23105 CVE-2026-23107 CVE-2026-23108=
 CVE-2026-23110 CVE-2026-23113 CVE-2026-23116 CVE-2026-23119 CVE-2026-23120=
 CVE-2026-23121 CVE-2026-23123 CVE-2026-23124 CVE-2026-23125 CVE-2026-23126=
 CVE-2026-23128 CVE-2026-23131 CVE-2026-23133
 CVE-2026-23135 CVE-2026-23136 CVE-2026-23139 CVE-2026-23140 CVE-2026-23141=
 CVE-2026-23142 CVE-2026-23144 CVE-2026-23146 CVE-2026-23150 CVE-2026-23156=
 CVE-2026-23160 CVE-2026-23163 CVE-2026-23164 CVE-2026-23167 CVE-2026-23168=
 CVE-2026-23170 CVE-2026-23172 CVE-2026-23173
 CVE-2026-23212</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
openssl: fix CVE-2025-15468 CVE-2025-69419</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3-cryptography: Fix CVE-2026-26007</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3-pip: Fix CVE-2026-1703</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3-pyopenssl: Fix CVE-2026-27448 CVE-2026-27459</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
tiff: ignore CVE-2025-61143, CVE-2025-61144 CVE-2025-61145</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
vim: ignore CVE-2025-66476</div>
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
README: Add scarthgap subject-prefix to git-send-email suggestion</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
bind: upgrade to 9.18.44</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
bitbake: COW: Fix hardcoded magic numbers and work with python 3.13</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
bitbake: fetch2: Fix LFS object checkout in submodules</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
bitbake: fetch2: Fix incorrect lfs parametrization for submodules</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
bitbake: fetch2: don't try to preserve all attributes when unpacking files<=
/div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
bitbake: gitsm: Add clean function</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
build-appliance-image: Update to scarthgap head revision</div>
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
dev-manual: delete references to &quot;tar&quot; package format</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
docs: Makefile: pass -silent to latexmk</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
go-vendor: Fix absolute paths issue</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
improve_kernel_cve_report: add option to read debugsources.zstd</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
improve_kernel_cve_report: do not override backported-patch</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
improve_kernel_cve_report: do not use custom version</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
linux-yocto/6.6: upgrade to v6.6.123</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
lsb.py: strip ' from os-release file</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
migration-guides: add release notes for 5.0.16</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
mobile-broadband-provider-info: upgrade to 20251101</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
oe-setup-build: Fix typo</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
oeqa/selftest/wic: test recursive dir copy on ext partitions</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
openssl: upgrade to 3.5.5</div>
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
poky.conf: Bump version for 5.0.17 release</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
poky.conf: add Centos Stream 9, fedora-41, rocky-8 to SANITY_TESTED_DISTROS=
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
pseudo: Update to include a fix for systems with kernel &lt;5.6</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3-pip: drop unused Windows distlib launcher templates</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
python3-setuptools: drop Windows launcher executables on non-mingw builds</=
div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
ref-manual/classes.rst: fix broken links to U-Boot documentation</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
ref-manual/system-requirements.rst: update supported, end-of-life and untes=
ted distros</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
scripts/install-buildtools: Update to 5.0.15</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
spdx30_tasks: Exclude 'doc' when exporting PACKAGECONFIG to SPDX</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
spdx: add option to include only compiled sources</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
systemd-systemctl: Fix instance name parsing with escapes or periods</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
tzdata,tzcode-native: upgrade to 2025c</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
u-boot: move CVE Fixes out of the common .inc file</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
uboot-config: Fix devtool modify</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
weston: fix a touch-calibrator issue</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
what-i-wish-id-known.rst: replace figure by the new SVG</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
wic/engine: error on old host debugfs for standalone directory copy</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
wic/engine: fix copying directories into wic image with ext* partition</div=
>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
wireless-regdb: upgrade to 2026.02.04</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
<br>
</div>
</body>
</html>

--_000_BL4PR11MB87973C4D4E8C4A68A944697DB9222BL4PR11MB8797namp_--

