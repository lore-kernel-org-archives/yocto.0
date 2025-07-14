Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B14C83F17
	for <webhook@archiver.kernel.org>; Mon, 14 Jul 2025 16:19:03 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.44])
 by mx.groups.io with SMTP id smtpd.web10.82317.1752509941528372556
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jul 2025 09:19:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=JvD39JxM;
 spf=pass (domain: cherry.de, ip: 52.101.69.44, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MPxoBqbluoH+F0e2kAGjHwbei+V2ySd1G87tVjjIQ1ZD/d5S00st57m7xzPPIlG+3jQ1+PgKs5H8SPSdvj63wTZKxfGBy//zPYCdPAGlpLo/EbZ9B2BZwFBIB9U58sCg/zKdWvg3g8qwOm1Vt1zk6vHFEDHpfW+tUTbbRBlbvHU1xaGmG7p04ij72/BZZetEdQtQPRW5qSoWBW8ryn3nTtdP8E1JaZYC9rucXgmr8VGc2QS5qqX3hSkg3cpVvsIKYMhnT4zyxUAtXSAXNYiURhZLE3TracMxcjbKoubb1OqLJgrzrlhdHylb1u7AddwBTA+AwYbhB5YyQ/4kImgDCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VbK7PbeQQSNkiovEk2H/3p491ma//l1vLdvNDTa2AOs=;
 b=POXzqZx5vbyEtESqb+1OVIBGi7m3xBpcgdqC7gtdJp+Qw5nvy+9FBHnTSxRV6Ex6hLDHBZo6fjLEFL1htjvRo5anXSlFJMU8Oafo6xFfmBpHato8dUspu/jiCPt66AmX5C4HSMq5VN03ZvIDtNcZA3eH+1HuvXMj+CzSv5aY+EB8S+gb2rhmsiTllsTOFGT0jB7lnBWJ8BdvJsoXnJHhCTaIubJCZfotRLKoKdn84pfdycT/FaJ7v5uxY1KQN+Y2c2bwltgrwUkn5mjrSaDVcTi3u1OXgTqa3gdQBC6j1VwFvaZpF+umDAaV52pkF9LJqexfDNjtYXs/VewBZ4noeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VbK7PbeQQSNkiovEk2H/3p491ma//l1vLdvNDTa2AOs=;
 b=JvD39JxMtkOeKe/YNXIgHl4CxCMTbt8S1wSO0cI1v1VAHXC3Jwr/0szsh4Mmv2kWe6ZsQnEDUrOUuqXrulABGXpH8lazXW8xtBq8nQZIjry7H5QyH7OedRSydcv7MsKmM/IYFo8mbuWFvAa4wHCDQNz+eMxdBLmvZlXxm6MYceo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA3PR04MB11201.eurprd04.prod.outlook.com (2603:10a6:102:4b1::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Mon, 14 Jul
 2025 16:18:57 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%4]) with mapi id 15.20.8922.028; Mon, 14 Jul 2025
 16:18:57 +0000
Message-ID: <50cf847f-2e1e-48a5-8d54-421e4a4871ab@cherry.de>
Date: Mon, 14 Jul 2025 18:18:56 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Custom Kernel Recipe Compilation Error.
To: yocto@lists.yoctoproject.org, pkl2000us@gmail.com
References: <CANVomh9M6p+aQS682mfHv-kkF7D-K3ZTUBcXsxBnSv2QgQ8B4g@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CANVomh9M6p+aQS682mfHv-kkF7D-K3ZTUBcXsxBnSv2QgQ8B4g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR06CA0217.eurprd06.prod.outlook.com
 (2603:10a6:802:2c::38) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA3PR04MB11201:EE_
