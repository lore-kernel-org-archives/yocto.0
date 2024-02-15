Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43AA5C4829E
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 17:06:59 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.101])
 by mx.groups.io with SMTP id smtpd.web11.19573.1708016809042796349
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 09:06:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=figvEkiK;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.7.101, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fK1nBVI83ejhXEITcsSazkB9RNQy0rMLizP2SYZsE3aApP8qQVPIRY1AYjxNb2g/pxUhaSwNbsHzZuUUWbRxEzTOnhMyCEDg1237vc1ooHfBLI+W0S7XbswbwgATWOsepHM9OzlPNJhXBGbC5ycmUKOCGZ/XV0y+8UdUrhFprxBra6v/p4+VXBXL5VyaA3YkKZPpREgHcLHWU3Kvkp/CP3uuSCEQoj81IDx5yE9YkZeurbmlkoswiaZI3kKRM7m4a1iSTFuCN9czgVuXuwB4c9R5tNKKc23JrTQvGHFqfGTZ3bxzmdKPAIVwqVQMjN6LPIViEU/Gpi2S1HeqnpbKQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xWcWggTz3LMW/jIuXkVjTC8aLSehn0G4ik3FQdSDLmM=;
 b=ceaFInJgGhztUN+QX0TilM8q6KOx2fO0vd1zV4KjSNh8pRWIEjxQdqBffJABK8DMpSiPrIsMEq8AUabJOCYkOUOmygZzd/g+2JgVubHczpF8FqvW54SPtp6zW8v5SMq1J51z2mJSIdslICEEZCVdH39ksHfZkAFoPXdQ1M5X27UxMHPggS6ANzNjQTBvj5u5E4VKHvo1/JwXyezhITaZS3wXNipFhadISw4+CRkIwWEL8jJHI9tjfaMtPpVYh01Wuh7NnjAZq2KUHfjouLqQhHAn/0/Nwl1rfDMznsjQqgQu+If+oR4swM1KcICh26YfNLjolb+nWkYzZ/o9ND9yew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xWcWggTz3LMW/jIuXkVjTC8aLSehn0G4ik3FQdSDLmM=;
 b=figvEkiKPQzzPu602nYQkjgUl+iCYBD7weuVn7JlZaaJj10w/WLqLEAQCQDFVIpb7gWjAN0Zd1bdJ8PspGFTqqeHcUzL3phlQ3ThhVup571pzqHIWbaFwH4NMGegblpue0iDNqe79kmf4XkLS6bYVAOfvrenT8d5OeYuR+8lwZBdHyur1NzP8oUueoj3VsF4enolxWBJWYTJRus+s8J2I6ww65FqyzlJf9fXg9TvfNkOj6RbarAdFD6qqeBlilKSNQO/t7nhvSS0uFYqytng8dxkbUHQc7887MFaJHRcV5oLLiLR5QDF1OvAzrx0pvbwpgbFMksDMbYjhjjuxj11qw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DBBPR04MB7548.eurprd04.prod.outlook.com (2603:10a6:10:20c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.29; Thu, 15 Feb
 2024 17:06:44 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.029; Thu, 15 Feb 2024
 17:06:44 +0000
Message-ID: <20297b5e-af8b-4bce-a192-9bf799d8a36a@theobroma-systems.com>
Date: Thu, 15 Feb 2024 18:06:42 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH 2/4] rockchip.wks: add all Rockchip
 partitions
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20240212202342.37778-1-twoerner@gmail.com>
 <20240212202342.37778-2-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240212202342.37778-2-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0066.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ce::15) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DBBPR04MB7548:EE_
