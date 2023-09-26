Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E366EE7D26C
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 09:13:30 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.44])
 by mx.groups.io with SMTP id smtpd.web11.14691.1695719600836652225
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 02:13:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=WUuYoVNw;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.14.44, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fifIHO0rkvjoYF50QMaGGVhz22/HmHyvinkRPThV5mIoDyxgSMgmlr1wRpEBG46gEFwZLdSrEfCfEpUzs3W/LDvkzYYimNmDPYi6p75Kyv4cdylgTrrARl3GuZtcKSKx98rAsMpCHWAE5n9L3aZJseZoMIN6ZQi1dooQ+RIVzSc8Ywe7ZmBQnZGYaPTbyA6uuFyECJRFGvUgzYhIYhM32awKVqcnZv4ni+jKz9hOJE0p00BV6FA55ZC9TADsJIadwWfd/8R6KrObUB071Qqtht82+Q2vNm4sBrxzWblaZsLEG6lKtnifDwzAM6TvxVIMUT4rnjzOjjUi4KU32ngJkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q+xw2i6E3e7B95FxWPlc4I4UL6l68Mw9pi2nDdTYRk0=;
 b=P1WpaR1rSSHW59nvhG3tv0AxsBFpJ4YYD98T5a5bdcs8wOg5FyBnfrwk8VhrKmoiweAK8Gxrg2mJotc2YxaH5t+3rNqPyXrpdAVhjk4P5rJHrOQN/vPfAcUZOJoiiZ4UorazDv7Ymkydx1/Gy12naxAbuH4iss1qVeVWqA9cNeOq+Hg+tL6Qh5i1UdvuKb5dVDAMlDiaDqUs8LcT4PVvJWYb4XzzVmOe5E7GZ90jBy6Bxka7mFHBljhi3jFX6wlaOIdOauV0yc+y+7OaU5qPYSPl5CYw4OVURxz65k4znnDEu/0fbdHJhfgXFw0cOasySrBQOcWsAZzm3jWxpZ3Arw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q+xw2i6E3e7B95FxWPlc4I4UL6l68Mw9pi2nDdTYRk0=;
 b=WUuYoVNw5JJQrCqLe3J8OZKe9pvh8NcgarGkS70dFpP9sIW9FtqJ6Pi9/4ZyDdFvIDE2MycxYmEnrSuvLIQYt6vi0eg7o2Kgc4ElyAsKd0JQhuPT4RaKtUiUkF30+e34wl0kUe8TDqf6+RWQi0R/A3Bk3KI5RCmDpywiRGBiuAZHdshMGfgEckhm6imMvPsygUEBB/uHWBOLt2mwFrnu5GYWvsdxBviUgDc08wdXIFmGXScaw9zOFrBmInKRodBeLK9j4mCBu9pXW6ipRRK8oakQUB5esCmFNCbE6QiV6AqbJKpW+fhvdrYBHm8btImoahxKlbv9Vr6sWI+iq2rbnA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DU2PR04MB8661.eurprd04.prod.outlook.com (2603:10a6:10:2dc::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Tue, 26 Sep
 2023 09:13:15 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f%4]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 09:13:15 +0000
