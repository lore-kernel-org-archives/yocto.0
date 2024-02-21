Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 211E5C48BEB
	for <webhook@archiver.kernel.org>; Wed, 21 Feb 2024 18:31:31 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.119])
 by mx.groups.io with SMTP id smtpd.web11.708.1708540287016954955
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Feb 2024 10:31:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=YEKF9DCy;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.119, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hsFuvMebSyXjRP02TAfM6ilE4liR7NnDWpWFZt4vCwYy5YwaCOwnn7trzufwHLV5G6rlqtTo30Zyqe9qbee36q09jCkmdfMJHD2HKstivYy3X/MNpWtMs4hfGKfMo7fK8C38BqU5RcUSpgNo30t7SX530m/m4HapvV9NVzS3wKh1rhE26GU4vU6X6qjEp4erLlbAiENAcgzLA7rdbH57gC88uW5P5ehKL9n6HQjPddJAGv3j+8+c/9s1k+I90VLgGr5RdPHeeApAJJ7CZGFfpZ//cqbxkSwagJCVXPf8/KET53uFrazuO/m6Qmd9Wdi0ASJaldhQMhvhugYadoc+sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=djNBwuNQn3lJ+d5u+6aJSyb+QsCWilAZZj9Oswsb34Q=;
 b=D0AQEWITaPZ4/BMZybDKnma6dEwitjTsYQe0h+SFP8Zv7R5mkRCo6uxImK8gb2K07ldZNSH2Iig/6LD1V2O3KkiZRSlMyDf4xbE6M/RdwN3sNzS/IRrji0ZiZirAft0F0aB9AqRi9w8+d4xkmjxGdx7IkKsCKoxUJLi1JRUZkthFbH2XO6d47W9pVv8d8p+0thCi6uhn11sxsFvUq68cITVRKh1IkJmGuPVVHJpI10xvJaqHdVeqIOBKduPFt1VQOJPCCQN0oWW/4m7CaJO6dlYhb8h/QK/3P2X1JY244hqxqh+l9EhQSvSO+BjxzjTZ7TSk1NDR+bq7v5zdAkeqEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=djNBwuNQn3lJ+d5u+6aJSyb+QsCWilAZZj9Oswsb34Q=;
 b=YEKF9DCySGCuA2P6YifSLTPgSBqvJHgUI9JeGUz0j5xXBll63BmGNNK0gjktHLdDhnOb87AFh5J23JAJq/eX9s/D7fo5J5LYb4kD3Q90gSUjT1ZAXwmj6iP+ezagfz3WoTDsZb0zsv25pbFZRk6FwELqDceaX2rB23XAMiUUEAZk4T0h3EQKlXpRmBN+Lum0kj+a21mvFCk95GpOCQGgUm+zbkTwUWKKEjxEpxSBsxvklKmUA5BmUqL6QEAS6rkjKhqzIV+I9+wrsbEZKYDxIuv2iRrMT4l52otDvZa2J7Sc3Nei9Kfczqc+rN2d6xiuSwa0C2pJhmX9CcaZbCzO4g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DU0PR04MB9321.eurprd04.prod.outlook.com (2603:10a6:10:354::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.38; Wed, 21 Feb
 2024 18:31:19 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.036; Wed, 21 Feb 2024
 18:31:19 +0000
Message-ID: <8a223cf3-7913-4cb7-848b-0b1dc4109718@theobroma-systems.com>
Date: Wed, 21 Feb 2024 19:31:17 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH 3/4] remove /boot partition from
 wic:bootimg-paritition
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20240212202342.37778-1-twoerner@gmail.com>
 <20240212202342.37778-3-twoerner@gmail.com>
 <ebaf257d-6822-4e23-bc09-7606a90a4f7a@theobroma-systems.com>
 <20240216082531.GA2571@localhost>
 <582d100d-c868-4920-a773-3dbdfb31f009@theobroma-systems.com>
 <20240218172810.GC28169@localhost>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240218172810.GC28169@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0092.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::12) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DU0PR04MB9321:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c67eb04-23f1-4008-dbce-08dc330b4c54
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aLcOzqWs1wkeEtFZ0PhKicQbtMQQf+1ypSNV/KFNPzWXGvZsyRp2no0w5ZLaK2MRR8eVnIFYx7b1uVcp1e7C0xZ2Io401fg9+1zRGdo/U39gehQRbQTp3mJiGhaR7xJP4ZGKX3j2WkTHYrcq1DtkmYBdiBqMs5nv5x8wfpC9rs3jMZBNkTEcRCIW0zt0HtBAiGLLOJ0LuGjkFSmuVos+h/RzFf1c6soBraMpmaYIwDln7yzwBF3BEES4BHfWRKuepflnNIBtCkBlfIsCRC/2aVNmfHkcHqsNS4TIjh0891U/Tekl8NPiQ/6PZbyncWVyC0OBCuTjxpsLjj4GnhimUzy/ydHekaW5WyFnsDwzIuaxTFsn9EupyXnY3QE4YO4Xj/4aALtChM0wFRvRmce8+kZxLGVxnxEj7TTkp/EeE/JXqfpwOjHaT1d0t4jtsy2bUVn/9SGJfpKaHewUkMvz0ExWRwVHbJu9r23IPfWWPCGrH276rnFQ5rp+qIC7yp39HgrA4yRgN3YTChzhCbQdhdjxgfguG2hvCg5bdT/mlTk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V0RUSHZ4ZTViNVh4dWNHemZwM3YvWk5NSmRNRWRsYjA1OTdZODdHU2tabUNK?=
 =?utf-8?B?RFBEaUZoYVFiVEdrRVFwSWxEQ05OUlBhR1R4anpXSGpmOWZOY254TzlRVkx6?=
 =?utf-8?B?NENDYjJIZndpaVd5dkJRaWpIc09Uc25EcU5SbUVsR041aFlTUWwvYXFXaTQy?=
 =?utf-8?B?anhVYWJkMlVWQzBlVVB4VXgyOC9uZFBXeW5sOGtQa3UyT0MyMzJROWNEb3hk?=
 =?utf-8?B?VjM2eGtadHRjOUxpTTVlNTNrYlBTTVI1eGN0U1RhM2VZWTkxUkpIem8yOHp5?=
 =?utf-8?B?aDhhLzk1Y3ZXbk1FNk43ZVE3UVJZd0ZXZEkwOTU1WXROWG91cnMzQS90RWdp?=
 =?utf-8?B?WGo3M1Z6cmc1VHFVUU9UcWs5TCtzcS96ZzJ1bTUycjNLWWxJcHpEWTdJTU1v?=
 =?utf-8?B?SXBCOGFuU3BGTGlIWVhEUVZUSlVqTjh6dStRSk4xYkM2RUU1b2dCTHdLcDZK?=
 =?utf-8?B?MWlxbW5rZTkyU3c1a255VU8yREpkUWcwbG02NENNb1d0SjVBbkEyRkhuQkR0?=
 =?utf-8?B?RGlyT2kzbFJYYTJ4WDlDRk5IQXlzU0loTWNXN3hNSXcyT1BEM290MzZMeStX?=
 =?utf-8?B?WWVWejRvbXkxTmpndkxRdHVUckhUZTZDbnpta1BBcU1IaFFzZW4xdzRuS2FD?=
 =?utf-8?B?bzdJUzE0aEpYcE1jRlZKTHZFa015RFRDUS9VckRTV3VZdzZwaVRmNXBTdTd1?=
 =?utf-8?B?RitlalNHOC9KYThhYXVaQ3B4eGtZRHQ0KzJacm0vTzRJeFp5Qlo3TzhtRmVC?=
 =?utf-8?B?SWZmM09jMys5UFNCSjduUCthWGEwdVU1YXlMYzJ6K2VLQzNHU0x1OFFBM05y?=
 =?utf-8?B?NkZGcWVpL2FWMWR2Tkx1RjFqckhMWldNSksrWFVJNlNPT1JhOHNrN2E1QjBE?=
 =?utf-8?B?a05pbmxHOGxMQkhYMzNkL0l4RitvQnhpRlBTZ0toL3VlbUk2RDF2c2JwdEI0?=
 =?utf-8?B?anF3VGw2TkpqWUV6K1lTZ2dnR2gya3VISlV2RkhwYlptNGtRaVBKemJSbXlN?=
 =?utf-8?B?R0tvWFpFODVYT1J5OXJ4RXl3SVBzWk5idTNLUEtFMXBnL296d2FSVlpnSm5T?=
 =?utf-8?B?M1hjTlRiT3UrTkF2REVNR1hyT2JmYmNOSENzR3NadU82QzJ3K05rdW9qcDBT?=
 =?utf-8?B?UTBVTFhZWkJiM0tHSTdtaDNoN2hCdk8vNHBYN08yZ1BMQ1R5Qzc1RmlOYm5X?=
 =?utf-8?B?b1QxNFUwenI1YmZWQ2tQTEJINUI3SnZ1b0JyVzNqMXFSNzJjTHB3WGhQN0lU?=
 =?utf-8?B?NDU3WWRnM3p3dm9tR0FLZUtGR1czaC9iVDd6SW9tSDlpajZITFBSM0NYOVUv?=
 =?utf-8?B?dGpiUjRDVk1CK2ZhL2h4bGNmc242NkJmUWRVSHZ2M3h3ZUE5NDhZS2dKdWpF?=
 =?utf-8?B?bzQzZTAyMEYxUlBVUE1KeWxGQzB6alE1U0dvU1RMdDA5WmZzUmhpenN6a0sw?=
 =?utf-8?B?dXdXUHBFenR3N0ZUakdGekZ3WUEvb1MzLzR1aFdmTFUyQ0h2L2lRRzlqQTUv?=
 =?utf-8?B?K2RTenJIU3NVb1hHRElqckV0RE1QZERxb3grYVRDVVE0VERCSm0yQUJiRGZk?=
 =?utf-8?B?aHN3YWRTWjA2K2xTRENoWG1HRlBpSGNXcTl6STI1U2YwcUNxdnp6ODdaMGho?=
 =?utf-8?B?SmJDMVdlTFM5TDJpMGpvMXpQU0wyYmFVWTlWNHhXTVAxRjNVbTFRZEYwVmNH?=
 =?utf-8?B?cTh4VnkvT1ZiOE92M3VJM3E3WUdvRWxEc2s2M1hBZitTZjcrUy9wbDZCakNN?=
 =?utf-8?B?cWtmbDl3b082Z2FZNUpaQmZ5THVHUkRUWmNIZ1dJbHN5d1cvQ21MYnZrdGxD?=
 =?utf-8?B?S0p3L3hicHphOVozT1laWmxEQWlYRlh6V25mZ3ZsWEpWOXFoYTByL2ZjWVhG?=
 =?utf-8?B?ZXFBRTlhNXNMaVBpYUYrU0tBMkYvVmZjNjJEVkI3UUNkT05ka2dqdUh4MzVu?=
 =?utf-8?B?ak5NKzVQeXJoMmVWODQ2eitudFhadUkvQXdOckRYWEp6UklIbWJoNVdrREhp?=
 =?utf-8?B?V01hcUt1b2pBMGlWV09Ydm5rV0RsUFBhQzFrUTBFbmxIU05xM3JWaiswSHFP?=
 =?utf-8?B?Qk5Db0dhRnRKZzVBVlAyYVFTRVp0M1R0YjJMOGxIWFN1YlA1SWZGVkdUcDlv?=
 =?utf-8?B?dlMxSmNQUitkakxhZ3RVM0YzQi9kSGRYOTlhMzhXYVZwcG9KYkdrOGxkT1Nw?=
 =?utf-8?B?ZTIrMlA1NGdVTW1rNzkvMkVJdEVrY0lJYW8xVWtGT2ViWW4xbVF3TFZHK3Ey?=
 =?utf-8?B?aktzTTFlV3EwWXFOd3hvWDdrRDRRPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c67eb04-23f1-4008-dbce-08dc330b4c54
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2024 18:31:19.9063
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JVPGaagCPUO+PTaMUWuGk0o+DGmfLD1ra21ID5/DYuZcEXxRYWfvI7lte0/VXuYgIQoXFprHqriOOEdZID4kLHOZzqRLNWiAUa9rrOzQFrxhiqJcIxNhMdWqYXJuSE0d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9321
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 18:31:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62554

