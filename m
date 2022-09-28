Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13204C04A95
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 09:49:58 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (NAM10-DM6-obe.outbound.protection.outlook.com [40.92.41.56])
 by mx.groups.io with SMTP id smtpd.web09.6066.1664358589198098141
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 02:49:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=dANnilX5;
 spf=pass (domain: hotmail.com, ip: 40.92.41.56,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TpM1raU8hS/1270AWuDUIfNpKsQ7PsGFmWp/Drvlw0ziX8EcJszorHBr1aiyLuyULr5jIt+59Y2hP5JGnBFgU8vlAqYdVtAQ7NSc3onkd/zU+DT9QVwPbwOVXD4AX5Xyltn55cYXbjs/q4TM8VRQ50sAgcMdVP1/m8Av/7yzO1P9RYYRwvI1j994/0Vc2O145rgopfHiRYD6h/dY5zZD22jorHltFYWIvfZ5eyYma/gXubgNZeGKJkq30IEDUjqWmK1E8XeyZRrf1nLet4ZSX2QPmC+MZJ2LwIBC7XpCEz7Izz/opVCMC6i710dcYsqYaOSbY/QzQZ4fCJRjMv8+CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MMnd+OZ5VxS5PdaRwAVnZWXxHxTrxn4kULaSShpZv/c=;
 b=K+8jTX1euxOapMT5ZVNtH5wIj4q66/fQWrHhAN9HwqWzkn40oL0VjjemjAQLjlELLJ2WIvjMl4MbBiIwDZrAPO2TC9S+lRZfjFk07qo35Zh/a+A/VEZTH5kP+flqTPTofyVSZaF7j6UF41EzfTyGNIYGOi6zSGhZIPtlpKjV2wkeddfkf90IBE3AD6XsShH0ToOLRBnKDCLE9IvItiKuHU0TO35UIOHyM3tFIaEHMV3B2jXC3KQIaTvD//WaAIC8QA5g/by5oEIx1Ddqvnz3cP7mQ35Tum8SBNWMVn5eDJbh6gKX6V7y7oBQUsEN/OJ03vBdK/IlEHz+OU8DKTBNkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MMnd+OZ5VxS5PdaRwAVnZWXxHxTrxn4kULaSShpZv/c=;
 b=dANnilX5VzGYbqxYPLzSasbAEi+MOiIYXocFwacH9WVOe24TFpTifIOzLkc1L/Rqx/0BBVs/TnBHWLoHMUX5HIBx/zhVqDrtRX91B6DsMfYpfGB6DVc48ggbMHThURxWPXHREuDv8tmE4vkBVyKkltOf1IFe8dxjY9JS6I9zNkAZLpdFAu9Bz2DC4T8yxHADmcrNVgL7xabhIwAxlCXtzjVfdeh9CRum2CCxP4Pj4Pib38kl2iajewJrYi8y8pcDk9kayZeHLSHy/bVpDxPeG8pjVvZs2wv9U7u8HEDldl/7ZzDD0R02ewFT+uzdcBRTmU/4+hSuptn5Pn5Ylm990A==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by DM4PR84MB1448.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:4b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Wed, 28 Sep
 2022 09:49:47 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Wed, 28 Sep 2022
 09:49:47 +0000
Date: Wed, 28 Sep 2022 11:49:40 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Changing git url of qemu
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj8hmMe9Qc-pb5KxFW-kraCJCZ=kttZmzkospx4VPp0rDw@mail.gmail.com>
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
 <PH0PR84MB1835BF84B82124FF0DB10565C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_sdovPpw5+uhPaa65LDBgZUctApsJDv-6KReSi-Zk1PQ@mail.gmail.com>
 <PH0PR84MB1835A9768FB8246072F05484C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8hmMe9Qc-pb5KxFW-kraCJCZ=kttZmzkospx4VPp0rDw@mail.gmail.com>
Message-ID: 
 <PH0PR84MB1835197966482CF4FCA15A0BC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----CNLQU9SS16N0M5LMU9DSOXSL51M8BF
Content-Transfer-Encoding: 7bit
X-TMN: [c9kwy9xrNuf+Fnb7D8pDtZSfbPAWeXsA]
X-ClientProxiedBy: FR3P281CA0092.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::12) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <4F57AC20-7C69-44ED-98BA-DE45E9C115B7@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|DM4PR84MB1448:EE_
X-MS-Office365-Filtering-Correlation-Id: e99f97f3-5224-4ba8-9b88-08daa136c711
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wvONb2tbX6jBtsAFrhJoOlmA3r2OzGs9/iOY0OOaWqzvlqxgQRTLLzdyyfaheze4bCxDm4imWiRc6lSNvclE5PCM97VnHopQFpG/4LEFjwhKnLL6qJJxT8ABY6m85xbB0LSnzl0ng/bJDLvxNuaMIBI7sQCZlo1626wLonULjXIdwFeKl5LsJsWONka5bruwjcjQPAdnp2Nx8K0SABX8gQhCFT8n2EZHdkqI+je+Eqspw7QyblufspcVAFerLzYYAM3wTtBTcywJpBor6AZial7Z1zJUsz6dzvItrSM8sDzkOq9/ArBQkhziQjgtMvBs4a/gl76AOdpTPqDYvGhIE8iZXOlL6CLFZccpGzu+JrulXdBi3/shDpa72LW9CUQmL2s1Q2iwJyQoiv0idmKpBemaFtfz6BQCriY6Xz06MGarexGLCIoX3e1u+VTUwDDMcqkOErI0ktmAZjDNQ5FNu46nMiXQwXNrXqROM9kuBJAUg9LUYXRimAxOCnFH16XkXKcfCCjALlfOz5sTrPIU1yBmMoVUUOG+z3zrXqrnvuu9U4Cd6/ci1wrK8O8N1jqv4cONMMv0DjmsbtfdyLGM/kBk1V5REmPEvs6/V2bfhv/rFsm993TuTT+01Y5IauWxe4koy/6P2pTFbziY3c1H0OId+vfOGtj5Jbd0AvOaGBDS1f8s1yiUawUqJK0PY05d
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YUNLTmpwSElaQ2EwUldPL0d1SHYxTGtyTU9XRk9NODc1aXFTWnl1MGRJNzZD?=
 =?utf-8?B?K2k5Z2s3d0Zhc0tBc2xVVnM2U1c1WXBLUjhPeU1wclg2VDU4czd6c0pCc21Z?=
 =?utf-8?B?cUdMUm9GOGs1eWNQeWxPTjNkZWNKeFFvbzNHZmNocktLVHF6bmxGNEdwOTNp?=
 =?utf-8?B?QW5FRGxnbWtXd2x2SUU2MWVmdXhoWmhvRHlhN2NicFNhcW1abFhPYnlWZSt2?=
 =?utf-8?B?c2wwU0lsMFJ2cEFqSWl1OHg2ZVBFWHdYYmpiaEx4ZzlWUW43VS9GRmJPdFdm?=
 =?utf-8?B?VE9FeTB5TktrdmZzU2tLeG0vMnBoTFgvSWRLWjhMWjNOenVJaWk3S2ppcDNk?=
 =?utf-8?B?bTUyT01JSlljRHltTHoxTzl1ZnlFMERMcUJSQzZQeWpWajhLZjZlYldPWGFN?=
 =?utf-8?B?cWR3SDNUd1JIMzdGbFNNdUtzOThTVm1CZkNSZGtZdnc4R1Y1bU5UYWxrSEdI?=
 =?utf-8?B?aU54MElwNTlxQVZNQUM5ZHdGejRJS3hHdVV6MkNDYXE1KzZTMFdaNGdwdEpP?=
 =?utf-8?B?cFJmR0pvcmdmVm1vVVB0Rm0xbitRU1NqWW02U1g5SzJSWGtLbVVTZTdnbENw?=
 =?utf-8?B?ZmI0ZFJJRzlaa1JWbTZuTVptR3FyQUZxZlpwVkxtZm8rN1RUc1h0NkVwRFZB?=
 =?utf-8?B?TWJUeGU3UC8yTlhKKyt1dU5ack11SDV6OThpWU05MGhtUGFVZlhuTmdweCtj?=
 =?utf-8?B?cE9XZ3ZydnR1aDQ0ZDNEdml5QTJ0WTIxbG9LcEdHek8raWxwdHE4YXRsTU5O?=
 =?utf-8?B?VkFMTks1NndDM0s2Z2hDdlVxTmtqYjNWUjA1SXJ1UmJtTUczNFpmWTV4c05j?=
 =?utf-8?B?enIrV0hhWFpYa0N6T2orQmc5ZGw2SW44ZERTWlI2dUFBM3d0eFF4bjNPTUpV?=
 =?utf-8?B?V3BxY2FDK1lZbTA3NXdMc0lPMThmcmxPWUh5N3RKQ2tYN2JYUnlLT3c3SU5M?=
 =?utf-8?B?Ujg5WFdWRmY0b0xEUkhhem9HamxGdkNwaGQ3R1RwNnc1N3Vmd3RVa084KzYx?=
 =?utf-8?B?aGxTWmtxeGx4ckNOYXBhb3VTN1N3aHFBWjFabXREeWFaNDhZd3FIMjh0dVdN?=
 =?utf-8?B?OGpBZTFEWkY2VnJEVXg0c0hNakx1cnRCb0g5UG95Zkd3SnhpVUc3aG5oWUh3?=
 =?utf-8?B?RVNSWHo2OVVnT3RTbzQvK29hTEJ5Y2pVQTdNa05UZVZIa1VWakdvN3pudDlt?=
 =?utf-8?B?TDArWnBlR1czd2ZLN0hadGxuZDZ4QTFvc2hxYkIrVGhhUWZyR0VhWnhLb080?=
 =?utf-8?B?Nk84OGNNNzlhdEZtbFVKaTBETDNsZFI3d2N5ZXhsRklWTjFNRkJ3K0NBL2Vq?=
 =?utf-8?B?NU8zdU9BZGxNSEFvSGtLYzNtWjNzL2lUS0tjU09DZDdSNHJ2V3M3Q01YenZk?=
 =?utf-8?B?dnlrTktwTTB6bkxXT2Mwa21tNjVVbDhQT3hseUljZUZYbHltZmowS090Vk13?=
 =?utf-8?B?alRLd0tMbEFyUWtlVWY0bUQrZVRuTy92b1dkbmIvV2VmekFzcHp1cEg2Mkg0?=
 =?utf-8?B?TDVNbjBueVRxVGFEekYvald0VWcrVXVWVC81MVRjZE5nUXc1UnBLcEcvaGc1?=
 =?utf-8?B?ZDNzcVVEODFSd0VMYmRYQlRIMUcrS0pRL3lvSmk4dUtzRDlJNzErM01aTEFL?=
 =?utf-8?B?WDJtMmVOMG54Z05zTDJIZWhlT2dja2NvazFYNzJ2dEdkS0pFU1hLNjNWYURh?=
 =?utf-8?B?ZnZqd1lpMEVqSFlDNnRkKzBiWkp6RVUyY1pwMlVUSjZIYkYraEMxaFRRPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e99f97f3-5224-4ba8-9b88-08daa136c711
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2022 09:49:46.8347
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR84MB1448
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 09:49:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58204

