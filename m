Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D8EC28D13
	for <webhook@archiver.kernel.org>; Thu, 25 Aug 2022 14:45:39 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.69])
 by mx.groups.io with SMTP id smtpd.web08.24851.1661438738603701013
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 07:45:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=SWgqioIK;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.69,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZLAmmfWQ5lILOyhllW7reokC/F32DBkt7GgvWaCqubqgCsOTQa0luG7C+XIBy/HE4kgjBbcBmT3spKOy+ib61k1/gwWmLEvjkyY1k0UijSZO8/eFmJ5afVk1f0h+ymf0mt/5XATDdEsZBNY568nxb0UHvCCfzwDTf3/+PqHrUxPHunumqyeeDnJ6dszTaLBniDTdt0Bm5RLy/pdvkg2Ckt/24ScazuBDJJy7XYt+NkuQDQ5Z+3Y7/8Q7peKNG2FybN5ADTKUB+6dXRW+c04PMNtOMYHeqWCXkSSa2XGTqr6yb6mnGWzWSCP2tKQ5LPnT6PLUdyi5uBkKLWGuNTQYNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wRlF5aSKHouYnYClIsuyXM0Df/A9xvWQc8Yd4K37k9s=;
 b=lerMt5lTh/GUCvw4N+5d+1ZiFsH+Xc0BL4HC25Z4s0R0DDZoWF5n2Ic6AIANcxPawSqsjpHh3r72nuaHbxSIQA9VwSX3/5f1Pa6qGvI+I6uDMbEpmrx0UWBglguDVp+xH+QK6Efz+R70KPkxufhr920Dt2Ugo9kr2vmBEzdd6fRKtin28mYC24lWVuVnHfI4nbsPEUWh9xTt68oAMeK51Axo7nhfhR0CdOQTvBnlywrX1RdLy+iE3JwPeO5L5QACBMW+ROuLj851p7Hn7gYI+/WbqL75a4WCGIy8/A8S242sgoHcAG8KWqesQO0lgnAjbTxKl36GLtmjTvNWAP4VAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wRlF5aSKHouYnYClIsuyXM0Df/A9xvWQc8Yd4K37k9s=;
 b=SWgqioIKRYwjf1+RcmRVA8a85pV37FIPNB/ZqV5n7MfMqiXXLKn6A7M8Dl9wNVGyASbub4sGCd+k1l+RPafnwFK0AP5/nMIBihajJLvYnwILr5CaK7Ud08FRLvkjtNsOem6tE9Odt1zQo77dB9cUf5rLSFICC+4NGuM96nNi8Eg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by VI1PR0402MB3805.eurprd04.prod.outlook.com (2603:10a6:803:20::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Thu, 25 Aug
 2022 14:45:35 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::81a8:1bbf:5e16:9b4e]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::81a8:1bbf:5e16:9b4e%4]) with mapi id 15.20.5566.015; Thu, 25 Aug 2022
 14:45:35 +0000
