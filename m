Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B8CE7A94
	for <webhook@archiver.kernel.org>; Mon, 25 Sep 2023 13:36:22 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.69])
 by mx.groups.io with SMTP id smtpd.web11.61510.1695648972489446229
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Sep 2023 06:36:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=UYG613fz;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.105.69, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fjNJ5ANOlRYL9qer7o2VJZ29Kosx7xYsmcqysLzoLYi1MnSibQCab9nq4tX69VEubRTNrA3nnQcFyy+Ou00UHsDh4gDoNhvpep3isPovYwMuz7qv/xceB7uHm3NWsgg4swEl1zFWnIG8XZyOdDiIGkpfg3Fm/y7AAj9DliR+2kKmr/v6yRpQGPYhKTe6K+HrNutfVCs1+rFKkM37X/GN2iXVHX27QPA345wrf9VWEhoQUsKb/uiTS51Kzy8WBXGj2A5qQJmH+lxx64Q1i8kOaQxcsE1uhuyJ6wGmnQ4wFkZV5tsdE51UZmWMwYhCeDb4NNqxYqJGsm6AINMH2+gXpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pWCXJ2ndpqZDoVN5ykL75tVB9SNwd0A/+GduXGBYZuM=;
 b=YFl+BUFUSI596rZXvE1MNbPvbCY4owPmyirIwj7kyH4I9i3Nq1db9MyKOKdVoG6sZH4TvUbT/BvWrJkeaVdmoUZb5vwuxsqHmK40K+8se4MODelg7JCJIwkOtgrG9elLd80wxmM98xKvDgxuNcpoqGsSrdKv/wDgrzAjvz9IOdQS391fQ/OdrnTJ+9a2Lg7xgoi8OQdamgWuBU7d98IeI6S32fiRgWKDoSVwNJrpxD0lkW1jw0bcG3ugzAmgJQhzzHnKeC1GokqWQQvxacHXl7oZeE9CFqEYSQRwly5JzU8y2UIhS43CcOvUoObDeB+zjDWRrjQQJdWGUwzX8yGPFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pWCXJ2ndpqZDoVN5ykL75tVB9SNwd0A/+GduXGBYZuM=;
 b=UYG613fzDkfGBAc70jiE96HfEuIUa5/fvVsR8MR/Urry8idglnFWXBgJgsXNdWG4jg3tGt9tP9J+0t92krxZdZxhYpBn80tTxr3LW0++vrH2uRW33vog4kpm0Y1fJKnmMY35Q/JSq1cMndFo1x5f9eUf4OhWDhPSPytVWxh9nMSs5gh+mAL/FOp+eDZaqxn3AzCy21saB3YrcvimfKMIGWWOmqmD3+saTPVAID7JMN67EaqMLPDYMBpoB6bmJCa9JXm8Z6VrjdltOIhDItPnNiRjNmaZoSGquHnkpvNMZQuRtD/VN4XFCeEGmCL4Ry+3f09lurV3al7VOvddXXSzPQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS5PR04MB9972.eurprd04.prod.outlook.com (2603:10a6:20b:682::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.25; Mon, 25 Sep
 2023 13:36:08 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f%4]) with mapi id 15.20.6813.027; Mon, 25 Sep 2023
 13:36:08 +0000