Hi Trevor,

On 2/18/24 18:28, Trevor Woerner wrote:
> On Fri 2024-02-16 @ 10:31:36 AM, Quentin Schulz wrote:
>>
>>
>> On 2/16/24 09:25, Trevor Woerner wrote:
>>> On Thu 2024-02-15 @ 06:45:59 PM, Quentin Schulz wrote:
>>>> Hi Trevor,
>>>>
>>>> On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
>> [...]
>>>>> +UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"
>>>>
>>>> FWIW, I don't think /boot is required. bootstd/bootmeth in U-Boot (upstream
>>>> at the very least) will check for / and then /boot prefix for the paths in
>>>> extlinux.conf. Not providing /boot means if someone still wants to use a
>>>> separate boot partition, they wouldn't have to update this variable. But
>>>> since it's overridable, this is basically up to your preference.
>>>
>>> This is a good example of working ahead. The next thing I have queued up is
>>> a meta-rauc-rockchip example that works generically on all (most?) rockchip
>>> boards. As part of the U-Boot script I need to make the A/B logic work, it
>>> needs the "/boot" in there otherwise it doesn't work; therefore it's best to
>>> set it up properly now.
>>>
>>
>> Mmmm I'm interested to see why it fails without the /boot thing? Let's see
>> when we get patches :)
> 
> I'm working on getting rauc working with meta-rockchip generically so it works
> with all the MACHINES in meta-rockchip. The patch won't be part of
> meta-rockchip, but rather be part of a meta-rauc-community/meta-rauc-rockchip
> I hope to submit upstream at some point.
> 
> Basically rauc works with U-Boot via a boot script. To make that script more
> flexible I'm borrowing a variable form meta-rockchip in the rauc U-Boot script
> to actually do the booting of the kernel/fitImage/etc. So while U-Boot might
> be smart enough to check a bunch of places looking for the thing to boot, the
> rauc boot script isn't quite so smart. It's my script to write, and I could
> add such logic, but that would just inflate the script for questionable gain.
> 

This seems like you're not using extlinux.conf when using rauc but using 
one of the variables used to build the extlinux.conf to do some 
magic/logic in rauc?

In any case, not a blocker.

Cheers,
Quentin

