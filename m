Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06E8EECAAD8
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 12:12:42 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (NAM11-DM6-obe.outbound.protection.outlook.com [40.92.19.96])
 by mx.groups.io with SMTP id smtpd.web10.5569.1663762357079271319
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 05:12:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=hcgwvGWx;
 spf=pass (domain: hotmail.com, ip: 40.92.19.96,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gl7TOw/FRz39TpRTi/Uol64OJ8WfKiqAwkOeOWZlhRWRzv9kb40d/5efwP117RJjkZCpcHUQwFm9+sshA+HCkRMH4kE4SG35QJKlZQgFiQ5NM+fSlQVKf5NjTksKJ5383zIF8BU6NBJoBmOXaa3U+RN5w614Qx0BnNJuVreHzd7Wsxez4b1z6zGmY/sODPOhZ9Tu7TiTSdG+kiuJWJ2kgEwMImIMSk455yQozoRm8pRl5cN9PzdQXR91ugfPETxVzsg3vNz57m1VUVeew5+OpGGmYr8nlrp2mdeA73UlPaunEpGYwve6cXmJrW292wjbeWo84qU5cBilHXm+fQXaQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8r9KgjSvQ62ZBT/BL53riQowAzlhlz1t8YnKhKanhCs=;
 b=NqQr6gYiI1uPhPIGCBeoQeijf9VEl4T0K6WTdFsf63bN/SBgREPALUetGfA/D1tmuwlExxF7FynG2fknet/8w8i6wjjUT/87qUWQVdE6wp9UB+bgqJwPHlT/117j28QkaKulyPI2q5sxmM7fPJe7jtfdBpREYXPnqaDf50BGpFpPyo6oNXt4GKYUpopZO5G2fgaak/FBDb5T8rVSXd7jrixqgp8AZ+7nYE1tlUZSGs7iHNFSYYYTn8Z/j7UWFXl+LAd35u761SUnP1u1J4c2WBOi7L/bt/7eow3mtiF1NBHp+86+qRLHRiEnyAJh2Sg2uZmgZJyuK7cCfVekN5UuYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8r9KgjSvQ62ZBT/BL53riQowAzlhlz1t8YnKhKanhCs=;
 b=hcgwvGWx7vaitP118kD4ctwXsSi75431BUZA8a4zVdeVaSH/1Zs31S/hJDRMWJjW9gq2uBVTcHgnAy578ZBMMfJkiHQxWQYAcWyrim2JkL8nDuLtbii8M522clZlEusy7e9XBj6uLdIczuTn8DTc/5gQsq4rEL2I0vmCL4PgVYILw8Mi5q+tB7jhgP9ziub+ixGSdht2p679qhrd+tQjOIFAyssSITHqIULIKfzhLeBYjO9Ny0tZGlmEs/qMfYTyyiIO1LaoHxWi5oujMWrt7amKcq86nXRygU+oauLPu5xdb8PFXOU629r8jjKZwiyG/b+BgCePdpK/Wl8goYRS+w==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by MW4PR84MB1732.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1a7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Wed, 21 Sep
 2022 12:12:34 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 12:12:34 +0000
Date: Wed, 21 Sep 2022 14:12:25 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Markus Volk <f_l_k@t-online.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj_ESNarHT2TjhUuoU97XbdeQcBGg-s6ki_sRusWcDbOcA@mail.gmail.com>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-0ewbydhAYAw6u0JgnKcBEJTSgZ+QzTxnwD2Lmh9vDgA@mail.gmail.com>
 <P5UGIR.ETKUECS9HZXY1@t-online.de>
 <PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <40WGIR.ECG3N5TIIYMJ1@t-online.de>
 <PH0PR84MB183594E043D2D4644D204710C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ZmE4_KY41Xe90YSFSm-t3MPVQjDH+gTw8TJBFgTjoWw@mail.gmail.com>
 <PH0PR84MB1835BEBC6B143383119B2EA7C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-DASeVZAJKe5SURTNec_uth5CofkyOu6ytn9rv2dc76g@mail.gmail.com>
 <PH0PR84MB1835ADAA61579A359EE70E46C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9z+0TX5WpyKSYBEM40HASYHykDHktVENsTfDnUTvyrug@mail.gmail.com>
 <PH0PR84MB183510DD06DC37C976C8ABFEC74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_ESNarHT2TjhUuoU97XbdeQcBGg-s6ki_sRusWcDbOcA@mail.gmail.com>
Message-ID: 
 <PH0PR84MB1835958E697521CC93766B80C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----HCLE1B9H3IOJC2TCQ6G0Y8V47Q7GGW
Content-Transfer-Encoding: 7bit
X-TMN: [5XzR5la5p1cbA0s8cMgXaQTure/vPNpN]
X-ClientProxiedBy: FR3P281CA0077.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::10) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <2C76C8FD-9E3E-4B04-BCE5-79E83AE6D973@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|MW4PR84MB1732:EE_
X-MS-Office365-Filtering-Correlation-Id: cdb0c66e-f945-4eec-6f0a-08da9bca90e9
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iuGqE4FJrtwrJN9iaaXLkTrF/hi8tEPFS6jIfIv9D3Jg2ms4oG9gs2k9FRux0WFKk+rQa7Qu6pwNbynOYxXtR3ChB+/FdA4tM8V9z6dag+6SZ4cn/6jOFYEalchP+TRnOdTpafPN492ZVFRn3DwM45dKKsR1/CZol/oaCwfpBeiWF/VWm9/M0MXlSYFUFA0IuKB+gGkCNTXb0m1sO/6pWV35KV9IrGbstR6pDfLsB8JGCA002tpEgoWxHtaMba0I9jEusxIw864wI+79WAsTFlWE+FPZs5NhO+8uJQxJ4xIF93nIRiWDiBGz43jXfPT1oyrh1PL8Km/8VNG3zryipcPsus4yPGSBJtYE0wgqJ4ErFspJAhyqtY50I3S4ub9ebHJDVeqrj47d3Hnr9QfbeqFlbXiOrpYbZ4fFsQt2agrcGNJcXWETzHquVrkTTTlkdhLv8FWLWGxiKmHjXmZ+50AKbqwjEk95TBD+qO6Iz3XahI3s+2awZSqnqD+VtbiAHDhfRpKk+20O7fE8RYR8zcGy9fh9bE7KYhY++3JdgzKdjnsvYP9AMoVsV2lh98+Qs9LHuhrkRxC4afFUBnoo0vCBQc4E7FPbKLsuzog76g6wrdT1UuNvyc4FoscnPpNHaktR01Hhc3jAxAVyOlqzRK9gMr1LMDjTx07k4zr6FizuPuGJ0jAcYgOFMnEWs2hU
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L3RDdVlwSFBwc3BpNVl1SkJTOGh3aWxCaVg3cWdZSk41TGVVbk1PekNHTkhW?=
 =?utf-8?B?QkhDRVpBLy8rd0lGYUp5LzhRK0wvK0FodElMS3RJbitSRStlODF0cG9FazRn?=
 =?utf-8?B?U3FlcFVPbWhQd00vL2FmS2REc2lVb2g0bUEyKy9jYnEyNVRWM2xLU05GMnd5?=
 =?utf-8?B?bHJKLzBuWThkNjUyNGlaQU5pSkZTbDhjcFN1SHZ0aWl0dGNFejdrbXNtNklV?=
 =?utf-8?B?VFFqWkVyR3RYeEpTN2RYTTVweDBLN3dzVC9HK2lIWXdObzdEWXUrYTAxeml3?=
 =?utf-8?B?RElDTlpqZHVSVEVnVHgvbXdiRlV0RnlsenQ3dkVNWkswWWdvRHNWOVUxR1dy?=
 =?utf-8?B?bE1LUnFVa3VaYUczV2Y0c05PQnhWZ1d2QmN6ZjdmNmpwVWs5Ris2QS9FWTlF?=
 =?utf-8?B?TmdmdWhQWlBzdkRTYmNPYThuUEF4dmtRUHIyb0NJQmJtY0VWTEUrYzdhQ2Ft?=
 =?utf-8?B?Z0laa2lkTS9vbW1ZRTA4RCtRbXVoMWZLbjNRcGR0TEVXR2hkeWcxUTRWaEtj?=
 =?utf-8?B?YTJ0a2dsZlVtTXJ2QWw5MGpUR3laWjlUNDIrb2dET3B6SlE2MzdzeTgxUWRv?=
 =?utf-8?B?L1VlZTlTa3hnSWZwMUlRNXo1VGxNV21PRXczQW9xNGhKTXRnZllQeWp6TnA5?=
 =?utf-8?B?MC82Mm9jZDBYRkRhREVoOEN2VmNnYW9WOW9Ma2hiMWZwNW1ycXRuWmVKUEZC?=
 =?utf-8?B?SGkydW1PYU5mOHRkTDgxbzBUWnl1NDk3K2RtOE5BSXlyYTl6c01aK2pqWmph?=
 =?utf-8?B?Qm9nczU2Ym9ieXBIZTNWNEhwemxJakVaYVVEd0NtYXNhMjlNNzFsc3VPYXlO?=
 =?utf-8?B?UFZRM2M4ZXVpcldRMDM2MkVwVC9JU21sMkhnV3YwT2NidzV0RUVNdUNjbDJq?=
 =?utf-8?B?TFp2eVcvZUJQY0dRb0ZDYW5VclFicW1udmZmd240UE9rWEJZR2pTczVEdVlY?=
 =?utf-8?B?U3l4NUs3bUI5allBa3p1cGdXRDQ3d0JoTkx2SUhMOXZHR0VQbENPQjFkUDcy?=
 =?utf-8?B?ek9jMzBleFhBV0RVS3FjZTJCaW1GS0dxN2ZiOG0vemlBV2NieStJLytnakVx?=
 =?utf-8?B?aHYrbG5rbVFma1F0Y0cvcVdGQTdNdGVub3lvaUV3Rk1veGxOMFhJcTB0YVVl?=
 =?utf-8?B?NUJpV2JPeTQ1Yklxb3llNWp1WW1LZjBaeDluRmlpbE9jMVl2RnpYMVloRVNE?=
 =?utf-8?B?TzloYmIya2NRanhnMVFuMEFYUzNEcXRLWlAwUjZzLzk5R2FPeXhvdVR1Y2Ez?=
 =?utf-8?B?dUh6TUlGbDBmSTdsNEN6K1lzWVNhSFdUZVZxR2E2YVFFOVNZZWg1ak1LMFNq?=
 =?utf-8?B?WUFNMnY4NjcwWTZrcjdKOWYrWW00Y3dpaXM2R3hYRUYxeHA5UHBBRmRCOW1O?=
 =?utf-8?B?VXZKYk9PVnNhOXhBeUpDSXEzOHVBNlI2cm5VTnljZzlSVWlSSGZPbEVPY25n?=
 =?utf-8?B?eTY1VWdtK3dzUDRXMnY3U0pKSHhnV1RlT21wamNmOVhhbUpRK1pUSmZzQTd0?=
 =?utf-8?B?c3dPTWdqS2sxZVVyVUhzVEpIMXJSKzJtSGVrSTR0TjVRUHc1dU9VcGlmaVdD?=
 =?utf-8?B?T25GOUw0OHF1UTZvS0M3WDh1V3YvbHJHbU9jK0o0bi9zTWZVaUhNTjZRWlVG?=
 =?utf-8?B?Y3ZLUjcyNGZUSFZIUElWSmZJcjdRQ1JxeXBYUUJpeUR5SmpIMEE4M01saCtB?=
 =?utf-8?B?RU8zMGl2ZHU5Q25tbzkwWjlhdW8yMjhHRVozVjlRdHh3VjFIdG1MOHRBPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 cdb0c66e-f945-4eec-6f0a-08da9bca90e9
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 12:12:34.5137
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR84MB1732
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 12:12:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58116

