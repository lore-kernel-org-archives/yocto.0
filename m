Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED3BFE7D26D
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 09:16:20 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.42])
 by mx.groups.io with SMTP id smtpd.web10.14947.1695719772749195210
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 02:16:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=Sez6k3Fb;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.42, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L8S/eQh5oY4hNwoa9j3/oJ8oaa8yFgmXt2VePRT8OwBQVZmUkWKJ5gnEkjSjBWK+6aD6/zLUaNmAQ1jiBBWtQVug7mJIlvE0d8gnd+RVR/CA7CJBpHFjhHOIYfEcBQUxWXLH/BWR4drI1bIOYSdlbu+/SkUl8NjWdhoV/CcfSoLuHfpw7zm/C6K5JAfwPN43lh778xUEIT1Jz8gzH4eKAYDu0cpgLiiIyh5eq86oLREQGd8qNIlUtnT9xD8DKflc8O8gU/Rl2J+ezrSIQGorQpW3nY93MTkyDQolXszM1OIbi/vBXp/q8Z1VOEAY1Z8GE2sAby0WrlNqv3ALMItqVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=shPSw2TDvagE1dEVFmgHOoBY90WUYvj3ZKzgPY2Y4eo=;
 b=XIHE4Iwa7AQ49glyvqzoxzMT4ekxvOtW8B7T5HOOGlXizJshMicjxQrd0szPgYiHoNijtFUDo16FIZRNxQvVqWUzac9kAiHDDgiSTT9VsIXR5OC8VjWZUtc0G3EvD1zstH7RUT+ypWfZZ9BROTRecS5LqIfU/Uufjl9CZiEyU8OrY27cKbjM7FcL0E7M6/upnn+aMvDGHl0HKt9idCyguvFjRUsQjsSImXqrsIAPkQuaVurMlwewGmJ+uRvkTje/P86JhH+kSDgbSWZnkUq+4+7ItuYa+MFWWVp+wgk2ueHB/qqNPfJ2OLXLlYZ7HHEQpCLtu1CSqhJt5Ix0ddzIhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=shPSw2TDvagE1dEVFmgHOoBY90WUYvj3ZKzgPY2Y4eo=;
 b=Sez6k3Fb7KM8TCAZZedisDLc3LJOC/L3oyNCxDBQMkRErr//tB7hWiz617w+dQBj7gPSsHmzvKRtgbaMFTSzGLauJ566ubVaMrtfTdubaJ+MtHuOMQE5pWROue9J/dPIQ5L/i6H+Dv90ZUfBPWBbCLsu/hpZktVCd+GOB5m2yKMhUZJRqFNvSRT/9AgS3qVOx2xWsaYLXogmq6L5OVeeK9aGp3FUk235qX7NYg4iFxl5xxeTzMtosPYXhGOgT4INN2KHo4Mn8HpEBpnfvJrK029x4YgkNf2awYKxR+mUyxhEOjORbqqohg/puUh+2+xorWmC5l8Sm8tJBOQhe0DCbA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DB9PR04MB8187.eurprd04.prod.outlook.com (2603:10a6:10:24a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Tue, 26 Sep
 2023 09:16:08 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f%4]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 09:16:08 +0000
Message-ID: <b4da354b-4bec-dd96-6db2-168da8d2729e@theobroma-systems.com>
Date: Tue, 26 Sep 2023 11:16:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override
 v2
Content-Language: en-US
To: Anthony Davies <anthony.t.davies@gmail.com>
Cc: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20230926043657.3897658-1-anthony.t.davies@gmail.com>
 <afd35866-a2e1-a9ea-d8ee-12b14c93f2bd@theobroma-systems.com>
 <CAL5F+oLrLnF3MsxuGjKQQwFN8BD_j1OCZy5T4AMkHd-KM_NwSw@mail.gmail.com>
 <95bc2af0-11b5-52d9-ca26-c61b4198a980@theobroma-systems.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <95bc2af0-11b5-52d9-ca26-c61b4198a980@theobroma-systems.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: VI1PR08CA0217.eurprd08.prod.outlook.com
 (2603:10a6:802:15::26) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DB9PR04MB8187:EE_
