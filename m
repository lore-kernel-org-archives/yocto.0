Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF86C48BEB
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 09:37:16 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.135])
 by mx.groups.io with SMTP id smtpd.web10.9321.1708594632885603307
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Feb 2024 01:37:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=XhH12dAU;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.14.135, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iz4kGqode0oynJm3MJkqSftVtqruz1WtvtBviLLEs/1Yb7xm0m7C7+DMnnFcmTUid1YPON3hCq7NHho0BioPl127WrsBODtqtgXaOJ7/GEcoixtE09FhMoL9XVVAdAmmjbzmB62bbjz8AgSsUQ7wLubPeZYRlkotFjZlgtyqGtvIgTsFFy15nLYnRkJb4ra0rRvRq7z4YyNtOKTUuSwXlUx0VzaTHfKAER99drSbQXYuV0cr2Zx2O1kMzbB1pXwm/q9tdfmMjGR7rVUKyK7/741GXMOzl3lgY9t3WxzuYIaPvhWmNO8tUZ2ZUlqyapPZ3T+z0I79gStrmf5s+Gt9Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TcVvpS3fP+izPgXFJLGWPxy2ezZlIEc1a9Mrojk55jg=;
 b=K4x9wMVtNdKKGKImTm1pBszkgWyigkRXcWgyXiVVKFL42rbr+uLnLk25hIOTcD/2Kr5lme1xUBLjjxHN3UevCHksNb9bwEallOS0y2Pp2gQzX1CwavrnzSP9s3OszFLmEWZJPschLWZlqMAX/Ii94yQ56hX5KlG8Us/aWxrmDRoh1q6ABQg3rIZeiI4nTsIZx3K9cKZJvO2sTHYlaTveg5L66ROG2fAY9a4yzMrau9w3QJQzTQ9gAbgpqTlwWyUM9MAEbfWxJ8Ponp4kK28j7AjT1VXVg9kkV093tV7gXU7vJVOi0QLTc1Ffot1L0G/drhVWzmhXPNMdg4iBldo0hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TcVvpS3fP+izPgXFJLGWPxy2ezZlIEc1a9Mrojk55jg=;
 b=XhH12dAU9eYSdW6FPdTAKTHE1LVON1CXCnRnpzp5z0BdR30GzqiGXIu/5v9TeOt81E8kq4D9DNNAUcjN/oaKbJBpqLjoKyOJHD8RKONC1P84p61o3ObxjW6tLlhoT2gSArlkZxmlIE4oWiftBIBqbFXPeRgCmG/VK1Gooz8hLbuZB6OGUcV3dBFbeUUmzv6fHVUEZuWAgbf7+cAKUYQMlLdvu6OB7D+H7/r3jzWnN7ESqowrbemWufUAEmCyIAHxl/++8wdhvo0khMiGhvw8kmM/alIqxaBYPSmh/kKKa+a6O/XmR5qJslTrUYsoJv7QvtSNdN5BRmm2FA36wuE5OA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB8253.eurprd04.prod.outlook.com (2603:10a6:102:1bf::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.38; Thu, 22 Feb
 2024 09:37:09 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7316.023; Thu, 22 Feb 2024
 09:37:08 +0000
Message-ID: <610cb1cb-ed7e-4d55-be3d-dcfbf7fad054@theobroma-systems.com>
Date: Thu, 22 Feb 2024 10:37:06 +0100
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
 <8a223cf3-7913-4cb7-848b-0b1dc4109718@theobroma-systems.com>
 <20240221191808.GA12724@localhost>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240221191808.GA12724@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR5P281CA0035.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f3::11) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f9c52a0-f40e-4615-e22f-08dc3389d66f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Plz8QTjzxnquJuDw3fd887Fj5wPHqlqCgWEZg0JI4NnHhDui8SfazE/N4Aga2A/qutD3xUQ/OrNDXAP5xpI2DK/z1lyk5WwUTl85DFL/LIaw9qKkE1PaAB798Jmt7gpgI8fTOeUWeGzO3MXUcSdyYoM+e3yu2Nd2HF3GTfLhktN1ALuXQv6643J3Avsj7y8pH0zihYCTRF+1eo9vtpJVQXF/EZ2xLdvGgNTd4XkEXQH9gxa2KjfzggFvX9fb31J42CFZIXv7I7VGsE4czc6fFoxCorfNBG22Hts2L/WtkEX09Kb+37QC+Om+CoGHk0MbgUlWHux4MoQ/TRVRA9BKxn7mDJlQr2BYNTfEl00sEHuAxXkPPMsahPWAUeqCdxvm4ppuuPQolu29MK54M85YHJOBx1ENliJdtVua/rv/AbFoHnWJjsXMh5SvpcaUnbbC/L6SOqV4SZOMenjJKvm+tjTcdtXI2ic5ZrOrzvkQsfS4t0U1BSj/DtCt8S01njBzs6pzLGBCPfxoKlTEcDGKRt23sXWinciiQrRkRRoe7ic=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MnhSbFRHTVF4dllJTVFyMUZMaEw1RUFvUzBqWEYxOExaUkEzY1hYWnIvM1Rm?=
 =?utf-8?B?bklyQjFyN1pleWZLT0ZxMzQ4NlFod0E2N284UWRHLy9xRjZiMnBtbXByMEFs?=
 =?utf-8?B?K3prTG55REdZZ1dFcTF5WFFSNkNSc20rZzkxdGxGbUQ1c1hPTm1kVFU0T3V2?=
 =?utf-8?B?RGhsY0RidTBLY2h1dVdoZm1pbjlQM1dmajFSeXA5L1cwU0d4VlpBS3Uxc2Vk?=
 =?utf-8?B?bWFQT21EbzZKTjhreEVjdm01NEt1ei94eDg4U2hSMUNSeFU0M0VBZGl5WHVW?=
 =?utf-8?B?QXltVnpsUmZ6ZkxBbG85TFNmc2Z0TjZrbjVRcWlsN2tUa3NGNjZoR2k0RnZ2?=
 =?utf-8?B?RDFqY2RxV1dOOWttRlRGTFpCTm82VDZJcGE4bTVCYncrZjllMzgrUytqaGds?=
 =?utf-8?B?YkRpVjZYSmc0dlhnR0xzOGtPSWc4RWt1S25TRExQeW5aNnFJUmpOT0dsK0VS?=
 =?utf-8?B?b2loRVpKZ0hhaXpxM0kyMUIrM0lQNU0yak9Pci96RDM4T1FJWFVwNFY5TWNj?=
 =?utf-8?B?WW4zV3ltQmpXRzEzTVRtVTB0NzJOOThvQ2p0MXhqM1dSbEVhcGVGS3JBZ1hm?=
 =?utf-8?B?cTVDZFl3SThVZS93dW82R3EwajlLQWY3OUZQMktBVGo1dHh5b3NISG51amFG?=
 =?utf-8?B?UnRJV3ptSXZwdUpCcU5paXhDMGQ2TlkzeXRYTzl2OFdqUGpVbFNiRUNtNWVa?=
 =?utf-8?B?MklwNFVTRHgyb2RDNy85T2RaSWZ3bkxUUzR1OHdTKzBadUlQSW0zME9RemZw?=
 =?utf-8?B?MzVqZFdKaGlvL0ZwdXdEUW9rRnBJNjMvaThzVVhwUmQxTkg5UHVORmROdnB6?=
 =?utf-8?B?R3hKVjJ0cGZCeVpZOElNNktuQ0luM0puYUdJM3pwZUZSZC9UVW1KVjJ3TUov?=
 =?utf-8?B?Vi9GUjRRdExISG8rdnc1Nk1KdFZuU2dVbmNyWVdyeWxpSU81MEdQam00Uzk0?=
 =?utf-8?B?enVObjlLUDdLTVVsdllGamJySXpUSjJnTEZ1V1Q3MnNiWmlETjZWWGcrTTd6?=
 =?utf-8?B?UXNUaWtEaDBuNVZ0OWh5VlVHR3lYT2JIMXd2dWNvaGY1UUtHYkZrRHBwTGRq?=
 =?utf-8?B?Y25pN2k5NnRkNjJObmxmSkc0SjJiK1hCSWRQUEM0VzJ4ZnN2MHQ0aFBGOURn?=
 =?utf-8?B?aUd0VkJvWngzMGpsOFU5WVY1OHFwdU0ycENpMTdvQlRGUytZUk9iZ2x4TWZi?=
 =?utf-8?B?MnNtWkNsS1pneUtXNS9vTW5zUWhLUTlTVlJXc0djM3E4N1RueHMxMGQ5ZVFD?=
 =?utf-8?B?UGdCRXRMWVhEWklMakNEcUgyL0p4SkhZc1VPc3YxMjEyem1DNkpoZFVlZUd2?=
 =?utf-8?B?QXBEd01KUkg1NUt0UGdoMFg1LzN4Q2QxdzZLRTJrN081ckNIdXdkbkpDZzQ3?=
 =?utf-8?B?SWdsREQ0bnU0NUlXUXY2ejRURERMN2FpMkpVNFovNEtpN0tMR1RhLy80MEFB?=
 =?utf-8?B?SXJFeVZhOHI3UUh0WXNVLytDSWF6cmMzNEQyY09GWWVJOUNyTmVNUGdEQ2xq?=
 =?utf-8?B?dnFwQmZUUDJEaDZLU1NYOTdneXcwTVp0WWtHTjIvczlLM3pTQnptWHJISUdk?=
 =?utf-8?B?NkVWQzB2dUJNK1BWWU12cFZZZHlENnl4QWw5Z09qT0JHNEFoL29LMUpwVXFq?=
 =?utf-8?B?VXBLY3k2elg5YTVvSlFMSFlMU2wwWEdwYW4weWd2M0tGMlMyazZwTDR2NnNN?=
 =?utf-8?B?eWRjOVN5VjlqTnY3MUg0UXBuY0xxemU3cmYxUjBWcmcwcnd6dS9EQThqRVZa?=
 =?utf-8?B?NHdGdlUwRWJHMm1MYnlsd3EzcE9henYyRkV6S3BJdE8rQnlsSDQ0Nm4xUjdz?=
 =?utf-8?B?Nm10SXRKWG91OFlReFBPaGpHWE5rVHdBdGtRNktGTFNKY000S1QwamloUUNo?=
 =?utf-8?B?VWJBdlR6ZEdMY04xdnFldENBbFV4eUJwZEZqelhzY0pqd1pXcU4wbTFpRGxw?=
 =?utf-8?B?UjZNNGZ6bGZKV01yZzRwZEJHWmRDekd2ZGwyczI5ZkREZHJEY05aMzJFODlZ?=
 =?utf-8?B?T2N6b01aZ0NXeTdmN29LcmhJSDk0aDEzeDl4NDNwQUFLcjZ4c2pNKzhSUFVr?=
 =?utf-8?B?TVJNVGNPa1pvaHR3MXpYMW5sYkJWNGtSTGZxNXBNN3IwMXhDSmhsTE1rQVNX?=
 =?utf-8?B?YjlPdHlEVE5GTlpucHBxVlZwak55aElnRy80dEhINEt0L0ExQ1Ftc1A4U2JU?=
 =?utf-8?B?UEdYVXVXcTJtdVBFSTh2b1V5eHdqdVkxL0RmdlVqcTdBa1hOdFhlaXljdzhy?=
 =?utf-8?B?QWVNNXhXaFZkTE1lS2hMc0hkbDdnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f9c52a0-f40e-4615-e22f-08dc3389d66f
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 09:37:08.1996
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n7GwvngMf7Fs5EEdLcZCBz1NKoYWjsHUvjH2woqjUoPxB7YXfSPvHUPoqYqPIiCnHuM2+TanWN9SMabwD/VDfAe2n9mzlgIv5VX7hQJL1v+U2GpBaWesC/GVcxU7ZBxl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8253
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 09:37:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62565

