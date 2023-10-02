Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B729E748F6
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 16:17:25 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.88])
 by mx.groups.io with SMTP id smtpd.web10.86496.1696263442086562899
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 09:17:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=W5oERhnL;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.8.88, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cDN9YM+g87bJuPVGTJfuv/mN1slt70a360M8ZV8lKH3S8O06riX7c728pulmC1snvpdmQPsETuH1o/q2F+gVqqpFzL02b25icCN5ykDq1VMq8K/iUSPz5L5x2giknsThVx+edJTE/1T4RDVFXErp+Bj4R/S3c+s0mVNQXU3Le9Kl8xXaGLtMV84wIJICjFoB2lRMIdaMJlnmOfSpJynZp9xGXpzgrSTk24ixkwX08PQ4COBbwwlwncwl2YARZCjeCvQGJCuejgGX8SCFnMNU6kOCKdUhnhOGgA0ttiRjeAn/wcTLYdI02fq3MG9sYadQnb5SuPr2o/R8sYqrIhKkzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/6Jj3i3/fTt7CfssT8rCcF/RX+sa9Iy2klXOdARPDM=;
 b=dKbQBGXasiPSyw/F1EoA6NP5ghnfajnKqqFPEkbP8lfxKQ5Ah5USNN0zUipu+DgE4TsB6mHTXUefGl3hy1FJV7ILU6YFnxbFHHNV3mfm4pk199tZJE9NgFBK88peCazcjqFKIWPXWvdFq4QbE1feGb+NxTd2YssvFnEuNQ4VbXaVOUiUb96neWr5V6hvHdZtCX+Lo6WMl0+TrrUtyNzknsU1rH1AwmRfmf+JIBPT69sov+BDmLtWlxocu+fTwIzY1ftLnabOGyWDP6O293rrWnjVYiXlTIsEsOA9rd5B/DnAGKZiWIh5n1/BRHFzHjBbBMvSkh3C224yBrHieYGbLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X/6Jj3i3/fTt7CfssT8rCcF/RX+sa9Iy2klXOdARPDM=;
 b=W5oERhnLEJnvpaKhSa9aPjirE+93IOK8qpkiOPvhIlFhfEyzA/QE7LaQ0a3uzgART3vj/U+AZW/OakG9WPP0V7u8IfMAuXW14/1HPngWbxmbwCfrP3Z3DnjF/v3ITJv2z66vZ/wE3sxuH2CHEWwNMCux+REwpcYexQrMEB2ogruQAGHk0avMl6ruWOOcHsQPijdlNcNmw4wOF8mF6Err32kkWcYwphsImkuHk6Z6jEqMLEpxFO3n87vICDFgyGmX/4UuFAjlt7J+ewoglRADUUWeqd0RxHQpOWcw4/yQncvpJvMVRpKYcZBt4OGBjXuz9sk5lXG7MT99OI1WEF7awA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from AM9PR04MB8539.eurprd04.prod.outlook.com (2603:10a6:20b:436::10)
 by DU0PR04MB9347.eurprd04.prod.outlook.com (2603:10a6:10:357::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.29; Mon, 2 Oct
 2023 16:17:17 +0000
Received: from AM9PR04MB8539.eurprd04.prod.outlook.com
 ([fe80::2702:dd67:198c:80f4]) by AM9PR04MB8539.eurprd04.prod.outlook.com
 ([fe80::2702:dd67:198c:80f4%4]) with mapi id 15.20.6838.030; Mon, 2 Oct 2023
 16:17:16 +0000
Message-ID: <2d966caf-f8b7-6200-0adc-d6c434c6c0ec@theobroma-systems.com>
Date: Mon, 2 Oct 2023 18:17:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip][PATCH 3/3] rock-pi-s: add
Content-Language: en-US
To: twoerner@gmail.com, yocto@lists.yoctoproject.org
References: <20231001130803.18662-1-twoerner@gmail.com>
 <20231001130803.18662-4-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231001130803.18662-4-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0082.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::9) To AM9PR04MB8539.eurprd04.prod.outlook.com
 (2603:10a6:20b:436::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8539:EE_|DU0PR04MB9347:EE_
X-MS-Office365-Filtering-Correlation-Id: bfb676ee-c9c2-4252-d750-08dbc3630bb4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	nvceMmFs9qISbCygfMraWNvKwHiF4biB2efOQrSgNWoLEryNm5RT/6f3wL2ccbv5mmmt9q85sHWVPexj8lyHrcvMfBVGzQiUsHguq8oruA8xAtC39PJXmbz6P+sUzxrymau283YTQL0R09+hakYMqXnQ97fg+/XV35Qm4mzU1b6MfdLi9ChV3QXlYZsBzzXLUA7yspPszM4Nq4Sm7PH6qifxBLFOISGMvnaN1gEKsK8ugSd0lC7qJtNzArOH8GXrmLVWaMGmWKkMVLK4TZ/4aryiT3sGoQPU1iXdHA8FFMwc9H84A2eVJhomAVMp5NQUN2sLilLo5exwgY6fe7TqCR+GsLLV/iNUBnAHFmTpYwUqvpK0BhnUvXKvKitwl/XVqUcmFStCQXaENrsY7peteeMpQQ3iwSL/1fCBJA6GThESjmrrr1ZbgWEMGvUViIu9iqyJdScZUF1Vd/aVKv0iNHnUogunSiQ/IFkw9/BLwmHW/ir3LGr3F7gM90spVCMMkJk/HM1re92jKpDnayjvAc/g6IyDCIFgGWZI2j/br7D1BijUEVGKGTkjhuo1RojjdS+wXMLO5CBM+nlWB/u87aWzdoqO160KT1Hn0iqW9tNNUgpEqk7ianBWZjT3HWiZqjgGvIbvIULQ0MyVJUkhfA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8539.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39850400004)(396003)(346002)(376002)(136003)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(6486002)(478600001)(36756003)(5660300002)(44832011)(53546011)(6506007)(2906002)(66476007)(8676002)(8936002)(31686004)(66556008)(66946007)(316002)(41300700001)(6512007)(2616005)(31696002)(86362001)(83380400001)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WlRKRHhJUS9oSnlxY0lGOFlwbGxkcGk3VGRBMkI3WFhpNWpQTTg0R3ordXB1?=
 =?utf-8?B?blh3SEUyVTJtSlFxeFRJTWZQc2lHMEhhY3FlN2IxdS9XQmxyU1VsZ1dOUm9E?=
 =?utf-8?B?cmlRWDlBMHVWLzNvNGZkeVU3ek9JUHR2cVlTRnRNSkdFTmlWTFg2TlpBTnFM?=
 =?utf-8?B?YUtKS29VNTBjd0pjZVYreDM5NG1GOFRFc3hFcjNHUHUxNDBCd2t4NFlHaWh2?=
 =?utf-8?B?TjBiZUlUZVZBNkxXYjBBbzFTY3BZVkVHRFNNZHdVVnpJazB4dG54SDE1SkYx?=
 =?utf-8?B?R0tneDFjS2J1OXVnRkpnSGk4UHd4Q0JtSXpDTW1vMWRLUmNuWmdXQ1VxazBk?=
 =?utf-8?B?TENSOUx0UGcySjU1VVlydFllYm1nY0RMQXk5Q1FCSCtxSGppV2JqdTZYZlFI?=
 =?utf-8?B?UVFHWERhSVpKU3pMME9ZYS9KVS8zcTloN1dNMmFzZVZLSVBDZmppUjhKQ2tr?=
 =?utf-8?B?NEI3cGNGa3pVMnhNT3B5MWRjM0xFR3RaSUxjaU9hdGdlSEREbCtWcFZXRjZt?=
 =?utf-8?B?bmtOYzA0dGVUcDUvbklxdStFQUVxZWxDeXhla2RhNTV6Y0RwdWN0QzliYm5i?=
 =?utf-8?B?dTVOblErY0FWRS92cGxlNm1xTW5IVys2T25uenZSQW5QOHJKMjhZTldPNGtL?=
 =?utf-8?B?b283eHN0bFliWE5HT29uNGxzZEh6WmgwbGRmSHhGU3h4OUN1TWFzMiszR2dn?=
 =?utf-8?B?ZkljZzBuRXNJK1NSZi9hZkxvbE5DbHdSbzBWTVFyQ1BQWW1MT2pzMFJYeHlH?=
 =?utf-8?B?VjdYUmkxbTgzaXNiVHQ4d2VxemJVU2NyVUpiV25qZWVjZU9tWW5renVuRkw4?=
 =?utf-8?B?eTV4Y0FrM3k3UzQ3VWFSbGVYSm0vQlpuL2JSRGp5VGM3NU5VOUNzMnB2cW5r?=
 =?utf-8?B?MlNNT1BRRXBCOUlTQnBzWENBcGszeXJIQXM0U05vME9EUFA2c2JtZitZdFV6?=
 =?utf-8?B?SDM3S29Fa2RPSEZtdUNpMVNFVjNJQ0tBU2ZyT24vL3lSNkRoYXBLOGkyTU04?=
 =?utf-8?B?S3RVYlJZSjYyNlhvT1RUQ0d0SFFBMklUUytKdVBtM2tmRzBtdEEyNGpldDNh?=
 =?utf-8?B?STB1c2dxQmZPYTR6UWpNUDlpNHd3RVlrcGJ3c2g5cm9TNTFoMjEyYjA2SEVX?=
 =?utf-8?B?djBtMVNOZW9zeVhqbkNNMnVUakZVOVNFVHRjVEZNY0RSTThRSzIxeGdZaFRJ?=
 =?utf-8?B?MlhwanQxdzI1eEVYL2NuVTYydnhnMkJwRXg4dFRLMEdWR0M5dTBsQXRVV2pM?=
 =?utf-8?B?OW1pU3poMjlxTTNEbjlzY0dPVmdsWGp0ZGxwOTNQeDIvUFFJSVJlQzBuMEVj?=
 =?utf-8?B?dUJxd1c4TGh0VTlEZTJlY3dKSHd1MEtnY0lEUVM5eXdESWNzUmUvUmVxYmo1?=
 =?utf-8?B?SHphbG1FNlBDRWVNZ3lBdVdEZXBsdG9KZm56cEV0ckpkT3VxQlY1cmMxZnBp?=
 =?utf-8?B?NkZqcW5QOVlBUGY2TjZ0L2lvTWd0N0JiUE9Kd3Rrb3RmRFhMQzNSVmJlbnEx?=
 =?utf-8?B?dUpHdTBiU1dUZVlZdlZQSDVzbWN0amZLWDEzRE9GNE5zSXhzeFFTaXFIbGEv?=
 =?utf-8?B?VVRNZlh5RlR6Z293eUh6UDJ0ZlNYMXZyUkZuWDFxWFNkVU9paFdjRWJmUFdH?=
 =?utf-8?B?OWtVOGx6NERWM3ovc0l2NGt1ZWtXMFIzUmVuRkNaNmdLcHFnZWlLaU0yc0Fj?=
 =?utf-8?B?YUJXSlpDNCtYdG1PRGJIMlVpVDUxUGZ5ZkZkQlNRb0ZkZzNhZTk5RFpPREl0?=
 =?utf-8?B?VGNqdi9uNU5kdDIzd2hVZ1NTMnBDTldmWnpveFMwOUR2NXVFVElvT001V2xv?=
 =?utf-8?B?YVBPUE1FK09yeUR5YWFwZ2o0Sm9QQ2V4Ri91WUZPNXVuQXVxODNlOG1GRHcy?=
 =?utf-8?B?bGg5Q1Z1UHdmK1dnRXd0THdsREMzSSswZlJscHRPVnI0ZElPTUtSc1d6UHJa?=
 =?utf-8?B?ekZYZE9CN3g2blByWGxSZmNCZ1h1b2FBdExUbzBLYmFXSWhEeitEUW52YkZw?=
 =?utf-8?B?cngwSUdnZHNMVWlBL0U5K0pydmIxa3RoRkNYcjU1UkdZbUVUV0h1ckdVd2hM?=
 =?utf-8?B?aDB3a1lpMXliVnBWeXBSN1VraVBlbXM4WHJOTFhneXRUalFRbDRMZkhwZEdR?=
 =?utf-8?B?ejFtNnBIM0NJalVndFplS3BLWHU0SjNDYnpUdmVZK0R4c1RTQnl1cTlDMDJV?=
 =?utf-8?B?Z2R0Y05BK1dtNkY3b1ZjNTVPRHpDd2NkRzByT0oxRGpKRkxHNEhwRWNVWmRV?=
 =?utf-8?B?ZU1qQUFPN2MvbWJnQXRuand2MDhnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfb676ee-c9c2-4252-d750-08dbc3630bb4
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8539.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 16:17:16.9604
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D8ArjsmSLnEOVJWUwsidOJAOGBs4oO8uLjE+U82QZsMNlXTyqFsZFX+H6oWo6txZE5xPOZTcG75GUN3f5lhAtAjUUMq1AQLV9wWkPJLmWo4cQTf5ozsYcmzZDsH3aLeK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9347
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 16:17:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61196