X-MS-Office365-Filtering-Correlation-Id: 6edc7c15-473d-4c1d-36f9-08dbbe71382f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kiQoYI8g8YUQ+9KImuPSTapLPRLUBSs4P/TImOWYzHiIPS+lHNcbxXhb4GQUAp+moZtn4Mx0HZ8lEkTqOreIXmAxuF262rlCKGrouYntBM+5Vgg+f29xQOIPeME5Un/HKX/Ci9e61Xxmgdiw8mJ5E0dF9ip4Ke1+5WNQEZNiGLqFzj6QswtEwEsM491TLp0Ui5gJSm6qWCP3U8+0UZVuUgEuTm45U/iedbetyYhiAZ5lG6iUcx/KGIvj9W5wQmkOw4g9E4V4EUzO9syzJ3pJ1U9G5mzAHlSyOFLx8WAQBVsqUfKLW2hbWviAyHc+DZQkGWNXwY3huG2OjC07qQuQeMyIUgkSHRE/Lqy6d3YWPK+f3U7ZVVmc3usuby5NU99+gb70qlrShjtHKD7+pVyf/Mp0RxUCX9eEqzGbGdvWJYtQRX+ZEuh6F3RUobyqTluIO+btz+Tku3Vku0fAkbv5ZdhWt/kbs/bhrTvSB8yI8KHxPjFhfSvUdDXGSQTQImswclbVmcKU4GT2FGoE1AzoePSbluTf9UxtvK2WREuzDU6A5q/7VC+SXO2sJIElkJUzAzblsyC67XZ9pg/gXdlUSYFiYc6cd865LGVMDib7rhCCZXIzckItR1igR99ywwD/Eg3IBj0hw1J14bO3HrubtA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39850400004)(346002)(366004)(376002)(396003)(230922051799003)(1800799009)(186009)(451199024)(6512007)(6486002)(53546011)(6506007)(38100700002)(86362001)(31696002)(36756003)(2616005)(26005)(44832011)(2906002)(8936002)(8676002)(31686004)(4326008)(41300700001)(66556008)(66946007)(6916009)(316002)(66476007)(5660300002)(966005)(478600001)(45080400002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Nmp2UTFBVnl1cmhGQ0ZFMUxMT0ZhbmZZTmMyQ2ZwVFcvOVBXWGY1ZWQxcCsx?=
 =?utf-8?B?ZkNPdyt6KzZzVk9rdnJHNFkwRWpPWUxWRzhWSDc4bDl5MW9icE5wZVBsVkxR?=
 =?utf-8?B?ZFJVUlhJa1M4N0pab01ubzNDWDY0WnMvRjg4aFFBZnErc2wxS1JDRnZrWHF0?=
 =?utf-8?B?VVpoRHVpanE3Z05UWkpPNkN4a0tJdHU3YlBhYXJaSjNQcGhZVE1GUmU4TU1a?=
 =?utf-8?B?S2cxQktNM1Q2dkUwK1RBa0NELys3RDA1VlBHc1NNTHcvR3Z0NGY3cEMwb2pK?=
 =?utf-8?B?Y3o0Ry9SZnBGK2Q4TGkzT210Uys2bFhDZ2pzekd0TkNBdkJ3dHhXODgyUk1S?=
 =?utf-8?B?VGxBVWVXQUhVT3lBMHJ0UzhsY0tESGRqYmhSTHpONTdNbnRHKzR2UllSZnds?=
 =?utf-8?B?ZU1rMkRKVFdySE9wOHFad3VKZUNnV2xCVnZmNU15RzE4Z3lqMVEwWUxackJ0?=
 =?utf-8?B?VHNOSW11RWVHNnJhSzhNMXRXeFloRTNRK3V1L240VHdyT1c5Z2FOc0N5TE15?=
 =?utf-8?B?U3dSV0I5OS84R05weVBZSUNDWXFqbzl0VGZBY1R6SDJ0dFdOWW9SN3pPeHBP?=
 =?utf-8?B?MUptM2FJaW5Nc0hvSklXL3N3UHI5NmJjcnA4RFFzQkNndktkYnpzTWkzaUFx?=
 =?utf-8?B?YkFmN25sNk1WUTVzY05EMnZKTUFqcVdXT1N3OTZiMThQalNBVmVKV004V3pI?=
 =?utf-8?B?cUtTbUhLMmlDc2UvZXV3QVlqOGd2YWIvbVlqVXhZS2JMQWhnaTJRWkl5ZWhT?=
 =?utf-8?B?UE9PdXZ5cklhMzZHU0dNU2VUTndkUzNXWGFZREFqbE81MXlFbjJEQS91d2pF?=
 =?utf-8?B?ZitjVnlRSHIraVVNVDl5cThMRUx2aEg3VnZHSVZrTXNFQ0lOc0Y3alJCN1lY?=
 =?utf-8?B?WFM1MUpGV1FDcjBXOWEvWXEzYlBFZ2hMeHBiOXVHWmNTTWJ2MG40MWs3T1h3?=
 =?utf-8?B?c21MNzhpYjd3MDAzWTZVOGdpZThtaHMrOC82ak50dkN1K2R3NWZyME9UQmp6?=
 =?utf-8?B?eG1UK1lNSmxrWGtvcS9kWGJWNUVZUWJqY2l3ZUxmTTlyWlFwNlh1a0drbVQy?=
 =?utf-8?B?QVdKWmNTMFh0MkI1aytPNEhoWGNXVWg1aUNkZU43Tml6dlI5aWZta2JOSmxN?=
 =?utf-8?B?RDZ1UHhmRW12K2hZMzduU1ZNSm4veFpUMkNjU1BaL1E1WHpEcGtKYXRwZkNa?=
 =?utf-8?B?YVZlL0hxaGZvRUI3ajJuTHo2VTExcXNoS2V0QzVUZ3EvWndQajdEejNTMkZB?=
 =?utf-8?B?VVNWV0hmampkaU05cnBrb0xWcS9qMTdwUldWYUpKZ0FWQ0ZQQUhkNmpqQWRU?=
 =?utf-8?B?K1JiOEtnTkhTRFRDTkFHVlB5SUU4OE9PVWgvTXFlY08vTlBheGFGT1oxaFl4?=
 =?utf-8?B?YnJ4ajRrN3dGQlZMZ1dtakxZTHllSmJPaXUxS0o4UFpHaWt6QzhFc2xHZDdZ?=
 =?utf-8?B?SkwwelBSeTVaeGpLb0NlQllwV3BDVHc3Y3lzcEh4UHZIWW1aSGhGUVZTbXJZ?=
 =?utf-8?B?Y2tmbWJvbkZVYkY4bGxyazBYRWhubGU3Ri9Ra1diRHhyR3YvQytTSW5TT1cr?=
 =?utf-8?B?NzZ1M01NUmJUdGJsVmdDMzErcHNZd253Z3ljSEdYRTBPT3JIQmFqOWZvblM3?=
 =?utf-8?B?QngzVHFMa0pqSEtOL0kzRWhyZFRXM0p3NlVLdWVYQUNoWXQrcTVhdm5SdW1y?=
 =?utf-8?B?Qmkzb2RIdUlEZWpWSnN6L1EzampGWm1sMGEyUXdBNlJMRVptM2wvWFAvaWFM?=
 =?utf-8?B?NmROdWJmSE1IVkEvQnFLbzM3YVZLeGQyMWJhRXovSE1PbHFUK0QxSXc2dVV5?=
 =?utf-8?B?d2l1MmQ1Z0Y2TkZQRlBjNXRrbzNiOGNHZS9xaHo0b0dKL0JXTGEzWmlWbDkr?=
 =?utf-8?B?QTlhVXByOWc2aWtFUUo0VjAyQVBJQkRHbkFtL2k3TDIvQ1pjTlU2ei9SUFN5?=
 =?utf-8?B?YVVST29LTWdtZ3JUMGJ2RFUrYlRHd3dPckkyMk5LWWxsT2sxZVNIVHFQa1dz?=
 =?utf-8?B?ZXh0eHRXUmtxYVhPYW10S3JpMy9FdW04ZXJ1V1lFWXVFemYrU2FQU0trd2FE?=
 =?utf-8?B?L1FMSnQrNzFDNkwzY2xCT3Q4QUI4SXhFZ0RaSllBNHYyMFZyd3JMdUwxMVBZ?=
 =?utf-8?B?bnZya0lEaDhJdzdUVXB5VWRVcVhsTXNpekx4REo1ODJqYy9SaTkxdnIyMUQ2?=
 =?utf-8?Q?lvAXcNnj3Z+hFzXxqE5oU2E=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6edc7c15-473d-4c1d-36f9-08dbbe71382f
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 09:16:08.7382
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E/lY/yMYN4WAPV26C6TAIpz3EBUNZjWzseJofxVEYN2od6djtaiYzsvXa8fUO7osx/bux0Xn9MQLvJ+FXjdRG0sdnBRFTGItcJFysRLlLVoGpvjEI3ETKHjmVmdoV9Xg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8187
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 09:16:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61122



On 9/26/23 11:13, Quentin Schulz via lists.yoctoproject.org wrote:
> Hi Anthony,
> 
> On 9/26/23 10:25, Anthony Davies wrote:
>> Hi Quentin
>>
>> Happy to contribute but not all that familiar with emailing patches, 
>> sorry.
>>
> 
> The Signed-off-by needs to be present in the commit log already, it is 
> not related to mailing list submission. It is added with git commit 
> --signoff (or git commit -s), c.f. 
> https://docs.yoctoproject.org/contributor-guide/submit-changes.html. You're not the first one to forget it (or not know about it), nor will you be the last one, so no worries :)
> 
>> I lumped them together because if you modify the KERNEL_IMAGETYPE you
>> trigger the bug.
>>
> 
> But... you're not modifying the KERNEL_IMAGETYPE, you're merely allow it 
> to be changed. So you're technically not introducing a bug. And if we 
> wanted to be pedantic, we could say that this bug can technically 
> already be triggered by changing the KERNEL_IMAGETYPE in the machine 
> configuration file (and not in local.conf).
> 
> If you want to make sure one cannot modify the KERNEL_IMAGETYPE and 
> break the build, then you can add the commit handling the devicetree 
> before the one allowing to override the image type.
> 
>> I agree moving it out of the include file would be the best way to go
>> but if you dont have the directory in the KERNEL_DEVICETREE it will
>> fail to compile, quickly searching other layers are handling it
>> similar to how I have, probably just in a more robust way.
>>
> 
> This means we really need to fix this in openembedded-core! We shouldn't 
> rely on all layers to fix it themselves if we can avoid it.
> 

Could you please provide the error log, which version of OE-Core/poky 
you're building so we know a bit where to look :) ?

Cheers,
Quentin

