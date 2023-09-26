Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9BECE8181A
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 11:05:11 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.82])
 by mx.groups.io with SMTP id smtpd.web10.16370.1695726305685209174
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 04:05:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=kNSVgZ6H;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.8.82, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R40q08GAj69xscuFdwZLxNbkvCLhBFmwi08kFuK8igwNgXd5k4xWWYnuDTMiGMiIlKdAt0E6Imh8cFpuHKKvppmkS9xcUB8x3WHVdcsOWkLyspI7Ncq4bkJJsBeS6sR1eZpu8OU2ZxU3dOputNnpE4OKiF+DJwghxAJ3F74HyLXGYon+hEdqCTMNcTE31qEveNI4a4wQgEnc/Ms3DrXWcHlkmtoK3UlN99rXs6N1J4FAkfWG7sfyke9lLi4GMUfi/2Fyec7LWdPtqhIKKaLxv3D2A7tA9/4Rd90XFYOVOg6KGH4ncyY6L+Axq/sKBbBTUFLRG6oYXjwpQ7+iRuhy4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iqp5tvbq94YqVIzNlsC8oImlYLd0J6ULYHqnNW2cZeE=;
 b=U7DrVgiL2DVMXTjqHCFgCY4ORhjNXN7z76VbuShhz4EYbwBpAKDIbjGNVVA40AuMmCkdVhaQmaQpDLkhkwGFm/Blp+qFBBndCNZsAVVI63qxaTGuqfUQ8/53SaFlHNon3vYN1LOvCpn2WIamqrX2YW8Vh+CY8o6Sy+zIHyJ8gIqgcsWojR7ILOX3d8SjVPGnS1irZR4ihgQqx8BUc5SZW9rnLreKD65MAwplui5eKEYzxHpqlZzPctU6Mp/cwCMLScARQe4Aw14VPeeYmF3+eZDs7aJtUkzzwuDtOz/Q6IaK4FMOtwYXE0BbbA1wmv2mdQk3Lph1OdleSkPHQQI21A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Iqp5tvbq94YqVIzNlsC8oImlYLd0J6ULYHqnNW2cZeE=;
 b=kNSVgZ6H/SuVMA5G/4ljV3cJg46NxK0Cy3nObC8n9/Lni+Q+mo2ulMY6KFFW2QcKuGS0i2WCk4A/EZS4xssV1f46SdzekOl+nbZxgJ5Nj3fRmWQBHCE1uGu33/Fv/gnxiFsyEHHsWNWYlN1Vi+BctBWnhISwPicPz5pG/wCiSO7MPSiLQ4ZWVp2/w3+uS6rmdcscqPzSkzmF4W3rLTjjXdKrwYU5gq/wNwi/EY5HgTS6fuYn0esYlYEw6RzJ+pOs1fKpTrf8AF1oEKEMWCXyXOxwjrAIJ/VTndaHqG2hdRcyzoQlJ31nEWgGRF3o4LK3sxeSbjpb4lK46ffaDOf4lQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DU2PR04MB8775.eurprd04.prod.outlook.com (2603:10a6:10:2e2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Tue, 26 Sep
 2023 11:05:01 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f%4]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 11:05:01 +0000
Message-ID: <5de89f99-9e97-acef-4f89-d478582d97bd@theobroma-systems.com>
Date: Tue, 26 Sep 2023 13:04:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override
 v2
