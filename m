Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB88C02192
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 06:28:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by mx.groups.io with SMTP id smtpd.web11.63354.1738909673299528565
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 22:27:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=XWwsT4/z;
 spf=pass (domain: intel.com, ip: 192.198.163.19, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1738909673; x=1770445673;
  h=from:to:subject:date:message-id:mime-version;
  bh=bELmer4/g5Yh3Z61QRHVgm1r8kZsuPOtgpwEoBwokfQ=;
  b=XWwsT4/zb2GWhk864UHjU4ydYRXOY2osTZZbSbt+UgSny8p6qBIWbog9
   Te24PkWrGCt56wCJG3dJrnlGcgSoh2xwUbiDjbot4WdNzjlsu1+sli3Ri
   CeYotIidjDW3G4rm3SXmZ4ZrXycXMHUYmrKGWwbjJChxQ8QKcIx0KM+EL
   9czk6FsbHi5gi4f9do8Yg8i/nCArIvWdnPsn9EjuJh4fCBpfRtmu4LJSo
   GPGJmg7D2xcJ0z2kNhxwNPkWADYhLTaO8oPAfqrjRWqlE3pkqu4bqjTFC
   YdoYxjRj3qEpkqICmPEcHgGfLib3GZA5MSDx72rXsx4+Zph4EvI+6/jRT
   A==;
X-CSE-ConnectionGUID: rviYjPvvS/mYUc7mVj4gAw==
X-CSE-MsgGUID: xhlDVVYfQaqpmSOAUB8ziw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="38745055"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; 
   d="scan'208,217";a="38745055"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Feb 2025 22:27:53 -0800
X-CSE-ConnectionGUID: 6qU+l29CRcmhcH84RP5gkA==
X-CSE-MsgGUID: AWznvdstSwu+EnFdmDKlpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208,217";a="116641815"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 06 Feb 2025 22:27:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 22:27:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 22:27:52 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 22:27:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NYrNr55HdfLzhhW0QENB2zrb7uYz7ChY4W2OmeUIfGVjB6Np6ieUQ5T4DfS5pD8sSLphSnf/iu3GjTZzqoKudsN8qNhq7KWHPNZ9Sw2oY5BkDbI9RtVOLT9fl7iq7WC36AbKbPxQR39C/O5PNC1+6UGw1u0QNCF8DbPefiDBrV64mzuKolTkqHuZ4XBsnElmmfr44UN3NSgek0KE3ZMMW6aReBRnynRv2dQCWQq0Btz/P3axoVE2iPJ9wdw4ibLHTK0Rht8BRMw/AcQe61NxNunybLtX/hX6wRCw5FXu5FmNuYMJX9jM8WRi3+sTsnrJlclEfY1TiphwsN7nkzmnAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C3fs+JzgP8xzeCtZBquJS50n10NR9ZPlehQKmYLf6QM=;
 b=WPoIyqTnYzMDMF9Vg+Ah5EKsJygjbRerXowQfHTXZFlN5P6YmdhymuQpFiFqw48d3SM1HzPaqaVv+j+G7H0FDH10PDFdtYIwnO13jwjmye/9zZjlbY9CCAhNh9kjN4Y8AlWg6iCcebZcUCHo/NnqQnkd0b+h7ajEThl4jHipxNidW9bs+MS6fb2ytqce5kgFmq8IIc+bQSyFbkZK3bVnAnPuh+UlfzBysLB3Lg/5pztnBHD0uLkShmwjkHctY2oy0Z4YL+Vy1kGLhl4cPF/2FSf3b03RNFlup3jHzPv7vLMYm71H0gsLLAVXsJUrQHx9vQTT2Nk/l6lq4/d+lVeuUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SA2PR11MB4988.namprd11.prod.outlook.com (2603:10b6:806:f8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.14; Fri, 7 Feb
 2025 06:27:50 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%3]) with mapi id 15.20.8422.009; Fri, 7 Feb 2025
 06:27:49 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 5.2 (yocto-5.2_M2) Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 2 for Yocto Project 5.2 (yocto-5.2_M2)
 Now Available
