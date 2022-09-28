Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5095FC04A95
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 17:59:40 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (NAM10-DM6-obe.outbound.protection.outlook.com [40.92.41.36])
 by mx.groups.io with SMTP id smtpd.web11.1047.1664387978844333068
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 10:59:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=f4pR6wQT;
 spf=pass (domain: hotmail.com, ip: 40.92.41.36,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PjdqOdjwpvfp7APU1zOH+XplNa9iV7kD1KBDft4Xqpu50wqlP6Ojzf6jDLIichO7tuS1bTeVz2aLuN+ALihzkptriNKvOr4KeAh0oCgv+qRHw+V5lPi3yJTDTFn/vCOTznPaCuYujSEZZyRucqXNI5lomlUT6hQ6FFwNRsyLo55T7/jQp+57b4nKAmF71b1pS6qIhXgzYch1/ZVx2MQ4qkO3nRcPC6WAFliS+LBB4Kp5Tn2CNeZ8esbginvT5rIynssIpvBewBn1Ut/0HJt4vTrc3lObifHGVpaFJ34f13P/HMFRCwET+AC+IrndW5PjY0NehyhiMysiWeyp2B7O2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EwYWlYQvN0XXNUqb2nnrgxI5Zrz+V8YRlzaaZvUyxcc=;
 b=aoM5EaQ9KmmyI8XvAFbe82w2z+rslGRr9Wgw919VvPZsF9uSs8+RyGQNVvGh/e/7yVURl37txoUaSVdqPOJdTel3wJ4TxygXowspryrIEiMHxN3FLujYATRioRld33WG8NAoJ8nHt093Ms3jcJpKqG+BvFRnghFl2nT+CcvrlFfVhgRlohFagPk819k4Bda5nBTebozYWkdbr6BwQFUwCwGQji8ffQ5jIIWSXvCweY+tqpOuzbTwKtTbMo50dgW0w8c3/LIygwgMk53BrRKLckVxLsVTT6+boC3yrLg1q7bRaI8WpZcQn+gxSnS6XF6OqY9u2GHKq218r6fRPr72CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EwYWlYQvN0XXNUqb2nnrgxI5Zrz+V8YRlzaaZvUyxcc=;
 b=f4pR6wQT9ayq+VhycFJKBQdfW5QTPfz1OgBxg+8IKEv4KIi+WWj6QiHryM34nRmsClx0i0CZVjY1PVRlk1tjv3a5fguXI/InvvlI0NS89VusoTF+GkG5wWIncyUp20nRH9QzA2FV8Fs/Py4NPv6qH+NN6WycwpWcMRnDSN9ZvIBDUH6dyNsL1zHgiydwuKYF2pZ7MqG2UAhX1iEPneWtbacpMxi5RZNdEMC7vz7csxZRTijTds+C+dYPKpfj6w+8ETBqy1xZhqhDh9LncSUyCsYQTo5VckHOlnf+F01CQZIQGCzYP2wWmnBOQbSaxXHd7S5ZLFeZRNKjN+lhaxKDKQ==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by MW5PR84MB1817.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1c3::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Wed, 28 Sep
 2022 17:59:36 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Wed, 28 Sep 2022
 17:59:36 +0000
Date: Wed, 28 Sep 2022 19:59:30 +0200
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
 <PH0PR84MB1835DF17A786B6B2B86C17C5C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----V1T5J6Y2NATWGY8F9LIGKN8MUVX352
Content-Transfer-Encoding: 7bit
X-TMN: [75ZaCrDo3Dapl48HhJYZGCFicw/OCYan]
X-ClientProxiedBy: FR0P281CA0126.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::6) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <B701AF6C-64E9-4EB9-882C-27053AD8B8F9@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|MW5PR84MB1817:EE_
X-MS-Office365-Filtering-Correlation-Id: 8680b7aa-ab72-4370-937a-08daa17b34c4
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/ye9oqjpnsTJYXNXurIGS85jnRqg7yNPkepDcX80zUPOCYfvcQQB6pCYKT/X3rCX7tyUQQqVMEls6xC0h/Sk70cCcxeTtv17yhWoXU6ZeIazP5szN+wt04nAbVvyUw8XuvDbnaXxuk1KrT3x0Bb077wP7qIrH3LGoES3Bjfi9m8bF7HoEDlp3H7LHMjGNFe9rCl8vegCTKtVhdia+m0ZBVqTcY0OLn0kEsYmqNQosqpcPQs/9PoaZRi8cyfjbAsWSn8HrooodXOZ1SuZybEKxSp1IVztlQlDXe/2AMP3jjWgwW6pMhIZ5gCDD7/0whAKMRdNediYpa80wo0YT3sXx36+2NOZdvuYQxm/RPl1WOIhz0/thLWlHwkv9tAFVgJNy7zbiGGV6lXbbmAD+qWbEk5xm8RC2R5O8I6W2BF7WXw4rfBWj6i2Ki2fwPW3hu65TO87lClaqia8ezkI0I65w/7Ja56wYiXw3k9obAiSP9gNZqGE++uXsCwpvJ6if/4DJqNyPQLQinEkMSYB2/xUatXbg72Tc6qNsWxdiiQkacJMeWnu+NxmIOaJX1bc+PCB1yImteNwl3/HEZkC82ldIv6pZejV7nWWBuXw+2nL8Rbrxr5m8sn16hfvAvU/2XFCib8bcZS2m+azxX1QLUO1q/XRYri1CtlVWLZZMitQmsVFbPGFAMmAZTDhkYTr8AIL
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K3VWclJTcHJtbEVjZHV5Z2M1a0xsMXdUaE5NdnlhWFQ2Tllvd254cFlBVS83?=
 =?utf-8?B?d0N3aEpnczZiY3g5OUVJcE5VVVBoTStqSDNkOGJnVzBqeXpuQkZsZk5oaG9q?=
 =?utf-8?B?QVVjVkxhMUkyeUFONk5iTXEyeG1FOUIwQ2NJWXNQT1NxblJmL295aVExa2Y1?=
 =?utf-8?B?ZzlhS2trRmJrM2pYY0VlNitSZUpMTUNmeDFqd2dPM1prcGNVbGd4dU8vdFpi?=
 =?utf-8?B?cHI1QndmSUFnNVhIUjhYMzBBTFRzVmpxWFBidVVlTHZ6cVUycTdONDJmeWxH?=
 =?utf-8?B?cm90ZCtPeXA1Vjl6NDJTckkzRElUN1ZVV0Jva3VUdGo3Tmxzc3NUeXJBaW52?=
 =?utf-8?B?ZjBuSXcxYXkvaGYyUERsQVAraUY2SjEyK1dOYVFSaFlTdHpLRmFKOTNPdXp1?=
 =?utf-8?B?KzZvUTFTdXZobk5XUFQ1UTltQ2NzM3FRazVibXpHa2RIYTc5QTdLM2ljdFJ5?=
 =?utf-8?B?WEpuZ296TkNPbjFNTU0xRThwNHY0VFBUTkNIQ1I0d0dNZHVzKzhHVGI5NlBi?=
 =?utf-8?B?WEpWSktyL0lmSm1iSmZQcDFwalNtMWVzOG9FRVRlMWNsZ3R0L3puNGdWMXBO?=
 =?utf-8?B?aEJrVllqelhSQWZ2UnlxU05jVG1OWHdlRVc2dGNyYVMwQ2UvQnN6ZXhDVWJK?=
 =?utf-8?B?K2tvYU9vZGNRR0l2WGVmSzVuY29nb2dTckNyemJuZHgrZXdtQzQ1c3dIM2lx?=
 =?utf-8?B?bWlkUXJwc2cwMkdYUjlibHBhWmRRZ2IvcGlwOTdkNnRPVmpSWll4eGt3RjB4?=
 =?utf-8?B?WDVsTXlvcWFvR3p4VEwzamk4WlRNSkJTT3dhaWZqR0xIajVnbHZURjdyS3U1?=
 =?utf-8?B?VVdJQ3N1WE1KQjJQSnlpWHVQZVUwZ2JkRWczenRBckxRS3VTd1ErcHIzbSsx?=
 =?utf-8?B?ajNuWnlPWjh3a29rQWt2Zy9kR0ZnYUkyZ01mOFhkdGF6QzVwU1BtYml2eDdE?=
 =?utf-8?B?K1cwK0pwcVB3aTMrSHpGcG1zSG1JbVBZbllrcU13aXZVdGJsbUZBMnN3SkMy?=
 =?utf-8?B?a3AxaXJuSmJkOXo1YjV2Z3phUDIrZ1VKRk5GTHFJU0FKM1UyTXV3Zlo2c2lD?=
 =?utf-8?B?eWdMY2wwaENlcnVZV3BOcHRsV0dlWU1MTzh0Nmhmc3lGWTlmMHFuNGVHRS9W?=
 =?utf-8?B?REVIZUZJQzJLMEtBZEs1Wk15Z3YrSUh4Tk81R25ERVJYYXVqdHZYSkwyZWI5?=
 =?utf-8?B?ak9GV1FQT2l1M1RuWjRvRHJCVFl4amVEbThrVTdOUjBraDhZYzV3ZEt6VW5M?=
 =?utf-8?B?bTR6ZmhEMUxZWHFmSmpOd1Jla3JhVXdQOFllSkkrbjlRNzJiYTlhaHNrdElF?=
 =?utf-8?B?bUdNenZtWTNGYkEwNWYrWFBuQ05neHY2Z1hCcndYSy8xYk4wWGplclhzMjR4?=
 =?utf-8?B?c0hqRUNZS1RQWXNNMzZ3SUYvbUNBZlBpc0hPWndPcUt3SmJJWjJ1bkVRQ2Fp?=
 =?utf-8?B?VFNWbk41ck9ndTV6eWNUaVBHeWIrcjhDVUxKTGhtWXhYb0tkN3R1eHVSYXNX?=
 =?utf-8?B?cnhldkgrdFB5dDRvSnMySGRNMnplYWhlc0VQNGdrS0tQRGRPRnd5bnh6Vllt?=
 =?utf-8?B?OVlsYUE4M1dJQW93YkduQk8rSWNZNnVHMmVMZ0lJNGp3bTJuVXJkbUxkV1BC?=
 =?utf-8?B?U054cm4zN3hycHNRUG5FL1R1UWV0Y0hyNXVtY2JNbjhWcFhkRHRrcU9lTTB4?=
 =?utf-8?B?eE95RU02ZWJjWGJpUW54U0xEWE1adFFHTHk2MzNHQjBxbHNkTzdyQUhBPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8680b7aa-ab72-4370-937a-08daa17b34c4
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2022 17:59:36.7350
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR84MB1817
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 17:59:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58210

------V1T5J6Y2NATWGY8F9LIGKN8MUVX352
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Tried building mesa on its own with the recipe changes=2E It fails with mes=
on Error this is a bug and should be reported=2E=20

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
------V1T5J6Y2NATWGY8F9LIGKN8MUVX352
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>Tried building mesa on its own with the recipe changes. It fails=
 with meson Error this is a bug and should be reported. <br><br><div class=
=3D"gmail_quote">Am 28. September 2022 13:37:05 MESZ schrieb Alexander Kana=
vin &lt;alex.kanavin@gmail.com&gt;:<blockquote class=3D"gmail_quote" style=
=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); p=
adding-left: 1ex;">
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

------V1T5J6Y2NATWGY8F9LIGKN8MUVX352--

