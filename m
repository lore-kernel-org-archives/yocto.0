Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3657DC4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 10:52:47 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.68])
 by mx.groups.io with SMTP id smtpd.web10.28189.1698922365858768054
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 03:52:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=Y44i1PWu;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.105.68, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GHC+4nnpf1XkQLxnfzZqTDfkoul0wy+bBHPHzJ3j388ofD6liKXX6lYKLrpk/4LkL7jcObvwEJWAp5izySfHEoMaqjyD0DEmPIzswWHYHANjrwKu1T0EIWC4pxqRrf8Exynps24x4r1Jv0i16EjC1KRBxrYYwR4D4SRMkyuLhl9DXqjyljNtF+LpyVRqZkumgB2LuPISKTQe0g2mQwiaSoglfCxiV3KbUlP/y0JnYGagRAOwnZM+QSMZzZkW7zP1STJLFSxg+VH8OXJhRAOdhZ7OmHXJSOVT75SZ1kBnFazGKJTkrpxNKIWrP7mE4+1icJTPIVF82ajB8ae4z53ibA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Art/+uLyZfEdtDoSgepM9s1Th63hgzlWRgdWgeRdOLY=;
 b=JXec3i7Ad21uFr9OFlxgdKUnBoHC4Q8eGM30a/+rpa+pVyMDaPhjrL5yFIqj5rFYEGW1yT6vvfhWcepTayugnpdB5Ju/MaFHd6kDEu6ugxSpRan985uyitiU6K1by/zxgtInZ8YxIk4K/iPQ/fta3yGKJmPiuhqtwO9XRuSoFpbmJ9sbMXxuV1EHEzlfjtQk+B2sQ/qD9QUqWTFieT0tScBzexb7ePZVVJhOeMeN4FRiy6eKvbYQ1H+xaI/H//3aGkaT2l+xkHUs9yuKmkaUvvmX4fJ10+exA1qbEsIPu0hYgdIw2OLiIY7VTGEN6FjO/2Bjtt19/rK55iPCPtF8xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Art/+uLyZfEdtDoSgepM9s1Th63hgzlWRgdWgeRdOLY=;
 b=Y44i1PWuIqSEzIH9V7lpcasa7kpardvPsm+vq5rp18tpcxyl9ktoZJo8Z0KExv7Ns2Vb7sfCSvIJmo47BkIlcKxhApMll/Bjc55wYfO5DW6wP8ZoewmZ6croe/epUpHQZmEbx9pi/F54A+CyLWwUpsoX4EABViYjW1VPIvJOh6anjD7Yc1P3IpRAKcBgwycQO7YHwWQSp8pPWX/M3hk+oqvrhz8s+umYN2vqRiYFbpsVQmksPDS4mdQxLhQDUw4O33ZVYp5Gn9AKBFL4KhK8OtuUH7oLQwy3vADLYDmgoeNi00ntTlDHbR/yeXtHYIzT49/vTYeD9OhXHLIdTLLMgg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DB9PR04MB9889.eurprd04.prod.outlook.com (2603:10a6:10:4ef::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.18; Thu, 2 Nov
 2023 10:52:41 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::8b7:c8b9:d800:8b4d]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::8b7:c8b9:d800:8b4d%3]) with mapi id 15.20.6954.019; Thu, 2 Nov 2023
 10:52:41 +0000
Message-ID: <9d4d23f4-9335-4170-91e9-98660abe49d3@theobroma-systems.com>
Date: Thu, 2 Nov 2023 11:52:40 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH 3/3] rock-pi-s: add
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20231001130803.18662-1-twoerner@gmail.com>
 <20231001130803.18662-4-twoerner@gmail.com>
 <2d966caf-f8b7-6200-0adc-d6c434c6c0ec@theobroma-systems.com>
 <20231003135625.GC2234@localhost>
 <32a11548-d3c2-ba45-0d13-496664f95690@theobroma-systems.com>
 <20231030172637.GA9617@localhost>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231030172637.GA9617@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0174.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::7) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DB9PR04MB9889:EE_
