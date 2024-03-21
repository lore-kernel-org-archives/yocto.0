Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622AFC54E58
	for <webhook@archiver.kernel.org>; Thu, 21 Mar 2024 18:35:24 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.105])
 by mx.groups.io with SMTP id smtpd.web10.5166.1711046120685575420
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Mar 2024 11:35:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=YKVVEQ+4;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.105.105, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PTebqLQOxpsQbk8ch2Ldyomwr1fDX/FpyE+YzMi6tq9PZhRCwgDegCYfs8o+RcnXCqk1IVV5qZAGHJN5k8eAGamJNHgOTF34wW25igWQzB1NQ4Kp1L2XodTB2dBWWlX+wQ/P8P0YXpZS9wrLE/FjqPsPI4upMktGsHMIAsOD14vUpAvvtgQG+GNveEtpNUWpRoD++A8W/e+7DB52dylIcRbs7skMXotC6ZqIxjzSYft7Ls9m/h+Y9YZzxgPTEDuEiLxMJMWZRp/G2QyuhhLPi78vNpE8Pw+QDzjkFOnlwD708VO8rUqTTt9T5rbeHdCpG+2r67uJMyOGorZH8XvIIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N45c57BMpjekw8JarQLYyDSrjEjKgLgM0fuEwJKesWM=;
 b=CQhKyPL4HGw6ZeZwZCjjbKiD+a9c1DBZeRVAs88213Q8jjjl37Up+UxA9NEX9XU8uqOT7NmAby5zD8z8wxb1DC9ZWbi6kzg4QSL+Qe8kD7ilgpYc14Na84tXHB4jZfrkKxTSZBgoN/nR0erqM+3X5fhQiXK3eJbEWmqMO6NTq10xlDvhoXpTOxCx2OL67QgZxAaTKwD2hb1igWsDHYN2g/Fi/t2dyfJbjnlKVj/mP7AZNBMEr91U3Yub9pW5p/G5OIjq9sVDOYDGsmX/dntlUL7wwGYECR7G+T+g7i+I5UXdg+1OZMc0dnhTgZD+63pYP7prr/9q6qFVrnXx2gN/Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N45c57BMpjekw8JarQLYyDSrjEjKgLgM0fuEwJKesWM=;
 b=YKVVEQ+4mgy6eVu7oNXuKQnn4wXj+qxQZkysGqWmvOmn1FK43xeYPIC5vck621OdYGP4hHzJOuMhvStkzIebArjz/kIq7HcPlK071WNljoQDnPMOFYhp7rSjZhknoOyXeRDmy2NXdlxRcjkd+8TIKGwbtKqv0ElXaeujZaBNfqnt8tF0PEY7pO8UyfBOB0f2QU9T/KxSAUm6gVYnXqpkFLEQjMbZAHLQUmFbCmdBKldbiWle/k7TEeVC8yWxd0tUI+GG2llY2bvea6j8xA5SeGs7eZnVzx5j1FvEnQ1B4z/Eab+KL1xrzKk1Mop8txNvWTQUAvqa6Q1AdX1szvBOEg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB9351.eurprd04.prod.outlook.com (2603:10a6:102:2b6::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.31; Thu, 21 Mar
 2024 18:35:16 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::23:4118:ae4a:8dda]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::23:4118:ae4a:8dda%5]) with mapi id 15.20.7386.025; Thu, 21 Mar 2024
 18:35:16 +0000
