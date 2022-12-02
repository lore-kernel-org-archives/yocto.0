Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91730C4332F
	for <webhook@archiver.kernel.org>; Fri,  2 Dec 2022 08:45:40 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.51])
 by mx.groups.io with SMTP id smtpd.web11.70552.1669970738911369733
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Dec 2022 00:45:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=c538+lYJ;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.103.51, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hmPmOgxXitq0yFna4+9DclOBQXzjGV0vKzmME3ugY/JhbjXI64vHuM392V75NVvnl+RCqgPF9ZqcujjUq9WBySdBExawx+T5bh3Lx/JhVNDXAdDVr67+tEuF+GgcvicZ1qerV2GbA4e+Yl6zZt9toggy1p47o49wAYqQrdOgQkMgDSx8XleU7yfNTUwAS1/mBsaXHm504bc/8heVGIrdMiFdiQT/YRHTuxpcYgvmyGcu3OUzT5jF1N3kbOtMAR9HtJXS4mRh916KhvN6dYpFPon7VBIMCtSMIgle3kUV+zyIuv3Yi28MueuPv9PJurj5Ug9bQP6AO81DJ82Uw2UzLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yBwsVe/kJxq7vdTr1RZr8YxdDbzpjXVRf6oO2LM8YcQ=;
 b=M9a69Q0uLJDEMCzFKLn2wPrctg18nPrIBL3we0D71zAHxDEO5hQRMpq2rq0BXkzjB0Ulyk8aZr7P0CcABe//eWFyFJv5T8kjF7zXgR+2VIGOiK9JWG8XDz0b/h9TqS9cXc+QWD++w1u4MP9tPyj3CmkGw3zZlNvC2T/Wh6bCqSBySEdQqt5q/itQBg7Zt5bz6C3b8LCA7G4QZ/ZgwZJSEJv4eZ6kWesro63eP4TZbz6RkbEC+Jy3ogI4yQ6/YCN4FUNBj7XaH0SJk4mpbNM9ddcaeJV7J9QnF+e8eGeDwfv3KAJLQkJWOzJ8AmnUOWKA6JuEJSdZNSCTIzvVecEVoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yBwsVe/kJxq7vdTr1RZr8YxdDbzpjXVRf6oO2LM8YcQ=;
 b=c538+lYJEsbdqzZkWgoyr+5L3wm2Lc9o8KLFssy1N1L0vMYTqK+lLyg6JCnSEjUiszYz7DmYbRiRqgqreZjhTbOs4S20BFaDGRyb+7rK8PQ84LdYmWqh0iCENdLB4xQH5CW1t8LVJDHA3w2ujPaQamZcEPEs8YUdSGegE0NZmeK96r+9lqxlwLveblpcWH0i0YxvTiH9Tnao9Ww9MwT027LpfWSLCoWrnlqP7TzitUGpBtihASn5d8yOnz7ibClNRCRLaeiZloczlvIJQnzVELlE4R0La/z2V1KJC/zlyC96aK9mqh2hdEqfiK8lpYXtwcevnW6tZMxi9VmR8mKWoQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS8PR04MB9510.eurprd04.prod.outlook.com (2603:10a6:20b:44a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.16; Fri, 2 Dec
 2022 08:45:34 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6%6]) with mapi id 15.20.5880.008; Fri, 2 Dec 2022
 08:45:33 +0000
Message-ID: <425fa655-971b-8589-7543-e3883b9050c4@theobroma-systems.com>
Date: Fri, 2 Dec 2022 09:45:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: Private: Re: [yocto] Get target machine
Content-Language: en-US
To: Iggy <j.ignatius@yahoo.co.uk>
References: <65abb041-2bcc-dbb1-62cb-8fb24a91e663@theobroma-systems.com>
 <6562.1669946313565125249@lists.yoctoproject.org>
