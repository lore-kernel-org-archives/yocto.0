Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2278DC48BEB
	for <webhook@archiver.kernel.org>; Wed, 21 Feb 2024 18:38:51 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.124])
 by mx.groups.io with SMTP id smtpd.web10.864.1708540727004919113
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Feb 2024 10:38:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=HPnr3F7U;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.6.124, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QtFVcO2HBoKhpUkvyktZ8CHL3AjtUSJAfp4OlcAxIcTRHzKzdJ4vnpKr1IGYnib1BlUJ7gbvlSA8OucByCO81FrTmIF9t1mIhQs/xzif5brQLFFdkNlnBSSoFpm+tbBXO+nSR1eQq4tNccirmIg4Qo+rSzeIeInd6o9X/4lZcex5/kh/B0XEikZd8cgOpBscpck5z1JlnZ0UdskT+0bZXXPGy1JJC2bLZyAsxvPxC/WSTeRYnIsnIT/1GAJWGiXlTPH+GM2wLB5/gKVc2e8YjLGnCG2uE+il7QGhW7R4A5B/XF5yILMZO8woQctL/aKRECu4k0h8AW3sTBIRB/u6ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FXwIiLYMOJOSn84ak5aCritQvoC6lW4dHjFKPu42iD4=;
 b=AKxLtQW6Ss4xk+3vZzfGSqdML0R5DUeAVVIkMTR+TnR8SStSxi1tWdYRGbu3cvo2ISAYT0fe3Hje2NTn3+FV7gQ4apnwre4YtK+r3kqK6VoS1gFlkHuMU7OnE4GKjy3TEL88PnJkU6GpSziq9JGYiMtUNzU0TkJbhIh3xuyO4UWrhC43UfEG5TnKWS/J8iLwWhxyGYKqN5mXo0GED4LYValOcyjsS++ofHCz29Gh+zOdkaXovgb+oQMpRwKcYn4WJHd67LwfFcNeHByThlWnbzE8W4g/CYdaZLQqV4JOA4IpWoUl+8URm9S8NydMrmkL6OnJlo1OCxmiQa+Y7hpd8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FXwIiLYMOJOSn84ak5aCritQvoC6lW4dHjFKPu42iD4=;
 b=HPnr3F7UVSg9rm1EJFbGy+pweYE+jFC9BxSfPpYtF0ArakfFN+m7pgVrwGwROJG57h29KTioj5DErlJLRnq0+VvlOZLOaXmFDaM3QrFXrhw4PBLDFo0BmgRCVfmcP7PD5dnKA/i3ROJj+ktDq0EgZllzFynaXYEs0L7olSYhOvmlNb1jEo9ji06O0yUA5wvY506y3wfJFXjzY0HKSlSXtHV7zJSAcY/YgqjZ0YB+R7g83dabUWiKv+YyA8W4kylDXtmeaacI/5q5YGN33I4JSh7YZa7hwy64qZ7sr/9hGm61ZRxAw6J85mwspMa96UeOoYrXyIrdb7mY3FSkt7cGIQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM7PR04MB6920.eurprd04.prod.outlook.com (2603:10a6:20b:101::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.34; Wed, 21 Feb
 2024 18:38:43 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.036; Wed, 21 Feb 2024
 18:38:43 +0000
Message-ID: <8e79bf15-5469-414e-9723-f18fe7c4f424@theobroma-systems.com>
Date: Wed, 21 Feb 2024 19:38:41 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH v3 3/5] rockchip.wks: add most
 Rockchip partitions
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
Cc: Quentin Schulz <foss+yocto@0leil.net>
References: <20240219174825.7084-1-twoerner@gmail.com>
 <20240219174825.7084-3-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240219174825.7084-3-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0068.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::13) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM7PR04MB6920:EE_
