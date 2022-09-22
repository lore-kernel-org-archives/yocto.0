Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF811C6FA86
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 14:55:16 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (NAM10-BN7-obe.outbound.protection.outlook.com [40.92.40.44])
 by mx.groups.io with SMTP id smtpd.web09.8073.1663858510653349647
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 07:55:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=Lts2W2xb;
 spf=pass (domain: hotmail.com, ip: 40.92.40.44,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c9NEZLoYhkrTJbFnSrxj/SI1EJ4P3d62PauQ4rMn+6Gxe0V79cuGwlwvB+aWCLtdtObrPiFVwM6Tj1LCjajGn3i6OSZUnWJZ2uXXrsUxP3QUZj0bGV7yg5sxZtACI7HW/0HELjHNpMRHZj3JjU48N3Oy+scFjDTJNPZ0A0/wS1wnc5jAPPexkLqlw+X37i+gahTV6kijIJ13FWvmEJUIXaXFdVKvqbQOgy2OntIpI5qhW2mrVmOkahe48U6fIsjjdSUXlVV0kG1IB5uMypONixltXSX8i/OlD6/b/z18NazA7t35XUL/Y5J1FuWwQ6aMgzYyddtap+V68DjgW9zIDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5tq6kWu6hGefqecCWZ/Ju+xq8z1t4U4C/XvlJO6gYuQ=;
 b=m509yjWZGH249kNKA3lPXQshaWNuRHDr6LY7BAWSJjwAVpda3sl4n9mWV7dwWhfrfFklGfgl/SWmXDPpNQZ4HlBG8+DlLexn42wATuByozLslfVVGY7yO7VEOc0pERokxw8fFnxde8gszetJqpCbo9tQhem7Gmk57cA/pAb622IQb4SDHeosjGUCsS3hA/Dse2FVuLNhnVRkE6n75fGueN0Pp6TZ44TbCHGOQ4wAIn1JssW3iACRwUIAfHY3Vogdm2RI025z7UIEbWiuu+TRN7kNv2oVbyxqxKOZsx+RqXEw27H+Kk4sKd3pu+A1WUTUpjV/ZE92HDipIFZpgxmIAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5tq6kWu6hGefqecCWZ/Ju+xq8z1t4U4C/XvlJO6gYuQ=;
 b=Lts2W2xbbS7P05pvLcWz5Z5ZxL92iNpVZdgOXIIA4CtUBH4BfAOLAk0PA0P+D2Z8WBfmenMc0catj2EG+beg5nPF1eF6U72WlpjkEdoJjx+W8YWvuuA0nFfl/lEkLdpIRkK/SYGCHjAmpR4M6MnXYhh50rWRtC8M4hCTGiJLQTSGlc3AwJazv2lmaN09mD0KegU8ByyTsW5vklBpLaC9tsaWRMOgCfja6DPKrhVNsWA+0KqFk2yHdUBAd/8081SavjdM7j/yMdhzdK5jGkmNkOnuYHsixOC17NFtjCng3O6lGL1taieoVBj8HLhDl2CCXrkErzftzxWO4sWvlYAHxQ==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by MW4PR84MB1803.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1b2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Thu, 22 Sep
 2022 14:55:07 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5654.016; Thu, 22 Sep 2022
 14:55:07 +0000
Date: Thu, 22 Sep 2022 16:54:56 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Markus Volk <f_l_k@t-online.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj_OkdKSmRkyOWDNe_MApH_drqvOmy415DZ4Zf7hYoyh8A@mail.gmail.com>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB1835BEBC6B143383119B2EA7C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-DASeVZAJKe5SURTNec_uth5CofkyOu6ytn9rv2dc76g@mail.gmail.com>
 <PH0PR84MB1835ADAA61579A359EE70E46C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9z+0TX5WpyKSYBEM40HASYHykDHktVENsTfDnUTvyrug@mail.gmail.com>
 <PH0PR84MB183510DD06DC37C976C8ABFEC74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_ESNarHT2TjhUuoU97XbdeQcBGg-s6ki_sRusWcDbOcA@mail.gmail.com>
 <PH0PR84MB1835958E697521CC93766B80C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_LvAnPgrVgQsu2WcTa4R-Fyy84TTTSSzXJLseKGDB+KQ@mail.gmail.com>
 <PH0PR84MB1835B5FFD430030BE74F9F97C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9kALWyEp+56R8RUhjJ6kPB36q4QpbtJzc0v0imPOdw-A@mail.gmail.com>
 <PH0PR84MB1835502638DA727304FBA402C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_OkdKSmRkyOWDNe_MApH_drqvOmy415DZ4Zf7hYoyh8A@mail.gmail.com>
Message-ID: 
 <PH0PR84MB183536A21118AECDD6FF8F76C74E9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----D0WW8BOXA690EY50ST8B0HGM7ZD82T
Content-Transfer-Encoding: 7bit
X-TMN: [1wwuHMx9cwXrSdNsxLBrIQ4b4qiCB9nk]
X-ClientProxiedBy: FR3P281CA0022.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::10) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <F0E2B0C4-FE9F-4FBE-B078-E83B5012C0CC@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|MW4PR84MB1803:EE_
X-MS-Office365-Filtering-Correlation-Id: 79a38561-5c7a-4950-10a6-08da9caa709a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	k0A68sT8iO4JtR4oVCl9xXQYAdYPlRvZNrebpn910LhtlI3pkScGVTQv2fyLcNKIHtkGnbsiwVyprVLx98r01nTgNByQ0wFQ7jLapa7pZKz2pA4FnTNDH5KOWzuNMKP2GRSdXO+TAqjRjVxtydVdN4mOS/ens8fKc064cRY9yLIpCRXFbbjZHG392BzwxA6z497+nNgbhITzyfV1G141eEeWg5jMShQh8IzzPdDXbd38zkr0T7Z/kQPbx3wcsq1u29WQYblJXMgeUSKRTG6IQM0Y6Jsoh1zHmRDkf28A85tQ/FMnuY/10CXK/IXGGWIhFp0g7KTVyaKp5alMDbzeByWJx0I5oIhzOHH7H8nDYlldmwvGIxkv0lXWj6G/JEI2CLfsBdX+P6zt1gm0uMyO9JwMddqGNOijeJ703jjjwsmkNsY2vTKmXbha8biHcl5hARJG7U7eu15+bl73OEyJLvYYbM7NFMc4VHq+Ovd2cO/wtrNwxpW/7TQcs4dbo1NqpULCgroGaKLg3sqOlgE0KN0qtu1FGYi4HVGd4K0eJK6Jnm8P8B4WVbjJBArDT81egHpT1qRmufqQaG9FklXz+sqE7Zq9nZOpYJuAgOpL1sXIbIWLJwxo8SsOEErMB2Vgpt7OfgIJ9H27P1wFDTzDnmrGOXgUSZ4+EwSibxg9ENBT9es3J8OQnfEzV1UbI6RP
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aHBzdHhtWlI1TUFQMS96b3VVeFo1cFgvZktSRkpDL21ySCs5dkUwM2NWUnI4?=
 =?utf-8?B?eWhWYm1BNXJuUVRjYk5UTEptWVlTVEFsdnZHa1lEN1BsUzJRaUxjeXFrUUlL?=
 =?utf-8?B?QmFiUCtHWHFBc3g4RzV0Y1pJMUxLRjlVTVZGNXdxQjhudVVTSmpRbVlwWTdC?=
 =?utf-8?B?cE5KcDI4ZTZ2ZEZXMTFjOFhvTC9CVUQ1NENLZDN6WWd6clFRQWcvQ1JHRUha?=
 =?utf-8?B?RWVQTVN1SmxpemIrUmlvZkpGQVFvZzdsSTlEUGVrQldVUDA2WDl0RmFGV05r?=
 =?utf-8?B?dUZrbCtIL2xISU5SUzNkQU5SczAzeEFUUzZTdDlNa0hCRk9wUHhzTi85MVA5?=
 =?utf-8?B?R25CMVFuKzE0SVRDbmtlQWIrYStTQXJlUGl3eGc2blczREVlazlmK3lPQk5n?=
 =?utf-8?B?aTBWREt3cDMrdldYVGVFR0dYMTA3NnN3QjhjTDVrdWw5REdDVTBvaTBqY1Z6?=
 =?utf-8?B?V1hqVVgwR25qU3ZYYXMzaGZkTTNDbVVOQUVsc0hwRmpZUkNQU3Mray9EL0Qv?=
 =?utf-8?B?R2NyWVR2MGlYa0JXR09LeFB2aDArZVVxU0hFVndvV1lVcmVNMnh5YmFBUStT?=
 =?utf-8?B?S0FjNjJBUG1xenpWV2tJUVdLc2RmN0hoSWpaOE1vTWkzOHRaVGwxY3AyT2ZP?=
 =?utf-8?B?Mmt6bnNZck9PUDk4eHJCYzFVSkhvWEFzbUtHY2RHMzQ4QTJ1MTVsVkdKNTky?=
 =?utf-8?B?SVR6VWQvWlRMQldER1NjZlQ1MkJkSGNCVVdvdjljaG9MMHZHK0dFcmVLNGtD?=
 =?utf-8?B?a2tiK012N2JtcUVNRE5DNkZsZGo3YW1mRHZtZG4zSG1zYncyMEVhakpyTzdU?=
 =?utf-8?B?OW40WjJyVTlGYlV1QmMwMkROK2lEbi80OXliQ2doeEkvRUJIQzNEeUZKcDRG?=
 =?utf-8?B?ZmVDRktER2c4RXFJNzRIMmlXSmNLb1czeExEdFJHS3MvK1dJcHFLOEc5MnlK?=
 =?utf-8?B?U2t0ejRPWlBVUkJCY3Bla3VKL2dobzNneHJkcFU5dUtHUG1CZ010MGY1NHhS?=
 =?utf-8?B?dWhpc3BxbmNuM0dSR0lVT1F1alFHS0FtUnBtd01hT2VYMnY4WjVhSWVLcWVD?=
 =?utf-8?B?NFRyK1pMVHlEckJRT01ESVF5MVhTSklORzRkd1pLSHZ6ZjBUV0xjcWtpTVdF?=
 =?utf-8?B?ZE1FMUhEWHpTTkM4MklBNEVLWWJTcm1uYXBpMjJQMDQ4aDIvd0UxemhWZVNQ?=
 =?utf-8?B?SHE2anBRaEJIU2NsSGhQY09VcVBOSThrcUZuaU9tbmVPQ2l2eUt3emJuN2RI?=
 =?utf-8?B?SjdEZWdldyt1UHBWeTZ3V3NzKzdCUDBGR3FMMGUweFl2YXB1TmcrYVpqQnFr?=
 =?utf-8?B?cjF4WDVjWDZ2cEtXRWtXcGl3ang1Mm13S2ZPbHpWUS9iTVZPZ3IvMVQraVhw?=
 =?utf-8?B?YU9NQWlSU2s4YmxaMk5CK3hDUGpITmIxTE54MGJTVmp3bDhjTkMyNzJnSXZK?=
 =?utf-8?B?dndhUGdLTjNwSVNnTFdubUNNcTQ5QzYrZ1FwMUhRc1RwQjMySHZQMjdLYy8z?=
 =?utf-8?B?QUVtRG5QSXhTUG14UlVBVzg2S1U1SmRsUkNQZXNkeWRteWJSQW1RS3FlemFJ?=
 =?utf-8?B?cXl4cFM0NzBSVjVaVUh2VmhUZEF1VjVjdUlTNXBGcVdGQ3FNR3FjU29aOG9B?=
 =?utf-8?B?MjdiWDNTMXF5WmhYdnNGZTFXSlAvS1lBd3BJWGVmNEZKZzl3QXRtREJ3MnRM?=
 =?utf-8?B?VEtyNmxhdHEwMlZ6aklwOVpEZ3B0NElsQ1JFYjl3SHdiOWFZeWNpRDN3PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 79a38561-5c7a-4950-10a6-08da9caa709a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 14:55:07.7457
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR84MB1803
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 14:55:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58134

