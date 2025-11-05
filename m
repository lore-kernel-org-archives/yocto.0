Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D93A5CCFA0D
	for <webhook@archiver.kernel.org>; Wed,  5 Nov 2025 17:26:27 +0000 (UTC)
Received: from AM0PR02CU008.outbound.protection.outlook.com (AM0PR02CU008.outbound.protection.outlook.com [52.101.72.20])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15276.1762363584546360987
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Nov 2025 09:26:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=RNFg9d5t;
 spf=pass (domain: cherry.de, ip: 52.101.72.20, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UuPel8gF6wqMZK9BZufUZ+egQom3+sS6kd8ThrdI7X/ICQZGRk+6l+ovEZC3vvFnk/ckuxHlIf1IOF+SX1DRvjq0z4L9Fg6G8M3ZH1KiQQGcQGPfZ8a0i/ajeXfXug9nwJouHxe4RS60ZqNzp7FZCsJ2irBJAjXcI5kQK5bbWigc3J+OauWxbRjLs42EEEFIYeO90dP//OrVT/Ne/TMOgC4UUN8skQmvi6QG8/JjbBPRvD9uGYQYcCpfLvAepiZ+QosRTGrxfV/griLFGk8CkwfLX5SkBy1WAEof0qaIl+7gg0pLQ1JjKaIQBxxCZJDqalvgjrnXxYCY283c+155bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dl6I4NCc6cnJo/C06LsfLmBoDKvSLM+hh+09k9XW2lc=;
 b=wswC7jQrF1paq7yU4QwSBcR8ncH9i8uJWIcf6Kgn1NlEZT6fl3L/0zTJJ72RAZ4o4JpmfHVJVJad8LByInBhEtzYFnoXMgyEFvUyhYK1yn2DiD3eP4PGl+mjAUFzjdNzxsuwRCJfgQy4fvvzI3xvTsFDVAuvYvjcuCdcY9WTK3ziKJz97O2JYbq1jIN3q7iopoIGEIMb9q3jIyNJKnBj29GK31/FvdK+Q2DCfMeAtRYFKoryFIEdkSUHB9jpNbIlAz86Lc4MbYwZFLCALkibEt/TCxjEhXu0Rp1DDSqX0Z/p1rIJSRW8A5ahAn0s7+fLxJNXcjGQR/8Z5RP34MivBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dl6I4NCc6cnJo/C06LsfLmBoDKvSLM+hh+09k9XW2lc=;
 b=RNFg9d5trC0S7PYAVx+gCY9KRVT+xsfqMhQJwYALKRv5NX1j3Zd9XOJ9iARSf109SnuaXPOnGtNlfIfk2nqh2jwykXWR38xf+ktTbs5b0wIRqGtG9+5X99GeNSp47ku6C8iHfcW+x79L8zQuZfIOaaUl3lDCfpFvxq9EKL5DFqo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA4PR04MB7919.eurprd04.prod.outlook.com (2603:10a6:102:c1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.8; Wed, 5 Nov
 2025 17:26:20 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%6]) with mapi id 15.20.9275.013; Wed, 5 Nov 2025
 17:26:20 +0000
Message-ID: <c8ce6056-ccc0-476b-91dd-aa6376090a9d@cherry.de>
Date: Wed, 5 Nov 2025 18:26:19 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] looking for YP-supported Rockchip RK3588-based eval board
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
References: <187526B1C3586D81.304257@lists.yoctoproject.org>
 <cab1dde8-edd4-3026-8367-39ae27c6c9db@crashcourse.ca>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <cab1dde8-edd4-3026-8367-39ae27c6c9db@crashcourse.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: FR5P281CA0003.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f2::14) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA4PR04MB7919:EE_
