Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AC3DC64ED6
	for <webhook@archiver.kernel.org>; Tue, 28 Feb 2023 11:06:18 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.85])
 by mx.groups.io with SMTP id smtpd.web11.20729.1677582368927526688
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Feb 2023 03:06:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=EPMCgA8m;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.6.85, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZlXWXERNeEWlkw0UWutRZf4MoyR/kWl18nY/KI4V930ubPatZc7nYRPs7jHFq3uEPfLhhAcaRuoJFfmb0kIW7EcwfuPFCATfO6EUJ7TBL4IUqZPlKSnYpd+BkHlVZUWCa5/MZZZDT5q5/PjpqyBzxD5FhiIrKiFIctdDKwccmH89r0XPgQfDnOkh+UO/5Sd++QEHFTu9U/MmwaMG0gHxeoAQUELw6BuKSU3Y1I0fGKNw8m2mIobG25AB4vDHzoFPqpj9zAPhTLFq7yGqSH8Tew4a28Q8+l1wKbfFD6ryWwfpBvwptR1D8pWri4jmEikMCjvKW6ya6F3d6SJ4O1I68Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eUZdVutcg5o7YWCQRPgbbtK0yUhaACCPTcV2pm2nuiE=;
 b=jndS2yJ3MfJTSw7mm+EYeqKvUXy/telVFxQ0n3A00bKT1vq5ELPae239BinqDMcgTiNKjHAorIpbFgvr/k+32pq0NcMrn6CywrViljKm8z51ZzMQLVG+rKvhfZQKacyz5ix3dAK9xae3EnYbhRQgmlNmY6x9yMsRpirY02LFUEn/+dei4KiqDT3JtznxdvG+JZxDRmZ7Euw3pUIEoYl9z2+XCurV89K5XFALg88232iSmsBf1RPYQbqmOkqo8umq1mp8p3T2HOb0uxHRMQJCWyMLFUYUGAH8lE2RoxWsw4vVGCo4AibG2k7OmC4UKgd/xzkdxB33k7EPmXFNZg03DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eUZdVutcg5o7YWCQRPgbbtK0yUhaACCPTcV2pm2nuiE=;
 b=EPMCgA8msLVHsDWFmymc+OrRaKfcP7wEqzQf6ea0Ffj869kBIBK4YpNc+ymQMiPYVbuHHXgHwIo7LrEb8sUIwrDPpAXXpzpkdeXM1WQqg7Zz8U3pb0KQd51BbJqJvHkiE8tGBRsm37plKkG/kZYhvqacJWmqY5JdnmIM3JfJ7qicUCzn4c2H0LYEraHmfiwM1MV3I3ksqrTCY5UpGgRLLxuvj3IpXxrqarYy8Sjo20Pq+2ipaPqd3bv1DL0whH5Sna5b/yFbZI4OKwgttOxiCNY2p8InXvUM52z/QBBvCJFUI8C/zioaNpdrla1ccgMgKBLw5fLs0JihDkMWUJBWuQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS8PR04MB8785.eurprd04.prod.outlook.com (2603:10a6:20b:42c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 11:06:03 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd%6]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 11:06:03 +0000
