Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB8E7C4C1
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 14:23:43 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.50])
 by mx.groups.io with SMTP id smtpd.web10.19973.1696429417455229372
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 07:23:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=XY++mnfR;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.104.50, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TLBPvuVwsG++lPL95vpO87jiELA66UjC8Ru3DC5t/RuFRKBLVls5+TKk2G7JMjCpEcA0Dr648abHep8cbqECq7DR6EK0Bq7gYlaOIkJ4tUSdCWl0duLwRT8u81GNAYR732RBLebevZfL4b9a9tsJL9dfoUJlDqb1D07FdoQYsRkwb8MipzNrHr/cEx6R5IIaHi75sFfgCIS1kLf6gfzS+ajocB66CxrC8bz7x9tTzfdLW6Mh/0xu2lbn3jUdkvQ/gB3792qrKtLlEHE4HyHnrIo9EbbbtLBmchUxM3pXTAS9fUFY4ig6RZq9kwv7akKRXUP+YRKI7RNBdcY904Sn1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=anpIBpSBaejKd/kTu1F3kvjMmXkKnkizJwE7i8TinQ8=;
 b=Xj9w9Gk1iMcVL6+rRoHiT6SmqfJn7KKyeoWMvsLHdu7X46Wfw26UFAk2SKTyVpTloTwABE6XzYLfiyfV2tZCfkdOUeYj6RJwyfRcMmQ3aAIXfXsLBLPqbnzKFafCgWEldKCWkeuFoK6D101uIKJtPKnatyTYS3fdo5THfDuy2hyc+50Ui3F9G2sVKeaCxnrPTOypKnSBjhPMc/fC43NGqAtSspM1/gksje1rjPv+j0QIsZ4qIU9wXOcuZnzDbsgm0a2RZWazdwUaOCbga4sq3wKySw1nor1EZLEXwZSejie8Cc2DwrE4B8pYuoxm8RCt/SQp7raPWO3EMaCCJwU+/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=anpIBpSBaejKd/kTu1F3kvjMmXkKnkizJwE7i8TinQ8=;
 b=XY++mnfRbhZVzwsfPLW4jtkPQTR5aPbVX3qwoJZtbO8qoHmEFl0oaMjYmdBU4iAlDiz08VGEOr+94dML4SIuSI/tCEFUvq+Bd/TUvtL7xKhmN0M1AWz6yC2A3vm9lv1xlipRLMannd2Oxa2WlfTqXFOxmKHrl5eijDcGgBezVgWFhs6L7RIEcZ6j7pFCHHAKqxNfPDUzf8Ly4sMkBBoQgyiUqmU7KWYwk5FLF/NDIfR3aljvXjkffa3JToW+wLH4jTCmmKV17MO6GJHZlnS95//qs03xtSwWZ7qV3rdktG12dKbtja4AtgptlFtJrHPD3e/CJqCAcEVs94x/M/h2kg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB8958.eurprd04.prod.outlook.com (2603:10a6:102:20d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.35; Wed, 4 Oct
 2023 14:23:33 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6838.033; Wed, 4 Oct 2023
 14:23:33 +0000
Message-ID: <32a11548-d3c2-ba45-0d13-496664f95690@theobroma-systems.com>
Date: Wed, 4 Oct 2023 16:23:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip][PATCH 3/3] rock-pi-s: add
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20231001130803.18662-1-twoerner@gmail.com>
 <20231001130803.18662-4-twoerner@gmail.com>
 <2d966caf-f8b7-6200-0adc-d6c434c6c0ec@theobroma-systems.com>
 <20231003135625.GC2234@localhost>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231003135625.GC2234@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: FR2P281CA0171.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::16) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB8958:EE_
