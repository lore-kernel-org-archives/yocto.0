Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8F54C54EE9
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 08:40:56 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (NAM12-BN8-obe.outbound.protection.outlook.com [40.92.21.27])
 by mx.groups.io with SMTP id smtpd.web08.9427.1663663251612972138
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 01:40:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=mBmnIKCd;
 spf=pass (domain: hotmail.com, ip: 40.92.21.27,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JEPwV+N9mIQ3QVFY6NChIxqKQFqZfxpFYf8TQii3jts5AKbD/8IWmOszW590XZj86xuGlSp4550YZss75dasWeOqXS9mxtLJXkGD9TzbiMVhCAA3vZ+DPHNH1lZQUoyynKIezM6w16P1yOpEKECAsMv77IQwrPzo5GoFw2VD/+9/9ip1099dYS/50ipae4sB9uWGIyAQB9ZyV6ZZyPxQ8GCUt1b/HuktkoMuMF8vUjM3xVhsPGF3fAW42loD1DksVo1GCCkD58fcXQIHpzfnNoc7NxoMSP7drssTIKNtcagQYy+L7f5s+0a67C/aFQWZRybVVS0xhbOQS8LtTqye2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uKmBoIefNWHokFQLbXZc8nfpahwywU5V1trAcC4X0Vo=;
 b=gAuis7T7S9cZGQRk2KQmmNc+/rx8rbTLAUU0S96/s5ShJmuVJVRQEmlHdDu+uRobHL4CHxSv4JcP7bUBq2jw3f0w5B3Q+AkOX2VhWmip/jQiV9U3huQFb+aaUwhj/fM8KdExDPW1iF0Qz8puWnWHAcOZBAbDqKYKZmew8P2BkwELnxNg36WcuMCY50ixEUhbtCdYMDlRKU/BiDVv1w4+GD6+Lm3mXArLyCs8GFN0CTKnDgYwNXhM28P0WelLbIB9QiMmwbri8w/jM9nUnmvA9fRgAfNEGv+idStZY5vfC9XoyFaESqirI0FQJ5cA/ufWxR951pY98S3CXTM8jAJwUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uKmBoIefNWHokFQLbXZc8nfpahwywU5V1trAcC4X0Vo=;
 b=mBmnIKCd2hmcLhYued0vwhLf+xK/qpvHn94yZ1Tv6rpx3R8YIHNwFiX/2uhRmmabjOy3EBrooI7sIMql6AbLGn2gVbynebLna2xjPo87FgvDcz5wN5vISf2K/NG10VHUF/n/UIdwFYLVYlgg+udwMUKfQ3C3yE6QGApyH6xIssGtOHjkqaJELbHZlrxWB/cl9eHEfHvv7r2Yac2IKs0FX4ngtKCRo2po6UnYWhXbDg2SjTdc4rPMtt1pHmi1goJrPjuD5nIABzaId7uAC3a0oBM5jFkfFzWcW6g+nmJFEL/od9q+YWGU8GEICgUCoBsmwLrC6HjrI/TUMSW9UGUuqQ==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by MW4PR84MB1490.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1a5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.17; Tue, 20 Sep
 2022 08:40:49 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5632.018; Tue, 20 Sep 2022
 08:40:48 +0000
Date: Tue, 20 Sep 2022 10:40:41 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Markus Volk <f_l_k@t-online.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj8ZmE4_KY41Xe90YSFSm-t3MPVQjDH+gTw8TJBFgTjoWw@mail.gmail.com>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB183555F695A0E7C8818C14E5C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9oFKPYa63AiH4tDJ8Jku0826ySM22uXxxq=vOwbbD+vA@mail.gmail.com>
 <PH0PR84MB1835788AFD16FEB8E4A15790C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ANJ_EnvBgi+mZH52kr5rxyhBbBWEDoaOFPR9MDLDgZg@mail.gmail.com>
 <PH0PR84MB183571245531C6D271BD5A90C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-rLXUAXn_BNYCM8bjeeWVCWU3YYFvnr5bagw7e0V8Akw@mail.gmail.com>
 <PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-0ewbydhAYAw6u0JgnKcBEJTSgZ+QzTxnwD2Lmh9vDgA@mail.gmail.com>
 <P5UGIR.ETKUECS9HZXY1@t-online.de>
 <PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <40WGIR.ECG3N5TIIYMJ1@t-online.de>
 <PH0PR84MB183594E043D2D4644D204710C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ZmE4_KY41Xe90YSFSm-t3MPVQjDH+gTw8TJBFgTjoWw@mail.gmail.com>
Message-ID: 
 <PH0PR84MB1835BEBC6B143383119B2EA7C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----EK2EM3UO2BBEIAZP6SUS48YAHNSKIR
Content-Transfer-Encoding: 7bit
X-TMN: [TEpvzo4FLFuEK+OmACzMkM7yXJZC0fJO]
X-ClientProxiedBy: FR3P281CA0123.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::9) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <A6E6E5E9-9911-4211-9361-6BBD27576CC3@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|MW4PR84MB1490:EE_
X-MS-Office365-Filtering-Correlation-Id: 403edbc4-f451-440f-6e5d-08da9ae3d15d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	mAD0DuNJzmXMwUDYOTMbzG4Y/FNsMisqozD/XcRPTUU1//f7Z9b2WFa7dF/Y+vYa/fK3He3ekqpfeEGh27mttoqm/Rb5//TI/RAkV/QlNGg9cdM7uvjDaUif3RmvCWjSyy6Vnbr58zi5MiJ9/CtpRHCHtlKnGlizz8NNvoITIl6Qi3yjgAWytNLsre633Ha5UBToBCyvzS10GFvJSAmxUA2XNLalLQ6/q6ImILjKlZil+7BCghykUuRnKopAgupKNH5GxAvHX+u3dPLjaqndpBqUBS80buPcNVAxWdlwqOcYnuerOceTQIGhzK5zOmnriYpPwTrHfyFDGbnWg3g1LGCnG74aFvoT99UzFFPnrTB7UwGtlNx/yKWZv+OVOrDzSVHH/a76fwLfvyjETandM4gkAraEEZ8Q/dG7PMoL/hcg3ra9/qwdhRVAnEg3+UCMpg62+Bj7JBfUctBMg+pQLxuceRq+crnXara3o0BrDJB8enBGwWtmrCMau6lbUmdC1VKXX1ptmIuqopB4v8v9uvOrdUysUVqs5cbOHGAzHepDCUuCKts/lnAdRjghJpSYrBypXQmd927R01Zvtam+Q4T/Zq+ti8BQFZ3cQh2uzFxx1YnB496KIDNDhIg4g0n0wjHBmG1hY69/TvTF03wn6g==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R00zdnVVUXl3RzRreVlad1A1ZC9aU0VEemJLVjltU25JYzlTM3REeXdiVFVM?=
 =?utf-8?B?cVdnRXdWZkV0TjhIblVsNDB2dUozc2huYkNLaG5QU0ltNmhCQjNXc0g4M0tT?=
 =?utf-8?B?TXkyWSsvQzMxU1huQ3VsakRGRUVPKys1QjgxbWdoTU9rWjdNZzQ0a0NsMTFV?=
 =?utf-8?B?dFVpbnd4S3grMzN2dWNUdjNqS3lrM0tPN1VoRnF3U2hSMEFlRm4xRy9oaXNU?=
 =?utf-8?B?U0o0SkhNenA0RGtQZlV0M0RFdnFZRi9INTd4MDFKRFVpWWJyK3libE53YTcy?=
 =?utf-8?B?ZG01M250NDRUbFJZSEVQNkNCUFJRdS9yc1pZWmdnZUNWNHorZGFaZjJ0d3Ur?=
 =?utf-8?B?cG5KSlRHVlM3eE9iZmwyYk9tQld3Yis3ZDVKS2VNcVFpeWQyVjlRM0FOSWR2?=
 =?utf-8?B?ZWdQeWFNTnV1UjlKdG9jbVRIU3ZjYU14WlhaeXFTbU5vSnBQRDZ3UVIvU1U4?=
 =?utf-8?B?c2NtUE1qVklnd1J5YXFlcFFsSHMxaGp0aFltOTl1cnBIcVZvYzZmSzhnV0Ir?=
 =?utf-8?B?L1NNL0R6NHBESDRtc3NkNGtRR1VpZURjMXpGR3NVL0VyTkUrQTQxbEcvNmZH?=
 =?utf-8?B?K0J4K28wSDFCNmdYZk5wSS8zUUNKMlB5dFVLZTN1eVR0M0pNVTRVZEw4aDA2?=
 =?utf-8?B?dHMrLzg3MlRzc0VJczBYZ3VYeXFPUlBOUGVNY0RJanRCV3hYUXJLZDlvQ3Iy?=
 =?utf-8?B?c05LU3dYMUNNRTZMcTBxTG5DRDQ4bXY3OW5KL3NlM2VmbWREaHV5QUtqMHdG?=
 =?utf-8?B?TjJNeW1hWTl0MUNqSTczbi9ES3RidG9LV0VZYnNkaHZUaWUwZzV5YzV6cS9T?=
 =?utf-8?B?YW9TVnVvTDNmMzFOMm9oTmFtQ08vKzhTdU9tN0FGRk5OZVV5VTQwczBsYVJi?=
 =?utf-8?B?RTdUV3lURjQ0b2s4SXBCOHFUYkhYSGthQTV0UDFheTdVUFh3bERUOXI2b2lN?=
 =?utf-8?B?bVUvM0FTRUcrVUlROE5qeTVYTC93VXE3K2kzbVg4UTdVb0VvZkVDUmlYQ3hI?=
 =?utf-8?B?QmI2d0FZSzgzcGNHTlNvVmpDMFdpSUFycWI3a2g2YjVpUmo0c1dQZlBwK3Vx?=
 =?utf-8?B?R3JQUGYrZmZsRFRaRlZvNTZ0di93RmQ0WUJqS0QrWHV2bWZjR3RKQTVhU2N1?=
 =?utf-8?B?RzE4dXBPYWZ4Y01naFA5UERIMFkzVFpoVmtvaTRZZGVjVUNiQTJ3bEMxNFRo?=
 =?utf-8?B?czcrdTA3UGJ0enIzL0Voem94bjhWN0owNCtROGMrc2tpRkIzQmJ6YU5lY3dL?=
 =?utf-8?B?MjB3empXZFRQamhSdTZlendxYWYwaEtxTXpIaTFKMlJPdWppUy9EN1EwZzdZ?=
 =?utf-8?B?L0pRa2dTRm1TblBNMnRaUGwvSzZsVjU1NEVIM2tRUGJkVTRlbGFJV1AxZXUz?=
 =?utf-8?B?ejV2OEwwVG5ZVnpGU091djNGQmIyclJUdlJmamNIRXprdFZWUk5UZmduR0Rj?=
 =?utf-8?B?QVh0ZWNSM1BnaWs2cks2VlNVRjNTanNQaEN0WjhRclZueUM1alorQTRYT3JG?=
 =?utf-8?B?QlFOdlRuK1JCYldmbm1vODVoRnA5ZEkzem9GdS9NZ2Fmc0ttazVUdWhIY0lR?=
 =?utf-8?B?ZFdjL3RhM2JzN3hlOUVaNE1HU1RPLzRsQW5wWmQvZkxaSk42VFFqWnhTWHVI?=
 =?utf-8?B?QW90cHAvZy9PTllCS0g1NGFUYmRiNEp5Q0VpbEp2c0xYeG01M29JcTNJTXBx?=
 =?utf-8?B?SHIvT2FBU1ErWXpDZDZtZDYrajRERFBUVFo2UWFRcFNubWgxam9qL3RnPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 403edbc4-f451-440f-6e5d-08da9ae3d15d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 08:40:48.8567
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR84MB1490
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 08:40:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58089

