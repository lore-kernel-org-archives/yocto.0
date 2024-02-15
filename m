Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3BFC48BF0
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 17:46:11 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.121])
 by mx.groups.io with SMTP id smtpd.web10.23312.1708019167678451102
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 09:46:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=gq4iguDL;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.241.121, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lpc0bawW26gry+BsAPaapmTfQc+ZbAIeud8oUYOq01isnZuYhW/XHr6i/sqxTPjDJFItYW0WVgyqOsotf+6Floa+USI168Hm4mxBDWeKQtyR/9F5yXc8rqFtZ+KHe7YnDHa53QLksTBexgqJ8+gzekh0YskJzHIgQddIKiO9EELcgVie/SD7S30AqDMxan96GLAMS6TbUPI5cVUQdluMOHMSHIi/wqtmI11w5Ms4S1iK6L/sNJOlT4Tje83rwgLJ2HIpzsoWT1ThpsYGQg4R83843P5SZHNgyiUAI8iLnfCmLtVaDX4EktlkD4OV83VwisDAY93vwguv/sjRQHkiJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gKvOro/pHJUg3ZnRvX58CfvMdV0tOLnhiTq8Kk6edZM=;
 b=BYI07cqZqr9eXa4laF8gIBSlfZByDV7aIfTieH3lEfX3Zqa5K4gmdsrdBMEPcA2CQX1V69DW1GSdyh3v74BeObZWV61cCMVynreWnBXgMPtuYS5p5XqCf3wMUapld1MsFKdQsP7H77T+wJ+JGrLMXTcZ223mTslx3v46xc8MJjwgm7jfACfuH0uWfc/EyGmXa9oeaGosLwC5mbIIBwGEABYixuGU4DMPvT8dAifb8Vcx0QcajEvBvwUXzlGIaMcWs3ZgeqwWJHazkx9OKNIiepUJQsTHMJGRlCXDp3Pq3hXXBTN1ejwAbk2lfiMYMpDz90BqO7E5D3ttnD7bVYYoaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gKvOro/pHJUg3ZnRvX58CfvMdV0tOLnhiTq8Kk6edZM=;
 b=gq4iguDL9piSKPtaofg2ruQ1IE7TKArfT2Pe22ean/fNBDAAkzM+wcVPrRnmuRCQc1er8ZYDwu4HLvFI3rDPAM69UFHRnGknmuOB2LX+bchcrFQXC0sgCPNblTKmtgP6zYvYF1XX4QRL0m26shn/l95Dqz/uJKGtPE0tfYHGMAAVsNGpMoQtERFNJRmnZFEDO+Vt9C5ab3/qb8yg82Bci52H4Vf9lkZfcKlkIhg5N9lkozgNfDMGCwuRlBu/6MohNfncNS0S32FE6ViKpW59lCr0mXSLxUMC+7fyZOZZe+3bajsap59LdIxD9x/5WCuvVn3Kd+NJlpyV74h2unLPfg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by VI1PR04MB6989.eurprd04.prod.outlook.com (2603:10a6:803:131::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.29; Thu, 15 Feb
 2024 17:46:03 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.029; Thu, 15 Feb 2024
 17:46:03 +0000
Message-ID: <ebaf257d-6822-4e23-bc09-7606a90a4f7a@theobroma-systems.com>
Date: Thu, 15 Feb 2024 18:45:59 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH 3/4] remove /boot partition from
 wic:bootimg-paritition
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20240212202342.37778-1-twoerner@gmail.com>
 <20240212202342.37778-3-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240212202342.37778-3-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0104.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::20) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|VI1PR04MB6989:EE_
