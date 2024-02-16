Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 178E0C48260
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 09:00:09 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.132])
 by mx.groups.io with SMTP id smtpd.web11.14927.1708074003759201380
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 01:00:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=bZu9kkQt;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.14.132, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQadEQcWuUfMKBvAatEnC1a3ycZn0N19ZeF5kcMFJa3eksLGN0R01m1boyMecsMdWACM1uT93P6ZM7CnJLD08v/iwIB53TErsu4SCgijtfirkDNNl2n7xt3DuMsPhnAipaqSg76wIMrzEcBP2ttPjygMs9tAA0UslQtFyXHjv8WRBQakEKQZreTEqoI+0ayEb76mp9xaIBGa1pUl6/hW8wK2B0TEpW9CZqAWsFUWG78Z+DE/Dj2mv3MQ87yQ9sQKiZcDo/xkfNUsVu6EC1Qa8MuzjkRpSdYr2HA+e2pM8JqK1W2RzeDcTOm/pOS0xpDHxHc8wmPtQ2Q/4hhZVng8FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gDWYzjiAxyW8r5axv4fitkgaIeV7lQXffQX7tl2g/oQ=;
 b=YmHXRrtpSrLvSx+rxd3JR/kD4nWYBM1L2i9xcReGRoqRn2Pt9KBamgZYWw+b9fUYNOdafTtQlDUyuKvTB/QfHXmoS+xpR8+GZSWkOc/4KIjcPwy1PxUir5jnKqogFe4mjgaOeuS3MP/1Cbo9zmmvBvh/p9xJeRNLPMTz4gouRQhR93VynSSGQF2Be3OkAWSCoaFAJjHy9u9AFM6Jj6v4yc+4GVOVzEGGn9vwNlBX84ED4EpRhfwX6yj1IOMpShig5o4yfLJHZisGapJRbWggqcshJx0NWXBe1kjv+AfxQSR5klchwZVDJLGvGCotHu+ygNYo2IWMehb3al5pY/apKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gDWYzjiAxyW8r5axv4fitkgaIeV7lQXffQX7tl2g/oQ=;
 b=bZu9kkQtB7RGMKmXUxrLVTdS0zmjsHhjMwYvKZWNXmgLwn3IJGSg6dJ1kUMJxfuQulMU3gB4PPjkVl3nxAu9RnH3h8c6m8vEeuan9wXoW6eHhGJGWc6zyfpofaLIBIN7snfR5SQhYrvhnRh66/hvcaBC6UDe2j3ngkw5cykRYDNRFKG8wUKxTvSwuzNQ5CB2suiGruc3R54LpyQn6KQf67klMpkl4Nwc9suhxqreiG4LZRVhVz6K8i3zlsS91ByzttVDw6WIEBeyiupxkdhwHbLlc/649GBkWHA+Mjv9TfUB5GLRJFhh9vsSs7A9PayOKgU8RslB6V7c5ixiNBAP9Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PA4PR04MB7983.eurprd04.prod.outlook.com (2603:10a6:102:c9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.29; Fri, 16 Feb
 2024 08:59:59 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 08:59:59 +0000
Message-ID: <191abca3-dd16-4f6c-82a8-beb9563ded34@theobroma-systems.com>
Date: Fri, 16 Feb 2024 09:59:56 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH 2/4] rockchip.wks: add all Rockchip
 partitions
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20240212202342.37778-1-twoerner@gmail.com>
 <20240212202342.37778-2-twoerner@gmail.com>
 <20297b5e-af8b-4bce-a192-9bf799d8a36a@theobroma-systems.com>
 <20240215192018.GA7766@localhost>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240215192018.GA7766@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: FR5P281CA0025.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f1::20) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PA4PR04MB7983:EE_