Message-ID: <d1c265ef-1abb-4430-bc95-898182be6af3@theobroma-systems.com>
Date: Thu, 21 Mar 2024 19:35:14 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH] enable stored U-Boot environment
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20240321175340.20640-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240321175340.20640-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0157.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::20) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB9351:EE_
X-MS-Office365-Filtering-Correlation-Id: 70e8711b-bc0a-469f-da4e-08dc49d5a76c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qpUcY7Xf9Fnf7LPpbOf9/o3nu9YaYGJLLONfMwyog/q4cGE85k/dgEXOIp+CXyCQhFoNwJeeOM2bl3dygXcm69ZBUC98jd9AOv517Wk1kySirbA5xH1XJksWR3aENZ6yp61fEY4OdApRjyBdPN9MIu9TvuYDRrI79+DsGOOQYyiqQTE9VpTEHMqvgScpD4GUkYHxmddKb65REbzT9YVayKFjiBti5kVzoV97i3GTAhHlzELQW060cWXxRCiSNk1gIhjvrc5UWrQ20T6fx1vTp5hnaWmM+bLmQpHrX+t94LIkWUe+eDritU+nDWVrIO1Q7ttRSBfkhTz0QOV84UX4Xjy7hIPio7Y4dSCEbATo0cpr3OYhd9S10KSEBqusxc8TsYnQusZBEIxz0ThB7Ex/Kq3/7lT1rVrIQMwm/5dsx+pksgWMvPszAAeT8vlu4vcttbbsq/sT95pZfC09bkWjLefsgqkknh946PRuxAWchNTeCzlANkUdh9ey2rLdMjtRA+kzIn6bVyUSiXIXf75Vn6i1Yays8YvaCGriWxZsfvPOTar4+cW4tpqjw9u1pVlvq2w1/O6i5jQuHjfgV9CsWkpteG4AA0N/Qq7nRzZoD/U=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dXA5ZkZ6UkJKUVZhK3dnaGUydVNmSjFoMDR4OVFNakV0N3hjajI1UjRpQU9m?=
 =?utf-8?B?bnVFWUR6eUFRdU9YMzIvOTZsMXAxWllEWHFIRG4wMGFMNFowYTFtVkZ3TUxQ?=
 =?utf-8?B?UkRPOTVUNEdhY0NpYlJGKzRFOXVMR1lIZTlEc0Zmc21oOGoyTk1MZEdhbDdV?=
 =?utf-8?B?ZTdlNEppWG00Ry9ScDNaQklWMXpuVnJpL0gxeEtzMnN6RmRTZ0pxNDRlUnVK?=
 =?utf-8?B?VFNmQnB5MHNLNVgySlFWQTBnY1NnZ3h0WXk3Y1JMNzZhM01VTWdsRU1MNmow?=
 =?utf-8?B?VkNBZUptWktXMWxxd0UrZXViZ0ZiU0FHQllNcTF6WFQyZEFZdU5EK0dHYnBH?=
 =?utf-8?B?Ylk3Y3BpOUVBRDhlY1RRM2pKSk5xejFuRDFQWGt4ZlBGcTIyKzFBQXBGZ281?=
 =?utf-8?B?bGF3b2xtNkh4SWZxSzl1NHRBa3pLODFWVWlHS1kyL1JQbFQzKzdtbEh2MUdt?=
 =?utf-8?B?UUtxNnFpbGhBdlphNVJycEwyRnZMZGpkQmF0ZGtRN1lrcVAxOUtQdTByMmNQ?=
 =?utf-8?B?clhvenpkWEZsZ2V5dW5JVHNsMmR2M2owOWpqMkZTQzRjdzhCUThCV1R5OFd1?=
 =?utf-8?B?SS9WSDZiV2VDMUgzVVFDckptUWtkbHQ0dHRDb2dlY3BCcTluYVpFRVpITmJz?=
 =?utf-8?B?OExETDV4SXpSbG9NTS81VGord1NGekkxYnJFNVErYWpEcFEzVWRmMHl1Qlgw?=
 =?utf-8?B?dTQ3WWl1Y0dGZ1RGVGlSZUJWWVgwQ0Z2UmNPSVVkVWx5VEZYYWo5cjRGY3NJ?=
 =?utf-8?B?ZWNWdHlXNWZmenFLK1pjL2RrSU9DZGxGODBmK1NFL3JoUlplYWVqWDJYcVpB?=
 =?utf-8?B?STBKZzRCemhvdHhHTXRYMzl0UE1ZdnpHdGhaZlp3YWM4TVB2MzZDRGpleUZF?=
 =?utf-8?B?Ri80QUE5V3lHVXJSZ0p3NHhyMVIrTG96TXdVVFV3MHg3UUZ6V3dUMzMxTjhx?=
 =?utf-8?B?am11SHRVc3FtVlk2bWpNRkhKRlZOcFVlbFp4cXVIWk05YlFxUy9KdGV2djQw?=
 =?utf-8?B?SElIYnE2eFIyekVsNHNoRjN5Uy9jdUdrTVE3M0hNZ0tBcDIrZHB6NlNZaWtF?=
 =?utf-8?B?R1oydnZhaDRoTmhnUFQ2RWRrTFUrbWJNeUl3a2NQcFU0R0xTb2ZNbHZKY3dH?=
 =?utf-8?B?OXdNRWl5TWZYNkxKUEh0Y2dkMFpnM2tZdHNKZkRIUnV5cmlEL0JlRVFXajJo?=
 =?utf-8?B?TmlQaWU3R3NMWGlqdHlUL2tUUjlqc3NQN2hsT09RUWsrREpOcFZIT3FTV2Fv?=
 =?utf-8?B?akxESzgvMXRxQWE4VHQ2dms3K014Mlk5ZWJ1WEV3ZTVkQlZzZVNUNXBMODhs?=
 =?utf-8?B?TzNQOUp0L3YwczdIRWh1UnRST1BxQk1xZi81MkpEMW52dXVoOFpVQVlTWFJs?=
 =?utf-8?B?VkZPVHRINitLR3E5cmo1ekhEcXFJUTlmZXFQbHRSR3pNbldFRmgxYjNDQStV?=
 =?utf-8?B?T2ZlbDZ2ZUhwMVFkMGhqdklRaFBEUWFKbmJLMHRlcnZSVFpsRWF5MVZZZUdT?=
 =?utf-8?B?a1Rtd3dnbmUxRndOMFd1YUNIckRnb2pQelJBdnZNWU50VkxKMUpmWTk1NWJa?=
 =?utf-8?B?RDNKaEhtYThML29HMTAvRjNxNktGdGZ5bjhTRmRKV1cwSGdOSi9RSE1JbGR3?=
 =?utf-8?B?SnA5YVRKMnpYVW1TSEhWbnRmZmYyYlZJUHNoRGluMEZONUxEcFRSaDVGay9o?=
 =?utf-8?B?SXdxQ3NkVEZrSXB1Rk50eml5d2Y2OXhxNzlQYmU2WjJYL1NsRVpKVVJFenE4?=
 =?utf-8?B?Q1Ryb0g0TXlrZ2YzL0VDeW5nWFg2SDA1WGNnWGExZWh3NXJaK2xiVGZQSGxz?=
 =?utf-8?B?YlMyMUYxUzF1TDRaWXh3THZJVDh0UTlGSUhzb2l6R2RINVJCWUxMOVVUR3JI?=
 =?utf-8?B?UEc0UGtGUDFBVXUzMzdXUXI2Um0xNWFsbk02dlRkeXZudlR5OEF4OUxwcUZG?=
 =?utf-8?B?bXNSc21TVEVHdmZ5L2k5N3FFYUQ4NzdwelJZYzFOWUlBRVQ5TnIxdTZIOGZK?=
 =?utf-8?B?SXo5TWZ6OVJPN2VjblFFMGhKeXVMQzdDQ3kvNWlIdTEzd2FNazVSRmZJVHl0?=
 =?utf-8?B?dFowZEpCa0ZCSHI3ZndOWkdjTXRjVTMrVTBtbnVOeEpYMEdNTXBCeUNHM09B?=
 =?utf-8?B?cWhvdXIxWHd5bkcrMXhod1pPYXRoS3NTV1lPd2YydjQrQWJkZWtsc1d0NlVp?=
 =?utf-8?Q?Yi9GyYmYjfgZp0r3Asy729Q=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70e8711b-bc0a-469f-da4e-08dc49d5a76c
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2024 18:35:16.6931
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RUzmcGAZqaddjw6X/ADc9yw5LgnKNKbTdDSUZ584AkMflILSXM8BVvgNMEeDqdkUgRK3AowFwGALcO7z2UrlAt8uzqsFms4Md4EXZO4H1E9slbvZVBFlhQ6emJ8R4u9u
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9351
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Mar 2024 18:35:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62817