X-MS-Office365-Filtering-Correlation-Id: 69a59ba6-990b-4dd8-8182-08dc2e4dfad0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WBl7Nrt64znSdY77IDL/MobYyfmULCiQfx+Plde4tNMUzGxtWC5+wxBG/4/iJDnT+sv6b6KO2tVo7a+QcDcSVw+MzgyXOJ/VPoD0s4gERIHW5JNIr8yywQYtnCsCTQVaMgWd7lLjcrlcxBkqlbYrRNuZVlD47R6XRWJoguStG+469woBK4AmnrL0skjkW/ult0cXLPquIUuqrvNI0o4qtZEF+kbY7qTK24ziNkEExMLzxLta7cPMhbgFakOH2RMWmoyT/wF59a/YnFlcr1mcv3ppH4VTuWQb/v71MNV9agfSkNo4bXgjY7R0dYSDEFlRsP58CgXp3ca/4J/vZ2Ui9dT2I/XQuLyFoBK7cKrJqc05w0OtCMzTn24BvxZnoSZ+hsBC5orECXa7/YanEgNBBCWCVbyUazpeJuwfBDmBo/GuNIGcXtcsaBNEbyRsmazREMf/9KiOjw0ovhFj3eH/Q05FHjLXpGtiUoGOoffsy/RWFehNBqgjfkjSxIRIkUoAjKKoPd+eW9CPWd3ay6Rbe2yo1N2DPbWoJQaJO8uq868=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(136003)(39840400004)(346002)(376002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(478600001)(6512007)(6486002)(6506007)(66476007)(8936002)(53546011)(966005)(8676002)(66946007)(66556008)(41300700001)(6666004)(316002)(38100700002)(86362001)(31696002)(83380400001)(2616005)(36756003)(5660300002)(31686004)(2906002)(44832011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SHN2SVNxTTdTL1VtRDZLQlYrL21tRFpNUkJEMDBWaDdrdlhYRVBPeWRGYTJ2?=
 =?utf-8?B?TWpINnV0bFRDanQrY0tZendETSsyNEgyemNLMWRqOVhGZUptREdRZW9zZlhy?=
 =?utf-8?B?Ni8rUE1iS2I4WDFjb2ZPVFc5SDFkSXJrSVh3Wmp2YU5CcElNcnk5TktjQkx6?=
 =?utf-8?B?MG92aUt0T2N6NVZXeThPZFV0RFFqMzE1d1ltQUI2eHloTWZicDRtKzFtd2g1?=
 =?utf-8?B?TFF4YTJEMEM4aW1OL1pKWi9EdVl5NjY4NGI1cVVwNFFqL0RPbFRnMUxvRFdY?=
 =?utf-8?B?UTZnUTRzZVByVnlCVFdhQXRDTVlJa0I1NHN5TXEvZ0hRbURFeTZsOTV4dXJQ?=
 =?utf-8?B?Q0REbSsvcU5xWGd6SngvOTRmTEU2T2h5bEJ2K1FleTVmM0NpN1IzTXBDTjht?=
 =?utf-8?B?eDZrOG1ucVVQRzV1Ym5xTGN6VFVJT1NQWkhiMzRWKzB5MStYa2xOMUVFN29M?=
 =?utf-8?B?TzNkRTZKN1R0MHcxODJjMTd5MkRPWXFldTJMaGs2K3ZGUjB0a1MyaE5uOVZK?=
 =?utf-8?B?dllDOTBtWWVwK3d0R0ppd1RpbEQrNERpa3F1TitKWnVEQTYySS81ZEZrdzNn?=
 =?utf-8?B?SUphdDQ0bFNtMkZxbmdjUHhBczRUNFBaOUx0YXVjZlRRSnA0Q3pRMDUxUGhp?=
 =?utf-8?B?U0ZnTFdpbU9CZjJiNngxQWNXZndLbytqV3RobUpvRGE1QStxUHNzOUFubS96?=
 =?utf-8?B?c2JqUVZiMXYwT3o3MWN4K0M4b005Z1cvQ0lQd1dqNTJhNmZuRGRPbUp1ejlx?=
 =?utf-8?B?OHZiM0pad0pMM1M4ZVNuQXNKQk5ZU2I1WGVPbmRwUlpjaDhpYU9RZ3VVN1Ra?=
 =?utf-8?B?aXhNTHJaeFliZ3BsTHl2RUJKWDJ0UWUwdTBPcXRoblZBazlnem9DRnMxWkg4?=
 =?utf-8?B?bTFzWFc1SEp4Vk9ma2NNTFUwWGw4aG1xY1h4NS9KSy9BVmQyWXB6dFFvbjNr?=
 =?utf-8?B?TURYNE9obGJtZnhBRFo0L3Y4dVdxZHkwRURMSUVyck1JMGNRMThBdHhqZldU?=
 =?utf-8?B?MmZSWnoxMFZLMHZaYTd5QnNlQmNKaWNKcTc0ZXVOVDFtbHppeUxJME4yMVRv?=
 =?utf-8?B?Ny8zVXhzTFpnK3BoSzN5aU1DNGVsaVM1VW8wSEg2K05pZzYrY2hIRUFzRkFF?=
 =?utf-8?B?N1I4TVNJQWlEcmZKcVVSWVF1aEdsYjNCUjFGdWJoc1hoMy9lWDJ5Ymd6WXBG?=
 =?utf-8?B?SzR4ZDVKZlMxSWQwVzhXOE93REU4Qk50eHNPSnF5VzJiNnJjOTBGS2FibnlO?=
 =?utf-8?B?dkRnODNCOEhnVU9JNklSaENnQTJCcHNWa2dGNFRBdys2R2JFMmM0cnF6SXN6?=
 =?utf-8?B?OGZDTkZvckIzQzk5OTVqVER4MDQ5b0dDTnNkL3ZaTTFhZlBLNHNNTmUvZDRP?=
 =?utf-8?B?TUlnTnUwNDRpTWd2c3dTcmpXakkxMk5SbkFpeTBtRWp0MHpVd3plTjB5a1FY?=
 =?utf-8?B?aDMwTThjQnp4NkhRelhJYjFEQ0pBSnNtVElUNmVMZW0rbytjdDJ5MTd0dkY1?=
 =?utf-8?B?YVBJZmJxTkc0ZnZ5RzhhTE9YcFFmQ2E2M2NIa1NLdGZZNzVGNlo5UzdFU1Q0?=
 =?utf-8?B?YVNINjQyZDBvU3VqeXdPU2FJckZUMnpVSUphTGh1SlhScXBYZGRndE1SYnZp?=
 =?utf-8?B?UzV0dU80MXFLR1dMc3A0Z3g1SHlTcnlhV3NtZ2JjbGxsUHhDTmpzaEV5R1F4?=
 =?utf-8?B?dlczdzFld003cVZmRXNMZDBTUEpSUFJjVTYxNENsNmVLMysraWJOOTIzWGty?=
 =?utf-8?B?MU5BOENRbVR6R0wzMlcxc2Mrc1c1NXJjNW1XZzBWaWJXQ2hCU1lFMVdDM0Vk?=
 =?utf-8?B?OElSaHFuRnhya3FPVWc4Y2F4R2wva3FkVk9oWmswckRVOVZOWlBBelhlSk1H?=
 =?utf-8?B?bkx2Ly9JdTNYbGFjS2RFYzVTUlFXV1FucElpMktHaENaNmVOaXdIY3JmNDk5?=
 =?utf-8?B?SDFHL3ladjIyRk9KRlR6OHM3aDNrV0pMOFd4VHNBcEE2ODNjSEtFNVZaL0Zr?=
 =?utf-8?B?eVRLM3FabmlXa3BxTzBQeU9BS1lRYnE2YVpMY0FPNCtLWWl1eitjOENVUGhq?=
 =?utf-8?B?OGNGUzZIcXZUT2liTlNoTlZhYmRyS2dOa25lNFRDSHJ4U0NDTnU0ZERZdFhP?=
 =?utf-8?B?TEE4QlkvaFR5ZDYzV1AxRndaYXN0SXAvcVdZbjFCSHBIMkFGbkRiMEFHTmc2?=
 =?utf-8?B?RjdTNU82L3NxRlE0ME51WDE4MWpxZzBlamtuTXJnTHFjNjNxanExMVlPd1Qr?=
 =?utf-8?B?blVueG9rSVhXb1FBRG1qNjZSb2pnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69a59ba6-990b-4dd8-8182-08dc2e4dfad0
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2024 17:46:03.5938
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KUgp+wrI96LEmXuJd48ljATTYMfTX6IElxmsq2NRPxlp1h4ff2+jBytANgwfUq8T2D7d4jTrRZghs8lRlcrQe+Oco+IoEjnIx5QFAXyn2aspRymrRiL+1Ypz2l53i//e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6989
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 17:46:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62498

Hi Trevor,

On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
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
> The locations and sizes of the SPL and U-Boot partitions are hard
> dependencies since the BOOTROM etched inside the Rockchip SoCs is > programmed to blindly load and run what it finds at these locations. The

What matters is the location of TPL+SPL, U-Boot proper can be 
programmatically be put anywhere (not where TPL+SPL is of course :) ). 
The SPL actually stores in itself where to look for U-Boot proper in the 
storage media (and different storage media may have different locations, 
we have this for Puma RK3399 which has a differnet location for U-Boot 
proper on SPI-NOR and on eMMC/SD card). We do this on Puma RK3399 and 
Ringneck PX30 for example (but we're not using this wks file so this 
isn't really relevant). Also, IIRC, the BootROM tries a few locations 
for the TPL+SPL in the boot storage medium (e.g. every 32KB offsets for 
the first 2/3/4).

Also, "blindly" is a bit of a stretch, the BootROM checks for a magic 
header value and then another magic string (e.g. RK33 for RK3399 and 
PX30). RK3568 and RK3588 have a different header layout also (headerv1 
vs headerv2). There's also secure boot that is possible, doing a bunch 
of extra checks directly from the BootROM, etc. :)

> locations, sizes, and contents of the "boot" and "root" partitions are
> not so rigid since it is U-Boot which interacts with them. U-Boot is very
> flexible with how it finds boot components, and in its support for various
> devices, filesystems, sizes, etc.
> 
> Both oe-core's U-Boot metadata and wic's bootimg-partition script contain
> logic to generate the extlinux pieces required for a bootloader to boot
> a Linux system. If both are enabled, the wic pieces silently clobber the
> U-Boot pieces. However, the mechanisms contained in the U-Boot metadata are
> much more flexible, from a user's point of view, than the mechanisms in
> bootimg-partition.
> 
> Also, if a user wishes to setup some sort of A/B redundant update
> mechanism, they must have redundant root partitions (in order to update
> their filesystem contents) but they also need to have redundant boot
> partitions if they wish to update the kernel as part of their update
> mechanism. Pairing redundant kernel partitions with redundant filesystem
> partitions becomes unnecessarily complicated. Therefore it makes sense
> to combine the kernel and the filesystem into the same partition so that
> both the kernel and filesystem are updated, or rolled back, in lock-step
> as one unit. Specific kernel versions and configurations often have
> dependencies on user-space components and versions.
> 

And now users would have to update a potentially multi-gigabyte image 
only to update their kernel or dtb :)