Message-ID: <e11a7d2e-ed60-87e7-8734-61ae1bcb4ee3@theobroma-systems.com>
Date: Mon, 25 Sep 2023 15:36:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [meta-rockchip][PATCH v2] rock5b: add
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>, yocto@lists.yoctoproject.org
References: <20230922212623.8813-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20230922212623.8813-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0092.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::13) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS5PR04MB9972:EE_
X-MS-Office365-Filtering-Correlation-Id: 4da8a06a-a3f7-45e1-b660-08dbbdcc5fdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	76C/MePGWkXHvBzB8oQlRw3RodSjyZiywVP6/TlRJfodH4vYnh8Gdja29doHLPzRQIlP8wtZYAojOzmQwKFAR6QcvrBAtrg43J/EssyoZiw3LPC9HtfaRCggzS2uZJ62UILZaluqNqHNGwwzr6AZ1+Dq/CcGoFp11oDJNOfQZUR95OR/LK99/jLEdL6xufxXKSQBpbWclcMxA3OgRMsUWuD6UGz5PELS9CN7rB5tMH80UaLlX52KX6A7hPU5ckxJyukxJLs2gBFe0MIdOtuThMRROHBpyOyMTEsmTRjO/4Azf4laUjeC25dKdG7wCnJ5YI3XpVqoqU0MWbjUhzMUNQMwC0Rg2uzMlZ9M1PPlsKo6Fy2C97yn8cCB5Gyv79S9VeWERWk2e7F7rdCRlLRmZI+/xkUXXXKOPuRs2sL+21n6pXys0zeasvL7eEEvqyY7OsWFeKS3kt37LeCBVtzydf54FUG7QpoGsRnDDdJCP9+eK3ADzrLRCB1Bl5DIRoojqIYZh17XoDQ9VyLgpNoa5/DknVDC6wOPFB6ABp9gkFrcWFrXHD3vkW1dlbyQPVVq/mN8LOB0RKnyU4aJt8pDhyo0/Snbx+adzGtmX4oi75i9zU4dgjfxDY1MRZ10Frki+Hjvi0R3dk3wH3SIFXXi1B7j7pKEFhfBqkhSx0joeZo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(346002)(39850400004)(376002)(136003)(230922051799003)(451199024)(1800799009)(186009)(83380400001)(2616005)(53546011)(6512007)(6506007)(966005)(6486002)(478600001)(31686004)(36756003)(31696002)(26005)(86362001)(38100700002)(8936002)(41300700001)(66556008)(66946007)(66476007)(316002)(8676002)(2906002)(30864003)(5660300002)(44832011)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RUh3L1pvL2U0R1FOQ3lZSkNrbEliYXJ6c0x0cFo3N2tXVzdIWndjUklwbFZL?=
 =?utf-8?B?TktmVXUyckR5T3Y0ZkRXRmlVZ09OUVp6RjZHOFBnZW42TzZiemh0ZFlZTHg1?=
 =?utf-8?B?ZnJSTWFyUGpZRmZVQ2lMbWs4YWgzOGM5OW83N3Uxa2hCSVJLUGJFU0FnV0Nj?=
 =?utf-8?B?RHhBZ1V2VlNUS1c3anBzOVVSSFcrOVVvUFlUaFdJbEl6THYyOGxXQ3AxK2ZN?=
 =?utf-8?B?MHMvd3h4djJOcXRQc2lsa0MwTitNM0JGM3V6WmhBOWFRcUY2bzdFMzc0SmF6?=
 =?utf-8?B?UWRxUlBTQUlQaHFtamJFRlU1ZDROTjBpRjFNMG9jcEJTUGdTS3BES2tWaS9R?=
 =?utf-8?B?M01RNmU3SW8wdm8xR3dVd1g1SytJZE1uSUxGM3lTZTYwSG8zLytXM2hYVldh?=
 =?utf-8?B?R29jaEt4VXdWZEdxL3RTeVZGck1lYXUxcHIwNXVWYXBucVpkY2MwNUFhUnBU?=
 =?utf-8?B?QTVxNUpBVnpZZ1NaU0xWWnMrVkFxSWJuTkFzQTBBL0I4V1BKMjdpczQrUUo0?=
 =?utf-8?B?bWNzU0g3VDR2WUF0MjhFaFZaK21uVS8rZnhjNUxNZkFmWDkwbVVMTGZLTkll?=
 =?utf-8?B?eFpvdUx4QWlIUjZYdnoxV25jR2FNdnc0R24xTjgrb0lFZmdac1B2ZUtIakZs?=
 =?utf-8?B?VktiSVpwN2ZKcW5xMDlXVVN5dHZnVGllZ2N6dDBBbGM4TGhmc1hHb2J1MzBo?=
 =?utf-8?B?aURpQXFidWlpMW9QaUx6Z0kvVlpPRWQrMTBoSmZ0MmdIbnN3NFF6aVBqSGZp?=
 =?utf-8?B?cy9VQjVBS0NsUEtvZ21yUEFoVExiQnl1TDBtQzdMbHZ3UWxUNFVvR3J4NGxR?=
 =?utf-8?B?dC94dUpnVmdwREI5NFgrRkJlNFI1SUZmdUtnSlVwbit5WlhrUnp6ZDE5WjdT?=
 =?utf-8?B?Vy82QlBPcTN4dndMNkhBR2ZCYlRKR3JqV2ltTjRNSk9iaTNDeS9NeUNqajlX?=
 =?utf-8?B?YVBVODdZSG1TQnZoTzRzNmdMNi9yaEh1NXNmM2Z1cEd3dTZ6d045bFBOTWEv?=
 =?utf-8?B?SmZRdEdmQUJicXpJclVWcUhGOGJjNnpIUVVVZDRWT1JyQUoxaXJFd0ExUVBl?=
 =?utf-8?B?L0t6aCt2VzUrWmtBakQvVEk0ZjRBMkZGTThhRHdTdDJlUHV5MHVpS1BsVXpX?=
 =?utf-8?B?bmJFMU1uU1JQTFhLQTVrNis4aDJNSGUwMnhPQVRua1M1Qmc4T2lGT2oxbE9I?=
 =?utf-8?B?TTE4RWRvajNXMklNT1phOHFZaUxKVlplTC9kTkE3cmVQWi9VZ2dmempXSHcx?=
 =?utf-8?B?OS9ld0UzdmYzeTVEcEZENitLQW11cE9QUVliRDBqWU9CaTlneG5lc2JhUDgy?=
 =?utf-8?B?cXJYUE92SkR1SmcxVzk0eXh1WGdIR3VhWGlmbHlsaU9JNHNmYnAyYmFTQ3Zv?=
 =?utf-8?B?UlhjbmNuTThpeUxUblpWdk9FUlhqd3hWY3pGMFBBKzV5ZVJ6Y3Vrd0hkYksx?=
 =?utf-8?B?NFBabnBweFd2RU1YUnQ3Wm1qRk1OTTh3bGFGZUZpL1ZOSGlkalJIczNrZU5Z?=
 =?utf-8?B?a1RtVjh0M1dWdWNMMmphT0FGeG5SMHpWN204TlJTRkk0TWNOQ2RjbGVsSHBR?=
 =?utf-8?B?WkVNdjYzMmQzSHNDRTR6SFJ2bnduaUhNM3VXUXZxRGxCeGtQWnJUN2t4Q3pt?=
 =?utf-8?B?Rm5zZXFSN1RMa3lRcGV0a3htMm4xVHlYU1JDck1vZmdJeU1xd3JpK0Z4bDB1?=
 =?utf-8?B?YzhPY3huZDFvUXZRTlRHQVlzMHFjbkhTdGtYekJJcXowTVZqZ3pjajMvS20z?=
 =?utf-8?B?UnVibTRFV3RGMG50aG5Oa1pTL0xReFVrY1ZFTk5QQS8wdU5oc3BwYmpVdUxn?=
 =?utf-8?B?VnlEdXJkZDVHMzdmU2hKbXNBQmFsL09oYm03MXRDaVdRYlhSVjBnUU41MHhZ?=
 =?utf-8?B?ZzVPVzVFd0RZZitUbk9wNXJHcm5tM3BvNzNmSHRUSnRWS1UrL05uZ012Mkcv?=
 =?utf-8?B?bThTZmM0eTRqbVM4ZDRJREJ5SXQ0Vkl1M0k5UG5wVWdiU0ZoQURFL0pJRzdX?=
 =?utf-8?B?eHRqVElZeXRya3gyV1IvejZ2MkNEVDRhWnpYYllWa3BWcmpDeXA0T3gzeEl3?=
 =?utf-8?B?dm43d3FaTE41WC9UM3ZLYS84cnhmQTFpSGZFOXNDS3RldVFtOXY3UkZaUTVN?=
 =?utf-8?B?M3JINkNUNXNFakh1MWdnT05RRXo5UlRXS3FDUWVmcHlTbTBrajhoZTVwUTdU?=
 =?utf-8?Q?NxNQvhEDx69e96UiQqv43gc=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4da8a06a-a3f7-45e1-b660-08dbbdcc5fdb
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2023 13:36:08.3868
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J5rTWtonO4nMcqnuwrhaz1lmCy1zc2NWyBrfgbGAUBUSAZBnR5PZR2LcgUuAH4lhVzm/p18Kmlg0C5J84VabZMvY5T/DEsLy4FirazRmGm9F99z1vt36lIVczUJE6nFX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR04MB9972
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 13:36:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61099

