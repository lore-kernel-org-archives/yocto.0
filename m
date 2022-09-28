Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AF2CC6FA82
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 11:23:48 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (NAM10-DM6-obe.outbound.protection.outlook.com [40.92.41.71])
 by mx.groups.io with SMTP id smtpd.web10.6601.1664364218248963228
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 04:23:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=gojWt50y;
 spf=pass (domain: hotmail.com, ip: 40.92.41.71,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hrKqb6qtI3k6erBdNlEyoo86w5UEiH/0RYNTn6oD9SLsKG8+Qk8zdx23d8+c6oE8ESBGZ4Y87jFddhD5vSKyGoJEjpx5tM8rBfKyc/DNkGqVtkKNJJ3xWKt6GzrxDCZ5TDImb6A+Wryy0FkwVZ/VLYVy4hiSuB8iyNlX4IL+NpgEYdu5Kmdl2Cu8vLerlEjgROt9P1YSQT3NJ4dYS9QLMUUf+a434cGp/w09s7YbaPUPL5OAgMuuq8us/OT36T+CMZ2toUFKGrEE6oZETz5lRHKLxDdlfKyv/3iVTnAZfojG/lbQMiYHjoyBA25SB7BsKgCtqDXV726hqruqrpH4Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/iJTeAOWnA0BoE4yU4Y/fB61y59zq6YqkyMyUI6EQHU=;
 b=NGsW/uQzQtowzDxDjHq/IZ2qdg1vC7FL5fvPxllcnPPGp9CEDmPTN73c9BvoQtiuZL+jzcc49k19YmsxnibUk75P+uUDeU0y4cNcJ4mdtbABPxuzzN1ygWdEF61p0HX9Ye0O1gLfXHVgEHmXN/MhlRDQSb1oIdCWRlLA7luwqZTwKa7Vb4yHClt5rrK2xojh9GdGCM4hgjDq/ieLsx7W3QFXRmW6P3diNLVNLnH00/vLz3rdSex1YEL0UaVUpwHh+QF+a89lFarEZ1QJVgFKp2sHEdGhp0hY/rY3cjneOG7eSOk5EsoX1OZ/hGFTxbE6Gnpoa2w03dkz637ynPcyHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/iJTeAOWnA0BoE4yU4Y/fB61y59zq6YqkyMyUI6EQHU=;
 b=gojWt50yBzQMCTSUJfEtJuyv11MBrK/zjbABq5p1PZAmc5zvgflfgoaCfx0E9Rhyxkh/qkhzdZoEez5nyCrgu08Huzdr3tcgW5VIxoVAaL6d++BMUZr0GNgGGq272TEkyblilM/vDS/hmUBgHrDMdF7F4GhksVwUZAeuDpww5NMIfsXwFuUbroLjS0bx26wfcCHZ1CARAhRAjhRUbsOCpbmaUKO4ZhC5zpismD6CC66547MBGAn6KyHTlXG+sN/BdgLGa6sLaE1RGZ66SJILl/9eg+6yhgesdu+/ogbvQwufFl6RVz5agKSMWhgRqq14oifLlAVW/1JJIR3m7f79Cg==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by DM4PR84MB1517.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:48::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Wed, 28 Sep
 2022 11:23:36 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Wed, 28 Sep 2022
 11:23:36 +0000
Date: Wed, 28 Sep 2022 13:23:29 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Changing git url of qemu
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj_M_nrekrRRJ2oKbWFr7PhcTtwFNucrGd3=ZyVHfmP2MA@mail.gmail.com>
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
 <PH0PR84MB1835BF84B82124FF0DB10565C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_sdovPpw5+uhPaa65LDBgZUctApsJDv-6KReSi-Zk1PQ@mail.gmail.com>
 <PH0PR84MB1835A9768FB8246072F05484C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8hmMe9Qc-pb5KxFW-kraCJCZ=kttZmzkospx4VPp0rDw@mail.gmail.com>
 <PH0PR84MB1835197966482CF4FCA15A0BC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_M_nrekrRRJ2oKbWFr7PhcTtwFNucrGd3=ZyVHfmP2MA@mail.gmail.com>
Message-ID: 
 <PH0PR84MB1835BB630C385390A43FDDC9C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----QONLB8O91RDXWVJ64SN7BQ8TUC69OV
Content-Transfer-Encoding: 7bit
X-TMN: [4MMjsVMYFq96kH/NBc3LO1eh4a0XzkPf]
X-ClientProxiedBy: FR3P281CA0014.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::7) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <D8CAAC0C-21C3-41BC-8D25-0099E292F8B9@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|DM4PR84MB1517:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e12c1eb-840f-4598-ca71-08daa143e23f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PsukOl1Bm+1YyTvjBjyJo3TM3MlwhcuUel0QKOsLVDAvaBsaNmw9Z/3QNHOaoEGb9wLyhzvlw4A2fGOqrp72euWb24cjY/4sIBc3xQmrWkULw625FI+W3koDTeAA1DuNYNNaYq4huIHN8ilQqQd9DKvhdLnYfcE/87Jxs3rmTXbKMIb1I4hiIfetHdX8hPTLuEoCmOzzclUiAFW+sv1N4Qm0BQvIU8m1lT2PbMAKFSadmBfw5siu2icPmfXAkNfta6h9FHyhcMdhYwDovU4muH1gphJ0P7N0sy15l9TwGi1KRTylqnnmK3XPhKMo8kJj6Q5LJKXf/WjphiO/ZFWIn9BMirPxtIZ2fmNxyUnWHaYroJWBHf6zR5YnPtgJmiRrlNa+XXUI2xlhQNAmP3x8CE5zd9/3CJ52gU0KScKy3MVdy6CTx7rKrzWot1FSm/XcZJjlr8j1ALr7vpVHzSDBZmqJ59YtXj5Y0Ngd1THdijEZF4Exs9QJm/xdk1VWhoM0ed6WI1TM44zAONKBHjW39Au/PlzwX5DQ651lmkuW+4pc8H/z9GinR3Y7+k90B33mE6fWdoTJvoIZQ9WvhryYo1ZqLs9xT7iuYkBaspgfBO71ADmD82ZtB06Khcf2Jixegi2la++HgHqNwNcjWggCfyLOn2UDY83cMgq3gWsDlq3G59r9QLjk9EQo3iUSMKpx
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bnptb0JYbGtFWnptRnM5VGcwVEdQSTRwSUNmSHo3TVhpcElXWWZJRk1EUTNH?=
 =?utf-8?B?VGc0SzdJNjNSMmc3aExCQlhkWkUwWWdvUDBZUklCN3ZsY2tRUlk3eUNkdEVa?=
 =?utf-8?B?aVhiWTAzVy83NmNESEpQUDBOWU52KzZvdWhRNGxSZ1FRVy8yQW1YZTd5Um5I?=
 =?utf-8?B?Y2ZxK2EyTUZVUm54VkMrZVhKeGQrSStBeTM0ZnJ3VXFRTk5LQzA4WmtBeHdJ?=
 =?utf-8?B?MElvTVNueWZMYUlaSXYrTjhINHlLdUR5YStKbHgyT3VXKzBpUlc0NHg3V0py?=
 =?utf-8?B?bStuTjZCT1Vkci9oOXhrTm1IVlowUElWcklFRHd0VVpyV05vQ2duQmdhZjhX?=
 =?utf-8?B?aEhtWmZlaWRVWkxGeHJsMmdOa3pEdEl0QnZuZHNUVUl3S2l1Z292enpVYjNV?=
 =?utf-8?B?YTRWTmJ5V1hMeS9ubE04dHJ1dG9RUEUrNkJrOEt6aDhBMG1paXlvR0pFSGdF?=
 =?utf-8?B?SUNocEl0QXdqYXQ5NUJXTWVKUmw4MjFIR21zd3NpYmRYR1Q4Q0tTK25qd2tT?=
 =?utf-8?B?TThZbWQ4SUY5UGN5d0wrdWRMek1NNlYwZEFGMk9vd2NwelJnSTAzM1dRdno5?=
 =?utf-8?B?WTA3ZWF0VzBhMmI1cUVRWVc1RFYyNWV5WCtweWxwanB5alZGSGl1UXBiSWxP?=
 =?utf-8?B?Tk5nNzRmeUQzd0lWem5GUU5YclR2RWpGV1Q1TVNjSmlaNE1Nb1JRNXdKbmZz?=
 =?utf-8?B?ZFZZeCtmWGxJSmNzSFJ3bzYzZEFoSWxpQjBVVk8vbzdHUi92dXZBamZMWEVX?=
 =?utf-8?B?aTZaN3RQVytOWmhtOUJzRWpCUWJqWGJZQ1kvdkxPeHpscDBiNTRRSlBZakJr?=
 =?utf-8?B?ZElEejRKcUtmQ2lGc0VYSmNoM215L0ZwNzhQRmppWW5kUmM1RnhmTytIVEtq?=
 =?utf-8?B?aUdXalFLR2U5Q2hVS0JUV0pUZ1M0QzBYUElNNmdWWkNVWGl5R282dTgxZEQ3?=
 =?utf-8?B?Zjg2Y0NGMWdaUWJoWnlOWDd0WlBVbjRpU0d0TkYrQTM5OUdWMzNscXlOaU8x?=
 =?utf-8?B?SHdnN1o0K3poT1ZDZ1NCajNnVW45bThaVGhLUk91aENpSVd2cDhKcjVhdStX?=
 =?utf-8?B?a2l0bko0OXhOMHVWbG5PS2Ftdm8rTERNSno2L3BSSVBIeWl2bHp1NW5ZN29E?=
 =?utf-8?B?S05Cc1JtZ3B2MUx1TG5EeUJHTjEyZkZzeTVFT00xaHdpREFxdFJrb2tHSCt2?=
 =?utf-8?B?NlI1cFphZzF3eHpvdWpzN2RhY3BjUlY3NExGWTFPUkhyL29VZ0hFeVFZZFFh?=
 =?utf-8?B?RWEvWXJILzJTUkxrZGlRYUJjN2MxbExHcDBNSmdqd01ZQTJpMFhnbndSL0d0?=
 =?utf-8?B?bU56c2RQVjVybVdOYjRSVkFXMzdXbjdaZ2wzdWpkMTlWaUgwalBveTBJWFdT?=
 =?utf-8?B?YjJxNFQvTm0wbkwzbFk4K1Q5OU1TL1F5U2xSZlNFQkVSc080VWdUNnlOUHd2?=
 =?utf-8?B?aS9Zd1dSNmgvTWFBdVBrRUc3a3FiQko2TUtaeUlCV011cUo2ZUhSdTdEcDg0?=
 =?utf-8?B?SVBmS3cxcys1MUJwWGlmQ3I1VVdObTlLWmpiSUMxd3dIMDRHZmIzcEZlZ1ND?=
 =?utf-8?B?bUlLVXZqbHAzUG51d0g3Snl0YlB3SWh3MTlOQytEbWFYWCt3VWk2UExsWFB2?=
 =?utf-8?B?aWF0ejdCdldDWkdlQ1NxRkp0Ulp4R21wVG5adzhDZE1ReG1xT1o0NVp6NzZC?=
 =?utf-8?B?eUZlbDZ5b2pJYnRqbzA4OW9BNTh3Y2ZyRnlvTFJNOE1uNmwydkd5MkV3PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0e12c1eb-840f-4598-ca71-08daa143e23f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2022 11:23:35.9870
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR84MB1517
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 11:23:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58206