Thread-Index: Adt5JTXtJe0K2csNTDKbWEB2dlxFxQ==
Date: Fri, 7 Feb 2025 06:27:49 +0000
Message-ID: <BL4PR11MB8797BB0544DC17E6A80C4E5BB9F12@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SA2PR11MB4988:EE_
x-ms-office365-filtering-correlation-id: 5fee804f-8800-497b-1eeb-08dd47408b46
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|10070799003|38070700018|13003099007|8096899003;
x-microsoft-antispam-message-info: =?us-ascii?Q?bsaaYJlSMmFlLaWuYvdN3QjgkCjvsK+xDHjuFmBiTZwCCE3t9pwrpONFsgIx?=
 =?us-ascii?Q?b6MBqQEJbD1EtDRRLkUAr1yPaO0vBb7JTaTzvhoN6oxzUyKVcDcuGizFyKUi?=
 =?us-ascii?Q?B7kzLQbZOViPAc5NB5TX0QinuksOCkn1cJI667LTkFeIQb2lMxkdxrPEm0yt?=
 =?us-ascii?Q?EmUg/JnOryAXTFBhObuTYZsBmusCyVjPxt3urfXIUfG+8YBGm079y12Qh3dG?=
 =?us-ascii?Q?aNhiPy1wSKnwv5H4cgpTHV+hyt2J2idXr5nPtV9exQHttXommACNu3j6Mts7?=
 =?us-ascii?Q?uIoC8kq86nbrbJWimolafO8JjffUVdTaBEK1w78O2oJyZ8rCqHpEL7vORQgb?=
 =?us-ascii?Q?wv9QjRWnjZBzV4vluuBHKHb4XNcnwhL7masBisGylfa8B90dIHFuXQ5C3yCF?=
 =?us-ascii?Q?MKutDyuDtxwjcc4uH3cw8UCShg/lLLi4LgEMbP0GvtqmIhsjzYhXFb05Luzw?=
 =?us-ascii?Q?uLWnXfqDJbLJYan5tNfX38muLXqZjYEU0YvqKPu08RnNChR9Vu8MzXERG8jb?=
 =?us-ascii?Q?yp1Ira3gsbThFme/XOMz+h9qwAc7xmdRZsMRWto5xOCBWvZj37ksSHpswrEg?=
 =?us-ascii?Q?beLvmfecXHsn68ZXm3cJeftrPm3oZ+ge7S9ULrMpoNvgdFw7WW4hP5lzqvjK?=
 =?us-ascii?Q?cLimVZyhBcwVPyUqq5YODK6I4WWBu0UjQ1LYQaQEvXdCvFwlthA0Y9Z9RfPv?=
 =?us-ascii?Q?Rrfx/8CMcpQA9VEsw/+OnA4tQiYRygNg9N6ffftHGUOFfW3v5QWi2SRBxFBP?=
 =?us-ascii?Q?gCoKzihGIfveOJMTutDTUmDRWJAqiqD4gTxnHrmqAfBQDO0u+odMyo5+WjaS?=
 =?us-ascii?Q?WNIYLGzkMcgCqTDE53WRXU9PmfVEI5vilWO05xIda8fsatXtQtP+8Oj3IRtT?=
 =?us-ascii?Q?WmXcChqGuhzaTlG5FxNz9yENwV5OuXu/bdU48UUhrjs8uaJ8qiPjJBEpuwJ/?=
 =?us-ascii?Q?u6SqzBVEBO0avSsQocEHt5nbTSqJf7VXBTkIYSxOSkFOg3CL5WyLo00jNnkJ?=
 =?us-ascii?Q?ujb12ppPn4OMtWdHdyAEO1SPKKhL7vfevVqVvh298w7pPDJ/ZG5E8D4QFASV?=
 =?us-ascii?Q?TJVhups2xo5uCuhDehuK1d0arE/X+PWsic0y+46DEnQpD667+wWXYwZYAnQ+?=
 =?us-ascii?Q?dVPSCuxSv2N0pvru3HjmTe5vgJUeZ6+gKaBPvsSfiuz+FCrKFA5ju9jTg2Is?=
 =?us-ascii?Q?SWg67bS4cfJc0yK0+nJ7+fLm2Ig/tUlsdUm0uD2YGUP9VrOx8mlHjmSMxWy/?=
 =?us-ascii?Q?fBgMCnlZwFLeE5VHGJqP8vXHkmf5DiY4S6AagxKbAMvFEtPUSwchmSOpXEU6?=
 =?us-ascii?Q?mD5REaaz6YMmK5/XYSyfhE+Ovs/pVH/V1Fct63GLEpAuP49tK3pxyM13B0HJ?=
 =?us-ascii?Q?vVpbstch4yrUuC86ClfUj85VFIi2XSouXi54Xu6OeRWvVQdZkw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700018)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Kd6dLDhQ21Fooaj3JQ5ZYx11KBZZVxRER/Q29LXtnGc1e33fut55gkB2vUJJ?=
 =?us-ascii?Q?Tj9hOIRDU3MyXgyLYuxeXFsso2ZbYyMjGxlzmD2im4wfou2GZqEkruP3Sdc5?=
 =?us-ascii?Q?OMMD6oFQcNF0jXFx+g77VhLfNmpFsLHNArLpETU7X6ZFJauLfjnFBog9ZLvL?=
 =?us-ascii?Q?lOVf/uKPjZXVvxpL0Pxq3VaVC3udlxzR+14whCmVcqiBVOaQQq5CGRXPPFB7?=
 =?us-ascii?Q?Jr/0PcX2J758k8Fom8kxYEieyDwrBrHNaQD63M4qUDQOj7UF1zNWT9D/CdX4?=
 =?us-ascii?Q?eiEmbMVZmTGmshnXOhImnmpzo3Jk5X7Ni1WNu1Fb7pbHyhuIH11iZVvBmn8E?=
 =?us-ascii?Q?eE4MnmjlF3MV7XLLPHF+2JoHAaS/9PI2WW40R7csAAel9Uqn5MR1rZ3QZ2L/?=
 =?us-ascii?Q?87JeCVvbhk15P2UAZYzwZsnTkH4vKvkL+PyPW3bQUY7ahJ330xDUqW3q1CAU?=
 =?us-ascii?Q?EyCnAz108FJhnFNiFeBDH3WzKZ3Pj8fJLZTzQb7B9M235RYHBYqDcUO93n1g?=
 =?us-ascii?Q?RmkMSfDA1/gCncdgr1lQSxdVMQBnU6dThfyy33S30tOlI749BHr3K07Pe8/+?=
 =?us-ascii?Q?itqJX28koaKRqZiQeBbhnY2MxNUh9gwUmta4B5qFOVrwpIKc6201pOKyd8dW?=
 =?us-ascii?Q?ss2eG3gkYAdsR/aoA8V2zKkIgI56n3BPNitEv5m516TtyKPqkPnsskTPmGrm?=
 =?us-ascii?Q?e/EeSovt36ltAsghj/U7TpZJj2rZVZLoXGnbhWA1qzeGO6G9JD3NANKkXzQX?=
 =?us-ascii?Q?RkLU3xuHVbWlzMnsU1Zb5Gqx0y2hBS48GhGrGIud9ag64n4i3LIigx9ij+Q3?=
 =?us-ascii?Q?OJmEXtWJqOYWp1x2F9tvJCqv5PU39duUhnCXVnub4hE9pvR318vdM2QhLokT?=
 =?us-ascii?Q?l55+Ld2WmIPRkN/zEhZdVIEoW6KiqKhOqGVCnLSCPgb+sX2y/Ias0uhrcy7g?=
 =?us-ascii?Q?miXnRZTrabQpzOPweXw12tlr9k57CeQdEJYXD2PfbqUCAmKPBpWNjBUqG8Tj?=
 =?us-ascii?Q?DYCQgh/V7AO6fozQhVJOY3Pcdjc+7x1Tx0YqYGE1jGM1/Xi9v0cyA0V7e64z?=
 =?us-ascii?Q?Ma+VLqas5LZ/FpGCM4zgCn30xqe8UqRglhw0XmkgF7GtcE3Kjq6FGg+Ix0lY?=
 =?us-ascii?Q?7UswHmSUwgWEh5WgA9dtK0VvptfuwCpB3MbR8xKS0v1hGMnPGUmWnj8Nl812?=
 =?us-ascii?Q?gX20qqdOtpLwEoZ2fXuWn7QJzNYkG6396rfs+qGG0gcpnFek8/AM0u/mLZVM?=
 =?us-ascii?Q?BZpm2ve04GJxYLCsmgVlJNv62v3el5qKLUYIsZ+oVCAo8XpASfDyZJWb0nXZ?=
 =?us-ascii?Q?2oncPyHEUoEWHfAkfw+B96ePeiJF9nS0ZbvYEmZyGSnUw2M/JzDJjnC80lTX?=
 =?us-ascii?Q?3Bt2+q4+kBQ3H0aybo3Ajsr7gSm2XD2LfKHcNiqIrZvJxNwnuPPvV2pbn1C4?=
 =?us-ascii?Q?q4El9bUzQp4MQII70YuI//Yjbm1kuOwSefKs+6iWbmKymyZS+WNiv9EEbQ2C?=
 =?us-ascii?Q?dI8mIEi3oyZwzUsfWls1/ihQZsMBg1Xa/Ryp4I3S1FGnZWll9bSZKN3xcu0K?=
 =?us-ascii?Q?gdpirk3CcztG0ZDcgKiy1qIqNQ4bS0PQSRTvatSLrXKMM5OMtiqzbRYwbkXi?=
 =?us-ascii?Q?GuKODNV1JbszTOWCplajst71+37/Ifr1Q9FMU6lR4FtJ?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797BB0544DC17E6A80C4E5BB9F12BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fee804f-8800-497b-1eeb-08dd47408b46
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2025 06:27:49.6344
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J+/SW+92vrwsvg4bFYb/GHwdDkxhBnQLZq0rX4SUoLZmmSjL7BEgdky5mWD3jvfxKqxkNGaTWEOwA+A2gLRSyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4988
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 06:28:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64736

