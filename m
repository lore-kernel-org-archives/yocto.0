Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA902C433F5
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 12:42:33 +0000 (UTC)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (EUR02-VE1-obe.outbound.protection.outlook.com [40.107.2.61])
 by mx.groups.io with SMTP id smtpd.web09.3576.1652359343949454666
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 05:42:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=An0S/3o8;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.2.61,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fOKaRVaioNlgFgj1V/EGvvT65gck4AssJAU1s2fuKSHHd5bQyHHP8PTzh2JhBf2FzgoCT/xbex9ph99hRoVhsqln16W39iqeWtM3HTETL2HgjRGgAuqWEDyxOIS6EVkeoiVX/yawkOEBV4t4q6J3G1BU0VcC2Ks3XH1sNSMiR2e5U2nsD3Rl3z09RaJ6K9ZSVIyhp5PHkq/i8WgEzDdtLsgEKYrYxJwEjRDp0Cht8Q6E/+fqT6Vqh0NfoEeOJVDPWv0TkG63gMGZXslEoTD4ZeNOMH2fzOoxACFL4AMW4CM7QcAdnFN5Q59IZCIgJZcDhlAme3dj+sbvS6OatX6w6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iHv3AYdbTpezkoOJA4EGkr2xGNbc5K8K/vpPeSrPWao=;
 b=Ta2afR9XElK3GQvgnebDi8bqUYo3Pg4k60FxgsIR3Y8DaY/D1JQhOwV1grLVrFYT9j2vZk9FecCKCp4HLKsPNLBCbir/bQGbEfG7oKjgOGKHhsaoSPbQ/pLtlGbnJHv8XwhqijcD4HHOQrDTPwTvaV7qlxmvW3eW8WF9zFcEO4E/JNAqwywTWJm6NO7pmwasKHZEoLJuPe/UpcqzkxyGzmzn8fm0mJdTqBzLSqb7t8yUmPMxyAfJnnAd2ASpS/khLozW8DTsPIsFl250WjL+hsPEVgIr4oHaUcgg+fv0PFwfu/gfn6kWHZCzrIFtaEKnpBEdT2dNkdkjOfiWOQATBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iHv3AYdbTpezkoOJA4EGkr2xGNbc5K8K/vpPeSrPWao=;
 b=An0S/3o8AVuR68re3w4RhTFgK+NvscfxxzBZihlrmRbR/zgpIabLGY32RmcQJq8cWbVUGcTcW7eCM6DKWUpg7K99edfGsd976hOptfjidxXyPIz5J6Z58CuxGQAVNUk2fUBTmKPyZdhfzx0JqwCO2OL84ydHQAs0vXatywLZs6Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by AM0PR04MB4932.eurprd04.prod.outlook.com (2603:10a6:208:c5::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Thu, 12 May
 2022 12:42:20 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512%7]) with mapi id 15.20.5227.023; Thu, 12 May 2022
 12:42:20 +0000
Message-ID: <344dc237-bf52-5cae-099e-f6481a904cad@theobroma-systems.com>
Date: Thu, 12 May 2022 14:42:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v16] Add a banner on the
 old documentation docs.
Content-Language: en-US
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
 yocto@lists.yoctoproject.org
