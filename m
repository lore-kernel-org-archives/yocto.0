Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88197C433F5
	for <webhook@archiver.kernel.org>; Thu, 29 Sep 2022 10:28:25 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (NAM10-MW2-obe.outbound.protection.outlook.com [40.92.42.104])
 by mx.groups.io with SMTP id smtpd.web12.8684.1664447304200596847
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 03:28:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=tUxZU/bp;
 spf=pass (domain: hotmail.com, ip: 40.92.42.104,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bA29P9Fpd2YGj2gsaaxV/8QqBek7QGv6zSRYyqp9VihcnTJ3ietwPu96l2sRVqVIGlL9GDvb5pLWEn2K+MXBtQ6jgGcwlTiyp40mEziU4luakgiTY4enOTu6LdWOquk8lQB/k4EAT2zV3Q0oNxAE7fnc/7w7lhwKcbwYCv6qyblEH4tzgRIFpAOcFfyj+YtdIp0cHKGazJ2A/sFS+w4t1GV300Ba1z9pXfxmG3tJ2YRA0pJe0FB3szsCAKF6sEf6Q5J+gazlOsP9sIyAtyeiezP4dSBelzq5ksImQ4G3LSyDPjO2NqmzAHlx7jjXyLa9ogEFv1A5PCPjPZKu6mArVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kwIOvmBwv+CIrIYaQJXUprx61v5W+nSDGULgiNBFtx8=;
 b=T/jLh2O1Or7l6mBUCJ+cAWIfN8IbSXHdIA37GJ2+zcnbzHRIORvAZk3eMeYatTvY7iz1DzdqGsK5geWaK0cSmhxwWmLYS+u6FyiWeWx1xwOBUb4NJeeVciDgAHCshex9vZrdynIM8A4JSXo8tu4ECUSuoFUhfaj0hrPBASLVyT2Y/mTX10OFDw0o1bc/9FCMwrcg9dDEna/6zcVuhoxBs8E239tHw8+05rE6D7xoHBLeNs3umiknOhRVfiIB/SJ1nq+SmsY6iiyhxBG/UAddbMpMgYtUsNDpLfvX6BoKelawP5e7VtgLBCUUALNraIjT/PopBvG5qUMINOXZIN9GKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kwIOvmBwv+CIrIYaQJXUprx61v5W+nSDGULgiNBFtx8=;
 b=tUxZU/bpEpGZLF95cBnA64+fwBeNJQ45VjvZmJ9PG47Mr2lDXmoczjeoYbMv8GVgzSMwexbDnoeylIfXO3CINzfE+8oWK2IFIft4rHROmIY7BdDwCgI4Lbb5q+KDdgrunVpUkpqATI2tkzlowpBN4MpAqO2iVjTrA6qNkV86+ShKJPTseQ5DA4ep3fZCsroCDC32nW0Q44WU6i7HIFIKZi1s1+9kyPLbvuECBRZzUHmlvFtFHwKOzFs7LokUAIaYI+1fayg2am9IIfi9X7jUlmLWsoAAaMgZo5E3wVwqvpH9/jl1XBCLeiKanqqHpI6iFFxBvSLIGwWRlZ00FMaH3A==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH7PR84MB1656.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:153::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.24; Thu, 29 Sep
 2022 10:28:21 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Thu, 29 Sep 2022
 10:28:21 +0000
Date: Thu, 29 Sep 2022 12:28:15 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Changing git url of qemu
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj-ttajWfcN+EhgFUjxtK4rvPzkGpwyQoa=tRMP7Mo7hDA@mail.gmail.com>
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
 <PH0PR84MB1835BF84B82124FF0DB10565C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_sdovPpw5+uhPaa65LDBgZUctApsJDv-6KReSi-Zk1PQ@mail.gmail.com>
 <PH0PR84MB1835A9768FB8246072F05484C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8hmMe9Qc-pb5KxFW-kraCJCZ=kttZmzkospx4VPp0rDw@mail.gmail.com>
 <PH0PR84MB1835197966482CF4FCA15A0BC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_M_nrekrRRJ2oKbWFr7PhcTtwFNucrGd3=ZyVHfmP2MA@mail.gmail.com>
 <PH0PR84MB1835BB630C385390A43FDDC9C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ttajWfcN+EhgFUjxtK4rvPzkGpwyQoa=tRMP7Mo7hDA@mail.gmail.com>
Message-ID: 
 <PH0PR84MB183597EAA65D8009C257BFFBC7579@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----E7TF6I4SIR5DGL3MCKSK0GZ24W4G5G
Content-Transfer-Encoding: 7bit
X-TMN: [yphxZMB7CchsqMNu2K2+QzyBO0iq8n4/]
X-ClientProxiedBy: FR0P281CA0096.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::9) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <B6A55C4B-7072-45D9-A65F-F0CAA3343812@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|PH7PR84MB1656:EE_
X-MS-Office365-Filtering-Correlation-Id: 8115cc7f-9c4c-43f7-95a5-08daa2055556
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rcbOf59DnkU/LDdRxMszq6YURm07/O6eIhJxJalJ0S8+j5m8yDX/OKUbkT3C66zIRRyFEubC1NTqvvoavRDTu06TAAWJMTnMFxbt1fWiXWdLTXOhn+NMlDG7KqxHxk3BUrrCMEYIyS7iFL8mz4d0EaVqb2P5j7EglpN9MEojK6Cxz5iNW25t5ApiVe7SQhgX3lIZbdwtaoH1PVja8Yr2f+h0vHyUeHgeBbgUj/KJHkmeiTiYPqsD69wPBN1zdtmHwswjLB9sRmRwTXUw/jukNJmFhXOtyUzLIdm5BPGEjTnzKiuLraupgJysR8AjpF9a58RNjTdtKF2y4qlJvSzMd2GBaPzmCDLDq1fDz5TrFQgaTpyhn7AGv8wefisezo1iviD0XzMFO9vKiD1BQb86zsVZdxd6B5m0z8HYSDVELNHVAdej78kA6fZrQGRhrPjUCI8nsOYuunaEXIe0Ut0bawk835Oj98ZjJiYpgExNGW7hD0OjaCJRIdZA072Bm5niNJl1ognQw0IQPS93POFuLmpuN9UQlOqhBB91QCVQloRYmV9E2DIzeXN49Wc6FHQPhvOVS5D4CCXOsYpVlWxtq3+S46BRgrKom5Ckbqy7PwEPrQpshhjwuA1M7hy3annWliUGq//TRIyTRsNGplk4la6+h1Km0CD9veRlWq4RYdOcbI5A0xMPKAZud93n+qQj/px3Q9wEitIwYh4Uh0xrcjmT6bHH9p4yGAhh7HUzbi8=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S0JoeG4xVDZIT2IyYkVva3hWWkw5UUJXaTdGUkI0NHNXUUVSbjJhcWdHQVJi?=
 =?utf-8?B?Z2xpTGkvNy9tK3F0MFA0Q3BPUEppQ0FRa1hieVB4bzFCNWJsWFN5WUdnM01V?=
 =?utf-8?B?bkZPdWNMNnJjbm9qcFJzSXFEbmpJdGI1SnordDJtWGFlNHlWR3l4MHUrUEVK?=
 =?utf-8?B?bStLSFJvTWdVeHIvMTZtemZ3OWxVQmpHQ0R6eGtxSnk2bjZUaStjOEdhUHQ2?=
 =?utf-8?B?NTZWOW1JR1NSNGpjNnpudlFTdWtLSmFtNEZTRHVGUTg2dzFTWDdLVWFUcmhi?=
 =?utf-8?B?YWsrR2FOTS9pbFFVWXhEcjlWNXFkUGl2Wi8rUUZZNGh3QU1FZlNDSXpWcDVP?=
 =?utf-8?B?QVkvZVNBTzdKeStpZnJsS01XUFMxNjY2Nis1Z0xoQjJTYVFZMjAzNUhSZVZy?=
 =?utf-8?B?ZDNDM2ZLditPVkZWTWFEbldDOGhnelNYam5lK3R4em5lYUh1V0VIMnlxdEIy?=
 =?utf-8?B?VVhCMkk3M0VWMG16eVVVbFczRnNqM2FJOTNrSm9hTmV1cnR2NzNZb1V1TjZy?=
 =?utf-8?B?SmRFVWhzSkhnTkVQd2NxUUZEcXdQaTBmelhMK21qVTVNWktxMG5nYTBVVjc0?=
 =?utf-8?B?bnhnOU5MMU9qSm90bktpS2h2bEprWkE3SW1qcEFZemlvNFVyOU9kRjl0UWVp?=
 =?utf-8?B?WmFJQ1FjNkZKNmp1MzNnQWJnQURBVW81N1Y0cTZKU3FTd3llTHVqeE13cnZG?=
 =?utf-8?B?YlkySFNuYkFTWTk0N1ZON1UxTTJkaVVCTlJNWHRrWERiTWlxeW1wZnU2c0Z6?=
 =?utf-8?B?RW14QkRrcU1yNzZ2Ymd2M2MxZnVwNEdna0lITTQzUDdLT0hWRlowVGRWY0R5?=
 =?utf-8?B?MWFXV0FRaDlPMjJRYVpMKzRWQVMzY0JWUDl4NGl3R2M3OTIvSmx3VS9UQlZH?=
 =?utf-8?B?L2lnUWoxRmVIRTFidjQ1MWNqYlljMlpjTGRIVWZuT0VZVXdybWZyb21vdmJL?=
 =?utf-8?B?Z0NnemlNVEtGSkQ0T1BEaDlqYzhSU016c21IMjY5OG5GK0oyZE1haDhQd2Ru?=
 =?utf-8?B?Zk9uSmNXeEJyUEh4eURKZUViUkRodXk1Y2NsVE5zcjgvSEVGbFVYUis4YTJu?=
 =?utf-8?B?N1p4c2hZVlphUSt1THZBTnQxZitxSFNWS3lzQUVRTmVMQWJjMFJXekZxdW5X?=
 =?utf-8?B?VHVvL25YekpwYS82SVcrRzlHamNsQ1B0T3E3RjYycG02STA1bGpHLzdBV3Uw?=
 =?utf-8?B?VU1QWk0ycjVXbmlNdEYxTHBkaHZRN2lMZDVTUzh2aUp6SlEwMkVLQWhIa3ZO?=
 =?utf-8?B?bkZRelRmNUZnbng1Nm5pNHc2VUhpNG5iWGJ5b0M4WXpXeGhKMWRWYUFQN0pF?=
 =?utf-8?B?akYwT3hkUmVpUVEvNTRJbnhUMml2MFg3KzBmQzNYTDBNdDl6MGx0YUdmZXZ1?=
 =?utf-8?B?eDZzendZK3FrVDlhaXk2b2pETFdRQUI1eHV6NDRNZEJwc3pTWldRbHErUUcz?=
 =?utf-8?B?YTVVZjVVTjhQU3lIdEg2bkRqT0xnR21YZksvQXZZTEtKUW5nRUszVnAveC96?=
 =?utf-8?B?bVM1ckZoSWxHUDBSUlA0b0M3NkNiSFZ3aEVRWTh1WXVleVhsclFHcktvSGRO?=
 =?utf-8?B?T2pnQitoTGJ3TllHZUFGcElib0wzclUyQVc5Wkdzd3poalJDTjA5OEQ0ZUQ0?=
 =?utf-8?B?QTBUSzlzRDhnMWlCRCtqTWdPVkRSUUlqbGlBdEkyckVBVTFmQ2V6Rm5pcitn?=
 =?utf-8?B?RzFOcm56Q0NVMWQveExnNGlqN0Z4bzh5V3dZa3hXMTVPZjNHcGdWblp3PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8115cc7f-9c4c-43f7-95a5-08daa2055556
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 10:28:21.8494
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR84MB1656
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 10:28:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58211

