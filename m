Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B40BC3DA4A
	for <webhook@archiver.kernel.org>; Fri, 12 Jul 2024 09:32:31 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.143])
 by mx.groups.io with SMTP id smtpd.web10.3930.1720776741908109119
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jul 2024 02:32:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=MSpoNaC2;
 spf=pass (domain: cherry.de, ip: 52.101.70.143, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CYh2AjI+NuD3HpJVVMgbRsLpOj7QxPlspUdmeKCW54z6thVUWCWnxKy4vr+ss8A/Q6A/Mn8p2zjUIzRi9y6w7Xz3P1fq3GMJ8YVvl1dO4DnxM1VMlAJYzaQIvNjiPWlbkLHNU1O1wY/DWG6EadjUdM1oe9h/ytatFI6A7JWe0X9HpXuWwTB7G39eGmOapwwyepM+lTfrcsF5Va+V1DbyHbLae5ArMFBJdwVk8Tl84tCEEQr4GLPUl7xniH1avJ7Rjm14FPze7jCkQzK7WG7NZZUQCYZmT8VJk2qiMd7mxzyiw0ex4Fk0K5hOBdjWShdFV+gro8stm/aagnoGi4Jouw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZsQq8yF4D0pBlg3tb3bRokAMdGm+qfGgluzcV0GcG+k=;
 b=dAJokxrCddbY+kSC6FVjLbt8r0qvvRXJkmz7ngfOzjTijp2TN0UVDsyViQJglKxtv+MHPYCKjV4xyjPt94IxxQRQp7+VnvCx1eQLfvSQgbRQE41NjXtc4B1XhYjRZfRQ8AqaP2zffWcRwFre35cT8pnqQ3QgJr68WbVcv3BapViIz5tiD9AFGo7DY9Oj+Sz1A7HhtHZtudnk0HiXsxXni/p3UbwNjdC5T76HIO0Bdp8yMgACIU/UpPPhuwdf0Th8dJjlKFIcFNY++ldWdtM1g9rCialYY8+GdUbRB+uP/S7NqYh7O71GvCRLu8dlZIgaxGpYl5AgOiOusY7Fm4HZGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZsQq8yF4D0pBlg3tb3bRokAMdGm+qfGgluzcV0GcG+k=;
 b=MSpoNaC2nDq3Jw1dtuf2WkXB82Awa/myNZ4+h/bHuIUsLhn7nHcodiXJpwEWagGB80RovjkHhWKbb8qZ7YKY3/+Ml4Dq5+veguUDWbHcU7haPsXWoiEm81r+fgHsvXWzp7LZsHei2JSCsrmFyoiTbD/bbH0t6tGPykjt6kWYUjg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DBAPR04MB7302.eurprd04.prod.outlook.com (2603:10a6:10:1a5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.23; Fri, 12 Jul
 2024 09:32:18 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%4]) with mapi id 15.20.7762.020; Fri, 12 Jul 2024
 09:32:18 +0000
Message-ID: <917cfcbc-f82a-46c7-a774-b1ca8e267a6c@cherry.de>
Date: Fri, 12 Jul 2024 11:32:09 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [Yocto][QA] patches : QA Issue: Missing Upstream-Status in patch
To: yocto@lists.yoctoproject.org, ycnakajsph@gmail.com,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <CAC3TgAK9+yDoz=3emvD6GTB6PNNe7=o5w6hkGpWm0juwt_X=pA@mail.gmail.com>
 <CANNYZj99c_sfCDt+MtAswB4UvoTnc-97RiAKjfG5dd7a2kin1A@mail.gmail.com>
 <CAC3TgAJGvSjZ8ZZq35ay3h1-UvOFGZbEd6-rZ60WE=k70-krew@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAC3TgAJGvSjZ8ZZq35ay3h1-UvOFGZbEd6-rZ60WE=k70-krew@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::27) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DBAPR04MB7302:EE_