X-MS-Office365-Filtering-Correlation-Id: 56c74569-e71e-4235-4189-08ddc2f2228b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cGJPQlVWMFVlSlNFS1NnTzlKSTdtL3ZzVGMxS2JKZitCRWdkUEtSSjhSNjJG?=
 =?utf-8?B?WG9KYWlucFVNS2VWcjVwbzZxS0lrTGZoL0tGc3RtLzkzTEhPNFBzcSs3OWNq?=
 =?utf-8?B?cmtWOW54SG1DbFI1b2JtRTVTN0FrcDllZHNhRk1xWmlGMHVxdEhZL0ZHVEJC?=
 =?utf-8?B?QjByUG5OOTljQk5RN3YzSnh6ZW13NlFFVnoxY3EwU0E1aG4yVFliZm0wdSt3?=
 =?utf-8?B?K25MOTV6SGsyNzhsWnlBaXE3dWFLdGQ0UzlxeTNOczBGNGF0REFVZFFBWG13?=
 =?utf-8?B?aXE1b3FBNytqSVhGdlZuM2t1MFNkc1d1eGlVa04vcnpJaVJxWWxJakxlNnNq?=
 =?utf-8?B?dVFvaG9uSXNHZ2lvUEV1Ylg5eHpPVHJUUitjYVRvc0pYb0pQS051YkhGRnVZ?=
 =?utf-8?B?Tmg2UXhBdzFSOU1lNHJjbFVmUi9UblM0RUNKbkxWTk5ZYUZ1ZUF4NDRyeWxk?=
 =?utf-8?B?bHkzMlFRY1FNeHAySVZ0a2xDS0VHNC8yQzF0TjBuWmpPamQwUGlYSkNyNjIw?=
 =?utf-8?B?WTNXSjFUV3VsT1NZZDl4eGd6SmJTR1dnNm5hRmI0b0lPd0dSUjNnZWdSWENZ?=
 =?utf-8?B?WTFZb0tDODlVUVhRQzE3c3V2NjZKVkUxODYyTWdJUkFiejBMcUlGcG1TaXYw?=
 =?utf-8?B?bE1BVXdmWE1WY1k4eGdrdTN2eHpsUDFiV2VvdG5ERi9EQXpUdlIzUmIxdm9q?=
 =?utf-8?B?ZTlVeFRZWWcwQnpTR0Z4NklFYzY4TUtiSGt6blZWTTBlczFQNzJUbSs1TStP?=
 =?utf-8?B?L2QxcUQ3cGlRZzNwTzVDK3VSekJYdFpyWGROSUs1Wmo4NitkMUUxc1pTNi80?=
 =?utf-8?B?eUZ6bjIrODY4NEhjZlVpQnEwRGIvb2xlNHRLU2FQY3VhTGtMcThlQVBRcVh2?=
 =?utf-8?B?Y01wR2pOTTJjU2dBcllDMm02a1NjMjcxeVpSd0xkYTdBWmxuenRqUXRiSjZH?=
 =?utf-8?B?RWxNL1A2SUxSTXNaV25GRzRVd2hDblloZGdPbm9CeTgzdzc4cnRWWXduL0RL?=
 =?utf-8?B?WEdQYmJHbnZGTkl1bmk5dUcrcjZFYjNidHNaMytaNU9HT0hud0xmQlF0bEtz?=
 =?utf-8?B?UDFuZjhzRmNkd00zWWRMY1hKM0dUbmZwckJnSkpiNmY3eHNMRzg4OGY1RXlx?=
 =?utf-8?B?VE4xVFZZbEs3YlJkKzRyeEdWRjEvejkzNk9aME5EZEg0ZU1XdFFQd1VETVo1?=
 =?utf-8?B?VCtPSHlUSVczc1JGWHZLMVlZckpycjRnZmplajNRbE5SeTJtOHFxeG5FTFV5?=
 =?utf-8?B?T2J2Tk00YTZqcEFrUXlNQkpQNkMyRVRJYWxuWlNGekpVNk04bVRaVmFuVEdU?=
 =?utf-8?B?OGp3VmRjd0Q0aGlvcnJNeHRxUHBXNkxnRkZzN2V2Vk1BTjhWOWtrZDZ3MDdN?=
 =?utf-8?B?dVJRQXIxVFYweko0NlA4VXVnNHVUbk5qYUFQZWRtaHNrUmdjbjlIOUdHNWxT?=
 =?utf-8?B?MVJRNTZMUXhQNldTSnhkUEJqbmNaZGN3WFR0RnpjVE9sZDFvb1AwMHZZR2kx?=
 =?utf-8?B?UXA5NG9zUTFPRXdWNUxRcXl0OGx4YlJ2VUtWbTluVm8vR0hiTW1hTHNUbTY2?=
 =?utf-8?B?bzcwc0JZRGE2MExSQVNXQy80UnNFODF4eW1qNXNNYkx6dVBUTTgrd3ZPZ0VJ?=
 =?utf-8?B?ejNWdFJvZm5ka2Rpcm81dURCaERCMkJTMlRPUWtlM1JMTjBIb3YvWDA3dmU1?=
 =?utf-8?B?dUptNW9iRXNRQXdUcnNTdVM3VVhMNVVPNmNSZlNsd3JHbkNaSWlQYkNIZWNu?=
 =?utf-8?B?MWVYOGwzQ3k2NDhTaTAxRHIyU2JlWEx0L2kyUWtNaklNSmNzV2tHUURLY0ZF?=
 =?utf-8?Q?+VJtnh9svUiwq/uj8Koazz6PT+Ijo2ndqqTkU=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bzdyUU4rNWE5RTEveGpkWVhsdmdtMXJlakdtaktja3V5bkZzbTNZeFNUL1Ry?=
 =?utf-8?B?MjVLWjNPT2pSbGE4YzlhUTZ4clVhd3ZQeVBiT2RuTjdtQ0JhaHpCdDlvYWpu?=
 =?utf-8?B?QlZGVHIxc3RZUE92UFQxWDVGa0F1L2NhNFZzWUlNT1JsK0NuWkJSUVBGekJ1?=
 =?utf-8?B?aHJsWG93MnNtNnRySGd5M0FmNllaMlp5QU9zUUlVdWVQSDljM29WcXloMm1E?=
 =?utf-8?B?dy9yZlB4c1lsQ05OVE94STdhaDhKRWFhSzVwMk1aNnVwelpGSmpxaDhSOTdh?=
 =?utf-8?B?VHA3RlNNRnN0SDRuUU8vdXJ4dEFkV2JTV0xGU2xyWHNvWGpZRjBVSWx0clZO?=
 =?utf-8?B?MXh3WG1VNGRSMlU2SFB2SDd5MmpLaWpEMnJqeWJaU0JMb1VQWDJqOGxPZ0Ir?=
 =?utf-8?B?ZXd3ZDJ6WDBFVUlqWlUraHJleVVleEJMWUxDdlpwVmNXOE45R0lTQUZqaHFO?=
 =?utf-8?B?YzUwQ29NeDBKejNHUTNDY2x4ck9BdmpCRUE2UDRadmFjejR5ZzRBQU9VNk9M?=
 =?utf-8?B?TzZ2SFNsVjRFYWNYZmxIenRLaUxCOU4wdFNQUzI3UnBxdjR0b1NPTnhiWTZo?=
 =?utf-8?B?dDFCUW5vK3RIY2VIc1ZTZzdzOGM1dFFmSU1FMndTQUNuQzBYakEyNXQrM2JU?=
 =?utf-8?B?SWJPRlFtajArUXlPRWg4SU5FTENjalRCUGI4dGxOTGg3UndJaWEvbldGSVJv?=
 =?utf-8?B?SWdSKzdRQVhFK1hqejltQXl2K2NNRUJwRjM2YmYvWjE4c1ZxSlJtRnM1SlVS?=
 =?utf-8?B?SVB1bG1iamZDUjFkSGxRQk5mdjNWcElKaGxIUVgyaThsRjVkRVdWMVJKK1NR?=
 =?utf-8?B?d1N3cGZnWlJRdSt0NWNOdXl1MW4ySDZzVlBZd0Nxek9mMWVuVVRTc3E5NURo?=
 =?utf-8?B?andiTWdWUEZNTGJ3SWlZTjhlRTdpeCt4VmR4NDZvSG1way83czJPREh2WEUz?=
 =?utf-8?B?S3o3KzNESkFiWThEdnpTNVU1ZnBMNjAwSkJ5RGJ3cWw2Y0R2WlF1bndjd1dN?=
 =?utf-8?B?S0ZINUdQNGJUNUNoUjAxKzVWdEFiRjFEZnQwTzZISkMwYUhnWTFpQzFqRFRt?=
 =?utf-8?B?THVvMWhGdlNDRUVtZ0NUYjRibjdsZDhFVDhNbWZoejBDbXFDUEYzNSt3VFBx?=
 =?utf-8?B?REhrS3ZlbWpTdTNxNUdjcGtTajBRbGhwWmsrai9jMGFBVG5Mdy9UdzRJYTFS?=
 =?utf-8?B?QWlrV3hUYWFJMGVVZVd2NkZsUC9ETGVYQkw5K2w0MnM5aTA0VEdTWEoydDRy?=
 =?utf-8?B?bW5DdDU3bjN2RWRUeXJ2c2o1L0xqb0MxellhYzZ3R1JNRXJicWlsMy9UNDVD?=
 =?utf-8?B?ME1rRnlwby84MjhEWFFmZEtlU0VucG9MOHBlc1dJNWdUT2VhYVRBY3VDcm9h?=
 =?utf-8?B?U0NrQk1OWXpuYk1xeU0zaHRmalZlUkp0eUFNc0ZPN3E2Qi94S01EYVBmYXRk?=
 =?utf-8?B?SE9Db1kyNmU1Kzl1NDRDN0ZGT3pLNHlFc05xNDIvR1YzQ3NMZE5xaHUzdUhN?=
 =?utf-8?B?cDV4c05rUzMzZk1YRENJRWVpZmZpVWZER2d1am44ajdmVzUzVDRtMmxDYlZX?=
 =?utf-8?B?dHMwc3FRUncvdU03THY5d2hmUUFxb0VjSzRMSVZ0MFlrYkVIbkUrd2o4aDFm?=
 =?utf-8?B?T1JXWjF6RGFxN3U5RCtyc0d5WTM4V01wbnVYYU55T1B1V2pTWk9PK25wd0xE?=
 =?utf-8?B?TDNSWmtwRHR5cDRoVjlrQjRUTFVKb1VDZGptY0x2SWhGY2NmQkZxbUx5MjRK?=
 =?utf-8?B?TmZTRjgybm1IQTVPOCtTYXNZUHVTc1FLNE95WjY4N0EvNUJFekV6SFJDS0tk?=
 =?utf-8?B?bUVtV3NaSzFSTjNwVGpNY3ZXZUI4eDBQcEtJYkxrUDZjdFpCUDFhTVNlVUJN?=
 =?utf-8?B?aWVTS3lFdExFa1Q2NHFCZmF0WjJZRlUzRnFIeXBQY3JGaWFMdDU1MkQwQUp4?=
 =?utf-8?B?T3Z2Q0MrNjVjdUxPZzkvNjhNUUQ4ZGswUEVjYWFOVnVBRC9FR1pBNHJvaWVn?=
 =?utf-8?B?b2hWUzk5Q05TTkxJQkJSV1p2MDI3Q0tUL3p6NVlsclRiZDJkcHg2cVJ4VFFD?=
 =?utf-8?B?N3pOTm9IaTRBcWJJbHFuditXR2JISFZ1UDZJYlV3cU1JNmlnY0t5QVpkdjkr?=
 =?utf-8?B?MzR0KzdFY2hNREtjWTc0YkhrbjgzRjNBVEkzd2NPU0k3NGxOUnBpK3IvVjU5?=
 =?utf-8?B?bHc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 56c74569-e71e-4235-4189-08ddc2f2228b
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2025 16:18:57.5206
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GKBP5sLt/rH0ZwzlVzRm/DYYGiaax1Y9T03KD15bcBWff/xjSfeO5e2B9gshf7/P9gym2WTGm/PYq9V9May2Zqx2K03nc2pgzAl3HQdCGNc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA3PR04MB11201
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Jul 2025 16:19:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65653

