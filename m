Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4965D6EBFA
	for <webhook@archiver.kernel.org>; Fri, 29 Nov 2024 10:15:23 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.75])
 by mx.groups.io with SMTP id smtpd.web10.112677.1732875320717895874
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2024 02:15:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=Ep/+vrrN;
 spf=pass (domain: cherry.de, ip: 40.107.20.75, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=soliho5K9nF95189XOo+bNWMzihuDBJ8vwJhNiHfhJZmKqReNh+8K/4G7Bqp/5tNmG0ta4IDhQTQoaWcGypDy21HmpcI3gZFnYVKIPz3GebxLwXpIdGwq7dd39VhKrgGSpkbSMYP3pwkiewsDs4sFdSYcd5aoGPPM/9rVsHCgbaZYJHBCxT7os0/iizR0XGJUlRKt32p17ML/rGfLYZ2YGD0ovQjSO8B2IuswoCmn8081ik+CWUJJsL/bfO0ZaumorjRx7p0UiYLfMkNl240hJ0nPPOvpN1CW70bCibKpDo4DCyt3Knex1bX/C+TKs9iA0xAwIHF5mnBC8qiW9jkBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n7S22S1hMlw6dVcFkCe/ETbBB++1nZvYojQYZFJYqxA=;
 b=Q2ouAhpCyT98TkDAwgCHDn5MKQ5FEqGByUkcFbRYS5BzB0Wv1pWtqETmkIxJBylyH2H9MoujBJ0GlhvWckFDdaB+QzIvL+1+xQit3Iq2jNh2sHFWG6cnyCTtEFA8BJAkptQIxExBGvSmTXCDvjhTxeYU0zcdapHImokKcLkB9jhuuPeb6MITrw/c3c7hQIV5n9ZE1cJo2H6xf6aHymdB83aiD7qidr/l/eXwByS69ZR9FYeKoFGGQ76hUQ1/NnngLNKnUpHzUu5FSYlN2cXkE+nT8ZVSpmqLybNdFwZX4eL6tY1Enhfr3MV/pjWdn6ApQ58hrwv2CMx16AIJXi7H/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n7S22S1hMlw6dVcFkCe/ETbBB++1nZvYojQYZFJYqxA=;
 b=Ep/+vrrNJnN9tSd2m1lS3BNweGGn7Dvkbjt5kCLFFxbU9jOLC/p8+wZsKk8nIYDA1Ck30NSLgb31vSS+VUAyIEr7XGF79Lx28cU5KbA+Rzfw8uifJh2heQDfvyxMnM1XP/gr+Vo0yW9y0mi6LBrvfrJZmXfX4IxeE1EbmESxVRc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PR3PR04MB7260.eurprd04.prod.outlook.com (2603:10a6:102:8c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.16; Fri, 29 Nov
 2024 10:15:17 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8207.014; Fri, 29 Nov 2024
 10:15:17 +0000
Message-ID: <465a05d1-4268-476e-bd83-5eb82bd62922@cherry.de>
Date: Fri, 29 Nov 2024 11:15:16 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Backporting in Yocto
To: yocto@lists.yoctoproject.org, posinaaravind0205@gmail.com
References: <CALvuYr=oud5yZHATSO0PSxGsvY6BhAUGiP9kq=oZE5o-c5MgUA@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CALvuYr=oud5yZHATSO0PSxGsvY6BhAUGiP9kq=oZE5o-c5MgUA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0245.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:af::6) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PR3PR04MB7260:EE_
X-MS-Office365-Filtering-Correlation-Id: 61bc84b8-f9d2-4372-c182-08dd105eb8a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ODRKUjJyT3NqR3IyL1o3ZHQ1WGJxK0dpalhIUHp3R0lTanRqMGlNSXFBMzBt?=
 =?utf-8?B?RGloOWp1UkM1K3hVdEQ2ZlRZRjR3SDZzbVp2QzJwbWZlSmFKMjg4Ull1ME9u?=
 =?utf-8?B?VTNNbzJzY0dqVHdLOEdYVWRCMWNNV3dRVE9pN1MrekJUNGs4YzFmcTAwa1ho?=
 =?utf-8?B?VU40N2tBYS9GQlJoV1UwS2tvbGk1R0tvZVRQNHdjbkxweUw3cTNVb0Zlc0Fr?=
 =?utf-8?B?NnRqNXV2d0QzWDJRWkx2cklWQk9oWlRWb2E4cG1FdzAwdzBEU1RYNVpDUWg2?=
 =?utf-8?B?VVllWlF5SHBSVnJyUEVSK0dVZVFqaDBpclpEQVVGM2xmZHp0RVIxa3dES21n?=
 =?utf-8?B?Qk1sOXhLMlViSGdCdFdiRW1GOUVZbTErTXptQzBGdEJlRERSK0NVcWhrMmhJ?=
 =?utf-8?B?enJPTktZUUIyYTBxc3RHSGt5bkJPOVo0SzBmajk0SklLanFXZ3dKeEpVNmYv?=
 =?utf-8?B?Nkt6eENKTXV2akJOc1dsalhvQVQ0RkJaU0R3YUFsTmN2UTB1NldSYWhuWEhq?=
 =?utf-8?B?bEc0YWFIM2g0Y0taOGo4QnpUbWIvMGl4WlBnYVd4L0hkR3I3c3BIZ1BqSm9M?=
 =?utf-8?B?NmNROG5hdi9NZ2Y3UXdWM2pBTEtnd05td2Jzdm92RFJVREcxQlh5MlBSWEdH?=
 =?utf-8?B?TjdoRGJHdGNvUmZORW0vRVg4TjROc1RtRXpNQTFkNkdGYkYzZGx6VE96RWpq?=
 =?utf-8?B?eCtldzRETjVKTGJxWEFZN2FSS0ZKdUhDVlh1SjYzQ3FXVzl0M1hGVWc3Q3Nj?=
 =?utf-8?B?SnUrcVI1WHB2Q0V1d0hMWWswcUJyUW5UM2UxY3ZYODQvN3hSKzJkZzA4SENW?=
 =?utf-8?B?dWNRcnFGTGd2c3o1UEx4dWV2bFVQVlVUMTkyOXkyeHg2MUVzYWFkOUQrSHdX?=
 =?utf-8?B?Q1g1NHJMdjB0WjYyblJMS01XYkZIT0NrNGFuaDkwaUx3SDVsUkV2bjhqNTBm?=
 =?utf-8?B?R3JrOWlUT2w4N3haOEx6WmtJT0s4bFBVK3FSRTdlWFZib3J4TlM4RkEvS2VN?=
 =?utf-8?B?SEd2R0JRbHp2QWM2SUpvTW1HdVhWMnVFSDdqQSt0YVJUNm5Ob2d1RllqY1lP?=
 =?utf-8?B?eG12TFpUL01sTkNWWUFlaW5SY2srZTdqSnI1U3F3SmZ3L1I3cWZ0akdJRmI3?=
 =?utf-8?B?cDV3eW5id0hZRXBCdXUxa3Z5VkdKeDRoUVdFa2FZS3NTbm96dEx3TE5CNlV3?=
 =?utf-8?B?Y0lhdVFDeGNpOXBwODFmSHBjd054VEYwV2ZZdkZpaGxGREdxNlNiQlM2dEJF?=
 =?utf-8?B?eW9rb0Z0cTVyVDBRdXNUNjBWVDUwRiswME5iNkZhTnRMUDViU3lXbEVIUDQv?=
 =?utf-8?B?UnppZ3pNWU9Qblk3V1pTVnduOUpRQ2NqUTlEVFVkS1ZTcS9oYmhMQXI2MnU2?=
 =?utf-8?B?cGpVclBGelJvaldOQVcxanlRS2krV2tOZnhxenhuTllJSmxYaXRjQmdSY3pm?=
 =?utf-8?B?RUFUSHcyN2ZnN2RsOUV3aktoS0UzRjhDVmkrdnNjN2xyalczT1dwTDd2MG4y?=
 =?utf-8?B?aFV4N1lDZnVHNEc5UlIvNWdnbFdsaGthMzZTVENLR0s1M0pEVVE0Z21oYzNv?=
 =?utf-8?B?V0NPdjljank3NUlsQUNaeXZSN0d5U0xqMEdVSkRoQXFhZXoyTjhBbkozZUFt?=
 =?utf-8?B?YndPYzhITURUYTh1d25ySHl3THZlRlNmaU0rdUd1ak12bzFMR2NrTERjNXUr?=
 =?utf-8?B?RjQyTjZnd3JnUDZKKzdxWFZJTEhUSUc1cDVKMTlUUkRKcHpvVFAzZUJxa0Qz?=
 =?utf-8?B?WUl6eEswNk9aYzVZbHFFajE2cEJSV21GMUN6YkNGSTZ4NTRyaTVKMXhtWS9W?=
 =?utf-8?B?cmZMaXJnbWFrbUl4eWxXQT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RjZmdGZIMXJyTkZrUEV6aVQ5N1dHMWxQUVlERVVxNSt0cm9UczVYZTdvdGFv?=
 =?utf-8?B?SmFyRHY3bE05YWFKS214MDRFc0U3WGRLZ0lTOUhTTlFSL25pblFJa0FMV253?=
 =?utf-8?B?YnlSa1JuMGZXTWRPRXc5c3VxczlycFNGOG1XRi9JT25NZ1BVSnZ6bWdlWWZl?=
 =?utf-8?B?T05DLy92cDViK1BNYkZ5VC9zQjhpS0Uzcm1rT2MraUIvNUowaElWRmFjZjJU?=
 =?utf-8?B?SGdTL1pxOEhVMnNiMnpFcTg4SzIyaDV1RmtTcUV3dnI2aGpUR1dnVDBCZ2pp?=
 =?utf-8?B?U3lCZ2xJYTBITEwrZmZkU2t4ZXVnenFteXQwcUpHVnRQemRHdXc4WHhzV3Yv?=
 =?utf-8?B?Q0lBMlA2NVZUQXhaazhYZmxwUGZuRklxSDlmaE9lV0k4Y3pEN2Q3NnREQUEz?=
 =?utf-8?B?TE1GTnJyMGo1N3RNT2VQSGVJdEpoNURFOE5vZmpaOWNNQW9TdWpRMFV4K2Iz?=
 =?utf-8?B?OXpOMjNwSUx5ZElvVjB1TGZNT08xRmtveFVzZEJPNk1RQlZCbzJJc3huc0NE?=
 =?utf-8?B?aDJkWm82UHNIWTZCTzFIUWRtVi9KUTBucGtLU3RDTHlmQnR6R3NJZG9ManNi?=
 =?utf-8?B?amkwaXNMdTlRT3drRldjbUloWVBZWEtTMmN2Snhzc1UxWXYzWFM0Y0xNYkk4?=
 =?utf-8?B?QjlVUzIwb0pJR3JwRTVGbVVjTzI4SUlybWR4dGc2ek9hVVZsSHAvM1crVFVi?=
 =?utf-8?B?TnVmTXc1TEM2ZVhSMHRBRk5XWWdxSFdrNzBhRkt3RnhCK3p6aWxJYUpjVFBr?=
 =?utf-8?B?WWRqVmZ3em1vQmZGY211bDFnbkEzUS9PaTMyVjJtY3pEWnVhRER1bzlwSEF2?=
 =?utf-8?B?a1pRcXl0RHJVaXFPSkYvUmptNDgyaHV2ekl2V21WTnkzR2p5VWZmVktuckhO?=
 =?utf-8?B?a2dYdmllV2JFdHUxbjEreXZSTlhpVVJyM2ZQczhuV3g0eEVteGJhMFJzcDdY?=
 =?utf-8?B?cXRWMFE2SlNqamY1V0JyTlZma0JCNW9mV2RjMGFOMlZDNlRYZ0NGaTZQMEs0?=
 =?utf-8?B?ZDJIMzJBcUhLOFJyMlRuWnQxek9HZkpCeG5rdUhIRmVONDdoQmozL0MzUm94?=
 =?utf-8?B?S21MSlBiSkZGTktSd3lvT1hIcDVWeVBrN29oRXNwSW9nbG1HM0w5a2lzNXNm?=
 =?utf-8?B?bzNJWDE3YnFGcGZUL2tubnlIdTRMQ0I4MVZSS3E2b1F6RW5jSGx1YXFJZWZr?=
 =?utf-8?B?dW9ZQWpXenQ3NWVwdTk4Q2t6VFNXVGtDY2k4QjFCOEk0RzJKRkJsaS9XdUVW?=
 =?utf-8?B?Q1AzaSszeEpEM1ZjY1lleVptdnVUUkVKdWtTYjIzT3JvK00xWjA3M0pvWDQ3?=
 =?utf-8?B?RnRDYnB3dW9lMkVVNWY0Q2N4Q1FUVER5K1lzNS9BV1ZMVzU3clVqOHZuU0JX?=
 =?utf-8?B?SWptN0FyVVVxcWRNRkQ2UnR1UUZEaVVUWjdCc2tKZWlyRHJYUVV6WS9TZHNm?=
 =?utf-8?B?TC9nZWtnTi81Qk15RHhwSFh2ZENVSXFRb2s5QnFUZVVTMjNsZXVSYmx5OFB5?=
 =?utf-8?B?MXpQYklzZG10aVVyTkhCSTMyTWFjck1qdVc0dEJhWXFoTDVOVmZmbWVCaXN6?=
 =?utf-8?B?Tkpia1lpZnpVaTlRM1pEdGlud3FzZDBsdittWFN6Ty84TjBBaFRPMVp0RkJ6?=
 =?utf-8?B?elBsaEp1TUkvNDlrMGlLOHVjcDdXdG43YkpsL09BUjBvNDBOMnVndFZ5Rngw?=
 =?utf-8?B?QWJPZlhFUUd3ODQxY05mc1QrYjAyMnoxNWNSS2RKQ3VGZjRkay9GS01NYSsx?=
 =?utf-8?B?UzRYZ05Zd0NSUFFjL1FsMHBYSzhkZ0NCbXRzZmYxYXFoU0xTUDVqd1FXM3lJ?=
 =?utf-8?B?US9BNGJTQ0hCTktqYk5RWGMrZ29OYU5RRkp2TG1RQzNMY2NHNW5oMEdDTzVi?=
 =?utf-8?B?SUV6YnFHSU5IbXo4RVdHS3RrcG5kTkNSM0lpZ3UwaUVWUFIwTGNpT0NOSUR4?=
 =?utf-8?B?ZHJjaVJLUHV3dzZkYXM2czQ5N2lNWVBuM010cCtPNHVPWVJ0WGRMMURJaDFI?=
 =?utf-8?B?MGQ1dVNpdlVzc0JselRFclZKelFRS3dQVk1IRzBTSWFpdHNiMGlzZ25HTVhT?=
 =?utf-8?B?cnVESmxHZklOQ2c0bzFoTWlzTFZCN1hwemgxUFJQL3B6YTBPYks4QUlwLzho?=
 =?utf-8?B?RHZGTUN0YlNGNkdBc2dwRVRBUGtCNzRQajZ5Vkg2VkhldnhXZWxiR21PeXFy?=
 =?utf-8?B?bWc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 61bc84b8-f9d2-4372-c182-08dd105eb8a9
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 10:15:16.9535
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N+t1qkaYc/cgVLxZPKFkyBGEslQTRcJ1BKiJqcV44PL2gSryg5ejki1IzHaOIv1kji/6OhJ4BrgCoAEtJR1i/aXr3Ql0PZEvv60AvNRjjFU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7260
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2024 10:15:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64380

Hi Aravind,

On 11/29/24 7:31 AM, aravind posina via lists.yoctoproject.org wrote:
> You don't often get email from posinaaravind0205=gmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hello All,
> 
> I'm working on yocto to develop a layer .In that customer wants some out source wifi related module files . From yocto I'm tring to build the .ko files into the rootfs . But whenever i try to compile my recipe i'm getting some error. in this can can anyone help out for this one . does i get know how to do backporting through yocto.below i'll mention the error cases.
> 
> 
> ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed
> ERROR: backports-cypress-5.15.58-r0 do_compile: ExecutionError('/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/run.do_compile.2980720', 1, None, None)
> ERROR: Logfile of failure stored in: /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/log.do_compile.2980720
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4 KERNEL_SRC=/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-source KLIB=/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-source KLIB_BUILD=/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-build-artifacts modules

This is the command that bitbake runs for you in do_compile task to 
build the modules, i.e. essentially `make modules`.

> | make[4]: 'conf' is up to date.
> | #
> | # configuration written to .config
> | #
> | Building backport-include/backport/autoconf.h ... done.
> | make[3]: *** No rule to make target 'modules'.  Stop.

and this complains that your Makefile doesn't have a modules target, so 
`make modules` isn't possible.

So this is likely an issue with an improper Makefile, but without code 
(the makefile/tarball you want to build and the recipe) we cannot tell 
much more than what's there.

Cheers,
Quentin

