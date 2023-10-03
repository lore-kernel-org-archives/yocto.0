Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C769CE75442
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 10:17:27 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.40])
 by mx.groups.io with SMTP id smtpd.web10.105077.1696328239940833465
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 03:17:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=H6aG1I4X;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.40, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AC25nECvRzs/Kg/FPvb+kNFgWGxfx3WDSEWhmz4zpzBOHyaVAG2cWw7jgEE6P889Hx0RjahYbX8djujvnlXZ11OYNGxL4Np0YAakKLlkOUXgCwr1CU1O5m5/dHG5nggcXCxAokekeDBRB+UcG5T6gzSKIAYu5TH8ZQHAzPDwt5pK5RtsN1amlp/fohbLjt4OyzLAoVUoG7rZQHJUSwQdZU8DP8jBqQNF0AbjTARBL/oyHWKq4MLHsTWUkawNSLm8t4v9zxbkimKOIxw1ylnGw/RINNWtZ+Y9yIwasBIvviKG4PSE9K4zfWtqbhUleEFv7Yr44Y0zTMbajjj7u0GqRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VJDmFPzKAELbxY/b+0XhWJGnA0nNUroBKL+3u6c2qcs=;
 b=Mu/NFagfDDqKxl75uOb4YqHZJpbmPX7MT+b6SeEV+AyzWldbJAFlwTBsZU4l28ytnDMAb6qoqVOKzYbtgFxwOxGygaO2gPy2QhV6jp+lEsdvSFLBFL4FqFLge/ZlNaKUwsRJGdeM4VbB7PGzWZc9TVmxXmWsO0MsUse9BbRd3VFCYLA5FEavHDuN30e+eEG6M6gtzPOBbhr/dMQvIPE2KqWVNnMC6TqpYP78sHEfbmcFX0F+uMQuJm7VGa2Y3bGzfd7jOTWOw22OIE5mCjpw88Wik0ymMkcezhQ975J813VTt/UNjU8Zx3euKo9xcJOH9izIvInszjZPYB3NalE6fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VJDmFPzKAELbxY/b+0XhWJGnA0nNUroBKL+3u6c2qcs=;
 b=H6aG1I4XqZ8UeNXbbEDksewPLN/TvrbaK8HmF+blKFz+wYYAY5SxlE1Jla+MlfitKPKxqX1gq1S7x6S1uaVTvuLvYYrc0AMMzp/A04HZEUMemLxVQd5bdeUu338ApNy0sFWPumgctndCECbiVv2/YBbQ3bufJOihR2L+OWhYJhA1IxDl7GRl++JFNkbUNTYzpdwKsxWXIxlqjciiLtsZiq+0PMUTeJGcN9qGYHlQqVgGPPBjoRavDYhVDyUwnhrWa/khCabPJlhJjxfKTVF5NK6cJUCqsrgAm12C+zRK7+PkKNVLDSH+aK+jwdSU7JsyKFgpC/WO1kXmGrNpdT9r5Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB9105.eurprd04.prod.outlook.com (2603:10a6:102:225::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.26; Tue, 3 Oct
 2023 10:17:15 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6838.030; Tue, 3 Oct 2023
 10:17:15 +0000
Message-ID: <847e16c0-a63a-fc56-9a1a-214e53b68b0b@theobroma-systems.com>
Date: Tue, 3 Oct 2023 12:17:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override
 v3
Content-Language: en-US
To: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com
References: <20231003004307.93133-1-anthony.t.davies@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231003004307.93133-1-anthony.t.davies@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0062.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::11) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB9105:EE_
X-MS-Office365-Filtering-Correlation-Id: 7735a902-4342-4017-aba6-08dbc3f9eaaa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JSLdXPRuUTe00DDEsRdLo4MRFYu53xe4HFrV/z0u/3OAHGF7SqBcJSNk36pGjOYCJqX69abQNx3F0EHDzPYcEeKtetLoLHT7tCN+JiGbDxJU6EDCBTmlcL0MXgIEWZmO5HGyuPhFCVf4TvyOg0PugRReAe/mvSPpMSccOW06RRa4Ry6DTk8UNKkpxVxcfdBrLm5l+tpDLcBSNHbgh1Z/+Ij2XpQ/QY0HraJIUdJdN2902MQM7sPna/xeA7XxtzB9oeDYnbLNhmIL/TBGt10uusmS3WSHhfGdJOHnXZwBJOxPFkFQ444TjlpuFxjUw19onu/9O56JMLVKx6ZLRtDIMT9Cz1boAX7hpTPDxC5Gcwco1ZQIvKiXRvQCYNL3Bu5AdecUOG4kzhd/fKkOLYh99aNQ7I9Q8pYwonxoS1mFgYgY0qMe4R4lVbX4I4v2CcYqiFZ2ITHgaJvXL4fDBmrHAlHQashYbC9xULsWlOvah70vFRLAFwRNcx7OzaQdYnVwfmtkZRJNgnDpA6WjKSE+gGjkk0LVA0qeTDpcqgCAOrFQjUwzftOYVht42apgb9u+VCcs6ArG4/sRTBjmq4QSkazoXsKrZNWLxH6NcRXInHIDJcYXHFLNLRMg/eOseYfYqp3Y66s7920IkfU6quXXWA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(396003)(366004)(136003)(346002)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(53546011)(8936002)(6506007)(83380400001)(44832011)(6486002)(5660300002)(8676002)(966005)(2906002)(6512007)(316002)(66476007)(66556008)(41300700001)(38100700002)(478600001)(2616005)(31696002)(66946007)(4326008)(86362001)(36756003)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?djdSZWtkbUc3WFE3ZG9CSzNTajdRMHB6THBPdVNOWlQyNUN6Ni9RWDJBUUd3?=
 =?utf-8?B?T1VJalcvdmRhRDVKbm0zU0FvaGgxcjcrMGNjbFJqSTFpVHJyNXRYdWpxV1J1?=
 =?utf-8?B?bE8vMUZCR281Nlp5MEprb2NBR1drME1LWnpWYTdjR043UFAvSEZ0K2drZWha?=
 =?utf-8?B?V1A2NlQ2TzgyWTVDbFFrVi9NLyt4SUxMaC9UbloyOEoxNkozOXVUWWovUXRL?=
 =?utf-8?B?QjY1YW9keGFjRCtXTHhnRnZpODIxWDR0b2lLNTJnMUxuU1gwMDBJa1dNTEJD?=
 =?utf-8?B?SDBlN0RmRkZPYmlBVzN0UGJ6Q1huNjJsVVg5aGJzOW5VOG4wSDVBSkZmSVg5?=
 =?utf-8?B?Y2V3RVIrQ3R4UVpQdGV0NnZjUEY0RnQxRmppRmE3aWFFUlo3TjN4a3RLbmg1?=
 =?utf-8?B?NjdvOHlzVWZkcmV0NTFwNkdxeCtZWlAxWmw1UlVBUng5OFh3UWxCcjl0bTNQ?=
 =?utf-8?B?WjBvU2pXQVAwRVZEbkp2cFllcWxWY1NWOUZWdGMydmlYR2hBOXpNSWRlRFUy?=
 =?utf-8?B?TmZpS3F2aWhGVDRIa2xjMzZrU1ZzZVkwZ3BHT05NeHJmY3RYdDY0U1Y3dXRT?=
 =?utf-8?B?ZWdQK0twYjRLdElFWkcxU1c3TGRya0l0UExKem12cy9Vd1NSMllYdEU0MTV3?=
 =?utf-8?B?bHpLdWxBaGx1RmNwOUVDVWFURWdPSDNNakY1MStETzBUcXFEdVZDdmNhZ0FB?=
 =?utf-8?B?Wk1LMlJScTZiRjYyWXlveUlscFA0WlBWd0tHSWF0N0YyR2dNS2NEWTNQNjhY?=
 =?utf-8?B?SFNVaFBmVFJWL2Z4WnJieEp5Sjg5bm8xRTUyTjF6bUorUHBia1RQZ3pLZzI4?=
 =?utf-8?B?NGY4M2hKZzM5cm9hcURDeENMR2ZmWmlJbVhXbUxnQlZPS015WXV1OUc2aUI5?=
 =?utf-8?B?NXFKdEFlejlLL1QzeklkUlY4cGhCclF6cE5abk4zejVVU1U1eWRvYjJ1bXRS?=
 =?utf-8?B?ZTNVZ3VldmgyVjNFMHE3VEUwZ25mc2ZnVVZNU2dCQVBIZzFHR3JsOU8vMVU5?=
 =?utf-8?B?OWtqRFBPYjJRT0JubUFla3lQZnFXRGkyTmdBL1R6a04rWlNFOFA2cWlVMGg1?=
 =?utf-8?B?NkZXZUQzZ2pUSFl5WGVOOGlKcFkwZ0FSaG1GcCtMNXhXbXRBUEFLc3FlRUZL?=
 =?utf-8?B?T2NiNjhHb0xjVEQvb1NkMFRGUlg3Q0JVQ2dGbm50TVZaY0ZzTHloRGFPd0lD?=
 =?utf-8?B?SmJPRjF6Z3UyZ1YyaHZ6Q0lpNVRFYWI0WUV2dmV1U3o0NS9UTFNoRHhlZ3pY?=
 =?utf-8?B?eVN3VXdyNjZPSXFUQitiaTUyS1ptQ1NzcndzVEFYV0RqendGcE5QbW03aUUr?=
 =?utf-8?B?RVhLSXNBekhYUFc2M3FDOFUwWEFIc2V3VTdGSVJDVHdMR3BKRzV4TEZuOFgy?=
 =?utf-8?B?dVhxVk0zTG1vbUZTUWNMbG9pSk5mOTlDWlZqYVJheDFiZjdHcHVhdm0rcnBw?=
 =?utf-8?B?VTJ3VlkwS1NUMlVLY1N4Qkg3RmZITklldXh3U0NWeUJxT2hGNjBVQVBoUU5w?=
 =?utf-8?B?a21RT1FzSCtPNUtQWEd5UVcycll4RWZ0N0Y1alZWSUxlbjRORW91QzBBN2lB?=
 =?utf-8?B?SW9lYlYyQUY2aGMwUjZ6N0kxUDNzdlJQb3prMStMcVlNbW5NeVJHU0ZmRkVw?=
 =?utf-8?B?V2ZpbnBiZjR2ZDZoZHRwSVlPVFV0aVpScHgrSzRUczlkZnNBS1Zkc2FPVXBC?=
 =?utf-8?B?eUE1N2M5SG5McUFBL3NyR1ZIbUZNcDk1bTg4bzZNTFh2ajkwRTRvOHNDalNM?=
 =?utf-8?B?WXBzRnRVQ1JOLzJqTDJ2eWVCNEI0OFI1ekNRdHFnTzBnUVB4Vk1Rb0p3ajVK?=
 =?utf-8?B?R0V1bGxoeXFTL3EwTjNFTDJhWFEyOE9ZaTJyRk1uSk5qVlpLdHpneSsweXFj?=
 =?utf-8?B?d2YzWXpoWlk1TjZJZHcvL1F6RWR6SWs5dDZHNWpPVldZT0xoYm53QzhtWWhm?=
 =?utf-8?B?T25KNHM2QTUwN2NhTmZ6cmFCNndscENlQXZBSUg5b3YvL0JuVGxHYmxmVndv?=
 =?utf-8?B?NUtRcktQdnVZT1E5ZXE3T0Y0UmI4RFZ6M0tmVFR4SlR6TmJmY25Bak5lYlNM?=
 =?utf-8?B?V2JTZUErME81WHM2T2xkMkt4ZVlFWmRZaWEwUjhPcGFYN0JmaFNDS2djUThr?=
 =?utf-8?B?YUlINmdHWUlmb0FVVGlPYmZXNTQ4cWNqWkF5dU12TkNWeTRqWEwzVGgyK1M5?=
 =?utf-8?B?eHZONFp3MDFab2FoOEN4Q3JxWG9XSGlGT0o1R2VDazdNRFRsTzdtNWJyUDB6?=
 =?utf-8?B?bGZOd1VLa2JjSHR1SnpoL2lIRzVBPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7735a902-4342-4017-aba6-08dbc3f9eaaa
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 10:17:15.5583
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BNhWNxNq+tXRs/H4WmWH4HjT2GcGlSvrpDNXtnQzIC5ZZict+KrCypwpkiArdClMxltIz6Bz0QjGNi9FV2nZj60piKz64lx24wncpKn5I1jocwCjMlbQ3tY2CMIYmGwh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9105
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 10:17:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61212

Hi Anthony,

On 10/3/23 02:43, Anthony Davies via lists.yoctoproject.org wrote:
> [You don't often get email from anthony.t.davies=gmail.com@lists.yoctoproject.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> 
> From: Anthony Davies <anthony.t.davies@gmail.com>
> 
> Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf
> 
> Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Unrelated to this patch set, KERNEL_IMAGETYPE actually defaults to 
zImage so we could just avoid doing it again in rk3066, rk3188, rk3328.

Also, for newer versions of patch series, please use:
git format-patch -v3
or
git send-email -v3

and it should create a mail with:
[PATCH v3] in there
because with the current subject being
Allow KERNEL_IMAGETYPE override v3
this would be the commit title inside the git repo and this is the kind 
of information we don't necessarily need in the git repo :) (but thanks 
for thinknig about adding it, it makes it easier to follow which patch 
mail is the latest version :) ).

Cheers,
Quentin