------EK2EM3UO2BBEIAZP6SUS48YAHNSKIR
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

What would be the simplest way to achieve that with bitbake? I tried swrast=
 in mesa yesterday but it complained because it wants Gallium=2E

Am 20=2E September 2022 10:23:38 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>Don=E2=80=99t bother with virgl yet=2E Start with the pure software imple=
mentation in
>Mesa=2E
>
>Alex
>
>On Tue 20=2E Sep 2022 at 8=2E39, Edgar Mobile <heideggm@hotmail=2Ecom> wr=
ote:
>
>> Ok, I added these two lines now to a file named virglrenderer_0=2E9=2E1=
=2Ebb =2E
>> Bitbake now says:
>>
>> ERROR: Nothing PROVIDES 'ninja-nativevulkan-loader' (but virtual:native=
:
>> =2E=2E=2E DEPENDS on or otherwise requires it)
>> ERROR: Required build target 'core-image-weston' has no buildable
>> providers=2E
>> Missing or unbuildable dependency chain was: {'core-image-weston',
>> 'meta-extsdk-toolchain', 'qemu-helper-native', 'qemu-system-native',
>> 'virglrenderer-native', 'ninja-nativevulkan-loader'
>>
>> ------------------------------
>> *From:* Markus Volk <f_l_k@t-online=2Ede>
>> *Sent:* Monday, September 19, 2022 5:16 PM
>> *To:* Edgar Mobile <heideggm@hotmail=2Ecom>
>> *Cc:* Alexander Kanavin <alex=2Ekanavin@gmail=2Ecom>;
>> yocto@lists=2Eyoctoproject=2Eorg <yocto@lists=2Eyoctoproject=2Eorg>
>> *Subject:* Re: [yocto] Adding Vulkan to core-image-weston
>>
>> Am Mo, 19=2E Sep 2022 um 16:54:52 +0000 schrieb Edgar Mobile <
>> heideggm@hotmail=2Ecom>:
>>
>> This wasn't enough
>>
>>
>> i guess you would also need to add venus support to virglrenderer=2Ebb =
for
>> qemu:
>>
>> DEPENDS:append =3D "vulkan-loader vulkan-headers"
>> EXTRA_OEMESON +=3D "-Dvenus-experimental=3Dtrue"
>>
>> but i have never tested this
>>

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------EK2EM3UO2BBEIAZP6SUS48YAHNSKIR
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>What would be the simplest way to achieve that with bitbake? I t=
ried swrast in mesa yesterday but it complained because it wants Gallium.<b=
r><br><div class=3D"gmail_quote">Am 20. September 2022 10:23:38 MESZ schrie=
b Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<blockquote class=3D"gma=
il_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(20=
4, 204, 204); padding-left: 1ex;">
<div dir=3D"auto">Don=E2=80=99t bother with virgl yet. Start with the pure =
software implementation in Mesa.&nbsp;</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue 20. Sep 2022 at 8.39, Edgar Mobile &lt;<a hr=
ef=3D"mailto:heideggm@hotmail.com">heideggm@hotmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-co=
lor:rgb(204,204,204)">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Ok, I added these two lines now to a file named <a href=3D"http://virglrend=
erer_0.9.1.bb" target=3D"_blank" style=3D"font-family:Calibri,Helvetica,san=
s-serif">virglrenderer_0.9.1.bb</a> . Bitbake now says:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
ERROR: Nothing PROVIDES 'ninja-nativevulkan-loader' (but virtual:native: ..=
. DEPENDS on or otherwise requires it)</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
ERROR: Required build target 'core-image-weston' has no buildable providers=
.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Missing or unbuildable dependency chain was: {'core-image-weston', 'meta-ex=
tsdk-toolchain', 'qemu-helper-native', 'qemu-system-native', 'virglrenderer=
-native', 'ninja-nativevulkan-loader'&nbsp;
<br></div></div><div dir=3D"ltr"><div style=3D"font-family:Calibri,Helvetic=
a,sans-serif;font-size:12pt;color:rgb(0,0,0)">
</div>
<div>
<div id=3D"m_-8286224681170601673appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-8286224681170601673divRplyFwdMsg" dir=3D"ltr"><font style=3D"=
font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)" face=3D"Cal=
ibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif">From:</b> Mar=
kus Volk &lt;<a href=3D"mailto:f_l_k@t-online.de" target=3D"_blank" style=
=3D"font-family:Calibri,sans-serif">f_l_k@t-online.de</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 5:16 PM<br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" target=3D"_blank" style=3D"font-family:Ca=
libri,sans-serif">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> Alexander Kanavin &lt;<=
a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" style=3D"font-fa=
mily:Calibri,sans-serif">alex.kanavin@gmail.com</a>&gt;; <a href=3D"mailto:=
yocto@lists.yoctoproject.org" target=3D"_blank" style=3D"font-family:Calibr=
i,sans-serif">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@=
lists.yoctoproject.org" target=3D"_blank" style=3D"font-family:Calibri,sans=
-serif">yocto@lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"m_-8286224681170601673x_geary-body" dir=3D"auto">Am Mo, 19. Sep =
2022 um 16:54:52 +0000 schrieb Edgar Mobile &lt;<a href=3D"mailto:heideggm@=
hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt;:<br>
<blockquote type=3D"cite">This wasn't enough</blockquote>
<div><br>
</div>
<div>i guess you would also need to add venus support to <a href=3D"http://=
virglrenderer.bb" target=3D"_blank">virglrenderer.bb</a> for qemu:</div>
<div><br>
</div>
<div>DEPENDS:append =3D &quot;vulkan-loader vulkan-headers&quot;</div>
<div>EXTRA_OEMESON +=3D &quot;<span>-D</span><span>venus-experimental=3Dtru=
e&quot;</span></div>
<div><span><br>
</span></div>
<div><span>but i have never tested this</span></div>
</div>
</div>
</div>
</div>

</blockquote></div></div>
</blockquote></div><div style=3D"white-space: pre-wrap"><div class=3D"k9mai=
l-signature">-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit=
 K-9 Mail gesendet.</div></div></body></html>=

------EK2EM3UO2BBEIAZP6SUS48YAHNSKIR--