X-MS-Office365-Filtering-Correlation-Id: 255d500d-7d51-4055-67b6-08dca25585a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WXBxQVlva2p1bmQ5aUswa2JzWS93eUc0Wkw2Sm1DOGg1WFhYWnlzS1NZRTJp?=
 =?utf-8?B?Rmt5cXFuUnp0bzBNTEpjRGtFSkx5dHZPekw2aUsrTUZUMEM4VENId09SbFps?=
 =?utf-8?B?aWdVZjNnMVJaSjdoWFZycGNiYVdBVUMvTFhqTzg0MlhGaENxMnF0SEtydFVx?=
 =?utf-8?B?WTkxSlliTk1JUzBGNlhnK2ZWb2w5VkJSeUdPR2NBc2NBWkJ0KzBwOHhuVnNv?=
 =?utf-8?B?TVFIVTZ3ekQyVDRiVEtrbS9ldUtRRm9qc2VGUjdSdlVPY1BjdkFKbC9PaUUw?=
 =?utf-8?B?czNYOUxHYmFvNXEzakZDMDAwL3hwV2RNSk5FUkkvV1lTSHFJZXN1N0dEY25L?=
 =?utf-8?B?VDkwNm5yQzJYY0ViNUd6cHJmR3JhQUNJUExpY2pmU2xLNEtZRnFIbXY0bXo5?=
 =?utf-8?B?TmoxSXZrNk5Fd0hXMkFlSEVuUWpueGpYYVB1MVdtQ1NjS2ZjUnBaUUFjNkhp?=
 =?utf-8?B?bzFWYXhRWUtBcFNJcUZHL0pMajgrMndyZkhZYUoxbWx2Y2dJalZKVWR1Wkhr?=
 =?utf-8?B?SkZVNVNxTXZTRG5Tdis0K21hN3lJamhDMzFXNmVHWmhidDJlNmdhNzZvYkhx?=
 =?utf-8?B?aWxrTHBKd2tUWVl4SlF1bWoyK2dHZFJubG8yRUVuSGd0WS9zbTZkZW9ZdU1E?=
 =?utf-8?B?Ymg5M1l1cWdUV3YyWEtHVXh2b3hNM0tBaGxnK1ZnbXhIdmxSVERVeGpaemtu?=
 =?utf-8?B?TFBhQUR6dXk4ckxjaSt2TzBhUHVVSUlBRmQ5bWs1Ty8rNmVMMUhOL1lnTytK?=
 =?utf-8?B?b1p5cjZFTXk0REV5cktUdURLWVZiOWJGVkMrT1dLb3Y2WUU2OUlVZ1dJdmk2?=
 =?utf-8?B?VlFKRkZRZWtCWUpXc3ZsSy80ZnNCVXNVNitNM0tWeFF3bU43TzcvTk1SUGJB?=
 =?utf-8?B?RjFzTWdsc0hMNVFNZVRMaE83ZFJOSTdrOC9TOEFSTU1RTjJtYUVsWnpDYmtR?=
 =?utf-8?B?ZmxQWFc2UzYwbG1xa0cwNnJKQXE4bVM2OVN2akNDWkkwdGhYQnpBa2FscUNk?=
 =?utf-8?B?eVdEUUZBMnlVK0pIak1NZkxjTVhOL3ZKWCtMR0RMeFI4VU9JNUtTTTRaNjJh?=
 =?utf-8?B?SFp3ZkpJTXowejJINnVvbndpaW5qYjRaMmU2bG42N1BGRXJCdFRWTFJLUG5o?=
 =?utf-8?B?ZEVuckNTajZXekw0WHZwSnUvbjJpRlIxRkNoeisvM3JHU2htTlh0aS8wcXMv?=
 =?utf-8?B?S05SM001a1Q0L0tacVYvcjF5TTkraGRRQnFFZXU0dy9hR2ZlekgwTlp4V3Ja?=
 =?utf-8?B?R0x4OEU5a2VSMlNmUmNyd0FuOVdyc09Id1lUQjBWS0RNTm5VSDV1WHpyWUxq?=
 =?utf-8?B?dlJFa1laS0tiVlo1QzlKWmFjNnF2N1VySFRLZytySnRLaE5IZDB5Zit3enF6?=
 =?utf-8?B?RWVnNmdqVisvYzc5QVFPemg3UFpKa0wxSENKZTRjb2FSMzI0SkNmWXRBQ3Rw?=
 =?utf-8?B?eVdYcC9Ra29BTWVMdnczY1QwSUlPVjMvNUl5WC9lZUlCbFdQL2srWGpUR21i?=
 =?utf-8?B?OEdML096eEdOb0Vmbm9nbzI5TmtEMlBoNDlEQ3ZIZVdVNXVwbGhTVG9uQVQy?=
 =?utf-8?B?THVHRFVVQzZCdG5UZlhsM0xBQTJwb25DYW51Nm9mVjBJQkplRUI1OUd2YUw2?=
 =?utf-8?B?ekZOciswT0lGQ2VDaUw5S2xPcUNjb3h5L2dUQmg3ZjdIcUt5cFB1YWRhaW9l?=
 =?utf-8?B?Ty91b2IrSlAwcXp0eEt1YXlKcm9vR0E1dklmZEpWYk8rR3pQOUphYUNxTDVi?=
 =?utf-8?B?N1g0SS9ZRDlJcExwdWdRUDFKQU9PUE92cGt4RUdTYmthZk40UkExeHJIT0lE?=
 =?utf-8?B?MHp3TzNWbmF1YkRJNmtNZz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QWVJNkJnK1JKUmRUaXlBRjdJU1VkSlE3L0c3OG1KRllST0YzZVRBTG1ZVkpO?=
 =?utf-8?B?RTUzMThmTUtHNEhZU1oyQiswZ3VVMzZoR1c5RmVjclU1cHZHS1BnaWoyb2xr?=
 =?utf-8?B?cG5ncWFLcThRK1ZZWm1SSm5ta3U1Vys4ZEZwK01rblF3eFpTam41TUZVUGhi?=
 =?utf-8?B?ajQyWUtEcjUrUTBXc1BMTE85b2RRb1pZMEYxcVAySzg3WUhucElOMWFrek9G?=
 =?utf-8?B?eXlBa0t4ZVRSc1ZCeVZaMk1zaG94aWRWa0t6UXpHbGNTSEhpcHRGSnNUVlBQ?=
 =?utf-8?B?djlXV3lDQUVzb2FVdWR0M29iMUNtVXpha1BVbDNsQ2RYVGhwOG1zZHgyelRO?=
 =?utf-8?B?c3l5NXd1bXhCcFlOS1NOcEVGZmpkTW5ESDBkSG9CYzRMRndSVVNONDIvUXR4?=
 =?utf-8?B?Sk1XbGI1UmZQOXprRVViM1dpYWdKeDd0cFZFZ2dYOGUwems3SFN6aXJtSUk0?=
 =?utf-8?B?QkVxT0NocnR0RFdpODFqOWJvZXJ1VTM5NDczdm84N3AyeU42Y3ZjRTJ2RXc0?=
 =?utf-8?B?dWdWSDNXcnk5ZHU5d0RuV2hRNGR1QlRmVXRkM0M2NnEyS0R0MkVwU3hNTjR6?=
 =?utf-8?B?YXB6Z1BHaXUvRHVaMUpJUXg0cGljWlFDdzlmaEExNW0rRWdTdHVIMFVBZlRY?=
 =?utf-8?B?elBJcEZWRmhIS2x0bVVhSEE0NXFHVjYvUmRsV1NnUThiT3NYc2hFZ3UzZU5E?=
 =?utf-8?B?WEpQSHg1a1cwV3lpNWhuMU1td2pKOTQ4YmZ0Zlh4dWc2cDNRdkdnbjR6bmV6?=
 =?utf-8?B?ZjJENTBBbTBqQnFGZjRBZFVQM2twMDA4aTQ3cEVSOE52OUY1cEpRbENJZi9H?=
 =?utf-8?B?OFdvNExFSVF4d0dXRFFxSC8rUDludi95MjNmL1NSZW9NN3FSdTNacVJVTFNF?=
 =?utf-8?B?NVdoZkFtR2dKdDJnMng0d0luVVBldFR0SitDdDcySlNoM0pxMTFmQzJVamRq?=
 =?utf-8?B?ZDg2WXRsK0U4K1NrVWRoMldZeEMvM3VEVjhIVUt5ODJaR3FUajlBNXc1NXJT?=
 =?utf-8?B?ZDZBL0pkLzJBWE52R2RlMnhmZGxoNXEzcFAyVVN1TFZHaTBUVGEyRjZUeDV1?=
 =?utf-8?B?ZHZMajBtYm4wRW5JeUdjUUdTak4yTitaZFlvTzVTeHpaaTd0NVoreEtDUzNR?=
 =?utf-8?B?ZDd0ajUybm03MmNVSXVPbkpVazdobGpubGQ2aU5XdnpielRUbDYzb0plTFdX?=
 =?utf-8?B?Z21ZWUN1VSt1anI3a1FBWGE2V29jTnlhV2N2Mko5Q25pS1FoOHdHMU9xd29k?=
 =?utf-8?B?NmFpRHdrV25scjRYekhkQjdNbCthQjZBbUE1eGs2UzdmaEZ1T0x5VFplWDl1?=
 =?utf-8?B?bWJVMG9zY2RCTTZlZW10cTMrZUxIdkFqUEd2dXUxbmp5ckVxMzBwWXBEUkxk?=
 =?utf-8?B?RWxLTnNHb1h5TC9saVVRdHVSUENVcFhZSkFvNGdITHU0aFR4RUhWZDJocWlK?=
 =?utf-8?B?Syt1MTdEakRINnUrV0xxaTlHUkFyVHVkaDRUU2Nlc3dvRWpETm5WUlVERmZw?=
 =?utf-8?B?OFdpZ1I2ZlNiWThBMlFHSDdUeHVINWZsT1F0QUtzSTc2ZEFPVFBZL2c2Q3Rm?=
 =?utf-8?B?SnRBaFR3VmFkaGZGWWZPK0xhZ2hNanJsbzdFMU8vbm1GbmFVK1FKWDNaTEF6?=
 =?utf-8?B?NmxldHdlcTNXUnFKT3ZzWTA2MzU4eEQwKzdHOXBsYzlDc0N1TUN6WHhjeHBF?=
 =?utf-8?B?d1BvbTExUTZOODJyMjNXUGlRUXVtRHpTQWNUNWlLRHVoRnVwU2RaM0xLenlK?=
 =?utf-8?B?enFVYkkraWUzcDROQko3eWkwaXZQOEpqekQ4OU9FVVI1QzZMOURjRlY5eTAv?=
 =?utf-8?B?V3djQmdPMXNEZHhuVXh6VDRZa3lrWGU2Q3Z2SUFjemF3bFhHZDVlSFkyaUZM?=
 =?utf-8?B?RWRFZXpFTU1YdE1wZ3RZVUMyNWVNbjdJQUlGeWcyRFRxMWlSRTlaYndxZlJK?=
 =?utf-8?B?TzFXSWRMV05UOHQ0SEh3ZDZ0RGI2a2JjQ0F3MGJNZURzdHpsT1dNMWM2eGp2?=
 =?utf-8?B?d2g1T2p1L0RNeUJKNGtPQTBSajVvV2tYcDNRU0hMQjdDZmNOK212RU9sWlh4?=
 =?utf-8?B?YmdtS005ZWpzRjlsVHdGTjFxR3lwelJqMGgwcVVjNEtrUUVnQmw5YVhPYnJm?=
 =?utf-8?B?N3oza1FzQWxmNERkUmlLQW9DdlplVFk4Qmc4Si96cGw3bnlTTVo5K05Vc21x?=
 =?utf-8?B?M2c9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 255d500d-7d51-4055-67b6-08dca25585a7
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2024 09:32:18.0435
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vTt5gsD+xAOzGmahVEsJVSgQXWjcCT7tJ1k+9p9KTUdCizJ+qrvCmMQ9AXhVqMsA3LDAOPETPzxlvXGPOuB9Yxq42jBrv125tUE9TcdMwh8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7302
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 09:32:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63477

