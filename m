Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C3CEC48BEB
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 09:30:46 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.106])
 by mx.groups.io with SMTP id smtpd.web10.9270.1708594237686969751
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Feb 2024 01:30:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=C0PYm1pJ;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.249.106, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ln33OQ25BfaUvSfXCQ7jGCAXsi0SUCmOQTpbcrM1bjcrui43lnl9DYJox3PWAQslAww3IE+7jL7lsG6U2AvnKp1YsVWKc7nuc0rzvwEtKM4VYamQ2Hx6b+PCwMtMqokZDCNVWijfU9nMOb5fHYTkfIV0t1O42j1lalcZLQAyMpd3C17NLmSwrwYXB4/nmJo4B6DMPDmVMnfeqzPYmAJmntxoiC+TNuJKrcSWi/DkoP5ND8A1FbDS103qs/b2LcPUJqP8KxFj+/Hrmu2XH/aTlmZiQj2ZcaQjfqWPKv3KGWJg+vOMo5kZBqHQ+Sy/M5Xte1NeC9q8O7ZsPy7R8k2GQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K0h3f7pX4hfnZi0AA+47bJfjwMSp0le5JgH+tmUV7vU=;
 b=lMrQeE9TI4lA5rDUSI3wGi+6iJtDkSadV2/wRLq7UfhXF72jKisHa4wTTxV7EAmeDW+Ictm7QWV2TvYf3QFCM8N2yIodJMf2eGxjPZIV4h5aAmO+WeCJ2gxwLiKyP0LSISt9pEBzhwAQq0mtgV52iO89WxqJivWSbZODqcPDhXIk2qaMdxsr+xIMM/8QvwDkDIkvySfc9ArSpRbrHb8ZxxhOkYwun1jmIGM+mbY02rOhtpziwQcPEXkFBVit6KA8Qnseb80W+KViB6GDFbL2umJpKwQ4TP8dNf7lUQmYsR4MoypjbkDEVTEZDoOy/yWqEAH8juo3ObGfhaQ6YhPYFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K0h3f7pX4hfnZi0AA+47bJfjwMSp0le5JgH+tmUV7vU=;
 b=C0PYm1pJl0mj8o+uHYC25RGpmuJGy1lqYg5meskCx4M5f8NG62cxwnJbQmglSCOaOCawoUJ04g5I93RgGJJ7kL/FERfK+v7rKKZvVRs/+kpZsf8NBtj7LSlZw657ToeEfPmEbRpiIM/rwMQ05ZHrPPCVGt5YhFEgKeNzw27Wvs463PaP22pqxyDvmRFqwpHXrxv/4/QR3yvpNwKCjD/O3iHH098/21YfkRhDzBE2Z0vhwUTHuzFJfSotTHXNorfDfcnQrkOQ90v5q3z7CrRXE2wva52r4P+CAHnygxnQLV06PRTQt1mTV1bNBW2gXer3By8KpFth4k0K2/0qRa+YRA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PA4PR04MB7520.eurprd04.prod.outlook.com (2603:10a6:102:e9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.38; Thu, 22 Feb
 2024 09:30:33 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7316.023; Thu, 22 Feb 2024
 09:30:31 +0000
Message-ID: <74921124-58be-41c5-b215-14296a895b76@theobroma-systems.com>
Date: Thu, 22 Feb 2024 10:30:29 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH v3 3/5] rockchip.wks: add most
 Rockchip partitions
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org, Quentin Schulz <foss+yocto@0leil.net>
References: <20240219174825.7084-1-twoerner@gmail.com>
 <20240219174825.7084-3-twoerner@gmail.com>
 <8e79bf15-5469-414e-9723-f18fe7c4f424@theobroma-systems.com>
 <20240221190258.GA9052@localhost>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240221190258.GA9052@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: FR3P281CA0068.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::15) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PA4PR04MB7520:EE_
