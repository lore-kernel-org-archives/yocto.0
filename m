Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1982FECAAD5
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 15:13:58 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
 (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.86])
 by mx.groups.io with SMTP id smtpd.web11.338.1662477232485614603
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 08:13:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=XxLKuUw2;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.105.86,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mG5AGNW3MBrh5zaipDsjwJ64LnYI6NWST8jTu51u5sIrZ0OnMcx0cfcskMJenWHp3McXXBbde2xISaOaCIF9uY/p3qMjBevHSYR/2RAOwZQ9OHImd1R8muleO8OkScyIPuuU2NWRAd2YbYpdnfgWlXV3DcYHg0WJAyp4qbMgHLHJaTkOmriuZy9kWJ5Vgxy3eVkwWclx6X0sBZ8wAhJTX/NR49WX1gRPqDGsFd4dgL3fWCCPsvMNHB5LIoVcqXopiNV8UfxAQtl2g7JLQsTJMrt1aAWeUnfv5tRI+qq0BkATWOpB5H5PwQMJZ2KgRhJBb+BS9A1uBchTjRnQSosQCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u2a09BXnJWGQgWW3fnsGWFmmXMjdu+89c99Lw2xD8iw=;
 b=RMHYgaPmN1WbQY9cBklp3mDm9Kj7wrslYxaWfZ8EEmlhtO/jPRyd9GCNUQsJ824NI3S/A41wOVjoUL87d7y4vRZKi2p/LdYnC3BQYF6Mmyt6s+GD+3pJs6/3i5CO8EABC5MegGBn86RxnZxRSsbBgWuaYu6W0aqyrIWYMQNBFfkzOTY6pOrKe6AE5y16HoynYgouspKugXxzKo/NUN3xe0iJ0vJlNP+uh7rUBwGnixn3KKVcZaMSuU1w3ZRE7OAuX1sLJ+P0/MBZ51i+3DUuDKSBowtvoRSnXnaOoDsvUlg4eAFPPn7lD9LRXKjrAo4+deD0SrowwiMtzFene8JDkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2a09BXnJWGQgWW3fnsGWFmmXMjdu+89c99Lw2xD8iw=;
 b=XxLKuUw21oeB7uxoaDZ6PQo27eDnpubRvvhblrNwWn78LHdTHvvXo2ycemMFY6s0ZRahGwzty5OaG0/JnJRYCMvYaPiiCPLBF9U/STx9pyQWPejTIUF261Kpj1NjnAucfjAW0VbMIA6wniYfhk43J5MEh38EeH9tcOiIbKpbL5U=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from AM9PR04MB8539.eurprd04.prod.outlook.com (2603:10a6:20b:436::10)
 by DB7PR04MB5387.eurprd04.prod.outlook.com (2603:10a6:10:8b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.17; Tue, 6 Sep
 2022 15:13:47 +0000
Received: from AM9PR04MB8539.eurprd04.prod.outlook.com
 ([fe80::2935:1f84:f7ec:2dd8]) by AM9PR04MB8539.eurprd04.prod.outlook.com
 ([fe80::2935:1f84:f7ec:2dd8%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 15:13:47 +0000
Message-ID: <f41bcedc-15e0-0516-530a-636b6c5a9927@theobroma-systems.com>
Date: Tue, 6 Sep 2022 17:13:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [yocto] Update upstream kirkstone branches
Content-Language: en-US
To: paulo@eero.com, yocto@lists.yoctoproject.org
References: <isVB.1662474023926890292.lmGR@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: raj.khem@gmail.com
In-Reply-To: <isVB.1662474023926890292.lmGR@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P191CA0009.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:800:1ba::13) To AM9PR04MB8539.eurprd04.prod.outlook.com
 (2603:10a6:20b:436::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eb590215-0e4f-400e-f087-08da901a656b
X-MS-TrafficTypeDiagnostic: DB7PR04MB5387:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	uR2kUC2/i8PvZIQXJT8x3hyZZQxHga/iwyueTgJKU68RWCspyTEq49U8a0LP1g310cwuORHVnmgRKrEUyCp2WV9Y2Hw1as8aYcwOk/ZEPdJHz1r/AfFZGMd0PHpBZE/nje/KOU7rsYmBtnV2v39Lc2CrDkPxX7kBJEcye/6Fukwqmg9yDDfeh3xJdJMmsV0FgAWcy90NKyTUFiEsPx1Dh66ceDw2SXlEcsnr7ur2BHYRp9xeXF112p8BpfyX7wUDaqylsCCE5KRTdbl/3HNPENSnv3GLF0pvB9ArLco/bC+dP/TRPPxAIqxfaHii/NOKV3quBcH+ZJAoC2Dvwe93YgghvyNDd1Vfvh/csT63XLYK8tcaVq9AkjshaVFfPv9c2JViAl9ZJik0x3E45lJ2n4dw1CnAtZR8txvFDMmWyOQgR9X/JRMUjQsAx5yd3P6dq6IWE+XEZiZyH4lT8Rrm3K7p9/1sgBhp3xZc8OBEiAgqHVKNC86cTC4Zct9qR4+JRxWXim6MaMTi6vO1mV3eGqod2iGUME5NCTCEXXkpFzYCPWCxmknFvnPQs2ZtjL5itVBhuD3jEj/+MMX6wA9eXz0n0+qABGYuej+6V6qaxGs/aMt66HrbYSUkCcLGfVn7wSrLFUy+aSBl7dCaAdDpMWqkZRXiQak5CIvT/9emXr+bFa7XTdKebhOtejo0KBmdtunvmnM4MNvsThhy7b5FkIV0o8OTkYgvp4vXFdk1GP7H0WqSxYhzieILzOOuEhnKqKMuP01fN5zl3jZgd+djdzga0fBHRLBfs647kxvjzMe3Je6KqXSAkAAHULChILMd
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8539.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(39850400004)(346002)(396003)(376002)(136003)(6506007)(41300700001)(38100700002)(316002)(66556008)(83380400001)(66476007)(53546011)(4326008)(86362001)(66946007)(31696002)(8676002)(15650500001)(966005)(36756003)(8936002)(6486002)(2616005)(31686004)(5660300002)(478600001)(44832011)(2906002)(6512007)(186003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NkNqendCcjRsNjFXc1V5KzBFdXdaSk1rMDY1QksvSUpFcTlBNjFXUHoxcWFy?=
 =?utf-8?B?L2ZJVVVuWUpxZzVhNkVEblBWLzhoWVZBNkhBWlpIbjl1Tkl6NWdHQUZicWE4?=
 =?utf-8?B?d3lPcGlhcEgzMmorMDFXZkZFQ2ZnYU5mRHlvSW9ydENVU0xpbzRqVy9RbWFv?=
 =?utf-8?B?MWE1dnovczNFejZpekN0akQ3b2RvaU1BUzFzZll3aENPVVk5WnhYdENBeUt5?=
 =?utf-8?B?TUhYaG93eGNTcTBYNW5IOWlQRU9UM2lBVVFuRDI5V2VaUDA1WDk2U3d4RHJm?=
 =?utf-8?B?NTJZdkM5U251OFNqOStEYm1adEtlUWpBejA2MmxCMnNGSFdHNzEzKzZjczVV?=
 =?utf-8?B?ZGxnSHVRcHdvM0RhSnUvT0FtV0tXQlpRcUJRaHczRnU5dGVRRlhIL1daN2M5?=
 =?utf-8?B?MVpyUE02c2daNWxLM25qNVdML1JjR1NJOHlNejB2UFBDV3kyWmozZE8rQVh4?=
 =?utf-8?B?Y2wxTzlha3E5cVRXSXZCTDl5YVl3SmZCbFl3L1pmTE1xVjhQSldMa2lHRUhR?=
 =?utf-8?B?ekx0QmxnUzVNaWNscExKVFpGZkxab0JmWXd3UzExRzNhSGlES1NSNnJkYWI1?=
 =?utf-8?B?ZXJpTWxwOWNEanUyWUlWcnc3NUwzVmxrSTh1cFV5eFhqMlB3L2JBdGNtTmZ4?=
 =?utf-8?B?U3VscGtUUUZTLzloOWpkSEU4RkxMbnRUWWdSSzBQUmN3dmhEVmV2NUx1Q3JF?=
 =?utf-8?B?clVNWTdScjF4RzBmUXpyVmJMU25aOC9XRkcrbWV0cjhoRUwyR3ZmZi9VM3I4?=
 =?utf-8?B?cGw0T1pvYitCTVhJSU9QV1ZHaDFqWjNKMi9oWGVxWlMwemgwR21Mdyt2enVm?=
 =?utf-8?B?Rmx3eXB2Zjg4ODdzbU9iUjd6LzBuR3ByemZmSVRITEFWZ1JiUTRlSGlZMVhD?=
 =?utf-8?B?MVQvazNzQWdjMTZiL0N2d3pwbXNYcDk0ejFPblBJejJ3Z2tmNHBaQkExQW8x?=
 =?utf-8?B?a2RUNE5HeFBmL1haMmFhVzMxTFBDMlp5QUxGSEg3ZWsweFovQi8weGxaRXN3?=
 =?utf-8?B?d3M4SWtYbzJNaGxBVlIxSVp2UGloRWZGY3B4dWhOZ1Y3cklSUDNZQnlCOW1q?=
 =?utf-8?B?d1U5Y2RnbW1BYnlMNW9HZHJUU2ZNdHp0YXJtV2NUWTJhV3Juam5waklLYWV6?=
 =?utf-8?B?TVF0TkdmVC9tQzkwVFlWOGRXQ1hXV2lxYW9TVHIwckVVWDMxM3dSR3ZuQkx2?=
 =?utf-8?B?VEorNUJOeXdtMGkrL0k3eWRpZGlUQUhuczlEWGFnNzJtem53NlA3MGljUVNj?=
 =?utf-8?B?OUZGWkVZdnpDZGExWlhhT04zNy9mWnFSY3RFbHplQWMxZW1lRjlBZnFEYlVp?=
 =?utf-8?B?a2xscUQ3SDFxVXg0U3FHZ1F2N0xMK2RvbXhNS0ZWM2pQNVlqZ1RTOHRtb1lV?=
 =?utf-8?B?a0xxSnN1RHUrY0xwSlh4bnVFbkVEMnc1TnNmRzJWWTFMK3hKdmhEdWpuVjcw?=
 =?utf-8?B?MkFKcCt3c1ZMYVpOMGZ1eElPaFNORnNzMzlnajN3Rmt1a1grK2dBUUtyWGVD?=
 =?utf-8?B?TzMwd1FZZDJkckU2NGFrN2ZXbytMdkhrUkRoK0orZEtYVmcwZGFrNHMyeEZK?=
 =?utf-8?B?bE50UnJFcGZXOW9oQlRIVUluWGxTazdJakNVNjhPbGgxQVBVRmVwWEhXejNt?=
 =?utf-8?B?aThKdzNIdXNnZ2EzdWFFcG1KOEpUQkg5ZVJYQjJqOXl1TkdER1JrRExibWxZ?=
 =?utf-8?B?TjMwNkFiQTU3aHRkUVhYRy9qVXJlUmk3V3lCMlVReGttT01yajZCRmVkV2I2?=
 =?utf-8?B?K0FyekZLQnd4OTRLWmZINEE1Mjk4VnljaS80Rk5UV3lYNVJpVnpMQXIvL3cw?=
 =?utf-8?B?d3l1L1IrWFZxbGFJa01sbVpKL3I4U1dOSHcrNnNHV0RVZkxmS05MZEhYY2Js?=
 =?utf-8?B?RVdxbXY3R2lodERvazZYeTVwOC9UQzQya0xTcGdpQ2xhRzdqWTQ1UC9yR0dj?=
 =?utf-8?B?MXNnd3k5Y1Vmc1FVcTMrVVRqL3BZVjJXbG1QR0MxK2VLcGpKeE1UTkk4ZVc2?=
 =?utf-8?B?a1Vmem9Tb0cxMVdYTFFWYWFBKzE4bkFYMkZtc2JWcFlWd0lhb21ueWN0OHEx?=
 =?utf-8?B?TjNSVmZMMnNVOTNUMzVtckhZUlU5bFg2aXZIVG9qemhDT1lVc0FWMzJVdS8z?=
 =?utf-8?B?cmxWWnBLdzlTYTZNakZtYk9OYWFiM0svMjNHQXRxSmRpWUhsM216WnhoamV1?=
 =?utf-8?Q?ffZGOckWs0UNkH+vwnwTtgEd871bwg/RPagWFro6rd7s?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 eb590215-0e4f-400e-f087-08da901a656b
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8539.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 15:13:47.2874
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 SmZgMvzx3AwIqb6dYeFRe4u7EHex/EX0wGqkptNiaHSAlFMCdoOwcFv34tL4ygaxYINyL4SxBXl24VXv0wQeH32c727h0kmmNI4PM3Up4rj5LtBWtDnBK/RfosvthRoQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5387
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 15:13:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57996

Hi Paulo,

On 9/6/22 16:20, paulo@eero.com wrote:
> Hello all!
> 
> I've been just recently working with Yocto at my new position and just ran into an issue that was already solved on Yocto's main branches for both openembedded and poky layers.
> There's a problem with npm on upstream kirkstone, where the fetching of dependencies fails due to stale or wrong metadata being read. This seems to have affected quite a few people (from what I browsed online), and found a solution which is already merged to the main branches for both poky and openembedded layers, done by Enrico Sholtz.
> The patches are https://urldefense.proofpoint.com/v2/url?u=https-3A__patchwork.yoctoproject.org_project_oe-2Dcore_list_-3Fseries-3D4303&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=7HzKBeVbSvWreLPwsDAKWZVdW0sTf8vqJp82dKy01KWfJ9e8kzZpevt-vvV7Z2Ga&s=xKaCrxEjeUTs2WwwWY226DJ9lZmm7QsiOPK4eCRZM_0&e=   for poky and the patch file attached to this message.
> 
> I've applied these changes to kirkstone and it solved the issues as promised and explained by Enrico on https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.openembedded.org_g_openembedded-2Dcore_topic_91903472&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=7HzKBeVbSvWreLPwsDAKWZVdW0sTf8vqJp82dKy01KWfJ9e8kzZpevt-vvV7Z2Ga&s=x2rwsw6fLSrNf-kgh01BmbsrcSsW8vKxcbRuhBFDpxY&e=
> 
> I'd like to know how would one proceed to add these changes to upstream Yocto, since it would benefit a lot of people using this new LTS version of the project.
> 

For OpenEmbedded-core patches: 
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded#Backporting_fixes_to_stable_releases

For meta-openembedded, I do not know how Khem deals with backport 
requests. You could do the same and then send your patch to 
openembedded-devel@lists.openembedded.org as explained here: 
https://github.com/openembedded/meta-openembedded/tree/master/meta-oe ? 
You can also open a PR against the proper branch I guess. Cc'ing Khem 
just in case.

Cheers,
Quentin