Message-ID: <2235a5b3-2c7e-0e2d-1ced-c6fe7bdce748@theobroma-systems.com>
Date: Thu, 25 Aug 2022 16:45:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [yocto] Dependency for binary package
Content-Language: en-US
To: Rudolf J Streif <rudolf.streif@ibeeto.com>,
 Yocto <yocto@lists.yoctoproject.org>
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0153.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::11) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9bf4a61b-77f2-47de-5561-08da86a877e8
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3805:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/ntaf5vS9nhjRzWgjiqrb2Da08Ey5DCdyKDOT+KTv1nctKyHvqhWUDEFpmAz3Apu+GcQg3tMm6IQuQm4rRr9c6RpHszxRzyhoQzPpeigy22iA2JbkTa7GPCDFrVU/bDQKL99SzODeJSOc2eDp4tA5/QLPChexWtsZWu8K+b5gmvQsF5CPC6+vm8MKFak/gDcjHT5vNtNQXjVZCvmQEhcYDytvJyrDBIRoHBWVSjM0FkXRH+Mz0ImUjj0n5n3aBx3Whgz1ixMHuKQfg9IEAdYdHqRHJ06BexILbM7QFJX/LXSlZBepUMkesq1YQWw8xQxXC3jTjZZk+AJgjVvHGkbs9aFH2AoVLWmIIBM14ItAj7WxHqyVCgm1QrZUdtzh9FTfSqrKMyBHatEhbM9hpLetRdIh9pyC6XxeGBGLmr6WJ3zB2O9hSJzc+/fFc9DxU2rtw6PlMKWRJ7viLlkt1SZtpUlYxuVAcZqXC71YGhRKFjaXwDDGX2DZ9VjJRaiTJrJImyGjNnRWcOgbDFKXsoJF+v0P2EY0Y3jd6XbKCQ3N0XFec6BcG8WtHUREPObBozKiL9laTwrgA+EZULa4ydrUK+DOrk+ZShsTZb0JTkVdGu9Zn5kqkg2FUo7zu65sJea3PaOwj389Zph4IQEYLqSxP0sEveHQzv9cG/t2CS19+SQ3mVwgxeIYpTWRuIb89OHxmgQZV+MK1BOG0vgmm+euGfsDlm6nm8Jx25iYUvr1SVEzJJ6/++td6FNV6MQrQrIdDMnIP02cdUrj0nXmA7rIlvJ2N6hOJk5TjdFaKaCVV8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(39840400004)(136003)(346002)(366004)(396003)(186003)(316002)(41300700001)(66476007)(6486002)(66946007)(478600001)(44832011)(38100700002)(53546011)(8936002)(6506007)(110136005)(5660300002)(31686004)(2906002)(36756003)(66556008)(8676002)(6512007)(83380400001)(26005)(2616005)(31696002)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c28ySnpXejg4MXdGZk1jbmFWWHJDSngxKzB6ZUorMG1tdEgvMklMSU1jazEz?=
 =?utf-8?B?TmdaU3hYUWRkQmdrdDQveHZtb0V3ekl6L1hFUDVBa09rdW5tSTNiVkdSQ2JV?=
 =?utf-8?B?ZFBWTEdqOTQ5cUphdzJCQ1BlaHdQM2tPM2RjRzNyN0ZRdUN1MzJMM3dkS1RJ?=
 =?utf-8?B?M3M2MnBVeWFrSFQvYkFOUGMweFcvMkZoaVo1ckJUdmpCT004Nzd2aXVPaWo4?=
 =?utf-8?B?ZkF2Z1ZZN2ljVUlCY0pwbDN3RTVHQzk0OXUwT3puQ0loQlhKQXlZaE1xZXVJ?=
 =?utf-8?B?L3JnT0tsVG02M1Rab2Z2SHA2WVNGMjlhcUcwTU04eTVWYlJOT1g1cFF5VWpU?=
 =?utf-8?B?TThzQWZZSGxLQXJDeVFuU0V0WlI5Q2E1S3kzTHpBS05IUktQcnc1Y1doMmV5?=
 =?utf-8?B?UzhlSmdKaCtaWXhxS3ZNTzljSHVpNi94TStFS3RFaTJDbmJkdFdzdjloTjJq?=
 =?utf-8?B?SjZTSTBYSzJLY0ZvKzMwRlVFTXh2TVVCc281RjVMSHFCa0IwK3R1TjhCT1dn?=
 =?utf-8?B?bVU3cjl0Tk9FaXZ3aTV3bzdKOC91WHlrTTRWMUg0TXlrR1RKekdjOHpGOWs3?=
 =?utf-8?B?ZTkyUzNIdlRhbVJZV0Z5SCtPeWRydXo1WDdvSlF3ck05a3R6QkRmcmhnSnZZ?=
 =?utf-8?B?ZmR3dWs2Z1JHdTMzbkpMWGVSa1JUNXJuVC9IZGFHa1dRdXFVSk0yS1BENHdW?=
 =?utf-8?B?aVRqNS9uVlE2ZFhRVEloV0xNVVFuREh3SjRtQytZeEY4c0UzN0MxRjJGY3ho?=
 =?utf-8?B?TEpxdUgzSzRZVkp3OE90Tk9EODJ1TEdIS1ZPZEgrV2lVY0FxQnVxcXBoZFlD?=
 =?utf-8?B?UGdmeW51NWVOWGZyeWdtMmxqZVViM3NnTnFGTXdRbnBFWHJLcGtsVURHR0Vv?=
 =?utf-8?B?Rm5hT2M2ZkxHQ2JjUWkreWkvUGNMSDNWd0ovcUJ5YkVyc1JlckVwYlJWVmk4?=
 =?utf-8?B?N1VLVk12c3MraWlGRnpqVk9lNVdkQnRiSmRPcloxRGUzQXhSTEUxNkYySkZ4?=
 =?utf-8?B?TVlsWmZGaXduV2R3N1FTaTFoWjlQN253ejZNMWRUYklwRmRkRmtYd2crZmVy?=
 =?utf-8?B?akdjTXhKR2E1cTVPZTZnRXlxTFlKNVlGdTVVN2FiRmhRaHM3VVd1Y1JPVCtX?=
 =?utf-8?B?NkFPVTFWYUdDd05UdExOdEo4dHBLMGZlZURvNG81NHFCTUJhV3J2SWJSTStp?=
 =?utf-8?B?elA2ZS9PSXcvZkh1UjVHYkRpVzlDK2wvR0FQcEVtc0M4cGhEVUFqN1ZHWjZ2?=
 =?utf-8?B?VWlSVHp3UGJNZTltR1pCbkUzZnJOc3YreFVPNG9kNllRQkhsVzBmV3Zud0Ft?=
 =?utf-8?B?ZFBEVW1EZklaVlpDb0xCN1cvdUZrMjJCUDlRM2hBNEt6R2h5bVZaNUVaVC9H?=
 =?utf-8?B?ZS85QVN5S2J3UmtXSDJjRVJnMUtEdWZRVmZibm55d3FHaW0zdG1DZTFVQlJC?=
 =?utf-8?B?SUJIOE9MQ1l3NlZoNE0yd1lYRmVwYUM5QzR5VVBFQnJoSlROaUpvS2VXM29i?=
 =?utf-8?B?azJRRHdublo0OE50U1RvKys2aFdmTjhlZWhOUzZVWm9yL3FLNE9KQ0ZGcnU4?=
 =?utf-8?B?bEJraHhYTk5kQXhTbmFhTUY3RzlWUlNEKytVakdETzRFaWlYclZ4ZXBIMkZY?=
 =?utf-8?B?K29xUXV5Yng5SUZqYW1tRVlWaEw2WnpJVWZBLytoVWNBWlVoaTBwNHBrTmFF?=
 =?utf-8?B?cDRVQ0VpNHF0Q0tQVW80MHNJaFRYdG5XYjhQY28wZExLVUIxU0RQb3BFOUZT?=
 =?utf-8?B?NDc1YmtnK0taK01UOWtIbUliQU83L3lMUlI0OWg5ZlVsT3doaFFvbEpKb0Jp?=
 =?utf-8?B?NHFncFdwQSttcUJWeGNzblVoeHZWTUVta1I0KzRWRUtKeVhQcjFMb3VWTjZZ?=
 =?utf-8?B?NEoxNnBoYm1YdU5NY0c0SE9Obm5wM0NIZWZ2ZElBVDJ6WkhVc1pGLzBnaGp4?=
 =?utf-8?B?TkRKMW5DZ0E2a012VzA1WXhOYjBKbE1PSlUrSXkwTEJxY3pOdGNPdzJnOWhI?=
 =?utf-8?B?UUE2RzMxWmZ6WWlibVpuT3hCc1M4UlFwTzBEZXhEQ0JHVUdETzdmSHNpdm9w?=
 =?utf-8?B?WUYvN2tOSzZYTHo4d041ZFBxS3ZIQ1BwUm9iQUEvK291MTVySWtRRmxHQU55?=
 =?utf-8?B?OTl1NUhFbDZjR2dSbldCSFBtNVZMRG9KSDFoSDNJUThSYUF2NEQ2UXVPNUxD?=
 =?utf-8?Q?/wrVOnv45QnvJ1OKMYfWBSw=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9bf4a61b-77f2-47de-5561-08da86a877e8
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2022 14:45:35.2095
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 fslWZrJGwRbb4Oh7xza6QnXp4hs6On4CaeUsgINym95RKHv0ihZDS0cVirlAGyLwUDL7472CPHerCBcsk9ToVYE3xyeWSuhYFq8Xld75Heb95fUagUrnf+CHiZtNojIl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3805
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Aug 2022 14:45:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57899