------E7TF6I4SIR5DGL3MCKSK0GZ24W4G5G
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Tried in a sifferent machine with wednesday poky master

Building mesa-native gives the error

cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/m=
esa-native/2_22=2E2=2E0-r0/recipe-sysroot-native/usr/bin/llvm-config14=2E0=
=2E6' and '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-li=
nux/mesa-native/2_22=2E2=2E0-r0/recipe-sysroot-native/usr/bin/llvm-config14=
=2E0=2E6' are the same file

Am 28=2E September 2022 13:37:05 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>Try latest poky master?
>
>Alex
>
>On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> Mesa build fails=2E It complains that it copies llvm-config14=2E0=2E6 t=
o the same file=2E
>>
>> Am 28=2E September 2022 12:48:04 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>
>>> The following works for me=2E I get
>>>
>>> tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-split/mesa-=
vulkan-drivers/usr/lib/libvulkan_intel=2Eso
>>> tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-split/mesa-=
vulkan-drivers/usr/lib/libvulkan_lvp=2Eso
>>>
>>> --- a/meta/recipes-graphics/mesa/mesa=2Einc
>>> +++ b/meta/recipes-graphics/mesa/mesa=2Einc
>>> @@ -88,6 +88,7 @@ def strip_comma(s):
>>>
>>>  PACKAGECONFIG =3D " \
>>>         gallium \
>>> +        gallium-llvm \
>>>         ${@bb=2Eutils=2Efilter('DISTRO_FEATURES', 'x11 vulkan wayland'=
, d)} \
>>>         ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'opengl', 'opengl =
egl
>>> gles gbm virgl', '', d)} \
>>>         ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'x11 opengl', 'dri=
3', '', d)} \
>>> @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>>> -Ddri3=3Ddisabled, xorgproto libxshmfence"
>>>
>>>  # Vulkan drivers need dri3 enabled
>>>  # amd could be enabled as well but requires gallium-llvm with llvm >=
=3D 3=2E9
>>> -VULKAN_DRIVERS =3D ""
>>> +VULKAN_DRIVERS =3D "swrast"
>>>  VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>>>  VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>>>  VULKAN_DRIVERS:append =3D"${@bb=2Eutils=2Econtains('PACKAGECONFIG',
>>> 'freedreno', ',freedreno', '', d)}"
>>>
>>> Alex
>>>
>>> On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>>
>>>>  Also vulkan-drivers is empty in meson generated by bitbake=2E If I a=
dd it manually it will complain that llvm is disabled=2E How would I enable=
 it?