Message-ID: <7625d651-2b3d-2d68-2f6e-3f387a00d768@theobroma-systems.com>
Date: Tue, 28 Feb 2023 12:06:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [yocto] [meta-rockchip][PATCH] nanopi-r4s: add
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>, yocto@lists.yoctoproject.org
References: <20230222200954.14031-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20230222200954.14031-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0052.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::20) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS8PR04MB8785:EE_
X-MS-Office365-Filtering-Correlation-Id: 08be993d-8b37-4b3f-87c7-08db197bc83e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	mBiTdgigym9dr26VUYMtsFbgF98UW42f+mzIFrqe9AAjjrCkOVF8PCQVNvRAT3x4Op8JPLpcPvMpFFqHpYfwSoSs/1TRXoFu+CZ9kWYZr1m3gfqfFmxdkPcKjWKWdgtwz/1ya23SF1xHA2s3rkUX+N+WxiimMDdHCv7aRXrJZ7HSXMT7pw5Td5Pt15dtwn6pTLKoLS93+DKQXs/1Ti48dr3E1mbzbXmnSEOj9+D50QdYbdAA5QxTcQ/dYhQ76ebCta/3/fWrtDnXPbwGhVV6N9ij1wf/g9xhQMLNpuYmL2sgqTIpP9OgRZerfX11bx/nZv3OPd9LQvGnim1aIsIn/m9C6CHvlC3qyGAVQ042bMD5WCnZHccyjtSFDoO/Tx3TylP+ugJq+/rPL18h9187cvu2JmJk2UMWdY4s+/MT3FU/XJN/yD0Un3RihqrcPJg05phc1gGMYJTLIFrKyRQZbZebJ1p0MCB8eMxcod+i20OEde7yAhsly/2qiACN/17CVCIjTbYMe/cjkYbIgpqCDagERjHEtN/BlLumfu08zoBMnFWsvEvYL9MZe0HY56cz0fwh/HYlyg7ZLSkioqv7/g8YFeCZr3wKCwg8+mTzTXXWMGUMDTPj8+M3dog62IgLbF2pkWg81XdCsjX/VMVwFesfrOPPYTXcqUFg1u30l7V/u2e7bLsMiyHPUdHRgOturZPDGavo8FY9EbVu2j+7a48sdma+aselazGlC5B+6lI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(376002)(396003)(366004)(136003)(39850400004)(451199018)(31686004)(36756003)(86362001)(31696002)(66946007)(66556008)(66476007)(8676002)(5660300002)(41300700001)(8936002)(2906002)(44832011)(38100700002)(16799955002)(6486002)(966005)(478600001)(316002)(66574015)(186003)(2616005)(6512007)(26005)(6506007)(53546011)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ckl4a0tYVkxEZDFvS25NVDBPWHRNODREdHVSbmtBLzM3WXNuVkJVUEVNUkk4?=
 =?utf-8?B?b0ZjcmUyK3lISTVIOVVSTTJxZ3duak5QZTlwWUxtODN1QWJuRVhCUTFtZTFt?=
 =?utf-8?B?NW5aeU1YeDU5aG92Zm9TUDIvQ1Z5S0w0VGtlNlFjQzF0S2pVRjJtYlM5aXJz?=
 =?utf-8?B?cTh2eFRDL3I3aDFPK211ZGZDcUQ2NThJNmc4NHdxanlqR2RWckRpVW01WFN5?=
 =?utf-8?B?ZDV4SVIzbnlZSmV0cU9UaW5yUjBDTHl1cThkN3FmbXg3N1NCT1gvMFJqRk80?=
 =?utf-8?B?REVjQ0NQdFdQeEw2RDd4anFFWFRTZEdRSmZJUnF0d0hESnl4bXdoV3ZMMGVz?=
 =?utf-8?B?RmZkWGlnelQxRmtLWjl1RHRRdm55amdZRmpSenJMcnFEOEVGRmM5MExPS3hB?=
 =?utf-8?B?eEVBd0xwbVFJQXJGNTRpTjlJbVZteThKUlNZT2lsTzhCWitZajRqdXoxVjQv?=
 =?utf-8?B?NEVvMDgrUXc0eVZQclU1VVdjSkk0VEsyRHdZaXFpZ2dCNU1xTlplN0JSb1Zx?=
 =?utf-8?B?M2dNZXZlSFBwbFJvV1ArWkI3YXFXZjQxQ2Zuc0lvajRBbE1QK2E1MjlsNC91?=
 =?utf-8?B?RlBINTFJanprdFVib3BuTVpHaVYycDlkVkxiU0czVFg0RHNKWnZnbGUvL0tX?=
 =?utf-8?B?RzlmK0hBVWZBbFllVEhrM1J1Qk9qR0JUdHd0MXBVMTRnUHVwQ3E1SUpYdmVK?=
 =?utf-8?B?R1lCUTFpMUpEaTlNNXlnTDk1TXBuYk0zMjBKL3FXZUxVcjNNN3FxL080d3Vi?=
 =?utf-8?B?L09SQU9kUVZZbXlCN1RERk4xN3NhV3dUL2RnZGdrdmhnU2Q5dXRSUjR6TXZK?=
 =?utf-8?B?RDB2aGNmMDZVSXl6VFR0eXdOQmxGamdWSlZRam51bE0zM0hmdHhhVUFsL1FG?=
 =?utf-8?B?dm50b1VzNnVjQkhwOXlXbTVNL2Z5YjFEa0hiL2ZmMC9Fc1JVd3BBYWlqdnQx?=
 =?utf-8?B?RUhYaDR0TUVTYS9RNU5qQjErQ0x4aUZrZndIMytKd2FDWHpnTWVjQ2xxMnF2?=
 =?utf-8?B?a3RlYlY5L2hPS2gwWXVabEg4b3JLMUZaQ2lzQitFd2Q0R3dzajhhb21LK3Zv?=
 =?utf-8?B?RUFlbjhpZ3Q1T2J1dGNFcXR6RVl6bFhIUnNPWHAxeXNTaEpCakI5ZVJDY1Ny?=
 =?utf-8?B?dktNODV3Mk9hRlI4a0JadWVOQ1NnODdzeXZVV2R2YU9iMXU1UkY4cmdYNHVm?=
 =?utf-8?B?N2h2UldOYzIySVZQdXdLaW96VDkvMlczTEdqd0JsMTJPendzblZrYmF1NU1I?=
 =?utf-8?B?MDVlN2RIWmVwNHlONWNNMGhCbEF6Z3hiZXpKcjBGMUk1VmxBcndrVGFiNncz?=
 =?utf-8?B?TjBnVExZem9WTWZSbnYzZktsM1JJcXlKRlIvWGhzaFdDYW1EUHprdTY3b0Z5?=
 =?utf-8?B?U3RWaFZxcnhsOFNubTdrZENvTVpKbStyZ0RDcmxnQmpNaWtWZmdSWnU1T3la?=
 =?utf-8?B?NXlPTnVtaUhTQmN2YlRNZHhQUDJIL3J3WkZWSXVPeGMzeFFLUUlUMk55Ykll?=
 =?utf-8?B?anVhTXFtd0lFTmI0VmQ1SThjWVF0SUhaOHBrUWl4NEFWeHRPc0hiQkVIbHdL?=
 =?utf-8?B?SGNMMlcvT2RxZ1l0MVpic0tkVVlqY2FOdUdJTmR6RlpKdU1DME5XcGR3VFE4?=
 =?utf-8?B?YXA0MHlrUkcweGpmT3VLdklXblRNZUdpSFJyOGdVWHFpaldTS1l2cng2MHJW?=
 =?utf-8?B?MWEyZlhRWlVGVlFIanI4OVJDR0hLd1dBQm96Yk9GVk1WZFFMTUU2ckFORlhw?=
 =?utf-8?B?dzUrTEs0NHlaWUVQdDRNb1RyTHMvdVl4Ukp3Vnd0MjBsNVUvVnNPMElVQk1s?=
 =?utf-8?B?YXdVdnBPMThwVWdpNTU4a3dycjdTZnhLWWpWQ1Brb3A0elpDTnc5ZXNWeUNG?=
 =?utf-8?B?cC9xWDlnTXJJRFVZWWFjWkk4QzVzUXlsRUNHUnF3a1NhdUVaMTluTWx3T2c2?=
 =?utf-8?B?VnMzR2MraUVGNUJoY0hnOExRQk1xRnJEUmFyZ0JubUw0Ym9HdE1PS1NlajNw?=
 =?utf-8?B?bUI5aXp3TU1UQXl5djJpMk9JZGhYUlcycEovdTNQMER3RFpNSVBmTUcyZGZy?=
 =?utf-8?B?Z01ocVhwbGQwdC9ydUFjdDF4Z1FWM2huNVJFS3pyY3N3VlpqVWJMRi9iT0g4?=
 =?utf-8?B?SlQvUzZ6R25MQVgwRGhNdm5yS2xaUm9lMGxoWFBKZEs0Ry9ua2J5cml3ZWs0?=
 =?utf-8?Q?Omhqwy3W/0WelFLsqLzraq8=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08be993d-8b37-4b3f-87c7-08db197bc83e
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 11:06:03.6783
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wAJlicG7nEX7aZSRNT/pp4Zko5xAEh5cuB+sKWv3SKroc0FZ+Qq9i8PAnFd34T3ROmTfkeQaJZ4qB1RFt/lXRPRSXpCKz8KNRdp43k874J98hXqG+uBBmFCCrQZ/OOiG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8785
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Feb 2023 11:06:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59321

