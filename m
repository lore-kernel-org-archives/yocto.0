Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DCEEC87FD1
	for <webhook@archiver.kernel.org>; Wed,  6 Aug 2025 02:29:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by mx.groups.io with SMTP id smtpd.web10.16120.1754447395643795042
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Aug 2025 19:29:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=iBveDs8G;
 spf=pass (domain: intel.com, ip: 198.175.65.20, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1754447396; x=1785983396;
  h=from:to:subject:date:message-id:mime-version;
  bh=sLc/2jJEeRQ+XxpsJuEjl/g9OGroBQdb2K2oKujq3NE=;
  b=iBveDs8GwhvlEvdabpYbropRMsr42+3zIewrRsBqYA7kNHHUfTOBwAEz
   7wZXgjSfX4yTNT6vrkXyAIb+cjC6lENagFt3b7ZoXwxlUe5ETTE2F66pw
   0QkNg2Ftfcwvl5aeXz39lzP6Cbnn4dHGnunjsNkOCd8dhyMuX+n2/+30d
   byvdI8blo4xC71vM6fT6+xhJehXS9qIWDD7UiX5Im1JoMNfbNue1/Wwwx
   ygXWJXTnT5DN3YZ3nj0E8vjVQkWSlQelmMCwFeMQMiqqIv+l5r8Coc/SY
   FpqFrEJ/+ZvjKnYAubBJZ8XkTZulEqdg7hpuEtR4zAbIq2yLZQ+ypXbXX
   g==;
X-CSE-ConnectionGUID: g3dvK3PBTt6fZrzRM+U+lg==
X-CSE-MsgGUID: eOPAjBSsTEumUUXStTf3uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56468243"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; 
   d="scan'208,217";a="56468243"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Aug 2025 19:29:55 -0700
X-CSE-ConnectionGUID: Dd8tiV61RT+wq9sd2oxTgA==
X-CSE-MsgGUID: Epv9RMRQR626gDuTG0PfUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; 
   d="scan'208,217";a="164315370"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Aug 2025 19:29:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 19:29:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 19:29:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.64)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 19:29:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i7DOTXIM4oluN5xdaTeCsaqIXRPWNnQfjqjPCeS7VC/4wtbOoP4Mon4byb0Xg+iUGmEuNakprm02KQjTFIulQH2knbLGd3fYvd/qJfpDT8YrW9gpkORpJVqhiEotfZJL2kGWR0047cX2yVP0UcSBp+na6BJZtSwLW6YqlM+mrk4p9iZcR7zTpaI4tYfqg6zpHXGYx7per+9lOBOrqquKL7wdC4E+n4a3AjKSISUXaSfqMthjFaJe+aD0CIJReYXgN+FT+A2KgvFKkZW48IplieuXbKcJwPCVlZeizltGzvXBcF3oHCFsL2TtTLm9Rk+nFUYLWWfp2jIzkt0vRJhHBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QsAh+BFW7b5B+3kFOjrtEyQ+AtJb2bcxDjP6zUxai5I=;
 b=aPtLh9xzOwRC38VITqWlxb/qExtE/AgMhImaFbe2hAJY8QC2SuleAeTTEMR4InZ0VvoSpkmOj+PrkaNLvukzjYL9ombCdX9o6x+EwN2tEn4rThfXImFvjWhvcg/8sqW23mIYn+2oWZKsWGjWOu4AehP8SjKN6hcp1m+QP+qmKxZtjg7Lxa32ZEeOuO29mUR/WC842Uu1BvftrX81awxYqTXd5vN6UK5KvzI1nFyYcIgEEQYARd2Du9MUwK2vgjZpUXOfOWEA4qjipn/IrVE3kw/2kRZ/WoyYvzETz4XY38vSgMrNUa/mWk4eywp3W9rLNymVebf5ciuusO2kYpGLkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by DS7PR11MB5968.namprd11.prod.outlook.com (2603:10b6:8:73::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9009.13; Wed, 6 Aug 2025 02:29:10 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%5]) with mapi id 15.20.9009.013; Wed, 6 Aug 2025
 02:29:10 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 5.3 (yocto-5.3_M2)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 2 for Yocto Project 5.3 (yocto-5.3_M2)
  Now Available