X-MS-Office365-Filtering-Correlation-Id: 06945b52-1090-429b-3ead-08dc2ecda74d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	azloGXjXrxHyMniF7CZDct2VFBUR+Xms6ZROR6p9CoT2vrvVMu4cNhuxnZxJRqtARbWEcJYTZSlw2Gf9LJ93p++vk7a4NKL9KmbOTxpUA8SwcTbxpdTEwuKpk6jMhBJZaUPGBCk9sFO/xNQMigR7W7decVhGBF9JsscqZhbd+xglM3nl0jj5GitEyMNTxGYQVEY9kL1Vcs/CffPmHOW8XKMr8EeL8oohhhm/nTtyBLzlKvrLwPmj34MTwo+3sSxXZFl48dJugoneMWCrQ/nSF1A9Itu2i3zyt9z2xNKzaU4Xq///IM3NiPJup2VSuhP2F8rGSt/6YgCL3zyz+pws58MHTUBJKRAQQXBbhmah1QqwElY3VYoKurWkmLFXQkr13xQ83nyNnRKiYINegarEKQwRxDigbgfZGKko2o4osqUk6as8UlRYiMVmt4heOpV4bHYcqq5wATJjmK+qKij9eB07M2DwfaZSkN2M27ykcfWek0NQNuaYPBlSz2nMv0Gfat/vgi6EJCQDJirMsHvMuJvnb4p8nWmDghRjrJnRmlA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(396003)(366004)(136003)(376002)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(38100700002)(83380400001)(31686004)(4326008)(5660300002)(41300700001)(44832011)(6916009)(966005)(6486002)(6512007)(6506007)(478600001)(53546011)(45080400002)(2616005)(6666004)(31696002)(316002)(2906002)(66476007)(66556008)(36756003)(66946007)(8936002)(8676002)(86362001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WnpNN0QvbHYyOElmeEZmT0syb3hSMGRGeGJlcDlxZHlqUjhkeUxxelhLTHFK?=
 =?utf-8?B?eC9EQVJsWlF2WXRyU1NHZEszMkFiNnp0b1NHY1RvWktLLytSL2h5MTBxOGNr?=
 =?utf-8?B?UjZMRURjTHdPWHZTVzlQT2dTU3AxMkJVNWU3bWQwdGlycG9BbUNhanlwMUZm?=
 =?utf-8?B?TXl5NCs2VjFLc3FEN0pURWVGRWYwNDlyUTBxYkFDakFIKys1RFRiRzk1UVIr?=
 =?utf-8?B?bWY3TXhWb0lac1NmWHhYc25CTFVoTWRpa1l1V1cwVGh3d3h2VmVuSlgwNUlN?=
 =?utf-8?B?bzNRQ0FSNXY2OEZWV1JnUmllM2NWUXYxUHFQdnlYVWNFeWxKaEp6azdsRVBv?=
 =?utf-8?B?aXNocWQvOGJDVWxSZHZNK3BEYUV4MFc2U3FGQmlzc0RoazkySE84MG1VTHNl?=
 =?utf-8?B?eVlSQWhhT0lIUVV0ZEhocTZLQUZzS3hCdjc1TWJLT1pMNEErYlFJMVJDblpp?=
 =?utf-8?B?aCs3QmZIUmlpNk51aU0zZmJuMFU1S0VUeG1zZDFBYTZrREVKY0ZVK21LL01w?=
 =?utf-8?B?SHg5eGdIeVV1T1k4UUtTWjlhK2YwendnM3A0UXhheUZYUGRtTHpBZWtLcFhU?=
 =?utf-8?B?OHBDMVVHYndxQkJ3dHdaSm5laXR6S2duM1Zrc1B1cDJlRFZPWS9kTzFEbVRx?=
 =?utf-8?B?MHlzZ1hoYk1UdkhXOTNjK3FDRjFOZHB2Mm0rZnRteUxrdTQrbFZvQXdleTA0?=
 =?utf-8?B?RXRORkdnTDhDdFFNaWJuNm1WeTRmMTR5M3ZsekNjZ2swcWhIaXF1Rkxta0pm?=
 =?utf-8?B?SUVPeVhZOWZnaTJlQzgyY0NTYkVkODZUREltSHRxTWRudVVXRTR3S3VaYnlI?=
 =?utf-8?B?UzhFZXhQdzRwUTdEUmw4MnBhT0hJcDYxZFp2bmQra0RXSGJZMEcrRXQyN3RW?=
 =?utf-8?B?d1ZjQkJvT0RickJSNGlrdWFpQUtYTjhmRmVRWXNQUGRhNlVaVnhnc0ZQdHRN?=
 =?utf-8?B?K0FUSDFlaWxaZ2pGVnpSR1BYRm8zWnp0Q1puY0RjMmVKWmtFQkJnckFVRGF1?=
 =?utf-8?B?SnprN1lZWWhaQUVKZWRPNnlNU2o5NFcvcGI0STh0VGloWWxUTXI2a3pLb096?=
 =?utf-8?B?N2xBK1N3R3kwVmZlelZDYUUxaFE2YUQvdnRpV2lGQUxJdFJyV0t3R0dCRTVF?=
 =?utf-8?B?eWpUNmtxTXJkb3BYbE9WTTlLRGhBOElsOUMwTkZiTjhxb2FtREZ4YVpZa25v?=
 =?utf-8?B?M1V5ZFBpdEdkbU5VU3NlV25CYlIvek01alZjVkRTaUJXeWdYeDZsZ3FrOTNh?=
 =?utf-8?B?ZmR1dkJQVCsrajB0c2c2aEFOejBIb3JId0Q5U0pjbUdKT2dvYXVxZGFlZmkr?=
 =?utf-8?B?eCtNN1VsR2Z0YTF0aTRCcHU0cmpxdUp0dmxkVm1VVzZ3aitTU2xpeWkzTm1Q?=
 =?utf-8?B?ckVXNDFSb2tncU12T2xHNDdUTm9EeVF3anNlWTVDdGpBSFpTM1ZtSnlHalpj?=
 =?utf-8?B?MFZTM2NTWTRRR1pTbGx6UDkwOU9KUEgzZGJTUlpBTVhuR1ZGR0RvUUFsS3B0?=
 =?utf-8?B?ZDV4SEM0N29zbjBpRWx6dXdjSzN1WGZtQVpRWnJpOE1jbkRqVWowanhkRldT?=
 =?utf-8?B?b3RtSzBTTlEvTHZXNUlNbVpTaUVITFFnejhEWUUwQytBN2Y3eDFNSGFkSVBE?=
 =?utf-8?B?TlVXWkJKN2d0YlhpQ2daMUVDRForeTBwNlVRbXk3QUl3V1lSTElqQ1dYaURE?=
 =?utf-8?B?TVNFcXpvRlJKaHZZNCtOdnJiOHdOM2xmdVZUMTcyTU5UR2N2K1laZ0ZFcnlC?=
 =?utf-8?B?NWlsOUYybjNTdzVnUGxlVTM2Q0lheWJRL0k0dlJUa1o2VE5qNGhRdGQvQTF6?=
 =?utf-8?B?TFpXTlpuZWNaWllnQjdJZS9jRFcvVytxSUpYckQ0YmJwOXFpT3NMTVlTaWhi?=
 =?utf-8?B?eTFmV0VJUTN2RTVsZ1Zka0lYV0xqTmk3MGVHd05vS2JjdXc3VENqZ0JnMFFk?=
 =?utf-8?B?dmtQZW5zc0svOFY4Z2RERUlCa2xjd1NkQVFUTVUrTkIzTWNRQjJMTGNlSkFW?=
 =?utf-8?B?UG9DTi9hVDFDZjBaSGJURXpzdHJ1QUFkdStXdEJjVkRZckpqcVd1SG9yS1FM?=
 =?utf-8?B?QitDOXEyMmtVY1JKL2dzK1hxTlFYUFp5NklmckxhWjExeVRIdDFpaHo2bk40?=
 =?utf-8?B?QjB3dzI4Um5icDlPUTlMZ1hzaWd5VHBmTnJyL21HaGhJbWpSVXBTZnc2K3Fr?=
 =?utf-8?B?eHhkTW9CTWZDRmtoUmNmMkJjcEVwMk16Q1dweVNzbG9LdE9rd0xmK0tYTkFs?=
 =?utf-8?B?elo5bFdQb2N4ZUg3SGhVd05DalV3PT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06945b52-1090-429b-3ead-08dc2ecda74d
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 08:59:59.1224
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xFEUsMS0vKOf4QKAWaBuD0OVlF8Abpydi8KiTCNskn5dQoH+f2RWLLly2xgfJaTww+RGrwpMAgsDmqPDIacCtTdHy4ZtU62JBR3IjOgOfcfhCc/kDGQAwtDaYtCQ8AnV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7983
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 09:00:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62516