Hi Trevor,

On 2/22/23 21:09, Trevor Woerner wrote:
> Add a MACHINE definition for the FriendlyElec NanoPi R2S
> https://urldefense.com/v3/__https://www.friendlyelec.com/index.php?route=product*product&product_id=284__;Lw!!OOPJP91ZZw!h-oSfHR_L6CGxqg2FDVatV20vOBPECbLP6rgKxl1ZfpRBpCKAywDT8kUfG-XYW_cCgvwd8DxfcDWrqwnYx8cY6nC-ubOB4w$
> 
> My testing shows that there still seems to be some issues with the SDcard
> voltage regulator. The kernel has a number of fix attempts for this issue, but
> I've seen it a couple times. Ejecting and re-inserting the SDcard gets past
> the issue. Some SDcards show the issue, others don't.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   README                                     |  1 +
>   conf/machine/nanopi-r4s.conf               | 12 ++++++++++++
>   recipes-kernel/linux/linux-yocto%.bbappend |  1 +
>   3 files changed, 14 insertions(+)
>   create mode 100644 conf/machine/nanopi-r4s.conf
> 
> diff --git a/README b/README
> index d66ed7e79bd2..286dafbe1020 100644
> --- a/README
> +++ b/README
> @@ -29,6 +29,7 @@ Status of supported boards:
>   		tinker-board-s
>   		vyasa-rk3288
>   		firefly-rk3288
> +		nanopi-r4s
>   	builds:
>   		marsboard-rk3066
>   		radxarock
> diff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf
> new file mode 100644
> index 000000000000..e3323e03b61a
> --- /dev/null
> +++ b/conf/machine/nanopi-r4s.conf
> @@ -0,0 +1,12 @@
> +#@TYPE: Machine
> +#@NAME: NanoPi R4S
> +#@DESCRIPTION: NanoPi R2S is a high-end FriendlyElec mini-router based on the RK3399 SoC
> +

s/R2S/R4S/

Cheers,
Quentin

