Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54BFFC48260
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 09:49:09 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.123])
 by mx.groups.io with SMTP id smtpd.web11.15419.1708076946053080522
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 01:49:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=hLsJ09Tp;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.123, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jhMwfFsWRnjJk9nrJndwJRUR2Zd4crympXCplkajon9RZiR8WSrVejxPekiop+islPCPBAb8oSmjoZuvnqppsfAbt+31+ME7JwMomkABYws3zvsdT+JV8dkpvVcpatZ4c2+IVGnQWtBIpt4jUgx+4cUDOjjWv+vXGFEfhu+0XgLhXI6JRckj46KtRqzxlu8e6ISFNvJ5OOjlPK1HnddYlbpiQ7YGccz6/pz71hcUG4r/6fQrpouj/PZJcJSVsLqosM4Dzbdcnuld7wliBs1FR8vl6dn7476esAY+7DsJJMQtdDgvRz/jkMwsHS8XSVaFzXhVJQIkmi4KmlPcrwf7RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KdDKAUMGFWP9/YywkEy2TA6RTQpTdmpPrl451SoO75E=;
 b=KqX07aPf5pElreFnn8Lhv7y9OvDBpH0ZyCi78/pa/IE9SPo9CrolWkDSQlLfE0gYPK2nDyV7msdbJWK5ESWt23/4F4m3H1miYJDg+21eKcdeutDTrJbehbFZ+28Wvvk6w8hGawis+NMIwfGs5NBdd19oQcfIaaXzeVtqJlGiJUi0XMnfpGCMrI6lw0mBwQkQWTJ77Gg4VGTPiVzgj1Ub+x9pPH2tOwQeZXjAdVb6z9wTzt7nnzH24SBNimf54EiREU4OmuApdg/j24BJH/8dRYT/xvtED15m0Mginn7E41DTQdQZmKJNJ/b4/mgkXZ1/DLqks0fOOr+g3EAu6jCkBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KdDKAUMGFWP9/YywkEy2TA6RTQpTdmpPrl451SoO75E=;
 b=hLsJ09Tp+AfYRURaCqczD5lfw+iNXOtHm2xDoYJWky8wMrSrjHGDwxjp/UGXIfiAxkcz6QrX2DgcPBUcjgNjmY6sv89AxBWS8SE548gpAJ2WH2jQt/R7W8B1Tl3Xn5fys6mCyaNd2//ucoEuIEKPHEI3bonGLIIvCwvkD9ZnOkaXs1p4TPGtMcpGrWvBrwOC23wdqVxU4EEIGVcA6pEedDSIObbFvfoZh7yglHD31qwgq4qh6qPj9Dm9zWslqbmUPYi1wfbyR5fexNqKcrBd0EmxmYEWItKgl2YPxtOiXvykS/lyr13cp2XooHMMpFsj4kyall0B+NUCfs9kA/KZ3A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAWPR04MB9888.eurprd04.prod.outlook.com (2603:10a6:102:385::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Fri, 16 Feb
 2024 09:49:02 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 09:49:01 +0000
Message-ID: <62ce91fe-9bb8-41fe-940d-59ce77ac9cfe@theobroma-systems.com>
Date: Fri, 16 Feb 2024 10:48:59 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH v2 2/4] rockchip.wks: add all
 Rockchip partitions
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20240216082922.7873-1-twoerner@gmail.com>
 <20240216082922.7873-2-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240216082922.7873-2-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0167.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::15) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAWPR04MB9888:EE_