Hi Trevor,

On 2/15/24 20:20, Trevor Woerner wrote:
> On Thu 2024-02-15 @ 06:06:42 PM, Quentin Schulz wrote:
>> Hi Trevor,
>>
>> On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
>>> Rockchip defines the expected layout/map of the default storage device.
>>> Fill out the wks description so it matches.
>>>
>>> 	https://opensource.rock-chips.com/wiki_Partitions
>>>
>>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>>> ---
>>>    wic/rockchip.wks | 18 ++++++++++++------
>>>    1 file changed, 12 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/wic/rockchip.wks b/wic/rockchip.wks
>>> index b14ec0d1690a..8dc4d20f2f54 100644
>>> --- a/wic/rockchip.wks
>>> +++ b/wic/rockchip.wks
>>> @@ -9,16 +9,22 @@
>>>    # wic uses 1KB blocks. The following table uses 512 byte sectors:
>>>    #
>>>    #   Partition   Start Sector    Number of Sectors
>>> -#   loader1     64              8000        (idbloader / U-Boot SPL)
>>> -#   reserved1   8064            128
>>> -#   reserved2   8192            8192
>>> +#   loader1     64              7104        (idbloader / U-Boot SPL)
>>> +#   vstorage    7168            512         (serial number, MAC address, etc)
>>> +#   reserved    7680            384         (not used)
>>> +#   reserved1   8064            64          (legacy DRM key)
>>> +#   uboot_env   8128            64          (U-Boot environment)
>>> +#   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
>>>    #   loader2     16384           8192        (U-Boot proper)
>>> -#   atf         24576           8192
>>> +#   atf         24576           8192        (trusted OS e.g. ATR, OP-TEE, etc)
>>>    #   boot        32768           229376
>>>    #   root        262144          -           (suggested)
>>> -part loader1    --offset 32     --fixed-size 4000K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
>>> -part reserved1  --offset 4032   --fixed-size 64K      --fstype=none
>>> +part loader1    --offset 32     --fixed-size 3552K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
>>> +part vstorage   --offset 3584   --fixed-size 256K     --fstype=none
>>> +part reserved   --offset 3840   --fixed-size 192K     --fstype=none
>>> +part reserved1  --offset 4032   --fixed-size 32K      --fstype=none
>>> +part uboot_env  --offset 4064   --fixed-size 32K      --fstype=none
>>>    part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none
>>>    part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
>>>    part atf        --offset 12288  --fixed-size 4096K    --fstype=none
>>>
>>
>> This is... quite dangerous. I assume people access raw partitions via their
>> index number, and now they would be changed, making it harder to do partial
>> updates. It depends how one sees this file, but could be seen as immutable
>> for existing partitions to avoid backward compatibility issues.
> 
> I don't think that's a huge problem, but I could be wrong. People will see
> their builds fail, investigate, update, and move on?
> 

