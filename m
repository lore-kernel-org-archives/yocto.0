Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF082C3271E
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 15:36:58 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.53])
 by mx.groups.io with SMTP id smtpd.web10.83007.1720453017245287716
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jul 2024 08:36:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=FCSKryUD;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=FCSKryUD;
 spf=pass (domain: arm.com, ip: 40.107.21.53, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=neKiPh9Ovyy/rL6INQ87CWPA+vLKbKG6Apk9ZsT6O8NU9w3iS5Rg45aGnJYedULDX5z3DM0/TdVWUGv7A+gPeX/12e27irkEEsuXR2WopUFqoBFFKeDSiPX4RS+bCM6LycUYMs4fezDD1wPaJnLMEsv55zC909M6nUw8HMV15w66Kxv0/Qk5JpGezldnrYBd1WkxAbHFWrPhWCLHVeRJePGxxbM/icfqn3KCqSAUCM7AUtaUB2koB9X9D5ELDXj7ikQHAMdkpHCiU7lkbe6ZXzDpsTIlBXQ3d3nf+97K+yzRNwl1PeisDX8RkXRFbO3kIN9z+5UEFNQ0Px/FPAGcPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j5VQoOhl10Fp8Tsy4KtmBP88s0wWHAEmjVmPtcUA9ts=;
 b=F9TSvtZ5UXK76o4GGZ98zk5yq95GNTs8NteggwaaxW9VUg53jGB5I7aAwbN0oo4zKVMhINUYP+CeNg1/uiAB+QbOgPx2ct0HpoTmWy97r3bG2oJRVYq6QzYE2jiHfC9UpsCJa6vNyD/lzPZyVBTFRk8r8wO/0z9xUcpMmAILrEtFBLKRSR+LjfY8daa+YSAnvNdFrFFlgdvnc1jeuu8y1pPjUa+XidAN+yfxLSLV0Hp2muz9MoZbCDdIP06hmjsEAw8MvWCnvG25qzjx7PAXA++0OHdyMiseGrn7higaVdAdvo1CQwXbbYoHgD6jNNRsC2u6qcK6tXVfcjvIbHRcdA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j5VQoOhl10Fp8Tsy4KtmBP88s0wWHAEmjVmPtcUA9ts=;
 b=FCSKryUDchvvZoI+kb1ft3Z6UJQd97U4Yn3FM90TROeb0U0pYMka4AlJhppaESY1guTGRwyr6K7uAA7fB9gYzYzXLTmf6k2NWGMj1qda6EJE78l+eLMlRNCEmRsiHgSZ7ZVXf5dK4f186dFvtGen9ptUUR/VmKZ7XLaAO8Hhpuc=
Received: from AS8P189CA0005.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:31f::18)
 by PAWPR08MB11037.eurprd08.prod.outlook.com (2603:10a6:102:470::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Mon, 8 Jul
 2024 15:36:53 +0000
Received: from AM3PEPF0000A793.eurprd04.prod.outlook.com
 (2603:10a6:20b:31f:cafe::9a) by AS8P189CA0005.outlook.office365.com
 (2603:10a6:20b:31f::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35 via Frontend
 Transport; Mon, 8 Jul 2024 15:36:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF0000A793.mail.protection.outlook.com (10.167.16.122) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7762.17
 via Frontend Transport; Mon, 8 Jul 2024 15:36:52 +0000
Received: ("Tessian outbound 69dff5ccb08e:v359"); Mon, 08 Jul 2024 15:36:52 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 76a2fbffc31e6854
X-CR-MTA-TID: 64aa7808
Received: from 697b5d0949c7.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F1EB244A-2E17-43AB-99D0-0945D39262A9.1;
	Mon, 08 Jul 2024 15:36:46 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 697b5d0949c7.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 08 Jul 2024 15:36:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1HjhyjMCotmH7cXmH+ImvSZhtSvwDrE9z8qw+B1S2BNUlkxH9pwQRrq1qDvhD1+otcsfe0HQqAsxoe5wZjQDxkEdWHK2apy9BtsVekIbh+UaZRYswZmXk2sDezOSjc3PDjau+HS26GhF7PCU1mGIIqxizoGluSce4XL4icLJfjMGJFAfqfmZYLV/F5kuadiVU16hAgY4Pl62lSTUoF/XV31qAl16U9aXxlDrEhNyN6VSxRyCuzbtgZCNrowrqPF0MvXLEOXZd+GjDNXfvDlRcJcuvneIZV9y+gnZgg3w/Id7oxCLn+rIIA7ozWy4TiPzW0jV5g8Rb2pf1EctokFNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j5VQoOhl10Fp8Tsy4KtmBP88s0wWHAEmjVmPtcUA9ts=;
 b=k1VsWN59u8bD4YoRnIbA1iTtt6ELrmuoZhvGpsSGyGy87cxmCWisdn2mFyhzgVf88hgESTlx/FnsdpWhzH9xJNfJCw6zdvGmnhUZkcvvfaF8utga1WYITs36DExoL5KI1HLiHwA1Rh4NWWUm4F+fWmHKM4lsRcittd5vh1PJkRBISY+ZdIA5gp0eOAecb3ew3eaTKBBtPWlcs/q7qXCnG9UsxoOfpAJ+3cXQ+IDTHWu9FfcAGPBdSIGbeyxqih5CiSTstgZjBZwOp1Ye9w2qvhTco9eg2Q8jdQIONvuHoO4QZbKMY0d5gQImLkPyoUbXzsCH90WPxtzhgw273ZKYsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j5VQoOhl10Fp8Tsy4KtmBP88s0wWHAEmjVmPtcUA9ts=;
 b=FCSKryUDchvvZoI+kb1ft3Z6UJQd97U4Yn3FM90TROeb0U0pYMka4AlJhppaESY1guTGRwyr6K7uAA7fB9gYzYzXLTmf6k2NWGMj1qda6EJE78l+eLMlRNCEmRsiHgSZ7ZVXf5dK4f186dFvtGen9ptUUR/VmKZ7XLaAO8Hhpuc=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAVPR08MB9818.eurprd08.prod.outlook.com (2603:10a6:102:31e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Mon, 8 Jul
 2024 15:36:44 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7741.033; Mon, 8 Jul 2024
 15:36:44 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "kfa@deif.com"
	<kfa@deif.com>
Subject: Re: [yocto] Configuring gitlab runner for Yocto
Thread-Topic: [yocto] Configuring gitlab runner for Yocto
Thread-Index: AQHazurAlcgWzOAeUEiyG8+YhprtzLHs+2QA
Date: Mon, 8 Jul 2024 15:36:44 +0000
Message-ID: <C6D58B12-A04C-4A3C-B635-280208A5D978@arm.com>
References: <ukdP.1720191045419684124.rRuE@lists.yoctoproject.org>
In-Reply-To: <ukdP.1720191045419684124.rRuE@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAVPR08MB9818:EE_|AM3PEPF0000A793:EE_|PAWPR08MB11037:EE_
X-MS-Office365-Filtering-Correlation-Id: 83fe443a-06ff-4bfe-f0c4-08dc9f63ca92
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?ZlVOQ1Bqd1JvWnJVaC9mazJKVXUvRWRjeUt1cnZrcnQ4MStOUUNGYnIwQmFR?=
 =?utf-8?B?cVRCMXJPMVdKVGJuUVFvaE5xcGV6SkdtOUdzWGc0ZVFFK0NIaFVVR0dDQmtI?=
 =?utf-8?B?d0xyWDY1UnZ2blNPNTYwRGJYZmtuMXVTZ1dGUTE4NmkwdVozcjlkc0lzdEwv?=
 =?utf-8?B?dGxJa2kwYXdCZUFtTndNdEM0WDArbmNrSm02U2tYd3ZUdGxqRExubms0QTRB?=
 =?utf-8?B?S2dlY2srMGF4OThaelZJZlo0SDZCN1psa2lvUVhoSXBIN0tPTy9zU0tFeUFa?=
 =?utf-8?B?Z3NEdHNFb2xpZ1ZoZmxmL2FpakM4QjE5VDdmbkxTMEpSZmdWQnVKUVdBUEJG?=
 =?utf-8?B?TUI0Y1NaZVZETHZvYWVOS1NXQWhaTVQ2UHNxdm1qanZkSWFyOG91R3g5UzVy?=
 =?utf-8?B?aXJERkt0WW1yZnViWmc1NWR3SFp1a3ZmcGRMaThVZmR3UktlVis5S0Q5RzBw?=
 =?utf-8?B?c3pNaGdyNFk2dlVieUl2WEtMd0cvRUtmeXRuZjY5L3RKZXU1RkQ5UkVSckFn?=
 =?utf-8?B?T1RHK3hnQUZGRVpteTFFa25WM09tdVFHOVVLb1ZMNVdQWFJVeUxaV21iQU0w?=
 =?utf-8?B?VDY3dXZSSzk4T3FVTFhMbVBaZ0Ura3pHc0FlMm5Gdk9wanJWdmVNWGpDbTVw?=
 =?utf-8?B?Y29qeXc2S09RL3dLd3VWNlpMZFJQYVY4V3Z5cE81VWlROUhUejNwbkd2ODlS?=
 =?utf-8?B?YzVyWkdzWkVPaHMydWJqUzQwOVowM3Q0b2hwNUx4MFBVZmFqbXlxSFg4cVdG?=
 =?utf-8?B?L3A3c2ZyOC81cC90YVBiZHFnSWtYd2lybWQvaWN6N28wbnFaRkYrN3Q2bDB2?=
 =?utf-8?B?K1pYYmpZMWR0bUowTndmTzVIcmpDRGFLby9qQ3FlU05zUXp3b1ovMHdxSDN2?=
 =?utf-8?B?NjVEejF2anZDcy90NHMxRzdEdFIyOG5YTCtueVNybnFiR1pLNjhrNTJ0TVlK?=
 =?utf-8?B?Q2dWOUtpOXNKK3lrY21IWlRNS1dWRnNGL3ZSSkhVZjV4QXZSajRtMnhGOWo3?=
 =?utf-8?B?aE90eFh6Vk1MZGlXYjdaQWowbVlGTlBFTkptZ25OdGcwN0srNURzYSsyd3JV?=
 =?utf-8?B?aWc3VTNZUk1KNUQ2RUEzVlNXQzcybnd5Y3Uwems4NWY2QUYzY3JDWHNvWmw2?=
 =?utf-8?B?OW5jZEU2cldicm5HMGJIYnBmTEY2UlFHTlcyZ1NQQXllVHJ4SGxaQ0gzUzR5?=
 =?utf-8?B?UEFyMHM4cEVCM0FzY3VvZ29KOVBrZWNXcXY0bnlpNDVEL0hxNmRNSnRqT3dE?=
 =?utf-8?B?aEVZZk9pMnhMTDBTektnS2pGTFRQRVd5cXhIdjNvbkNTWGRLWDJqTjBRem1x?=
 =?utf-8?B?QTN5cjBsVzVwL2U1ci9pRXB5bVhUVW10Z2pCR3BnK1VvN2FqTjFaRUF6dWVw?=
 =?utf-8?B?TEdYSTZXOEJPR29xTVVYaW9heWZYdlp4WWgzUUVGQndQV0V5ZFpoQ3k1NmVH?=
 =?utf-8?B?dlllTjNxQlg1QnNyWU9lS0RxQndMcHd0ZXo1TTNCNU1DSFRybGU2V2duMFUz?=
 =?utf-8?B?anFRTDcrckF4Tjh1aDZjd3hQbUlJdkQrdnYvL2NoSDRPcmgvTHlXY1A5cVVm?=
 =?utf-8?B?b1dmS1loVUcwb3U2d0d4cmJvdHIvZDVKLzJZMFBpNjRvTklIVlNtUmE0WDNl?=
 =?utf-8?B?ZExhb29PdmZiRVQwb01odVVLbXVDOVpIR0swalJCbE5OYmc1ZlgrdWRzL2FO?=
 =?utf-8?B?Wi9UZVhxUXp2bUlsVmx5VVM4LzkwcHdLUWh1UVptRGpUa1RLbVUxN2hlSGs0?=
 =?utf-8?B?SU8zWEtNTXkwcXFSZEJZNko3NkJXSklRSHBPL2dBdVZpS20raWRRMUtjdUpa?=
 =?utf-8?B?eERadENiSWNYOXpZUVZwUkxIV2xIU2xnWUtDVy9pdDEwbmtuMjZmVHdjcU9M?=
 =?utf-8?B?eUYwU0QyUGJiUXJqRytQK3EwSzR4NnFpczZZK09TVzU1Qmc9PQ==?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <6DC1848962B87E49A82AF36AA31E5C8C@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9818
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A793.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ccc8bb56-7cde-4f3f-d596-08dc9f63c5ce
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|35042699022|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SGdTVHpxNzFDL3JtcGFMcEVTTldxbUZ5U2t3Z3F4ZnVnYnUrYktsSS81Zytu?=
 =?utf-8?B?THRqRXZ2WnV6bk9RUGdoS05QcExVZG9PMVhmVGdZY28vV3EwZGtUd2tJakhO?=
 =?utf-8?B?VWFaVVJnb2grdCsyR1gzV1RHZWwxZ0xnSjh0d2VpVFBkNUlFckdKTzFDK3lP?=
 =?utf-8?B?UmZJVU1jQTlnUUdlWlJUL20rQjFVallQVENNa3B0bmJNb2kvYVI1VkpTU2lE?=
 =?utf-8?B?dkZyazAwY0ZhRlVtVnZ2WjBaWXoxKzhWUDlMOWN5S0UxWmE5d0xBZGRVVVJM?=
 =?utf-8?B?YWhOeVF5cUhYSmhsT3dCTjI5TytkdkV3ajRBU1p5QXV5T2g3clZFYWNQR3dv?=
 =?utf-8?B?Nm9FcG41cjNYdUxYU2dReUJReEUrRkVMVXQ0T2V5MjM5cnliVnNoNENPbTFo?=
 =?utf-8?B?YUxmZVQ4NkViQVl3VmMzaVREck0xWllpQlM1YnNLMGJicU4rZlBmOGJYQ3Nn?=
 =?utf-8?B?Tyt0ZlZaTnBReUZoejM1aUtlQlNnblZaOS90aXJBMk5hbHRzL01sR1UzTkZF?=
 =?utf-8?B?MTBwR3d3NWkrY3p3cWkwNkVPbXUvTWFaWUtldS9VLzY1RWFHcm1oS0h3blBL?=
 =?utf-8?B?QnVTTEI5MnFZYVJPdEtocnBLTWN1YlBBSkJNUUxrL0FEcWVMM2FQbEc2RVN2?=
 =?utf-8?B?VmJFb0haai9VUFIrK20yanJ6b2JwTE4zSXY0d3hZeGNCTHl3Um1CcFdEdkVW?=
 =?utf-8?B?TkE3aXhRNEEwUWxpNXpnOEVVRzkvaEdEOVdrWHV4UkJWdFRLME1rTkVPVFV1?=
 =?utf-8?B?dkNLRlQvVm85RjRCV1RIRjdFK1dJUmxsK1VjZWg3cjNWL01xMzl6Z09WdlU2?=
 =?utf-8?B?TFV2OGpnWFErS09Ta21Wa1RNaWJJMURqYnRaQUE2WGRDTC9iRksxQkY1YzlD?=
 =?utf-8?B?a2ZoRFg1Q0xmdkJVTndIRWl5UWdKTVZqem9iZ29HTnBibmsxYWFidXdMUHBM?=
 =?utf-8?B?QTFnU3NuSUJaVDhMb2hSOW05M3Q2N0lLa1dWb1FHYStYcTVuTklSOS9pSzJn?=
 =?utf-8?B?TmZ2bHNnYjhwbGtraDVTWUtuL0J6RlY0aVdFeFdPQkVybjNEdUtUMzczZXZw?=
 =?utf-8?B?MnJVYUxRREthWXpKUWFHMWxTMGdDLzJPL0FjdzNlZHVxdUk1WjMwMGRRMW5F?=
 =?utf-8?B?VlB0N1Y2aTRWWXd4OXAySEt0Tm5xUCtUajFRZzRlNm1FNnR4QW1PeHhYVVJk?=
 =?utf-8?B?VVdxY3JOcVAwdHZ0Uld3WWRpOU02dDdHMTZMcE9YZ1lDREtLSUlqRDBZZTNO?=
 =?utf-8?B?c0YyTHBnN0xYY2pYL2JLb3RTWStUZzg2OElaSi83U3RDVkVaaG9Rd2ZHWnFa?=
 =?utf-8?B?NTBJaFl4UEsxcEpXY1J1QTR0RVFGdkVwNk1rS3ovWnpxcVFOUFJiSG5uM3hn?=
 =?utf-8?B?NU95Q3NsTE1Kc242MnhUTEtFS0gvbkV6WEFqRVZyVjdrNWwzL2Z1dDJUNmpB?=
 =?utf-8?B?dTZJYTV0dGFlRTNCTUNhMU1GV1BTTU5LdzV6Z2lETEtRdVNkSURlalNLbDkw?=
 =?utf-8?B?em5ZSlF3cG9rUDRmQlo2eDdnc280SGkvZXlWS1RtTEMxQ2p3STNidW5qNVJj?=
 =?utf-8?B?NzA5RTdmRzZSVDJkMjQ1NklwMklUc3lsZ2xJZ1VCbkhMUkdLUnZxWGRYUWgv?=
 =?utf-8?B?S0hhR0hDQ0N1WDEzV3phb3dSWVV3V2xVVEdSTEF0cVVFZHkwU2QvR2I4Qi9u?=
 =?utf-8?B?eWd0cDgwbFpnR3V6WVhGcXdrKzR2d0ZyVkFhbkVPbFBYUG5ZOTV1aVFJc2Ns?=
 =?utf-8?B?eXVCKzBvMnBZN01VVEFzbzdxa3FYekZHUk0yMXpSM2JRUWJrRVZId2Rzb3FS?=
 =?utf-8?B?T2UrSUIrbWZMcHJhY241OTZnTEJrNWxaTzNmY3M0K1RwQkFBN1JIYWFYWUVa?=
 =?utf-8?B?WjVRTzd2ZmNhT2w4aURuSit6NWpRZkhTYnhKNndUNE1vbS9JcFdwSlNTVG16?=
 =?utf-8?Q?jaU4Pa70a7L6lLb9MkedwhSzIjBVl/IN?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(82310400026)(35042699022)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2024 15:36:52.8505
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 83fe443a-06ff-4bfe-f0c4-08dc9f63ca92
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A793.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB11037
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Jul 2024 15:36:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63443

T24gNSBKdWwgMjAyNCwgYXQgMTU6NTAsIEtqZWxkIEZsYXJ1cCB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8a2ZhPWRlaWYuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0KPiAN
Cj4gSSBydW4gIFlvY3RvIGJ1aWxkcyBpbiBhIGdpdGxhYiBydW5uZXIsIGJ1dCBpdCBhbHdheXMg
ZG9lcyByZWJ1aWxkcyBvZiBzb21lIHBhY2thZ2VzLiBOb3QgYWxsIHBhY2thZ2VzIGZvcnR1bmF0
ZWx5LCBidXQgaXQgYWx3YXlzIGRvZXMgYSByb290ZnMgYnVpbGQuDQo+IA0KPiBXaGVuIEkgZG8g
YSBmcmVzaCBzdGFydCB3aXRoIGEgZ2l0IGNsb25lIG9mIG15IHlvY3RvIG1hbmlmZXN0LCBhbmQg
YSBiaXRiYWtlIG9uIG15IG93biBQQy4gRXZlcnl0aGluZyBpcyBmZXRjaGVkIGZyb20gbXkgc3N0
YXRlIG1pcnJvci4NCj4gQnkgZnJlc2gsIEkgbWVhbiB0aGF0IG5vIHRtcCBmb2xkZXIgZXhpc3Rz
IGFuZCBoYXMgdG8gYmUgcmVidWlsZC4NCj4gDQo+IFRodXMgSSBoYXZlIHNvbWUgZW52aXJvbm1l
bnQgZGlmZmVyZW5jZSBpbiB0aGUgZ2l0bGFiIHdoaWNoIGNhdXNlcyBZb2N0byB0byBkbyBzb21l
IHJlYnVpbGRzLg0KPiANCj4gICAgIOKAoiBJIHVzZSB0aGUgc2FtZSBkb2NrZXIgY29udGFpbmVy
DQo+ICAgICDigKIgSSB0cmllZCB0byBkbyB0aGUgY2xvbmUgYW5kIGJ1aWxkIG9uIHRoZSBidWls
ZCBzZXJ2ZXIsIGJ1dCBvdXRzaWRlIHRoZSBnaXRsYWItcnVubmVyLiBObyByZWJ1aWxkcy4NCj4g
ICAgIOKAoiBJIG1hcHBlZCBhIGxvY2FsIGRpc2sgaW50byB0aGUgY29udGFpbmVycyAvYnVpbGRz
DQo+ICAgICDigKIgSSByZW1vdmVkIGdpdCBjb21tYW5kcyBmcm9tIHJlY2lwZXMNCj4gRG9lcyBh
bnlvbmUgaGF2ZSBzb21lIHJlY29tbWVuZGF0aW9ucyBmb3IgY29uZmlndXJpbmcgYSBnaXRsYWIg
cnVubmVyIGZvciBZb2N0bz8NCg0KT2J2aW91c2x5IGEgcm9vdGZzIGJ1aWxkIGlzIGV4cGVjdGVk
IGFzIHRoZXkgY2Fu4oCZdCBjb21lIGZyb20gc3N0YXRlLiAgQ2FuIHlvdSByZXBsaWNhdGUgd2l0
aCBlZyBwb2t5IGFuZCBjb3JlLWltYWdlLW1pbmltYWwsIGFuZCBpZiBzbyBjYW4geW91IGxpc3Qg
d2hhdCB0YXNrcyBhcmUgZXhlY3V0ZWQ/ICANCg0KUm9zcw==