Hi Trevor,

On 3/21/24 18:53, Trevor Woerner via lists.yoctoproject.org wrote:
> When U-Boot is built it is compiled with a set of environment variables
> (and their values) built into the U-Boot binary. U-Boot can be configured
> to use storage to load and/or store environment variables which can persist
> over reboots. This storage could be (but not limited to) a chunk of an MMC
> device, it could be in SPI, or simply a file in the device's filesystem. If
> this storage-based environment is valid (checksum is verified) U-Boot will
> use these values over any same values which are built-in.
> 
> By default some of the MACHINES in this BSP layer are configured to use
> a persistent U-Boot environment, others are not. It all depends on what
> is set in the specific defconfig file for the device found in upstream,
> mainline U-Boot. This is, apparently, random.
> 
> If you want to ensure that you have access to an on-boot-device, persistent
> U-Boot environment, simply add the following to MACHINE_FEATURES in your
> configuration:
> 
> 	rk-u-boot-env
> 
> If you have enabled this feature, you now have a second choice to make:
> do you want your build to include the U-Boot environment in the image or
> not? The default environment, as generated by U-Boot, can be included in
> the generated wic image. If it is included, then flashing the image will
> also flash the default U-Boot environment variables and settings, wiping
> out anything that might have been there already. If it is not included then
> your device will either continue using whatever environment happens to be
> there, or will not use any stored environment if the stored environment has
> not been set or is invalid. The variable which governs this behaviour is:
> 
> 	RK_IMAGE_INCLUDES_UBOOT_ENV
> 
> By default this is set to "0", meaning that by default the image does
> not contain the U-Boot environment. To enable this behaviour, set this
> variable to "1" in your configuration. This variable only takes effect if
> the rk-u-boot-env MACHINE_FEATURE is enabled, and has no effect otherwise.
> 
> The script:
> 
> 	scripts/dump-uboot-env-from-yocto-image.sh
> 
> can be used on your wic file to see the contents of the U-Boot environment
> partition at build time.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   README                                        | 45 +++++++++++++++++++
>   classes/rk-u-boot-env.bbclass                 |  1 +
>   conf/machine/include/rockchip-wic.inc         | 10 +++++
>   .../rockchip-enable-environment-mmc.cfg       |  4 ++
>   .../rockchip-enable-environment-mmc0.cfg      |  1 +
>   .../rockchip-enable-environment-mmc1.cfg      |  1 +
>   recipes-bsp/u-boot/u-boot_%.bbappend          | 24 ++++++++++
>   scripts/dump-uboot-env-from-yocto-image.sh    | 29 ++++++++++++
>   wic/rockchip.wks                              |  2 +-
>   9 files changed, 116 insertions(+), 1 deletion(-)
>   create mode 100644 classes/rk-u-boot-env.bbclass
>   create mode 100644 recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc.cfg
>   create mode 100644 recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc0.cfg
>   create mode 100644 recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc1.cfg
>   create mode 100755 scripts/dump-uboot-env-from-yocto-image.sh
> 
> diff --git a/README b/README
> index 4c30f7529353..e357e093d45f 100644
> --- a/README
> +++ b/README
> @@ -67,6 +67,51 @@ Notes:
>   	
>   	in the configuration (e.g. conf/local.conf).
>   
> +U-Boot Environment:
> +------------------
> +	When U-Boot is built it is compiled with a set of environment variables
> +	(and their values) built into the U-Boot binary. U-Boot can be configured
> +	to use storage to load and/or store environment variables which can persist
> +	over reboots. This storage could be (but not limited to) a chunk of an MMC
> +	device, it could be in SPI, or simply a file in the device's filesystem. If
> +	this storage-based environment is valid (checksum is verified) U-Boot will
> +	use these values over any same values which are built-in.
> +
> +	By default some of the MACHINES in this BSP layer are configured to use
> +	a persistent U-Boot environment, others are not. It all depends on what
> +	is set in the specific defconfig file for the device found in upstream,
> +	mainline U-Boot. This is, apparently, random.
> +
> +	If you want to ensure that you have access to an on-boot-device, persistent