------QONLB8O91RDXWVJ64SN7BQ8TUC69OV
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Mesa build fails=2E It complains that it copies llvm-config14=2E0=2E6 to th=
e same file=2E

Am 28=2E September 2022 12:48:04 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>The following works for me=2E I get
>
>tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-split/mesa-vul=
kan-drivers/usr/lib/libvulkan_intel=2Eso
>tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-split/mesa-vul=
kan-drivers/usr/lib/libvulkan_lvp=2Eso
>
>--- a/meta/recipes-graphics/mesa/mesa=2Einc
>+++ b/meta/recipes-graphics/mesa/mesa=2Einc
>@@ -88,6 +88,7 @@ def strip_comma(s):
>
> PACKAGECONFIG =3D " \
>        gallium \
>+        gallium-llvm \
>        ${@bb=2Eutils=2Efilter('DISTRO_FEATURES', 'x11 vulkan wayland', d=
)} \
>        ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'opengl', 'opengl egl
>gles gbm virgl', '', d)} \
>        ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'x11 opengl', 'dri3',=
 '', d)} \
>@@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>-Ddri3=3Ddisabled, xorgproto libxshmfence"
>
> # Vulkan drivers need dri3 enabled
> # amd could be enabled as well but requires gallium-llvm with llvm >=3D =
3=2E9
>-VULKAN_DRIVERS =3D ""
>+VULKAN_DRIVERS =3D "swrast"
> VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
> VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
> VULKAN_DRIVERS:append =3D"${@bb=2Eutils=2Econtains('PACKAGECONFIG',
>'freedreno', ',freedreno', '', d)}"
>
>Alex
>
>On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> Also vulkan-drivers is empty in meson generated by bitbake=2E If I add =
it manually it will complain that llvm is disabled=2E How would I enable it=
?
>>
>> Am 28=2E September 2022 10:51:26 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>
>>> I think for software vulkan you need to pass in
>>> -Dvulkan-drivers=3Dswrast when building mesa for the target=2E
>>>
>>> Alex
>>>
>>> On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>>
>>>>  I asked the author so I assume he would have told me=2E Apparently t=
he virglrenderer branch is obsolete=2E
>>>>
>>>>  Currently my only changes from poky master are adding vulkan opengl =
x11 to distro features and vulkan-samples vulkan-loader vulkan-tools virglr=
enderer to core image extra install in local=2Econf=2E
>>>>
>>>>  I also added virtio-experimental flag to mesa and virglrenderer meso=
n recipes=2E
>>>>
>>>>  I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo=2E
>>>>
>>>>  What am I missing for Software Mode?
>>>>
>>>>  Am 28=2E September 2022 10:29:28 MESZ schrieb Alexander Kanavin <ale=
x=2Ekanavin@gmail=2Ecom>:
>>>>>
>>>>>
>>>>>  I would first check whether any of that work in the branch has mean=
while landed upstream=2E The post is from 2021=2E
>>>>>
>>>>>  Have you tried the software Vulkan in the guest?
>>>>>
>>>>>  Alex
>>>>>
>>>>>  On Wed 28=2E Sep 2022 at 10=2E21, PHIL <heideggm@hotmail=2Ecom> wro=
te:
>>>>>>
>>>>>>
>>>>>>  I try to enable vulkan according to this tutorial
>>>>>>
>>>>>>  https://www=2Ecollabora=2Ecom/news-and-blog/blog/2021/11/26/venus-=
on-qemu-enabling-new-virtual-vulkan-driver/
>>>>>>
>>>>>>  According to the author the modified qemu branch is still necessar=
y so I want to enable that=2E
>>>>>>
>>>>>>
>>>>>>  Am 28=2E September 2022 10:14:24 MESZ schrieb Alexander Kanavin <a=
lex=2Ekanavin@gmail=2Ecom>:
>>>>>>>
>>>>>>>
>>>>>>>  You need to clarify what you want to do exactly=2E Why can=E2=80=
=99t you use the existing recipe?
>>>>>>>
>>>>>>>  Alex
>>>>>>>
>>>>>>>  On Wed 28=2E Sep 2022 at 9=2E58, Edgar Mobile <heideggm@hotmail=
=2Ecom> wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>>  Greetings,
>>>>>>>>
>>>>>>>>  I want to change the git repo url in order to test the Venus dri=
ver=2E Can someone tell me which variable in which recipe I'd have to set?
>>>>>>>>
>>>>>>>>  Regards
>>>>>>>>  --
>>>>>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail=
 gesendet=2E