X-MS-Office365-Filtering-Correlation-Id: b212de47-1828-488a-1df6-08dbdb91d651
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	r6EywZziKg8BZyTQbJUlkfXZYj9W5D4jie0AcZ15dKBCxS07bt6BfcrQG36113jcbTCTr+efwVLvWRBHTKpiarujwbBkwZC6KIfzyziyfAqgf35pOmTgjCWMFRv1aNv9V7yNh0UEmB3IHI+yhfRmd+7+mejkXK86UkgXZPtLt8P59JytwdywNDw+YJVnws39fvjs82KaModAvsKQZba9fRuvxZa8/yf9ehEZ+NXJcb1K4bOwMrPpjZd//WkETNzQj+4lF6ydrvS+fqeq5Zs4Hj7Y+RQpl3Xvmeg2HAR3dbm0nhnzOc0MfcVC/yWiNIvL1+lxtWxb/gPmEMLfkGNxtLCWdrjCoUFKN/EWzWi04SDyt94Tc46K/ucZoh7r/PxPdnXMEiPGeK7we639ZN7Ii89bx3yo3MzeWEdph/lNpkZDHOOjsEHSsDnCtbOxUfxHmX5q1/NyorNlowD9X9r0dHDvroqdWtSfp8NcIVFocmlnm0saV3aTJv3/n94Kb2TsnCxwjqAxLhzH/INs1gQFXwZkWA+m4SJkoWQI1IUC2PNSxopttBhr8HYZluNlIXi6MbegyCUL6TBfWwDZesY7LUHH5UyFruJq8BnBTAKCVfYtkkMroj7VMFkaRNmFf4Yh
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(39850400004)(366004)(136003)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(2906002)(31696002)(36756003)(86362001)(31686004)(41300700001)(6486002)(966005)(6506007)(478600001)(4326008)(8936002)(8676002)(53546011)(6512007)(83380400001)(2616005)(26005)(66556008)(5660300002)(44832011)(66476007)(66946007)(316002)(6916009)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eitVWjh0WHkyOU5aQjdNeHBnTGs4b0N5bFYvYzF1ZDNrVERYRkNVOGZxMTUy?=
 =?utf-8?B?dWdxbElEOTFyeUhOdG52T216T29CMlgrbk10WnZqUzU4eWN2M1NyVW43K1Jx?=
 =?utf-8?B?SHduU2xDTjZxMjZKNW9HTFdVRkdvWmkrNmR2SFFoZHdkdjBMMnFYakU1TWpI?=
 =?utf-8?B?d0xlY2tOM0UzK094QXIvSTNnTjZkUWxZMHRpTllUVWN2Sjk4ZnV4SWx6VDUx?=
 =?utf-8?B?SXArUkV1azlCb2U3RDluaU0yblI2c0hreVNac2M4cGVIaGxVY3BuMUVYbDRB?=
 =?utf-8?B?V3pEWEw4dS9YSFIvSEFLR3MwM2ZQNkRFUDFMR3FsZVEyZHdCZGpyQTlVS0dm?=
 =?utf-8?B?ZFJ2VStRV3VLUklKOEdvckJDTFBCc3NpTFlOdjRaWVowb1gxRktySjg1d01S?=
 =?utf-8?B?VHBGTmN2cEwyR3grc0wzcTVORTgvTGkxbVBaYm9KcXV0N1dtVEovUXI5MHZa?=
 =?utf-8?B?OU9ZRFhRMHRtRmtEWlBkTXRtUmtQK2FUREU3Z1VWaWUrcnBLRjUzWWZsc1Rh?=
 =?utf-8?B?SVlKclFsMUU4c3NlTVcwZUUwcEJGS1JsV24ydlZHTWlrNFAwOUdSbElvcFBF?=
 =?utf-8?B?WFN2ai9oeW9pNk4rZis1UUFxYW4rT3M5aU9JQWsrdkR0dERxQUFRNEx5amJi?=
 =?utf-8?B?b3d4cytkN3I2ZzllbTRJN3RySnUxUXpuSUxjK01oL3N2L1h2MlpoZmdTc09O?=
 =?utf-8?B?aVlrVTNXTnpRcWNmU1F5SjBMTTdHeFo0Uk04MElQdXFPUEVnY1hLR0NSZFQw?=
 =?utf-8?B?TkNxSStLWlA4Y25NVkdjSVZGZ0FoTjc5d29zdUxCNDRuYjI2VkJtME11NHBu?=
 =?utf-8?B?aGp0OVIvdmpJeHQ5eG9DUW45UjBmekNNTm9MYUg0UUw0Ym5vSFA5UGYzSUlV?=
 =?utf-8?B?eTFtTGVGeWVLY0JBL1N5dk1pOE43bVBrOENoK2RqcldtWU5FQ0tDTWZzeEh2?=
 =?utf-8?B?enBBZ3p1WkN3QW40TmJ4bGFlVHY2d2tvTFI4a2hhaE5Cci95cVE3ZjF3T1hU?=
 =?utf-8?B?bWVuTWdYK2R2YVplNEFWbWM5aHd5RmQ4dEVXY0lQVDh4M3MvZTQwUFBSelB4?=
 =?utf-8?B?OXFhZG1qNUU5TitSZDJVbzJheG9TNlo5cXNqakdPTCsrcjFrVGRNN0FwZmRK?=
 =?utf-8?B?RytyU3doa0hXWmNHaXg2b0lYUmg1K29vNGhERENybnV0Y2xCaTBiTE5tdzFr?=
 =?utf-8?B?NllhWlAwQkxUVXFRLzhmKzNMT2Nqb2FySmIvZFBKMGlnbVhTK0kxTFdLV3c4?=
 =?utf-8?B?VFhyOXdNalhTMXhuT2pXL3JLN1Uzc05wQUNyNFViSG9pM0dJRnVDamlpS1d0?=
 =?utf-8?B?SnJEZTlVTGRyRVlFK0sxQVBWVDF4Rk41R2dGNXRwa2hjZE9jSnBZS2RwMkRH?=
 =?utf-8?B?Ulh1MnVKOEVnZTRtQ1lXTFRnTWxzaEJQWjQxeFJScnJ2OVQ0Yjd2YW5XaWFs?=
 =?utf-8?B?WTZGQk9YbmhqcTlXdHNMdlZEcVIxL0ZQQlBCZEdhL0ZWTGErVkdyazl6TThv?=
 =?utf-8?B?TVk5d1ZKcFRMOUdLK1NjSDFvUFJtc1JHaWd5S3QxUmp0Tzc4c3BabElTY1JY?=
 =?utf-8?B?bWNhLzh0aDBybU1EL2w0T3A2QmI3L2FNUXRQYXZnbFF5Uzl4MlA4dlRQTi9r?=
 =?utf-8?B?TUVleGtiZzVpTXR3UEpnSUhxc3ZJaFkwRDlhVW1QT2k5MENrSkxtUk8zS1U3?=
 =?utf-8?B?aEtZY0ErWmx3TVJncDYzdmE5M2pCWmhsblRlckpMVGpmeFkxaGFjMzRoL2lq?=
 =?utf-8?B?SFVkOTcvT3ZiWEs4bWFQdFdvaVlKbHNGRERUTytpUzhNRUtoN2ljM3ZXVWp5?=
 =?utf-8?B?aHNaenJpcUF5aDVWb3FiaGZLU29EY2VYeThjZzNzUUsrTWQ5enA0VSs3djR3?=
 =?utf-8?B?WkkybVZpSDF5eDFoNjhrdHIxN3FzeXMwcUh2WC9OUk9VNmJ1ZGY1TG9saXpY?=
 =?utf-8?B?ZkZ1OTBOYjllWGdWS29ycktwTDZZRWxHVW1FZ3phL1l6WEFtbzdReXh4YTZj?=
 =?utf-8?B?K0QrQ0NrUFZzeWlMcit3Zjd1WEdqdlgwZm1ISVNWSzJGNFZ0Q2I2aGt4K0xV?=
 =?utf-8?B?QkdseVM1WGJHYWF0MDZrY0dCRjhsKzczL0VhQ3N2L2lHc0FoalBvYVYrU0to?=
 =?utf-8?B?bjdVWUpBVXNIYk9MZlNlT1ZqRmVrM3VRc3VZVjNnUTNVZ0V5bVNsSkdMWEFq?=
 =?utf-8?Q?Zojus4MC2pqpdj4lpPrkW2s=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b212de47-1828-488a-1df6-08dbdb91d651
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2023 10:52:41.6495
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LDCCez4S2nEj1o50ZDlcZ/QvACn8ZcFo6c2V3BZeDojHrg5sGgfsa8Ccp0j4IxGwOMGJbwi1L0hhlEW/e4IHOJ/JLeFWiq41iHFpvQxxJcpCiGw/xTkUpWF1nt4lob1X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9889
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 10:52:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61575