X-MS-Office365-Filtering-Correlation-Id: 66558912-1675-4553-6796-08dc330c54a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8OFYSvoaDmWrj/YBa9bxjDm2NmVj9ZsvrQ6m81Ud8u4smxXAih9jLA/j0wW7pGBJS3n94FTFrjZQJ6fb3/wzTcSNGxfdNnsQFHCIH+aSrocjzlM5gepH+okrRr/W821LjGY2qz5M4//K9Iyu/HT3tgCuZa9Ksjhaa6/8kzGSKNudAjEggrEdwdP/pnAF0OfLeLkk7p0SZZzaPzQQdyeLmC+G4Nuy6r5sYK6p4fevPn8mh/MSExRAKAxZInLQt2T80GFkg54idnVYX+4EiP+DVw69klsna7pacRVjxzkMxaRCyIZyyhm57PJj85N6g5AoA5KT/PY0W6tNDdX8zmE3tqkjzKBctwNv0OTgMhNemxOpk+KqYZ29kTQTHgb9eWXuPbESVHnvYP8szhnWeM2yATWoFgpmP7n7hV2mUCCxp+pq6ItHEDxYPG93989AeeoMA1Y2gHY/j/wJm3qADg4eCsOytEJHFtAY2nu6WqeGUbvYyHkxvQhFj3tZzWzrcSKTzBJiIYjUFmWEu9XHIdIcJw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OE5aVHE4bUx4OWxKSFlSZG94a25RTlZwbE9BRlpaUzJEbzJlY2lyQjk4OUVt?=
 =?utf-8?B?RXdoZlFCUFdxQVVWR3VDelh4emhMVlZOT1lWVk4rNkczYXVSSU1HL0s1SSt6?=
 =?utf-8?B?M3RCcWdMdDNadmo0UXJHb2dCczhIQ0xNUnYxaVEvbDh2K08yWVRxUktpMURi?=
 =?utf-8?B?bzhHREJKQzZYUlpMa0hPSndsdmxmaEZVaHIxakNmMTkvNkV1QWR4MGRHYklh?=
 =?utf-8?B?R25UZCs3ZXA5QUllampOekZWUXFNb1Q2RlFia21KZVpZaTVzNVczL3lIZWJz?=
 =?utf-8?B?elVyYUtSUEtTelBTWWc4eEhyN3J1MVpXRkdaaGdNSFBSVnlnTTMzWk51ZjBi?=
 =?utf-8?B?Nnhvb1JSM0FzK2dUOWlzS2xjWnUxdW8vNG1YZzBxUHFUMWl2ZFM2TFZyNmN5?=
 =?utf-8?B?WFVmSmlMRm1rN0syRGdvbHR6aEN6YkpWR2xLQ0NaaUMybDMrTDJ5SVJmNGc1?=
 =?utf-8?B?dktUUWpQenFTdWlXUVpORlBrZWZmRFF1UUlaRi9Pd1drZHNNcG55VDBabEJS?=
 =?utf-8?B?d0NURFdQK1Mwa1Z4Sy9JTy9NODhmTjd2a080ZmMvYmJ0azJNbFNkNVNITC9x?=
 =?utf-8?B?b1ZPNmFSSnNSRThrNXZJRE1vMXYrSU1wTXBQYTlPQjhFOU1sOW9CWVNKS3E5?=
 =?utf-8?B?cjVJOEJScHp5c1k4K29TQTlsQ0pzaWhWeXRRdHdZL3gxNWZpOUFqVmExK1VQ?=
 =?utf-8?B?NFNxOC9YYjEyQ0JZZGVqUHNQZWF5TTM5VDBIZVRZai92VjZZR1d3UDBnTyt6?=
 =?utf-8?B?MXlRMnZ6MUZ2ZWhDS0JLZ1REWnFzWUc4WWlVNjY0T0psWmlpSUo0Nlk2eXZI?=
 =?utf-8?B?ZC9mVEhwNXE1NWh4QUtLM2JpeThsZ09CbElqT0t1YXJLUU1QSko5R3QrcXR2?=
 =?utf-8?B?bGdhUFZHejY5cndybVp2S251eHVkWG5aT1ZESWVwZDQ5ellqZmNGa05vMjRP?=
 =?utf-8?B?TlhDVnFTWmdkTFowMmRvYlhaK2xIYU4yZkM5am9VK0g2Y2FOVTRKc0VsakpH?=
 =?utf-8?B?RTk3UEQ2OGFXOVRCS21ZbzBpQzViNlFia1B5cTE2dVplazBWWExOaUhrYlYv?=
 =?utf-8?B?bEFYaERBWStFUEtveWJEL1BNZTkzYmYwT2p0Z3RKN3I2MU5McmFBM05VZFZk?=
 =?utf-8?B?NnozS3VIeS9aMUo2NlEweGpULy9HRytVb3NEelpkRkluZmdEbW5JcXE0NWlQ?=
 =?utf-8?B?eFRzdnJmSy9jZXVWeHd2ckJJaUZjWkd0aHRSVUZjYzJuSk50dXdvUEVjZlpG?=
 =?utf-8?B?R1FRT01jQTViL0ZOcmQzU1VEb3UvNldkVUVndHhOQmpzbTEzVmI5Ti8yVUhL?=
 =?utf-8?B?MWxyRkh3WFNzcGNna2dIY2lVNXFSNENJVWVsc0FKR3ZMTGNrOG5zdjlSc3lF?=
 =?utf-8?B?a3pBL2k4Y1hnblNUQ09WS0JTWW1wNEQrRDlwTDI3U0NWbytwa1orMmp3dDlQ?=
 =?utf-8?B?TnAwZUhxQ3htZHRlYTJTV0p3UlRBZ1c3TDA5SWZId0hGZURxUldabGdRdTVK?=
 =?utf-8?B?Y3o1eU9yU0Z1STYySTdaMEh4WE1yZ2VIbVFhM1M4dFZDZlFJWWNpQm1NZmFy?=
 =?utf-8?B?b202eUlPcGVVdDJHUjhiOWl5SWhyMVBOWUc4Y09RcFVlNExUV0tUS29mVjR3?=
 =?utf-8?B?WDl2ZDhLMnpXNEttcklvVDFZRU40OFE0TGtmeVpWYjJNUm1oVnZIRHVDVDNp?=
 =?utf-8?B?TTRONldYQzVhZ1hMVjA4cnpNQzlzaTVrRTF1bDV1eGxvNmI5RERhUTRhdU9t?=
 =?utf-8?B?bGVob3V3UElwU3lFOGZ1OFNDOE02Z3VRa1IwQ0FMQWIzMjA3UkZsQ1JVT3lF?=
 =?utf-8?B?aHVYSVJaNkVVRklWelhPVFFKUVhsZVhYMTRTYWg0QnAwZFRYTjljbi9CM1Bk?=
 =?utf-8?B?bWx5c1UrT1B4dXpHYmJ0L2cvdXROdDlLNHlsT1R1UXltVlZsWHNOM1czdENw?=
 =?utf-8?B?UzlXYStjUUtqTlpYaEtkRDdpZzFobzk4VVFiTi9WK0I5NUdUdFFNUGYvTnpB?=
 =?utf-8?B?MUZybWhFQ2dObS9nL2xoMHJtQWVocVdscjdSV2ptSS9pYy95Nk1Sb1hPeTda?=
 =?utf-8?B?dG04N2tJZ0pGL3hGWlNxSFA4SzNaYzRvQzVjUm9CRjJBVjZDemNKZ0ZaTEUy?=
 =?utf-8?B?d0VPWWhaTkVCNkF1MWRDV2VTMXVqK0JDS0pKUjVucGRTck1YV2doV3ZzMlNK?=
 =?utf-8?B?K2VWQjNwcTNQcWRVZUE1b2ZJRGpxK1Q0ZXc3b25iWCtSTmNManV1c002bHBJ?=
 =?utf-8?B?ZTNRQ0NHeXBiN09GUGZqS3NEVTdnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66558912-1675-4553-6796-08dc330c54a9
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2024 18:38:43.3732
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bZvFrqlxgN50Ha/i+wBBuMU9SOqIjmlH9mbo4jFnkPWnTn4cMKpEUWLOa1xWp/q0BjPhNzZPj/wPGEy+Nz5Z2NPX2IBt/5zvtWFDsibeaBX7CAlMkGdwGjemCN1RDDnf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6920
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 18:38:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62556