>>>>>>>> ________________________________
>>>>>>>>  Links: You receive all messages sent to this group=2E
>>>>>>>>  View/Reply Online (#58196): https://lists=2Eyoctoproject=2Eorg/g=
/yocto/message/58196
>>>>>>>>  Mute This Topic: https://lists=2Eyoctoproject=2Eorg/mt/93968127/=
1686489
>>>>>>>>  Group Owner: yocto+owner@lists=2Eyoctoproject=2Eorg
>>>>>>>>  Unsubscribe: https://lists=2Eyoctoproject=2Eorg/g/yocto/unsub [a=
lex=2Ekanavin@gmail=2Ecom]
>>>>>>>> ________________________________
>>>>>>
>>>>>> --
>>>>>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ge=
sendet=2E
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
------QONLB8O91RDXWVJ64SN7BQ8TUC69OV
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>Mesa build fails. It complains that it copies llvm-config14.0.6 =
to the same file.<br><br><div class=3D"gmail_quote">Am 28. September 2022 1=
2:48:04 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<bloc=
kquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-lef=
t: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">The following works for me. I get<br><br=
>tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan-d=
rivers/usr/lib/libvulkan_intel.so<br>tmp/work/core2-64-poky-linux/mesa/2_22=
.2.0-r0/packages-split/mesa-vulkan-drivers/usr/lib/libvulkan_lvp.so<br><br>=
--- a/meta/recipes-graphics/mesa/mesa.inc<br>+++ b/meta/recipes-graphics/me=
sa/mesa.inc<br>@@ -88,6 +88,7 @@ def strip_comma(s):<br><br> PACKAGECONFIG =
=3D &quot; \<br>        gallium \<br>+        gallium-llvm \<br>        ${@=
bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan wayland', d)} \<br>        $=
{@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'opengl egl<br>gles gbm vi=
rgl', '', d)} \<br>        ${@bb.utils.contains('DISTRO_FEATURES', 'x11 ope=
ngl', 'dri3', '', d)} \<br>@@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D &quo=
t;-Ddri3=3Denabled,<br>-Ddri3=3Ddisabled, xorgproto libxshmfence&quot;<br><=
br> # Vulkan drivers need dri3 enabled<br> # amd could be enabled as well b=
ut requires gallium-llvm with llvm &gt;=3D 3.9<br>-VULKAN_DRIVERS =3D &quot=
;&quot;<br>+VULKAN_DRIVERS =3D &quot;swrast&quot;<br> VULKAN_DRIVERS:append=
:x86:class-target =3D &quot;,intel&quot;<br> VULKAN_DRIVERS:append:x86-64:c=
lass-target =3D &quot;,intel&quot;<br> VULKAN_DRIVERS:append =3D&quot;${@bb=
.utils.contains('PACKAGECONFIG',<br>'freedreno', ',freedreno', '', d)}&quot=
;<br><br>Alex<br><br>On Wed, 28 Sept 2022 at 11:49, PHIL &lt;heideggm@hotma=
il.com&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt=
 0pt 1ex 0.8ex; border-left: 1px solid #729fcf; padding-left: 1ex;"><br> Al=
so vulkan-drivers is empty in meson generated by bitbake. If I add it manua=
lly it will complain that llvm is disabled. How would I enable it?<br><br> =
Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin &lt;alex.kana=
vin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0p=
t 0pt 1ex 0.8ex; border-left: 1px solid #ad7fa8; padding-left: 1ex;"><br> I=
 think for software vulkan you need to pass in<br> -Dvulkan-drivers=3Dswras=
t when building mesa for the target.<br><br> Alex<br><br> On Wed, 28 Sept 2=
022 at 10:44, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid=
 #8ae234; padding-left: 1ex;"><br><br>  I asked the author so I assume he w=
ould have told me. Apparently the virglrenderer branch is obsolete.<br><br>=
  Currently my only changes from poky master are adding vulkan opengl x11 t=
o distro features and vulkan-samples vulkan-loader vulkan-tools virglrender=
er to core image extra install in local.conf.<br><br>  I also added virtio-=
experimental flag to mesa and virglrenderer meson recipes.<br><br>  I still=
 get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.<br><br>  What am I =
missing for Software Mode?<br><br>  Am 28. September 2022 10:29:28 MESZ sch=
rieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote class=
=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid=
 #fcaf3e; padding-left: 1ex;"><br><br>  I would first check whether any of =
that work in the branch has meanwhile landed upstream. The post is from 202=
1.<br><br>  Have you tried the software Vulkan in the guest?<br><br>  Alex<=
br><br>  On Wed 28. Sep 2022 at 10.21, PHIL &lt;heideggm@hotmail.com&gt; wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8e=
x; border-left: 1px solid #e9b96e; padding-left: 1ex;"><br><br>  I try to e=
nable vulkan according to this tutorial<br><br>  <a href=3D"https://www.col=
labora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-enabling-new-virtual=
-vulkan-driver/">https://www.collabora.com/news-and-blog/blog/2021/11/26/ve=
nus-on-qemu-enabling-new-virtual-vulkan-driver/</a><br><br>  According to t=
he author the modified qemu branch is still necessary so I want to enable t=
hat.<br><br><br>  Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kan=
avin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #ccc; padding-lef=
t: 1ex;"><br><br>  You need to clarify what you want to do exactly. Why can=
=E2=80=99t you use the existing recipe?<br><br>  Alex<br><br>  On Wed 28. S=
ep 2022 at 9.58, Edgar Mobile &lt;heideggm@hotmail.com&gt; wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left=
: 1px solid #ccc; padding-left: 1ex;"><br><br>  Greetings,<br><br>  I want =
to change the git repo url in order to test the Venus driver. Can someone t=
ell me which variable in which recipe I'd have to set?<br><br>  Regards<br>=
  --<br>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail =
gesendet.<hr>  Links: You receive all messages sent to this group.<br>  Vie=
w/Reply Online (#58196): <a href=3D"https://lists.yoctoproject.org/g/yocto/=
message/58196">https://lists.yoctoproject.org/g/yocto/message/58196</a><br>=
  Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93968127/16=
86489">https://lists.yoctoproject.org/mt/93968127/1686489</a><br>  Group Ow=
ner: yocto+owner@lists.yoctoproject.org<br>  Unsubscribe: <a href=3D"https:=
//lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yo=
cto/unsub</a> [alex.kanavin@gmail.com]<hr></blockquote></blockquote><br> --=
<br> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.<br></blockquote></blockquote><br><br>  --<br>  Diese Nachricht wurde v=
on meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></block=
quote><br> --<br> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K=
-9 Mail gesendet.<br></blockquote></pre></blockquote></div><div style=3D"wh=
ite-space: pre-wrap"><div class=3D"k9mail-signature">-- <br>Diese Nachricht=
 wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></bo=
dy></html>=

------QONLB8O91RDXWVJ64SN7BQ8TUC69OV--