------D0WW8BOXA690EY50ST8B0HGM7ZD82T
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Okay=20
There is a file called mesa_22=2E0=2E3=2Ebb=2E Adding the following line
VULKAN_DRIVERS:append =3D"virtio-experimental" there will successfully add=
 /usr/lib/libvulkan_virtio=2Eso=2E
Still isn't enough though=2E

Am 21=2E September 2022 14:54:08 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>Next you need to check if you have the mesa-vulkan-drives package in
>deploy-* in the same mesa builddir, and does it contain the needed
>driver file?
>
>Alex
>
>On Wed, 21 Sept 2022 at 14:48, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> It has the individual packages but split up=2E One directory for mesa-v=
ulkan-drivers etc=2E I don't know how to process from here=2E
>>
>> Am 21=2E September 2022 14:38:10 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>
>>> You need to check package-split/ to find out why=2E
>>>
>>> Alex
>>>
>>> On Wed, 21 Sept 2022 at 14:30, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>>
>>>>  Ok, there is a build directory tmp/work/cortexa57-poky-linux/mesa/2_=
22=2E0=2E0-r0 =2E In there, there is a package directory that has all libGL=
* libraries and one libvulkan_virtio=2Eso but they are not installed to the=
 Image=2E
>>>>
>>>>  Am 21=2E September 2022 14:14:10 MESZ schrieb Alexander Kanavin <ale=
x=2Ekanavin@gmail=2Ecom>:
>>>>>
>>>>>
>>>>>  This is not logs from mesa, this is logs from your image recipe=2E =
You
>>>>>  need to start with mesa=2E
>>>>>
>>>>>  Alex
>>>>>
>>>>>  On Wed, 21 Sept 2022 at 14:12, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>>>
>>>>>>
>>>>>>
>>>>>>   One of the logs has this
>>>>>>
>>>>>>
>>>>>>
>>>>>>   Error:
>>>>>>    Problem: package packagegroup-base-extended-1=2E0-r83=2Eqemuarm6=
4 requires packagegroup-base, but none of the providers can be installed
>>>>>>     - package packagegroup-base-1=2E0-r83=2Eqemuarm64 requires pack=
agegroup-distro-base, but none of the providers can be installed
>>>>>>     - conflicting requests
>>>>>>     - nothing provides mesa-vulkan-drivers needed by packagegroup-d=
istro-base-1=2E0-r83=2Eqemuarm64
>>>>>>   (try to add '--skip-broken' to skip uninstallable packages)
>>>>>>
>>>>>>   Am 21=2E September 2022 13:57:17 MESZ schrieb Alexander Kanavin <=
alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>   You need to go to mesa's build directlory and inspect what is ge=
tting
>>>>>>>   built, with which options, and how it is installed and packaged=
=2E All
>>>>>>>   the needed bits are there, but it does take a bit of 'yocto skil=
l' to
>>>>>>>   find your way around there=2E Start by looking at temp/log=2Edo_=
configure
>>>>>>>   (and then do_compile and do_install)=2E
>>>>>>>
>>>>>>>   Alex
>>>>>>>
>>>>>>>   On Wed, 21 Sept 2022 at 13:38, PHIL <heideggm@hotmail=2Ecom> wro=
te:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>    If I read the mesa-vulkan-drivers recipe right it should insta=
ll libvulkan_*=2Eso but it didnt I had to use vulkan-loader=2E Any idea in =
how to debug that?
>>>>>>>>
>>>>>>>>    Am 20=2E September 2022 15:26:45 MESZ schrieb Alexander Kanavi=
n <alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>    What often works is running it under strace - you might be ab=
le to see the one key syscall that causes the failure=2E Otherwise you migh=
t have to go through the heavier gdb step through=2E
>>>>>>>>>
>>>>>>>>>    Alex
>>>>>>>>>
>>>>>>>>>    On Tue 20=2E Sep 2022 at 10=2E25, PHIL <heideggm@hotmail=2Eco=
m> wrote:
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>    Ok it seems to use Software now given how slow weston-simple=
-egl has become=2E But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVE=
R=2E
>>>>>>>>>>    --
>>>>>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 =
Mail gesendet=2E
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>    --
>>>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Ma=
il gesendet=2E
>>>>>>
>>>>>>
>>>>>>
>>>>>>   --
>>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail =
gesendet=2E
>>>>
>>>>
>>>>  --
>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ges=
endet=2E
>>
>> --
>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et=2E

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------D0WW8BOXA690EY50ST8B0HGM7ZD82T
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>Okay <br>There is a file called mesa_22.0.3.bb. Adding the follo=
wing line<br>VULKAN_DRIVERS:append =3D&quot;virtio-experimental&quot; there=
 will successfully add /usr/lib/libvulkan_virtio.so.<br>Still isn't enough =