--_000_BL4PR11MB8797BB0544DC17E6A80C4E5BB9F12BL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the second milestone release for Yocto Project 5=
.2 (yocto-5.2_M2) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M2

bitbake: c83444d1210740e27b1744d3aa7c5cad4e28db2f
meta-agl: 17fd501fae2361588f2af72c229d56612cdca40f
meta-arm: db933d55b46683f6349b027d6483a3b99e1fec3f
meta-aws: ecf4fc6000d0b21aa10c0fcf197001420be1a1bb
meta-clang: 0ea2df0462edc0c01e787b6ee6c0e20cd6a42fc7
meta-intel: c7c7dface32f187bb0ba724b8eb79152f7453f0c
meta-mingw: d609536003715f61564c41e81bd04ca9113d968d
meta-openembedded: 27ab1bbc95b27a72a6a8a750a7fd3e98526e2050
meta-virtualization: b57f8a25a35a93b95e3baa950c2d359fffc13051
oecore: 3ca9192cf16e15e95ba1c3db4ba28fc6130de8e0
poky: 59db27de565fb33f9e4326e76ebd6fa3935557b9

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M2/te=
streport.txt

Thank you.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release

--_000_BL4PR11MB8797BB0544DC17E6A80C4E5BB9F12BL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the second milestone release for Yocto Project 5.2 (yocto-5.2_M2) i=
s now available for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download:<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M2">http://do=
wnloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M2</a><o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: c83444d121=
0740e27b1744d3aa7c5cad4e28db2f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-agl: 17fd501fa=
e2361588f2af72c229d56612cdca40f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-arm: db933d55b=
46683f6349b027d6483a3b99e1fec3f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-aws: ecf4fc600=
0d0b21aa10c0fcf197001420be1a1bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-clang: 0ea2df0=
462edc0c01e787b6ee6c0e20cd6a42fc7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-intel: c7c7dfa=
ce32f187bb0ba724b8eb79152f7453f0c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-mingw: d609536=
003715f61564c41e81bd04ca9113d968d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-openembedded: =
27ab1bbc95b27a72a6a8a750a7fd3e98526e2050<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-virtualization=
: b57f8a25a35a93b95e3baa950c2d359fffc13051<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oecore: 3ca9192cf16=
e15e95ba1c3db4ba28fc6130de8e0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky: 59db27de565fb=
33f9e4326e76ebd6fa3935557b9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M2/testreport=
.txt">http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2=
_M2/testreport.txt</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chee Yang<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"mailto:c=
hee.yang.lee@intel.com">chee.yang.lee@intel.com</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yocto Project Build=
 and Release<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797BB0544DC17E6A80C4E5BB9F12BL4PR11MB8797namp_--