Hi Trevor,

On 10/30/23 18:26, Trevor Woerner wrote:
> On Wed 2023-10-04 @ 04:23:31 PM, Quentin Schulz wrote:
>> On 10/3/23 15:56, Trevor Woerner wrote:
>>> On Mon 2023-10-02 @ 06:17:15 PM, Quentin Schulz wrote:
>>>>> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>>>>> index 7fefb017053b..49e1e682eb7d 100644
>>>>> --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>>>>> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>>>>> @@ -1,9 +1,12 @@
>>>>>     DESCRIPTION = "Rockchip Firmware and Tool Binaries"
>>>>>     LICENSE = "Proprietary"
>>>>> +LICENSE:rk3308 = "CLOSED"
>>>>>     LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
>>>>> +LIC_FILES_CHKSUM:rk3308 = "file://README;md5=39cc9df955478b8df26158d489fdcc95"
>>>>>     SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
>>>>>     SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
>>>>> +SRCREV:rk3308 = "e65b97b511f1349156702db40694454c141d8fe2"
>>>>
>>>> Could you please say a few words about this change? It seems that there are
>>>> still binaries for it in the SRCREV we already point to. I assume newer
>>>> should be better (though it's not always the case), so wondering what's
>>>> prompted this change?
>>>>
>>>>
>>>> Oooooooh, there is no TPL with uart0m0 support anymore... honestly not sure
>>>> it's a good idea to stay on a old blob version just for that? I assume you
>>>> should only be missing the uart in TPL but the moment you reach the SPL the
>>>> console should appear, doesn't it?
>>>
>>> Exactly, I would prefer to be able to capture all of the console output all in
>>> one place. It's annoying they randomly decided to change uarts for every other
>>> update. As far as I'm concerned one binary blob is a good (or bad) as the
>>> next, and if this one gives me diagnostic info in the console, then it wins
>>> :-)
>>>
>>
>> I think this is a bit too much to hope for :) In the commit logs for ddr-bin
>> updates in rkbin, I've seen a few mentions to DDR init stability/reliability
>> for example. So saying it's all the same is probably incorrect.
> 
> I did a test with the rk3308 binaries from the latest commit of rkbin that
> don't support uart0. Specifically I tested with rk3308_ddr_589MHz_uart4_m0_v2.07.bin:
> this also works.
> 
> Also, it's a lot less hassle to build (rather than rolling back to a release
> that has a uart0 console for the rk3308). However, even though the console is
> set to uart4, this binary also outputs a lot of data to uart0. I've tried both
> 1,500,000 baud (the standard rockchip baud) and 115,200 baud: neither are able
> to interpret the data. U-Boot, apparently, doesn't try to reset the serial
> port either, because the garbage output continues until the Linux kernel
> finally takes over. Or perhaps maybe the gibberish that I'm seeing is from
> U-Boot outputting to an uninitialized serial port?
> 