Content-Language: en-US
To: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com
References: <20230926043657.3897658-1-anthony.t.davies@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20230926043657.3897658-1-anthony.t.davies@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0158.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::11) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DU2PR04MB8775:EE_
X-MS-Office365-Filtering-Correlation-Id: d95c61e8-babd-408d-fc52-08dbbe806da6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Q4XzMtGdMZprl7v9qE1iHzu2sGvqxE4hECu5azNYjnmy+EYnKF+Ma/1n1kjxAHve/AFVf2LNarerWlEl68UizU8y6BPN2WHma3ehiIAKe0B22L9bJQRz7hmb//NuRi4ZWarGz6UzgF1qkHb6/bXxNfkg053p8yI42LknHdmplqfG8RfqfeFNpGzxrzyBoh6Ti6WG98wrGvufJ/W2+G7zPCfzctn5mU2p8WSdlWxvQqurcuh3LQIsTX1cgd7rETBRx3NKPr2zm6aEZ2yQVdecL8ex/DaALsxQ6VEk+XmTJ5dUSe6Hn+Xppoa6NvKXT3RAyeRdCiyNp/SExwK48ntI5q4MsY2kB8sXzMMrbk12CcOL+ZMihFP9JbmvdTP3a1tgwSJiUPJXiv1jDchpnDeidqN/K5ir/AKs25f7MMfzm0ejQOCgaY9HJHaU3/M1t96kC2+k2XeQ8QCgg941sadRhXxgUs38pSztDnDeCwXQqxajhRriMRwQ6sMWMmN8j1Kp5A6omWHISAlJmn+7rRjY0m83M5LuMn7R5BuhcHQ1j8iuTpExZaHmYhxJ9P0uY1Lg9ImSlnuthHa8ji0ZXFc48JW6mjNgJPBNUKRL/4quntM0qz0Rj5dIYZbEUt8VBMoO
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39840400004)(346002)(366004)(396003)(376002)(136003)(230922051799003)(451199024)(1800799009)(186009)(31686004)(66899024)(5660300002)(83380400001)(8676002)(316002)(44832011)(41300700001)(8936002)(36756003)(4326008)(2616005)(66476007)(66946007)(66556008)(966005)(53546011)(6486002)(31696002)(6512007)(6506007)(86362001)(26005)(38100700002)(2906002)(478600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SFcrMDkrUUZ3K1A5MnVJK0g2Snpsa00raXU4VlVZdXBEZmVSakZKRVR3YS9S?=
 =?utf-8?B?R2krT3ozV1NMUEJzOW5UMDczcnZMcUdtRW5NajdpUnpwOE1UdEZrb0l4ZUZ0?=
 =?utf-8?B?ZlE5OTErRU1OWFBpYVBYZmU5TjdQL1dZcWxRZHh0MWRPTlY2N0RSN0VSdnBj?=
 =?utf-8?B?dURFQTNja2c5VzFHVGw1TzB6Zzl4VnFsUmtWWkJnMTQ4OHQrM2F4Q0Q4TjVa?=
 =?utf-8?B?OTUwS1NPVDVNbGFQVndEaHl0dkJ0SUxSWkdtWGRjd25CM2dhRnBXanJ4TXJV?=
 =?utf-8?B?WE16VHJzVjZSMmZJVEpVajVVdy85elRVVG15L3c2TTdPRlNKQmZJZ3RkcFNk?=
 =?utf-8?B?UVBZM2swN3dVQkNVYWJ2cmdJRVBubEh3ZVhvdjVZSkJOT2ZZSHk2SnJSM3Q1?=
 =?utf-8?B?RlVXTnNlVGxia1M0ekxZWjNta09rSVB4YVlQS285SXQ5WW41TE1rdGUvT0Jt?=
 =?utf-8?B?dDBPNXRLYXpLV1k1U0g3UWk0NFpsZkZJTGRVUUUzMFdLeXFxNFk5ckhHVkkr?=
 =?utf-8?B?c2VPK0s3SEZoUEtPVkdxTFFkeUtnM0lJenVZcFRZbHpXWlp3WGdWRFozTFRn?=
 =?utf-8?B?TERuU1pLVXhxUFdLL3YweWExQ2cwb1dvQ0NIcUhXV2xhVVRYN3dJenhLMjlk?=
 =?utf-8?B?U25RdXE5UXovbE02YWlIelZTZHgyT0xITi9YRHlEdGRlMDJMaWFlSFB5SWlG?=
 =?utf-8?B?ZUx6U1ZyQjM0TTVPbnRkaW9WdzN5c1dvOTBhSW5laVlIZVAwYVZoUFdtVmta?=
 =?utf-8?B?akhraDBoSlJNTTUwWnVGckFJTVVxbHM0MmRIMEtNVmIwanR4TXRFdXYzWkxr?=
 =?utf-8?B?UDJpemNzNEM5SGNYV1pacnRnNERxeG4rOVZpWEJZOWtCLzBZeVYybVoxMVl5?=
 =?utf-8?B?WFY1TU02SytUQWlyclNyOWpTOG9RWFdkaUtacHA0ZFZNR1gzQ2crOXo1YkpZ?=
 =?utf-8?B?TGk0NmFEQXBua3ZTWExoSW91KzdMckN0RHlTNzZaeEx4TERuWFhKaUFIQ0JQ?=
 =?utf-8?B?WUlYU2hGU2FIbWR1Sm5FUDRvSXJ3cFFXRUQvdGk4YkVZOHYxUzF5azRCSmNm?=
 =?utf-8?B?OHVsYWlwOHo4OFB1bVZocHMyemFyVTg2bjZiVzVZNmZwa3JzaGg1L1U3R3Vt?=
 =?utf-8?B?TURBTi8xSjQwdU1xeTc2L0NRKyt0Qk42ZHhjVTFETFg4SmZFbEhnQ1kydmdI?=
 =?utf-8?B?ZmJ6WEdJdDNmTndVdWkvK00rSFlDTllqS09qT1ZxbVErV3U3bnl4NXNPYzBh?=
 =?utf-8?B?QkUwN2w0QjdTcFhPelZMVXlNZ0VHMzZNVHc5LzE1Tk40REpaMzhmVUdvaXRk?=
 =?utf-8?B?NjR1NVlCTjZBVkx2aTM1RmtxY2pmdUorWEw5YXl0dUhWaUZRaGtqMDhoeGpj?=
 =?utf-8?B?SFFiVzJGUjdtMm9URkRQVFZpQnpkVGwvdFowMzhwL0JyTXFuYlNZQ2RyTHk4?=
 =?utf-8?B?NjJNZ2diQU1jTEhaSHZPRUcvS0Q0ZzVHWDkxVUE5NkV3QnZKdVJ2S3NnNk01?=
 =?utf-8?B?aXVSWjNKTGxPcTNZbDBvdmlXRlZieUtEc3M4ODFJY2lyNSt4VjJZQzh1dG05?=
 =?utf-8?B?dEpocWlhZVJIU0xjSTBSRDlWMWVSZGhmc2VDUi9RdzZETVpNRlhuWlhQM3Iv?=
 =?utf-8?B?OXJEWlVEUGwrSEI4MXcwZTJtMk0zT0J1M3ZoNFNJNmpFV09ib1Roc0kzSFlz?=
 =?utf-8?B?d1NsZ0J3QlJHeEFCQnBMeVpBWlZpQmpQSis3NWxBbm1jZFp0R3FWMGRSQjg5?=
 =?utf-8?B?ejg0WVJuYTU1SThCZFlScUpXUXlKZmtWMUFxaDJuS0RRUDJZZ25vU0RXSDdp?=
 =?utf-8?B?TkFLRGRsN09OWGdHTWhVSjBqNC9mTWpKb1BpUHhJNzJwUk05VW9JV2p0cjhW?=
 =?utf-8?B?Tzl3TlBWb0NNYVFraHFwUG5QK0cvQ2Nmcll6WW95a0VjNmg0bU9KRnM3TDNU?=
 =?utf-8?B?RHBRVFBxUjFRWVB3emRlWHpGTUtVT3FKQmc2N1p2d2RwRGRqWlBjOVJqNGs1?=
 =?utf-8?B?eGJrSlllTWxvNGxyM1JKRkxBQ1QzWSt0bnlTODB3dEIwazNyQ2ovcFZTb2Nj?=
 =?utf-8?B?S2svem9la0RtTVlabHR2NGJteWxVRk04dDBwQk5tN0xFOTArQlZ3Mk9SVzZw?=
 =?utf-8?B?M1U2Z0lCZDBQQy9pQURoUnB1NWlGSXdwdEZETUY3c2J0VU5MTXV4VjBiSHBK?=
 =?utf-8?Q?dfIPoHhRB9QWKOjWJQ0mers=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d95c61e8-babd-408d-fc52-08dbbe806da6
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 11:05:00.9768
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tkXITLhq281jSQ6VWFpmNqnpLJ0FNAA6FHEfKa73ck00+5PbB0FUcRux0vqZpGQ1CfJsknJpkV+Cb0cxAZOD68wtsY0O+Q+pIPC1vJfNCad9Hy4ccm/Rw8kYgiGevTme
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8775
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 11:05:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61127

Hi Anthony,

On 9/26/23 06:36, Anthony Davies via lists.yoctoproject.org wrote:
> [You don't often get email from anthony.t.davies=gmail.com@lists.yoctoproject.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> 
> From: Anthony Davies <anthony.t.davies@gmail.com>
> 
> Apologies, this is the correct patch
> 
> Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf
> 
> Fixed bug where dtb couldnt be found when generating KERNEL_IMAGETYPE
> other then fitImage image due to KERNEL_DEVICETREE containing the dtb
> directory which is not available in the DEPLOY_DIR_IMAGE directory
> ---
>   conf/machine/include/px30.inc         | 2 +-
>   conf/machine/include/rk3066.inc       | 2 +-
>   conf/machine/include/rk3188.inc       | 2 +-
>   conf/machine/include/rk3288.inc       | 2 +-
>   conf/machine/include/rk3328.inc       | 2 +-
>   conf/machine/include/rk3399.inc       | 2 +-
>   conf/machine/include/rockchip-wic.inc | 5 ++++-
>   7 files changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/conf/machine/include/px30.inc b/conf/machine/include/px30.inc
> index a3727fb..badcbcd 100644
> --- a/conf/machine/include/px30.inc
> +++ b/conf/machine/include/px30.inc
> @@ -12,7 +12,7 @@ require conf/machine/include/rockchip-wic.inc
> 
>   KBUILD_DEFCONFIG ?= "defconfig"
>   KERNEL_CLASSES = "kernel-fitimage"
> -KERNEL_IMAGETYPE = "fitImage"
> +KERNEL_IMAGETYPE ?= "fitImage"
> 
>   TFA_PLATFORM = "px30"
>   TFA_BUILD_TARGET = "bl31"
> diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
> index fa97906..3510df2 100644
> --- a/conf/machine/include/rk3066.inc
> +++ b/conf/machine/include/rk3066.inc
> @@ -11,4 +11,4 @@ SERIAL_CONSOLES = "115200;ttyS2"
> 
>   KBUILD_DEFCONFIG = "multi_v7_defconfig"
>   KERNEL_FEATURES:append:rk3066 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
> -KERNEL_IMAGETYPE = "zImage"
> +KERNEL_IMAGETYPE ?= "zImage"
> diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
> index bc96a0c..830f908 100644
> --- a/conf/machine/include/rk3188.inc
> +++ b/conf/machine/include/rk3188.inc
> @@ -11,4 +11,4 @@ SERIAL_CONSOLES = "115200;ttyFIQ0"
> 
>   KBUILD_DEFCONFIG = "multi_v7_defconfig"
>   KERNEL_FEATURES:append:rk3188 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
> -KERNEL_IMAGETYPE = "zImage"
> +KERNEL_IMAGETYPE ?= "zImage"
> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
> index b4c559d..e682c0b 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -11,6 +11,6 @@ SERIAL_CONSOLES = "115200;ttyS2"
> 
>   KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
>   KERNEL_FEATURES:append:rk3288 = " bsp/rockchip/remove-non-rockchip-arch-arm.scc"
> -KERNEL_IMAGETYPE = "zImage"
> +KERNEL_IMAGETYPE ?= "zImage"
> 
>   UBOOT_SUFFIX ?= "bin"
> diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
> index f9f8792..6be777c 100644
> --- a/conf/machine/include/rk3328.inc
> +++ b/conf/machine/include/rk3328.inc
> @@ -13,7 +13,7 @@ require conf/machine/include/rockchip-wic.inc
>   KBUILD_DEFCONFIG ?= "defconfig"
>   KERNEL_FEATURES:append:rk3328 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
>   KERNEL_CLASSES = "kernel-fitimage"
> -KERNEL_IMAGETYPE = "fitImage"
> +KERNEL_IMAGETYPE ?= "fitImage"
> 
>   TFA_PLATFORM = "rk3328"
>   TFA_BUILD_TARGET = "bl31"
> diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
> index 88c87af..5a3f439 100644
> --- a/conf/machine/include/rk3399.inc
> +++ b/conf/machine/include/rk3399.inc
> @@ -13,7 +13,7 @@ require conf/machine/include/rockchip-wic.inc
>   KBUILD_DEFCONFIG ?= "defconfig"
>   KERNEL_FEATURES:append:rk3399 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
>   KERNEL_CLASSES = "kernel-fitimage"
> -KERNEL_IMAGETYPE = "fitImage"
> +KERNEL_IMAGETYPE ?= "fitImage"
> 
>   TFA_PLATFORM = "rk3399"
>   TFA_BUILD_TARGET = "bl31"
> diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
> index 635288c..8ff6066 100644
> --- a/conf/machine/include/rockchip-wic.inc
> +++ b/conf/machine/include/rockchip-wic.inc
> @@ -11,9 +11,12 @@ WKS_FILE_DEPENDS ?= " \
>          virtual/bootloader \
>          virtual/kernel \
>          "
> +
> +KERNEL_DEVICETREE_BASENAME = "${@os.path.basename('${KERNEL_DEVICETREE}')}"
> +

KERNEL_DEVICETREE is a space-separated list so we need to handle it this 
way I think?

Something like:
"""
${@os.path.basename(x) for x in (d.getVar("KERNEL_DEVICETREE") or 
"").split()
"""

but which is valid Python :) (not tested).

Otherwise, I guess this could be added to oe-core directly no? What do 
you think?

Cheers,
Quentin

>   IMAGE_BOOT_FILES = " \
>          ${KERNEL_IMAGETYPE} \
> -       ${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${KERNEL_DEVICETREE}', d)} \
> +       ${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${KERNEL_DEVICETREE_BASENAME}', d)} \
>          "
> 
>   # use the first-defined <baud>;<device> pair in SERIAL_CONSOLES
> --
> 2.34.1
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61114): https://lists.yoctoproject.org/g/yocto/message/61114
> Mute This Topic: https://lists.yoctoproject.org/mt/101589776/6293953
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schulz@theobroma-systems.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

