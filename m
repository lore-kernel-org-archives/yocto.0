Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7164BC433EF
	for <webhook@archiver.kernel.org>; Wed,  4 May 2022 08:47:36 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.87])
 by mx.groups.io with SMTP id smtpd.web11.4238.1651654048279841926
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 01:47:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=PkIZ2nxV;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.104.87,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KrJ+AePYIGaBvjJkKcHRZ4RKAekmp2scA6cmA7s5POmvPYorc/b9KLFB+chgPJJ8Yk/B2Qs9qcKD46PXXNlpiAt/sQKy6zfqTO8QtHtcYPKqVqnamBwpOpbYe0ryT1cJ+6FxfLuCYZSQOv8KBd6HWWt6txf21DId8t0EN+Wd9FLu0mSlVjdM32nh535NHHOWyDYfQ0AoTo93e2k8lMT7gW8sX24Hqpac+S6jqPV5bdmeSl8aP06wYRmRpNnNUClKF2WwBYiTwRHWcc5EzObktxV/uXAU4V6AdmpJLzwcZ2Y3NUi5rxW97Jr9kICNauPQC5GalTgIDhr9ovQp6Dr+jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eAW4i5+fwKZ+iFJhud/55OeQNFogFND1U5p85G+4MrU=;
 b=N2bTKRmvDJZsPXlF1BbH9HkcDJvReTmwKnhDktXN/BVdwJvfIYDcCDG2DrtVJ0KynW6ronRl+QWaAUHB01cJjRL9bssiAeOSTycRfxcnpSuVRNNltXcbReZ/oKynXBFvFlY3DLpo+opQuDC9xYARBN5GfpX5kNQmjMDghnr8AXBDLXZA7ESl10MOIfzF/Jh0ms5sMPqlFvqRSB3INy0hyBwIXj6Yn4YBr0t9WvLW94SGxaDl+zPsu6evHDDydqLb+gmdxQPgp9jMSyGxn5LvQaGbf4WQ347UNERNhMV9tutLSLVQbpsy//vJrFikCwkd3ufhDjN/KA5g3UhSe7v/fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eAW4i5+fwKZ+iFJhud/55OeQNFogFND1U5p85G+4MrU=;
 b=PkIZ2nxVW6z31H+pOt2X24jfTWx0TUMFLaDrS9g63y2C+pV33Ww1TlmLC8GAzW/wIBf6w6fN+eISjpe8R+jUIjCZCJoVbvXoRb0EC+N9rD6UJfhy1atofnmh5xP3Arfy3CcHcc+5TkKaYdi2To7MWlYj487GdUYrnwq1L67YaQQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by PAXPR04MB8474.eurprd04.prod.outlook.com (2603:10a6:102:1dd::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.25; Wed, 4 May
 2022 08:47:24 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::28d3:b4fa:2319:83fb]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::28d3:b4fa:2319:83fb%5]) with mapi id 15.20.5206.025; Wed, 4 May 2022
 08:47:24 +0000
Message-ID: <7613abd6-110d-d1e7-a0c9-adb35bc8c64f@theobroma-systems.com>
Date: Wed, 4 May 2022 10:47:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] Failed to build kirkstone branch
Content-Language: en-US
To: JH <jupiter.hce@gmail.com>, yocto <yocto@lists.yoctoproject.org>
Cc: openembeded-devel <Openembedded-devel@lists.openembedded.org>
References: 
 <CAA=hcWRLJHs+P-uzrEa+JGrqp-PBeKv8fHwRCmKPzioXUV=n-w@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: 
 <CAA=hcWRLJHs+P-uzrEa+JGrqp-PBeKv8fHwRCmKPzioXUV=n-w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6P192CA0085.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:8d::26) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4e161e5a-81f1-4797-641e-08da2daab587
