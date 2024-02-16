Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 650B1C48BEB
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 10:06:19 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.118])
 by mx.groups.io with SMTP id smtpd.web10.15525.1708077969452423952
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 02:06:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=cIpbeU/O;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.6.118, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jOePU8dr/fGOGVbHSxGBr7xZEN6G/5wxyVZEisHRzlqJHho+H6nyvENFxgdTWPI/pvGmca9wrUgkZ8JG8BhIgEUjjIyWWiQl6b8TnN/wqCR9+vF4iEMpX4fPSt8HQlo6/0cVL3zmmzph2OhV/wjmuMSvuPoqjIIHQClx7QUZw37VmYPCvR2xf1EOCfyIkU7siqpZAbeIeVR0pxMy4kI5nTu5cc/8NOi3GMWP0hFdv3iTq8gqFCubhLkp7yxyUlVeAIIXaOu3pMoNcDGlYomU832EUL/izuyccDaYjA9l8IvOOaXZl+lXg/Sh8taNTglSYCKnEwNsraaOYtl03Ibf5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z5C2yzIp+cPxXSHxvCGG12gdBagQ5txQj0esCKsK63g=;
 b=LEOcej9oirxL2UvKaSj1rYPapUM0aX8BhKxyogQFhRz7lBLIm1DQa9ks+2oQlJSlR9w1Tj9VcK4OrxyyD6qMULnOgdcrN4XeooyvQISLuJsaaqs3Z16Wq4Ye7vXmFiGd42x3esSQ4o4I9E+oLRWuWFovMZEkBhPmerqm1SzpKLy7GkTyG3P2UHdjKTY7G0VqWxZf9W8nMTSCATn4CTyikiCpq9FkA69JB7ZPuSGAn1K/3TxN5Itf4G0UF5tjs7H77NCERExW/moFHuMregnQeHV51mPaF7KnxJF34Z2qdHKcewWFdihKacpWlr68vBrsl3NutAzzm2ArjVn4cpRVqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z5C2yzIp+cPxXSHxvCGG12gdBagQ5txQj0esCKsK63g=;
 b=cIpbeU/OGiiB4mVqcJBEwUy4WXzZmvH1SjwGzEXZDa0Zt281tQ0kygLIYqBb+ioWdcPQyYI+QXTuRmxwmLNQJCKKYWp3F60xHnNn8NZxHP7EZKfZI9noAMTEA5ZoZvXYOqYgPfaUnvzJD1DUAMqGxw4qmxdH8b559DHCzQvbtYFOjfGDqgCc82bIE51Cb+HjP2BL0nAWy3pzMO3kxtYFhWQTTeq14F1gNlFpUmtGQX4oiI9t+SwZToq0Q4Vp+e2DkffXuE0uy6g9i1l6vwY3trQ3wloWqzvWnPB8xL/bkc48hA/MYAZ16ickGH6WrHsspaZ52ToOFE6r9W2LbIdfCQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DU2PR04MB9148.eurprd04.prod.outlook.com (2603:10a6:10:2f7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.29; Fri, 16 Feb
 2024 10:06:05 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 10:06:05 +0000
Message-ID: <82d5fc9b-2490-4942-8b31-13dc709ad121@theobroma-systems.com>
Date: Fri, 16 Feb 2024 11:06:03 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH v2 3/4] remove /boot partition
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20240216082922.7873-1-twoerner@gmail.com>
 <20240216082922.7873-3-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240216082922.7873-3-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0107.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::10) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DU2PR04MB9148:EE_