X-MS-Office365-Filtering-Correlation-Id: dcb3b77f-4ebe-418a-6e2d-08dbc4e57d35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ikkHsYXxF/G8Oz4tXnwzX3DkJZcJEkS1J4lzNI9ShXtmtWflfss7kIjcgDRvtMklu37LSB03/sphhRAFVLrWHj1FrNFXhlxYlSe6i1zDjc01hEU1o19cRKXmpKdcvP3GSiYN8vR3uonSDWZ8YxBN/uPQ3HICagfCxUNynx40iQu+mrhOxaVyARIJaUsfD1d6vi6f28ACldCRKBLqXywPKn88HrWEB94lEAGQsgrS0o9RgyQ7H3KLMBAbAW+pUf7yGXSBG6PhjecmuroxADQ4zKacq1F/k1MtgIBfDYCiO0jGUHpcYthMTyOtmv/z5moj0Lo9eEJ8aFynD9guqhnNWFMkABvNpoEZQYwM6GoNcwr2sxQSeBnmS1vna2tATW+aUWAciRVBlJDMsjuyW2ZmwyWpUDkPxB7VgMofKLbc19qNqHOVqiRr4PUHb9/RAghyZBL3V/B36YVhSU+fhiYp4K3DRxDcdf0c4PFGxg6WXOMJmt+ukTAIiOR7wgdB6JoeeriEHFM45yvGBZvYqwkVicYsObfMw/WsOt3NHwpBPy5OxmMupwhtQLI5b3cLEI6s8fH2hUSU0A+18phgdb9z/JayAR54lOeFzgJDz5aTIFKISO7O+kHgQ3dWYm4II7tD8Vi9GqJRNr+YOTQoFjUpJw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(136003)(39850400004)(346002)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(53546011)(6512007)(6506007)(2616005)(478600001)(6486002)(966005)(45080400002)(83380400001)(5660300002)(26005)(30864003)(2906002)(44832011)(66476007)(66556008)(66946007)(6916009)(8936002)(8676002)(4326008)(41300700001)(316002)(86362001)(36756003)(38100700002)(31696002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ODdoenIwazNuZDdtanlFcWk4dzdXeUpjR2xHMGdFcWtlaVg1ZVNjcnQ2QWlJ?=
 =?utf-8?B?QlhqMkJLVlA4eDlBSTlqZS9IVDkzei9jNjNJZ0FGUXV5LzUxZ0loaDJCcXh5?=
 =?utf-8?B?OUZHOTVYTnRpTWpQTi9wN0UvNFc4bUo3SHZiQk5Mc1VDaXVvaUt1Y2Jrd1RJ?=
 =?utf-8?B?N1dnSENxd3hINEg0ZkVmTEsrR3h4aExrNHN6ZFJteVdZTjZXeUtBaDg1WkpY?=
 =?utf-8?B?aE52eUpyUlIySlRQVzN5bGZESkFVMnNyNkx0M1pJVVJCNzlXQXhXaTAvYnFQ?=
 =?utf-8?B?S09oQmxOTzd3K043cGFjNWxzd3FyMUhIOFlDZHNBQ0JKbmk5Y3BjRTBzM3U3?=
 =?utf-8?B?bWl0RmNJQWpHNEdMQzBmRzZEUmhVRmV3OG5IcExSM0RoRDRrUUZuM241c2hv?=
 =?utf-8?B?RktNYXdqTmpaejI5KzRrM3M3Q3NSU29Vc1VzSVZxK2M0NzFKaEFGekFqRitq?=
 =?utf-8?B?elJjT3hxNHBsWG14a3RrMjdRMjl4REtsOXd5NVpGY3kybmMxOU1iVjMvQzdy?=
 =?utf-8?B?Q0d1VVhxY1pBUllKQWxJS2tSeVM5R0NoOUJ1T2dTZHN0RWlnQ1RZS0MvVk5r?=
 =?utf-8?B?TTI1MDdXemFSb0d6YnVSMUdiVSttTTMxRDcrSlhvdFpFeGp6TDdGR2RZMkZB?=
 =?utf-8?B?eHVlYnhRZlhLd0tpM09hQVhzZm1EWGYrOENianJuM3AzOUtYZ1JORHBSemNn?=
 =?utf-8?B?ZlVRb05vc2ZBNWVITFJUTEVyZGFGcFplcm9SZ3h2S3FENjA1cTZINCtobkxV?=
 =?utf-8?B?Z3oyODlWMFQvZlpCNlJrV3VWbUI3Q2xCZzN2Y2N3RVB0UlFGMUxOOUgvWEtP?=
 =?utf-8?B?Z2NENG1ERmJ6TXpEcHBxb2NkKzg4di9tVWR2cENrL3hVNWRjOEVRdE1OV0Vp?=
 =?utf-8?B?V2s5TStlQ0JRY2dOclh6NDdvaGkzMS9YUXZWNC8zQUU0eGYyUEF1UGRaOWV1?=
 =?utf-8?B?c2dJSHJxRG1YUFA2VjIwSlJQNkhESmdUdWtJZVpBay9EU0VOSDZsWlhkL3hp?=
 =?utf-8?B?Nkt1NDV5Ykg5NGVpNnIwQ1JDRWo4VHp2ZTFXSHA5aFdBMjNuZ08waGRLREdE?=
 =?utf-8?B?aTNIQ3QyeUYvS2Rlc20rT3A3SjJUOW9xL1YzcXRKNG81QkRSbXVBRUVpWjRk?=
 =?utf-8?B?WGNTNU5RdnJTakVieHc4US9QWS9JT25iNjYvUloxL3E3WTE4QmhzQVNDcm0w?=
 =?utf-8?B?am9hOTNDMThmY3BBM3VrK2QwR21HUnR4RFFCNXM2U2pZVGFNNEVabGRyQjVN?=
 =?utf-8?B?TmtGbHRKWUxDb1VtVDNZd01reHFEU0pwM2hia3pxUWJUdldUcDQ1VjVkbTdS?=
 =?utf-8?B?ZVV6QWZjQ0w2U3FrTkRYcWhrUEpWV2xZWlFtbjlpb1FFQ0JLQkJIa09WSEhp?=
 =?utf-8?B?UUtvUWQ1dDRKMCsvTmVONG9RWTRvb1pBK3B5dzBuY1VCOUhKdmZIT2dKM3Y0?=
 =?utf-8?B?eEd3bURRS3NnQno0TzVoQmF4d2dSelIzTDZJcW52aU96a2J6V0QvZW5seWxt?=
 =?utf-8?B?emRlRmh2SUt5V3UzNmNFT2FnSnBNRFVRWlN3S1ZOelg5RDVENmhSOHNTZTJB?=
 =?utf-8?B?Q2lqL00vNHdhbkU4WlFpQW95d1VtSFlQTlNtTE0xU0g4R2NMYVhrVmd0ZHVZ?=
 =?utf-8?B?OUdHNFQ4c1plT3p3WFdFVCs2eXdHbjF0d21rUGN0b2VGRzRDVzhsazNJUzMz?=
 =?utf-8?B?ZnpZaVJQNFhEdXFWdXpxaVlYUE1VblFOZlVTNXROd0JIVzRiMTNyYkRtWlFj?=
 =?utf-8?B?emhTc0wxWFhTUmJEWUFSdGRSWTUzRUh1aEJoWExWdytjTXovS1NYNHYrb2J0?=
 =?utf-8?B?WVBvTm9VQ0krUDkrcGdBUFdTRVQ4OTF5YUsvV29YVzBBS3pvakEyVFdEem1S?=
 =?utf-8?B?WnJ4Q3VoTG85VmJVNytkMThSM3pIU0VMVGFCSDB3aUg5TG0rWWtjSVgzTW44?=
 =?utf-8?B?aFRqeHE4YXBnaHYzTUFnZkJVQW16ZVZpY3Nzd2ZyRjVzMDRPOUJud0RNVk53?=
 =?utf-8?B?REtRV1hTYlNVeFBOcjJOTFF6MDNBOWhTYlpEV2ErMU02bEgyQ2xxNy9pQnBa?=
 =?utf-8?B?MGJIWmlBREg3S1NoMnlTcmh0aVZiTVVGOTZZZEV5Wk5nc1E0UVJlTjIzM1ND?=
 =?utf-8?B?Z3gyQ3VBMm5SL0w3VmZqa3gyNGN1VkgyaXBJUmtSaU41ZTNMalVEVnBNb2xq?=
 =?utf-8?Q?XVqfHpPbO0hH93b8fSk4M9g=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcb3b77f-4ebe-418a-6e2d-08dbc4e57d35
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 14:23:33.1368
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WD6tqex9HkmtZMwoG/48wVQkkDp0SfIqwMRr1obdlyOjGtJPoDfmtaqrn1N+aa/IY6y/nR+0jxN4RqYNXQEWrH9g9n/wdLNmsUChc6wg6TinBwEExDsozYPqT9XL4gNT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8958
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 14:23:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61238

Hi Trevor,

On 10/3/23 15:56, Trevor Woerner wrote:
> On Mon 2023-10-02 @ 06:17:15 PM, Quentin Schulz wrote:
>> Hi Trevor,
>>
>> On 10/1/23 15:08, Trevor Woerner via lists.yoctoproject.org wrote:
>>> ROCK Pi S is a Rockchip RK3308 based SBC from Radxa. It contains a 64-bit
>>> quad core processor, USB, ethernet, wireless connectivity, and voice
>>> detection engine in 1.7-inches square. The ROCK Pi S comes in two RAM sizes
>>> 256MB or 512MB DDR3, and uses sdmmc card for OS and storage. Optionally, some
>>> versions of the ROCK Pi S provide on-board storage via 1Gb/2Gb/4Gb/8Gb of
>>> SLC NAND flash.
>>>
>>> "S" stands for "small square" since the total board size of the rock-pi-s is
>>> 1.7-inches square.
>>>
>>> This BSP assumes booting from sdmmc, and using ttyS0 for the serial console
>>> (similar to Raspberry Pi).
>>>
>>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>>> ---
>>>    README                                      |  1 +
>>>    conf/machine/include/rk3308.inc             | 18 ++++++++++++++++++
>>>    conf/machine/rock-pi-s.conf                 | 11 +++++++++++
>>>    recipes-bsp/rkbin/rockchip-rkbin_git.bb     | 17 +++++++++++++++++
>>>    recipes-bsp/u-boot/u-boot%.bbappend         | 11 +++++++++++
>>>    recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
>>>    6 files changed, 59 insertions(+)
>>>    create mode 100644 conf/machine/include/rk3308.inc
>>>    create mode 100644 conf/machine/rock-pi-s.conf
>>>
>>> diff --git a/README b/README
>>> index d4576d73c636..e815fb47ff5f 100644
>>> --- a/README
>>> +++ b/README
>>> @@ -31,6 +31,7 @@ Status of supported boards:
>>>    		firefly-rk3288
>>>    		nanopi-r4s
>>>    		rock-5b
>>> +		rock-pi-s
>>>    	builds:
>>>    		marsboard-rk3066
>>>    		radxarock
>>> diff --git a/conf/machine/include/rk3308.inc b/conf/machine/include/rk3308.inc
>>> new file mode 100644
>>> index 000000000000..19cabafdfac0
>>> --- /dev/null
>>> +++ b/conf/machine/include/rk3308.inc
>>> @@ -0,0 +1,18 @@
>>> +SOC_FAMILY = "rk3308"
>>> +
>>> +DEFAULTTUNE ?= "cortexa35-crypto"
>>> +
>>> +require conf/machine/include/soc-family.inc
>>> +require conf/machine/include/arm/armv8a/tune-cortexa35.inc
>>> +require conf/machine/include/rockchip-defaults.inc
>>> +require conf/machine/include/rockchip-wic.inc
>>> +
>>> +SERIAL_CONSOLES = "1500000;ttyS0"
>>> +
>>> +KBUILD_DEFCONFIG ?= "defconfig"
>>> +KERNEL_FEATURES:append:rk3308 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
>>
>> I'm starting to wonder if we shouldn't make this a pn-linux-yocto (and other
>> flavors) override as well because we would make it difficult for other
>> people to NOT include this. e.g. if they have their own recipe where
>> KERNEL_FEATURES is used for example. Anyway, not specific to this SoC
>> include file so not a blocker.
> 
> I'm not 100% sure what you're recommending, but if there's a better way that
> is more flexible for the users, it sounds good to me.
> 

KERNEL_FEATURES:append:rk3308:pn-linux-yocto = " 
bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
KERNEL_FEATURES:append:rk3308:pn-linux-yocto-rt = " 
bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
KERNEL_FEATURES:append:rk3308:pn-linux-yocto-tiny = " 
bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
KERNEL_FEATURES:append:rk3308:pn-linux-yocto-dev = " 
bsp/rockchip/remove-non-rockchip-arch-arm64.scc"

for example would only apply to linux-yocto recipes and nothing else. 
Not THAT important we need to fix it up now :)

