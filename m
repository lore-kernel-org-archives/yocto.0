Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D0E6E8FDC6
	for <webhook@archiver.kernel.org>; Thu,  5 Oct 2023 09:31:06 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.79])
 by mx.groups.io with SMTP id smtpd.web11.11438.1696498258549685161
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Oct 2023 02:30:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=cAFjp6P6;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.13.79, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m+0OKv9qWexKt0eTquq9Wz09uvzkGCDH/WiKRZEtutZEu7Mu7Uqftn0C8chibnr34FihLnScIXrg/rhdMNuHR3M/fKsNjGIubzEyCaqi0+kMSxx7j1NEqaDwl90ncnhfwSFHZjCwEa5CHY/BruEojFPszHQs/8dkWLbqlXABLtqZI+97K2ZKc1PEm2pWVaD2rGrogdLkVZ6ennFmWfZUFzn8OCmqmkCsuxRNutW3xC+Ac3PTk+jwcKEvGSp0QIjXSMvfeXiCLvwqI1N12e4/C/TXDzZiSSjfn0D/ESuvg5uI4dLQdzxMLaREzj1NqGMDPPyy1YG4X5Y9b0MdJatxwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CPfX7Siyctxc5tBFc2aXCOW+mntHL13ulTEuK9H4OM4=;
 b=Tp9e5A8SQoV1N45CNP6b2MqCLY14zIBUMYuqEBbSjdECFlKFZg8YVkxxXJXEChEN2efnjEPvcHr8sEmEfSibn+8Dj5Y3/RSl9F7uIeA7xx3X/1mKssjJ505YXLB5UJaoVZq+zR4XmbVI0uQxQj0F9hIbXZSX1TwW4kHqrZlGwPMdPE8efqouD3l9gnlsEt16j0RPjOnKdbQ0ut9MV6SK+AmZ8qBLHIt/gm1KKKDuij4aR8XbKZ4MrBjK2izvJ3HU9RsdWH81eGkShDQrNT8oc5ZgLAnihUoh7ZHD0KvxGWpGNtaadrIQEcDulFLQZbuhXYqdySHSa8n7gaZN/OkKBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CPfX7Siyctxc5tBFc2aXCOW+mntHL13ulTEuK9H4OM4=;
 b=cAFjp6P6/c7f4j/0EFWqhyveb29p18maMP85apcFxXW82Iryh6vjEMJBtg0MYaS3XweAiLKr60IAyoj8/ESQ8wG+/nAFJkOELhGVTiqYKawgMAvdR1S1aEtHClIZ4JE9/XOL0ggR8BB3jQha9xyVC5jUufiaouccTXf7bsJrysHfJyJRWsTFfaMlInxI8YmuCATXzHxEs9kdKp0hhdi4r2fxticWI7FI6m1h7d2FW7WUCrlsqNFwKVNKbIQUitebJJgdiDX7zkh/fkC37Jy4mYau6Qq7tZsZNvFvCYkR7PndUjzDvw1trnK7Mlpwy3KBwkGAo7y82MQvmBK9cgqA4A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM7PR04MB7093.eurprd04.prod.outlook.com (2603:10a6:20b:11d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.25; Thu, 5 Oct
 2023 09:30:54 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6838.033; Thu, 5 Oct 2023
 09:30:54 +0000
Message-ID: <18613734-f888-c5e3-dcd7-483552ecbd42@theobroma-systems.com>
Date: Thu, 5 Oct 2023 11:30:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [meta-rockchip][kirkstone][PATCH] rk3588(s): add
Content-Language: en-US
To: Quentin Schulz <foss+yocto@0leil.net>, twoerner@gmail.com
Cc: yocto@lists.yoctoproject.org
References: <20231005090016.82398-1-foss+yocto@0leil.net>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231005090016.82398-1-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0171.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::12) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM7PR04MB7093:EE_
X-MS-Office365-Filtering-Correlation-Id: ff75ecc0-244a-4259-30d3-08dbc585c5c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lkBZqFZ3tBqgOsML4HezgZRJigra8IK/Rzw+9tfwJVeHehlwc7fc/cVeX5eTNSf+i63k+OMBeO2L5as/ipG+RjWlgNjRlVGISaVyNINB/4nfEd4fRbVxD01Xar54xA7mL38Gsj9kiiEXIXlfhs2Cwc5ikX4KqBVzc69uXfG3gr8yh1AKoBLj+z0mIlvPGdEFKuWTOeHpzo75n96b+TCTnT0QPJf0cmAvumQvLSsw4gAmh7V3uk3ttMJf/lq5cqdl/RpSnUyjAEX/P6g/zh9GzrJ/nolviYj5qIWvMXYMztopX08UhUnNVHl4Ct/EkcPIOLgNyw2mMsyLC7Ia03Y99fKn10Dl0HbmIravuTe36ocGf93F9MRK9wwBSQUFkWVtCBwP4va3jGrHn28PZ+oTdtsVxod4YxdAjlJZeRdUUV8HnQFXRNJIhl3ncWsYYPAmimDxs/MtxXFFS+Ki+z3gAui0Vgu69IFuGKcyVc2+jN85fX64Va4IlPPiqMSrGoHDFw1uUW4sIgfCWVPunrBk6wCrvASPoExLBuMmRjivDVvQpNCsFLsVZGwg3esj/69VOh/UeHLl+IA4HRHzpXcWAP9Q6l3QTDpjfAm9N6o17UjbBKpDJLz7TsDMf6EECHTclLvRbfzEhgjMV7b4dfGJ9g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(376002)(396003)(136003)(39840400004)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(41300700001)(316002)(66476007)(66946007)(66556008)(478600001)(38100700002)(2906002)(36756003)(86362001)(31696002)(4326008)(8676002)(8936002)(44832011)(5660300002)(26005)(83380400001)(2616005)(53546011)(6506007)(6486002)(6512007)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TG9GS2h6eDh6czhRUDRmUENLcnp1RTZlTjF1ejVPMGlQMW96V3A1dFhNZDBK?=
 =?utf-8?B?K01EL0s3NW0xK2lHa1J6Um1mNVozcUp5b2wzTDhFOEk1YXZhM0pHVTJ2Q3or?=
 =?utf-8?B?RnErSWl2cmhZa09STTE3WURNQWFUTHVGZzNXRjNZUG9yR2hILzJ1ZUN6M0xQ?=
 =?utf-8?B?QU1wZ0NnM25ET3NVUG02S0NVcG5hWkI1aS81Z0dkNmlaTHZKQ2NhYmloaitl?=
 =?utf-8?B?RjA3cmg1MEpHSUJjemN0bXNzZkIyaW9QSlFxcktWN2huK2ZVT0loNVdJWXR2?=
 =?utf-8?B?SVdzSzlyU3RTRnpaVVN1UWtwbmFhTy9GVzd5dVZ6WHIvOExVOVpLVGVTR2RE?=
 =?utf-8?B?WE1kbXRPLytyaU9uWnBnejNkTThVVFJHUTlKZ3BoZVNLYzJCRGxCVWJTWWcv?=
 =?utf-8?B?eWxTQ0NvMDBTaFE5czV1bS90K0FMRUlETkYvY1M3enNZK1pMVVNNeUdIU1U4?=
 =?utf-8?B?aUdyYnFSMklxZmM3cTB6d25ZUFlTdlJrWldiaE52d2ZRVjRHRnhGQWhpZUVx?=
 =?utf-8?B?WFRDVnNsWm1lU3hJUUZIc3dxbjZkTk1vb21FYzBBZExzOSt6UjRCaHlGYlhl?=
 =?utf-8?B?cThndHlZdU9pb2RRMmpHL2RCd2hHK1k5VVB4TFZuZjlFYW1OaGRYSC95ckdY?=
 =?utf-8?B?U2UydURCaS90cUIvVWV6S3RwNC9CNTBDemUvNHBBYVU2bk1iNmxQT1FpdVBF?=
 =?utf-8?B?L21sYVIvNldZQW1uR0dBblloTm95cGdGeTJoT2Y3cTNBTzFnZ2UwaUk0OUR5?=
 =?utf-8?B?Q1YwejBGR3VxUDRwYjY3QjAySWNXZFNyWnY4N0pLa0FMbTgvLzhIM3JRSExm?=
 =?utf-8?B?TGc1TnZ1MEVVdy9nczBSMTlOS3E2b3lVdjhxSHBRaEJ1Q2Ezb1EvRERkMElH?=
 =?utf-8?B?c04rRm9ML2RzRXI0NFZRVEVGR2p1OUlPTlRWNEI1R0g0bktYUGgxUUFnQ0dM?=
 =?utf-8?B?WjN6V0h0ZzQrK0djV1BieVg4cXR2RjBoUVBFeHpESXl0RWtMbmVYMnl5Wkgz?=
 =?utf-8?B?Q3Z1aHNrVjRGT3R5SFZCS0ZQUHN0MjJZNzlVNWxXNjdXRTRwL0RWa1k2cHIw?=
 =?utf-8?B?alI4TVBIQW1EdWpiaUh0d0JqOTl3bUFuSHlxUE5mMk5OK0pDMGJXTjlRaGhp?=
 =?utf-8?B?RTNYSUZ1S3NWcjhwbFI4Y2tRbFVvajJza09wZ2xJMTdIQ01teWQ2T1pTZnJS?=
 =?utf-8?B?OFdpd2Q2clE3cTl6SGF1SzQwVEJJTHdIeVdKMXEvR05LNUJZME5hc1JyVmZ4?=
 =?utf-8?B?UVBVcWp3SjM4eVNHcEh6TmhRNFd3eDNuN3NRd0lwWGt3dkQ2dHFNVnowMTdi?=
 =?utf-8?B?eGxFbHBzWUtpc2Zwc2RPK3AzRk1ZcFB2M1piSVNWS3FwdHlxY1U4amZ0UkU5?=
 =?utf-8?B?Qjc5WFhZRlFDbDM0cnZ5T1lTcmZDSGNnS1lnNGtFcEFGT0sxVElSZU5rNk5p?=
 =?utf-8?B?K2VBUUJoOGx6Q0RacFNUZ0ppb3BIeDB4V3E1ZTZqVFdPZWZaWGdkYi8zcFRX?=
 =?utf-8?B?TXFaaFZVRHlhQklCVkxLd2gyUXRhVTR2bjVIWnc0Q0ZBWFkxQVRaZ2EwVVNN?=
 =?utf-8?B?ZDNjMWJHT0R0cFBmTjB3UVV5dS9pTGRFU2xBWk1ZcTNMMmt0MHIxWHQ5WkI2?=
 =?utf-8?B?bnZnWXBFVnlycVJxWGxla2lvQlI2b2ZCVmcvMGZlQlI0RmtTa0lYQlNnYXY1?=
 =?utf-8?B?aC9vcDBPaVppTXlBTFZKU1lvQnIrOVJiMVpHR3pKd1VVYm8rSVUzay9Ya245?=
 =?utf-8?B?THgydXJJeG5nSExRR0VHb3VCZmVwclJwOEVSU2czbDRuNFB3QTkyMXJmeHl0?=
 =?utf-8?B?a3NDNkJOVHlmZGZJbTlkcHViNmJRbCt0M2tsTmp5QXpoVmJROWVxd0V0NDc1?=
 =?utf-8?B?eEp3Sm41cVZhZnBQbjdhS0x6aVVNUk1lcU1iYjU5M3c4ZEN0UlNuekhrb2Yw?=
 =?utf-8?B?eTBRdG9zZGpqM1FLV3o4R2RwYWwzN1hybnBWNWNpdmJWeHg5MVl5SFY0QW1R?=
 =?utf-8?B?Qm1SYVJmZXY0Qm5ZdndJWk55UkdxclhOSkFJaUtLYUY5b0ZhYUtLcld2TXBR?=
 =?utf-8?B?bGVKUndhRnlvN2dMbzFkMW1yV1ZIS1FkRUNiY2ZjUkJpNFJ6cGFGZDJ5UVpz?=
 =?utf-8?B?TGlmUG1sSGVuT3dRa0JicktVQk5XUk9vZkh3QlNSUHZPS1pWMFpMTDNQMm55?=
 =?utf-8?Q?yUET3yY+wmzjkQ0sSqGTMZ4=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff75ecc0-244a-4259-30d3-08dbc585c5c5
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2023 09:30:54.4950
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V1YIxa/4uPljbENfOl0oTIxU0t32DQeg+t5sTYUdvGk42aGQErIKih7msvoqjGHW8h8gxAzp0ly2jGzF6lPz6iNDSwmoqfzTQ5FNIuQb0PdT7X8tzN6OJpZKObJkfEQU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7093
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 09:31:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61247

