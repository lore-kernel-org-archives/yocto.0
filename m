Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27336C48BEB
	for <webhook@archiver.kernel.org>; Wed, 21 Feb 2024 18:43:41 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.128])
 by mx.groups.io with SMTP id smtpd.web10.1746.1708541019864408315
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Feb 2024 10:43:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=jTXWYngf;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.6.128, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hWxK9ymuWYsAy+9rr5ctT1gauseVQ06uDA7B8cXOvMA6JYTsSK6w5hn/AhjzML8Fv/e4e11XtCQ9c1thPjPSGZgRiqK32kxe/3FoDekaETUXnN4xCu1XkTN7QGTFkdvZbv8+EI33Vqtdv/BRg2nuZahWHEv65YSzz0juU728uTllehcbyUr+HVMOdtjSQRinR2ETQ925eb63612W8XnWTsQX2jR+1Igkw+pvHBK67za0jZvu6XepkNQw5hLp0snWzYn0vs6cxrPglq0j1iiItBWp/KhY7rPiaX/VEZ7wdYWRjqUWRZNReS+qsYNAmZa+llkNFRCd67wVzi5wPcYD2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4taJpK7+MWtkQYBFfQIj3PsRMCuE0/CcMCWfPtviopA=;
 b=DGMzkqRF1F5LOe0ynQ8be+NslUnRT6NYFC0uIygZHNLpzbTB58gJiotIoyE7AC0x0XyLPMIuLhEo1Z/Q5bHfUy9Gxu8qRkHWDnjLTdtVmzYDYIJEmxUclwwCO3eVu1rCGc/enbK3zYmTuaedQaBC1CQzF55tDh+5h3tTq3OLa3i4BzU3t5xZJ10uPJzRZVF7wDu3vqAGowLFnlfeb0HJeUlc6Jjc+SO1+NHx8UQ1Kmk4ZrCR4XdCSsBHM4N6Y7E0UiCz+SQAngvwZnI92GLyr/o/5zyoQUrv/sCdlCiRoa9wqMppkFfiMMZ5EYOa02CO3Tu+G043lC1a862NPDDOTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4taJpK7+MWtkQYBFfQIj3PsRMCuE0/CcMCWfPtviopA=;
 b=jTXWYngfVpORA0YwH1SorAd1tF+6uAsr6pzm3UYnZI/O8nrMCjqrTwaetLQPckf2NF4TJCqucxZcon3o+JlOldyOpC3icKT3Sc1mxTAnEVM5TAUhdYDM3Zpb++Mn3mek8KMSA7e2T3Jauq5dEENRfmoLDSiTm7izxS4FhmBHdmK+9broelSmpyN7bSkRuEWkeNkO0dRsaLTDv9Eg1ofwZ40E/oYfZN/7tmIK2CVARMA9sOnd1l3gnta+F8Z5OXjoX2+w7qT9pd3pqgn1YbvJO4FOATayb4wYZtHsylM9H73iAVBuv6DkwoALORsqX3pFq3joqAJJNd/U1364dGDU7w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM7PR04MB6920.eurprd04.prod.outlook.com (2603:10a6:20b:101::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.34; Wed, 21 Feb
 2024 18:43:36 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.036; Wed, 21 Feb 2024
 18:43:36 +0000
Message-ID: <4c980c78-64dc-4fea-a0f8-c97288bfcb88@theobroma-systems.com>
Date: Wed, 21 Feb 2024 19:43:34 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH v3 4/5] remove /boot partition
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20240219174825.7084-1-twoerner@gmail.com>
 <20240219174825.7084-4-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240219174825.7084-4-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0006.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::19) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM7PR04MB6920:EE_
