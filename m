Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8474C46467
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 14:36:11 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.67])
 by mx.groups.io with SMTP id smtpd.web10.65066.1672756568917553631
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 06:36:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=jFImBZsF;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.67, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dney/O1PQSbUm+uHnm1TdiN8ciXZW6894IMpH55Bw22VMqWdcJAZZZDQHzMJ6Ni62wUQIuHfq23eghIYCSDMi0WrwRAGRHRMX+jW6x6guYKnFXm14iagWRD8w4QZuDxEjnq4/H4Cz3/4L7YD/dyvCGU69Rn/3aIwem89hkFDEbXb2dSzKtNsrjPAa9bTpoekUr3zKZXsN2wFIXRqLaSmRYG2rtobbyqbfx0ni3rmrVoi6Lt2a68Sv0tthLVxHFyOGJoYVs+CgH2mus0UVDhpwRI2lxnqhojZ75cR8B6IzWte5hBKDZOokh/2XZ3q0wdY9UmzJKFbzJfTQtjmsdzITA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gNHxtilUOrxQ6H2/K9YhJ0auhCI50jsoMAoiSEX3Y2Q=;
 b=KHh1euS6uycSWEzH22Bp9sV5X7a9GUBCw34dMMeA4F454EakPe8cYTjfeIbVqb5OQ/VM3P+Xc+9lTOSdkPwfEqdnI08GxWvlIEK0lYq8GozmvxD828iR7qoYbXcmQB5hozQVqcW/aeOigTwT5oZcXBQxoOxqITMXP7pSlmADqzhnWwYNrDyxjglATEDoR3Y9Dehk3dECCLT6R4MXc/hjiZsj0GmnNt93m/NYMnbU3eFgOhTYtoUfAJ78NyKtcFJt4hnFys5Gbla/xWscwsWDvVcXIkUx9OqhOl0zLBYhDkIvmEx/bcARRdD+RC/hHCzmCIBiNzGe3smXUadjTLOm0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gNHxtilUOrxQ6H2/K9YhJ0auhCI50jsoMAoiSEX3Y2Q=;
 b=jFImBZsF0V2UvoasRDqF9l3WriiNRdxdEx+/4X4mDb8LNvdOeGB6SDd9Y9OiBTfprJ43I7wm1Yi7Y5vIJ88TSUbLoBh5gzP1/+TMHcuhBS0WbyerWfaLC9JekpO18ELfLxpweixOACK89SFtVqOyfmMpD1SJH38jk4LXGDf5xA8sEKrpIgnAwo2BaEOVar7hNIk6RphB+I3565unmUqQaLhkUppFfgTBW+J+yse3aKgKnj+UPsdjVJAqWQHRYrPpvVzlkklsGy3FmBV1tGEVrV+j/iPHXr9qYP6CEMpyeYXdLji92gRLstBn6ULTiO5LgPVEB1zWHdUFpAdgrp1ysg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DBBPR04MB7900.eurprd04.prod.outlook.com (2603:10a6:10:1e8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 14:36:04 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6%6]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 14:36:04 +0000
Message-ID: <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
Date: Tue, 3 Jan 2023 15:36:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] bitbake controlling memory use
Content-Language: en-US
To: Ferry Toth <fntoth@gmail.com>, Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
 <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0151.eurprd08.prod.outlook.com
 (2603:10a6:800:d5::29) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DBBPR04MB7900:EE_