Hi Trevor,

On 10/1/23 15:08, Trevor Woerner via lists.yoctoproject.org wrote:
> ROCK Pi S is a Rockchip RK3308 based SBC from Radxa. It contains a 64-bit
> quad core processor, USB, ethernet, wireless connectivity, and voice
> detection engine in 1.7-inches square. The ROCK Pi S comes in two RAM sizes
> 256MB or 512MB DDR3, and uses sdmmc card for OS and storage. Optionally, some
> versions of the ROCK Pi S provide on-board storage via 1Gb/2Gb/4Gb/8Gb of
> SLC NAND flash.
> 
> "S" stands for "small square" since the total board size of the rock-pi-s is
> 1.7-inches square.
> 
> This BSP assumes booting from sdmmc, and using ttyS0 for the serial console
> (similar to Raspberry Pi).
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   README                                      |  1 +
>   conf/machine/include/rk3308.inc             | 18 ++++++++++++++++++
>   conf/machine/rock-pi-s.conf                 | 11 +++++++++++
>   recipes-bsp/rkbin/rockchip-rkbin_git.bb     | 17 +++++++++++++++++
>   recipes-bsp/u-boot/u-boot%.bbappend         | 11 +++++++++++
>   recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
>   6 files changed, 59 insertions(+)
>   create mode 100644 conf/machine/include/rk3308.inc
>   create mode 100644 conf/machine/rock-pi-s.conf
> 
> diff --git a/README b/README
> index d4576d73c636..e815fb47ff5f 100644
> --- a/README
> +++ b/README
> @@ -31,6 +31,7 @@ Status of supported boards:
>   		firefly-rk3288
>   		nanopi-r4s
>   		rock-5b
> +		rock-pi-s
>   	builds:
>   		marsboard-rk3066
>   		radxarock
> diff --git a/conf/machine/include/rk3308.inc b/conf/machine/include/rk3308.inc
> new file mode 100644
> index 000000000000..19cabafdfac0
> --- /dev/null
> +++ b/conf/machine/include/rk3308.inc
> @@ -0,0 +1,18 @@
> +SOC_FAMILY = "rk3308"
> +
> +DEFAULTTUNE ?= "cortexa35-crypto"
> +
> +require conf/machine/include/soc-family.inc
> +require conf/machine/include/arm/armv8a/tune-cortexa35.inc
> +require conf/machine/include/rockchip-defaults.inc
> +require conf/machine/include/rockchip-wic.inc
> +
> +SERIAL_CONSOLES = "1500000;ttyS0"
> +
> +KBUILD_DEFCONFIG ?= "defconfig"
> +KERNEL_FEATURES:append:rk3308 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"