>>
>>> +KERNEL_CLASSES = "kernel-fitimage"
>>> +KERNEL_IMAGETYPE = "fitImage"
>>> +
>>> +UBOOT_SUFFIX ?= "itb"
>>> +UBOOT_ENTRYPOINT ?= "0x06000000"
>>> diff --git a/conf/machine/rock-pi-s.conf b/conf/machine/rock-pi-s.conf
>>> new file mode 100644
>>> index 000000000000..79ea73c6b47e
>>> --- /dev/null
>>> +++ b/conf/machine/rock-pi-s.conf
>>> @@ -0,0 +1,11 @@
>>> +#@TYPE: Machine
>>> +#@NAME: Radxa Rock Pi S
>>> +#@DESCRIPTION: ROCK Pi S is a Rockchip RK3308 based SBC by Radxa. "S" stands for "small square"
>>> +#https://wiki.radxa.com/RockpiS
>>> +
>>> +require conf/machine/include/rk3308.inc
>>> +
>>> +KERNEL_DEVICETREE = "rockchip/rk3308-rock-pi-s.dtb"
>>> +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
>>> +
>>> +UBOOT_MACHINE = "rock-pi-s-rk3308_defconfig"
>>> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>>> index 7fefb017053b..49e1e682eb7d 100644
>>> --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>>> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
>>> @@ -1,9 +1,12 @@
>>>    DESCRIPTION = "Rockchip Firmware and Tool Binaries"
>>>    LICENSE = "Proprietary"
>>> +LICENSE:rk3308 = "CLOSED"
>>>    LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
>>> +LIC_FILES_CHKSUM:rk3308 = "file://README;md5=39cc9df955478b8df26158d489fdcc95"
>>>    SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
>>>    SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
>>> +SRCREV:rk3308 = "e65b97b511f1349156702db40694454c141d8fe2"
>>
>> Could you please say a few words about this change? It seems that there are
>> still binaries for it in the SRCREV we already point to. I assume newer
>> should be better (though it's not always the case), so wondering what's
>> prompted this change?
>>
>>
>> Oooooooh, there is no TPL with uart0m0 support anymore... honestly not sure
>> it's a good idea to stay on a old blob version just for that? I assume you
>> should only be missing the uart in TPL but the moment you reach the SPL the
>> console should appear, doesn't it?
> 
> Exactly, I would prefer to be able to capture all of the console output all in
> one place. It's annoying they randomly decided to change uarts for every other
> update. As far as I'm concerned one binary blob is a good (or bad) as the
> next, and if this one gives me diagnostic info in the console, then it wins
> :-)
> 