X-MS-Office365-Filtering-Correlation-Id: c87b5d1c-4d22-463f-4af3-08dc2e487cb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QMZ0/RutMP5cZ7CCtI7fOCQqygHhad6CJwVX0T5pRLyMHxC29VnU/XJYhbKMO+ot+klFp2FnsdjNiPm8SaT9T+JkEfn5roOOrEy+NrnF2O4cTHR1IEenik6IrIcLN02euezPU2Tn1y75RB8Si9OL4tKU7Mz1/10ESqRzgS3S2dOQcO7Aw/kk3sXaF55aKyU7V4NiVC2BgPE0kR/MjzHGMz6aZ1cBy1zXjBKkBqweJeoVcZ+kAIHvkwQ9SxaRH/GJsuxjiwjYKT8OmxYXzmdzJU8By9SPMEj29HD0nnlUuVJKg+tqF3Q9Llw8F53ZV4LauXtbw0Jh/b48F70CKJrHcQAho/B0P5E0fpbAdwFyPD9g3JNrVjhCWGa+eAysgLihSfOuB12UsIXeqpJdkq0Hi+cF0iXszXYjIuLmEm/hIZRN3Ck8vFRNtjsn4k0U3p24jGRB8W2uuQgQbTTcHbNx6ZDwY7oQMx+QGAS3hEC+ClE0LWt+TJot+Wbona9kDcUu8Y8PgfhMe9USimu9/AxYY5x8O3eCMa47wakyZydJBXc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(39850400004)(376002)(366004)(346002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(5660300002)(2906002)(8936002)(66476007)(66946007)(66556008)(44832011)(8676002)(36756003)(31696002)(86362001)(83380400001)(38100700002)(6506007)(53546011)(478600001)(6512007)(316002)(966005)(6486002)(2616005)(41300700001)(31686004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UjV0MlhhMmpFZThTWjF2UXRqYmJxYWc5RG1sWWZvYzZzdDJTUy9wZDFrTTJm?=
 =?utf-8?B?azh6ZmttS1dLdlUvTjZjRGdseExlbjNrb3RHTDI5c2FwaGdDeENqeXUxMUxp?=
 =?utf-8?B?dHVGUGZwTWtWN0dMVFpLY0xEaWtVVEFMSG9yNGpLQTBVNG03bjVDTndQS0Rt?=
 =?utf-8?B?d2x5NVNHM1BybkV3MFU0VTE2UEt6SWoxK2pzV21yVncwRWx4NUhVTzR3Tjln?=
 =?utf-8?B?VGpCSDlrS0lvUzAyVXQzeHl0WC9IOGpvdnlRcXpMOG1LTHZBYUR3TDM0eDVj?=
 =?utf-8?B?UUdoMHJreVM5WXBvTmtpN3RiTXBRbkZEWlRVckFhZ0ZWMGhMOWdBWmxOWHdY?=
 =?utf-8?B?MjF1WmRJaDd0U1dRcnowVEloSVRTUUdNNkNRZXErN1VGQnk4MDJCTWRTN0lp?=
 =?utf-8?B?cUVLK2g1WEZhZlYvc1FDSmE4RXRva2lsaURhWWRhbWtPRFVWd2xJRk00cVVw?=
 =?utf-8?B?RG0vZlpyZ0lLMmU0b2hPYlJyeG1aVjJxa1NMS0pDUEVIdm9DVm4xblFDR05Z?=
 =?utf-8?B?ZEJ0cG1GY2w4QXFKQjl6SUVxRi91aHJmYVJSNUNZMFh0TkpIYnQrOGljeXdk?=
 =?utf-8?B?OG9KMlFKUGlUVDczaXdaem4yNTR2VDAxZ2hETUZjZjBjeWc3Z1hqbUpENzR1?=
 =?utf-8?B?WE9RdTU4OVVZNmg2VlhZUEhFQ0x3Wms4QTE2cWNZSmQ0OEh4Ky9hWGRIS0tl?=
 =?utf-8?B?cy9rVXBDaEJOcDdlUk04V2o1aWJMdStSKyt1a2hNZFA4cE41UGx6OVNObndt?=
 =?utf-8?B?TitxS2hkSEE5Rk4rYkRvM0Vic0hCbWJWSHkybDZ1ZDdTQzJ4Qmo0eStFSGlB?=
 =?utf-8?B?aGFLL1J5NUVNS0wrZVUxSjlSdGZMQ3BPd1IzM09kV2J5RjdrTGhhWGZ1aXpp?=
 =?utf-8?B?T05RaVZzd3hZKys1U0crWXVIOXV1cnc5VWRFTFY1aFVHeTEwZTlGcnV2QUFE?=
 =?utf-8?B?YjhYRS95M0Y1K2E3YW9XcUcxOXFQSUZvbXByUFFFQ0J4a2ZkY3ExK3V3YkVv?=
 =?utf-8?B?K1BPd3h1UTB2eWdUQUxaVGJ2T1ZWOXpiR1dzK1haQXdSeGRUN0lQTHFrNVhm?=
 =?utf-8?B?cGlnMm9tN0x0WDBONW82KzUwcGVOY09lalRZSmtKT2pEYllIMVdJcTM0MXdB?=
 =?utf-8?B?d3VoTVV6REFjNk9sNXhVWXJ1dTk0UlpiYnFvK21IVi9RSXQrOHBmdzdYNFV6?=
 =?utf-8?B?VTZ6WEcxNGVWSXdMT3Q4Tnh2cHR0SENFOFZ0MFBqaWJRQTNnWmpYS0R4TXhy?=
 =?utf-8?B?WkgwNWcxOFN5c1B3TjZzUWxpanFCQ2Y1akpQSkhjNjk3SnNPY0d3YmhORFBi?=
 =?utf-8?B?Q3YvS2YxNnpOam40RURaQWNpdkJnenJEdGIzRFRVcGMrdC9BYmdpTUtZN0FV?=
 =?utf-8?B?SUsrWEV2TTlvZzdsL0NGcGNvRFBnMSs3b2NMMUNQUXVUT1JGMkVJZjV2dzh1?=
 =?utf-8?B?ZUJhQ0pzSHRmOGx0dVFiT0FQVXprbDROa2lEbHlzNkY1OHA1Q0dTVUJiTlpC?=
 =?utf-8?B?Z0xJNzREWGwvNERTbUkvZFNMVXVFUENRdE1NamtzNkE2ZXd5L2VEUFBpRmxo?=
 =?utf-8?B?ZFUyOHpUeHlNWW5ORm1yYnZ4RjNUUGxWV2Y4Y0xaTU5VMTVuQ3ExdkRFVWlp?=
 =?utf-8?B?Ymd1VWFsVnBsYllsRWV6RitNMHpoRkZnMEFOVU93L0hzQVl3K1FIWDVDaHV4?=
 =?utf-8?B?V3VwK3FFRk11MEwzUGt6cDRxNy9pY1BVaG5DY1k4NzdyTXNGaFQ5YUw2OUpU?=
 =?utf-8?B?WkpyMUF6eEVCZStqSnhWU2VEWE5Gb3ZCeDk5QTBqb3lTQ3E0VG9TWFFuOUZu?=
 =?utf-8?B?WDFXL0FKbG5LdlBSM2JaWUx6K3FsV2NGbDRWaFVOVTR3SnFySklWNHIweTFM?=
 =?utf-8?B?cHN4Z1o1S0VtbTdNWDhXcGhDSzBoLzJIcS9IYnU3M2NvcUwvR2gzK0N6L2xR?=
 =?utf-8?B?bGFlV3MweXB0b1h5SHZCdnA3azI5cU5rWld4bUE1ZHk0VVVWcWVzRkZpSFNn?=
 =?utf-8?B?UjJsOEI1bTluWU52K01ucDZYRnRDMU9VY1MwdVJydVNwOHlsU2kyYUluQTV1?=
 =?utf-8?B?Mm9SVjF3VFBhbFJkV3JGZlViTVlSVTVjT2tDdDcrYkNURWNqNHlIR2lKOUpt?=
 =?utf-8?B?c2ZuWlcxZjNEWElCbTRnamlkR2lJN1hCMGdEQkhJZWlvanB0SUJ3bzF5alI0?=
 =?utf-8?B?K3BRb3p3a0hJMGdyTm9FekVlQkd4Yzg5MCtsWWYvQVJ5VVVwZThWUlBYdDZQ?=
 =?utf-8?B?SjA0Vmg5b0R3V1IzNnNobklyRFRnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c87b5d1c-4d22-463f-4af3-08dc2e487cb0
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2024 17:06:44.5060
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AYsKBcHxcxd4EZGuhl/LX9JaVOrlrAma+Nv454ltPEIF8ni4dtz/hwqW0fCmU04543f1ZIju9NglH8EXsKqGss6kiSzzfTBwzF8PjdLl0zi9izgR3oimkz4lxotD7SW8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7548
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 17:06:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62496

Hi Trevor,

On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
> Rockchip defines the expected layout/map of the default storage device.
> Fill out the wks description so it matches.
> 
> 	https://opensource.rock-chips.com/wiki_Partitions
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   wic/rockchip.wks | 18 ++++++++++++------
>   1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> index b14ec0d1690a..8dc4d20f2f54 100644
> --- a/wic/rockchip.wks
> +++ b/wic/rockchip.wks
> @@ -9,16 +9,22 @@
>   # wic uses 1KB blocks. The following table uses 512 byte sectors:
>   #
>   #   Partition   Start Sector    Number of Sectors
> -#   loader1     64              8000        (idbloader / U-Boot SPL)
> -#   reserved1   8064            128
> -#   reserved2   8192            8192
> +#   loader1     64              7104        (idbloader / U-Boot SPL)
> +#   vstorage    7168            512         (serial number, MAC address, etc)
> +#   reserved    7680            384         (not used)
> +#   reserved1   8064            64          (legacy DRM key)
> +#   uboot_env   8128            64          (U-Boot environment)
> +#   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
>   #   loader2     16384           8192        (U-Boot proper)
> -#   atf         24576           8192
> +#   atf         24576           8192        (trusted OS e.g. ATR, OP-TEE, etc)
>   #   boot        32768           229376
>   #   root        262144          -           (suggested)
>   
> -part loader1    --offset 32     --fixed-size 4000K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> -part reserved1  --offset 4032   --fixed-size 64K      --fstype=none
> +part loader1    --offset 32     --fixed-size 3552K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> +part vstorage   --offset 3584   --fixed-size 256K     --fstype=none
> +part reserved   --offset 3840   --fixed-size 192K     --fstype=none
> +part reserved1  --offset 4032   --fixed-size 32K      --fstype=none
> +part uboot_env  --offset 4064   --fixed-size 32K      --fstype=none
>   part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none
>   part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
>   part atf        --offset 12288  --fixed-size 4096K    --fstype=none
> 

This is... quite dangerous. I assume people access raw partitions via 
their index number, and now they would be changed, making it harder to 
do partial updates. It depends how one sees this file, but could be seen 
as immutable for existing partitions to avoid backward compatibility issues.

I was wondering whether there is support for partition labels or 
something like that for raw partitions, but doesn't seem like it. Which 
is quite odd, wouldn't that kind of information be stored in the 
partition table for example?

Also, maybe use sectors for offsets and fixed-sizes since you document 
them this way? S is the suffix for it.

Random thought, but we could probably also get the env from U-Boot 
recipe (or any other recipe that generates one) (if one is generated) 
and install it into uboot_env partition?

Cheers,
Quentin

