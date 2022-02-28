Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 447DDC433EF
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 12:50:40 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (EUR03-VE1-obe.outbound.protection.outlook.com [40.92.72.41])
 by mx.groups.io with SMTP id smtpd.web12.19223.1646052638181471546
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 04:50:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=Wy7XmMhb;
 spf=pass (domain: outlook.com, ip: 40.92.72.41,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Meks4+ybaY6w1IqBZjhLRig/UNcGJpfrvF0Fj0NFYrmZSinI3c/Wa5RqClCehIB+1mPW5QMJNEZhBMcaRbm9GIRddIiCj0Fxe+5IHoKmFn2308FBgK43ovXVj1LP3dHUXOFI/4KLnopdJYDkjtdD8zXoa7C4EPY8JFnejsnbCqcX3hRMnJbNtFl4wWm/Ta9tMKJH1m5KX2gNuhGr6YIH13KZTaPTrHTTxYk2aGlsGpEwuiopSGhVtqDP5pY4ZKymhea9iwgY1Fz5DfSl2t2GIu4HRs/jE/Pifo238CXRP8y1HFUACPvYC1M7uEabc8M8Gl4cjmqZCxdREYHg5kawug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eiCDLZQ1l60OhRF8GoIAWI+fjqq4GM4c5X+v8yOVlDw=;
 b=m8KbPCtNS2qdztpCn1K/tI6FaFu7asc5rL4vjeobawvrCEzW0Kskl5nxJUsBB6RM1R3akSDnaneEW2A4ahYBoBd0u+3fpgLrbBlMkFQZ5L1AZnN559LBC+bmqduxR176RrOJwGsrC+pmiY3kLZgeRoWN5PVSlPhiA3DshOZQOoaer/brq43EeXgtTMpcR0GjRh/UawfV0U/a88FyDSpELx56PBlLOzcs0TegLYIpJ5P6QFcsU+WnHKtU7bJonW5VOyirrR4ICvYLduSlM0w5jwkYLyrCdjwt3PFQhWA2TDp+Qfn6pv9ExXeA9PUoyJFtrXXRzXtmXK7uQk5j+4gLQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eiCDLZQ1l60OhRF8GoIAWI+fjqq4GM4c5X+v8yOVlDw=;
 b=Wy7XmMhbyrdr+6LEsyLRWZ1UERsatvww1eMFMhk5yXVXswLwg0On9RUL5bWBXwmxx8FJXjpIyCyo+InMWvGGj5WDCnO+VK/OK8kNYrXe+anIsk0bvXEYM4p0f3y43FR7nr0+Qkmx80rMifaJr+noVtIDvIrKEABnTmYP023uP5/CGIcljkU1YzbynEadVoyUxAU+F4czwYuORpZOXz7pbu094LardPLVgCX3FXTmGjej+u6GojnTOFUFps2SHAMmBiukeXceVmaKohTpDEs/6qiQCDwG9PLwVZqgwPgSSuxoG7EVBZTNxmv3OzMYub6ZTF05mGXV2yb70fL73+LnzQ==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by AM0PR09MB2932.eurprd09.prod.outlook.com (2603:10a6:208:123::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.21; Mon, 28 Feb
 2022 12:50:35 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::e8ae:b245:b019:195b]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::e8ae:b245:b019:195b%6]) with mapi id 15.20.5017.027; Mon, 28 Feb 2022
 12:50:35 +0000
Message-ID: 
 <AM9PR09MB464256F2947816A73AA0CC9DA8019@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Mon, 28 Feb 2022 13:50:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] python3-smbus no longer builds - Does anyone have an
 idea?
Content-Language: en-US
To: Matthias Klein <matthias.klein@optimeas.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: 
 <AM0PR10MB31073672E30DE783EABE13FE99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Konrad Weihmann <kweihmann@outlook.com>
In-Reply-To: 
 <AM0PR10MB31073672E30DE783EABE13FE99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TMN: [1gyMO+f7cyhY7SijSyOQjZ3Pij63gserV6VF+klwGaLhQdV0IpBHKfAnI0xcqQGR]