X-MS-Office365-Filtering-Correlation-Id: daace85a-bcf5-49e7-1c16-08dc330d036f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	j0WryS2vWAuC7PewGLS//x3LUSZJ+h0NE4qeZglDhc/VCs+929bVr3eWlkwZLsIORDNKKxP56e594LIkB/bCsyeqYDkf71yGCoY8q8lhThV1S55ZsV+nRJtr2Y5T44/5ZX13zPf+/8XiH459r+JGK0h7n0IcLa6POPWYQw6TQPOwyT4ZwLdfKEaoC7qE0yftzuOd3xAAsx4l7QT9PXE2h9R8j1UbUGUoewsex6B5sr9mLzx5Ryemz/pq+sat3kvGyMvkf0j/mnGSuZNAah/CMgd9RJkvlKgPYdbNGSbzNtISzUIg3WTdZ7k4h1tOfYZSzoFxgB50iokmbdVVTQPvHr4zIoBflOdjemoO6nMxJOEbdEBpPDIBru3bFKhtpsIXBQaADObvO3SxMt9UtNplmRKjIrOQ9TpboxTtTTwZ5YLQx1bQtnWBx2oYl6oJaKWooPpqX/FvhiqxiqQeZHQMwHWHfqbdXwVkKXjRHNqX5Z4CXluPQTWQHONb/eNvsvZIGzqqasa/852L+MiU+8cFOw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dHNnTWhMc1MrZFlqSmM2UmMxc3MzUkk5YjZteFhWQXJtK0xyNEFCcnQzaE1X?=
 =?utf-8?B?Rms0WnRHdmViYTR4MUdKM3M0YWFSaXZPeFhGZHRVeVpXV281ZlVXMGNxSzBt?=
 =?utf-8?B?a1QyVlE3YXBGSW9Qc3grejhaNmYyMGU1c3lRYTloWUsxdUpIUTVGOUNidU1P?=
 =?utf-8?B?Mk5Oa1lZNm9Ndm9qN1NVenZtZWVsUDVoZ1BRc3dXYjlJNkM0RnpBMklCQ205?=
 =?utf-8?B?NHh5WnZ3Z3pxOHhDdzVzK21UcjZqTXNtYW00bjdwVTgzK1VLWERkK1BYMUNw?=
 =?utf-8?B?WFFLTmV6aWVmdFROb1VmcisvQ3YvWi85Rm8yZ2FxR3JhNmt6SjBwMVpzMVZY?=
 =?utf-8?B?L0ozN0FDKy90dk4rc0VMQXpUVHRNMHhiVkY0UjJNYVN1V1ZiSC9RUjJQOGxq?=
 =?utf-8?B?anl6YmFxcWhSaU1rVnNlUkxiTkxTam15ZGU0Q1dkeFZZc2tHczgvTWxSNDEw?=
 =?utf-8?B?emVjQW4ySDdjcHdObEFnVVdlcXlSMlYwNDRGMDYrZElabzkvVTJUcmtORXJn?=
 =?utf-8?B?YnM5NU1PWndNV0VuOGFjUTkyOXROaDc2NGJjeE9pQmlGODZ6RjV5UTI5T3l4?=
 =?utf-8?B?UW41RzFybXlvOHdSWGhac1VrMUdBU0xGZzBlWTB0azFCQ296QVRrbjJ1U3JT?=
 =?utf-8?B?cjNtRHZJKzcwUE9VSXBHblBYakk0dFFVZDV0NGNnNm5XSEVPREJPbzJYc2Zt?=
 =?utf-8?B?am1TUVBVZzJjcit3VTd3NVNmVk5mNE9vQUJpS2RqWjBhbFNuYnZCT1JvTWNW?=
 =?utf-8?B?V3hqQXFMZHpFaEJFa1o0aWZ0b0Vkc0VPcGNGRWMvTktoUU5kclZhWEJnYkNT?=
 =?utf-8?B?L2VObFRQRmE5ZXprVmVWeTNUMUZ5NkNBMFkrcjFQRDNBRmFXN01ERmtHdFVs?=
 =?utf-8?B?VnJhaTNyNnc5SnhHRWVDa1BhaGtHcjhOazJGZ1FsR3ZmZ3BiTHBQK3VLMTNG?=
 =?utf-8?B?T3YyWVZMREtxTjJrMTJRMHQwNjV1VTFXalorY3VRTm5CMWZuZDZQbHRHTUlk?=
 =?utf-8?B?L0xaNFhEcTBGVHVRbDVyN0d0aHYyZ0ZIWnVsVzBMSk9UNjZ5Ylo3ek9yb25K?=
 =?utf-8?B?ejhnSXBkY2NkNHJaMU5pNGRyZDFndkNZaUJDbmxSaDY0Q2l6cVVGUWJ0L2JF?=
 =?utf-8?B?RUk1SDB2MXVyV29MNUQ5aHpKOXQyVnZ4VWo1cnk4c3Z4YW80L2lqak4wRDN4?=
 =?utf-8?B?aTRwd1hURDdaLzRWZzZqOHNEUmFzZGlGZlk0SzFINWxHQjNURTl2cG84ODl0?=
 =?utf-8?B?MGRZQytpMUtJdmk3UStlYmw4dGg4b0YrVTIwRjFnN3VjR2Z2MEtuVEF0Kyt0?=
 =?utf-8?B?ODEvZndmYnplaHhIZ3Y0VVRmQjlNWVJsVFZ5TFV3OUx2UVcyK2pkWmx6Wm5n?=
 =?utf-8?B?bFplUis3UDNpekVyNUE5Vnk3SlpDTGR1aGFUVnQ5RzdHR0kwblhuZXU2UVJK?=
 =?utf-8?B?dDZjZW85NkpybHNXa3hQdW9pU0VMREIzcEZueFhYM2dJNXUvL01kQ25BaUJE?=
 =?utf-8?B?U01DWkV0WWNoKzhqTXMzSU9CQ0dxWDQ4MmhjdXk0QnpDNTJoeFpMaFNmSG50?=
 =?utf-8?B?SVYyWlUyM1lrTlU4YjA3bkZHTnorT2piMGNzRzg1MVBBenJjS1gwcDRVZDZW?=
 =?utf-8?B?N2wyWGZYN3hTVFczUWFtcG5OMTQ3SjFyVVptM3VUSkRkck5BQTFxTXFWd09q?=
 =?utf-8?B?YnhHeWdBTzlJc2lJa3NhRVFnbnlmdFVDNmd1c1I1VHRtZlpEa0xqWmVjelFo?=
 =?utf-8?B?ZmpuTnROWlBjUm1SQnkrUHZ6aHh1T1lsQ1VhUnBncGsvSHlPSFl4Sk9XdG5h?=
 =?utf-8?B?WG1Xd05FQks2eHErQlV5U0xOK1hKbTA2bmcyakZNY0sxOS9LQ29mOEZuUXJ6?=
 =?utf-8?B?Y25aeDQyRlRub0hHK0Y1UW9DNFpoK2NLazhHc2lFMEtvNkNvZTArTTRTTXRO?=
 =?utf-8?B?T0hCRVpDZC9tbXA1MHV5dWF0b3RsMDRvOTFTSGQ4UXRWNS9IbUhjbVVmT2tK?=
 =?utf-8?B?emNhZG84cnd6SnlWQ2NsMVFQYi93UTJLb3pEVERUUUkyTDNqa1NNSzhGQlV6?=
 =?utf-8?B?bWIweU9zOEJJMEViYjJVckp1WVFSVXB5aUd4cDU3OXNIKzZ5SkFKZVEzQ3NY?=
 =?utf-8?B?cHc4T0FLalNJU0tNaFloWWdHbXN4MUN0aENNRGtDK3dnZzZCc1hyWmFqOVZL?=
 =?utf-8?B?dlFBbVBDbDU0em82Wm5FWHRWR1JsVzZLTVR3MHJPYUdkMkI2Nk5CSVVGUCtn?=
 =?utf-8?B?bVY5Mml0emVTZ3gveHpWa0pWdlhnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: daace85a-bcf5-49e7-1c16-08dc330d036f
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2024 18:43:36.6076
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hR7rKnBXRCgpq7gvxyO07Rg0ItJWcuUOuBhUzmzyWBzy/1gQfUBVe+aP4y15NMbvDGAIhcZNwe33nuzcbZhVsm3OSqNKMl9Xulb82Y2MqBzjgUixSL77+kPzUI5TNJpt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6920
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 18:43:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62557