X-MS-Office365-Filtering-Correlation-Id: 0021267f-ff2a-497d-5129-08de1c906f85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TVBDM2NIM1BaTlRRSmRMYnJqSVU1UDI2Sm5nMEUzbjBid1hKSkhFazllM0F1?=
 =?utf-8?B?bEtFQno3WUdLLzduTzd0ZDJKeHpNYmJxZlZoT3NBbjBYYmoyQ3NOdU4zUFJM?=
 =?utf-8?B?VnNlTFNUV2tieXYzbGRKSlZsZTNZcDhzTjV0b29aOWxPL01QdUp2OFUvamt4?=
 =?utf-8?B?RlpYWmIrRTJmamRtWHoxQVhpblFyVkM4Tkttak4wK2FWcjhGNkI3TDRJYmtj?=
 =?utf-8?B?TG1HeHByT1FodGtBSjFwZTd6UWR5bU1PcElIWURTaHBwemJENVU0ZnN3K05t?=
 =?utf-8?B?ekFzY1FLdXUrUXNCZGhaWGR2a04ySFo0ZDVlai9QbktIbUxTTmlPTVpRSjBF?=
 =?utf-8?B?Um1xWG93Z1hYeHNPbFpudlN3NlF4OFduMFRJY3RUMy9JMFU4d3Y1NWZCV05X?=
 =?utf-8?B?K1l6WENQcnNBYmQ2QUpsV3ZSak16Zit0T3ZVTWwzaFNCU1J3K0NnL0xNeG84?=
 =?utf-8?B?T3U2UGJZczNGNERYMnk0ZThHbVl0TG5qSkIrV3l0S2piTkJrUDQ3WDJhdU4y?=
 =?utf-8?B?RW5ZVWEwVjJvQTNSR282RUZjMFpQMHlXdGUxbE1ONFNWOG9IQUt2d1lReDBq?=
 =?utf-8?B?QmhINUlTdlY0a2dPdEhMeGpZWUxwY2xxVTZsZ3N3a2YzTWFsVjRZendsdTFT?=
 =?utf-8?B?TG42elJnQThPUWJZZ2gxRVJIOXZ5dnZWZ2FaUzRvRXFmRFgwVjQ2Qnl0UVNh?=
 =?utf-8?B?OFZPSE5DNTAzRUxHcUVOeHRNRzJxVFZVaExJQWRjelU4U1VaSW5GOFU4ZXVw?=
 =?utf-8?B?Y3dQSnBEdTN2NGlwNTRwWGduTjdLenBDNFZSb28xbkFubkVCczhRTDBrWFEz?=
 =?utf-8?B?WVpnL3ZicjAvVlUvZ2REUWp6MnZpU1d6dG45MFM0Z3llQTRmWHE1K3ZUVU14?=
 =?utf-8?B?MVdnS2JlTmRRdTVBYnFxRGhUSDdkekRjVFdzcHpkWGhmWEZjTzlZT0xTUXhz?=
 =?utf-8?B?dU1icnVvSStGa015VVRqL1ZGSWt5UzViNXk1LzAvOEpHU0hMaU5VRWlTL1pZ?=
 =?utf-8?B?ZlpDbjU1L2gwYnJqZHpRV3BvZ1laTkRlbGVJdkUrL1BHbVR6OU5qVmkvbDNT?=
 =?utf-8?B?Y0xlcTZKdkVpZXl2RE1uNzgwN085MnBCenNHZzh3YU9rNmVDRzFUQUpMUG12?=
 =?utf-8?B?cnJBV3RqM2Q1b2Q5SFJGQ1l0WWRwT1JCMlJzMnJKWGpYNDB3SGJXcCtWMW9M?=
 =?utf-8?B?VFMxeTNlZHpidENYWjRxU0VSOUpDSm05VHdZQnphVlMyL3lMSk40TDNpNWdo?=
 =?utf-8?B?K0JQemRPVzlWdTB6aTRqVmVGZGt1ZVdvbFdqTzdEaUZ4MkRGWE5yeWxwZDNr?=
 =?utf-8?B?dEZJeE9NMm8rSm5qQ3NFOEZWMXhLL01qKzJycWVmMFAyc2lzL2U5S2J2WDQ2?=
 =?utf-8?B?amtBRy95ckt2QUttS3BYc1ArZHJzYkNmVkt4eTl3czlPZ3kwZ1pjSldxT0l5?=
 =?utf-8?B?emE4K3laVUR1SUNZUU1Cay9xNkM2eTNUMm50bTFKRVltVmRWVzViVDFyQzl4?=
 =?utf-8?B?V3lEZmwxVTZudU1idnpOdklBdWltMDVQR1cyd0pKcVNzdTN2Z3dBWVdFV3pV?=
 =?utf-8?B?cW44eEZ0OTFSRjlVeVA2dHNXYloxUjloVFV5S2pRUEJ1c1RPcVgzdTRKSWNa?=
 =?utf-8?B?dU1BWGN6YkRPQVZSL1E0S0piZ09mUEcwVndLWlk4VVZLVjc4cmdUUTA4YVd6?=
 =?utf-8?B?aGJ6Q05kRFlKQWwyd01HQ3J6UjhIZkgvczBBam8xTjhRWUF3V2haSGw2Wk05?=
 =?utf-8?B?UFBLc2lXR2ZFVTl1dTZqUWFXMmhTdTduc3VxMkRGUmV6MEpDQlBnRU0wTlcr?=
 =?utf-8?B?SFIraHJkUjcrYUcrclNMT3ZDTVN1OUMvazNRZjR3THNLWFVvRXhsd0xraGpz?=
 =?utf-8?B?U3lBUzljZ3luSmpCTlprVGJJS3VGSUFzRU5rZGZPb1E3TVE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WkZtUEdZcC9ySHA1bW5yVzRSelhSRnVNVGRBejFURkg3TXpCMUNiWWxCeksz?=
 =?utf-8?B?UWVRWDlVOWNxWnVaRnd3cHhxQVd6NzExUnIxWWF5MWJTU01mWWM5SHlJeWJr?=
 =?utf-8?B?M1ZUc0ZzQmkwZERFT0dtU0Y3cjFka2xlTkpPMXd0NDY0M0hkdGJLejhCQ2V5?=
 =?utf-8?B?YldlWEo1aWJRSW9LWDBuSk83MmR1Tm9wbVNJRlQxaEZRNC9nbFZEQVlTbzVs?=
 =?utf-8?B?UGtZYzhPdm81aENWeGlkL0txQU1oQzdPQUlBWFJJTmVWcndyOVQ0S2xWcXU1?=
 =?utf-8?B?Ty9Penl5SUJQWWh0cnh0cG4rdEVwaldKamNnL01pTUNadTdWMkN6eVZ4Zm9r?=
 =?utf-8?B?b1lBaGFSa2Z5bmdlczNiTjhWOStiUXgzcHk1NXE1Nm5PQnA4UGdsdFJJLzJB?=
 =?utf-8?B?ek5LTk5jVzZ2Mmw2M2d2TWkxZUJpYnFVSjMwRHFUeTlMem1zMmFwTjZnbEFP?=
 =?utf-8?B?SGR5elg3SmUrYlJhOWwwKzRYbGJpQ1lGSlN6SnluZWlOa1hjS2NQRkY2ckhy?=
 =?utf-8?B?OFFnNTBHazZlR01TaC9GNk45OEtQWkpzS1FpTStpY3lnNXFENm5DQy8wcUk4?=
 =?utf-8?B?eStjc2JmcHNmbmc3SWdSNllYdzhrOU5GQkZrc0R1OFEvclc3alpHaUs2ZEJP?=
 =?utf-8?B?S25naWgvRW1EWU53YlhTWnVsVi9aT3BRMXFhLzJrYkdoa011MWpGcTR6RU5B?=
 =?utf-8?B?M2U2OERpb1lVOXNEQUduZ1Y2S09JZE9pcUJ2UnpOQyt3T0tYb2Z4d3ZLVEtW?=
 =?utf-8?B?bjlHRW9lWDdZcG1YR0oydGtMaysxRUxrczJkRzlsQ2pIbnRxYkVTRFlUd2RW?=
 =?utf-8?B?VlJ3KytlWUlDTTltZVFuNFpYVkVBV01QL0xtc1lsZlVWTVU4Z2tBTGpxRlEz?=
 =?utf-8?B?Y3lYWjJqQ2wxYzBiSDB0VzFMS0UrcGN5ZDM3T0prelRTamtuY3JnbGtqL0dv?=
 =?utf-8?B?QlZiY1F3U2tTd2RVSjlzcms2N0VFYXRTNFpsQ1B2UnQrL0h5dkxjUFNmcGtW?=
 =?utf-8?B?Nm9tbnF4dTJ4TnFpM2prWWdkMVJYOER5SUxxd1BSTFRDcEI4N2tweWljd21h?=
 =?utf-8?B?eUcwWnY3Q2NDR00yKzY1Z2VhR3BDTHNEaDZFTEh3VE5COXM5V1REeTdYN3dJ?=
 =?utf-8?B?N2pyRUV1cFFsUDlUSWFQc3hFRHd3eEpLaTZFdHlnMFBGYWlScWlza1ZOY0ZR?=
 =?utf-8?B?eDJOOVVsd3pSTzcwQVA0OEkycngySE5aQldzYlo2OUE3N3RiNWFNNklacm8v?=
 =?utf-8?B?bnZmNFhxdHVTMmdBKzREcVNSRUEyZ1ppc2RydTZBb003ZGE2Ykd6aDRFdlUv?=
 =?utf-8?B?SzRYU3NweUE3aVdyUFI1aXcxU25YRVNUSDdhbzAwVENuUnFxS2VZZjJHQzhr?=
 =?utf-8?B?YkNuNUV5K3M5a0p3RFdOWU1panU0UG1uR0g5R2hUcC84clpYS2thekV1QkRH?=
 =?utf-8?B?aGU1ZjF0cFJxeklWTUxBUXU0MlRGNjBPUzNsN3hrUEZmbXpOcXZPTndWSGtF?=
 =?utf-8?B?bEJteHlWWTI3UkhSK2tvNTZFSDFHVk1hUWFBT2xXa3g3K3lmVGJLYlo2Rndl?=
 =?utf-8?B?ZS9YYTJsTVNkK1lVamxQTk5sMzFEV0dYSnU1cDlPSTlLUHBKY0dxSzcrM3pH?=
 =?utf-8?B?Mzk2YngxYkdGVlR2RjA1NnlTTTRhL0hlZmpBYTJybjZCdTlGd1dxQ2gyU25w?=
 =?utf-8?B?ai9IdlBqbGdYcmt2dnJybkZ3T2wyZ2NRdlA1WFJha3MzaFlmb1VxVUNKY2J1?=
 =?utf-8?B?ZnIwbkYvcE5uNmFuRVI3aXFMTXk1aEQ0YnNlUzNhSjMwRVVFYlU5aVJyUnhB?=
 =?utf-8?B?UkhFMTRmb2dZSkZQdnErbXVacmpQRjV0R1FLTXVvcDVaZnZ0WWxNcWFnR2Vh?=
 =?utf-8?B?UGhhaTgvVFVXMWEzaXY5Nk11ZHRkYlBVV3hnYnQxS21uSURuMGxjSjlUNWQr?=
 =?utf-8?B?akplb3RTVkxLVk5ZWHJvbCtiS0JWQ1BUbjMvcWdaS3AzL0QzMWJqL00rcXNt?=
 =?utf-8?B?TkRQVDB2WmoxZXpTTXp6T08zWEJTendlRzVWa1RlTVVSNXlOZmwwdEZXM3Av?=
 =?utf-8?B?V2ZXc2J1RGF2M0p0YzRZZWQ4d0dSOTdtWEdldXdxRGlpY1Q0c3VHSmdWTmdn?=
 =?utf-8?B?Mkdwb2lsa2MyNzJmL0V4VHdHS3drV1hNSkNUTnM5S2tXSUZhNGNlVFIrNlM0?=
 =?utf-8?B?b1E9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0021267f-ff2a-497d-5129-08de1c906f85
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 17:26:20.6340
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CN78eK1DdsW3wECIMi3tR2ggHajc2+MOo11h8DjKNpJyUnHKm3L/NExiaVPZHJ0yHXd3UU02vG0TOHv2EEHBJMdUVgSKZ4R/cvFD1rxgBp8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7919
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Nov 2025 17:26:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66011