References: <20220512123326.29424-1-abongwabonalais@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220512123326.29424-1-abongwabonalais@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6P193CA0051.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:8e::28) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7e3e4c4d-20c4-4e49-dd8a-08da3414dad2
X-MS-TrafficTypeDiagnostic: AM0PR04MB4932:EE_
X-Microsoft-Antispam-PRVS: 
	<AM0PR04MB4932D9A089E5884E91AB6A22C2CB9@AM0PR04MB4932.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Ow03NzavlnBGIVGgKwpcW1/Txb/vcqIUoEfk9QpTGYwWeTLqM3WtXzYL/WUipoQqpvYfWT+AltuBNmoMuLTD/SSsNedmsXTjIFndo8RBrClProAqZrBRrvSqw/61S61ullaotZYcJIFcvQ9TzpGbqjr18DV2ys8uZolYhg/0T2NE2CeFEWl6VYvYQGzOlOeow6cF/YuAqHsRfkqbxKaKk3nWP4crzFUhvZKnG+KEXJa3+o1aBx7VFBgQ/B+LJRYwDbfrA9K8lYLvJ/ZP0fyZP4sVUtr9EWoyotwLUTW8IbWLUYTOYjY7FbCffSEy+MzyrOHbL1Szm+609DUiHm7v6QzKRpcR51K65wOVDLfn51Lw3FvZ9S17SqBPOp0rPYmOfReKW8dEgQhyOmCJxCJ6LS9aQ1yh0mCl4ugwmhruQ8ZNaD+fLiX/MAqcGIP6BNk+eIPKF3aRQTKLvUypq9qB5LJRiB3xSLD9MRXSd3Cbv+4R27JucT/U9RuaNnPce2JhJw2hx6QulNPXRs3v3JOQhWE1TI8Cw6I99m+xbuDKfwD947/aIaiWhl1nKhLeFh7vnvXQhtu61HWYq67E0UOlQzeTPn6UfxDGhfhtxMkigIHeZkIP6oQV2bSZKk7jNGyQbgZXFjhGuxLc+E13MQ3Fs0nOC9QnYsfuLkgU7o6rcsCvGQSptEWAnz1QzuL+W5xUbXrBUGyYEKvBi3KvNur6VghoRUbtQf4eZPJXduCvKKpri1bVicDTaFUCjupnVftCsPR8KGV9cop5pUxRO4Ctq/V9hZJbTo8vU8xVaFCibiia51wTZKfwGNhh6wVtS6RU
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(66476007)(66556008)(8676002)(316002)(36756003)(6506007)(31686004)(186003)(66946007)(53546011)(6512007)(26005)(4744005)(5660300002)(8936002)(44832011)(2906002)(38100700002)(31696002)(6486002)(508600001)(966005)(86362001)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y2N3ck9NMlgyMTZHTXNZUi8zUSs4V1J3MlZMUkN2OXE2MDhaSmIyK0dNcGgv?=
 =?utf-8?B?a3Vtb0Zaa3NZc21tSGVqWTl0OW9XUmJYelhlZVpydHVHRFhydmpsVG1XWGJT?=
 =?utf-8?B?YXVRbHFnQUV5aHlOT0JiakR5Y0VJVDV2TDBPMmlLM1h0UGJHRWhBU1FMM0VU?=
 =?utf-8?B?QjQ1ZlRGOTZCcW43RDBKVFNRUnR2a0hXZWoyd2drL2Q5elQ0K0JpYkI0WEU2?=
 =?utf-8?B?RW4rdDhrbXNPRDlRRFJ3NDI1Z3hjL3NQdmZwNUFYU3ZQVER2cVp6Ymp1YlFn?=
 =?utf-8?B?NDJRbk8yNjRDc0EvL2V1TGVPdUg1YmZ1citlZ0Y5WHJtZmVKK05xRDgzUVpa?=
 =?utf-8?B?bzZhN05rTFM2NWQxVnozMTNwVHVPeFpIZ0FoSE1XenJ6UEFmUmc1WXRZQ2Nm?=
 =?utf-8?B?aStzZlppK3lCQ1VCSGEyUW1vb0pJZEt6VHFKTDJXaDQveFJGTkdsdm5GQlV1?=
 =?utf-8?B?V3dVaVJ2U0xSdGxjeXhlNThmdGJpbVZzQW1jZzFJWElpMjM3ZU52QnJ6SE5B?=
 =?utf-8?B?TmRucnhublNJcTRVRHlTYWpoVng4bjRUaVdrZS9lVi9ZcFpZcGwzdUVEV0ZK?=
 =?utf-8?B?cmtkckd6cUhETEFvOGNlRVcrQjNDdU9VQ3ZISU9EVERQRmxxYlZ2QzIxZ2E1?=
 =?utf-8?B?NUtvMlNjdFJZTGdMbXR3eUttTVp5Q1NXTTJIU2svK2xNakZuRWJkdVNVdzVo?=
 =?utf-8?B?N3hROTdROUpEUXBwN0Uvd1dKMzZLUHRWeVZndFVnZWRabFJUWmFySEpwaEVy?=
 =?utf-8?B?OXZuRmZMVHBkUWZoVmpWYlhDUXczcktHUjNJSjBuR29VNzRUcVJQc0NTVWVF?=
 =?utf-8?B?aitHTGJzVS9GRTJkYjB4cFZYaldPNTMzTVpPK0FCRGdoVW1CVUlWY0gyODFa?=
 =?utf-8?B?aHVkN0owL1Jsc3FJdENkOXBYOEpXT041aEJxU2VWQVg3N0dnSHJUYzNUYXpX?=
 =?utf-8?B?aUJxQ1NiMkN4QzJiYzFxQm0wN0JiZHUrRHRQaVlkaTgxbjR1OUVVNnZUSkEr?=
 =?utf-8?B?SHNnazBySUkvWENsNStIWDJ6dmdQNnpIUUhVaEJRY1I1bzJrOUJ4UG0vOWYz?=
 =?utf-8?B?RkZTSW9nODR0OHZ1NWxXc2owMGwyRFV3SzZVcEdzTkQ0UkoyTHZhRmE0Sm9V?=
 =?utf-8?B?aUsxcElPUXpWWHdnQ2xZWGdnWEluTnNmMjZJYVdSWWFjSldIL1I0NTJiajBu?=
 =?utf-8?B?d29acGE5MjNJOGNuYmFjZHBrd1hTdy8yMjlwSWx3RUlwUjcwN2N0TzBZNGVI?=
 =?utf-8?B?bStmTjdGcTZJZ3ZpaGJ5bzVCdlhLOVNqRnNGV0JlM2lDWU9TMUdlS0hwcExH?=
 =?utf-8?B?SGhIMC95Wml4Si9qWENuNkdKbFJKRW56UzFYVEhocXFINHQrZVRRb1hhejYv?=
 =?utf-8?B?RXowL2QxaERGN3FLUkFuc1RlblNPQ3FacVhaRDhCYmRaSGlXZ0pibS90T3lS?=
 =?utf-8?B?ZHQvR1hCRFZvdEwrcjhlZGw3U3JPQUl5Z1R5MmlsUklMbFlqemlQRDI3ZFEr?=
 =?utf-8?B?YTJTak91dUc0aDY3TWw5TDUxV054SHJ1OHlEQ0xyMnVIYzdWSTBmMFl5dlZ4?=
 =?utf-8?B?UFQrQjVza1dLeXNaQWJZTHVnZ2cvZHp4eU45TmRqTi9GYVpzWHZBMUpjN0Mw?=
 =?utf-8?B?dWpiZFFrb0ZyaWlGc0hxOVlwZmpsSzhSQUxxUFFQNkRsYm52WGpSZlNnU0Fw?=
 =?utf-8?B?OHpqNHpvZERGQnQrSjIxQ2JsL2dURDlsWjMxSkhJMDg1ZVdZdldRRWtWaHNG?=
 =?utf-8?B?ejF5RzBOQ01SNlZVSDNraVBCRHg3bVBoeGt1RHAxRUZvc01HckV4Q2sweWNq?=
 =?utf-8?B?aFZ3Y2xaSjYxVTU4RWhaUk5icS82cmtxWHJUMEhoNk1IRjlRVXh0VUJCOGdr?=
 =?utf-8?B?ZjNaRHZicnhYVndvVlIzM00wUEI0dElzNVh4TThwZW9CZmhjR0d4cklrYkg5?=
 =?utf-8?B?VlVjZysxUE1SYW9MZmRvU3BkZGtHaXZFSzNZaUU2dEFHcTZMcXpvUmV3VlMx?=
 =?utf-8?B?TGRsS2s5TnZvQ3hab1ZYTGFHeGRPMm9JV1NBQkI2Vmhja2NUWkZpVjF0VWpD?=
 =?utf-8?B?dXFjT0ZCSFBVMi80b1ZNbW9BRUFUcXA3VmpUMjFmZzg5RDVpUURpQ3p0NEJ2?=
 =?utf-8?B?TGxNdFVkdklnaUJySFNjQ0E0OUpmbzB1OWJ2MXBaSmtSajBIdlpNVGc5cnFM?=
 =?utf-8?B?eUFSNjFiTGJwMTRTNDlydGs3elRkZ2lDSGUyOU5IL3cxNnhJejlUSHAwcDNz?=
 =?utf-8?B?cnBoZUswQlpCeHZydWJuYmNRVEREMzZOQ0tTT3c4TTZDbGJEVzdRYnIwa1NE?=
 =?utf-8?B?YW5vbnVDQWZUQ1NIOWU3R2xrSGpLWEs4WHhTZEVCSjQ1TWNkNDVSZEJWdndJ?=
 =?utf-8?Q?F4NzX7Um0hvD2RHUt7Fi8TZb6rWCPOoEsFsVw?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 7e3e4c4d-20c4-4e49-dd8a-08da3414dad2
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2022 12:42:20.3297
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 NIB3yrzif3vkHmo29Q+ii/QK+F6JbyhTkq+pJxPIU+dLks8/5jjoiMje+13F5xXsGJO6Y0WumTeTdQTx0Ugsg9G9JDM7dPU4GJg2pbBrLnzlJhKL/ukOXCDcLkasnNLN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4932
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 12:42:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57070

Hi Amahnui,

On 5/12/22 14:33, Abongwa Amahnui Bonalais wrote:
> Script to add banners to the old docs and outdated dunfell docs
> 
> Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>

Thanks for the patch and your patience, this is an important piece that 
was missing, so thank you for taking the time to do it.

Now, other reviewers can still say that there are other changes to do.

If after a few weeks you still don't see your patch being merged in 
https://git.yoctoproject.org/yocto-autobuilder-helper, you can send a 
mail here telling us to have a look at it again, but that is usually 
unnecessary since merging is happening rather fast in this open-source 
project.

Cheers,
Quentin