Thread-Index: AdwGecrbCpj5J8wyTE6RFwWqXjQTsw==
Date: Wed, 6 Aug 2025 02:29:10 +0000
Message-ID: <BL4PR11MB8797E378A6540834DACD4843B92DA@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|DS7PR11MB5968:EE_
x-ms-office365-filtering-correlation-id: 1b1d5fc6-9b7c-41ed-d4ee-08ddd49106a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|13003099007|8096899003|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?PmnY+jRTWbpYNhX9KAp3ktCllIhzntpafUbondT6epsBLXs0KIdgJ4f9/Xr0?=
 =?us-ascii?Q?tcRj/5/+G9EmR/xNmBuuUo3i8YIECYDEvxQ1v0cEuWqiwPjYWQC9QbRLwXYF?=
 =?us-ascii?Q?WXTS6csGJGCmN8lM6tpApwXupir9c5IjFzEnjEiaIDBh9+vqCmzGh10aICwq?=
 =?us-ascii?Q?/C+nCObsFZnYgqsJRGAyq2/JhhKMTVHtyLchZE/wigOzVVfMn4oY8XSCvC8I?=
 =?us-ascii?Q?ricTxAtmsU7AeScxRC9Frq47tML28kl4X4hCEL6dSA+gPObtFhrbxoRHs9w7?=
 =?us-ascii?Q?CyENijvWGAsE1pNynIpbNWmOcCuSK8i/xb5dl1j2+bBQAfR2NeZE4grRpNSs?=
 =?us-ascii?Q?IddnSftZNeQqz7O1SiEGurs+o7XtnNIrKIHTKX+20HEfwmdjWPpaeDw5g5KX?=
 =?us-ascii?Q?/MlvriBtU3iUW23Y8D3XGEl3drgxW6RCk2dJHy/t4sqD6r4Acrf/xoj0matC?=
 =?us-ascii?Q?hvQEhII9ChLnFU+gAi7ZMsM1n6NkxgRChIj0qnbpYzx3VnH9JDVoOWLD4Wqi?=
 =?us-ascii?Q?Gc6NJlV6qlj/p9i15ow4QaJi38nyvg/7lkeRHyMixTzx9hHExX27ACNEmzcj?=
 =?us-ascii?Q?8AEZCLNiUkqSuU+9abRVX2v3PzLHFEgdXa/BRQmwuY5ziOL6Om+Q5pIWQg+B?=
 =?us-ascii?Q?JznwF/rkNs6N8fIXK2gKI6aD7YRHsmQqhknTi7OKvNuTvlaLXLblAN5duHF2?=
 =?us-ascii?Q?afy2JzFd1oUqmVRQflkfTMzzIKIkx4mZ76DjrNFqGo5S/9TNoLYSnWXhsPgc?=
 =?us-ascii?Q?RoGmDAta1wRGMwRe0PheJJTpboHbrnFoI8yLkdgq/qjVFiSsVvcJGXu63st8?=
 =?us-ascii?Q?y3FOifxG001zFT8ZrJq4GVPpKHM0wdbxQbnLU/w5yhmghOQxcYQ6hjmvwLnZ?=
 =?us-ascii?Q?H8nihiUCzuSGA4QAm98C++r07rt07VIRowvQZQBq4DO2GEUbEjnknQJg4Ncw?=
 =?us-ascii?Q?u/9meKLd+ZQ/9iUmIeCvodtCbbWqBqZHbQIuUm2a/NwglH2vDhJVI8DrwEe1?=
 =?us-ascii?Q?CImQT4pV3MKCUjDE97MDU8v0uMbhSrv/gn1jhsWKRLx+sr/aQRJFEo6n07mf?=
 =?us-ascii?Q?OF1Shua1IhWXvMDyKIj5osy3WhrSrpCGYl23yK0I8tVDJ7XBcHvd+4xU4qsD?=
 =?us-ascii?Q?9L1X3AsR9TBS/CxIdHc/xmEmR0N+/+cIBhgPeUovvqD2tkb84ob84Q6VrUyU?=
 =?us-ascii?Q?J7nDYKeOZJyZ37IvSEgiPsinSuU4EzMAq5ESS5x3oHbnXfsIvn8dzM1ywZ3d?=
 =?us-ascii?Q?ULuc9Z19a8KQUscxxXldTA7cpiBWNbjBBeeeEq3eNHAF2Ttr4I8tXVSfNrWm?=
 =?us-ascii?Q?pNMSH+EBPC/ZOZ1gOD/M34KeUpiVrJuZJrzJSfzaB9FMYFLFvZYxCf4KOVCx?=
 =?us-ascii?Q?B93fUUJEIqruAmWWw3FBoJLNhtPwBbpYOcGfHJkuaGM+Zy84Vf1dL3WgcWAm?=
 =?us-ascii?Q?0EWXG2VRIZE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(13003099007)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V6M0f8eQUk32eBLCLvzhXAlGedQhq+E9RPtjLTPDEvfQL5wmnEI6PQCfSqTT?=
 =?us-ascii?Q?F/0Bv1zIIT6PR7zk6akc01Iz8lLSdZCw1P9Pwb3jG5y2EK6+AHL6HYV6mhM+?=
 =?us-ascii?Q?HKkImNTcpTRxUpJJBhmsMT3T+Ug9VoS2s3x4WDwVgmCf+5YhHtEBJmeViStF?=
 =?us-ascii?Q?qT+AIWkykmmnUmZlPA6JJ8ood0bv7jDnocUX06EtIyznTY+umHtvQ+dU+0lQ?=
 =?us-ascii?Q?KcbENnmmT45XMtZgfoarURhTzeGUC+m9VU/4rRGLh/q3pmZ36ptjemDCIfa+?=
 =?us-ascii?Q?YRe1p4w+0UbkIGUhK7avYpEEArwQbw8Qk++UK86Z4M5VWz2bOohPwrL6k8oY?=
 =?us-ascii?Q?b1et1UzStGJG3Bavv3JJoOYiqf9YSckj9xR3V1PIOBQuKgLMnsbRoHFVHqdj?=
 =?us-ascii?Q?B1egI2IInYMpsvPHIlGOnxTx6S+5+Mt3wAGs7DJa3hqCSY/+XPIXjvfCRL5O?=
 =?us-ascii?Q?M0D0jBq/InNrrF0Jk/1+XF5eGL15oAFHpgXsHXLdDvyPK59A4t+MoVYfiAYX?=
 =?us-ascii?Q?7C4uza9syxDobV6ctILnEh9Mt2pJDyFj9fPhXAvDtuZPftFy0kCCzmQSxFeu?=
 =?us-ascii?Q?zy+eeTTsB7vzhWzmQGuUMugyQBqYG83rzqR3ifakgdSl4i1lgv2Rd+1ZL1ix?=
 =?us-ascii?Q?iNhednnTm9jtzBcMjqfi3xjhbIMMEBDei4tCrU4LWBbdsrZ89DEcfgNzICSp?=
 =?us-ascii?Q?o+FBX/z5qLRRj0VUuYHI393s8rn0N0jBCZRVyA4F7pEYrtoM3UtetCHJGkUt?=
 =?us-ascii?Q?DyIGnFBhKOgrIZrTBzs51jY7n/bPoZ2H3EBBq8+EG2yxwLYjsXPBvUacFh7x?=
 =?us-ascii?Q?GrIj7D3pAVPNpqKtYgLDWnQymrCjX4m/+LyCQl6bxSFWQfE3Uu9xn2XB+wK9?=
 =?us-ascii?Q?0kiOayxQc6WsFcgR5wZb1aOcAm/RwotQWxnj9QtIggfKBlRRUbHxg7VvC85O?=
 =?us-ascii?Q?XLvjQbjL+KxWOcbK2tSLJ0vp+g5nvZU0XywFPrLfTP5ZQaoUgZNFPXtrhMvN?=
 =?us-ascii?Q?+YLqsM1V81LWDQzwWLfn5c7ALSAjthwf2VH2CLxaQ5AnuY8h5Z8Rt5u2JjFR?=
 =?us-ascii?Q?jOfODI1nuI53mxBcQsulZUuDOlRkLXfcty5hEVtJaNSaUnO1WVBJQ22JM8H+?=
 =?us-ascii?Q?3q34wIVj3BZeDeAmGw+8hMDXX4+hCR0cuSz8+nWNj4Q+VExHUU1I7XjdJNwy?=
 =?us-ascii?Q?Ln9P0GR5oxIXtRLAfpnWbSoA/SLkbexaTWCkaMV7P+AYzOBV0GwFinzCD1uD?=
 =?us-ascii?Q?gN9Hs+LPF9yQFXikwa0MsL8x6ocRdePcSWcdQQl7BzeDu2n1VN8f8qBpXLUZ?=
 =?us-ascii?Q?F5hslQHpqajH6AbBnAdJOciS7Hz0Yjv8uoNj0tUfVVuNV7qOaiW6UZTv2zhs?=
 =?us-ascii?Q?AZOmsZOLioJVs10YJFpTxXRDaUGTU6No2w2L6/TZ4Y4oI7Sg02RnHhBLe5eW?=
 =?us-ascii?Q?CEjt673OuaVqChK7rjLiFkmjgwZAa0CJYvlU+hjoUVVZ6VvKd7ozQDxhH6BZ?=
 =?us-ascii?Q?qHpeyj0NmM7+6vfu6UKI0VtYrBw6lPscVIM+APs3BeVbBKoY7jJ9EOcXtaaK?=
 =?us-ascii?Q?fSIYsePrP/vwd5iTT7oSKeLA3E28yUEkd3QIc66+?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797E378A6540834DACD4843B92DABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b1d5fc6-9b7c-41ed-d4ee-08ddd49106a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2025 02:29:10.2939
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6KV60fvkkvEeUe6niPt9tPVrYOXRDkUta61eGNrggfJGre9Z2ITnSVS4onYLIYgfs1+hUGT+VL43WF6QETZImg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5968
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Aug 2025 02:29:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65735