If I'm not mistaken the current implementation in this patchseries 
forces the use of an SD card, so I wouldn't say it "ensures that you 
have access to an on-boot-device".

> +	U-Boot environment, simply add the following to MACHINE_FEATURES in your
> +	configuration:
> +
> +		rk-u-boot-env
> +
> +	If you have enabled this feature, you now have a second choice to make:
> +	do you want your build to include the U-Boot environment in the image or
> +	not? The default environment, as generated by U-Boot, can be included in
> +	the generated wic image. If it is included, then flashing the image will
> +	also flash the default U-Boot environment variables and settings, wiping
> +	out anything that might have been there already. If it is not included then
> +	your device will either continue using whatever environment happens to be
> +	there, or will not use any stored environment if the stored environment has
> +	not been set or is invalid. The variable which governs this behaviour is:
> +
> +		RK_IMAGE_INCLUDES_UBOOT_ENV
> +
> +	By default this is set to "0", meaning that by default the image does
> +	not contain the U-Boot environment. To enable this behaviour, set this
> +	variable to "1" in your configuration. This variable only takes effect if
> +	the rk-u-boot-env MACHINE_FEATURE is enabled, and has no effect otherwise.
> +
> +	The script:
> +
> +		scripts/dump-uboot-env-from-yocto-image.sh
> +
> +	can be used on your wic file to see the contents of the U-Boot environment
> +	partition at build time.
> +
>   Maintenance:
>   -----------
>   	Please send pull requests, patches, comments, or questions to the
> diff --git a/classes/rk-u-boot-env.bbclass b/classes/rk-u-boot-env.bbclass
> new file mode 100644
> index 000000000000..2de3a54d35c3
> --- /dev/null
> +++ b/classes/rk-u-boot-env.bbclass
> @@ -0,0 +1 @@
> +MACHINEOVERRIDES .= "${@bb.utils.contains('MACHINE_FEATURES', 'rk-u-boot-env', ':rk-u-boot-env', '', d)}"
> diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
> index 147a36685d7d..eea4798a05c3 100644
> --- a/conf/machine/include/rockchip-wic.inc
> +++ b/conf/machine/include/rockchip-wic.inc
> @@ -2,6 +2,11 @@
>   
>   require conf/machine/include/rockchip-extlinux.inc
>   
> +# u-boot environment
> +# any MACHINE that is using wic is using U-Boot
> +# if rk-u-boot-env is enabled, then include the u-boot-env package
> +IMAGE_INSTALL:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rk-u-boot-env', 'u-boot-env', '', d)}"
> +
>   SPL_BINARY ?= "idbloader.img"
>   
>   IMAGE_FSTYPES += "wic wic.bmap"
> @@ -11,7 +16,12 @@ WKS_FILE_DEPENDS ?= " \
>   	virtual/bootloader \
>   	"
>   
> +RK_IMAGE_INCLUDES_UBOOT_ENV ?= "0"
> +RK_UBOOT_ENV = "${@bb.utils.contains('MACHINE_FEATURES', 'rk-u-boot-env', \
> +	bb.utils.contains('RK_IMAGE_INCLUDES_UBOOT_ENV', '1', '--source rawcopy --sourceparams=file=u-boot.env', ' ', d), \

