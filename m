Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13EB5C83F26
	for <webhook@archiver.kernel.org>; Tue, 29 Jul 2025 10:28:21 +0000 (UTC)
Received: from GVXPR05CU001.outbound.protection.outlook.com (GVXPR05CU001.outbound.protection.outlook.com [52.101.83.71])
 by mx.groups.io with SMTP id smtpd.web11.3959.1753784895124915208
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jul 2025 03:28:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=Zyj1hOOK;
 spf=pass (domain: cherry.de, ip: 52.101.83.71, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lls079a8qHeQxh+jINAJig+f8JRIPls6JI/63iLLLNRhS7BUf+yj3rprn5i8l5frPtSlG2TV1NNrLdTCq3uk6VVN1JFVzTYktgZW+pb3lRy5xMZeSwEYgVJaWDCGuPZdY4zvaQEsxlB8IffSQ01XTLpzDI3N+D37Z6WYETsEgYMq68bO4v3onqtBFuKX3X5JmaQWOS1eTLqDPcJ5jMk7gn2nRWH/0/lVFyXBJu4NUel+K/e9l4p8GHKBvvUIKaM4ffSHbGR3PaBrCS/mhKgwv35U7wn7Sh09YWzLQYKtSyBn4WkBLEsE5NSbWllbfG2bxTAafYiZKJvm/pJtMYBn4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lsh/1qYitt2nLQ5yoZ10pXUPjGsljgf5M/mwP9hfuCo=;
 b=RcmT6Tsu+KnAOXUlhNgvj4N8p7GM2B5Aq32XvpqHNqAGzcArnd0FczU5IROq8RRESwBTY6wt7MoarrPH+Po6TZn0hHtJkJqkmO3wWXyXkkaeMxoMHtmQrtSqtYJ/49t5g8GbBCo+vypuoc72Q5WmrVxxY462AAcJneSz3plvTVf+wE+PtWUR1PPRbnj/UHx067l7Cv+qQhDdHZrocp6EuNu8wq6wdJ6QSFidB4MuEt+FVlKEDXIs6jKxEy9qsXBTOEgW2BCuskKkEwYGNlTLsLook7m16bHn7oiG/PLCyPhOa4Beq8DN1OgxKMHZBF+xXe1SF+ZMZ5FL3LWdcCfwXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lsh/1qYitt2nLQ5yoZ10pXUPjGsljgf5M/mwP9hfuCo=;
 b=Zyj1hOOKZ7RhtQVTlzCEbD/uqAGlM34KZMmdOyZgivr1UABSPmQ1oL6r9AHrK2FH3qfbiJXxRtqGALcSod1jczjsfQ1xjbkupmRguWxCIC2P3L94rVGiW5OJsdaBIbxCEdE6xzMC3AJ58IYFdqBkaZBa79k0Go/ubZ0aN26z+EY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DBBPR04MB7689.eurprd04.prod.outlook.com (2603:10a6:10:206::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 10:28:08 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%4]) with mapi id 15.20.8964.023; Tue, 29 Jul 2025
 10:28:07 +0000
