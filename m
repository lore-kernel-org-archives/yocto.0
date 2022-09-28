Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC9CEC32771
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 09:26:37 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (NAM12-MW2-obe.outbound.protection.outlook.com [40.92.23.107])
 by mx.groups.io with SMTP id smtpd.web09.5952.1664357191621064548
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 02:26:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=bGgnngXl;
 spf=pass (domain: hotmail.com, ip: 40.92.23.107,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Snnm5IUenpX57mM0qLoNw8St7DmKvUfw6tL0dkkfaeaU5lGi9L5cabbCRHmL/Rjktz/SxTUkPvIZu/qlNhtRjcVkR2D35xQWFzJFmaF5j4FeJQ+ulbOfuR6Ij4gkkQ12D6BHEpqeAu+bCOdkTbskwTB9MmmIK3ttTna7WTmAV13yHdNquYHTS1/z7P+ib29y06fiOxf3S7YQJCt6jmupL3TFBORl/8kRdxohXiXa5DQdLDQq6Tv0VCLnLSqNZPoeFlJpBi5uSiAXqMsb7xbmfA+BfIUspO7SDURTRFXecukFA01DK7P9uKUTahRaiD/mxc7qQf7YTVyWSBSQJF9l0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ksrn3FdRWYJG8xHB6SmxPzRsNeqSgihy5GzfL5i50s=;
 b=Y+gk7ho2oB54aCIMRoIt3CDZ2JP40o8WVg7ezMOa3JJ78w8siJO/HK6DFG76upN7LPoxE1hHxNmzwbSqbnKTRE3O49IgfSBGRD63qOdzkqbJcKbwXNLBOw73gEUASykpCr6cgpT58xTL63gzFns4XWzQuDPcU1lF0be7NnHea/YORClvt88enx4CoSQhqaI1f/TOD0K2BSD+CiFm52P9XjkWD9/7CB9nawmn//+7baWougzV7cPlAc7HlocYSQ/Ob/9NO+ccMrXrE9/86I6USb5MOYD3ZUl73ZCsEgHdcOjC8xCZmeUHpnkpv/VuxdSYhz/yuUiqWytDDvrxuqGJZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ksrn3FdRWYJG8xHB6SmxPzRsNeqSgihy5GzfL5i50s=;
 b=bGgnngXlYmlaDvVvotAiRO66OVz/Q31vJxRBe0KBKrcciKR52KWRMCJZQ3M8hjzfL4IBFY7eJCYnH3noNYk1lgoYMZMUHD9LbGH9LbiV53yUdNV7BJR1dkgWnTnSvjoRvtWX3zqs5uv0I4aUtGeUHeMtA2eJBwVRlKXQgUFYgxDwrtTaG3U5BdPJHNZR7inDaHnZif1MUBq09gdT4TeJxpHWGlP6HF8bbpFbXjOzETwkpWBt+gU/kvW2F37qbn3FToYZarzHp06PNKwapM8BEN7k3NpUlA4oF6uIylcORiU3ePpHR6Q614YdRDnnOHbDYsedi4hx/4g3czN4SBIn/A==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH7PR84MB1367.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:151::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Wed, 28 Sep
 2022 09:26:29 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Wed, 28 Sep 2022
 09:26:29 +0000
Date: Wed, 28 Sep 2022 11:26:22 +0200
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
 <PH0PR84MB18356ED8AA1C6C68BCFB3F96C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----FQ9CQ7KZLO4YS7P0V42OLG6UVZ7GE4
Content-Transfer-Encoding: 7bit
X-TMN: [5GzQHOuKMK3zJ3scAzttYypH5bZAv68K]
X-ClientProxiedBy: FR0P281CA0146.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::20) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <8C28BB93-0FAD-46EF-8BE7-258AE2FF77F3@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|PH7PR84MB1367:EE_
X-MS-Office365-Filtering-Correlation-Id: a2d03386-da50-403e-5181-08daa133860e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8Njn07P+aDHJiWVAFYt7FysiET53Iaj8zj+NDKTZEdtzuZX9okJZPT2KrDa086eeSVQe63MQo08UBkbjxqSXvy48UmAUXz8102C6lfgSUlEv7lcm43Q03FQxi2y1nkxp28lJ68PE32iSiXSLSFZ+m5TaAn1GjIigsLQ0U2tjmKsQT+JbII/dqkNqrubKfDbz5PZifhvu3b6RE2Z7BYCvQJsC/9NM4re6ApLb306NKdwEBAiS9zf0xKXJ1EvM976X6DPXLTwwPHUlM3LfU3Uj5NMdIoMYD8wmGe7OJpkwvc2p6uAA1dcwUqf2zmoogqcufmRaUkw3Yj6Owq/7/RcB3THNoXHnWCOtp+IhkJYRv+iHb+qrfDvnGljBgnFgHnaPBiEYGVNxe8U4cR4982e2VRYNah40Oa42byfZln03/SExPs2qf3A7GdMs7cH6EiZ4ga9KFs1ywUvX3Hs0suRHF+dpD5dq42c/zMJWXP+BFHSKQ0WDWNFcoHYddldDuJfIwFPEcSNE0Q1Br55TW/t74NLau8q91NapDXlzddmeg4mcc6oUp4vb8IVsXPbeoFqI1hvmC0Bjb5jDNUPRlA0zSsMRcUwTcDtuMcpfq3EXCm78dp//6KjVhjW/qvWy4Mt4zPsn5hXP5ucECTbevHzQQNHPRrwTByqwq7bjxvFNMjXQR1rpZnED9h6cpJOgZ+Mu
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bnJVYXdFT3k1YnVCODREMzlQQjFYNytQV2NXK01SeVJQRVVrdFdEdVJ6Z3Jm?=
 =?utf-8?B?R3IycEQyaWludmlSWW0ySVNFM1plMUp4WFNiNWUrQ2l6NG1DbEhzTE4zbUF6?=
 =?utf-8?B?bTU1Z1l2VmNxWnNKV3hsSENBZ25pZDlodExiNkh1MWtsWFJWanNNMlJPVVYx?=
 =?utf-8?B?NmFkcnVCaVVzbFNodGh5a2k1YzNJSDU4ekVqUFZPVlBaSitVVXdncFdnWkp6?=
 =?utf-8?B?bElBZXpiRnpKR1I3cExuMDJJblQyWkJMS3BYSWFYNWpaNnRSWnY1eko4M21N?=
 =?utf-8?B?cElxeE1ZYmFlOENUN29iUVZXcS9sOWo3QmhwMU9uY3U0UEJwRGFLdUFseEtE?=
 =?utf-8?B?aU5PZ1ZBSVk0WWRQVlRvQVVyaEEzd2U4TDM0eW9WWFVRK2xsVWp0UDhmck9t?=
 =?utf-8?B?NFYrV0hOWXJIZmVhMit2T1o1c3VTWFlCeWExRHRrRmlSMnZuaEoyZm50LytN?=
 =?utf-8?B?VEFZdUNSMUxiSWwyOE5tK1NvcjNPTHBsRi9XMmFXcWU5aXZwYlhOV3pYSkpl?=
 =?utf-8?B?M3d1ZEtzckpnamg4QVlSWnhwMFk0TEVMclhiVk42QnlLVGVFWUpBaUZ5eXdp?=
 =?utf-8?B?VEVTS2kvZDVEdW1iUG5XZGZSdCtHVzFHZnhRYU5za3lmWXpQWmtNSi81MWZN?=
 =?utf-8?B?UE5pRER1UHZNSVFocS9VNmdkYzQxTWM5aUdDM003bXNBUDQ3b2IrdXVoaFVz?=
 =?utf-8?B?TjdwM29ZNzV4Z1NyZklza2hXb3VxS3U5VmJnb2V1WURKTVh6NFhEV2k0OXp2?=
 =?utf-8?B?NUZiNkxEcGhoNWpFb2twa1kwL3VtcXZmR1BDNlZkRUxxQVRWMk9vU3NQSU1R?=
 =?utf-8?B?MVliY1loVEU0cTJ4aklrRlM3ZDBTMjRqUnI5TU5XdE4zV1VyODk4SElnTjQ4?=
 =?utf-8?B?Qk5lQWM0L01GcEhlV2RWd1hVL3ljSThsRFdIeFdhOVBTMlNQYTZLV2RTNWZ0?=
 =?utf-8?B?RDZ5VHZDUFR0T3RsaUhpdDV2dW1oWlc5K0F3OVVteE45Q3RGQkcxaXFuakFj?=
 =?utf-8?B?YmxHeFo0NkVLTXlWbXdtYWRyYXExUVZQejAzQkxEVDVHOC9oRzBMd21DdHdM?=
 =?utf-8?B?aXpTWjFFZkdqenVMNm1iYmx2QzVYR2JrM0pyQVpvbHRmWkFhSlFFTW1sYVZ0?=
 =?utf-8?B?YUo0bkwxS0x5eFV6R0g2TDVUWCt1MHhYSlFlcXo4ZnNaYkxyNmNaTndJVUVV?=
 =?utf-8?B?UDJ5YnJqRU1kT3ZVcU5qUjltQzhVV2tGTGFTYzZROTcyYitBTlVJeWlOb3Jp?=
 =?utf-8?B?eFZFaXh4eGVaL2QzODhvWlNSUk5VUVFmbStEdXZDUWFvU1NpOWk1U2d3OHdw?=
 =?utf-8?B?VkpLYUFpa2tpTzRHaVZCSFg4V2RONVBjU2pBRE9vTmtPTGd5U0dxOHBNL3da?=
 =?utf-8?B?ckNRd3cxSkJBRStRYTZtNXd5azNvWTZ1UHpMK1VjTXFobDFTbUFBNEcwUURj?=
 =?utf-8?B?STVKNktkMHM2dFIrM0NJcGN4Q3BFYnZtV2ZEcElNWnhrQzkrWlJjSHpKaDZJ?=
 =?utf-8?B?QWx6R1ViczlFUzlKMDh5OEpPWEZRNWswZVBvNnl2dGovanE5ZkFBcVNCNFFJ?=
 =?utf-8?B?QWJTNWM1c0FQb0o3YzNMK0pVaVNCK3lrdXZpdUdXbnJUdHFERFQ4L3Y2ZGd2?=
 =?utf-8?B?T1ByMDZsczV5cHdLWG9qcU1oSHFsMk5EcnRkTzNaYU9rMmdjanF1d0NzUFVO?=
 =?utf-8?B?V3FqbmlQSHlTeHFKQnd4bUZnZnF5ZjFMaGVMQTF3Z0hrVTBmdEx5eDlRPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a2d03386-da50-403e-5181-08daa133860e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2022 09:26:29.2398
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR84MB1367
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 09:26:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58203

------FQ9CQ7KZLO4YS7P0V42OLG6UVZ7GE4
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I now have=20

-Dvulkan-drivers=3Dswrast,virtio-experimental

In mesa_22=2E2=2E0=2Ebb  doesn't help

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
------FQ9CQ7KZLO4YS7P0V42OLG6UVZ7GE4
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>I now have <br><br>-Dvulkan-drivers=3Dswrast,virtio-experimental=
<br><br>In mesa_22.2.0.bb  doesn't help<br><br><div class=3D"gmail_quote">A=
m 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin &lt;alex.kanav=
in@gmail.com&gt;:<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt=
 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
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

------FQ9CQ7KZLO4YS7P0V42OLG6UVZ7GE4--