Hi Rudolf,

On 8/25/22 16:30, Rudolf J Streif wrote:
> I am packaging a binary package that has been built with the SDK created 
> with the exact same configuration.
> 
> During do_package I am getting an error that a dependency on 
> libGLESv2.so()(64bit) cannot be met. Adding mesa to RDEPENDS does not 
> resolve the issue. I can bypass it in the recipe by adding file-rdeps to 
> INSANE_SKIP. However, then when the rootfs is created libdnf complains 
> that the dependency on libGLES is not met and aborts.
> 
> The application works just fine on the target if I copy it manually to 
> the rootfs but that's not the best thing to do. It should be packaged 
> and installed.
> 
> Unfortunately I don't understand well enough how these checks work and 
> why they are complaining about it. Maybe somebody can shed some light on 
> it.
> 

Bitbake versions its shared libraries. So a binary built by Bitbake will 
link against libGLESv2.so.1.3 (or whatever the version of the lib 
actually is).

This also means that the only shared library that can be used for 
linking is the versioned one.

Bitbake reads the NEEDED section from objdump to identify the runtime 
dependencies and automatically add the packages providing those 
libraries to your image. This is the reason why you do not need to 
explicit RDEPENDS for packages created by recipes in DEPENDS.

The issue here is that Bitbake creates a package which provides 
libGLESv2.so.1.3 but your binary requires libGLESv2.so and Bitbake 
cannot find a package for it.

Usually the way to do it is to ignore the warning like you did, or build 
the binary in Yocto directly. I assume the latter is not possible 
because it is proprietary software compiled by a third-party and you 
don't have access to the source code.

As to how to fix this issue with dnf, I do not know.

One possibility could be to patchelf your binary in Yocto directly but 
you'll need to update this patchelf line every time you update libGLESv2 
version because it is not possible to get the version from one recipe in 
another.

Cheers,
Quentin