------CNLQU9SS16N0M5LMU9DSOXSL51M8BF
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Also vulkan-drivers is empty in meson generated by bitbake=2E If I add it m=
anually it will complain that llvm is disabled=2E How would I enable it?

Am 28=2E September 2022 10:51:26 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>I think for software vulkan you need to pass in
>-Dvulkan-drivers=3Dswrast when building mesa for the target=2E
>
>Alex
>
>On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> I asked the author so I assume he would have told me=2E Apparently the =
virglrenderer branch is obsolete=2E
>>
>> Currently my only changes from poky master are adding vulkan opengl x11=
 to distro features and vulkan-samples vulkan-loader vulkan-tools virglrend=
erer to core image extra install in local=2Econf=2E
>>
>> I also added virtio-experimental flag to mesa and virglrenderer meson r=
ecipes=2E
>>
>> I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo=2E
>>
>> What am I missing for Software Mode?
>>
>> Am 28=2E September 2022 10:29:28 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>
>>> I would first check whether any of that work in the branch has meanwhi=
le landed upstream=2E The post is from 2021=2E
>>>
>>> Have you tried the software Vulkan in the guest?
>>>
>>> Alex
>>>
>>> On Wed 28=2E Sep 2022 at 10=2E21, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>> I try to enable vulkan according to this tutorial
>>>>
>>>> https://www=2Ecollabora=2Ecom/news-and-blog/blog/2021/11/26/venus-on-=
qemu-enabling-new-virtual-vulkan-driver/
>>>>
>>>> According to the author the modified qemu branch is still necessary s=
o I want to enable that=2E
>>>>
>>>>
>>>> Am 28=2E September 2022 10:14:24 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>>>
>>>>> You need to clarify what you want to do exactly=2E Why can=E2=80=99t=
 you use the existing recipe?