X-MS-Office365-Filtering-Correlation-Id: c96eef93-28f9-4fbf-a835-08dc2ed6e355
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WR3MqEvSkcmQG1y4Amn+WU3NspHN/qz5rz8wT0oiIQp6mPhaO6oRpp/q1pB2si/qQ79WmCxTzzuW/4rIipso4HqYhJwcvlrRr3EYhdpnJnQSD23OAv5Lm4PXRg+QHG6wppB7bVDtpYP1mZPXJgmNE3Uh/pEK/XrMegTTWF+3gRWBrR0vx9TMFScM7LW9UTG1QD39q5KIxogX1Wp6hDKBdF4mLUvKb9bm2wu9yFdHC98ZdWDAwiioUVZUnwoAc7hkYOZlz2H45/xLVhM389TN6u3F2jlDYa728NLumCuPccyQVEEUedPWjpqLhHVQCzLsC5vEQsI3d9eWt64K9tku/gdf+ap9NuuvqJufymOYt7Eegq9+nZfPLVdbljcnEv8VyMqLEvTJ8ZjZJJ7BeR4mLG+WzyAXxjOhBjKlgiuwpGO/AJlMJN5M7hgDtCWPGuTGsO7ss26WhsWvSsSMJgFUkwXEAswM32Kb5comZhEG0qedm/Lm65HLz4YkcxawvbXmLNCCJ3S1LkHLaBL2W+GhNZSLNZlTE5Yq9gi+D+M39Zs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39840400004)(136003)(346002)(396003)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(36756003)(31696002)(86362001)(31686004)(44832011)(8676002)(8936002)(66556008)(66476007)(66946007)(2906002)(5660300002)(83380400001)(38100700002)(41300700001)(2616005)(53546011)(316002)(6512007)(478600001)(6486002)(6506007)(966005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aVFsOUNwTkVpNi9hSXgzdkZ6cFo2VEhCaUJ5cXBnV3B0cDh6N0RUaEc1eEpG?=
 =?utf-8?B?R1F5VW5STGRwcXRIMlBDZlQzdFpnaUEzMzROcEJGQTdPUnZ5dWQraStwV0VV?=
 =?utf-8?B?WEZTK1VVMjFIYTVZYWd3dTNReFlxVy84akI1K0E3N3hVRk5wZkUxb3M1aDRz?=
 =?utf-8?B?WEN0dkFqajA2YXd4YnRCR1I0TitsOXVGVUZ2Qk5JSE9tRkozbG9VUy8zTnpj?=
 =?utf-8?B?aHlwQUtHQVJ3MUh3czZHVUpwUDJTMTFMUFVET2lRaW9jL0ZDSGxLY0tySHd5?=
 =?utf-8?B?bUlMa1BiRXRIRmNMa0lOb2FYYUw0NGl1bmh2VFY2dHVmTVBzbUNoK0lKS3hp?=
 =?utf-8?B?T3ZUc1Iya1RCZjl3UGh1dURsQ3NuVjUveGRvMEtkcXdWWjhyR3Rkb0p5cGVS?=
 =?utf-8?B?SVJWNW10T0tGVzVCV1FEQUlCRm52d1pHenpOWUh3MmJTUGM0ditPeWZaOTFm?=
 =?utf-8?B?QlJhRVhnZzNOb3FBTitMUzMxRERYS2Y3bExrWk9QUlBiWlpqRXJzeEhwRTJk?=
 =?utf-8?B?a2I5MkdXdGY4TWRIWFlZSGw2WGRlTk1KKzdzV1JvQTN1UDhRS0JXTmh4d3RJ?=
 =?utf-8?B?SHhQYUhRcGtKaE9ON3ZQejZtWE1pTUZCNk9wdWFKYll3bUdKVkhoVmlvYW1W?=
 =?utf-8?B?bk5rMzFkVnBzWHpxWlNoOXF5aUhBSHdsTEJtYVdKOFdQY0RXbnpBUWJncHFU?=
 =?utf-8?B?V21vdU1tUi9JNlYzbXIyYzdFSzQxSGtPK2F0ZDVJQlpiVlRWWnU0V2lPaVZB?=
 =?utf-8?B?WEdKUjBaWkt4bDlReUVVanFVWDhRVGVsMUxtL3RPdjlpLzZwTXBod3ZkaTg0?=
 =?utf-8?B?YnhFTkxnZGVtcWFjYXJER0U0Kzk3MFh6TE1oYlRiYWo4OHhBam1tYTVOZ05F?=
 =?utf-8?B?dGdCSmlXMzVvTXJXdjl1R21zYUNaUzZSY2duNG1EalNOdkpValpzQndhcHJN?=
 =?utf-8?B?MVowUlM1eC9ud0Zqd1g1U09lS2Rrajl0cVR2SnJOZUh5L2QzRUZNeE03S3Zk?=
 =?utf-8?B?S0dYVC9nWkxlYTdhQUx6MzE2ajI4WHdYZ1VDZ0ExU1Y3YmxKREE0N2ppbFBM?=
 =?utf-8?B?U3owSmNKT1Q3SngxSmhVT0x5WTlMQW1pTTBmZndJM01pNU9iZEdBeDVHa2RV?=
 =?utf-8?B?bjFVd0M0MXRTUW93bTRmNi9lK0RBL2Nnc0JDN1NrRWloNXNiUnc2TkRjdlBy?=
 =?utf-8?B?Vk5iVFlKVTZUU0RLaStsSzQ4ejAvUm1BRFMyK2pOclJSRGJhZUpJb3A0emxw?=
 =?utf-8?B?cDdZZ25TaFJZT1BHYVl5c3pUZndFRGI3MW1oeHpEMzBiaTlGMXBkbXhJRElU?=
 =?utf-8?B?Z1FsK1hNMHlIS3AwNHBxeE85OERBTEJXd0tYSkR5ZUdyY3RyTEwvRUxyVngx?=
 =?utf-8?B?N0NIcHh5VE9PcGNVVjQvMWJnTy9kbk53Q1dzSitiWWQ3VXhUamJaTyt1TWZD?=
 =?utf-8?B?WStyUXJwbzdyODc5MC9Wc1pZNmlFdGFHUmcrbEZxa0J2QkQrNmcxMldwRkhk?=
 =?utf-8?B?R1RLWkRhNEw1M0t2SDdmQWZWQWE1SzU2ZU9sNUJaTDdvVDhNRmFGeDBqSUpG?=
 =?utf-8?B?TXJFMXFKMnZnaGMxN2dtQ0VBdXlvZ2RTNUlRL3lCU3crdTVpQ09ObTdqSklz?=
 =?utf-8?B?dFB6SnNCVHl5dEs0NWlCaHhvV3lIdnl2MkhCOGlmc29DNTZLL0VjcjU2dVRH?=
 =?utf-8?B?dExmd1FFVUJRVFFZRU9rNHpOS0d3QWtWbzJYNEFQS28xTlMzUkdoTUVLcEhI?=
 =?utf-8?B?MTZ2c25LYjNYcWwveVpIazBNVVdEVlkwaFlMdG9Bdk10cXcwS2hoOEJ5RXg3?=
 =?utf-8?B?NTZqd21QanJ5T0RjVGVLVGxSdkFYOWxwWEZ0eUVqMWdWRnZwWFN4QWVMK2pT?=
 =?utf-8?B?S0huUkI1eTFxRDJvVzhGVkJNWDJtQ0E3RjRMbVNVR2pGbjBMa3hXVW4wYjNh?=
 =?utf-8?B?Q2tzc0lvanh6amZOblBSTXBYRmFGb0swa3h4NGpYSHRJRU1IYlROV0JXeVl5?=
 =?utf-8?B?QmorSEhDa2x6SWNkdmgzaGNOQ3FIWGNLcTNTazB6ajFXelp2cDlqcXlWQ0hX?=
 =?utf-8?B?UFlSVzgxa1RRTUV0WXRXRjVaM2FHUGRpNVBMRDFuOThQZjVPbVBLY0psMml6?=
 =?utf-8?B?aXVqUThiQXVVSzAzTkNjamhHME1jZ1NLSUdoSWZmWW9peWNxK0xJb1lFWFl6?=
 =?utf-8?B?eFlra1o5dlhNbTBzd09GWTdWU2w2a3ljeTBFOWtGQkZodGJrRm13MXVjaExv?=
 =?utf-8?B?NFZ5UXBobTlSWTFRNkNaRTJGVTF3PT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c96eef93-28f9-4fbf-a835-08dc2ed6e355
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 10:06:05.3150
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ccvZQz6JyB/SVr/XoZOYZ17S8+2EGW9JK5SvrRqkGf+i4wolURdbT6DriKfpaUj1lIUQWfLrDtaWhkN73sFvgXb1YgLwnNJOK9lyUTsd6U97KvmBPtm+p1IP/Hx9XSi9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9148
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 10:06:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62519

Hi Trevor,

On 2/16/24 09:29, Trevor Woerner via lists.yoctoproject.org wrote:
> In order to boot successfully, most Rockchip SoCs require a specific
> partitioning scheme which was defined many years (and many SoCs) ago. That
> partitioning scheme places the SPL and U-Boot at specific offsets at the
> start of the boot block device:
> 
> 	https://opensource.rock-chips.com/wiki_Partitions
> 
> The Rockchip partitioning scheme goes on to also define the locations and
> sizes of a number of additional partitions, including the "boot" and "root"
> partitions.
> 
> Since both the SPL and U-Boot have already been placed on the block device,
> the "boot" partition only contains the extlinux config file and the
> kernel+dtb/fitImage; it doesn't contain any bootloader artifacts (other
> than the extlinux config).
> 
> The location and size of the SPL partition is a hard dependency since the