Hi Yann,

On 7/11/24 3:50 PM, Yann CARDAILLAC via lists.yoctoproject.org wrote:
> You don't often get email from ycnakajsph=gmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Well, I'm not really sure I would need it in most cases.
> 
> For instance today I was modifying an existing device tree to make it fit my board, that's not necessarily going to last.
> 

I assume it'll make it to your upstream repo which contains this device 
tree, so there'll be no patch in Yocto after your debugging session ends.

> Or say I have a package, which is from my company and doesn't have any reason to get out of it.
> 

If it's from your company, you own the repo where the source code is 
stored, so fix the source code in the repo once you're done with the 
debugging session.

> As an integrator I need to modify the build system, let's say something in the makefile, or maybe there's simply stuff that I don't want on my system.
> 

If it is source code from your company, then fix it in the repo. If it's 
from a third party that isn't public, send them the patch so you 
eventually don't have to maintain this on your own, if it's public and 
open-source code, contribute back so you don't have to maintain this 
patch once you upgrade to a new version of the package (as part of a 
full Yocto upgrade or not).

> So I'll make a patch.
> 
> Why would Yocto be authority for the way my commits are formatted? In all the above cases I don't see why.
> 

You can disable the warning, we're just strongly recommending you to 
follow the format we came up with. Why? Because we've had years/decades 
of experience with handling patches we only had in layers. We went 
through the pain (and still go) of finding out if the patch is 
necessary, if it was sent upstream, if so, should we rework it based on 
newer versions of that patch, was it merged upstream, if so in which 
form and when, was it rejected, if so, why, security issue, broken 
logic, etc...
Where and how was the patch submitted etc. It also encourages us to 
contribute upstream, which means they then know the build system(s) 
compiling the source code and their usecases so they have it in mind for 
future development.

Yocto/OE needs to be opinionated (it factually cannot, because not 
implementing something like this if it's suggested means we have the 
opinion it's not necessary), but for most parts, it's still very very 
flexible, so feel free to disable the check we put in place to prevent 
people shooting their own foot :)

Cheers,
Quentin