So, the TPL (ddr.bin) we get from rockchip-rkbin isn't configurable and 
it outputs something on some UART controller for the user to be able to 
debug stuff.

Then, if U-Boot isn't properly supported (which is sadly often the case 
in the beginning or, for poorly supported SoCs... forever), it just 
simply does nothing for configuring the debug serial (or initializes the 
"wrong" one). I don't remember exactly if U-Boot does something with the 
serial device defined as main output in the DTB used by U-Boot or if it 
just expects the SPL to properly set up everything.

I think this should be fixed in U-Boot itself in any case. See what I 
had to do for PX30 a year ago for example: 
https://source.denx.de/u-boot/u-boot/-/commit/d0af506625ff909b123a298e435a95ae1b8ee3e7

I haven't looked into it in depth, but it seems only UART2 is supported 
currently on RK3308, c.f. 
https://source.denx.de/u-boot/u-boot/-/blob/master/arch/arm/mach-rockchip/rk3308/rk3308.c?ref_type=heads#L178

> Roll back to older rkbin checkout:
> PRO:
> - supports console on uart0 (same as linux kernel) and all messages from
>    rkbin, u-boot, linux kernel, and console appear legibly on the terminal
> CON:
> - more cumbersome to build (recipe requires a bunch of rk3308-based
>    overrides), perhaps a separate rkbin recipe would be better?
> - uses older ddr initialization code
> 
> Use latest rkbin:
> PRO:
> - simpler recipe, no overrides necessary, simpler build
> - uses the latest code (might include bug fixes or other improvements?)
> CON:
> - spews a bunch of gibberish to the serial console (from rkbin? from u-boot?
>    from both?)
> - the first legible messages only start once the linux kernel takes over,
>    therefore the user can't interact with U-Boot (should they so wish)

This would be a blocker to me if I were to use this board, so I second 
your decision of going for older rkbin for now.

Cheers,
Quentin