X-MS-TrafficTypeDiagnostic: PAXPR04MB8474:EE_
X-Microsoft-Antispam-PRVS: 
	<PAXPR04MB847494AE1E171DAE85BFAAD5C2C39@PAXPR04MB8474.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vraji1sH/BhkJDmr4j+6cxjOB+MoraMqiYq2EoZZ2ZEiI4Z36xyYluNOVyl2SPh1issf7xtJ2v8KwmIva7tLiOXR2WWLuYWQ07UTJb+QZ0BZJcD8TPkSYVOvlGYoKwJy7gqXqkOyUk70HDNF11OOcJd5Y/CvIMy9jBSFD9HclHaDwerkw8RSfb0TK0Z+uPG7LJP3Rfz0nG6X9oHyYZBDydKZdhyfYaENTat8QSEiJQCHPVI0pqAYNxmRSy9GnDzVzI8JAryKqQ7poSjpBRVMQMRuB6wGnNmCnik764uibuU3AYLfEzEzJ8lGqGrhKz37Hp3WOxD8992nwQBCIjFDE+wd+SVCbk39oz8BazwTg7X4o5jXIo9FzMnghyZmaXPLOOMT/9pTX/BHWSlDt4VhuZueWIwzppYuKHyA+O4ey7aaXkSN4QpiKWPRgaFAm+2qaT8U9HXPgdh1ZeIJr1WduQ771zqU/JspLMshI+pnnFCN9r1mJPZIk4FX6whrwO77Zbm+0St/5O7CeAJEM7lepWkXS/As4fdhElZO+KXTEAuS4DKE95Y2lnNUTOoJm2NQaBGK+Ndawc0T+kQAHRXjpY22Db4LLOIHHK8Q8o61xwMCiYcJbjKsbEhYAXfDKhw2lPaDiI3abXX5GE67TjXPX3vpPze27OHv2QOVepYErBCtvuQlsLumzYMMxYQR3x+xcmr0uFJOfx1QcuqpA0Kh2nAHHbHEBtm0aCBUq+kJRSeQztYgPd7l+pfFLoPOF6gOnSfAntIQJvgaC23sH+h2KT3jlW3575qypqp6451FM5JIMv+ZIUuQzYV6DkDvCA2S
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(508600001)(83380400001)(186003)(5660300002)(2616005)(31696002)(44832011)(8676002)(4326008)(8936002)(966005)(86362001)(66946007)(6486002)(66476007)(66556008)(316002)(31686004)(66574015)(110136005)(53546011)(36756003)(6506007)(26005)(38100700002)(2906002)(6512007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YlYyTGxYT3AwRVdYcHVFV0srZHU0QkRRNDdGVXpRellqSC9RM3hoblpISVJq?=
 =?utf-8?B?MG9CVWJVWGp5TjVHMCs5U1R0SHhsWGFmbXpVTDlMbDVOOWIzaWE3eUdCK041?=
 =?utf-8?B?WTh6b1BjZ2ticXNJK2hBdUxzZ3ZTa1pWMFFycnJGekkwTnFGYTVyZE0wSzFT?=
 =?utf-8?B?cFkraUUzTHg0NXZOWk5pNFFHOTU5ZnBTb29BZTUxc0trb2lXcktSQTZYUlIw?=
 =?utf-8?B?aHZscXBKSmJ6eWdMVHUrUTE5c2U5SGRZTkgxSmZkQ0gxaWRFTHhsbjB4blBL?=
 =?utf-8?B?OStub2VSOW5ScERDK0YwY0NCQkZDS2drcENtS2FVK1JSL0Z5Z3ZwamFWbVBy?=
 =?utf-8?B?UkJOM01GSmhlUndlMnd6MzdZZlR6MmtIQ3FRVnVQY1p3UlY3LzdjTU5qME1q?=
 =?utf-8?B?d0Y5eEVKRGFnMS9YMmlBMDRMa1JSbHMxeDVLTzFRcFF4RVZuekg4VFJzZGU0?=
 =?utf-8?B?b3B6engvdG9iR0VkY0JHVXBySFIyMWNoekRoaEhGV2N5aHJFT3NtRmE5T0V4?=
 =?utf-8?B?RklqbHNTamYzcnhqSXg4ZGFOVjI5MytQRlUyVWc5UlBwaU83d3g4Z3Vwb1VV?=
 =?utf-8?B?MFdJYXlxbXZQTnY5ZmNON3NLb05FRHVTVVVNSGRIZnozb1c2YTNSUlBXRXEy?=
 =?utf-8?B?OCszd1ZwRFo5VXNvMi8zYkhBNXFKeGFFOVRFckZ6Z2xFdjFHZEtEd2d6QU9m?=
 =?utf-8?B?b3JFK1NsZWdBdW5sQUVmSkZqd2pDS3o3SDArSFpiTXhlTjhPRFB5WnZKOUMr?=
 =?utf-8?B?K2xSNmI4OU16elR4Y2VJVUNFbm9pOVFBbFlBVjR1UFVrSmdwMStjQm5wY2NG?=
 =?utf-8?B?UHovaGVqbFNrMjJEMzRFMW4wNk9pK3RRbnB3VS9VTjQwdk1qdGNkTWFvSSta?=
 =?utf-8?B?ZUtBc2FFVjVDcVBnQnVqM1dxeVMwbDA3eWtXRXJMbmRBRzhHcjc3SDJOMUxF?=
 =?utf-8?B?ZTRkS3FKenhDK1BOU3doM1VMQWdaS3Y0WlBCOW9iRFRHZk5oK2I5NS85anh5?=
 =?utf-8?B?QkRZTzZaNzVHNSt5WlZ3QnA3TFlQNlE4OTN3KzNJcXdGUGNHYllwRkU4dk1J?=
 =?utf-8?B?S1J1WERkWVdSMGhKcTBqMEpmK1hURkw4WEhXbGJGNE1lY0s4SzJmUnZtNkhh?=
 =?utf-8?B?UHQ1WXZNNWlIa0xSQ3pXZlJOMTdHY0NDUzkzdlNrbTF3MUNHTUFnVWxBODVN?=
 =?utf-8?B?M0JFRVNPTGdDcVZ6dnhhQjZ6K2dKeGpoWm9FVHpwWFBPdnVadmFadWNOUFlU?=
 =?utf-8?B?RXo4UXM1Z1dMMWtzWjYxZTNSdTJXdUYxTHdOUGFJUnlFVWl1ZFVOUjA2OFhi?=
 =?utf-8?B?bXdLS25qSjIwZHlPWDVDRHRkTkg0UFUzUXo5ZFcrak45OWJoZjhiTzRybWhZ?=
 =?utf-8?B?Y1dFNnNRdjdTRXZKWmNZOVkvcEJoYklIV2hIUTZiRDVWVm51aWNUUnNUT3FP?=
 =?utf-8?B?cmdMdG9WQ0c0SUtRSHZiYlVLOXMwTE9vSDdzaExCc3pXekpXeXg2ZDRjOTZs?=
 =?utf-8?B?YWxRNFJXNCt5UVErai9ueTdSTFF0WUM2TmJmR2V2OFV6eGRwMnVhNGtsamEy?=
 =?utf-8?B?OWRkTWRyOUVqSU92SHVRM2szR2t5Y1pFZFp4blExMk53dElEZWgzVVdWYUlJ?=
 =?utf-8?B?WmN3dDRJOHVYaXh6dzNxNVVZTGRFUDJ3czlzbkZqYlBmZWlkYTBGN054c0pP?=
 =?utf-8?B?RlVySFZLMmtscTJtZzRrOWdCeWVkZEJja2VTSWtDQ25jRG13QXNFWlVzRkpB?=
 =?utf-8?B?N1VsOHJscisrazh3TXoxZnozSmdMeTdBb0NENHhsQ2F4aUdUOEtGd1VqWEdn?=
 =?utf-8?B?UFBUVTNoWnFoSmZ1ZVpua0Q1TXFoeWpMVzRJbDlYTDBtcHpZRHVJWHcva1hR?=
 =?utf-8?B?RjdkZnlvN0M3WWNMUEljTU9YVmNhN3Y5dFBzMUZabG9WdHNkNktHVDM3OE03?=
 =?utf-8?B?amFPeHlFa1drWTU3aVdpOUFYZ1M2L3cxeElFc2VKN3J4ODh3QXBhK2wxU0x6?=
 =?utf-8?B?akJRWWl2RTRsVXpTN0NTR09yMnRVL1VVTWdrRUdmdVlobnZVVE81ZHkrTkln?=
 =?utf-8?B?S2JHSWtmSmpsZUhjUWhSMlM2U0hFc3E2MWxpOTJvaVg5c1YzWVk3SGwxTkZK?=
 =?utf-8?B?TUIvM0NMWndXd2VmcE1uUUtBdGJGbWNqWDJRZlJhV29Tbi9YbjlsV010anhU?=
 =?utf-8?B?OVhCZk1sK3BaTS80MFMrUHhyWnRGTTA3K1pJc004a3krTjZkTGFhT29xZ204?=
 =?utf-8?B?SEdtNWRpZ3FEQkNmQ2tIRWc1VjRSZ2hHSFZ0VFYydmNsT1ZFZG9Kb0xuMy9N?=
 =?utf-8?B?YmxyU2FYWk1RT0tHVVFGT21xSGRLMCtUc3ozMjhvVUxxSHpjNitZMVlmdjhI?=
 =?utf-8?Q?Tu1463WdMelhyefbze3JnDvCBrVmSNn2iS3kh?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4e161e5a-81f1-4797-641e-08da2daab587
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2022 08:47:24.5678
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 xetuFr0HGidxHlf8gV1Lp/3CjY926y3yLwKGjDB7EbxDPjI0bRzYNm7SYipOzJXLIT56D3j1zFPBmC7hYSvHJ70bv5TvTVzO2IPZWsCKc+0dSWfXNnLaYblpZh6NMXQD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8474
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 May 2022 08:47:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56991

Hi Jupiter,

On 5/4/22 06:55, JH wrote:
> I was able to build u-boot-imx-2021.04-r0 in honister branch, but
> could not build it in kirkstone branch, here is the error message:
> 
> ERROR: u-boot-imx-2021.04-r0 do_fetch: Fetcher failure: Fetch command
> export PSEUDO_DISABLED=1; export
> DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"; export
> PATH="/build/KirkstoneRam/build/tmp-glibc/work/solar-oe-linux-gnueabi/u-boot-imx/2021.04-r0/recipe-sysroot-native/usr/bin/python3-native:/build/KirkstoneRam/oe-core/scripts:/build/KirkstoneRam/build/tmp-glibc/work/solar-oe-linux-gnueabi/u-boot-imx/2021.04-r0/recipe-sysroot-native/usr/bin/arm-oe-linux-gnueabi:/build/KirkstoneRam/build/tmp-glibc/work/solar-oe-linux-gnueabi/u-boot-imx/2021.04-r0/recipe-sysroot/usr/bin/crossscripts:/build/KirkstoneRam/build/tmp-glibc/work/solar-oe-linux-gnueabi/u-boot-imx/2021.04-r0/recipe-sysroot-native/usr/sbin:/build/KirkstoneRam/build/tmp-glibc/work/solar-oe-linux-gnueabi/u-boot-imx/2021.04-r0/recipe-sysroot-native/usr/bin:/build/KirkstoneRam/build/tmp-glibc/work/solar-oe-linux-gnueabi/u-boot-imx/2021.04-r0/recipe-sysroot-native/sbin:/build/KirkstoneRam/build/tmp-glibc/work/solar-oe-linux-gnueabi/u-boot-imx/2021.04-r0/recipe-sysroot-native/bin:/build/KirkstoneRam/bitbake/bin:/build/KirkstoneRam/build/tmp-glibc/hosttools";
> export HOME="/home/jupiter"; LANG=C git -c core.fsyncobjectfiles=0 -c
> gc.autoDetach=false clone --bare --mirror
> https://urldefense.proofpoint.com/v2/url?u=https-3A__source.codeaurora.org_external_imx_uboot-2Dimx.git&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=zR34sw-YnO57-Zac0PotHxM9ERTqYXBvVh5cWoolCog9tY7jCwNJUmq_3SahhlfR&s=J4bkX_EUta16oZ6Gq-nskMIou7CoiN-sXX1_sn_xZbo&e=
> /build/KirkstoneRam/build/downloads/git2/source.codeaurora.org.external.imx.uboot-imx.git
> --progress failed with exit code 128, no output
> ERROR: u-boot-imx-2021.04-r0 do_fetch: Bitbake Fetcher Error:
> FetchError('Unable to fetch URL from any source.',
> 'git://source.codeaurora.org/external/imx/uboot-imx.git;protocol=https;branch=lf_v2021.04')
> 

I've had numerous issues in the past with codeaurora being down or 
extremely slow, so I wouldn't be surprised if that was a network blip of 
some kind. If it happens reliably in Yocto but never outside, let us 
know, then there might be something wrong somewhere.

I recommend to host a PREMIRRORS on your premises so that you don't rely 
on upstream websites being up.

Cheers,
Quentin