I think this is a bit too much to hope for :) In the commit logs for 
ddr-bin updates in rkbin, I've seen a few mentions to DDR init 
stability/reliability for example. So saying it's all the same is 
probably incorrect.

> Any idea what the m0 vs m1 stands for?
> 

Yes, so a pin can be muxed for different functions, e.g. UART from a 
specific controller, GPIO, SPI, etc... this is what most people are used to.

But there are also muxes for the UART function for that specific 
controller. E.g. the UART0 controller can expose the same function (e.g. 
RX) on different pins so you need to pick on which one. It's a bit 
messed up though because you can technically have the same function 
exposed to two or more pins at the same time but this won't work very 
well (we've accidentally done this for UART during development :) ) 
Ignoring this last pedantic detail, I like to model this with
                                           __
                       GPIO1C3   -------- |  |
                       SPI0M0 TX -------- |  | --- PIN A13 on SoC 
physical ball
              ___                         |  |
             |   | --- UART0M0 RX ------- |__|
UART0 RX ---|   | --- UART0M1 RX --...
             |___| --- UART0M2 RX --...

So basically, they just stopped creating a binary where the debug 
console is exposed on UART0 sadly.

And this actually made me think we may need a way around all this. e.g. 
if a ddr-bin is bad in SRCREV decaf but bl31 is good and ddr-bin is good 
in SRCREV caffe and bl31 is bad in it, it's not great to only have one 
recipe for that.

Maybe we should have:
1) rockchip-rkbin-ddr
2) rockchip-rkbin-trusted-firmware-a
3) rockchip-rkbin-tee