Hi Cerezo,

On 7/7/25 10:10 PM, C Larbi via lists.yoctoproject.org wrote:
> [You don't often get email from pkl2000us=gmail.com@lists.yoctoproject.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> 
> Hello all
> I am a newbie to the yocto project and on a journey to understand the basics.
> 
> My reference hardware for my learning journey is the Orange pi 3b (RK3566 soc)
> 

Just for your information:

Orange Pi 3B seems to be supported in upstream Linux and upstream U-Boot.

RK3566 SoC is supported in meta-rockchip (the community one).

So maybe you could simply include meta-rockchip 
(https://git.yoctoproject.org/meta-rockchip) layer and base your machine 
configuration file on including rk3566.inc from it. See 
https://git.yoctoproject.org/meta-rockchip/tree/conf/machine/include/soquartz.inc 
for an RK3566 machine (or 
https://git.yoctoproject.org/meta-rockchip/tree/conf/machine/include/radxa-zero-3.inc).

Then you should hopefully be able to use linux-yocto by adding your 
machine to COMPATIBLE_MACHINE in a linux-yocto_%.bbappend, c.f. 
https://git.yoctoproject.org/meta-rockchip/tree/recipes-kernel/linux/linux-yocto_%25.bbappend

and you would be running mainline U-Boot and Linux on your Orange Pi 3B 
instead of the vendor fork.

Note that not necessarily all features have made it to upstream Linux 
(e.g. the camera stack still isn't supported, not all VPUs, etc...) so 
you may not necessarily want to switch now if you depend on those features.

I'm pretty sure Trevor (the meta-rockchip maintainer) would be happy 
merging support for Orange Pi 3B with upstream Linux and U-Boot if you 
were to send a patch for this :)

In any case, have fun with Yocto :)!

Cheers,
Quentin