Message-ID: <95bc2af0-11b5-52d9-ca26-c61b4198a980@theobroma-systems.com>
Date: Tue, 26 Sep 2023 11:13:13 +0200
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
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <CAL5F+oLrLnF3MsxuGjKQQwFN8BD_j1OCZy5T4AMkHd-KM_NwSw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0224.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ac::10) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DU2PR04MB8661:EE_
X-MS-Office365-Filtering-Correlation-Id: f5ac5b0d-b90d-42bc-af37-08dbbe70d0fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Xifo3rYhYneCF2uqE9s7T04DDgxj3dZuasDEj/vAPdSQ/GPSj5+xxQvgUFyI66EDE/uors89qqwFXxJdKaXSbLPZ4K42u8OeWVuhAL1fYK/UVKaKd1HD1Hp8OV91rtQvyq+Z5AQ+QUoipaIrbOwUtMRFllHSzEQGVxHPwu9DpJwYWVt7/lGp3XjzhvilXMlSlUaj+QKgEPSjMrDfL/tcTkSLC5bTIcaZLjj7tDdBx/MAqgLJRgp2USNV4Xz+j6fgQGrCKKewBmV+VfnvhdVisTuZ6OtrA+ZDfk3u2bWUzMpr9u7LhwwcwkUasXoZjmlzPfdQVHGQ2dgBqiJ2yvsMSHawKy9SFxSjIWTI1nDUhk2gKAQ5r9VSYXLZXMiXLmP0cQzlNn6Eyp+tTlcIt6Pljt8HTXJc35fpMs4wVzVf/XzLbpt4BQzJ2gY6XWi4ZQpEWpAdPr0CfBLWw9tTEl0d5yHt/SsO/5oT2RgE11adBmmoMEKlHh7QRj9muAgXUCcg1e4nWafHpNtDGjOxxaO10wqaGxopk6Y9AFhlRXTCT4xBwbo/6QwxUCnK/MM8pBe5Y4EEV40+U9VEHRCepwyZNmErhMJI0vCk/xnr8a7L2XaTCo0g3jefyNH8dK+nCS5grJqZxaElsk5eqwJd2ocrVA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39840400004)(346002)(136003)(366004)(376002)(396003)(230922051799003)(1800799009)(186009)(451199024)(6512007)(53546011)(6506007)(6486002)(31696002)(86362001)(38100700002)(36756003)(2616005)(26005)(2906002)(44832011)(478600001)(8936002)(8676002)(31686004)(4326008)(41300700001)(316002)(66556008)(66946007)(66476007)(5660300002)(966005)(6916009)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YTFxNnI1K3Q3VUtXT3ZaZXBSUE9oOVFvSlhJaVN5MVBIR1JXWmNDeUhjcFZw?=
 =?utf-8?B?aGJ1bitLWmRKWjFobDJScWYrdHY4L01FODhIaE5nVTRZN3N4TXh2NXZPR3hB?=
 =?utf-8?B?UWczK3lMZnlTNzJaeHNEVlB4azY2OUNIUURXKzNDbVowQi9rbDllenFpSFVN?=
 =?utf-8?B?VWtKS01kWGV5TDhoOFZoNEcxd1pOSXpNTHBJcGFMS0UyQkR3L1p3Z0F6NWFy?=
 =?utf-8?B?VHozTUkrQ1JTOURFRzh3Ty9ndkp4eWI4d3NhNzRUc3F0SG80RjJHdjgraTR5?=
 =?utf-8?B?Rm5wQk5ZNVJnZDRPbmRGNzJsdmROTzdwTEFYZldFd1cxSnZJVVBXa0RoeVFX?=
 =?utf-8?B?L2tuYzEwMS9wZXM5eG9idEI2Y0xVaWRxbmFScmlEc3JpOHZyVTVtVXRJMGVi?=
 =?utf-8?B?TXVFQnVmZlNDanFyM2xHMHZiOG9wT0U0ZzRqcUg0cWxLYjhqTFliVWh0UEdr?=
 =?utf-8?B?MkdQc3V5b1MreEhTT3Jpd0JXb0hYdC8yUzNoVHR1SldVS1ZGckttVmVkMXhF?=
 =?utf-8?B?VW95d201aDhQM1puQ3B4R0UrZlRiSW00WjVoUWphOHRqZU9Rcnd4YmRvZC9D?=
 =?utf-8?B?M0Y5TGJkTkw0UktDY1dHbWwvQndjTjF6YnNkNm1GT1dqU2FiQzcvRGdRYkVW?=
 =?utf-8?B?NUY0aUdBS2dFeWV2dStIM1Q1a2I3R0hCM3ZyUHdTRGZCdVcxWWJJM3JIZ2ZX?=
 =?utf-8?B?Q1JrdjVUeHBQTUxLZ0srdVBlT3ZaRVFPR2VPUlhBbDY3YmdhZVVmazBuaE9V?=
 =?utf-8?B?dmt6QXFEUTdMUVBhY1o3bkpWYWZ6S25peTlTNy9XQ0hubDVGdkJheU1Kd05K?=
 =?utf-8?B?WDJLVVg1cjNUUzlxS3VVWVprRG1rUUZ5VUVBQW5rdEtoWHhUaVdtcVRzN3dV?=
 =?utf-8?B?M01xSGJIU1RTak80RVB3NzhCT1U3MkNQUGNZeFBnWlduelAraGhLS3BGakw5?=
 =?utf-8?B?NS83eUJoNDFlQW0zOGpicWt4bFIxYnJ6dHFWREZpMlkxbEI1MWdYWFZXeSt4?=
 =?utf-8?B?elZ3SkF0U2dHTEpkYnkrTDg2MmVRZWRINkdCRkVkMWUrOE1yY0JhRmUwa0xY?=
 =?utf-8?B?UExOa2daby90NWJ0VzQzbWtyb1hNRGhHTWRobFlsTjZuam55dmxMeU9HSUMz?=
 =?utf-8?B?SzBDMzM4SXNIQlo4TGNqUlJaYVBCRi9OVitIcUtsTUlQS3BlK1N2TVVHMkdB?=
 =?utf-8?B?NndrYTdPK1JvL0h4SlNNVlc1T2tTaWtFRE8yRTVkWVRkRTZMdUNCbW5UZG9X?=
 =?utf-8?B?U2ZWZDRpU1g0SWUxWVpod20zMGtRMjZBcmxmSmQrb0Z0MndYL3FWNTRIeTIv?=
 =?utf-8?B?c1JuZ0dYd2xzYUt1OVdhNnRveHIyNzRaSVNwclNCbUxwV2kvR014ZEZXSkpx?=
 =?utf-8?B?aVNZZ3lSTllhZVQvcHkxR1c4VXdKWGU0ek15ZGxsSnhUSDF3RktoQzRTbnNt?=
 =?utf-8?B?ZC9hUzZTaHZZL3dvZ1ZlME9IVVM1TENGZlM4bEZHMkJsejNGQ0JDdklkMjkr?=
 =?utf-8?B?cVUvQXUxOU44T3JLdGdIemZIMWU0NklxUEJNYTdjRjQxYWxXUU9HQ2xoejAv?=
 =?utf-8?B?RVVmL1NzRWErd1lpc1REd3NvUFpCUXQvalJ2UWFoY04wdzhEMkx4Wmltc3JI?=
 =?utf-8?B?MjVOUEZ4OGVJSkRFSi9CaEtpZzNmYkFJQ0RlMXJvdUVQdGErSHVUZmwzNmxW?=
 =?utf-8?B?U0tQRW5vZnJVdXhnTDBUSUowa3FQRVB3UFZ6Nk9oYjZsbWNrM1ZQeEZnVVdF?=
 =?utf-8?B?SWFoWi9ET3RRMkkzTk9hWFVsdi90OU5MRHN0aW1ERjZBeW1HUXJ5NlZQMTgy?=
 =?utf-8?B?cEhuZFVSdHJlVDhmMkhrQ29PdDNpRkhyZlc0NzZDTUV6RzBjQ3hXVW5xdWdJ?=
 =?utf-8?B?bUNEa2JvUjE1Q2dKNXd4SGVpMW1FWHJRQXNxZUhQM0pBL1Q4MGhqbTZvaTRO?=
 =?utf-8?B?N3BDSmRNckk1S2RGQVFaQzVNVTlDT2FaWEJlVWZjMWIxT3c1OFRRd3cwRU92?=
 =?utf-8?B?QnNrN1JXYzQ5dFhuekNjVXpBdlY1SWZneEZwTnlBRUR3NTZnT1UrKy9nYzBn?=
 =?utf-8?B?UFc1aXk5NVducEZ3S3NORnpOcDdrWUtxaTVob1JqbVRBTHNpNFlsdFJuSjgx?=
 =?utf-8?B?WEdtWEhLY1ptTHJzRktWWkttWWVmR2x6L3ZKa3JpQ1dSczVVVlV2OVNJd21B?=
 =?utf-8?Q?rjLWu+2PCjBwnke67pFfpoc=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ac5b0d-b90d-42bc-af37-08dbbe70d0fe
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 09:13:15.7035
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L5XVKak5ALi7rHKi0zqsdLFLuTRnc9lkYbig6r4io8IQ8TTxUW1BgPndwGMIKF9vLjsKPuR19qt7dPJ+VxTARqgv8M0nt+SEhHJyMw0lPSmvzmLS2xSE5VhweMjxm/Bd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8661
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 09:13:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61121