I'm starting to wonder if we shouldn't make this a pn-linux-yocto (and 
other flavors) override as well because we would make it difficult for 
other people to NOT include this. e.g. if they have their own recipe 
where KERNEL_FEATURES is used for example. Anyway, not specific to this 
SoC include file so not a blocker.

> +KERNEL_CLASSES = "kernel-fitimage"
> +KERNEL_IMAGETYPE = "fitImage"
> +
> +UBOOT_SUFFIX ?= "itb"
> +UBOOT_ENTRYPOINT ?= "0x06000000"
> diff --git a/conf/machine/rock-pi-s.conf b/conf/machine/rock-pi-s.conf
> new file mode 100644
> index 000000000000..79ea73c6b47e
> --- /dev/null
> +++ b/conf/machine/rock-pi-s.conf
> @@ -0,0 +1,11 @@
> +#@TYPE: Machine
> +#@NAME: Radxa Rock Pi S
> +#@DESCRIPTION: ROCK Pi S is a Rockchip RK3308 based SBC by Radxa. "S" stands for "small square"
> +#https://wiki.radxa.com/RockpiS
> +
> +require conf/machine/include/rk3308.inc
> +
> +KERNEL_DEVICETREE = "rockchip/rk3308-rock-pi-s.dtb"
> +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +
> +UBOOT_MACHINE = "rock-pi-s-rk3308_defconfig"
> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> index 7fefb017053b..49e1e682eb7d 100644
> --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> @@ -1,9 +1,12 @@
>   DESCRIPTION = "Rockchip Firmware and Tool Binaries"
>   LICENSE = "Proprietary"
> +LICENSE:rk3308 = "CLOSED"
>   LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
> +LIC_FILES_CHKSUM:rk3308 = "file://README;md5=39cc9df955478b8df26158d489fdcc95"
>   
>   SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
>   SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
> +SRCREV:rk3308 = "e65b97b511f1349156702db40694454c141d8fe2"
>   