> The boot partition is not going away. This patch simply transfers
> responsibility for its creation to the more flexible U-Boot mechanism and
> includes the kernel as part of the same partition as the root filesystem.

This means the boot partition is going away :) which is confirmed by the 
change in wic/rockchip.wks.

I think you meant to say the boot directory is not going away, or rather 
the content of the boot partition is not going away?

> Not only does it add flexibility, it also makes update schemes more
> straightforward. Although having a separate /boot partition is a
> "requirement" of the Rockchip partitioning scheme, it is not an actual
> hard requirement when using a flexible, open-source bootloader (such as
> U-Boot) instead of using Rockchip's proprietary miniloader, preloader, and
> trust.img.
> 

The upgrade path from current state to the new one is not 
straightforward though? The boot partition would disappear IF the 
partition table is reflashed (which is rarely done I guess?) Otherwise 
it would still exist, with the old and never-to-be-updated-again kernel 
binaries in the /boot partition (which does very much still exist unless 
you reflash the partition table AND flash on the / partition with the 
update mechanism). This also means that a rollback is impossible.

> Boot-tested on:
> 	nanopi-m4b, nanopi-r2s, nanopi-r4s, roc-rk3328-cc, rock-3a,
> 	rock-pi-4b, rock-5a, rock-5b, rock-pi-e, rock-pi-s, rock64
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   conf/machine/include/rockchip-defaults.inc |  2 ++
>   conf/machine/include/rockchip-extlinux.inc | 10 ++++++++++
>   conf/machine/include/rockchip-wic.inc      | 17 ++---------------
>   wic/rockchip.wks                           |  5 ++---
>   4 files changed, 16 insertions(+), 18 deletions(-)
>   create mode 100644 conf/machine/include/rockchip-extlinux.inc
> 
> diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
> index 3ce2e246ab0b..2387eb909934 100644
> --- a/conf/machine/include/rockchip-defaults.inc
> +++ b/conf/machine/include/rockchip-defaults.inc
> @@ -19,3 +19,5 @@ XSERVER = " \
>   
>   # misc
>   SERIAL_CONSOLES ?= "1500000;ttyS2"
> +RK_CONSOLE_BAUD ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
> +RK_CONSOLE_DEVICE ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
> diff --git a/conf/machine/include/rockchip-extlinux.inc b/conf/machine/include/rockchip-extlinux.inc
> new file mode 100644
> index 000000000000..c73fb7d17e02
> --- /dev/null
> +++ b/conf/machine/include/rockchip-extlinux.inc
> @@ -0,0 +1,10 @@
> +UBOOT_EXTLINUX ?= "1"
> +UBOOT_EXTLINUX_ROOT ?= "root=PARTLABEL=root"
> +UBOOT_EXTLINUX_FDTDIR ?= ""