I think one can use bb.utils.to_boolean:

'--source rawcopy --sourceparams=file=u-boot.env' if 
bb.utils.to_boolean(d.getVar('RK_IMAGE_INCLUDES_UBOOT_ENV'), False) else ''


> +	' ', d)}"
>   WICVARS:append = " \
>   	SPL_BINARY \
>   	UBOOT_SUFFIX \
> +	RK_UBOOT_ENV \
>   	"
> diff --git a/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc.cfg b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc.cfg
> new file mode 100644
> index 000000000000..0e124376cf36
> --- /dev/null
> +++ b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc.cfg
> @@ -0,0 +1,4 @@
> +CONFIG_ENV_SIZE=0x8000
> +CONFIG_ENV_OFFSET=0x3f8000
> +# CONFIG_ENV_IS_NOWHERE is not set

You can have ENV_IS_IN_MMC AND ENV_IS_NOWHERE selected, that's not an 
issue. We actually force it for Puma and Ringneck for example. So I 
would suggest to just not care about it, what you're interested in is 
ENV_IS_IN_MMC after all.

> +CONFIG_ENV_IS_IN_MMC=y
> diff --git a/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc0.cfg b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc0.cfg
> new file mode 100644
> index 000000000000..6519ebd43e0a
> --- /dev/null
> +++ b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc0.cfg
> @@ -0,0 +1 @@
> +CONFIG_SYS_MMC_ENV_DEV=0
> diff --git a/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc1.cfg b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc1.cfg
> new file mode 100644
> index 000000000000..449e045cd643
> --- /dev/null
> +++ b/recipes-bsp/u-boot/files/rk-u-boot-env/rockchip-enable-environment-mmc1.cfg
> @@ -0,0 +1 @@
> +CONFIG_SYS_MMC_ENV_DEV=1

So this will not be enough starting from v2024.07, c.f. 
https://source.denx.de/u-boot/u-boot/-/commit/3b95c03d5706255f39a8f1a0fa02045d4fd981df 
(just giving you a heads up ;) ). That's the default value in case the 
mmc env is not found using what will become "more traditional means" soon.

> diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
> index f8378d91ce68..ae50e4f5226d 100644
> --- a/recipes-bsp/u-boot/u-boot_%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot_%.bbappend
> @@ -1,13 +1,23 @@
> +inherit rk-u-boot-env deploy
> +
>   FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>   SRC_URI:append:rock-pi-e = " \
>   	file://PATCH_1-2_net_designware_Reset_eth_phy_before_phy_connect.patch \
>   	file://PATCH_2-2_rockchip_rk3328-rock-pi-e_Enable_DM_ETH_PHY_and_PHY_REALTEK.patch \
>   	"
>   
> +# config fragments for enabling u-boot environment
> +SRC_URI:append:rk-u-boot-env = " file://rockchip-enable-environment-mmc.cfg"
> +SRC_URI:append:rk-u-boot-env:rk3308 = " file://rockchip-enable-environment-mmc1.cfg"
> +SRC_URI:append:rk-u-boot-env:rk3399 = " file://rockchip-enable-environment-mmc1.cfg"
> +SRC_URI:append:rk-u-boot-env:rk3568 = " file://rockchip-enable-environment-mmc1.cfg"
> +SRC_URI:append:rk-u-boot-env:rk3588s = " file://rockchip-enable-environment-mmc1.cfg"
> +

That's an interesting choice, this forces the environment to an SD card 
if I'm not mistaken, which may not be what you want if you don't have an 
SD card (e.g. flashing on eMMC).

Honestly, it may be a bit more worth it to simply backport 
https://source.denx.de/u-boot/u-boot/-/commit/3b95c03d5706255f39a8f1a0fa02045d4fd981df 
and let it figure out if it can load an environment from the same medium 
that was used to load U-Boot proper.

>   # various machines require the pyelftools library for parsing dtb files
>   DEPENDS:append = " python3-pyelftools-native"
>   DEPENDS:append:rk3308 = " u-boot-tools-native"
>   DEPENDS:append:rock-pi-4 = " gnutls-native"
> +DEPENDS:append:rk-u-boot-env = " u-boot-mkenvimage-native"
>   
>   EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
>   EXTRA_OEMAKE:append:rk3308 = " \
> @@ -40,3 +50,17 @@ do_compile:append:rock2-square () {
>   		cp ${B}/spl/${SPL_BINARY} ${B}
>   	fi
>   }
> +
> +do_compile:append:rk-u-boot-env() {
> +	UBOOT_ENV_SIZE="$(cat ${B}/.config | grep "^CONFIG_ENV_SIZE=" | cut -d'=' -f2)"
> +	UBOOT_MMC_DEV="$(cat ${B}/.config | grep "^CONFIG_SYS_MMC_ENV_DEV=" | cut -d'=' -f2)"
> +	echo "/dev/mmcblk${UBOOT_MMC_DEV}p5 0x0000 ${UBOOT_ENV_SIZE}" > ${WORKDIR}/fw_env.config

I'm wondering if fw_setenv/libubootenv supports partition labels?

If that's the case, then:

/dev/disk/by-label/<LABEL>

and you can add a label to the wic partition for the uboot environment. 
Which means you don't need to know if the image is flashed on eMMC or SD 
card to be able to use this.

> +}
> +
> +do_deploy:append:rk-u-boot-env() {
> +	UBOOT_ENV_SIZE="$(cat ${B}/.config | grep "^CONFIG_ENV_SIZE=" | cut -d'=' -f2)"
> +	mkenvimage -s ${UBOOT_ENV_SIZE} ${B}/u-boot-initial-env -o ${WORKDIR}/u-boot.env
> +
> +	install -d ${DEPLOYDIR}
> +	install -m 0644 ${WORKDIR}/u-boot.env ${DEPLOYDIR}
> +}
> diff --git a/scripts/dump-uboot-env-from-yocto-image.sh b/scripts/dump-uboot-env-from-yocto-image.sh
> new file mode 100755
> index 000000000000..c10c562ae53a
> --- /dev/null
> +++ b/scripts/dump-uboot-env-from-yocto-image.sh
> @@ -0,0 +1,29 @@
> +#/bin/bash
> +#
> +# a program that can take a wic file and dump out the contents
> +# of the U-Boot environment in canonical hex+ascii format
> +# (assuming the "rockchip" layout specified in this layer's wic file)
> +
> +# check for programs
> +check_pgm() {
> +	$1 --help > /dev/null 2>&1
> +	if [ $? -ne 0 ]; then
> +		echo "required program \"$1\" not found"
> +		exit 1
> +	fi
> +}
> +check_pgm bc
> +check_pgm dd
> +check_pgm hexdump
> +
> +if [ $# -ne 1 ]; then
> +	echo "required param missing: yocto wic image"
> +	exit 1
> +fi
> +if [ ! -e "$1" ]; then
> +	echo "specified file \"$1\" not found"
> +	exit 1
> +fi
> +
> +SKIP=$(echo "8128 * 512" | bc)

You can remove the dependency on bc by doing the following:

SKIP=$(( 8128 * 512 ))

Cheers,
Quentin