Cc: yocto <yocto@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <6562.1669946313565125249@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0147.eurprd08.prod.outlook.com
 (2603:10a6:800:d5::25) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS8PR04MB9510:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fb15f16-2b78-4992-b3cf-08dad4419208
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	nuadNMUCO3hMCyzjJn9NGJ8U29G3xYidPrU1BZ4ez3V1j5tjZm7yVV2+rxo6Q9DA+bXynedfvW+VLL1CmGlgPdh3O2PEEc5Rf/hxx6HjQipyIRJT3EPQvSMfhVeBJ+8RWLwtHE+oMPQSVToa8S2BGlwk6ctbNNhv0ICGeVkOHM+Yw6abbNs3vuWvJHPG5AKuFtoTF/1BT3vvJk22+p2F0+7pz6GmpWT2RgcIDdwQUkGQwhsWM0WQVA7ht6YTW0ignoZqBLwBk7023wkIqB4x/Ts8X7T6BN8a4E3Czg9mv0I7rCHfcxE2KoMpGIk8uNYcYppbMn4eKMMusYgWu7uW7P64TnFEMe12VRuWcyrGg6XlpfBDzYl1FjZVdUQ0oiNXcog7yPEg8yB+nmMM0e8biL6m/C9tdTv9/M7V5vZqgQ8ydQdOQFrly+XqoevVQrit52zIubaV6dPp5U8TTTza0EPdE3iYFWiVXO+jQNduMCT1gdiAbiRpEEsnmSedcOKilYKpl4QnM027cpPOKQj6gKKoli0STvSWdhpiaweRPdhPdKvbEkfFA/yJM1XJMGqokvKUc0vaxXcitfW8RTHSlQDS+Y/Xx3EHy/CtGnIcX9ufMDGbuyd0pF/5x3ZeP8h2bvst440CbrVily0QIhq45TH87Ui7smxTOkHEpjhmZ48r6/v0s8VQa3pbrThBds9jQv+uomouTWROLg6dXBveN6SbqcF7s0kw7FycRCphFGc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(396003)(39850400004)(376002)(136003)(366004)(451199015)(8936002)(6486002)(66556008)(53546011)(8676002)(66476007)(4744005)(44832011)(6512007)(4326008)(6666004)(86362001)(66946007)(6916009)(316002)(41300700001)(478600001)(2616005)(186003)(5660300002)(6506007)(38100700002)(31696002)(31686004)(2906002)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V3ZZcUQ5MElIVjNkSFhWMWsxVjJrelR2YXloaHhoWllKMFpzakdiZWtobVl1?=
 =?utf-8?B?UEpBeGtIcldSc0JkSEg3TllvNytxOTFHbXRQZ2VLRlVlckJBSGZtZFFoTkRC?=
 =?utf-8?B?NVVvNnREMDE0WmlzWGlBY1ZRYzMweWc5bXA2R0ZPWEdpRU1YSGZITHE2dTJu?=
 =?utf-8?B?dGxnZERpcjFEZDFUeEplaUUvcFhNN2thQ0trVkNZQzIvbTZVVVJEVDFnNm1a?=
 =?utf-8?B?RmNnTGk5ekJ0YXVrdnZGUTA2LzZGaVk2dC9UQitGcFJCd3pBWnIvZWZpN3U3?=
 =?utf-8?B?cytPdEpYeWUxYXZSMVZ2c2hBT21HK2YxcDNkbWlwMW9YZFJVUkNrUVN1ZEpZ?=
 =?utf-8?B?aDMzZmV4Zms0VHBZV1hvU21mZ0lMa3VQU1JGSml6eWFLYStEY3NWNVgyWnRs?=
 =?utf-8?B?cGJZRXNuMklEMFhyLzBkQmJTemFYbWpDbVpkRjJaeVU3Rjh0Y2FIaHlBK2ps?=
 =?utf-8?B?WlZMQ1BCNDZFUEpXQWgrbURBTFdyT0pZcmRLbnQrUEJpd0F2TDVjcmFlWmZF?=
 =?utf-8?B?eEpaMW5ZL3NOQThZN2Mvc2ord0Y1R0hOTWQ1aXQwZHduZWhZUHpaUE1XdytB?=
 =?utf-8?B?VmxwVVhlbk1RTG1EM0NkWGNuRkYyUHRYQWwwRjdQZjM0SHFiZ3dCQnd6R2J6?=
 =?utf-8?B?U05VVFZIZDk0RW1PeTlWSUJGamsvZ1NTU1RmbmZPSUZMci9QZm5pakw5bHBi?=
 =?utf-8?B?emlKcTNwOUg3amk3cmZLKzN3Q1Qxb3UrNkFvNkIrdW1laDg3enVxTEJYOVZM?=
 =?utf-8?B?NWhtS3VVV1UrN0YwbU1tQnIvTkNLUU04WWI4MlN2emkyOGhJTHhGcUdGSGlE?=
 =?utf-8?B?eVMzK0FMTkFZbEhNcTBNVXhxbG1zMk13cWlnaUpMU01XNUp2SjJtM0QrWTgy?=
 =?utf-8?B?bGVRZHJLRFNLY3dBZk9KVGZ4dUhSYzFUNDE0M0hKQzJLTWg1OUZ5UDl5MXRX?=
 =?utf-8?B?c3pmVWJpdmhFODVJTHYzTExwQ0hkQXJ5VTJtMm9QYjRFKzNkcWhrZTRIRzNu?=
 =?utf-8?B?b2tqeC8zOFhJRm8rajdvdnMveG5oaUs3SEVVd25EMW9UczhpVnhpNDdEQ3oy?=
 =?utf-8?B?WG50OWxDRVA4d01pVkNMWkVOOWFkcUpxRkhueFRXOEZEMWFyNHZuU1gvZzRJ?=
 =?utf-8?B?MFBsWGFZNitYb1pETWpUenFyeUt6YUxjV212UjFRdkhWNlFzVFNYNGovYWJz?=
 =?utf-8?B?L3BWTStkTzlPcFowcHhlVDBlZnBuNmtZeFJYaEMwRU15blVxRDJzVWRydmdR?=
 =?utf-8?B?Zm1oY051Y29SSitQM1ZEN2JxR0p3anM3d1RHMU40S05NcXY3QWc4aVhpM2hV?=
 =?utf-8?B?RFBiWGNZNnBYcEwyZVhlT0gyZFdPWW41TmRad05rT1BzTE4xWWhXbkJ4bUdl?=
 =?utf-8?B?SWd0d3Nqb1hpK3p2LzNZelZib0lmNUdKd1ppU0JMQTdzUnNQMjRIeTlhOUcy?=
 =?utf-8?B?VTNoUWNtbVBZV0poRkJkYnp0aFMzSWEzK1UwVXg1OWs5MHorRzBXVmNxc3Zx?=
 =?utf-8?B?UUNEWDVRYmFnazBWYmdrL3pjeWo1TlZsRVR0d2p5UHE1bjJBTmNrTTJqSnNE?=
 =?utf-8?B?U0h0WWxrOThmN0tScG9RWnl5MnFGejVUcWg5U21vZ2kyWVlMY3NGT2JrYUcy?=
 =?utf-8?B?cGRNa01rRzhkNUVLd09zd21WN2E3emJCbjh0cGpNN0wvdVVNODJ0RmVSQ3hD?=
 =?utf-8?B?U0p6TnN2MG96UTYvNjVVL08yYWpLN25PUkVMQS9aa3lmYUVteXBYcDAvZWNE?=
 =?utf-8?B?Qm91TCs3TExaZ0FjWlBIT0U5N0RBSC9UcGJSbEZDb1ZLeS9jR1MwdUc3S25m?=
 =?utf-8?B?cm9Ub1VWbE9wUmhsNGVtZmlLQkc3cW9WMEFtanpZdWhjcVBaWG5kWm84ajJ6?=
 =?utf-8?B?K3ptbS80SjNOK09QaGNjbVQ4MXFPVDVKSmFIZ3RmcDNyMnZuTnBhSkdmdHpH?=
 =?utf-8?B?T2xDMEk5RjFyMVEvQmpyQnR0ajRBVlRXeHppbzlsbE56N1diQzBRbi9NaWto?=
 =?utf-8?B?dVFSTEk4dWhMUGJodHJMU08rN0YxOEZoYTdvYkFwY1dZWUwrNUdjYlBCdlor?=
 =?utf-8?B?djVVSHRFUG9TQ0pIWlBqclNTKzE0N3plWkVGeDNqZVhmY3ZjOTZkRnhBZm5B?=
 =?utf-8?B?RjJBeDl4WUg0UjFWK2tTemFwUllmdXFLSzdDM3kyN1d6U3ZsbXJQTXVDVnZF?=
 =?utf-8?B?M0hhWTRxOVB5bUZaNG05WTJEakZpM2pIWEJTdXd2cEdlcHJRRzZKdjlTZWVm?=
 =?utf-8?B?QXFBVHFGV3ozZ0syRGJCOERubldnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fb15f16-2b78-4992-b3cf-08dad4419208
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2022 08:45:33.7643
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: st5iQZLyAhD9E63m4mDS46OxmAC5o7fSMQbHvuYIfWnZSJ3BK7q/lSc/3mXx+qgJkRhYFf8M2aRBImpRDs47lsXuv9JWXSFY/Fh91ZiR/qjI1nDOfESfd51RyjpAS9zQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9510
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Dec 2022 08:45:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58716

Hi Iggy,

Please keep the mailing list in copy.

On 12/2/22 02:58, j.ignatius via lists.yoctoproject.org wrote:
> Thanks Quentin for your reply.
> 
> I found a number of product-config.in files under different target folders like xione-uk, xione-us, etc. These must be the machine configuration files.
> 
> How does yocto choose the right one? Are there some conditional expressions that do this? Could you give me an example?
> 

You tell Yocto to build for a specific MACHINE (this is the name of the 
variable) either from the command line when calling bitbake or in your 
local.conf file in build/conf.

MACHINE is the filename without the extension where the configuration is 
located. e.g. xione-uk MACHINE definition will be in some layer in 
conf/machine/xione-uk.conf.

Cheers,
Quentin