Hi Trevor,

On 9/22/23 23:26, Trevor Woerner wrote:
> Add support for the Radxa Rock 5B
> https://wiki.radxa.com/Rock5/5b
> 
> The device-tree for this board is better in the 6.5 (and later) kernels,
> therefore set the kernel to linux-yocto-dev for now (eventually this won't be
> needed as linux-yocto moves forward).
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
> ---
> v2:
> - fix the logic behind the MACHINEOVERRIDES to get the content, and
>    ordering, correct
> - improved the commit message around TF-A/rkbin
> - correct Quentin's SoB line
> ---
>   README                                        |  1 +
>   conf/machine/include/rk3588.inc               |  6 ++
>   conf/machine/include/rk3588s.inc              | 17 ++++
>   conf/machine/rock5b.conf                      | 12 +++
>   recipes-bsp/rkbin/rockchip-rkbin_git.bb       | 37 ++++++++
>   recipes-bsp/u-boot/u-boot%.bbappend           |  5 ++
>   recipes-kernel/linux/linux-yocto-dev.bbappend |  3 +
>   .../rockchip/remove-non-rockchip-arch-arm.cfg | 85 +++++++++++++++++++
>   .../rockchip/remove-non-rockchip-arch-arm.scc |  1 +
>   .../remove-non-rockchip-arch-arm64.cfg        | 66 ++++++++++++++
>   .../remove-non-rockchip-arch-arm64.scc        |  1 +
>   11 files changed, 234 insertions(+)
>   create mode 100644 conf/machine/include/rk3588.inc
>   create mode 100644 conf/machine/include/rk3588s.inc
>   create mode 100644 conf/machine/rock5b.conf
>   create mode 100644 recipes-bsp/rkbin/rockchip-rkbin_git.bb
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev.bbappend
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
>   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
> 
> diff --git a/README b/README
> index 286dafbe1020..032d9bbb6b34 100644
> --- a/README
> +++ b/README
> @@ -30,6 +30,7 @@ Status of supported boards:
>   		vyasa-rk3288
>   		firefly-rk3288
>   		nanopi-r4s
> +		rock5b
>   	builds:
>   		marsboard-rk3066
>   		radxarock
> diff --git a/conf/machine/include/rk3588.inc b/conf/machine/include/rk3588.inc
> new file mode 100644
> index 000000000000..34f0627dc085
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
> index 000000000000..65d9054e88d8
> --- /dev/null
> +++ b/conf/machine/include/rk3588s.inc
> @@ -0,0 +1,17 @@
> +MACHINEOVERRIDES =. "rk3588s:"
> +DEFAULTTUNE ?= "cortexa76-cortexa55-crypto"
> +
> +require conf/machine/include/arm/armv8-2a/tune-cortexa76-cortexa55.inc
> +require conf/machine/include/rockchip-defaults.inc
> +require conf/machine/include/rockchip-wic.inc
> +
> +KBUILD_DEFCONFIG ?= "defconfig"
> +KERNEL_FEATURES:append:rk3588 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"