>>>>
>>>>  Am 28=2E September 2022 10:51:26 MESZ schrieb Alexander Kanavin <ale=
x=2Ekanavin@gmail=2Ecom>:
>>>>>
>>>>>
>>>>>  I think for software vulkan you need to pass in
>>>>>  -Dvulkan-drivers=3Dswrast when building mesa for the target=2E
>>>>>
>>>>>  Alex
>>>>>
>>>>>  On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>>>
>>>>>>
>>>>>>
>>>>>>   I asked the author so I assume he would have told me=2E Apparentl=
y the virglrenderer branch is obsolete=2E
>>>>>>
>>>>>>   Currently my only changes from poky master are adding vulkan open=
gl x11 to distro features and vulkan-samples vulkan-loader vulkan-tools vir=
glrenderer to core image extra install in local=2Econf=2E
>>>>>>
>>>>>>   I also added virtio-experimental flag to mesa and virglrenderer m=
eson recipes=2E
>>>>>>
>>>>>>   I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo=2E
>>>>>>
>>>>>>   What am I missing for Software Mode?
>>>>>>
>>>>>>   Am 28=2E September 2022 10:29:28 MESZ schrieb Alexander Kanavin <=
alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>   I would first check whether any of that work in the branch has m=
eanwhile landed upstream=2E The post is from 2021=2E
>>>>>>>
>>>>>>>   Have you tried the software Vulkan in the guest?
>>>>>>>
>>>>>>>   Alex
>>>>>>>
>>>>>>>   On Wed 28=2E Sep 2022 at 10=2E21, PHIL <heideggm@hotmail=2Ecom> =
wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>   I try to enable vulkan according to this tutorial
>>>>>>>>
>>>>>>>>   https://www=2Ecollabora=2Ecom/news-and-blog/blog/2021/11/26/ven=
us-on-qemu-enabling-new-virtual-vulkan-driver/
>>>>>>>>
>>>>>>>>   According to the author the modified qemu branch is still neces=
sary so I want to enable that=2E
>>>>>>>>
>>>>>>>>
>>>>>>>>   Am 28=2E September 2022 10:14:24 MESZ schrieb Alexander Kanavin=
 <alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>   You need to clarify what you want to do exactly=2E Why can=E2=