Hi Anthony,

On 9/26/23 10:25, Anthony Davies wrote:
> Hi Quentin
> 
> Happy to contribute but not all that familiar with emailing patches, sorry.
> 

The Signed-off-by needs to be present in the commit log already, it is 
not related to mailing list submission. It is added with git commit 
--signoff (or git commit -s), c.f. 
https://docs.yoctoproject.org/contributor-guide/submit-changes.html. 
You're not the first one to forget it (or not know about it), nor will 
you be the last one, so no worries :)

> I lumped them together because if you modify the KERNEL_IMAGETYPE you
> trigger the bug.
> 

But... you're not modifying the KERNEL_IMAGETYPE, you're merely allow it 
to be changed. So you're technically not introducing a bug. And if we 
wanted to be pedantic, we could say that this bug can technically 
already be triggered by changing the KERNEL_IMAGETYPE in the machine 
configuration file (and not in local.conf).

If you want to make sure one cannot modify the KERNEL_IMAGETYPE and 
break the build, then you can add the commit handling the devicetree 
before the one allowing to override the image type.

> I agree moving it out of the include file would be the best way to go
> but if you dont have the directory in the KERNEL_DEVICETREE it will
> fail to compile, quickly searching other layers are handling it
> similar to how I have, probably just in a more robust way.
> 

This means we really need to fix this in openembedded-core! We shouldn't 
rely on all layers to fix it themselves if we can avoid it.

Regards,
Quentin