Hi Trevor,

On 2/19/24 18:48, Trevor Woerner via lists.yoctoproject.org wrote:
> Rockchip defines the expected layout/map of the default storage device.
> Fill out the wks description so it matches.
> 
>          https://opensource.rock-chips.com/wiki_Partitions
> 
> There are 2 partitions at the start that can not be specified in
> rockchip.wks due to a limitation in wic which assumes all sizes (e.g.
> --size or --fixed-size) are specified in units of 1024 bytes. Due to the
> fact these partitions don't fall on 1024-byte boundaries, they can not be
> specified at this time.
> 
> Note: in the Rockchip layout, not all partitions are expected to show up
> in the gpt partition table. This patch uses "--no-table" to only number the
> partitions that are numbered in the Rockchip wiki, as well as to give these
> partitions the partition numbers indicated in the wiki.
> 
> Note: there is a mistake in the Rockchip table (which I've copied verbatim
> here in this commit message but corrected in rockchip.wks). Going by the
> values of the "Start Sector", the size of the "reserved1" partition is
> listed as being 2x its actual size/number of sectors.
> 
> Expected:
>          Partition       Start Sector       Number of Sectors    Partition Size     PartNum in GPT    Requirements
>          MBR             0      00000000    1       00000001     512       0.5KB
>          Primary GPT     1      00000001    63      0000003F     32256     31.5KB
>          loader1         64     00000040    7104    00001bc0     4096000   2.5MB    1                 preloader (miniloader or U-Boot SPL)
>          Vendor Storage  7168   00001c00    512     00000200     262144    256KB                      SN, MAC and etc.
>          Reserved Space  7680   00001e00    384     00000180     196608    192KB                      Not used
>          reserved1       8064   00001f80    128     00000080     65536     64KB                       legacy DRM key
>          U-Boot ENV      8128   00001fc0    64      00000040     32768     32KB
>          reserved2       8192   00002000    8192    00002000     4194304   4MB                        legacy parameter
>          loader2         16384  00004000    8192    00002000     4194304   4MB      2                 U-Boot or UEFI
>          trust           24576  00006000    8192    00002000     4194304   4MB      3                 trusted-os like ATF, OP-TEE
>          boot            32768  00008000    229376  00038000     117440512 112MB    4                 kernel, dtb, extlinux.conf, ramdisk
>          rootfs          262144 00040000    -       -            -         -MB      5                 Linux system
> 
> Prior to this patch:
>          # fdisk -l /dev/mmcblk1
>          GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
>          The backup GPT table is not on the end of the device.
>          Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
>          Units: sectors of 1 * 512 = 512 bytes
>          Sector size (logical/physical): 512 bytes / 512 bytes
>          I/O size (minimum/optimal): 512 bytes / 512 bytes
>          Disklabel type: gpt
>          Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
> 
>          Device          Start     End Sectors   Size Type
>          /dev/mmcblk1p1     64    8063    8000   3.9M Microsoft basic data
>          /dev/mmcblk1p2   8064    8191     128    64K Microsoft basic data
>          /dev/mmcblk1p3   8192   16383    8192     4M Microsoft basic data
>          /dev/mmcblk1p4  16384   24575    8192     4M Microsoft basic data
>          /dev/mmcblk1p5  24576   32767    8192     4M Microsoft basic data
>          /dev/mmcblk1p6  32768  330955  298188 145.6M Microsoft basic data
>          /dev/mmcblk1p7 330956 1504693 1173738 573.1M Linux filesystem
> 
> New:
>          # fdisk -l /dev/mmcblk1
>          GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
>          The backup GPT table is not on the end of the device.
>          Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
>          Units: sectors of 1 * 512 = 512 bytes
>          Sector size (logical/physical): 512 bytes / 512 bytes
>          I/O size (minimum/optimal): 512 bytes / 512 bytes
>          Disklabel type: gpt
>          Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
> 
>          Device          Start     End Sectors   Size Type
>          /dev/mmcblk1p1     64    7167    7104   3.5M Linux filesystem
>          /dev/mmcblk1p2  16384   24575    8192     4M Linux filesystem
>          /dev/mmcblk1p3  24576   32767    8192     4M Linux filesystem
>          /dev/mmcblk1p4  32768  330955  298188 145.6M Microsoft basic data
>          /dev/mmcblk1p5 330956 1504693 1173738 573.1M Linux filesystem
> 
> Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> changes in v3:
> - tweaked to accommodate offsets specified in sectors
> - clarified that the first 2 partitions can not be added
> - change name of vstorage to v_storage
> - fixed typo (ATR -> ATF)
> - added Quentin's tag
> 
> changes in v2:
> - expand the commit message to show past, expected, and new behaviour
> - spell out that vstorage stands for "vendor storage"
> ---
>   wic/rockchip.wks | 20 +++++++++++++-------
>   1 file changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> index 42b731ac47b2..b557f8137af1 100644
> --- a/wic/rockchip.wks
> +++ b/wic/rockchip.wks
> @@ -8,17 +8,23 @@
>   # See: https://opensource.rock-chips.com/wiki_Partitions
>   #
>   #   Partition   Start Sector    Number of Sectors
> -#   loader1     64              8000        (idbloader / U-Boot SPL)
> -#   reserved1   8064            128
> -#   reserved2   8192            8192
> +#   loader1     64              7104        (idbloader / U-Boot SPL)
> +#   v_storage   7168            512         (vendor storage: e.g. serial number, MAC address, etc)
> +#   reserved    7680            384         (not used)
> +#   reserved1   8064            64          (legacy DRM key)
> +#   uboot_env   8128            64          (U-Boo environment)
> +#   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
>   #   loader2     16384           8192        (U-Boot proper)
> -#   atf         24576           8192
> +#   atf         24576           8192        (trusted OS e.g. ATF, OP-TEE, etc)
>   #   boot        32768           229376
>   #   root        262144          -           (suggested)
>   
> -part loader1    --offset 64s    --fixed-size 4000K   --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> -part reserved1  --offset 8064s  --fixed-size 64K     --fstype=none
> -part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none
> +part loader1    --offset 64s    --fixed-size 3552K   --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> +part v_storage  --offset 7168s  --fixed-size 256K    --fstype=none --no-table
> +part reserved   --offset 7680s  --fixed-size 192K    --fstype=none --no-table
> +part reserved1  --offset 8064s  --fixed-size 32K     --fstype=none --no-table

I would have kept this one and...

> +part uboot_env  --offset 8128s  --fixed-size 32K     --fstype=none --no-table
> +part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none --no-table

this one in the table to keep the offsets identical before and after 
this patch is applied.

If you don't care about this, then I strongly suggest to have uboot_env 
actually a partition (and maybe v_storage as well), those partitions are 
the only ones among the one removed now that would make some sense to me 
to expose to the user.

Cheers,
Quentin