X-MS-Office365-Filtering-Correlation-Id: 95600fd7-4301-496c-f644-08daed97d7b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	chO2dF3nUyLBoKWVPrtNvnPoVk0Z/DV7sZxAp9OL/2rLa96ksoGlS19/C7oaghM6ix6IJ6LWizH2ouE1zxQCmLHoCS/G6Nz+6OkARqJ70a3+yMQtmpibmCvz+56xE7rBhVtsPinNATLr5wPmk4RaFtbM0VIvdSps7rRUTsyKjVb9mryYT+NShRbNF+GBhbjQ33MSwagP4p3rftsJw4LzwTRh14vDSyDaoiMOYR3FIrf2I7rNzB7O2qcLpq1/8lyQHLjqAzxL2ONBMpot8mgzrpvRGffQF8CPt9uvweN/NtgPWLAzJVVCql2TymIVQVII6Ayf59FGExX8+jo+e7Z9FWPJMECjZXT5qxOGIqj405KqsiKwzU4VFvIxnfhIdm3SYx17by2WwXClKlrpDErDm3LL/VvNd52tDZw7kHtA1QiBdNCDa6aZAj1IucYvRWNdUYWl5CELt4cGgUZCquowR2upzjLhLAfDTpV4yDQ6L/Q4lMG+9XAFgudcFz4Fp7x5bSbtibj6YpcjJy/UlQf3VLCziYNEC3nH0KQJs8Y477a7NHY6/XbnjKjDq0NDI4YnsKRhN/nkexvv51s/6CbebEmePpI+DVvPqqRT1t4Q6oz8ELMsmkcvgjCuUksRKX2c4CLj5u12z2W1qelEZeJ9+PrvZmLR2wgHi8rHtGtmnWgFOXIf1yMV8Apdi2Ks9E1gD/chACuMI88IwhMjCb9LGiiCwXid3gAqdbYEPq7FZQTvM89p8w8UoGyfRGawZ5B0XoRup6n7W944Tek+qtNRhQdIJzYq/Y+vUmX0tkUoFJw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(396003)(39840400004)(366004)(376002)(451199015)(36756003)(2906002)(8936002)(38100700002)(5660300002)(41300700001)(44832011)(31696002)(86362001)(66556008)(110136005)(966005)(66946007)(6486002)(31686004)(6666004)(478600001)(8676002)(6506007)(66476007)(6512007)(4326008)(316002)(53546011)(186003)(2616005)(22166006)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WVk5S2gxR0Q0WkVNMFZST01TUHQ2WXJaSTFtdDdvcWpSemxqVVlPTzR1YjBW?=
 =?utf-8?B?NzF2bjJrK1FYQnlvUFpYNXducHg3Zm8zNThKczFqNk83QlhEVjRGYWY4T2NK?=
 =?utf-8?B?NmdOL1d0NlpZbExyQ21jTTM5ekhGb1AvZW9yWDA5dDVKY3BXNlZ4bjNZSHVV?=
 =?utf-8?B?NTRoY2t4eW5DKzZoZWNlRzhjeU1hbzRJN1J5OHE2N2I4ekJ5Y3cyNjdSOWlr?=
 =?utf-8?B?a0xjSUhOUHpyanR0aVo4ZDNZcnZlOXhDM3lzZHNVc29PcWpFNU1aUTBTeDc3?=
 =?utf-8?B?L3RqM2hMa3Qzc294U1RvN3Fxd2Uzdk52ZTNwYmpBaXNSb1dLSzhpVm1qV2tH?=
 =?utf-8?B?MmlnSURKMkNKQStnVkpIZmZwVVVOVGNHR2V3KzNrcENYbXRwdmJxTnlaWDlP?=
 =?utf-8?B?alhwV2lrcWtkaDNJTTVqVC9uRktESG8xWjk5bEIvc2tGR2FQWUR0enpFdmp6?=
 =?utf-8?B?YSttYXdwc3diTjZ3L2hYcFVxTTNwdDI0bmhjOUNDWUZGZzlNNkd2V1IrY1JP?=
 =?utf-8?B?bytkQWd5SDdXM1pxZGpPYXQweFJPcUdKcnVxdGZuUm05UGNmSmxUZEM2MDU1?=
 =?utf-8?B?QzR3YU9waGIwbU1UUi9MbytyeUtUaTF4Vk9qVW9lZVVJZnQ3VW4rUmlKeksz?=
 =?utf-8?B?dVYzdDgwWk01NHp3N29zRHgraXkxb21CelFScXBYUzZrMEdLdUZFaDFKVU1O?=
 =?utf-8?B?U3lvQjhISDYremx4NWdrUWJHNjYvZllhM1QzZ0hJcEFVZzA4UjhsUk9Ra2JU?=
 =?utf-8?B?OGllL0xCc2NlM3FnbGxUaXBkdVRiT1BPc0dOb3p1cnIxcFlTMEVtY2RGTUQ2?=
 =?utf-8?B?TjhjSlBIZWR1M1NWd3FPSk8ydHNoT1AxdnZLbDFhYnNDZys2d053ajdHdGVS?=
 =?utf-8?B?bjVibGU4VXF0a1orS05pR0Z5N0xvKzdmcGhIS1E3UyttdFpTL3BFMXliKy8x?=
 =?utf-8?B?VGFxNkN6bTZmcTFJN3YrNlRHdGJDQTROZ0gyT004VGVrSWU0RE9Kc0hTTmdy?=
 =?utf-8?B?QXQxbmp2T0NLYmt1bXBiSC83aDBUaUxvdnZwcE5UeFN0eG1BVlJIN2FLQWhP?=
 =?utf-8?B?ZTNKSE1pY29jZHoxdytHRnBQOEtPWHlJajZCcVNOOHVvcmxhU29mMlE1MXlS?=
 =?utf-8?B?UzZPL3IvMzZqVjRzbmZGb1Rydm81MEsreEVhVDFROG1PbVlmMldmRTV6YVdN?=
 =?utf-8?B?RGFwN1pGWU1Ienh5U1lDRklzWGphQVF6S05aODVuVFg5bkFGNi9jUTZ1WGVm?=
 =?utf-8?B?MXQxVjl6aVlPbGc3amxuVGcrdkxkZHBjQnJMN1NiUDRKeTVTcFc0cU5vVUVZ?=
 =?utf-8?B?c0hleXZ2QTRGRW5FQm8vVzRlSngvdW4ycEIxQ3NhaEpGN0llYUR4R05iWHpL?=
 =?utf-8?B?cUhGUmlNenlrdG9ZVWtLYmY0emUwQkFlYzhZMlhoUkRsY2dpRVByUk1vdE83?=
 =?utf-8?B?YWZVcXhWazRSTWFJQUUvZjk3aXVERXRPVWtoR0h6Vll4ZjNEb0M5blBJb0FB?=
 =?utf-8?B?eHU1K3ZnZTNwbG5JOXlHSnFZWnY0OUJQRC9hUU5qYjFXazM5VWYyVzNBanEv?=
 =?utf-8?B?NytpRUxRWVBDWTBvc0FReU1sblc1U3ZubUtpNzVTaEh2Wi9NajZZU0V2eFZn?=
 =?utf-8?B?ZUtPNGJPV2t0Nm0xWTV0aU0rRFd4VFRDaTNhb0ltWHB2WGJkb01oU0cvRGwv?=
 =?utf-8?B?bHFkeXVrZEJpdHl0VlFjUEJEYjZWeFVJYld5OWZCWnBBTlMvUVY2NUozcWc0?=
 =?utf-8?B?V2RhdnVDOTRFVytPck9KS2hrc2hqSi9MZDlmc1c4djBzbHhkR1YvZnROVWVs?=
 =?utf-8?B?RnBFTjBsOGx4NXRjUDM4ejMrN2I1eEVqMUFHNTRhdENBZWZNWDRYbi9aMmNE?=
 =?utf-8?B?VkREcWdkbjNBaE5VUVdWNitsaHlvYWxvNGRHdmlDamNXWWEwMWxJSDBYVGhz?=
 =?utf-8?B?UjlBYkkycWZLSm0xN2FRZGhhQ3kycDBzcE1OUTU5TWo4RnpUaVlqb0xSMlkw?=
 =?utf-8?B?YnNyZSswYWRHc3AxYmJmczhpbXR1UVljT0pFVkNNdjZPMGJaUytGTXVHZnBR?=
 =?utf-8?B?NG4zc1ZsWXVYR0MvZWtaT25heE54ODRIT3pzUzRFUHBoWE1RNVhpRVBORmp6?=
 =?utf-8?B?c1dQNGUvbUNVTkIwTUZTT3RZd2N5bENMUG5pdnpmUTBsOE9wRjREUHVSWDds?=
 =?utf-8?B?NG9kcjFsbFZaU1djVlJyQld3RDRnc1MxRmQ5aXQ5WkdLTlBPY0plTWt5d2ZX?=
 =?utf-8?B?OGdpcnhSdTlvUExGK0FaQjNwKytnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95600fd7-4301-496c-f644-08daed97d7b7
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2023 14:36:04.4941
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dk3OmgEvYu4f10GGegLr4bsKQjBUvG+yqsAHc7pC3QB5sCEPwbLJEtg186oVYiP0UaoFgKWmz4U7TkIpW8ulBEGiy4S8QR0MIlq79MfqEWsLttyoYe0C1BO6SZFx8IOG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7900
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 14:36:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58899