--_000_BL4PR11MB8797E378A6540834DACD4843B92DABL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We are pleased to announce the second milestone release for Yocto Project 5=
.3 (yocto-5.3_M2) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M2

bitbake: 5ba7c2f0797a72536a81f57276d4e5c75f23011c
meta-agl: 5df5ef43a26f441d8434ec25b2824ce1b8e9dfb9
meta-arm: 77ba0e68e3d6ffd380346c616a60bf0c7e35a08b
meta-aws: 7e2eabe1aa248cf3c6a69621cbba40343a2e0896
meta-clang: b2139ae4b027cb014d0137de0b46e9197a10a4db
meta-intel: 7fc52266ae25215e0d510a792fa3a688d173d1dc
meta-mingw: 3b92f104e024bcb1341b563f396291b41786cc38
meta-openembedded: 714b3adc3a92d42370a0ea57a9744ad2d031db7f
meta-virtualization: 9b034e3defd4aa1108d7a6b4dcca600d4352b132
oecore: fed2692c4e7b87fd2bf08a5abb4391b79bbfc982
poky: bd4625cd4db0f02162092d85aeab3023914f768a

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M2/te=
streport.txt

Thank you.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release









--_000_BL4PR11MB8797E378A6540834DACD4843B92DABL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the second milestone release for Yocto Project 5.3 (yocto-5.3_M2) i=
s now available for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download:<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M2">http://do=
wnloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M2</a><o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: 5ba7c2f079=
7a72536a81f57276d4e5c75f23011c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-agl: 5df5ef43a=
26f441d8434ec25b2824ce1b8e9dfb9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-arm: 77ba0e68e=
3d6ffd380346c616a60bf0c7e35a08b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-aws: 7e2eabe1a=
a248cf3c6a69621cbba40343a2e0896<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-clang: b2139ae=
4b027cb014d0137de0b46e9197a10a4db<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-intel: 7fc5226=
6ae25215e0d510a792fa3a688d173d1dc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-mingw: 3b92f10=
4e024bcb1341b563f396291b41786cc38<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-openembedded: =
714b3adc3a92d42370a0ea57a9744ad2d031db7f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-virtualization=
: 9b034e3defd4aa1108d7a6b4dcca600d4352b132<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oecore: fed2692c4e7=
b87fd2bf08a5abb4391b79bbfc982<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky: bd4625cd4db0f=
02162092d85aeab3023914f768a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M2/testreport=
.txt">http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3=
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
 and Release<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797E378A6540834DACD4843B92DABL4PR11MB8797namp_--