though.<br><br><div class=3D"gmail_quote">Am 21. September 2022 14:54:08 ME=
SZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<blockquote cla=
ss=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px sol=
id rgb(204, 204, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">Next you need to check if you have the m=
esa-vulkan-drives package in<br>deploy-* in the same mesa builddir, and doe=
s it contain the needed<br>driver file?<br><br>Alex<br><br>On Wed, 21 Sept =
2022 at 14:48, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px soli=
d #729fcf; padding-left: 1ex;"><br> It has the individual packages but spli=
t up. One directory for mesa-vulkan-drivers etc. I don't know how to proces=
s from here.<br><br> Am 21. September 2022 14:38:10 MESZ schrieb Alexander =
Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote=
" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #ad7fa8; paddi=
ng-left: 1ex;"><br> You need to check package-split/ to find out why.<br><b=
r> Alex<br><br> On Wed, 21 Sept 2022 at 14:30, PHIL &lt;heideggm@hotmail.co=
m&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt =
1ex 0.8ex; border-left: 1px solid #8ae234; padding-left: 1ex;"><br><br>  Ok=
, there is a build directory tmp/work/cortexa57-poky-linux/mesa/2_22.0.0-r0=
 . In there, there is a package directory that has all libGL* libraries and=
 one libvulkan_virtio.so but they are not installed to the Image.<br><br>  =
Am 21. September 2022 14:14:10 MESZ schrieb Alexander Kanavin &lt;alex.kana=
vin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0p=
t 0pt 1ex 0.8ex; border-left: 1px solid #fcaf3e; padding-left: 1ex;"><br><b=
r>  This is not logs from mesa, this is logs from your image recipe. You<br=
>  need to start with mesa.<br><br>  Alex<br><br>  On Wed, 21 Sept 2022 at =
14:12, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #e9b96=
e; padding-left: 1ex;"><br><br><br>   One of the logs has this<br><br><br><=
br>   Error:<br>    Problem: package packagegroup-base-extended-1.0-r83.qem=
uarm64 requires packagegroup-base, but none of the providers can be install=
ed<br>     - package packagegroup-base-1.0-r83.qemuarm64 requires packagegr=
oup-distro-base, but none of the providers can be installed<br>     - confl=
icting requests<br>     - nothing provides mesa-vulkan-drivers needed by pa=
ckagegroup-distro-base-1.0-r83.qemuarm64<br>   (try to add '--skip-broken' =
to skip uninstallable packages)<br><br>   Am 21. September 2022 13:57:17 ME=
SZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px=
 solid #ccc; padding-left: 1ex;"><br><br><br>   You need to go to mesa's bu=
ild directlory and inspect what is getting<br>   built, with which options,=
 and how it is installed and packaged. All<br>   the needed bits are there,=
 but it does take a bit of 'yocto skill' to<br>   find your way around ther=
e. Start by looking at temp/log.do_configure<br>   (and then do_compile and=
 do_install).<br><br>   Alex<br><br>   On Wed, 21 Sept 2022 at 13:38, PHIL =
&lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #ccc; padding-left=
: 1ex;"><br><br><br><br>    If I read the mesa-vulkan-drivers recipe right =
it should install libvulkan_*.so but it didnt I had to use vulkan-loader. A=
ny idea in how to debug that?<br><br>    Am 20. September 2022 15:26:45 MES=
Z schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote =
class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px =
solid #ccc; padding-left: 1ex;"><br><br><br><br>    What often works is run=
ning it under strace - you might be able to see the one key syscall that ca=
uses the failure. Otherwise you might have to go through the heavier gdb st=
ep through.<br><br>    Alex<br><br>    On Tue 20. Sep 2022 at 10.25, PHIL &=
lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #ccc; padding-left:=
 1ex;"><br><br><br><br>    Ok it seems to use Software now given how slow w=
eston-simple-egl has become. But vulkaninfo still fails with ERROR_INCOMPAT=
IBLE_DRIVER.<br>    --<br>    Diese Nachricht wurde von meinem Android-Ger=
=C3=A4t mit K-9 Mail gesendet.<br></blockquote></blockquote><br><br><br><br=
>    --<br>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 =
Mail gesendet.<br></blockquote></blockquote><br><br><br>   --<br>   Diese N=
achricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></bl=
ockquote></blockquote><br><br>  --<br>  Diese Nachricht wurde von meinem An=
droid-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></blockquote><br> -=
-<br> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gese=
ndet.<br></blockquote></pre></blockquote></div><div style=3D"white-space: p=
re-wrap"><div class=3D"k9mail-signature">-- <br>Diese Nachricht wurde von m=
einem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></body></html>=

------D0WW8BOXA690EY50ST8B0HGM7ZD82T--