This would allow:
1) have different SRCREV for each recipe
2) allow to have ddr-bin coming from rockchip-rkbin-ddr and bl31 from 
rockchip-rkbin-trusted-firmware-a OR 2) allow to have ddr-bin coming 
from rockchip-rkbin-ddr and bl31 from trusted-firmware-a, changed with 
PREFERRED_PROVIDER in the machine conf file and not have to go through 
hacks in the different recipes

> I'll try the newer ones and see if they work. I fiddled with this quite a bit
> between the two rk3308-based boards that I have, and this was the first
> combination that worked. I probably just stopped at that point.
> 
>>
>>>    PROVIDES += "trusted-firmware-a"
>>>    PROVIDES += "optee-os"
>>> @@ -14,6 +17,7 @@ S = "${WORKDIR}/git"
>>>    COMPATIBLE_MACHINE = ""
>>>    COMPATIBLE_MACHINE:rk3588s = "rk3588s"
>>> +COMPATIBLE_MACHINE:rk3308 = "rk3308"
>>>    PACKAGE_ARCH = "${MACHINE_ARCH}"
>>> @@ -26,6 +30,19 @@ PACKAGES = "${PN}"
>>>    ALLOW_EMPTY:${PN} = "1"
>>>    do_deploy() {
>>> +	:
>>> +}
>>> +
>>> +do_deploy:append:rk3308() {
>>> +	# Prebuilt TF-A
>>> +	install -m 644 ${S}/bin/rk33/rk3308_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3308.elf
>>> +	# Prebuilt OPTEE-OS
>>> +	install -m 644 ${S}/bin/rk33/rk3308_bl32_v*.bin ${DEPLOYDIR}/tee-rk3308.bin
>>> +	# prebuilt tpl
>>> +	install -m 644 ${S}/bin/rk33/rk3308_ddr_589MHz_uart0_m0_v*.bin ${DEPLOYDIR}/ddr-rk3308.bin
>>> +}
>>> +
>>> +do_deploy:append:rk3588s() {
>>>    	# Prebuilt TF-A
>>>    	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
>>>    	# Prebuilt OPTEE-OS
>>> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
>>> index e79c471cf5ce..54f0b7406dd7 100644
>>> --- a/recipes-bsp/u-boot/u-boot%.bbappend
>>> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
>>> @@ -1,8 +1,13 @@
>>> +SRCREV:rk3308 = "2173c4a990664d8228d4dadd814bd64fdc12948f"
>>> +SRC_URI:rk3308 = "git://source.denx.de/u-boot/u-boot.git;protocol=https;branch=master"
>>> +
>>
>> NACK.
>>
>> You have to remember that u-boot%.bbappend applies to ALL u-boot
>> **prefixed** recipes, including in other layers. At this point, I would
>> suggest to create your own recipe? Or at the very least have a
>> u-boot_%.bbappend instead?
> 
> I think I suggested the recipe name change last week (perhaps not in a patch
> specifically)?
> 

We can have both bbappend, one u-boot%.bbappend and one u-boot_%.bbappend

The current content of u-boot%.bbappend is probably fine-ish because we 
are only setting extra variables in EXTRA_OEMAKE. They can be overridden 
by passing it a second time IIRC.

We anyway need trusted-firmware-a or rockchip-rkbin to even have a 
bootable image so the INIT_FIRMWARE_DEPENDS thingy seems fine as well.

The DEPENDS:append are more arguable.

But changing the SRCREV and SRC_URI in %.bbappend means that you force 
all u-boot recipes of all layers for an rk3308 board to use that SRCREV 
and SRC_URI. For example, I have a downstream vendor U-Boot I wrote a 
recipe for, with that, it's overridden if I don't use an override that 
has a strongest override than rk3308 (so likely only the MACHINE name 
will be able to), which is a bit surprising. An example for a Linux 
kernel recipe only supported by one of our modules based on RK3399 
https://git.theobroma-systems.com/yocto-layers/meta-theobroma-systems-bsp.git/tree/recipes-kernel/linux/linux-tsd_4.4.bb.

> Doesn't the ":rk3308" OVERRIDE protect us here?
> 

Only for other SoCs but not for boards with the same SoC.

>> Considering that v2023.10 was released a couple hours ago and it seems to be
>> what you're targeting here.... Maybe wait for it to be added to the master
>> branch of oe-core or add it yourself? Then no need to do anything in
>> meta-rockchip :)
> 
> I guess... :-)
> 
>>>    # various machines require the pyelftools library for parsing dtb files
>>>    DEPENDS:append = " python3-pyelftools-native"
>>> +DEPENDS:append:rk3308 = " u-boot-tools-native"
>>>    DEPENDS:append:rock-pi-4 = " gnutls-native"
>>>    EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
>>> +EXTRA_OEMAKE:append:rk3308 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3308.elf"
>>>    EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
>>>    EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
>>>    EXTRA_OEMAKE:append:rk3588s = " \
>>> @@ -12,6 +17,7 @@ EXTRA_OEMAKE:append:rk3588s = " \
>>>    INIT_FIRMWARE_DEPENDS ??= ""
>>>    INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
>>> +INIT_FIRMWARE_DEPENDS:rk3308 = " rockchip-rkbin:do_deploy"
>>>    INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
>>>    INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
>>>    INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
>>> @@ -23,3 +29,8 @@ do_compile:append:rock2-square () {
>>>    		cp ${B}/spl/${SPL_BINARY} ${B}
>>>    	fi
>>>    }
>>> +
>>> +do_compile:append:rk3308() {
>>> +	mkimage -n rk3308 -T rksd -d ${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin ${B}/idbloader.img
>>> +	cat ${B}/spl/u-boot-spl.bin >> ${B}/idbloader.img
>>> +}
>>
>> NACK. Same reason as the SRCREV/SRC_URI override.
> 
> Doesn't the ":rk3308" protect us here?
> 

Only for other SoCs but not for boards with the same SoC.

>> Also... This should be handled by upstream U-Boot already and if it's not,
>> we should patch it. I believe what's needed is simply:
>>
>> ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin
>>
>> added to EXTRA_OEMAKE, the same way it was done for rk3588s?
> 
> I'm just following the U-Boot documentation:
> https://github.com/u-boot/u-boot/blob/master/doc/README.rockchip#L40
> 
> Perhaps the U-Boot build already does the mkimage part, but the cat'ing part
> is definitely not done by U-Boot's build and is required to work.
> 

AFAIK, all Aarch64 SoCs from Rockchip are using the new mechanism 
(binman). You should have a u-boot-rockchip.bin at the end of the 
compilation step with everything needed in there.

It seems the TPL isn't enabled for RK3308 and also the sdram driver is 
very minimal and probably doesn't do any DRAM init, hence I think you do 
need the blob from rkbin.

Surprisingly enough, CONFIG_ROCKCHIP_EXTERNAL_TPL isn't selected in 
Kconfig for rock-pi-s but should, based on that fact. This then allows 
binman to take the blob from ROCKCHIP_TPL variable and create an already 
valid u-boot-rockchip.bin without needing any additional work.

The doc/README.rockchip is very outdated though and predates the 
transition to using binman for the entire process....

We should probably fix this. But I guess those aren't the kind of 
patches we should be interested in maintaining in meta-rockchip so fine :)

Cheers,
Quentin