Hi Trevor,

On 2/21/24 20:18, Trevor Woerner wrote:
> On Wed 2024-02-21 @ 07:31:17 PM, Quentin Schulz wrote:
>> Hi Trevor,
>>
>> On 2/18/24 18:28, Trevor Woerner wrote:
>>> On Fri 2024-02-16 @ 10:31:36 AM, Quentin Schulz wrote:
>>>>
>>>>
>>>> On 2/16/24 09:25, Trevor Woerner wrote:
>>>>> On Thu 2024-02-15 @ 06:45:59 PM, Quentin Schulz wrote:
>>>>>> Hi Trevor,
>>>>>>
>>>>>> On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
>>>> [...]
>>>>>>> +UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"
>>>>>>
>>>>>> FWIW, I don't think /boot is required. bootstd/bootmeth in U-Boot (upstream
>>>>>> at the very least) will check for / and then /boot prefix for the paths in
>>>>>> extlinux.conf. Not providing /boot means if someone still wants to use a
>>>>>> separate boot partition, they wouldn't have to update this variable. But
>>>>>> since it's overridable, this is basically up to your preference.
>>>>>
>>>>> This is a good example of working ahead. The next thing I have queued up is
>>>>> a meta-rauc-rockchip example that works generically on all (most?) rockchip
>>>>> boards. As part of the U-Boot script I need to make the A/B logic work, it
>>>>> needs the "/boot" in there otherwise it doesn't work; therefore it's best to
>>>>> set it up properly now.
>>>>>
>>>>
>>>> Mmmm I'm interested to see why it fails without the /boot thing? Let's see
>>>> when we get patches :)
>>>
>>> I'm working on getting rauc working with meta-rockchip generically so it works
>>> with all the MACHINES in meta-rockchip. The patch won't be part of
>>> meta-rockchip, but rather be part of a meta-rauc-community/meta-rauc-rockchip
>>> I hope to submit upstream at some point.
>>>
>>> Basically rauc works with U-Boot via a boot script. To make that script more
>>> flexible I'm borrowing a variable form meta-rockchip in the rauc U-Boot script
>>> to actually do the booting of the kernel/fitImage/etc. So while U-Boot might
>>> be smart enough to check a bunch of places looking for the thing to boot, the
>>> rauc boot script isn't quite so smart. It's my script to write, and I could
>>> add such logic, but that would just inflate the script for questionable gain.
>>>
>>
>> This seems like you're not using extlinux.conf when using rauc but using one
>> of the variables used to build the extlinux.conf to do some magic/logic in
>> rauc?
> 
> I'm using sed to search and replace a tag in a U-Boot script template with
> UBOOT_EXTLINUX_KERNEL_IMAGE which my U-Boot bbappend then turns into a U-Boot
> script that handles the rauc A/B logic.
> 
> Specifically once it figures out whether to use A or B,
> UBOOT_EXTLINUX_KERNEL_IMAGE is what is booted.
> 
> So keeping the initial "/boot/" part of UBOOT_EXTLINUX_KERNEL_IMAGE is useful
> to me so the U-Boot script can find what it needs to boot in the filesystem
> image. I could strip that prefix from the variable and include it as part of
> the script template, but the current way provides the most flexibility. In
> theory the fitImage could be located anywhere in the filesystem and the U-Boot
> script would be able to find, load, and run it.

Would be nice if you had some code somewhere we could use as a base for 
discussion :)

FWIW, upstream U-Boot seems to have some interest using VBL/VBE for A/B 
mechanism, this seems to be pushed by Google? So maybe something to look 
there in the future.

Cheers,
Quentin

