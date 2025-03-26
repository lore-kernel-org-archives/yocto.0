Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F5BCC3600D
	for <webhook@archiver.kernel.org>; Wed, 26 Mar 2025 06:01:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by mx.groups.io with SMTP id smtpd.web10.15833.1742968892025641973
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Mar 2025 23:01:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=JLuqpahi;
 spf=pass (domain: intel.com, ip: 198.175.65.16, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1742968892; x=1774504892;
  h=from:to:subject:date:message-id:mime-version;
  bh=3e7BOpsolJqAz8mrhNVMXEILYr4qoDUQTCIF0azFDrE=;
  b=JLuqpahi3pq1WKcoyhf9OJRIeVBgNMVhtuSR/1iux3WOr8nxtPuIxwdu
   Wa8bz16jKVtv0sJOuy08oqlfBpLJ4ZOtsnCtFTVE0Sj6MUwFwRnBwCSQh
   BPYpq5A1INZM0DNt5Uk1y3R9Oyz19fFQ2i4A5eQ94D8urGKochN1Daqq/
   T0/F9YKJqt++P1ooCpj5M6diTFzOCYPzVNb95FagJIegl9iMz2QKsQz4z
   s/WL02fcf0QF89V0L8nH3jPIZQaeVNmKPNzgn60uuG+2rOJwewn4ehItB
   LEXZyn5Tu7Rvz1Y3zMFXZ20KduryByeLIq4l5ikwZouPDkaiiZPNkTWdy
   A==;
X-CSE-ConnectionGUID: 18xWAcb4RLWXtkHkK478Cw==
X-CSE-MsgGUID: tQ0z0OwBTT+lMhyqvl6X6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="44341840"
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; 
   d="scan'208,217";a="44341840"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2025 23:01:32 -0700
X-CSE-ConnectionGUID: 7rCGsZx4RQa4bBPozsA/5A==
X-CSE-MsgGUID: 6dTupyG7Q2OZYnpLO6XirA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; 
   d="scan'208,217";a="124386652"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 25 Mar 2025 23:01:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Mar 2025 23:01:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Mar 2025 23:01:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Mar 2025 23:01:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mzttS5WMkCQnwsqwKmAfrwpWTyXsr2SBGesToMmKmZhWHRfhGh2wHqjn0fM3CVUUWZYWuTBxVv24iycNfahAb3+iRO+SmX9bLOvWICHxJB437lM3OLamgANGKji8SIO1iIjBIqCn/bC0uCth7/8n9YZKfgqpjbkrGrSdSCiMjl3Hq+3Qq3CdUTpaMiN/tPKj8qZHduImMEsPGSydqY5eXOG6SsRQtFrWa1iKsfRRDfNdLMFErkjkBxWTNWBBMTmKIBoBzvh6EUFMtyRxBW2Y+bYHYC6OjjexdoZ7U9cVX4AqR1jLn/oH8zpa4ViwAFGA6PlliYPmLlovT30sVzL/IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QNwxrceXqVSDVQK8O5jLti7wvxzjMCWZMJKBx5JbF74=;
 b=WVbBl37UZHoC+/lLhy1pTbE5Xw0nPWqIhbFGBuNz8WnQ7pK64e98MzKi5zyaTaJUTysamWX8EXUIUSO71NCaNb2RXekH/YU536SwCrhUpboVqtVCXkQghdGr970I3BNMGIUVIrYR+eBO7Xqmy7auIyCE6e2/Zw6x1Qk26uFzQvljvzHcdP4tGEUZ6gQ4pldl8mgFLB4g1Wc8xhxXC9ln0U98NnAAy1K0AJEbAq+t4E/r7m4Lx709j09dKnpua3peOl0WFKiSH0uONMdB4f2ojK3Zm4nn2rVGAHQyyGe2PyK7DoUZYPO93E2+Zh/ZBM607NTGRd+5x+Qb4+K0Y8y8XQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by DS0PR11MB6472.namprd11.prod.outlook.com (2603:10b6:8:c0::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.44; Wed, 26 Mar 2025 06:01:21 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%6]) with mapi id 15.20.8534.043; Wed, 26 Mar 2025
 06:01:21 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 5.2 (yocto-5.2_M3)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 3 for Yocto Project 5.2 (yocto-5.2_M3)
  Now Available