Hi Trevor,

On 10/5/23 11:00, Quentin Schulz wrote:
> From: Trevor Woerner <twoerner@gmail.com>
> 
> Unfortunately the TF-A project does not currently have support for
> the rk3588. Therefore, for the time-being, the only way to supply a
> TPL/DDR-init for the rk3588 is to use the closed-source rkbin binaries
> from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
> switching.
> 
> The rk3588 comes in two variants: rk3588 and rk3588s. The "s" option is a
> stripped-down version of the rk3588. In the Linux kernel these two SoCs are
> kept separate, with the rk3588 building on the rk3588s, so we've mimicked that
> same behaviour here.
> 
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> [backported from f8af59dd7cd7 ("rock-5b: add")]
> [removed support for rock-5b since no decent linux-yocto support in kirkstone]
> [removed KERNEL_FEATURES and kmeta since no decent linux-yocto support in kirkstone]
> [renamed INIT_FIRMWARE_DEPENDS to ATF_DEPENDS]

^^^ This is actually something we probably need to discuss?

This makes it harder to backport patches from the master branch to 
kirkstone because we have to be careful to rename those variables before 
applying the patch (even if somehow it applies cleanly).

On the other hand, migrating to the new name means we break the current 
behavior for downstream users of meta-rockchip.

Cheers,
Quentin