Message-ID: <6eb0c234-d7c2-45ff-85c2-e3a091303061@cherry.de>
Date: Tue, 29 Jul 2025 12:28:01 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] can anyone suggest a decent example of a SMARC-based YP
 build?
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
References: <42aa178f-8b5e-1eb4-99a1-8e3a036580b5@crashcourse.ca>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <42aa178f-8b5e-1eb4-99a1-8e3a036580b5@crashcourse.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: CT2P275CA0114.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:100:25::19) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DBBPR04MB7689:EE_
X-MS-Office365-Filtering-Correlation-Id: 90c498fd-0213-4a26-5ec5-08ddce8a9c13
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UXVybUZ6R0tMYnE5RUszNnl2Wkwra3FiY01PNnE0RU9KaStNT2tpQkxJZEph?=
 =?utf-8?B?b25VZGdIMkErRVJ4bk9OWHZiTVJFbDE1V3hNU3drUy9HZFhoSTFYNlhTc3N1?=
 =?utf-8?B?Y3o4N0ZaSXcrUkxnVEM5UmdJRkdpdUpUQTdtMFVzMm8wMDR5Yko0WXQxN00w?=
 =?utf-8?B?UldNbW5xYlEwdWp3TzZvQUhzeXN4K0kwYXp1N29ZUUl5TEZHSzNQUW1IZXla?=
 =?utf-8?B?WFBlT0pDejhsaXZmalowNGM5QWd0K01ONlE4MVZraVEycHFpWjVrTTk5MGtV?=
 =?utf-8?B?SGF0STVxUFFNMXRUMUNrN1VKOGo2cXVYN2hJUDQ4VFArNDI1ZnBUMGd3T0tH?=
 =?utf-8?B?YTFyd0JJMjROV1RESFpOMXloVWdRL1A3UEFGdEQ2SHRVNlNTdVplamE4YkZp?=
 =?utf-8?B?VGQrTnBZek5QSFV5QWNYVlpZUmwreFlRdlphbnByOXJwaXREbnVaZ3JPNXBP?=
 =?utf-8?B?aU9TUHFFQ1hSN214Wm9zVEJUbzlFZkhRQnFBOFNnTUZMUkdLWlpQNHRuVU1M?=
 =?utf-8?B?UlIxN0JibHY3Y21FMVpMcThLdGtOaVRXQmNGNUtCeWsxUGJMcW9lYlZnUTJY?=
 =?utf-8?B?YlJSWmMwbmtVUm4yM2x4My9lQnRUeGZQc2RpU2J0eWs1bURsK00vVm9BOFc4?=
 =?utf-8?B?VGMxbG5qVEtLbDRoQUJYOUE3blpqTjFRdHdyRFA2cnVBUm1tME1oY2lKN1dP?=
 =?utf-8?B?SHJCMWhveEhJb3hWWTVCN251MUNiQ0psZEN1TzFBSlJSRmM0Q0Fzc2J2bFlG?=
 =?utf-8?B?am5YeFBlSGtleWdzcC9vUitRSnQrSHM3RWlyVFFxOER1MC9TVWZoMXVCOTVp?=
 =?utf-8?B?K2tDSnE4YmNsWlNhdUZnV2NPMW5DUEdobTRENmhXTUpVamFkQVliZ3VaSlRI?=
 =?utf-8?B?Ri9MNDRqK0JMQTAyQm5TalAyTHVubWcwYU56dExjaFBwM1FsTFlTKzVvck5p?=
 =?utf-8?B?OW1jRUR1VVlFU01iVVhxNFJKeW1WU2owcGJnZ0orZzRzUEhleWI2V1dYOEdy?=
 =?utf-8?B?d2NiZW9NMFUydFpHTEU0RlBYQnR4TFQ5OVNuazR0dnQ3Wk8rL1JOcUJMdmhS?=
 =?utf-8?B?c0R0NSt1Y0JoNGRUZTlvUHU5cEJGV2xDTURQNHZGajRnTS9OVnNNNC9ORXVR?=
 =?utf-8?B?QWlobHhQNTJwb053emhlZlNOZ3FuejRCNlBEeWJ1VjNpUVdVdnVBWDJ4VEJ2?=
 =?utf-8?B?MUtMb3JrejFqNXpwMWJ3R0NWQXFJMkdtK1Zoa1dOTjQvY2JvZ25DTnlKVzNi?=
 =?utf-8?B?VGlzdkI4YWt3QmVIQjJ4OG50TTVJMzZGUzFKUllHZUFYVG1YR21yTG40TzNX?=
 =?utf-8?B?TzVjOTJZVUU3V3JxallKb3B0ZHMxamN6WXY1N2xwK3NnaGVkKytaY1VRMjB2?=
 =?utf-8?B?a0dOUlVIdnA3WjI5d0lZMytPSXFYclEyRjhHdmZHWWlqN3RNZ2VqRGRQYkFD?=
 =?utf-8?B?Um9ZSkJvYkpVYUcwRlVVUXdXRnNjM2xHU3pFTnpDY1JOaDF0WUkzT0M2d3Aw?=
 =?utf-8?B?THJXWFAwR09xN2QvSXFyNWM3VDh1Z2tMdVVoS0xpQ2hnN0FQT1pEa1FFTGtq?=
 =?utf-8?B?UURKbm82MkdDOFk3VHF0UDI4S2JUMnJ3eXNUa203VzhhVG9qbDVTOUFuUmsv?=
 =?utf-8?B?K1kwUXcyUDFacGhnT01Mdkx6cjg3ZURpVEtUeS9oTXNLSEthbm9SaWNtZEw4?=
 =?utf-8?B?Uko1MkhRVU1hOUNjK1VTNVIzdm1oV1dFTUhYYzdWYmYvei8rejRmUUpQL0pv?=
 =?utf-8?B?Q1pnc1FTSG9KemdudXNnV3QxQ2hIMmhJWmMyTjNiUXFJVE9MMitGVGlkSGp4?=
 =?utf-8?Q?PnzvSNouUOylkbZu+QUkrvaf78ieNqm+exsJc=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UUhYRWw0RTllaVZuZFYwNnVOcWpiakJxQndkMC8xK3dxZHNmQ1Z3cE5Mcndt?=
 =?utf-8?B?Y21waml6NDd4Z1pGMFBxcVdKS1lKazFkZmRRTHEyN01TTVQ0aWpsTUREbEs0?=
 =?utf-8?B?ZTRuZy9xMHprUUplYlUveVFWNDNSbURPeFF4Z2RnQXdxZFdMYmIxakF2ZEhz?=
 =?utf-8?B?V3VrU2xLWEM2SDQ0NDdCdHpNVzJ1VzVkdkZZTlUrZzVOMUUycEhpck8wSW9Q?=
 =?utf-8?B?c2lKMU9NaWIyT3ltTk4vU1V2a1JpMzJHeXN2OHNxT1l2Zm5CL1ZIaG9La2E3?=
 =?utf-8?B?eEsxOFg0WW8reENYRVNtU3gxMkdXeTVFdVRQVXhHL1NGRWZOQXdtcWZFODlU?=
 =?utf-8?B?Qm8yWm5PS1ltWHd0c3g2Mm5VT3JYTW8rWWpvTFRsRE05Vm5uMnIvOHB0b3RF?=
 =?utf-8?B?dVVrWVhPcVVUZ0thczNLUEhwbG5MM1JTSzYyWGFuSTVyaG5WSzhaRXVSdGht?=
 =?utf-8?B?YUprYUZteE5nNTRTNU8zdlQvYjQ2MUttR3luNFA5N2RNLzlydmJyN0FwLzRW?=
 =?utf-8?B?OE40SjVVa0pVOWVXU0NtbmNxcGhZV2ZYeGZybFpvSi8zdE9pUnYxNlZ3UkNW?=
 =?utf-8?B?VXIvdmR3b1lLdFdxQVZpR2VBR25pYzdqUXk5dTBIbG90L05jUDZ2NkxJV2x0?=
 =?utf-8?B?Q1hFaTlVcFdTUG85SWpYdkJoOFBrOHlPc3VPb1ZvMktOYU05amtrUzBpaXRw?=
 =?utf-8?B?V252WHlQdGVqVldEV3FnR0VqR0FENEJ1ajJyVVpxVGJka1dTSnAvSTBySHZm?=
 =?utf-8?B?T2VUWW5oYjZ3bEpIWk0rWVUzOENBYjM1bWpkeXlZZzR4SGhMOWk3cFphSGRZ?=
 =?utf-8?B?NXBGMU10M01tV1BJcVRVNUI3NmZjUldUUksvL2ovMVJGZldkaC9ZUUkwN3Fv?=
 =?utf-8?B?T3VUNFNhQlh0YjFGcGxkblNSZ3JTRGl2cGZ2SW1vRTlZWUtFTGtwM253cldh?=
 =?utf-8?B?TnhtM1JWNUFYMkl2Z3ZVTlhTZ1NDQmF2S2lJdUh0ZU1LRDA1cHRQUnFQMlFD?=
 =?utf-8?B?VEpMZ3o1WFlwSnZKeS94bTJid3pSdkxqM0YyOENXdlF2amg0dXR1d2Qzbzcx?=
 =?utf-8?B?Zkp1czlOUkpvOHpqUEo4SEFyVEsvTWlrNkZPTTc5bzhFTFFWUEYxQTZiK3Jm?=
 =?utf-8?B?STlIeDBXeksyRU1ZdHp0Sjd4N25FNWtxekkvSCs2aXY4YUd1cXdYL2VaMTY5?=
 =?utf-8?B?OVA4R0E0UUFiVmtNUkV3ampzbVdoODAvbFBCUGZZMFR2V0t0b2lKMHRtSUNX?=
 =?utf-8?B?WmRqUVBVUy9UR1dvY2VsQk1EdmxhOHlzWG1mclNiMVYySUVUQi9OVmpraGpx?=
 =?utf-8?B?K3EvQ1IyeUN3cXY3c2g0M1pqMGI2eHd4QjF6MjBHb0dFTTZXTXFTeXd0bEgw?=
 =?utf-8?B?NXg0Z0tqTXBnRTBVYnlrTWs2Q0t1dzFFLzc5T1BMMWhsRm5VQ0kwWm1kMjNW?=
 =?utf-8?B?SGVJZ2JQNDBvM2JKRjd3RVlreWFvVUNkNWZxbXJodjgzSVBWdElOekdjdUhC?=
 =?utf-8?B?emF2QTIxVFZRdDY2a2pFaWxQWTkwdFFLSDBFK2Z4VFM1ZkhoNW9UQVRFM2pr?=
 =?utf-8?B?dDMxalRTRHJyTGYxZmlEKzI5R1RNSlVGQ0kzeDVTVGdrYlhIVGVPUTIyNEpQ?=
 =?utf-8?B?N3hmOVNsZjd1Uzh6QWFMeVVNRGg4RVlEMlNpU1k3UXF1dEdBMDRNdkIxMkRn?=
 =?utf-8?B?K2xkL0NGU2xCMHdhRzBWdEFpWDhRek0rYVZaeVNISHp6MVg5dVBiM0J6QTIz?=
 =?utf-8?B?YWduMUhNQml2MFJSZ1FsUTMzYW1FUWNZTzBWSW5yNXB0OWJzYm0yQnNTYlBm?=
 =?utf-8?B?bVFmb2trcXhnbjRNVWtVK1Y4SmZCZkxpQnErdWd4R0pvSjJQZVRSaFRSN0xt?=
 =?utf-8?B?OStxekN0NkdjRDZoUEdzYXEyUHhVUmsvcmwxaS9rcVpaMlBJbTJDMERiTWxC?=
 =?utf-8?B?MC95eEI1YUVvcWZDOFUzNmovWjBQNmU1OGxNUHNjeklPRWpaRVNzN3d0SEdN?=
 =?utf-8?B?b29XazRDajBpSUIyT3UwQkUzdFcvei9FNGxNMWJXOTlweGVLUVM2VDNWNk5L?=
 =?utf-8?B?OTRzZzlweGg0M2N6Q1NEdzBQUmRXNlptZFRSZzZzRXE0aXhFUnRpSXAzMGJV?=
 =?utf-8?B?blBBMWQ4N1BYcGUyR0ZNNGpJRmV6MmRIdHNMQmZnVjVMVG5yL1IrTVpNaXRI?=
 =?utf-8?B?Nmc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c498fd-0213-4a26-5ec5-08ddce8a9c13
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 10:28:07.7519
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8BzjiRRvFAtrvPxHu3DXn3MUIMVE7ZhLqQejrZDwSbJM2rQl2WMyrm/e+mX+822F3orPd7gNVGHmexwPm6QiaekR+voHxkRtXjIvqeNVXXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7689
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Jul 2025 10:28:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65712