Thread-Index: Adud7Wfexcu9ttlERRSl1PEDUR0/rA==
Date: Wed, 26 Mar 2025 06:01:21 +0000
Message-ID: <BL4PR11MB87975150033CB32D1BE6645BB9A62@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|DS0PR11MB6472:EE_
x-ms-office365-filtering-correlation-id: 1c3b2716-3b1c-4117-0066-08dd6c2ba247
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018|8096899003|13003099007;
x-microsoft-antispam-message-info: =?us-ascii?Q?bSLw1CnbuhHr9vwjmE1/X6qNfdRx41IkoKImKWcag09iADCcK3qBIUBhyyFr?=
 =?us-ascii?Q?ZQ2fHfX0TvIZ4bNzWpPgbH2KInMkipWmcwsbV3CboApUhbzQrMZWmlC12PN/?=
 =?us-ascii?Q?lwWFbOUaie0Xvr3dSA1KUx7zst8JJAnnmIjPD9x+1S4H3a6APXh24dekBG7j?=
 =?us-ascii?Q?5hqF1KfyGFuPVPfVVbOkAlJFHqUVzSwgJJ/yrMSFZBz5x5izVakKpixGejMD?=
 =?us-ascii?Q?71QvKV9WEI0ASdMLlr4wohavn2YmAft9PJYUVpFBPp5Y+qIF304dBVM0D8Tu?=
 =?us-ascii?Q?YvENHkxzM23EPA2BtgMqETqOrAYTCks3P6GDucR9nz0itbMsshSaGVyXS0m9?=
 =?us-ascii?Q?Z9H9xkPqacqFobYHWcMUiWYx5aBi6q8Opk8cW1mfkQJ1zMejDvZsU9s5MSYC?=
 =?us-ascii?Q?ZudlumOYr7Q4edyx0EVuhMli0Ask9iq+ojLXHB59XolV8dGQs/rpX5vyiCP9?=
 =?us-ascii?Q?hhY2MctTXDq5XEI1aZM85NIbyS1cOpMPK1XtI92prGJcWlTChwpYuEsfxa9Y?=
 =?us-ascii?Q?iqQ979nW8Wji2UgC4krHrwoLsVuck1uIggUJCrdzp04k1qeJdrZoVtZaaJNP?=
 =?us-ascii?Q?0fav+FbPBapEeCBBxYK+Tw///d4HQfpDyOiJWE2zVgIYj1wDPfGN0Ot6hP8j?=
 =?us-ascii?Q?pqvZlEtlfwe1jfyVyyjiY5+8xmdYsNGR2cmjHHFIKxSdCZyjb+e8yRhwiJZw?=
 =?us-ascii?Q?aumtB4gsauIUIGhHepZTlPAlMfKkeA3ptB4AJEnW3S5TRnk0uR3Z9KvOP/Fi?=
 =?us-ascii?Q?L5qzxFMMflAwgY4IpGihdwbrc00rR3YOFQ2/im3eGXyD6LpZTE7F/lPSTcPH?=
 =?us-ascii?Q?mgXN2Yz7WWydYrZheIcJjZYBudnsmx+acy8R6+GbSgQ87ZY1Q/1VMm7xp1oy?=
 =?us-ascii?Q?X30L7mu1iZsvmBQTaIQrPLMJ1cqqTUP/o7uXIrZbPVSAzQIDXHkQC7INymRC?=
 =?us-ascii?Q?esvN446kXKf+4mjfPujDJOY6MJW73bFUSyuRa73UMyaXkvrTdOXINfCRtDlF?=
 =?us-ascii?Q?u73/lD4bTDpH1exjJaR2grBqU5PoYYzUHPjbfby3wD00tOsZPu+sz8UTveY+?=
 =?us-ascii?Q?GZ87C1qNGIJ53684VJ5MZQfTifoRLEKGe419hgsHLtaHmOzxGExAWgZduIWZ?=
 =?us-ascii?Q?ab+PdFmW//KwsSmb5kZgLJMvcEIkDzTUtMVTNCdd2Xa5/H+cigqfe9x5fuuz?=
 =?us-ascii?Q?VlnGi5wD81dhaW879exc6EDWdAirLTXoUM9aodyTf4H0qzSHc0C7cEuIrGlx?=
 =?us-ascii?Q?NIqJ7dZAXlFRWJ7CP5r9PYK6OZNe1yJd6rsYN9f0518knAfmq5VJNPBGS3Ny?=
 =?us-ascii?Q?51JCnH9haWpUofVDc1rtP7GqwGZYXcHRfVAmthasWMjwgAUm48TOEI39WJY7?=
 =?us-ascii?Q?UBLz0AMvFa3dRTBvqx3yE2dotTpi?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(8096899003)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?potAF82k381m5y0+z7p+jsnfKJzDaKPtQvLDlFljPuMlafeF7hlb/Ku5J5hW?=
 =?us-ascii?Q?GeBa6Q1ol1ROcKeI7X5u4/ZAz/SiEju/z05XMdk1Afo6sFdFyl2GFYMY82S5?=
 =?us-ascii?Q?1HTVsdcOFACaW8zoq9y5YiKdCE9Soi7VJFFWvF6Eln1zO1oy4SRZy4IGcRUr?=
 =?us-ascii?Q?6Nox8I3ucdEGqaQ46s5y4b5dqLUBv1gAUVuj0JPa5z75YK0ZEOc45U9UwyGj?=
 =?us-ascii?Q?KApwrR1XJRnPFAkFtXbszZxEGpbiy8VJYt8a2CtmNxiYWUyMetYKKvweJ50K?=
 =?us-ascii?Q?slb/0a+t7eLx9peuj3wZG0eh4neUFcYqKO95oFpD6zJJtcmtMZv03trWUqE0?=
 =?us-ascii?Q?9d9DEtK2/32Wgo+8lfk73zfx4AyOFLLJeeHvvsSszjIQUTASyadvXO72sYUX?=
 =?us-ascii?Q?PN3NXBjKzw0SzNnob5e0e4Sp4XfvNrbvBvRTKnByjcG3U1gngTrW86hx1LBs?=
 =?us-ascii?Q?VaaIBvf6CBKldxHs2qqE3H83FER8hyHRBbXpVwDuVhEBoB6IyjdQcH/Njr28?=
 =?us-ascii?Q?cKgBaCwewOfbPuRgK5SnaQHfPqHBPqi+WSwoWrAyIoBG0DNcTe5P103HJFAQ?=
 =?us-ascii?Q?O16lRkGqbNRtiGAK2LCNjoOYqlMvrrcd14GaA+u6Q9YzrFejp6i+0tyC5tNx?=
 =?us-ascii?Q?09/DF0Fg6U+9bnbkcCIxtq8lRCZiPEVtNw9Ml22X8dDI4LVBoy4MdatvHo9z?=
 =?us-ascii?Q?i1Y07e+ZOsiPteSGy1kyx/l47G+fv5mpkDt4AKG3Ci2/Lj8InO4zxhX6rNAd?=
 =?us-ascii?Q?7yzpXkAx7QbDAOnJKY5fblGEfB7M8sKJVY5bnWB8BItquCHwc+aDptuHVP1i?=
 =?us-ascii?Q?v954jvOXGZWkYKomqHNBLHVqoV9/SNdKA85FN5c/Mq6iVMJdsjBZVKXQJQ3l?=
 =?us-ascii?Q?go7jD+/zFeq1NleWaBv+LAup15M5nzn1zVE49pKra+1MvOdhBeNuvf+XH+lI?=
 =?us-ascii?Q?ZDk+a7Ydf/8ZBFglFxd9idaV2KRY77355wPZcVfyKz8zyLsiTDIoKjFjHyj2?=
 =?us-ascii?Q?iWwSAJmb1slvDHFp69xUPJgDP3n8WPzib8P58WShBAi0piwCWY920++91DMf?=
 =?us-ascii?Q?CSFPdWHa1KHFO0cnUHj//HMR7LIdYNt8Jc6QuzLKzj5e3BS8Zy9+xTcYDb0l?=
 =?us-ascii?Q?h7RN9ZjeWSAlvykzqfOgNdBHWIfzqH9tXMBO6ZlRaL7u/stw5QGbuGo++ShK?=
 =?us-ascii?Q?SBExp2SXRYHi+BWIZ+nqaAi7T+51tRGX0ODUv0TKjQopJ8Lzsh0EbvC88qHz?=
 =?us-ascii?Q?X5gBQjQyY2fx0wnOETMrX+SVvUfFQ1D+UPswBMQfllA1IMUXG7wTJdMvTx+3?=
 =?us-ascii?Q?iQB7/bFti8xmwSicBsKq570FrgGYOVRsejpHl1VccknqxAzm5WTvamBRD3+q?=
 =?us-ascii?Q?e6aUGx36BhYDFOxXNRg7lbUeROl2Ir/zxg1ay/OKjegklfPE63Gj2Aj1cvPr?=
 =?us-ascii?Q?8CiN48348HwTiicyCfA5/un20WmrIvJEqfiQKIx6PGTJgH5mUbvnBqYzMb3q?=
 =?us-ascii?Q?zn0KNkuHxhZ3rWquvbovePvsSAgb4MA9Orny+CvWX8OeWrDr6HF4IGUajd5M?=
 =?us-ascii?Q?xqajHLflEK7k6i/FxBM9W+7kSRAN+xARUjIlatCj?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87975150033CB32D1BE6645BB9A62BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c3b2716-3b1c-4117-0066-08dd6c2ba247
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2025 06:01:21.7934
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BjqCzJGTq8nLrtbOOTZp9S3fQOZFGmuZYg1GHzZJ8nzmzADP7DmMTpv9FbjpXwtgtOY5bMuY+e4jab0oXvQHjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6472
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Mar 2025 06:01:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65018