Hi Trevor,

On 2/19/24 18:48, Trevor Woerner via lists.yoctoproject.org wrote:
> In order to boot successfully, most Rockchip SoCs require a specific
> partitioning scheme which was defined many years (and many SoCs) ago. That
> partitioning scheme places the SPL and U-Boot at specific offsets at the
> start of the boot block device:
> 
>          https://opensource.rock-chips.com/wiki_Partitions
> 
> The Rockchip partitioning scheme goes on to also define the locations
> of a number of additional partitions, including the "boot" and "root"
> partitions.
> 
> Since both the SPL and U-Boot have already been placed on the block device,
> the "boot" partition only contains the extlinux config file and the
> kernel+dtb/fitImage; it doesn't contain any bootloader artifacts (other
> than the extlinux config).
> 
> The location of the SPL partition is a hard dependency since the BOOTROM
> etched inside the Rockchip SoCs is programmed to load and run a validated
> binary it finds at this location. The locations of the "boot" and "root"
> partitions are not so rigid since it is U-Boot which interacts with them.
> U-Boot is very flexible with how it finds boot components, and in its
> support for various devices, filesystems, sizes, etc.
> 
> Both oe-core's U-Boot metadata and wic's bootimg-partition script contain
> logic to generate the extlinux pieces required for a bootloader to boot
> a Linux system. If both are enabled, the wic pieces silently clobber the
> U-Boot pieces. However, the mechanisms contained in the U-Boot metadata are
> much more flexible, from a user's point of view, than the mechanisms in
> wic's bootimg-partition.
> 
> If a user wishes to setup some sort of A/B redundant update mechanism, they
> must have redundant root partitions (in order to update their filesystem
> contents) but they also need to have redundant boot partitions if they
> wish to update the kernel as part of their update mechanism. Pairing
> redundant kernel partitions with redundant filesystem partitions becomes
> unnecessarily complicated. Therefore it makes sense to combine the kernel
> and the filesystem into the same partition so that both the kernel and
> filesystem are updated, or rolled back, in lock-step as one unit. Specific
> kernel versions and configurations often have dependencies on user-space
> components and versions.
> 
> The /boot location is not going away. This patch simply transfers
> responsibility for its creation to the more flexible U-Boot mechanism
> and includes the kernel as part of the same partition as the root
> filesystem. Not only does it add flexibility, it also makes update schemes
> more straightforward. Although having a separate /boot partition is a
> "requirement" of the Rockchip partitioning scheme, it is not an actual
> hard requirement when using a flexible, open-source bootloader (such as
> U-Boot) instead of using Rockchip's proprietary miniloader, preloader, and
> trust.img.
> 
> Build-tested for all boards.
> Run-tested on:
> 	nanopi-m4-2gb, nanopi-m4b, nanopi-r2s, nanopi-r4s, roc-rk3328-cc,
> 	rock-3a, rock-5a, rock-5b, rock-pi-4b, rock-pi-e, rock-pi-s,
> 	rock64
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Thanks,
Quentin