>>>>>
>>>>> Alex
>>>>>
>>>>> On Wed 28=2E Sep 2022 at 9=2E58, Edgar Mobile <heideggm@hotmail=2Eco=
m> wrote:
>>>>>>
>>>>>> Greetings,
>>>>>>
>>>>>> I want to change the git repo url in order to test the Venus driver=
=2E Can someone tell me which variable in which recipe I'd have to set?
>>>>>>
>>>>>> Regards
>>>>>> --
>>>>>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ge=
sendet=2E
>>>>>>
>>>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>>> Links: You receive all messages sent to this group=2E
>>>>>> View/Reply Online (#58196): https://lists=2Eyoctoproject=2Eorg/g/yo=
cto/message/58196
>>>>>> Mute This Topic: https://lists=2Eyoctoproject=2Eorg/mt/93968127/168=
6489
>>>>>> Group Owner: yocto+owner@lists=2Eyoctoproject=2Eorg
>>>>>> Unsubscribe: https://lists=2Eyoctoproject=2Eorg/g/yocto/unsub [alex=
=2Ekanavin@gmail=2Ecom]
>>>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>>>
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
------CNLQU9SS16N0M5LMU9DSOXSL51M8BF
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>Also vulkan-drivers is empty in meson generated by bitbake. If I=
 add it manually it will complain that llvm is disabled. How would I enable=
 it?<br><br><div class=3D"gmail_quote">Am 28. September 2022 10:51:26 MESZ =
schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<blockquote class=
=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid=
 rgb(204, 204, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">I think for software vulkan you need to =
pass in<br>-Dvulkan-drivers=3Dswrast when building mesa for the target.<br>=
<br>Alex<br><br>On Wed, 28 Sept 2022 at 10:44, PHIL &lt;heideggm@hotmail.co=
m&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt =
1ex 0.8ex; border-left: 1px solid #729fcf; padding-left: 1ex;"><br> I asked=
 the author so I assume he would have told me. Apparently the virglrenderer=
 branch is obsolete.<br><br> Currently my only changes from poky master are=
 adding vulkan opengl x11 to distro features and vulkan-samples vulkan-load=
er vulkan-tools virglrenderer to core image extra install in local.conf.<br=
><br> I also added virtio-experimental flag to mesa and virglrenderer meson=
 recipes.<br><br> I still get ERROR_INCOMPATIBLE_DRIVER when running vulkan=
info.<br><br> What am I missing for Software Mode?<br><br> Am 28. September=
 2022 10:29:28 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt=
;:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex;=
 border-left: 1px solid #ad7fa8; padding-left: 1ex;"><br> I would first che=
ck whether any of that work in the branch has meanwhile landed upstream. Th=
e post is from 2021.<br><br> Have you tried the software Vulkan in the gues=
t?<br><br> Alex<br><br> On Wed 28. Sep 2022 at 10.21, PHIL &lt;heideggm@hot=
mail.com&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0=
pt 0pt 1ex 0.8ex; border-left: 1px solid #8ae234; padding-left: 1ex;"><br> =
I try to enable vulkan according to this tutorial<br><br> <a href=3D"https:=
//www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-enabling-ne=
w-virtual-vulkan-driver/">https://www.collabora.com/news-and-blog/blog/2021=
/11/26/venus-on-qemu-enabling-new-virtual-vulkan-driver/</a><br><br> Accord=
ing to the author the modified qemu branch is still necessary so I want to =
enable that.<br><br><br> Am 28. September 2022 10:14:24 MESZ schrieb Alexan=
der Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #fcaf3e; p=
adding-left: 1ex;"><br> You need to clarify what you want to do exactly. Wh=
y can=E2=80=99t you use the existing recipe?<br><br> Alex<br><br> On Wed 28=
. Sep 2022 at 9.58, Edgar Mobile &lt;heideggm@hotmail.com&gt; wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-l=
eft: 1px solid #e9b96e; padding-left: 1ex;"><br> Greetings,<br><br> I want =
to change the git repo url in order to test the Venus driver. Can someone t=
ell me which variable in which recipe I'd have to set?<br><br> Regards<br> =
--<br> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ges=
endet.<hr> Links: You receive all messages sent to this group.<br> View/Rep=
ly Online (#58196): <a href=3D"https://lists.yoctoproject.org/g/yocto/messa=
ge/58196">https://lists.yoctoproject.org/g/yocto/message/58196</a><br> Mute=
 This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93968127/1686489"=
>https://lists.yoctoproject.org/mt/93968127/1686489</a><br> Group Owner: yo=
cto+owner@lists.yoctoproject.org<br> Unsubscribe: <a href=3D"https://lists.=
yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsu=
b</a> [alex.kanavin@gmail.com]<hr></blockquote></blockquote>--<br>Diese Nac=
hricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></bloc=
kquote></blockquote><br> --<br> Diese Nachricht wurde von meinem Android-Ge=
r=C3=A4t mit K-9 Mail gesendet.<br></blockquote></pre></blockquote></div><d=
iv style=3D"white-space: pre-wrap"><div class=3D"k9mail-signature">-- <br>D=
iese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</=
div></div></body></html>=

------CNLQU9SS16N0M5LMU9DSOXSL51M8BF--