=80=99t you use the existing recipe?
>>>>>>>>>
>>>>>>>>>   Alex
>>>>>>>>>
>>>>>>>>>   On Wed 28=2E Sep 2022 at 9=2E58, Edgar Mobile <heideggm@hotmai=
l=2Ecom> wrote:
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>   Greetings,
>>>>>>>>>>
>>>>>>>>>>   I want to change the git repo url in order to test the Venus =
driver=2E Can someone tell me which variable in which recipe I'd have to se=
t?
>>>>>>>>>>
>>>>>>>>>>   Regards
>>>>>>>>>>   --
>>>>>>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 M=
ail gesendet=2E
>>>>>>>>>> ________________________________
>>>>>>>>>>   Links: You receive all messages sent to this group=2E
>>>>>>>>>>   View/Reply Online (#58196): https://lists=2Eyoctoproject=2Eor=
g/g/yocto/message/58196
>>>>>>>>>>   Mute This Topic: https://lists=2Eyoctoproject=2Eorg/mt/939681=
27/1686489
>>>>>>>>>>   Group Owner: yocto+owner@lists=2Eyoctoproject=2Eorg
>>>>>>>>>>   Unsubscribe: https://lists=2Eyoctoproject=2Eorg/g/yocto/unsub=
 [alex=2Ekanavin@gmail=2Ecom]
>>>>>>>>>> ________________________________
>>>>>>>>
>>>>>>>>
>>>>>>>>  --
>>>>>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail=
 gesendet=2E
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
------E7TF6I4SIR5DGL3MCKSK0GZ24W4G5G
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>Tried in a sifferent machine with wednesday poky master<br><br>B=
uilding mesa-native gives the error<br><br>cp: '/media/user/SSD1TB/yoctoqem=
u/poky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22.2.0-r0/recipe-sys=
root-native/usr/bin/llvm-config14.0.6' and '/media/user/SSD1TB/yoctoqemu/po=
ky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22.2.0-r0/recipe-sysroot=
-native/usr/bin/llvm-config14.0.6' are the same file<br><br><div class=3D"g=
mail_quote">Am 28. September 2022 13:37:05 MESZ schrieb Alexander Kanavin &=
lt;alex.kanavin@gmail.com&gt;:<blockquote class=3D"gmail_quote" style=3D"ma=
rgin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding=
-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">Try latest poky master?<br><br>Alex<br><=
br>On Wed, 28 Sept 2022 at 13:23, PHIL &lt;heideggm@hotmail.com&gt; wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; bo=
rder-left: 1px solid #729fcf; padding-left: 1ex;"><br> Mesa build fails. It=
 complains that it copies llvm-config14.0.6 to the same file.<br><br> Am 28=
. September 2022 12:48:04 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@g=
mail.com&gt;:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt=
 1ex 0.8ex; border-left: 1px solid #ad7fa8; padding-left: 1ex;"><br> The fo=
llowing works for me. I get<br><br> tmp/work/core2-64-poky-linux/mesa/2_22.=
2.0-r0/packages-split/mesa-vulkan-drivers/usr/lib/libvulkan_intel.so<br> tm=
p/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan-driv=
ers/usr/lib/libvulkan_lvp.so<br><br> --- a/meta/recipes-graphics/mesa/mesa.=
inc<br> +++ b/meta/recipes-graphics/mesa/mesa.inc<br> @@ -88,6 +88,7 @@ def=
 strip_comma(s):<br><br>  PACKAGECONFIG =3D &quot; \<br>         gallium \<=
br> +        gallium-llvm \<br>         ${@bb.utils.filter('DISTRO_FEATURES=
', 'x11 vulkan wayland', d)} \<br>         ${@bb.utils.contains('DISTRO_FEA=
TURES', 'opengl', 'opengl egl<br> gles gbm virgl', '', d)} \<br>         ${=
@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'dri3', '', d)} \<br> @=
@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D &quot;-Ddri3=3Denabled,<br> -Ddr=
i3=3Ddisabled, xorgproto libxshmfence&quot;<br><br>  # Vulkan drivers need =
dri3 enabled<br>  # amd could be enabled as well but requires gallium-llvm =
with llvm &gt;=3D 3.9<br> -VULKAN_DRIVERS =3D &quot;&quot;<br> +VULKAN_DRIV=
ERS =3D &quot;swrast&quot;<br>  VULKAN_DRIVERS:append:x86:class-target =3D =
&quot;,intel&quot;<br>  VULKAN_DRIVERS:append:x86-64:class-target =3D &quot=
;,intel&quot;<br>  VULKAN_DRIVERS:append =3D&quot;${@bb.utils.contains('PAC=
KAGECONFIG',<br> 'freedreno', ',freedreno', '', d)}&quot;<br><br> Alex<br><=
br> On Wed, 28 Sept 2022 at 11:49, PHIL &lt;heideggm@hotmail.com&gt; wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; b=
order-left: 1px solid #8ae234; padding-left: 1ex;"><br><br>  Also vulkan-dr=
ivers is empty in meson generated by bitbake. If I add it manually it will =
complain that llvm is disabled. How would I enable it?<br><br>  Am 28. Sept=
ember 2022 10:51:26 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.c=
om&gt;:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=
.8ex; border-left: 1px solid #fcaf3e; padding-left: 1ex;"><br><br>  I think=
 for software vulkan you need to pass in<br>  -Dvulkan-drivers=3Dswrast whe=
n building mesa for the target.<br><br>  Alex<br><br>  On Wed, 28 Sept 2022=
 at 10:44, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #e=
9b96e; padding-left: 1ex;"><br><br><br>   I asked the author so I assume he=
 would have told me. Apparently the virglrenderer branch is obsolete.<br><b=
r>   Currently my only changes from poky master are adding vulkan opengl x1=
1 to distro features and vulkan-samples vulkan-loader vulkan-tools virglren=
derer to core image extra install in local.conf.<br><br>   I also added vir=
tio-experimental flag to mesa and virglrenderer meson recipes.<br><br>   I =
still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.<br><br>   What=
 am I missing for Software Mode?<br><br>   Am 28. September 2022 10:29:28 M=
ESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1p=
x solid #ccc; padding-left: 1ex;"><br><br><br>   I would first check whethe=
r any of that work in the branch has meanwhile landed upstream. The post is=
 from 2021.<br><br>   Have you tried the software Vulkan in the guest?<br><=
br>   Alex<br><br>   On Wed 28. Sep 2022 at 10.21, PHIL &lt;heideggm@hotmai=
l.com&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt =
0pt 1ex 0.8ex; border-left: 1px solid #ccc; padding-left: 1ex;"><br><br><br=
>   I try to enable vulkan according to this tutorial<br><br>   <a href=3D"=
https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-enabl=
ing-new-virtual-vulkan-driver/">https://www.collabora.com/news-and-blog/blo=
g/2021/11/26/venus-on-qemu-enabling-new-virtual-vulkan-driver/</a><br><br> =
  According to the author the modified qemu branch is still necessary so I =
want to enable that.<br><br><br>   Am 28. September 2022 10:14:24 MESZ schr=
ieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote class=
=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid=
 #ccc; padding-left: 1ex;"><br><br><br>   You need to clarify what you want=
 to do exactly. Why can=E2=80=99t you use the existing recipe?<br><br>   Al=
ex<br><br>   On Wed 28. Sep 2022 at 9.58, Edgar Mobile &lt;heideggm@hotmail=
.com&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0=
pt 1ex 0.8ex; border-left: 1px solid #ccc; padding-left: 1ex;"><br><br><br>=
   Greetings,<br><br>   I want to change the git repo url in order to test =
the Venus driver. Can someone tell me which variable in which recipe I'd ha=
ve to set?<br><br>   Regards<br>   --<br>   Diese Nachricht wurde von meine=
m Android-Ger=C3=A4t mit K-9 Mail gesendet.<hr>   Links: You receive all me=
ssages sent to this group.<br>   View/Reply Online (#58196): <a href=3D"htt=
ps://lists.yoctoproject.org/g/yocto/message/58196">https://lists.yoctoproje=
ct.org/g/yocto/message/58196</a><br>   Mute This Topic: <a href=3D"https://=
lists.yoctoproject.org/mt/93968127/1686489">https://lists.yoctoproject.org/=
mt/93968127/1686489</a><br>   Group Owner: yocto+owner@lists.yoctoproject.o=
rg<br>   Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/uns=
ub">https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gmail.co=
m]<hr></blockquote></blockquote><br><br>  --<br>  Diese Nachricht wurde von=
 meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></blockqu=
ote><br><br><br>   --<br>   Diese Nachricht wurde von meinem Android-Ger=C3=
=A4t mit K-9 Mail gesendet.<br></blockquote></blockquote><br><br>  --<br>  =
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<=
br></blockquote></blockquote><br> --<br> Diese Nachricht wurde von meinem A=
ndroid-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></pre></blockquote=
></div><div style=3D"white-space: pre-wrap"><div class=3D"k9mail-signature"=
>-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ge=
sendet.</div></div></body></html>=

------E7TF6I4SIR5DGL3MCKSK0GZ24W4G5G--