X-ClientProxiedBy: AM6P192CA0062.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:82::39) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <d774d51f-9eb2-90a9-db50-6d45adc432a1@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 40c3f776-54d7-4ca3-dd9d-08d9fab8e976
X-MS-TrafficTypeDiagnostic: AM0PR09MB2932:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	f7pMa4ZrFrodWxhHfP5GSgg84+S2eS0udGouyi+bmRoCSwGEHHwVyGwGj/TTEkNpJRFNKxmTUPYrILfh18trMtPUdh79NyyLHNY95P97G9BgiPhJOUQV6XPpiqnO98QpFOWag1jLbW5cbolbzt3iGBiQBlkGAZDHvm22mQn/ubnGdkKg08HDbmRROPioB6EF7k86zW12wJblG6/ZMD5FjyZgJJN6s/d+5CHdln1OiNijH73PNS8v+y24Oi783yiWwOjg/KXNh6evmKz13diGcvbvxBrxPHJtev0hQe4AsDmTAfjrDindbnCsty4x46vAvNIN8E9bxY1t3i8/TIqhof1mY9HeyokgJMMKwMhtF9cK/BfdsDxPWz9vZDhte+m9WGLmftNH8JDSlHMcZLbr+0unHvKTMlEjrFGeM3ezIdYeQLdTj1vxd26yxSeaTBXe39dJlhZT6twq4J1zdrQoavGjmuDMKyG9iI0ZE808a6bZErUHnXcocmiPFigUT6HOWNsQ1CWUfCdvO5kZafs/Yksg8wLKFO96pDiqR9SO9OXPndkV5HpgXhvY3T9FdMcp9cU4JxvM6n7P9hOyHPzlK8F+7+MzxHFSfbkkjESv4AaDiTi05gRcHZbnPmPQ8GsX
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S3JLUHBycGRWdnVPZ0xyaVd4S2RKUVFJU2RFbEhPUmpoQ2JISlVzdkRMRlFQ?=
 =?utf-8?B?RFB3eGNVeVRWYXZKTUxUNkFaZ1dicTAvU0ZSbWFMVDlNZlZhcGEyRXBWbVlz?=
 =?utf-8?B?djZEMGE5YUZ1MEluSWZ6NFluVGJUWGZZL2xESWJmcTljZkJzVVdYeDZNMVNP?=
 =?utf-8?B?VC96NnpiRk1BL29CZ0Q2WGIySVdsbHFTd001ZzJ3SmU0NklmWW5Vbm16ZDRS?=
 =?utf-8?B?ZmRkZ05tN25STjNhZU5UNDFnVHFKNEp4VGVtOEJaNkpBaExLUFJGSWFmOFNw?=
 =?utf-8?B?NGFBK04veUw5c3J2S2t3T2wvck04a0RqekV1SnJ1VStkQTFkYWxNeTlrVmlG?=
 =?utf-8?B?cGlhNUE3VWg5VFBkOTlkYzlob2VhTmc3bmZETnlkRmdhbXU1TVVIZzBSNVU0?=
 =?utf-8?B?aHVFb0xjM3gyOEtqR1JlbE00SjNHZlN0VzkxeDU0dUZGajlxRngwMmRvL21l?=
 =?utf-8?B?dzI2UE53MXE4VXJadTRjVFU2L0lna053anoxbGZxT2I4S29TT2p0YU9lSmwy?=
 =?utf-8?B?d0gxbGZKREN2T3dod3IwKzdlREZCUks1b1FGTURPekFtMTNBaDQ1NGREOXR0?=
 =?utf-8?B?S01MZ2h6Sy9MbDlURGxDWGkwQ2VCTkhRazN0R3BZcnRrbzVhRWZ1VnAxSy9J?=
 =?utf-8?B?Y0x5UU83LytQd2JYak4vdm9zWFJZUytIdm45ZlAyMXZHSDErTTV3bUxaeTVD?=
 =?utf-8?B?R3dYY3FnOEM1ajdYNk1nejR0VUxEV1VGUk9QKzRvR3VQZllidXhhdHhwQUlV?=
 =?utf-8?B?R2JrN3ZOSi9mZ0Rpb3psT0R3U3prYkhMQjFFNXA3SUtGZjRWZ0s1Qnlza0Jt?=
 =?utf-8?B?ZnVSR2tCbmUxWWlHaXMxWkhKUEkxQTNaekRKY1g3dlRLN0d1STdZSGExU1RO?=
 =?utf-8?B?Z1FaMkIxYkdSd2ZTOVMxKzNILzVOdERzRWN2T0xUaWNqZks3WTBGOHh5WXFP?=
 =?utf-8?B?S2F6Y203YmxMZElSZUNNdkk4SnNZR2diRVdSbmNWbDZnMXphRjgydkdVM0J3?=
 =?utf-8?B?NzlScDc3QWpYa2hKbkZUN0lMblNLWklFczJuSS91U3F1ejVsQkpFeXNicXRS?=
 =?utf-8?B?SmhRN25RWHAyTkRWZjBUaGtlQjdUdnNjdlo2Q3o4Z3EwM3pxbnIxUDY4R0pI?=
 =?utf-8?B?UEo0bnVPS1hjV3orRkl4YzJYMGNZeDllU1pZWm01c2dmZGUyako5YllnNVlP?=
 =?utf-8?B?UXdsMlFOK0RWU2pPaXBNRnp1NUxmZE5abVc5MjNqTkVkV0paYWpYdUxuMTlF?=
 =?utf-8?B?c1lOK2k4NXh0Y2J2Z1ZLRVcwcEpHZGdtSW96V3dYMjZlTUp3Vy9KWTZpWURy?=
 =?utf-8?B?UkFoLzBQeENkZUtEVTZ0UFJ1aDNZUVJ2TzRlSTZDZGNOeE9NSEFmVFYvM0xR?=
 =?utf-8?B?d3l4a0dORjJnb1E9PQ==?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 40c3f776-54d7-4ca3-dd9d-08d9fab8e976
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2022 12:50:35.1192
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB2932
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 12:50:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56311

Hi Matthias,

this is cause by merged PEP-517 changes.
To make it build again just inject

PIP_INSTALL_PACKAGE = "smbus"

into the recipe or a bbappend.
Mainly the python3-prefix of the recipe, makes the name guessing fail, I 
suspect patches to be incoming soon

BR
Konrad

On 28.02.22 13:45, Matthias Klein wrote:
> Hello,
> 
> the python3-smbus package no longer builds.
> 
> The install step ends with the following error message:
> 
> ERROR: python3_smbus-4.3-*.whl is not a valid wheel filename.
> 
> Does anyone have an idea what is the cause?
> 
> Many greetings,
> 
> Matthias
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56310): https://lists.yoctoproject.org/g/yocto/message/56310
> Mute This Topic: https://lists.yoctoproject.org/mt/89449220/3647476
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kweihmann@outlook.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