X-MS-Office365-Filtering-Correlation-Id: bdd75b93-5903-4757-e72a-08dc3388e9ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	miBkuFzJOo4hP7WpHCWTsL+Dh/EXATzmRqLqCLb75PUizb17cEfUefePRvUEU7WoeT76Xx9RvCuX/ZRGE1VHGhUtX9+Ubmn/gcMQSkqlezfziXnNsTUL8SrUTYqkN9solMZF9FpYFEvkSOZQTahv7/H4J8HhC66VGub+3QLuoZkrqZXBUCdVd0ljgwIUsSKhq8U+jL2c+CI+W98RjBvdFFcOi669rgQjZbl1qu3WggRTYh17xqyhLRzXjFWsX7Sp6Nnia8SW+DkXRI+eNop+EZgsslNh3c2l/5dnthSq4CTuq2tO8NNtUely4JA9dZtkyX7+Mr3TTBWNe2NQ1BzYKTlSUnm1AUc0tfW+d0H1l6P5OOzxAV6GwTjnShcXGdMBpZ1OlrQXkc7pOiqNtRcQjvR9vRxz1aNIx4Hs04gFKK8fuedy0zPqTgx1MS5Aubjx+VLmHUifdaqPK2FSEzLowSsrDE1iMGYoQCib1nlrObot32peaxKbGgU6nbIctuo4K73LN7lazUimky1PLLAoIg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QzhDM0J0cGNTZnpNc1EvZ3BGNlZZMnV5TUVOOVJveVRKbEFIZ3BDT0JpUWxH?=
 =?utf-8?B?U3FheHZiWThGd0k4THpCNjBkSEJ0ZXdqc0dKdG1HZHFtTmhjZU0veGZiMWMv?=
 =?utf-8?B?YVFzTlloejc4Q0dsdktzN09VMGNveWx6SFRRdlAvQ2FpYS9BQjdpeHFsUTU3?=
 =?utf-8?B?U09wVEtJMXE2MllnRStnb3JNMXRndVB6OWswUXQwRldMaU9jMHdGb1pXSTlB?=
 =?utf-8?B?YngvQ0d2eEx2WjByd1VxNUg0VGNiQjN0R2dTZzh1ZVhCWll5ZUloNURzTHNK?=
 =?utf-8?B?OU12RDdjZkVOVFY4dzRGbmFGZGsxSWlDRlJyVWVhbTAzYmt5YTk3b0xZRmEw?=
 =?utf-8?B?WmZYTXM4MnBpTTRpNUtISkdQamVtWEh5ZUJta2d6bW9aS1RjWTNqMmN0b2RG?=
 =?utf-8?B?dWVwbzBkL1drTzBnY0xNY2tSNFdZbDdLbzNTaGMwNkNjODlNZzAzT0hrK3BH?=
 =?utf-8?B?ejhNUVFFcE80MTRGVXhLUlh3UVdpekFidzR3emJvSGVZWlhzcE5aNHFwOEVz?=
 =?utf-8?B?Y2pmWUM5N3haUXlsMnFpNERvcDBVZzM0QW1PNTVpdTErOE9kOGlUcU5hYnIz?=
 =?utf-8?B?azU4N0ZNUWpxbmo2OUd6b2ZZcnRUS3QwMVcyTVQzRWpxTjluQVA3REc1cVhl?=
 =?utf-8?B?M3owdE9hRnoydEk0b3VkK2QwWENuK3hTaGRZSUFKR2Q3VTFHbmRlOWZVb21F?=
 =?utf-8?B?Y1BHRFRENTF1anpmWHF5UlpuMHZnV3NvVGFMSEFWVDIzSEhEY2JlMlJJU0E3?=
 =?utf-8?B?TUEwYjlNaVpHelRocTk5bC9idEpVNGpxbTZjZklXNDVzMlV4ZmdRa0hxZk9K?=
 =?utf-8?B?c2lxUytMSk5FbzY2YnlGQWlRNVRIOHJDUldyY1RNellpeXRiUEpwYVRZa05k?=
 =?utf-8?B?eXhwb3cya2dHaXprVkcrWGpqeCtFcHE4RkhBRkJ4Q0h1ZXh6NUpVa2VWNjgv?=
 =?utf-8?B?eVlzYXRuU3FmdE1SNHJmQ1dab3pGd3JqV1pySTZLS1JZcDhxRDBPbmYyMFRH?=
 =?utf-8?B?cVRsNHZWNFVRNjhjc3pqZFNjRFpJVW11UmduSmFldTBPOFhzeVNKcHZ5cmc2?=
 =?utf-8?B?dW96ZXhCaUZsRWZBd0NyeG5SU052ZUtrdjJHazlOSkhuV1VhU3JBbVhhenBo?=
 =?utf-8?B?NHhLcU52UjBYcEJUTnd6NlVJckRsK2V6K0x5UEdLanoyQVZ4Qk5LVmljcWFx?=
 =?utf-8?B?UVFhZXJROUFOT1Y2ZS9UdkFJYXJnSC9UVDRoY3pwVEVYQkxMU0U3SGsvYTV0?=
 =?utf-8?B?L2FianpTeDh3L0dJU2s3VXRXS1pxRkpNQi82ZHRjRnRkQnc4NTJEUStVamhi?=
 =?utf-8?B?cnBzbmQ3czNwRStvZ0RJSmlVMWNVbXhqRGRCU0ZpTjN4cmd2OTJXWVZWb0hP?=
 =?utf-8?B?K3E2eUFGcThyb0QxMUM3ZlNmZ1VIeDlwZkdBdmZ1NkQzUXdhbWFtREtNRDZM?=
 =?utf-8?B?dDBtdXNlRDFSZGtwNWZqVWllWm9JM0pCcVVDN1liVi9aMDJNL0w4WlcvTEdn?=
 =?utf-8?B?QUk4RExpMmt2clZOS0RVTktwOEtySStzOEdXaXFVU0RYQ25UbUF5SDlQTGVQ?=
 =?utf-8?B?SkFCdXJIbld1OERHZmlHK3dnNUN0OENrMlJMUmlKL0lmY1pqUUpza3hQRlJW?=
 =?utf-8?B?bmtMTUVuK25MMjlDdDhXdFFsVTdQdVd6bkw2NGxZS0JWSVgxT3plWllWN2JF?=
 =?utf-8?B?Y2xkMG9oT1Q2SGM5TjhKaHBDdWtkQWxNOXd3cG5oQ25WVGFyZ1ppbldROCtC?=
 =?utf-8?B?YVRXSGpob2t4MnQ2MmtlcXMzeDQ1WWs2L2p3cGdQOVNOVlltdWVES2xJa3FV?=
 =?utf-8?B?UndMU3VldDNnaHV2N3huMGRxZk9qK2dqL2hjSXN2TTVCRGZYYVhWUVNPZ2pX?=
 =?utf-8?B?SnFlSDBHYzI3NzVGTFlLcEZZTVZKbHR2emdSWjJBRHhDYTZCMFVMcmRjbXZQ?=
 =?utf-8?B?RUFXMHNFU3FLZmdGKzRaV3ZNTWY2b3BvT2x6T2pEeW4zeXRNb3Y0VFpMeEQz?=
 =?utf-8?B?dzdwWU5IWmUwTnNDdnY2ZHFPeG1qUjZ3VllHSzlWYk03OHNCSkp1cUY3dDFq?=
 =?utf-8?B?RlQ2V2hGYnRBdVBaUFBYMUczMFkxZ0psNGpwVGUvWXl0ZDVFS1ZVWXRqMlZk?=
 =?utf-8?B?L2JDb1h2M0JSS3FQanNoc3dkM0hqcDU0TVlXNmswNHlNZ0pLV3hIdmFHbXNT?=
 =?utf-8?B?Z0dNMHdNb1ZES0xlRzJDWmN1NUt0TEdGNEs0bld2NlhSWnlmYkdNNGV1Nk85?=
 =?utf-8?B?U0h4NmVWSGh3Z1VHRm9HQ01mNlpnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdd75b93-5903-4757-e72a-08dc3388e9ee
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 09:30:31.4016
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jgETWv1lvGc0+F5QcWAX/p8BTClCHhWKcrd5ggmO9vVLphnDkohKp5WQymupQ5op3RGzyTYNdpb/k6oYoT5Ydy1wrIz0b99UTqxVMR0c9+0qwNxRQHZoVzNYXYYVoxaA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7520
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 09:30:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62564