Could you please say a few words about this change? It seems that there 
are still binaries for it in the SRCREV we already point to. I assume 
newer should be better (though it's not always the case), so wondering 
what's prompted this change?


Oooooooh, there is no TPL with uart0m0 support anymore... honestly not 
sure it's a good idea to stay on a old blob version just for that? I 
assume you should only be missing the uart in TPL but the moment you 
reach the SPL the console should appear, doesn't it?

>   PROVIDES += "trusted-firmware-a"
>   PROVIDES += "optee-os"
> @@ -14,6 +17,7 @@ S = "${WORKDIR}/git"
>   
>   COMPATIBLE_MACHINE = ""
>   COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> +COMPATIBLE_MACHINE:rk3308 = "rk3308"
>   
>   PACKAGE_ARCH = "${MACHINE_ARCH}"
>   
> @@ -26,6 +30,19 @@ PACKAGES = "${PN}"
>   ALLOW_EMPTY:${PN} = "1"
>   
>   do_deploy() {
> +	:
> +}
> +
> +do_deploy:append:rk3308() {
> +	# Prebuilt TF-A
> +	install -m 644 ${S}/bin/rk33/rk3308_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3308.elf
> +	# Prebuilt OPTEE-OS
> +	install -m 644 ${S}/bin/rk33/rk3308_bl32_v*.bin ${DEPLOYDIR}/tee-rk3308.bin
> +	# prebuilt tpl
> +	install -m 644 ${S}/bin/rk33/rk3308_ddr_589MHz_uart0_m0_v*.bin ${DEPLOYDIR}/ddr-rk3308.bin
> +}
> +
> +do_deploy:append:rk3588s() {
>   	# Prebuilt TF-A
>   	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
>   	# Prebuilt OPTEE-OS
> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> index e79c471cf5ce..54f0b7406dd7 100644
> --- a/recipes-bsp/u-boot/u-boot%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> @@ -1,8 +1,13 @@
> +SRCREV:rk3308 = "2173c4a990664d8228d4dadd814bd64fdc12948f"
> +SRC_URI:rk3308 = "git://source.denx.de/u-boot/u-boot.git;protocol=https;branch=master"
> +

NACK.

You have to remember that u-boot%.bbappend applies to ALL u-boot 
**prefixed** recipes, including in other layers. At this point, I would 
suggest to create your own recipe? Or at the very least have a 
u-boot_%.bbappend instead?

Considering that v2023.10 was released a couple hours ago and it seems 
to be what you're targeting here.... Maybe wait for it to be added to 
the master branch of oe-core or add it yourself? Then no need to do 
anything in meta-rockchip :)

>   # various machines require the pyelftools library for parsing dtb files
>   DEPENDS:append = " python3-pyelftools-native"
> +DEPENDS:append:rk3308 = " u-boot-tools-native"
>   DEPENDS:append:rock-pi-4 = " gnutls-native"
>   
>   EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
> +EXTRA_OEMAKE:append:rk3308 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3308.elf"
>   EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
>   EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
>   EXTRA_OEMAKE:append:rk3588s = " \
> @@ -12,6 +17,7 @@ EXTRA_OEMAKE:append:rk3588s = " \
>   
>   INIT_FIRMWARE_DEPENDS ??= ""
>   INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
> +INIT_FIRMWARE_DEPENDS:rk3308 = " rockchip-rkbin:do_deploy"
>   INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
>   INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
>   INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
> @@ -23,3 +29,8 @@ do_compile:append:rock2-square () {
>   		cp ${B}/spl/${SPL_BINARY} ${B}
>   	fi
>   }
> +
> +do_compile:append:rk3308() {
> +	mkimage -n rk3308 -T rksd -d ${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin ${B}/idbloader.img
> +	cat ${B}/spl/u-boot-spl.bin >> ${B}/idbloader.img
> +}

NACK. Same reason as the SRCREV/SRC_URI override.

Also... This should be handled by upstream U-Boot already and if it's 
not, we should patch it. I believe what's needed is simply:

ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin

added to EXTRA_OEMAKE, the same way it was done for rk3588s?

Cheers,
Quentin