--_000_BL4PR11MB87975150033CB32D1BE6645BB9A62BL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the third milestone release for Yocto Project 5.=
2 (yocto-5.2_M3) is now available for download.

Download:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M3

bitbake: d5562e007c7c64e8613a118ab9a6c73ed2063263
meta-agl: 17fd501fae2361588f2af72c229d56612cdca40f
meta-arm: b6227e29625c2509b083092e5e10975c3b2d037b
meta-aws: 886dea85a304b5db0346494b2e95e7c59cab14da
meta-clang: 3669c28e90ad710e38ad2381ef0292d706fa9ffd
meta-intel: 81b110e4fae3c47d65872ffc60bda6e92271b3f5
meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
meta-openembedded: 74110869a8c1c54270c3a919ef7e84bed896e166
meta-virtualization: 2b0e119d5ce4106e78c214babfc1c6fe02f636b2
oecore: 6027a6c6cf283bfb639bb6c3bc2f35b3da225352
poky: 046a92d351e2025e0dadead9f70f85eff8f5af70

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M3/t=
estreport.txt

Notes:
There was an issue with the Intel Arrowlake platform, potentially caused by=
 a missing kernel configuration. This will be fixed in M4 release.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15802


Thank you.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release

--_000_BL4PR11MB87975150033CB32D1BE6645BB9A62BL4PR11MB8797namp_
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
We are pleased to announce the third milestone release for Yocto Project 5.=
2 (yocto-5.2_M3) is now available for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download:<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M3">https://=
downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M3</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: d5562e007c=
7c64e8613a118ab9a6c73ed2063263<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-agl: 17fd501fa=
e2361588f2af72c229d56612cdca40f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-arm: b6227e296=
25c2509b083092e5e10975c3b2d037b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-aws: 886dea85a=
304b5db0346494b2e95e7c59cab14da<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-clang: 3669c28=
e90ad710e38ad2381ef0292d706fa9ffd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-intel: 81b110e=
4fae3c47d65872ffc60bda6e92271b3f5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-mingw: edce693=
e1b8fabd84651aa6c0888aafbcf238577<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-openembedded: =
74110869a8c1c54270c3a919ef7e84bed896e166<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-virtualization=
: 2b0e119d5ce4106e78c214babfc1c6fe02f636b2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oecore: 6027a6c6cf2=
83bfb639bb6c3bc2f35b3da225352<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky: 046a92d351e20=
25e0dadead9f70f85eff8f5af70<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.2_M3/testrepor=
t.txt">https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5=
.2_M3/testreport.txt</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
Notes:<br>
There was an issue with the Intel Arrowlake platform, potentially caused by=
 a missing kernel configuration. This will be fixed in M4 release.<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15802">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15802</a><br>
<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chee Yang<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">chee.yang.lee@intel=
.com<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yocto Project Build=
 and Release<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB87975150033CB32D1BE6645BB9A62BL4PR11MB8797namp_--