Why would the builds fail? This is a runtime issue IMO. E.g. they flash 
idbloader.img to mmcblkXp0 and u-boot.itb to mmcblkXp3 but now they 
would need to flash the latter to mmcblkXp6. And if they have a device 
that was flashed with the old partition table and another device with 
the new partition table, they need some kind of userspace logic to 
figure out which is which? They could also be flashing at an offset on 
mmcblkX itself, but then this change wouldn't impact them in any way.

> But I think I saw something in wic about not adding a partition to the table,
> or not giving it a number? So it might be possible to define these partitions
> and not change the numbers? I could look into it a bit more.
> 

That makes sense, but then.. what would the change in this commit 
actually bring to the table? I guess as documentation?

[...]

>> Random thought, but we could probably also get the env from U-Boot recipe
>> (or any other recipe that generates one) (if one is generated) and install
>> it into uboot_env partition?
> 
> That's exactly where I'm going with this. I already have a spreadsheet
> listing all the rockchip devices, and their U-Boot environment configurations
> (location, size, etc) to see which ones come with environment configurations,
> and to make sure they're all the correct location and size for those that do
> (they are). I also already have Yocto pieces generating and placing
> the U-Boot environment in the U-Boot environment partition (via wic) but
> haven't submitted the patches yet (as well as generating a correct
> /etc/fw_env.config file. My next step is to add in env support in U-Boot for
> those missing it.

Cool.

Cheers,
Quentin