> [tested on downstream board with downstream kernel and u-boot]
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>   conf/machine/include/rk3588.inc         |  6 ++++
>   conf/machine/include/rk3588s.inc        | 16 +++++++++++
>   recipes-bsp/rkbin/rockchip-rkbin_git.bb | 37 +++++++++++++++++++++++++
>   recipes-bsp/u-boot/u-boot%.bbappend     |  6 ++++
>   4 files changed, 65 insertions(+)
>   create mode 100644 conf/machine/include/rk3588.inc
>   create mode 100644 conf/machine/include/rk3588s.inc
>   create mode 100644 recipes-bsp/rkbin/rockchip-rkbin_git.bb
> 
> diff --git a/conf/machine/include/rk3588.inc b/conf/machine/include/rk3588.inc
> new file mode 100644
> index 0000000..34f0627
> --- /dev/null
> +++ b/conf/machine/include/rk3588.inc
> @@ -0,0 +1,6 @@
> +MACHINEOVERRIDES =. "rk3588:"
> +
> +# the rk3588s is a "stripped-down" version of the rk3588
> +# in the kernel's device-tree the rk3588 builds on top of the rk3588s
> +# so anything that is valid for the rk3588s is valid for the rk3588
> +require conf/machine/include/rk3588s.inc
> diff --git a/conf/machine/include/rk3588s.inc b/conf/machine/include/rk3588s.inc
> new file mode 100644
> index 0000000..3da226e
> --- /dev/null
> +++ b/conf/machine/include/rk3588s.inc
> @@ -0,0 +1,16 @@
> +MACHINEOVERRIDES =. "rk3588s:"
> +DEFAULTTUNE ?= "cortexa76-cortexa55-crypto"
> +
> +require conf/machine/include/arm/armv8-2a/tune-cortexa76-cortexa55.inc
> +require conf/machine/include/rockchip-defaults.inc
> +require conf/machine/include/rockchip-wic.inc
> +
> +KBUILD_DEFCONFIG ?= "defconfig"
> +KERNEL_CLASSES = "kernel-fitimage"
> +KERNEL_IMAGETYPE = "fitImage"
> +
> +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
> +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
> +
> +UBOOT_SUFFIX ?= "itb"
> +UBOOT_ENTRYPOINT ?= "0x06000000"
> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> new file mode 100644
> index 0000000..7fefb01
> --- /dev/null
> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> @@ -0,0 +1,37 @@
> +DESCRIPTION = "Rockchip Firmware and Tool Binaries"
> +LICENSE = "Proprietary"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
> +
> +SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
> +SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
> +
> +PROVIDES += "trusted-firmware-a"
> +PROVIDES += "optee-os"
> +
> +inherit bin_package deploy
> +
> +S = "${WORKDIR}/git"
> +
> +COMPATIBLE_MACHINE = ""
> +COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> +
> +PACKAGE_ARCH = "${MACHINE_ARCH}"
> +
> +do_install() {
> +	# Nothing in this recipe is useful in a filesystem
> +	:
> +}
> +
> +PACKAGES = "${PN}"
> +ALLOW_EMPTY:${PN} = "1"
> +
> +do_deploy() {
> +	# Prebuilt TF-A
> +	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
> +	# Prebuilt OPTEE-OS
> +	install -m 644 ${S}/bin/rk35/rk3588_bl32_v*.bin ${DEPLOYDIR}/tee-rk3588.bin
> +	# Prebuilt U-Boot TPL (DDR init)
> +	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
> +}
> +
> +addtask deploy after do_install
> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> index de1f2ca..c611377 100644
> --- a/recipes-bsp/u-boot/u-boot%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> @@ -7,6 +7,12 @@ do_compile:append:rock2-square () {
>   
>   ATF_DEPENDS ??= ""
>   
> +EXTRA_OEMAKE:append:rk3588s = " \
> +	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
> +	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
> +	"
> +ATF_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
> +
>   EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
>   ATF_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
>   EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"