This should probably be checking for IMAGETYPE!=fitImage and then 
install at the very least the first entry in KERNEL_DEVICETREE? The same 
way it was done in IMAGE_BOOT_FILES before?

> +UBOOT_EXTLINUX_CONSOLE ?= "console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8"
> +UBOOT_EXTLINUX_KERNEL_ARGS ?= "rootwait rw rootfstype=ext4 earlycon"

earlycon seems to be new here. and also should probably be part of the 
console entry rather, no?

Maybe also abstract the ext4 type here into a variable and use that 
variable as fstype in the wks?

> +UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"

FWIW, I don't think /boot is required. bootstd/bootmeth in U-Boot 
(upstream at the very least) will check for / and then /boot prefix for 
the paths in extlinux.conf. Not providing /boot means if someone still 
wants to use a separate boot partition, they wouldn't have to update 
this variable. But since it's overridable, this is basically up to your 
preference.

> +UBOOT_EXTLINUX_LABELS ?= "default"
> +UBOOT_EXTLINUX_MENU_DESCRIPTION:default ?= "${MACHINE}"
> +
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "u-boot-extlinux"

Is the image actually bootable if we do NOT have u-boot-extlinux 
installed? I'm challenging the RRECOMMENDS basically. And wondering 
whether MACHINE_ESSENTIAL_EXTRA_* is always included (it seems like 
RDEPENDS one is part of packagegroup-core-boot which is virtually 
installed in all images).

This is actually quite nice, I was wondering also if there was a way to 
create as many entries as there are Device Trees supported for the 
machine (and maybe even device tree overlays? but this one's difficult 
because we need knowledge of which device tree overlay can apply on top 
of which device tree(s) :) ). But I don't think we can have anonymous 
python in conf file? Or maybe we should do this in u-boot bbappend?

> diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
> index 67a8310f7d6a..cae14c90e1db 100644
> --- a/conf/machine/include/rockchip-wic.inc
> +++ b/conf/machine/include/rockchip-wic.inc
> @@ -1,5 +1,7 @@
>   # common meta-rockchip wic/wks items
>   
> +require conf/machine/include/rockchip-extlinux.inc
> +
>   SPL_BINARY ?= "idbloader.img"
>   
>   IMAGE_FSTYPES += "wic wic.bmap"
> @@ -11,23 +13,8 @@ WKS_FILE_DEPENDS ?= " \
>   	virtual/bootloader \
>   	virtual/kernel \
>   	"

Does the WKS file still really depend on virtual/kernel or is it rather 
a misplaced dependency now?

The backward compatibility issues omitted, this is quite nice :)

Cheers,
Quentin