Hi Ferry,

On 1/3/23 15:29, Ferry Toth wrote:
> Hi Alex,
> 
> Op 03-01-2023 om 15:18 schreef Alexander Kanavin:
>> I have to note that even the most expensive 16 Gb RAM module is less
>> than 100 Euro, and can be obtained for half that much. Surely you
>> value your time more than that?
> 
> Of course. And if I didn't I could reduce the number of `PARALLEL_MAKE`.
> 
> But I have also seen bitbake attempting to build nodejs, nodejs-native 
> and binutils in parallel.
> 
> I think by default there are 4 tasks, with 16 threads, each could 
> require 1GB RAM. Would you say, in such a case Yocto requires 64GB RAM?
> 
> And with increasing #cores it gets worse.
> 
> Not that it is too expensive to throw hardware at it, but it seems to be 
> a fundamental problem that I would like to resolve. In my spare time of 
> course.
> 

Just to add that bitbake now supports pressure thresholds (since 
Kirkstone release I believe): 
https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-ref-variables.html#term-BB_PRESSURE_MAX_MEMORY

If your recipes put enough pressure on RAM before one or two of nodejs, 
nodejs-native and binutils gets scheduled, it would prevent that. 
However I believe if the timing is just right (unfortunate) and there's 
not enough pressure when all three recipes do_compile start, they would 
all start and you would have the same issue.

Cheers,
Quentin