------HCLE1B9H3IOJC2TCQ6G0Y8V47Q7GGW
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

One of the logs has this



Error:
=C2=A0Problem: package packagegroup-base-extended-1=2E0-r83=2Eqemuarm64 re=
quires packagegroup-base, but none of the providers can be installed
=C2=A0 - package packagegroup-base-1=2E0-r83=2Eqemuarm64 requires packageg=
roup-distro-base, but none of the providers can be installed
=C2=A0 - conflicting requests
=C2=A0 - nothing provides mesa-vulkan-drivers needed by packagegroup-distr=
o-base-1=2E0-r83=2Eqemuarm64
(try to add '--skip-broken' to skip uninstallable packages)

Am 21=2E September 2022 13:57:17 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>You need to go to mesa's build directlory and inspect what is getting
>built, with which options, and how it is installed and packaged=2E All
>the needed bits are there, but it does take a bit of 'yocto skill' to
>find your way around there=2E Start by looking at temp/log=2Edo_configure
>(and then do_compile and do_install)=2E
>
>Alex
>
>On Wed, 21 Sept 2022 at 13:38, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> If I read the mesa-vulkan-drivers recipe right it should install libvul=
kan_*=2Eso but it didnt I had to use vulkan-loader=2E Any idea in how to de=
bug that?
>>
>> Am 20=2E September 2022 15:26:45 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>
>>> What often works is running it under strace - you might be able to see=
 the one key syscall that causes the failure=2E Otherwise you might have to=
 go through the heavier gdb step through=2E
