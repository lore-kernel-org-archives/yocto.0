Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B9EBC5478A
	for <webhook@archiver.kernel.org>; Wed, 21 Feb 2024 18:33:11 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.133])
 by mx.groups.io with SMTP id smtpd.web10.713.1708540381003745011
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Feb 2024 10:33:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=A0bNejqu;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.133, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oX4PxBR5LwP322Tkya24j6CTk4Hfg9XKcLsbQ+06niSfwwmJWcZHjsR1MBh18rqZt+1ORCaqnBcyBVUbxmEmwkVLGJCHo9Ig92tnyJ9JrkfynzZfuCCoccFUM+qOWxo5kb3ygCfmlOhUO7+wfjiVcvwckrtoone0SsQAay0tLg+bulr+abSYI7aWu7fzCGTu5Gzw7Zq1zyyF41kg7yIbGr8x8D/qL2JkC2Ay3cmScyWHQkC0+vtGtsvYO0rrCGzcPAP0a5Yy2VBdnqJnULmq+9QninU+8utgASusAh2Gx/f/SGrnk/z6AomQPsCWTseKid9VWkWzI1tQZDf1X/ucLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y6arLd5UjhrKwaXbySNBm6f24kgZwv6/Hts8LNgj4NY=;
 b=D/TlepIA1fNjSqZLkzYubPsQdC8czmA8kf+2VbrmcL0ORf4DZagW6QMznkbw0Ja8JPFGQ3Z7lrWXWgrL7RSr22I62MxyzceQQmZDNFKmr8FTV1eUrFGIkv2HwbLNwEVjsSX5y4VfZeMfo/U0bD0lnmxZCMm51wFTX6JPXf2NoRHExecZNMUFIDTB1HAUfIoLL/QmHKWz44HR5uuLc04MxVr1uAz2XGycHBwq21K/uEBMu7BBCmxpnlm7FXP92FSeH9KaJGUvFFKVr+sKD3ZcSdb+Y5+8bTTfXskBszqhIaj9yTVH3VsNpH+51ZmrIjRyA6Gn74TTcjZSWnXcjeC+sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y6arLd5UjhrKwaXbySNBm6f24kgZwv6/Hts8LNgj4NY=;
 b=A0bNejqua35UtczcgZnTJ7Zv+J5/Te6hRmbMGvbiqhxiQiFku1nsJsLaSA6YTQigKxf4xEv8BjA1QwE5hdJKYr4VjS85HR5BhFDKmD455kLXBZ0XaGqPfbf/yBv32blFJTZORIdCu0O1nS8CPRUZc08cRz67+axkJicKAV9gWATpxFKkb1xAEWlgzWZSdsBYR8f7+FYdHSbAkE542R0Y+EZQXxd5uNPMZWKmBJvT4pMgCHx4lbaF8C+b+8/yKS9H+JZpgzkkmdK4alO3JeHYNWhC9yy45s2ag6CCb+HWFxC3oZ1M3ZOxH1FhRmW3fPfCK6XH4HcSAk/vwya97l5MwQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DU0PR04MB9321.eurprd04.prod.outlook.com (2603:10a6:10:354::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.38; Wed, 21 Feb
 2024 18:32:58 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.036; Wed, 21 Feb 2024
 18:32:58 +0000
Message-ID: <3e245a89-f851-4483-9a23-fa96e3222605@theobroma-systems.com>
Date: Wed, 21 Feb 2024 19:32:57 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH v3 1/5] rockchip.wks: specify
 offsets in sectors
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20240219174825.7084-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240219174825.7084-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0092.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::12) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DU0PR04MB9321:EE_
X-MS-Office365-Filtering-Correlation-Id: b048bf1e-f828-4a62-c027-08dc330b86e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	r1eUklWuYCzipXWCUs0PbiNMj7yvmtSvVAjxZParVTlZwOAE+skzy8jS1L4xxM+4Msh8XVduaTT5dk5m67W9aLsn9CwAkNgDFS0nFGr9/hU2OQIkXbn+hti8pYRnKyYRCe67godtbqaUDhcTZLuY3tNAcZEmmdfU9H16Cdzq9J5Es2G+MYJKSgZrqI48UN9KD7abyxLRHxivB3J6aHl0dFejJnl9RxMKJdEdS8gNASKoF9B+WYNuApW7fCVbj7uNhsTSeb4KnJTNdQJYrlYhpFsQNNuYnlcquZWlbyfn4scfVnxDE5YFMnTqqb7PTpUAd74czpj0lWweu10x0FN3oYbYoqgZUHcdny3thoZY1fdVXfw6yLwOAlv+uPcXjGkbL8Hv1bHe8NCF4HLuFp39i7DsPuCZSTAd9xovGXirMPOJfRxIIfjClok+tAcsroxMkSJbO1JgLA2Sa22zMswadSPFstJzhoJbeEKOUeE1M5K2TZh3V+/KevImD5XkADzDVC3sSmHqkq3oUjjD+ckHyWEg9WuqPIBDRc4NaygUQ0E=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MG51L09jS3RONXZhUjRvc203c01sZU5RZUtSWlNybWx1aTM1T3UwNE1LTCtP?=
 =?utf-8?B?N0UvOFYzN0Y4MUVOWHY0c2ZoKzhvNzZGdjA0cG5ibUVPTjlEZm5KcWNtV2l6?=
 =?utf-8?B?SDJOS2pHc3hoVzlFTi9KUTdQREtDSWlIRGphL2Z3M2sxdW8rMVBGSGlSeHM2?=
 =?utf-8?B?N0NHR0hBY2s2ajdWNnhMN0FONHBveXdLL0w1UVpWTEwxOTcxdE1oUnk3ejE5?=
 =?utf-8?B?ZDhzYnVZMHIyRzE2TmVqcTE4bXhLMUE0RzVXNTFQN0wvOEc1dTAzL3czVzVU?=
 =?utf-8?B?U3laNmc4TkJhM3YxZURDSUNVdURPczhSMzRKdzB6Ty8vZzllVmVCSk5DdHdk?=
 =?utf-8?B?RjVCelpIbUtQZnJGQlVuMkJscmhqOG10YVN0c2NpeElEdXgyNm82MzBtdzRo?=
 =?utf-8?B?U3pia05WbWM5V0RqT1luSkZVZENBU05xaG1iKzZMaEVxUWtObGg5Q2hyOXFw?=
 =?utf-8?B?U1J4WjA5L3BnaERKd2t6OEdKTXdBYWpkb0hsRTczL0x1VjdNOUZpbFI5SUE0?=
 =?utf-8?B?aVBFQ0JqMlJLclQ3dy9qN3UxOGJaNUZGVyttZ1BNaXB1Zi9pR3dxSjV2OWFO?=
 =?utf-8?B?YmgxMVJKeEkzb2dZcmVNeHpEdGhiWkZybWdjclJzOGh0Z0QyVTF4cktvYUox?=
 =?utf-8?B?ZDh3T2QxUHl0R3Z0cldyUXNoMmVuREg5QWRIR3pwV0JKd1Bmd2VqcDhVd1FB?=
 =?utf-8?B?R0RJbWZtWFhCME5YSXM3R0lrR3ZuVitJZW1DTjBtd0RJdVBZUXBTVTlHYmsx?=
 =?utf-8?B?a25DSkRjdXBVejdXWEcxaG1UQ3N1R3VvL3JCQ3FQL1MxV1M5WHpweGJEeEZh?=
 =?utf-8?B?S0Z1ZjZEUzFrMUVFdUczcEUrdUFlK3F3dzNKZlJyWGR4V2w0dGpRNUk4V3R0?=
 =?utf-8?B?N0czVkNQUXMvQk02UDRVQ2ZQN3RtOU5ESGZzc2VTNmI1RHBIdld6SmRIWXF5?=
 =?utf-8?B?cW0vVThLanBmU0drYmg0WWFsY0NhVDlGaWFIK21uekxHTk1UUDRzbWlVYk1u?=
 =?utf-8?B?SnhqVGs2bDA5RndUOUtRdVZSWDNqTTVDWGxScnRKK2l4K0hNK2ZtdUZBZllB?=
 =?utf-8?B?OU03SHIzNkwzUUo5YXVCTnozYVluZVJ0OFVmcGtyZm9wUVhWNEhjdVVWNTdR?=
 =?utf-8?B?MWg4dERaTnZwSHMzTkdNUjNWcllSbXltTDA2RGZleGxYNURTaGdncWR3clFH?=
 =?utf-8?B?bTRBYlVWSURmaUFZWjFMQ3dlRHFWQXpqREkzczZHMVUxZmh5Y0RTaHBhcWp1?=
 =?utf-8?B?Tm1LalNCc1Y3RzdtZjlVSEVPZXc4ZFQ5VkdZYjZJNVNWTDVJMTB3WmJQdUNM?=
 =?utf-8?B?TTJhOE0yK284S3hpQ2pqaUxnbjg4YTRlaUVtVnhBNzQ3bjNhbG1SSDBveGt1?=
 =?utf-8?B?ZUdXRWtmQlJQTjNTQm13b3BuOGlOTkdrQndFMVFjeUM5aVBjV2oydnNiQUlw?=
 =?utf-8?B?RjQ4MHlHMjZza1IxcFl5K3ZPWXZBNmdEUmE5NlV6aW5ZMW00S3QxSkVMVjd4?=
 =?utf-8?B?aUU1ZkJRVVFDMklxbk10aXM4SkdrbndmMkVjRkFVb1pKVnhDeFBBeUJRRWpH?=
 =?utf-8?B?Z0xXWjRscWtWeDJhZkNnVDRhT1E0bWkyQk1lRTY0VEkyT1B3a2RKUkNZaHNp?=
 =?utf-8?B?R20wdmFSbmlaWDdaak5OaTcvVTZORXc4RVk2d0VINGVraVFoWldJd1V2aFJp?=
 =?utf-8?B?WU43T0paSy9BZjRkb3huK0R1MDc5TE5lRGpKMHhrbmdIdHFCVE0xbjNDbVhI?=
 =?utf-8?B?L3lqMXNFcEVLUkV0aElQV0VMOUVpaDZ0T09vcGIxa1ZkbGZOVXlMWTl2bjUr?=
 =?utf-8?B?YWQxV0lzdWZxOUJHVmhzdUxKUWtYQjN1YmwwN0F0aHBoMjdiT2tPRWNwQ2NQ?=
 =?utf-8?B?NmpFVXhHaDhWUi9XZCttN29rM1JIYXU3ZHp3ZTYwQ1B1OG1iSTVZSjJPM1RT?=
 =?utf-8?B?b2p6SC9ySTJWRWM2RzByQVI4QnpaRndWTHZraUVSNmw3T2ltakZtSWlNbzZq?=
 =?utf-8?B?ejQxZ0dYM0VxRkIzZ2l0VmlnSHhxZ1ZjQlErK0pIazFzSkRsYkp0OHY3Q2tO?=
 =?utf-8?B?QmVveFVSZktVekI2ME53aERGZDVPeEQ2Nm1GU1dvVnFlb1BVajhURks2OTlk?=
 =?utf-8?B?N3N2THVvaUpRTzNOWm1vMWZvVXJSMkZscURwZTc1OVZtUnR2SE5EMG4rWGJj?=
 =?utf-8?B?VHNtSFFCMTBRT1J1dWNNNENZUnVReXREZ050L05zdkJ2YXRjakdlMEZTbStU?=
 =?utf-8?B?SHd5bHV3YWFQR1p6UXVJbURLd0ZBPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b048bf1e-f828-4a62-c027-08dc330b86e7
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2024 18:32:58.2139
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iTFo4qa/lhuGsE4pPrZEzsVp9ZCvf1J58jEr3FOowPu9fgwJbfhweui5WSnHoaUOgmBawADdiMceeGOPk9zXjqZuC35COYerPa2N1U+CNTztkNBZhJuw4v0QUsGppYPE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9321
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 18:33:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62555

Hi Trevor,

On 2/19/24 18:48, Trevor Woerner via lists.yoctoproject.org wrote:
> In WIC, size arguments can be optionally specified using one of a variety
> of suffixes (e.g. K, M, G, etc.) thanks to sizetype(). One such suffix being
> "s/S" for handling sector sizes which are assumed to be 512 bytes, rather than
> the other size suffixes which are multiples of 1024 bytes.
> 
> Using the s/S sizetype allows the definition to match the documentation.
> Unfortunately we can not use the s/S suffix for --fixed-size.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Thanks,
Quentin