Hi Robert,

On 7/29/25 12:08 PM, Robert P. J. Day via lists.yoctoproject.org wrote:
> 
>    just started perusing the docs on "SMARC" SoMs:
> 
> https://sget.org/updated-smarc-specification-v2-2-released/
> 
> where various vendors offer a number of SMARC-compatible modules like
> this:
> 
> https://www.isee.biz/products/smarc-modules
> https://www.ezurio.com/system-on-module/nxp-imx8/nitrogen8m-plus-smarc
> https://www.bcmcom.com/bcm_product_SMA-IMX6.html
> 
> and then more than likely someone who wants to build a product around
> that fairly standardized format and spec needs to design a (custom,
> proprietary?) carrier board like:
> 
> https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier
> 
> so even if there's a wild variety of carrier boards, one would think
> that the SMARC 2.2 spec will still mean a lot of the configuration is
> consistent.

Not sure what you're actually asking here. What "configuration" are you 
talking about?

For what it's worth, we have three Qseven SoMs (PX30 Ringneck, RK3399 
Puma, RK3588 Tiger) for the same carrierboard (Haikou) and they don't 
share much outside from this. The SoC is different, which means 
different controllers which means different drivers. I guess you could 
have a kernel with drivers for all controllers enabled so you could 
share the binaries between them (we don't, but we could). While it is a 
standard, there are some features that aren't supported because the SoC 
doesn't support them (e.g. no PCIe on PX30 so the slot on Haikou is not 
usable with that SoM). Then because they are based on different SoCs 
with a different magic header used by the BootROM to detect a valid 
bootloader, you need different bootloader binaries (but maybe with x86 
that'd be fine). Theoretically, you should be able to use an x86 SoM or 
an Aarch64 or whatever else architecture SoM with the same carrierboard, 
so you wouldn't be able to boot the same binary image in any case.

> 
>    any informative examples of that in github? or elsewhere?
> 

Unclear to me what you're actually asking for, can you rephrase maybe?

Cheers,
Quentin