X-MS-Office365-Filtering-Correlation-Id: 5867308a-9953-4254-4cd2-08dc2ed48161
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0ulZbOfA6/w8RlsqYOb7BmzQJVleqnfslp9mdI8X+f8mzz/qDL47eMp3qeVWCoX5wBrUj/91kvBvA1VzUotpYiuhhbQkmdZRcSm1+aLMjM5EzL4Mv1mU2nv+P8IMTMVWvnkiGRHQbYNy4dvrZGv+pCf4935218NJPpKvOrE0Vm6zuAFK6NKejBfqRCkGtRByl2GYw1VC2EZUy7/dlNVmp6UDrYVWDzQ+/HO75ZoyqcOwwSt2MV5muXOL5OdFZ3xo3p6Imk/WOZlxBGSXDiMUhhWbUqK/KEDGlFfdWp1ZhDv+dl5ahwBYoj9RZQBlP1uTY6UN2/1OnSi4FzSRmyB4glc7uW8r5nwcdc8BABNiVpbUP8v9h/2Z2rTmcr3AzPp5WCfn95OFqybtToqatY3iyDt9OZin5+i7InBAJvgG1BPdJA2SU8wS86HjV+krpMSsXXiY2yFkI95Df2vLyWoQxHctlVc8jGK6wQZHvW87ed6sraVRiTxu61yCsRZmqZQnksHlhgUPMVTAoyazf4b8T4shf/Beusq4fmEtbsMY+G4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(136003)(346002)(39850400004)(396003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(31686004)(316002)(5660300002)(44832011)(2906002)(8936002)(66556008)(66476007)(31696002)(966005)(86362001)(8676002)(6512007)(45080400002)(41300700001)(53546011)(36756003)(2616005)(478600001)(6486002)(38100700002)(66946007)(83380400001)(6506007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cTlWdXphWVN4NWh4WFgrd3Q2Q2E5R0ZVQS9SWUZMQ01jUEwvb2pGZ3hjNlB3?=
 =?utf-8?B?K3NoR2wwOE1UQzRaZzBFeEozK0FPSUtLU29sbWlscEpaUmhlV2ZjS1dQWUZH?=
 =?utf-8?B?VWVpbGZaY09MVDBMaW8vUVZTVkw2WEJwcU9ybkpoa2FGVnBIUFRXazJDN0dN?=
 =?utf-8?B?ZmZGZFVuaDBBMzdnL1djWHpWUDIxTVhwTGxBRkVOMUVwaS9iOEFLR3pjRkcz?=
 =?utf-8?B?clhmVUdrT09QUjIzOWY4ZEV4YTQzL1ZiSDduR0I3d1dWSmt1TXpLaXdaT2pS?=
 =?utf-8?B?UlNOWDhqSkhFS2ZCTXUxVUNLVWVQREhIeFEvR2txSlRDdyswSDJaL3VnbkZK?=
 =?utf-8?B?VXdiZXZpTi92ME9lU1VrcXJQMndrQStRM2lNRkt5QUlmSjA2VG5oeXQzdkJ1?=
 =?utf-8?B?cGZCaDhUTUVDRXkwd3BxZlZESS9NRlFWWDJQdGxaOGRNcVh6ZXV6QWN3ZUZa?=
 =?utf-8?B?dGc2VjV2WXBSRC9yd1ZXQy9VdmxFK1cvSTdyZHl5NmZROHdvYXpTL0NMVVJQ?=
 =?utf-8?B?L1huU2FpMjJDeFY3SVp4RzN0NVhWUEpvVS9tSFIwUTVGM2lpeSszNUNpSy9J?=
 =?utf-8?B?d3NMK0VNdkVEZjJpekhWd0p6N3ZaUS8vQXd4OTFIVnBsWGhacHU5c3hxbXFV?=
 =?utf-8?B?QUdXQThocVNJakpzVDhrK1lNU3JkTmNzSGl6QmFxMEZ5bGI5a0E2N09qeVF2?=
 =?utf-8?B?TjhNeVUxZC93UndIY2tvRUNSdjJ0QWlGMTdsRVVXK2ZtbFZ0UzkvNi8yQ3JE?=
 =?utf-8?B?MTRHREpveHl3SDlTOVEwODhoeTV6aE1SVktBSmhRSW1zRjdLc1kza3ZpR1hk?=
 =?utf-8?B?MHUyUG9xZXA5K1F1R1hNYTZDMVFtU3ZiQSs5Ymo5eHBnWU85aExNS0I5Nms1?=
 =?utf-8?B?d2lGK1RwYldiRlVvUVFDNTBHRDQySVhtUFUzdnZwVWRwV0tQUndmNkdLSTVN?=
 =?utf-8?B?bWVTa1UwR0d4VWtDam5MMUNLTnVKZEZINkw4UTh2bG5FQld2UDBmL2ozNDFm?=
 =?utf-8?B?aXVBc0pBMm1WMmlkQk0yRDYrNmpGWlpXRGRVTU1GTWVqdXVVeFAwK1pEWVFO?=
 =?utf-8?B?WVNOSmpuMWlZblZFVmV5enNzN08wenNlMjBBWHIzYzRFUzBzMVBpMnNPMWJY?=
 =?utf-8?B?Y096MjZHM2lFOGVVTVFxVlFDdkVVS1BjTmFBREJyd2Rxc0pFNVJzK1VFcm1q?=
 =?utf-8?B?VXk0RXNxQUtBMnNMVm1Kd0dOeE9HWDlXNTY3aXVmOWdMdUU2dHdKY1dSeFpF?=
 =?utf-8?B?UjVNdktCVUNuNWsxcW9uS2ZSenNyWW0wOVdjOERzdUIxQVZJNWNsNEFpalhJ?=
 =?utf-8?B?TldZN0o1MEdSZzZoaXpRQy9pNjJWWTBxMGt6ai9tUVMvVlUzUjRBVkZhRFFk?=
 =?utf-8?B?S2tjMks0U093RkZ6cFdKeGVvUllaeFFiS3h0aHpBZGRZWFJkTms3eFE5ODh4?=
 =?utf-8?B?Z2tNb2s0QlNMeXo3VFJlOEZpakdEOVBZcVRRSUZiVXY3T0hKQTdTRTc0b1hE?=
 =?utf-8?B?TzdJODdGYVI2ZG5JSGxTRmNqTjhUWjVmQ0s3VEpibUFXdExDU2pnMlRqNFE1?=
 =?utf-8?B?ekg1ejJscXVaOEMvczd1WDN4Y3hyUUlPeXkrMVM3Nk5mNzcvSjJaRE9Xd1pu?=
 =?utf-8?B?YUhkZDAxUENTSUM4S1E2V3NSb1g4SmVUT3FoZVU3cGswVHZIMDcyU0o0VUg5?=
 =?utf-8?B?MlVZY0pwZmhYRlRxRHozbnIwTG9SZ1dZL3JBdHZNeDR4cW9FSzF3SCt4TEll?=
 =?utf-8?B?MFRTVnRPdEVlVElvd2grT0tFQ3RHOGVMUFlZVnBnRmEwNzZuN3JDc1dRekpN?=
 =?utf-8?B?eWVXSFdGWExVOXh0dzU2Y1NHWURYZGhTS2ZBS0U3cE9laStSMnlEdzJUSW82?=
 =?utf-8?B?ZC9ybnNUblIrZ2hFdEhNUUpzcVFycmVtUVV5bjVMMXYrRVU4SStraWFSTTZY?=
 =?utf-8?B?bzg5MnNGcU9ReXFDZDdIWlhQK3ZoVndPY0dvdXJhdzNQdzAybDhBRnByZnQ4?=
 =?utf-8?B?M2tYMENGc2tqbzVVWk1mcm9iaHNtalEycGhzcUtHTkkzdmpVNDkySm9HYlpv?=
 =?utf-8?B?dGhxdVJ2RHdWdWxkMXJLVEg0R3hML1VGb2dSNkxKWTRpTUhXWmhoODZ0VEV3?=
 =?utf-8?B?UWFETGkyL3lEMCtwYXF3YjZrYlhHNWZPMitzQUJibW0vQXFiVnNkZXNyV0FQ?=
 =?utf-8?B?di9qSms1K1V3ei95dndKR2lJZEJjOUtQSExUdmlINy84ZDUvZ1kvcG1GTEFl?=
 =?utf-8?B?YzlObmdSZXYxWHFOcFFzSGpYYTB3PT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5867308a-9953-4254-4cd2-08dc2ed48161
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 09:49:01.9061
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0xdrdJZFo4p/fUJ9R7eYKHgziNEfF6sDK7p2g64anu8GlRb3WRk+55dQ7hPk2gM8SjftYMHm7pH6vwopPSmq4bEzLPCw3oszllaKAXOfKGNDjmGl0Id5Qu7O7dIAIyA3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB9888
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 09:49:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62518

Hi Trevor,

On 2/16/24 09:29, Trevor Woerner via lists.yoctoproject.org wrote:
> Rockchip defines the expected layout/map of the default storage device.
> Fill out the wks description so it matches.
> 
> 	https://opensource.rock-chips.com/wiki_Partitions
> 
> Note: in the Rockchip layout, not all partitions are expected to show up
> in the gpt partition table. This patch uses "--no-table" to only number the
> partitions that are numbered in the Rockchip wiki, as well as to give these
> partitions the partition numbers indicated in the wiki.
> 
> Note: there is a mistake in the Rockchip table (which I've copied
> verbatim here). Going by the values of the "Start Sector", the size of
> the "reserved1" partition is listed as being 2x its actual size/number of
> sectors.
> 
> Expected:
> 	Partition       Start Sector       Number of Sectors    Partition Size     PartNum in GPT    Requirements
> 	MBR             0      00000000    1       00000001     512       0.5KB
> 	Primary GPT     1      00000001    63      0000003F     32256     31.5KB
> 	loader1         64     00000040    7104    00001bc0     4096000   2.5MB    1                 preloader (miniloader or U-Boot SPL)
> 	Vendor Storage  7168   00001c00    512     00000200     262144    256KB                      SN, MAC and etc.
> 	Reserved Space  7680   00001e00    384     00000180     196608    192KB                      Not used
> 	reserved1       8064   00001f80    128     00000080     65536     64KB                       legacy DRM key
> 	U-Boot ENV      8128   00001fc0    64      00000040     32768     32KB
> 	reserved2       8192   00002000    8192    00002000     4194304   4MB                        legacy parameter
> 	loader2         16384  00004000    8192    00002000     4194304   4MB      2                 U-Boot or UEFI
> 	trust           24576  00006000    8192    00002000     4194304   4MB      3                 trusted-os like ATF, OP-TEE
> 	boot            32768  00008000    229376  00038000     117440512 112MB    4                 kernel, dtb, extlinux.conf, ramdisk
> 	rootfs          262144 00040000    -       -            -         -MB      5                 Linux system
> 
> Prior to this patch:
> 	# fdisk -l /dev/mmcblk1
> 	GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
> 	The backup GPT table is not on the end of the device.
> 	Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
> 	Units: sectors of 1 * 512 = 512 bytes
> 	Sector size (logical/physical): 512 bytes / 512 bytes
> 	I/O size (minimum/optimal): 512 bytes / 512 bytes
> 	Disklabel type: gpt
> 	Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
> 
> 	Device          Start     End Sectors   Size Type
> 	/dev/mmcblk1p1     64    8063    8000   3.9M Microsoft basic data
> 	/dev/mmcblk1p2   8064    8191     128    64K Microsoft basic data
> 	/dev/mmcblk1p3   8192   16383    8192     4M Microsoft basic data
> 	/dev/mmcblk1p4  16384   24575    8192     4M Microsoft basic data
> 	/dev/mmcblk1p5  24576   32767    8192     4M Microsoft basic data
> 	/dev/mmcblk1p6  32768  330955  298188 145.6M Microsoft basic data
> 	/dev/mmcblk1p7 330956 1504693 1173738 573.1M Linux filesystem
> 
> New:
> 	# fdisk -l /dev/mmcblk1
> 	GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
> 	The backup GPT table is not on the end of the device.
> 	Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
> 	Units: sectors of 1 * 512 = 512 bytes
> 	Sector size (logical/physical): 512 bytes / 512 bytes
> 	I/O size (minimum/optimal): 512 bytes / 512 bytes
> 	Disklabel type: gpt
> 	Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
> 
> 	Device          Start     End Sectors   Size Type
> 	/dev/mmcblk1p1     64    7167    7104   3.5M Linux filesystem
> 	/dev/mmcblk1p2  16384   24575    8192     4M Linux filesystem
> 	/dev/mmcblk1p3  24576   32767    8192     4M Linux filesystem
> 	/dev/mmcblk1p4  32768  330955  298188 145.6M Microsoft basic data
> 	/dev/mmcblk1p5 330956 1504693 1173738 573.1M Linux filesystem
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> changes in v2:
> - expand the commit message to show past, expected, and new behaviour
> - spell out that vstorage stands for "vendor storage"
> ---
>   wic/rockchip.wks | 20 +++++++++++++-------
>   1 file changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> index b14ec0d1690a..034443d90050 100644
> --- a/wic/rockchip.wks
> +++ b/wic/rockchip.wks
> @@ -9,17 +9,23 @@
>   # wic uses 1KB blocks. The following table uses 512 byte sectors:
>   #
>   #   Partition   Start Sector    Number of Sectors
> -#   loader1     64              8000        (idbloader / U-Boot SPL)
> -#   reserved1   8064            128
> -#   reserved2   8192            8192
> +#   loader1     64              7104        (idbloader / U-Boot SPL)
> +#   vstorage    7168            512         (vendor storage: e.g. serial number, MAC address, etc)
> +#   reserved    7680            384         (not used)
> +#   reserved1   8064            64          (legacy DRM key)
> +#   uboot_env   8128            64          (U-Boot environment)

I'm surprised this isn't a partition, because then I assume it'd be 
easier to use fw_setenv/fw_printenv from Linux userspace to interact 
with U-Boot's env?

But if we make it a partition, then the partition number for the next 
partitions are now off by one compared to what we have today, no perfect 
solution here :)

> +#   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
>   #   loader2     16384           8192        (U-Boot proper)
> -#   atf         24576           8192
> +#   atf         24576           8192        (trusted OS e.g. ATR, OP-TEE, etc)
>   #   boot        32768           229376
>   #   root        262144          -           (suggested)
>   
> -part loader1    --offset 32     --fixed-size 4000K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> -part reserved1  --offset 4032   --fixed-size 64K      --fstype=none
> -part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none
> +part loader1    --offset 32     --fixed-size 3552K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> +part vstorage   --offset 3584   --fixed-size 256K     --fstype=none  --no-table
> +part reserved   --offset 3840   --fixed-size 192K     --fstype=none  --no-table
> +part reserved1  --offset 4032   --fixed-size 32K      --fstype=none  --no-table
> +part uboot_env  --offset 4064   --fixed-size 32K      --fstype=none  --no-table
> +part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none  --no-table
>   part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
>   part atf        --offset 12288  --fixed-size 4096K    --fstype=none
>   part /boot      --offset 16384  --size       114688K  --fstype=vfat  --active  --source bootimg-partition --label boot --use-uuid --sourceparams="loader=u-boot"
> 

Wow, just realized that --offset doesn't have a unit (so thought B) and 
fixed-size has one. offset default unit if missing is K and fixed-size's 
M... Maybe we could also specify the unit for offset to be K so that 
it's a bit less confusing (or if you want to switch to S for sector to 
match the documentation above?).

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>

Cheers,
Quentin