Just because I like being pedantic, I don't thhink the size is a hard 
dependency. The location is (well there are a few possible though :) ), 
but the size is part of the header(s) that is parsed by the BootROM, the 
BootROM will only fetch what it needs as far as I remember. It's a bit 
of convoluted code but it's done in tools/rkcommon.c in U-Boot source code.

What we can say though is that the TPL+SPL has a maximum size, since it 
needs to fit inside the SRAM. But I don't think any SoC has been 
released by Rockchip that has 2.5MiB of SRAM, it's usually a few tens of 
KiB max only. Anyway, the message is fine, just wanted to give a bit 
more info there.

[...]

> diff --git a/conf/machine/include/rockchip-extlinux.inc b/conf/machine/include/rockchip-extlinux.inc
> new file mode 100644
> index 000000000000..3af7ed629e34
> --- /dev/null
> +++ b/conf/machine/include/rockchip-extlinux.inc
> @@ -0,0 +1,12 @@
> +UBOOT_EXTLINUX ?= "1"
> +UBOOT_EXTLINUX_ROOT ?= "root=PARTLABEL=root"
> +UBOOT_EXTLINUX_FDTDIR ?= "${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '/boot', d)}"
> +NONFITDT ?= "${@d.getVar('KERNEL_DEVICETREE').split('/')[1]}"

Maybe keep the comment explaining the logic of this line?

> +UBOOT_EXTLINUX_FDT ?= "${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${NONFITDT}', d)}"
> +UBOOT_EXTLINUX_CONSOLE ?= "earlycon console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8"
> +UBOOT_EXTLINUX_KERNEL_ARGS ?= "rootwait rw rootfstype=ext4"
> +UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"
> +UBOOT_EXTLINUX_LABELS ?= "default"
> +UBOOT_EXTLINUX_MENU_DESCRIPTION:default ?= "${MACHINE}"
> +
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "u-boot-extlinux"

Going back to the mail I sent a few minutes ago on the v1 (which was 
sent after your v2 was sent :) ), I have a gut feeling we need _RDEPENDS 
here and not _RRECOMMENDS.

Cheers,
Quentin