I believe this is supposed to be an OVERRIDES for rk3588s and not rk3588 
since it applies to both (in addition of being in the rk3588s.inc file).

The rest looks fine otherwise :)

Thanks!

Cheers,
Quentin

> +KERNEL_CLASSES = "kernel-fitimage"
> +KERNEL_IMAGETYPE = "fitImage"
> +
> +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
> +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
> +
> +UBOOT_SUFFIX ?= "itb"
> +UBOOT_ENTRYPOINT ?= "0x06000000"
> diff --git a/conf/machine/rock5b.conf b/conf/machine/rock5b.conf
> new file mode 100644
> index 000000000000..dc31a9f3a4e4
> --- /dev/null
> +++ b/conf/machine/rock5b.conf
> @@ -0,0 +1,12 @@
> +#@TYPE: Machine
> +#@NAME: Radxa Rock5b
> +#@DESCRIPTION: ROCK5 is the 5th generation of SBC designed by Radxa.
> +#https://wiki.radxa.com/Rock5/5b
> +
> +require conf/machine/include/rk3588.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
> +KERNEL_DEVICETREE = "rockchip/rk3588-rock-5b.dtb"
> +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +
> +UBOOT_MACHINE = "rock5b-rk3588_defconfig"
> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> new file mode 100644
> index 000000000000..7fefb017053b
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
> index db8e0166f5b3..3732c7f04373 100644
> --- a/recipes-bsp/u-boot/u-boot%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> @@ -11,6 +11,11 @@ DEPENDS:append = " python3-pyelftools-native"
>   
>   ATF_DEPENDS ??= ""
>   
> +EXTRA_OEMAKE:append:rk3588s = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf"
> +ATF_DEPENDS:append:rk3588s = " trusted-firmware-a:do_deploy"
> +EXTRA_OEMAKE:append:rk3588s = " ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin"
> +ATF_DEPENDS:append:rk3588s = " rockchip-rkbin:do_deploy"
> +
>   EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
>   ATF_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
>   EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
> diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
> new file mode 100644
> index 000000000000..cda5c520c4fe
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
> +COMPATIBLE_MACHINE:rock5b = "rock5b"
> +SRC_URI:append:rock5b = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
> diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
> new file mode 100644
> index 000000000000..e9443f17895c
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
> @@ -0,0 +1,85 @@
> +CONFIG_ARCH_ACTIONS=n
> +CONFIG_ARCH_AIROHA=n
> +CONFIG_ARCH_ALPINE=n
> +CONFIG_ARCH_ARTPEC=n
> +CONFIG_ARCH_ASPEED=n
> +CONFIG_ARCH_AT91=n
> +CONFIG_ARCH_BCM2835=n
> +CONFIG_ARCH_BCM=n
> +CONFIG_ARCH_BCMBCA=n
> +CONFIG_ARCH_BCMBCA_BRAHMAB15=n
> +CONFIG_ARCH_BCMBCA_CORTEXA7=n
> +CONFIG_ARCH_BCMBCA_CORTEXA9=n
> +CONFIG_ARCH_BCM_21664=n
> +CONFIG_ARCH_BCM_23550=n
> +CONFIG_ARCH_BCM_281XX=n
> +CONFIG_ARCH_BCM_5301X=n
> +CONFIG_ARCH_BCM_53573=n
> +CONFIG_ARCH_BCM_CYGNUS=n
> +CONFIG_ARCH_BCM_HR2=n
> +CONFIG_ARCH_BCM_NSP=n
> +CONFIG_ARCH_BERLIN=n
> +CONFIG_ARCH_BRCMSTB=n
> +CONFIG_ARCH_DIGICOLOR=n
> +CONFIG_ARCH_EMEV2=n
> +CONFIG_ARCH_EXYNOS=n
> +CONFIG_ARCH_HI3xxx=n
> +CONFIG_ARCH_HIGHBANK=n
> +CONFIG_ARCH_HIP01=n
> +CONFIG_ARCH_HIP04=n
> +CONFIG_ARCH_HISI=n
> +CONFIG_ARCH_HIX5HD2=n
> +CONFIG_ARCH_HPE=n
> +CONFIG_ARCH_HPE_GXP=n
> +CONFIG_ARCH_INTEL_SOCFPGA=n
> +CONFIG_ARCH_KEYSTONE=n
> +CONFIG_ARCH_MEDIATEK=n
> +CONFIG_ARCH_MESON=n
> +CONFIG_ARCH_MILBEAUT=n
> +CONFIG_ARCH_MILBEAUT_M10V=n
> +CONFIG_ARCH_MMP=n
> +CONFIG_ARCH_MSM8916=n
> +CONFIG_ARCH_MSM8960=n
> +CONFIG_ARCH_MSM8974=n
> +CONFIG_ARCH_MSM8X60=n
> +CONFIG_ARCH_MVEBU=n
> +CONFIG_ARCH_MXC=n
> +CONFIG_ARCH_OMAP3=n
> +CONFIG_ARCH_OMAP4=n
> +CONFIG_ARCH_QCOM=n
> +CONFIG_ARCH_R7S72100=n
> +CONFIG_ARCH_R7S9210=n
> +CONFIG_ARCH_R8A73A4=n
> +CONFIG_ARCH_R8A7740=n
> +CONFIG_ARCH_R8A7742=n
> +CONFIG_ARCH_R8A7743=n
> +CONFIG_ARCH_R8A7744=n
> +CONFIG_ARCH_R8A7745=n
> +CONFIG_ARCH_R8A77470=n
> +CONFIG_ARCH_R8A7778=n
> +CONFIG_ARCH_R8A7779=n
> +CONFIG_ARCH_R8A7790=n
> +CONFIG_ARCH_R8A7791=n
> +CONFIG_ARCH_R8A7792=n
> +CONFIG_ARCH_R8A7793=n
> +CONFIG_ARCH_R8A7794=n
> +CONFIG_ARCH_R9A06G032=n
> +CONFIG_ARCH_RENESAS=n
> +CONFIG_ARCH_SH73A0=n
> +CONFIG_ARCH_SPEAR13XX=n
> +CONFIG_ARCH_STI=n
> +CONFIG_ARCH_STM32=n
> +CONFIG_ARCH_SUNPLUS=n
> +CONFIG_ARCH_SUNXI=n
> +CONFIG_ARCH_TEGRA=n
> +CONFIG_ARCH_TEGRA_114_SOC=n
> +CONFIG_ARCH_TEGRA_124_SOC=n
> +CONFIG_ARCH_TEGRA_2x_SOC=n
> +CONFIG_ARCH_TEGRA_3x_SOC=n
> +CONFIG_ARCH_U8500=n
> +CONFIG_ARCH_UNIPHIER=n
> +CONFIG_ARCH_VEXPRESS=n
> +CONFIG_ARCH_VEXPRESS_TC2_PM=n
> +CONFIG_ARCH_VIRT=n
> +CONFIG_ARCH_WM8850=n
> +CONFIG_ARCH_ZYNQ=n
> diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
> new file mode 100644
> index 000000000000..ce7770456ea4
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
> @@ -0,0 +1 @@
> +kconf hardware remove-non-rockchip-arch-arm.cfg
> diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
> new file mode 100644
> index 000000000000..5b804a2ca26b
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
> @@ -0,0 +1,66 @@
> +CONFIG_ARCH_ACTIONS=n
> +CONFIG_ARCH_ALPINE=n
> +CONFIG_ARCH_APPLE=n
> +CONFIG_ARCH_BCM2835=n
> +CONFIG_ARCH_BCM=n
> +CONFIG_ARCH_BCMBCA=n
> +CONFIG_ARCH_BCM_IPROC=n
> +CONFIG_ARCH_BERLIN=n
> +CONFIG_ARCH_BRCMSTB=n
> +CONFIG_ARCH_EXYNOS=n
> +CONFIG_ARCH_SPARX5=n
> +CONFIG_ARCH_HISI=n
> +CONFIG_ARCH_INTEL_SOCFPGA=n
> +CONFIG_ARCH_K3=n
> +CONFIG_ARCH_KEEMBAY=n
> +CONFIG_ARCH_LAYERSCAPE=n
> +CONFIG_ARCH_LG1K=n
> +CONFIG_ARCH_MEDIATEK=n
> +CONFIG_ARCH_MESON=n
> +CONFIG_ARCH_MVEBU=n
> +CONFIG_ARCH_MXC=n
> +CONFIG_ARCH_NPCM=n
> +CONFIG_ARCH_NXP=n
> +CONFIG_ARCH_MA35=n
> +CONFIG_ARCH_QCOM=n
> +CONFIG_ARCH_REALTEK=n
> +CONFIG_ARCH_R8A774A1=n
> +CONFIG_ARCH_R8A774B1=n
> +CONFIG_ARCH_R8A774C0=n
> +CONFIG_ARCH_R8A774E1=n
> +CONFIG_ARCH_R8A77951=n
> +CONFIG_ARCH_R8A77960=n
> +CONFIG_ARCH_R8A77961=n
> +CONFIG_ARCH_R8A77965=n
> +CONFIG_ARCH_R8A77970=n
> +CONFIG_ARCH_R8A77980=n
> +CONFIG_ARCH_R8A77990=n
> +CONFIG_ARCH_R8A77995=n
> +CONFIG_ARCH_R8A779A0=n
> +CONFIG_ARCH_R8A779F0=n
> +CONFIG_ARCH_R8A779G0=n
> +CONFIG_ARCH_R9A07G043=n
> +CONFIG_ARCH_R9A07G044=n
> +CONFIG_ARCH_R9A07G054=n
> +CONFIG_ARCH_R9A09G011=n
> +CONFIG_ARCH_RENESAS=n
> +CONFIG_ARCH_S32=n
> +CONFIG_ARCH_SEATTLE=n
> +CONFIG_ARCH_STM32=n
> +CONFIG_ARCH_SPRD=n
> +CONFIG_ARCH_SUNXI=n
> +CONFIG_ARCH_SYNQUACER=n
> +CONFIG_ARCH_TEGRA=n
> +CONFIG_ARCH_TEGRA_132_SOC=n
> +CONFIG_ARCH_TEGRA_186_SOC=n
> +CONFIG_ARCH_TEGRA_194_SOC=n
> +CONFIG_ARCH_TEGRA_210_SOC=n
> +CONFIG_ARCH_TEGRA_234_SOC=n
> +CONFIG_ARCH_TESLA_FSD=n
> +CONFIG_ARCH_THUNDER2=n
> +CONFIG_ARCH_THUNDER=n
> +CONFIG_ARCH_UNIPHIER=n
> +CONFIG_ARCH_VEXPRESS=n
> +CONFIG_ARCH_VISCONTI=n
> +CONFIG_ARCH_XGENE=n
> +CONFIG_ARCH_ZYNQMP=n
> diff --git a/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
> new file mode 100644
> index 000000000000..e169240f5067
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
> @@ -0,0 +1 @@
> +kconf hardware remove-non-rockchip-arch-arm64.cfg