>>>
>>> Alex
>>>
>>> On Tue 20=2E Sep 2022 at 10=2E25, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>> Ok it seems to use Software now given how slow weston-simple-egl has =
become=2E But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER=2E
>>>> --
>>>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gese=
ndet=2E
>>
>> --
>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et=2E

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------HCLE1B9H3IOJC2TCQ6G0Y8V47Q7GGW
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>One of the logs has this<br><br><br><br>Error:<br>&nbsp;Problem:=
 package packagegroup-base-extended-1.0-r83.qemuarm64 requires packagegroup=
-base, but none of the providers can be installed<br>&nbsp; - package packa=
gegroup-base-1.0-r83.qemuarm64 requires packagegroup-distro-base, but none =
of the providers can be installed<br>&nbsp; - conflicting requests<br>&nbsp=
; - nothing provides mesa-vulkan-drivers needed by packagegroup-distro-base=
-1.0-r83.qemuarm64<br>(try to add '--skip-broken' to skip uninstallable pac=
kages)<br><br><div class=3D"gmail_quote">Am 21. September 2022 13:57:17 MES=
Z schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px soli=
d rgb(204, 204, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">You need to go to mesa's build directlor=
y and inspect what is getting<br>built, with which options, and how it is i=
nstalled and packaged. All<br>the needed bits are there, but it does take a=
 bit of 'yocto skill' to<br>find your way around there. Start by looking at=
 temp/log.do_configure<br>(and then do_compile and do_install).<br><br>Alex=
<br><br>On Wed, 21 Sept 2022 at 13:38, PHIL &lt;heideggm@hotmail.com&gt; wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8e=
x; border-left: 1px solid #729fcf; padding-left: 1ex;"><br> If I read the m=
esa-vulkan-drivers recipe right it should install libvulkan_*.so but it did=
nt I had to use vulkan-loader. Any idea in how to debug that?<br><br> Am 20=
. September 2022 15:26:45 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@g=
mail.com&gt;:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt=
 1ex 0.8ex; border-left: 1px solid #ad7fa8; padding-left: 1ex;"><br> What o=
ften works is running it under strace - you might be able to see the one ke=
y syscall that causes the failure. Otherwise you might have to go through t=
he heavier gdb step through.<br><br> Alex<br><br> On Tue 20. Sep 2022 at 10=
.25, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #8ae234;=
 padding-left: 1ex;"><br> Ok it seems to use Software now given how slow we=
ston-simple-egl has become. But vulkaninfo still fails with ERROR_INCOMPATI=
BLE_DRIVER.<br> --<br> Diese Nachricht wurde von meinem Android-Ger=C3=A4t =
mit K-9 Mail gesendet.<br></blockquote></blockquote><br> --<br> Diese Nachr=
icht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockq=
uote></pre></blockquote></div><div style=3D"white-space: pre-wrap"><div cla=
ss=3D"k9mail-signature">-- <br>Diese Nachricht wurde von meinem Android-Ger=
=C3=A4t mit K-9 Mail gesendet.</div></div></body></html>=

------HCLE1B9H3IOJC2TCQ6G0Y8V47Q7GGW--

