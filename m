Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616E3D7878F
	for <webhook@archiver.kernel.org>; Thu, 21 Nov 2024 16:32:09 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.48])
 by mx.groups.io with SMTP id smtpd.web10.2727.1732206724929906742
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Nov 2024 08:32:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=mPmGXeks;
 spf=pass (domain: cherry.de, ip: 40.107.20.48, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B5jT0fqcx/Q9YDh7OC3+cwvI1xUz/R6/DKbEGgOKm6R8eAuJWfnJ8KDf9IbJb90iqf1KL9YfXalx6Hro/OsQWtIa6KVzHAhG8x53uZp/yQW/gaN3ScEq3JlmMUno0kdRAbrxN4i7WM5JEru6ooncAN3F2llGLRV768OOU/UAwgyLCaqju2S0o8ohQjWczUdyXdX1MyvUVT3c+NIGM8wW11XD+Eg82AD/0kBhRckB3Tdn8qHjFX/Z0JH8OV00BPjWEq5vihYKEh0q2NyvTEmv5OJczUSLAEvzWbwOBTRdPszlfP/XxK6LGbyG8MPkPa7QBoOJCZhiQWWpNdmtuX5M+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+FMuNt6CU3ReLVxZ1V89pJ8p/NNBx8CeWsgKDqt2Aqc=;
 b=aKC/8ZFt1OHGLW89oG0tPa9iGJPRIp1K/45u/DL62sMERallhEQV8Ixa90uIz5J+CCXaoknsw6O5jSwOJSmQNsKMcB6f1APZEbhwFpjkh2zAyaPjqn7xz/RErXpFu59UpzVY2zf+hVTb2U9hHC0OKsu6ALwf3vcr1LuHuLlLOpb/4n0Z4Ex7OUkdFa2ljgDDVIpfyR6RQnmrLY0DeuS7UswGEgkEW+hcV6y2gxcnC5Zbd4CoNWE3UhZ85M5iizYK4cHGcjBr+I/673d4CLt1LmqPJr1MXFC+9/0iu0zvcshV3OlA8UaNsteM1cPG1jWVpFBLFGvKKMCRoyvYvaDa0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+FMuNt6CU3ReLVxZ1V89pJ8p/NNBx8CeWsgKDqt2Aqc=;
 b=mPmGXeksGn7tE3hR67JRnTaSVtNzxKHbIJT0KOTQZy5L69c7Hr623eBinBNlQZwlDh0dXKSS4hd16SGkMMMZwLfU9YMlPpBNq8zGeZjIRFaUpwjnu8wb4iAth0bFNz2Hn4cnBLTuLl2De5Xs6uVur0eGP44Q1icnzeOXYsPQC/I=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DBBPR04MB7706.eurprd04.prod.outlook.com (2603:10a6:10:208::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Thu, 21 Nov
 2024 16:32:01 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8158.023; Thu, 21 Nov 2024
 16:32:01 +0000
Message-ID: <788e86af-e239-4d6d-b61b-5ca843d2e603@cherry.de>
Date: Thu, 21 Nov 2024 17:32:00 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Append to do_install is not getting called by bitbake
To: emailaddress.ashish@gmail.com, yocto@lists.yoctoproject.org
References: <bf7b385f-8f08-4c6a-9cce-92a962cf38e0@cherry.de>
 <5971.1732206534471774908@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <5971.1732206534471774908@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0444.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c6::6) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DBBPR04MB7706:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f5fc494-c79b-40ee-534d-08dd0a4a066e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?c09maUZlVHRFdFcrWnNyaFNuL0xGbm45OXlCdTVDOUppQWcyUVlTRmxLNEo2?=
 =?utf-8?B?ZFExTG8xWjR2NGRTOGc2L2s5OUx6ZHp5amJGYURsRFdUbGJuZUJ1NzRZNTgr?=
 =?utf-8?B?TlFYdHJIbEFHNEJvUWZWbXY2UzBQKzd6a0szVkZHeXkzV0NQd3IvckJsdnVV?=
 =?utf-8?B?YUhGdU9TWDkrelNIODlmblA5TkJ4cG05b3M0eHFXcWdBMlB6dEt2QUtYWFo1?=
 =?utf-8?B?djM5VzEzSkpsdisrbVBNL28rVE12bjl5dmdncHkwb1Y0K0VOb0tkQUpHU29i?=
 =?utf-8?B?ZXFBOGlyc3dUV0JVN2N4OEJDRW5GalZPaGVuQnVFVHR4cjAxYXp5cFpkaCt6?=
 =?utf-8?B?NXl4Y1AxMndYUk5sQS9WckNKcGtGVFhza3hadVNwd3JKVElqNHJ3VVROVWNi?=
 =?utf-8?B?M3VuSnp2U3k5VFhGMzNyZTQwS1hTczRPUi9qakJIL3hOY2tFbTZTUHkxUEVk?=
 =?utf-8?B?aUxJbitTUzUvWXIwV0duVFFicEQ2OTFxZm5vM0lzaG84WjlXMkxKNHc0d214?=
 =?utf-8?B?WW9SSm9hMHlFZ2J0OXFGbkt6VmJDNDdLcXJvVXNNdXFTclJOdUxPTkRsRDBt?=
 =?utf-8?B?bW9HU2tQdEQydmlaeDJwckU2OExIczJPRHhPaDZNU1d1YVV2aWVyOHZKVGgx?=
 =?utf-8?B?RlBzQjRGYVQrNEFWejEwYTZ5U2x4V1E0OHhEbXFvRk1YWFNQL2FKdGFBTDRE?=
 =?utf-8?B?RFhybzdlVHNwS1p0aU5UMEN4TEdTUnk4c1o1WGc2OW1wTTZyRWgzSzdBUWsr?=
 =?utf-8?B?OHpKbXM2di93QW1jUjY5NjZDNDZhdldjUFdYR2dQVFNDVnhqejFzR3FCUksr?=
 =?utf-8?B?UzFIMGdWdmY3NGE5dmltWVhtWGJHbkhRdUV1L0VnTDdDQ0kwdGI4STBzOWNi?=
 =?utf-8?B?ZE9sRXpETmJ2UDRSOFVkSDNCRnR6VUt1UUtpRzlHbXRFNmpmT0tIRC9KRlZm?=
 =?utf-8?B?Z2FpM2pCTXhpNVdSUVE2ZU9XUUw4azl2UzdvbkYwQTkwMkx0UEVwVWpGY084?=
 =?utf-8?B?a2htQ0x4anpucWI1UDBwZitBRXdTN1VwVm0xb09tU1JiR3R0Z0YxYm9Dc0JF?=
 =?utf-8?B?cmV5Wm9PbTQyOFZoSmdPRnFwY09KNHR1VWV4SEJKVjRsT0NlZUlBeTBCdzFV?=
 =?utf-8?B?eXk5dE00Y2RqZ0NkZEFoWGZDUmtCQ1NFakN2ekhnUHI5UkN3d0x5TmZJYmxX?=
 =?utf-8?B?dWkvTHYybmxYL01uOVI1ZWNCZGliMEZ3a0RoKy93NkhqM3lqT21wY2FyR3di?=
 =?utf-8?B?U3ltVXc3VWJwb0RkZnhUajgxSUliZExYTHk4N1B4eXJxV1hMNUhQeXA1TUp1?=
 =?utf-8?B?emxDajBpUDhqSWJhU0pPcmpVVkVQcXdVZzJFYzNnTXZ6amJ2WGN5Y1d5aXJq?=
 =?utf-8?B?Tkx6QWptM3ZPZ2VXZGxLNHhqN2FUdVk3RWdBdDlEYXVvR21XMUhtMXNqRzNK?=
 =?utf-8?B?S2ZaekNNNVNjQUEvdDloN0p1STdQaFB2VmQwNzZCQ0RLb29tV0V3TS9jblZl?=
 =?utf-8?B?UGVhcmE2Z1hBYm1zM0VaSFlCekE4USszaHFSNEo5QmhpdmkyRVJHOGhkVkl2?=
 =?utf-8?B?VEFJUzZEUGV1VmxrY2todk1HMi83VjUwZjByaEtONEdGS01xU1NYdFJBVi85?=
 =?utf-8?B?QUsxaE1MTU9DaG5DMWJkem9aWVExK3pzWGxmcm9BdzRtbUxNZU12T283QjNF?=
 =?utf-8?Q?Dhngt9iXydUZhbJwPhJg?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c28xM3g3ZVFoRm9NWko2ZE8zaFVUeVNwb0VIcHBwR3VMUGtBdS9teXN4MGUw?=
 =?utf-8?B?WU5QRFNmektmRmZwSFdJd1V1QWxmM29RekNkKzM0S1BqVVE4QUczVEVWQjhU?=
 =?utf-8?B?VTYxLyticEJiUkE2cTI0bW1lSHhrVUxlKzg3VC9LOFBYQVIybGZYOStEVXF4?=
 =?utf-8?B?NUx2L0tRbXNXMm5CK2ExelNNZXJIUWx4aWpmOGtlaFV1SnBJSTRuQVhsUEFQ?=
 =?utf-8?B?VStoVDJSRmFjc3l3Q1F4M01SbGdOSVd1Ylo2LzRYeE50Nkp4SnYzaFJFbElm?=
 =?utf-8?B?OTkyTm1tbnd6djErM1dzNnRtK2xBOUsvR3lFZU1laEYza29EUWRMREllODlU?=
 =?utf-8?B?SVVyQ3czVUY1TGV0RE1IbForeUFYb3FIdTVIZmRiWURKYS9YMmZJYmoyL2h4?=
 =?utf-8?B?a0I3QVBSWWltTE1HQnVVNmVYa2FHd0tHeDdHRE5mTHV3UTRsNk80SUQzeHdT?=
 =?utf-8?B?UDVSNnJ6NDhzUFRVbVhtbExYUjdsd3JYa0xseTFBc2k5RnQ1K1Bia3pkWjdm?=
 =?utf-8?B?dDdYcTBLdHovM1R4TFFnajNndTk0YzBXRXVSeUpaVWs1Zml5di9TT3FwV0pa?=
 =?utf-8?B?TmZ2Y2EyeEQvV2xLRDZlVUVrY2lzakY0K2JnZUdwSUtuUlVFQk1nME9LVE54?=
 =?utf-8?B?S0FjZHJTRzVvNWFIT0VBSHdlZzdrakZQaUNIcVRjZmpnVFJRMGJDN3NPYVg4?=
 =?utf-8?B?a1NlcklON0I1Yk1HcXVQYU9tREVsSFFOOGhSMXNxeVdBcG8yaHdESEZtNnla?=
 =?utf-8?B?UGNuay9wWjJIWSt0ODNRS2NNM2dadE84ZmVYR2lvd3ZNbUJyMTcySXU5MnU1?=
 =?utf-8?B?WnRWaW40Mmc4VXY2UVZ3cTFaRkYrQUhsZllGMVRoaXVJRmw3SVNTM09RdkNr?=
 =?utf-8?B?WXhCTXdKc2dlR3pxRS91R01HRDFZMVFKME1ZRnRBd2hENUgxRERYM3grOVJo?=
 =?utf-8?B?OU5qeFBKR1hIMFlNS2NKbzdxdmxHMlJoTkVFTlVRNnppWjhFV29uL2Z4MEt3?=
 =?utf-8?B?Q0R3NWRwRWpycVJQNTdrRkNydU8xUXpRZ2RJMHNiTkVuL1pPaGtnSjZ5TlVE?=
 =?utf-8?B?VzJzUVBIY0prb00vcXJSa3RHL1Z3YzNIQitlbG84WGo0TzVML08wcmZsQ3c2?=
 =?utf-8?B?QWluZWZycnJFbEFuUndKOHptcUVSbUUxMTBqc2FGeVJ3QnUxRnI1eTlheTM0?=
 =?utf-8?B?OUdvRVdwUjVVcWk2U1ZRTmlGMTErTGZYamxmc05WQUU2RGhBVUF2TWFiK1ZW?=
 =?utf-8?B?d2xLb09lNm8vMjJ5dTZxK2NES1E3b2xpbElXQmExOG1uNi9qTklRYzZ6TXZr?=
 =?utf-8?B?TW9pUnlucCtiMXJtU2F4Rml5WW01R2xjS2ZucEgwdnpzQVZQdENpZUpLWEM1?=
 =?utf-8?B?NVBlaXorYnpaRVV6RjFxNUlqTU5raGcvWjVyRGluNUt1ZkdjY3N0SitZUjF5?=
 =?utf-8?B?Y3dpbzJrZ3llcXU4aE8rSTVoMi8xWjMzS0dtUVVKdGRYbERwbG9ZN2JKa2pz?=
 =?utf-8?B?SFpjcUJhOHBHRjNEc1FCSy9MaUxyUFRwV2UzTlBWWUw4c0RFQ3BhT0xsdmVs?=
 =?utf-8?B?NjdPUFJ4RkNNVTZyaElOVGtzWnNzS2MzN1k0elo0Ky8vVnExM1R2eW55ZGFX?=
 =?utf-8?B?R0F4K1dDcUt1azV1U0tSQnNvbTJkZnhZNlNFMWdvUUl2WnU1QWNLb3JSQUZR?=
 =?utf-8?B?RFBiS3ZhVTZJWUhXdFVZdm1yVk9ITEtjUWE3QS9yZi9oOStvUU1wNFpxLzdW?=
 =?utf-8?B?UEQxWjkzNWEwNnFvMmpOcE1rWXNLRmdFWURKL01MYUtITnA1OUNtcVlkcndk?=
 =?utf-8?B?NHdTckRjUVEvS0JBWDk0MFo2dTRxTGo1MkhrcWZPeTBVRGE5bTlRNjJmeXFj?=
 =?utf-8?B?Tm1McGtMOTVzeGx1VjdpYzU2dW5MYmhiYldxdnFuejFsY1BPTmZJTnNwSlhY?=
 =?utf-8?B?RitCcCs4dmI2K2YxUTdqNms0b1FMblhIR092cXNEQ1EwMEt5RkJkRUk5M0dy?=
 =?utf-8?B?WUZmWkdwOE42Z2FHVFdXYlVlUC94Zy9HUk1WM0RhTm9VMDIxcGtjNHJzT3lC?=
 =?utf-8?B?NnRZUGMrcTZCaU94ZWRxcFRFQ0FEODIxMUtwMFEySzVtZEFIcVhOOFNxd3B1?=
 =?utf-8?B?M1E3WG96SHExTGxpYUs4QmxWLzg2aXNibDZoQ2xGMitOWWZHcTFhdG81MnZO?=
 =?utf-8?B?ZFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f5fc494-c79b-40ee-534d-08dd0a4a066e
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2024 16:32:01.0088
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I7FJYgF2aujPUzqKGamIK2uJhPWBK1KoiR8X/h4XvfhFtF6hfAd9eSvvP0H9Inagl9DJHsKXeUoPLQ84ar0geBtGSllA/tV4vyslC2Ebaa4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7706
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Nov 2024 16:32:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64330

Hi Ashish,

On 11/21/24 5:28 PM, emailaddress.ashish via Lists.Yoctoproject.Org wrote:
> Hi Quentin ,
> 
> The problem i faced with this approach is the do_install:append()
> is called for "openssl-native" and "openssl"
> Attached is the log for the same .
> 
> Is there any we can make this append to be called only for "openssl" and not "openssl-native"
> 

Yes, with

do_install:append:class-native() for openssl-native
or
do_install:append:class-target() for openssl

the former being present in openssl recipe in openembedded-core already 
:) 
https://git.openembedded.org/openembedded-core/tree/meta/recipes-connectivity/openssl/openssl_3.3.1.bb?h=master 
so that was a good hint there.

Cheers,
Quentin