On 11/5/25 6:04 PM, Robert P. J. Day via lists.yoctoproject.org wrote:
> On Wed, 5 Nov 2025, Robert P. J. Day wrote:
> 
>>
>>    (caveat: i have *no* experience with rockchip processors so i am
>> entirely at the mercy of people who want to make recommendations.)
>>
>>    a friend wants me to advise on a good choice for a RK3588-based
>> evaluation board, and has already purchased a banana pi bpi-w3:
>>
>>    https://www.aliexpress.com/item/1005009156110477.html
>>
>>    that looks like a decent and fairly powerful baord, but i notice
>> that the banana pi is not a supported MACHINE in meta-rockchip:
>>
>>    https://git.yoctoproject.org/meta-rockchip/tree/conf/machine
>>
>> so can anyone suggest something equivalent in terms of pure horsepower
>> that would be equivalent and has solid YP support? i am totally open
>> to good advice.
> 
>    i will also point out that i see some mention that the RK3588 is not
> fully open source, while the earlier RK3399 is:
> 
> https://news.ycombinator.com/item?id=40497232
> 

Outdated info, only the first stage bootloader (TPL also called DDR bin 
by Rockchip; it runs in EL3, who knows what it does) is closed-source 
still. BL31 (TF-A) can be replaced by upstream TF-A.

The first stage is being reverse-engineered right now by some people 
from oreboot I believe. If and how this will come out is a different topic.

Note that the ARM Mali GPU also requires a blob (from linux-firmware), 
so do all Mali GPUs based on the CSF "architecture" (which is probably 
every recent version and upcoming). Open-source drivers 
(panthor/panfrost in Linux kernel and mesa) though.

Cheers,
Quentin