Hi Trevor,

On 2/21/24 20:02, Trevor Woerner wrote:
> On Wed 2024-02-21 @ 07:38:41 PM, Quentin Schulz wrote:
>> Hi Trevor,
>>
>> On 2/19/24 18:48, Trevor Woerner via lists.yoctoproject.org wrote:
>>> Rockchip defines the expected layout/map of the default storage device.
>>> Fill out the wks description so it matches.
>>>
>>>           https://opensource.rock-chips.com/wiki_Partitions
>>>
>>> There are 2 partitions at the start that can not be specified in
>>> rockchip.wks due to a limitation in wic which assumes all sizes (e.g.
>>> --size or --fixed-size) are specified in units of 1024 bytes. Due to the
>>> fact these partitions don't fall on 1024-byte boundaries, they can not be
>>> specified at this time.
>>>
>>> Note: in the Rockchip layout, not all partitions are expected to show up
>>> in the gpt partition table. This patch uses "--no-table" to only number the
>>> partitions that are numbered in the Rockchip wiki, as well as to give these
>>> partitions the partition numbers indicated in the wiki.
>>>
>>> Note: there is a mistake in the Rockchip table (which I've copied verbatim
>>> here in this commit message but corrected in rockchip.wks). Going by the
>>> values of the "Start Sector", the size of the "reserved1" partition is
>>> listed as being 2x its actual size/number of sectors.
>>>
>>> Expected:
>>>           Partition       Start Sector       Number of Sectors    Partition Size     PartNum in GPT    Requirements
>>>           MBR             0      00000000    1       00000001     512       0.5KB
>>>           Primary GPT     1      00000001    63      0000003F     32256     31.5KB
>>>           loader1         64     00000040    7104    00001bc0     4096000   2.5MB    1                 preloader (miniloader or U-Boot SPL)
>>>           Vendor Storage  7168   00001c00    512     00000200     262144    256KB                      SN, MAC and etc.
>>>           Reserved Space  7680   00001e00    384     00000180     196608    192KB                      Not used
>>>           reserved1       8064   00001f80    128     00000080     65536     64KB                       legacy DRM key
>>>           U-Boot ENV      8128   00001fc0    64      00000040     32768     32KB
>>>           reserved2       8192   00002000    8192    00002000     4194304   4MB                        legacy parameter
>>>           loader2         16384  00004000    8192    00002000     4194304   4MB      2                 U-Boot or UEFI
>>>           trust           24576  00006000    8192    00002000     4194304   4MB      3                 trusted-os like ATF, OP-TEE
>>>           boot            32768  00008000    229376  00038000     117440512 112MB    4                 kernel, dtb, extlinux.conf, ramdisk
>>>           rootfs          262144 00040000    -       -            -         -MB      5                 Linux system
>>>
>>> Prior to this patch:
>>>           # fdisk -l /dev/mmcblk1
>>>           GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
>>>           The backup GPT table is not on the end of the device.
>>>           Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
>>>           Units: sectors of 1 * 512 = 512 bytes
>>>           Sector size (logical/physical): 512 bytes / 512 bytes
>>>           I/O size (minimum/optimal): 512 bytes / 512 bytes
>>>           Disklabel type: gpt
>>>           Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
>>>
>>>           Device          Start     End Sectors   Size Type
>>>           /dev/mmcblk1p1     64    8063    8000   3.9M Microsoft basic data
>>>           /dev/mmcblk1p2   8064    8191     128    64K Microsoft basic data
>>>           /dev/mmcblk1p3   8192   16383    8192     4M Microsoft basic data
>>>           /dev/mmcblk1p4  16384   24575    8192     4M Microsoft basic data
>>>           /dev/mmcblk1p5  24576   32767    8192     4M Microsoft basic data
>>>           /dev/mmcblk1p6  32768  330955  298188 145.6M Microsoft basic data
>>>           /dev/mmcblk1p7 330956 1504693 1173738 573.1M Linux filesystem
>>>
>>> New:
>>>           # fdisk -l /dev/mmcblk1
>>>           GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
>>>           The backup GPT table is not on the end of the device.
>>>           Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
>>>           Units: sectors of 1 * 512 = 512 bytes
>>>           Sector size (logical/physical): 512 bytes / 512 bytes
>>>           I/O size (minimum/optimal): 512 bytes / 512 bytes
>>>           Disklabel type: gpt
>>>           Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
>>>
>>>           Device          Start     End Sectors   Size Type
>>>           /dev/mmcblk1p1     64    7167    7104   3.5M Linux filesystem
>>>           /dev/mmcblk1p2  16384   24575    8192     4M Linux filesystem
>>>           /dev/mmcblk1p3  24576   32767    8192     4M Linux filesystem
>>>           /dev/mmcblk1p4  32768  330955  298188 145.6M Microsoft basic data
>>>           /dev/mmcblk1p5 330956 1504693 1173738 573.1M Linux filesystem
>>>
>>> Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
>>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>>> ---
>>> changes in v3:
>>> - tweaked to accommodate offsets specified in sectors
>>> - clarified that the first 2 partitions can not be added
>>> - change name of vstorage to v_storage
>>> - fixed typo (ATR -> ATF)
>>> - added Quentin's tag
>>>
>>> changes in v2:
>>> - expand the commit message to show past, expected, and new behaviour
>>> - spell out that vstorage stands for "vendor storage"
>>> ---
>>>    wic/rockchip.wks | 20 +++++++++++++-------
>>>    1 file changed, 13 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/wic/rockchip.wks b/wic/rockchip.wks
>>> index 42b731ac47b2..b557f8137af1 100644
>>> --- a/wic/rockchip.wks
>>> +++ b/wic/rockchip.wks
>>> @@ -8,17 +8,23 @@
>>>    # See: https://opensource.rock-chips.com/wiki_Partitions
>>>    #
>>>    #   Partition   Start Sector    Number of Sectors
>>> -#   loader1     64              8000        (idbloader / U-Boot SPL)
>>> -#   reserved1   8064            128
>>> -#   reserved2   8192            8192
>>> +#   loader1     64              7104        (idbloader / U-Boot SPL)
>>> +#   v_storage   7168            512         (vendor storage: e.g. serial number, MAC address, etc)
>>> +#   reserved    7680            384         (not used)
>>> +#   reserved1   8064            64          (legacy DRM key)
>>> +#   uboot_env   8128            64          (U-Boo environment)
>>> +#   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
>>>    #   loader2     16384           8192        (U-Boot proper)
>>> -#   atf         24576           8192
>>> +#   atf         24576           8192        (trusted OS e.g. ATF, OP-TEE, etc)
>>>    #   boot        32768           229376
>>>    #   root        262144          -           (suggested)
>>> -part loader1    --offset 64s    --fixed-size 4000K   --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
>>> -part reserved1  --offset 8064s  --fixed-size 64K     --fstype=none
>>> -part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none
>>> +part loader1    --offset 64s    --fixed-size 3552K   --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
>>> +part v_storage  --offset 7168s  --fixed-size 256K    --fstype=none --no-table
>>> +part reserved   --offset 7680s  --fixed-size 192K    --fstype=none --no-table
>>> +part reserved1  --offset 8064s  --fixed-size 32K     --fstype=none --no-table
>>
>> I would have kept this one and...
>>
>>> +part uboot_env  --offset 8128s  --fixed-size 32K     --fstype=none --no-table
>>> +part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none --no-table
>>
>> this one in the table to keep the offsets identical before and after this
>> patch is applied.
>>
>> If you don't care about this, then I strongly suggest to have uboot_env
>> actually a partition (and maybe v_storage as well), those partitions are the
>> only ones among the one removed now that would make some sense to me to
>> expose to the user.
> 
> My preference would be to make them all show up in the partition table. If
> you're okay with that then I'm happy to spin a v4 to remove --no-table from
> all entries that have it in v3.
> 
> The conundrum is whether or not to follow what Rockchip dictates in:
> https://opensource.rock-chips.com/wiki_Partitions
> 
> By removing /boot I guess we're not going to be following what Rockchip says
> anyway, so we might as well expose them all for maximum flexibility.

My preference is keep the current numbering and meaning of those 
numbers.... However since you'll remove the /boot partition in a later 
patch, I guess this isn't that much of a valid concern anymore for this 
patch.

Quentin

