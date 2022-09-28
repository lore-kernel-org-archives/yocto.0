Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DE4C04A95
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 08:44:47 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (NAM10-BN7-obe.outbound.protection.outlook.com [40.92.40.86])
 by mx.groups.io with SMTP id smtpd.web08.5702.1664354679248851995
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 01:44:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=nHX8ILgg;
 spf=pass (domain: hotmail.com, ip: 40.92.40.86,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rv5RLV32wDzJXthtRSsgpofa3kf3t6Ig57QEKZRcKa9+rjGXWkQlYIOwuTuB2N7GiYY5r4EFw18qSACe4vMYxGI3245Xc4MbY8jif1VzbQE9oOrLzHqXYR/hHt4p5VRS3OyPP6Viy/4LT41YOMdyDlsNfUzDjzqO61TChOHvAFjk/pKXy64sn2bHOUMTRwdieFOvG5Xlzs+0NkBRr9LuKmWtHGO5PqGdOTGnF/JhObvDe+kVunj6xb0DNQOWGTNMgUVza91mVfdf+XtSKqeEYUkJpwtHYxk6w8g7Y/wV3THwjJLuoDcSYz8pJT8LWnMjZb1EPTT6fMW1L2wv6alTkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9frH0a6pt8NeMuGidSf52ABi4zjoYOLvB26K5PVuq7c=;
 b=glrQUPQ0jBNEcw6MEnIQEa8WEu8Cupc7wxbP3cjRM2/NdMyk1kvRpc54BJmES4l8AYQeEQB+B7+P5DP7mdgUMS2fOSw52cygS1QPeUm5SBtxNCAodJy6mwzQLtIEVv/DSjtfgkDTmrdXyNGyEbE9MtIFFy7YyITqR/kyuNMmNlwCB3pBbPTUoWRH166fdp+zFeUrxFbvi0AvW36A3eT0k9o/bOTWmi9jezzOF2KlT5Ss73xj5VGXtkh+VZ3TR7jMZHQqSOuvX6lj/urZ3JFklYnCR01Dl2/IPtlcdJsQUTiBgWZPYj4RvBCnYXP+exZKZNPuyaK8QLDU/Ib38tTEPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9frH0a6pt8NeMuGidSf52ABi4zjoYOLvB26K5PVuq7c=;
 b=nHX8ILgg3tECckPoVZXM5UKUzvTajVxa+DDImCkINPEmZT8vbujKtx2XxDASo1ZM3LUFdhoXDw1ocJtQ7AxnP6avVtbwmFGHQgpi55niDupZBW+FWMsYc99xlavTq8MgHnW0XaoBudZwgC4qsa1eZ/SXryx5WI2xn76OwyipUsYcmjbYdewjNuJedsnOWVN0k0iEZTfoAFdsQNp1vj1OXYOiIE80SmanfKAFSCSn/ovkaIfez4SObTzAOtqHqL8cB1yeNm2r0WuEoU3jQrGAA08CStFlzsbcVSccDBNsjr3hvOpLBZe2g0eR64U/Q9z1HeVYYV7Sk+klTc9tiL3RvA==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by DM4PR84MB1592.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:4b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Wed, 28 Sep
 2022 08:44:37 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Wed, 28 Sep 2022
 08:44:25 +0000
Date: Wed, 28 Sep 2022 10:44:16 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Changing git url of qemu
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj_sdovPpw5+uhPaa65LDBgZUctApsJDv-6KReSi-Zk1PQ@mail.gmail.com>
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
 <PH0PR84MB1835BF84B82124FF0DB10565C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_sdovPpw5+uhPaa65LDBgZUctApsJDv-6KReSi-Zk1PQ@mail.gmail.com>
Message-ID: 
 <PH0PR84MB1835A9768FB8246072F05484C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----9UI304FTE941HP18YS3XPED8B17EL3
Content-Transfer-Encoding: 7bit
X-TMN: [ckSeo3WxMXM2ik7jLY35/9nB2dVIxVVo]
X-ClientProxiedBy: FR3P281CA0074.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::12) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <C73C3C87-C1E8-4836-B9BD-54CA9F5B99B8@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|DM4PR84MB1592:EE_
X-MS-Office365-Filtering-Correlation-Id: 824f21f7-28da-4413-fc5b-08daa12da5b9
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	S7IH4o7BvNfPKJOflRExjusB9EnQJRfJUB6tT3DJoMEE/8GdfZtfwRiiu1nwIvWTbG5Nsu8vbfqipM465lcsPdkbYTLqBX2bTZp0UwI1i5WgUNat7WKc2EYA/P1GlPuIESo/NYnfx6oR4/oruZQl0IitkaGw+ptEkWZ2wcJi0nr8va75w73Jq+q0pHGToHVDKkRxvIKpM4lyufP4JB7WTzawSwYHEUto39XZchrZsxuIUTAgpmCIJ2KjTk/8Uu/Vh8IGk+qJUBrizUxEaPFexOAPvjV605U5t+VATrZpsTEeX+Y7Fy/sdIA9ygDxwZVrG2F1evNvagftm1Bwy2p/4rgy0fK8Zh6Jo3rLjuBlDT3XnDORgo70qGAFO2BbZEHsDjHotyQIX2nFRTOepK+BSYieR7OVkM3xEUz7MLaZyo/8r5eZwfrWBjXc2ayFwqgekSSeaUy7zmBLzb/w/mmfJII/ItfnXfeesRCIsjlIMJUeA3sE//qlK4a7bs6fITmhDA+4oeDAkd3+wWRUMu7Z/VSiR1a7dkPFoyd5EaTBjH2NOaGtpa9bal83VK/DrdA69+BpNJpC1mhp6J0KIb2iLuR7+kofYTUflQKd2rdFgFhdaAInPNDu/Jc37QMLLECtyDTjue2+uaJdpMgyAEIOWkxHmIWqCYrr9iCrOUnpaJOCaR3zTDUdnOoib3RkJLFL
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WHNOZWVjQWhvRjRUaHZTOGdrT1lPSEY4UFR2QkpZTVJtdm5OYkVxTmhSeWMr?=
 =?utf-8?B?czg2Z0hMS00vWHJtRFluYTYzeFFHaXI5ejR6aS81QTg0YVJ2RjhZRmtGangw?=
 =?utf-8?B?djRFcWJ0NnBRMFl4bEx4eUtPRTB5dU5yTzZXaHFnVXluVmI1aDcwWDc3ME9w?=
 =?utf-8?B?dEZqdnpjVUNPU09CbnBUbTVpdGV6WjNVdUlUVHVCb1NwclZnOVFvSnVtWGNl?=
 =?utf-8?B?YWs1bkROVSt1T3IvSXBtdjhLbDQ4U1JjL3JmeEplMG1sUnc4YTRaWDBwWk5Y?=
 =?utf-8?B?SnE0ZFFkTWZkVERCNVFTOXJ2ZkFiN2E2bUVER2t0M2JJaEpqWG1VK1BtK00v?=
 =?utf-8?B?Z0RVd0JOQW14MGk4c1p2UnJtQVhHc1ErOFpOL3pWcDJnRmdoVXdBc25ycmJs?=
 =?utf-8?B?RVZtWjNzRXlPSVNEbUp2bk9aeERaMnVPcUxsTlA2bzJocnA4N2Mzd2RORXd0?=
 =?utf-8?B?N2k2aml4cjNWQjY0d0VyZ0haTmE0aUtHdXAyVmY3VzYreVhCclFZdjlBUmUw?=
 =?utf-8?B?NmR4elFrN3Y5Nm0rN1kyWi8wR0Qvd1htQVEwc2JKbi9CVEcvTDFmYXIyUGpV?=
 =?utf-8?B?czgyVHVndEMzckMvYWJFUkNSOFY4RWNnVkxBK1N5NjJzOFV4MUZ2Q2FmbHo2?=
 =?utf-8?B?cnJsUzhxaTc3U045b2FMajB2OFRzRTQ3YkVEK08wMzcrRFNOYVhTNzYwM09F?=
 =?utf-8?B?bDN1OGErYkJXcncwYTdsMCtkTERZTXQ5UWM0NTZjOFl4MVlpb0ozSnBWSUlQ?=
 =?utf-8?B?OXdlcHFoU1RWNG4rUDZSNC85aEE3dzk2cTFSbnNBbk9rME5YQ25jQ0JTSEdO?=
 =?utf-8?B?MFprblRxeW5Kdld4K093aWlqNGFuWEprM2xqY3JYTENqUGdBM1lpYitPbzYw?=
 =?utf-8?B?RExTR01HTTlEbEVwSWZpTm5IdG1LTkVhaHl6eHd5SnpneHBLRGRvUUlPbncy?=
 =?utf-8?B?TklWZ2hTSVF4WTJHd3JGcEY5N2xlSUJBYzFwNVJBNjVRMzFWSXdoSmc1ZkF3?=
 =?utf-8?B?ZDN5RlZ3NXllS1VnSTcwT056YSt5bDVBZG5tYVZwdXZ4KzNjM3U5RW1Na2Fx?=
 =?utf-8?B?ak1YM1liQ1VhQVp1TC8wWnNMMzRvM1FHeFdKQXVDbVYxWVNES3ZKajRkeENr?=
 =?utf-8?B?RjdIcHRzVGRUU2x5Ukh4TkRnNnk2WVFRM3h0YlZXUHhwanRKQ2c0SmMyTUdV?=
 =?utf-8?B?aWR4NXJKa3g4WVBZVkp6YnlGd1UyWlZxRXJTdm02R2F5MDVqS3VMTnUwbzA4?=
 =?utf-8?B?MVFFb3A1VU93RVVPc2N3Mzk5dE12V0wzQXVnRkhGMUF3TVJWSFFrRk82cFpT?=
 =?utf-8?B?MU9LSFVaR09ERXNHamJUVm01aGhyd0ZnQVdTa2czZDJabUh4dFJvWTZSY1dC?=
 =?utf-8?B?dmRkdXA5N2M2RTJNWGpwUUZFVnFqYmNDaUtUR054UUxpdXNWc1k2ejFqanVt?=
 =?utf-8?B?YkNGY0xjWTF4OGJKYTNKZmNaV0FkVXVqUTY3czk3R3VBMloyYncya2xRb2xh?=
 =?utf-8?B?TXp2Y3pGZkF2M0ZCd0dZbmR3ODNSVHdFSkNBclNnajFvU0JjVkpFSEtYVEh0?=
 =?utf-8?B?Rk1uMWluZk1BTkhneTAvMnJZTzZGaHhIMnhKYTRQSUZyMUwvSnY2SUV6Znpl?=
 =?utf-8?B?Wk8yU2l4YWJqeFhZMEYvM1k1YTZJZ2M2bG8zdWc4dWRzQ2QvRElIOUNuNnp5?=
 =?utf-8?B?N0FWUFIxc0JDSTdmaVVlODE0bWlVaDZUcFFEUUhhNzlMaXlib21CUlBnPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 824f21f7-28da-4413-fc5b-08daa12da5b9
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2022 08:44:25.5501
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR84MB1592
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 08:44:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58201

------9UI304FTE941HP18YS3XPED8B17EL3
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I asked the author so I assume he would have told me=2E Apparently the virg=
lrenderer branch is obsolete=2E

Currently my only changes from poky master are adding vulkan opengl x11 to=
 distro features and vulkan-samples vulkan-loader vulkan-tools virglrendere=
r to core image extra install in local=2Econf=2E

I also added virtio-experimental flag to mesa and virglrenderer meson reci=
pes=2E

I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo=2E

What am I missing for Software Mode?

Am 28=2E September 2022 10:29:28 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>I would first check whether any of that work in the branch has meanwhile
>landed upstream=2E The post is from 2021=2E
>
>Have you tried the software Vulkan in the guest?
>
>Alex
>
>On Wed 28=2E Sep 2022 at 10=2E21, PHIL <heideggm@hotmail=2Ecom> wrote:
>
>> I try to enable vulkan according to this tutorial
>>
>>
>> https://www=2Ecollabora=2Ecom/news-and-blog/blog/2021/11/26/venus-on-qe=
mu-enabling-new-virtual-vulkan-driver/
>>
>> According to the author the modified qemu branch is still necessary so =
I
>> want to enable that=2E
>>
>>
>> Am 28=2E September 2022 10:14:24 MESZ schrieb Alexander Kanavin <
>> alex=2Ekanavin@gmail=2Ecom>:
>>>
>>> You need to clarify what you want to do exactly=2E Why can=E2=80=99t y=
ou use the
>>> existing recipe?
>>>
>>> Alex
>>>
>>> On Wed 28=2E Sep 2022 at 9=2E58, Edgar Mobile <heideggm@hotmail=2Ecom>=
 wrote:
>>>
>>>> Greetings,
>>>>
>>>> I want to change the git repo url in order to test the Venus driver=
=2E Can
>>>> someone tell me which variable in which recipe I'd have to set?
>>>>
>>>> Regards
>>>> --
>>>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gese=
ndet=2E
>>>>
>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>> Links: You receive all messages sent to this group=2E
>>>> View/Reply Online (#58196):
>>>> https://lists=2Eyoctoproject=2Eorg/g/yocto/message/58196
>>>> Mute This Topic: https://lists=2Eyoctoproject=2Eorg/mt/93968127/16864=
89
>>>> Group Owner: yocto+owner@lists=2Eyoctoproject=2Eorg
>>>> Unsubscribe: https://lists=2Eyoctoproject=2Eorg/g/yocto/unsub [
>>>> alex=2Ekanavin@gmail=2Ecom]
>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>
>>>> --
>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et=2E
>>

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------9UI304FTE941HP18YS3XPED8B17EL3
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>I asked the author so I assume he would have told me. Apparently=
 the virglrenderer branch is obsolete.<br><br>Currently my only changes fro=
m poky master are adding vulkan opengl x11 to distro features and vulkan-sa=
mples vulkan-loader vulkan-tools virglrenderer to core image extra install =
in local.conf.<br><br>I also added virtio-experimental flag to mesa and vir=
glrenderer meson recipes.<br><br>I still get ERROR_INCOMPATIBLE_DRIVER when=
 running vulkaninfo.<br><br>What am I missing for Software Mode?<br><br><di=
v class=3D"gmail_quote">Am 28. September 2022 10:29:28 MESZ schrieb Alexand=
er Kanavin &lt;alex.kanavin@gmail.com&gt;:<blockquote class=3D"gmail_quote"=
 style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 2=
04); padding-left: 1ex;">
<div dir=3D"auto">I would first check whether any of that work in the branc=
h has meanwhile landed upstream. The post is from 2021.</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Have you tried the software Vulkan in the g=
uest?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed 28=
. Sep 2022 at 10.21, PHIL &lt;<a href=3D"mailto:heideggm@hotmail.com">heide=
ggm@hotmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:so=
lid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<div>I try to enable vulkan according to this tutorial<br><br><a href=3D"ht=
tps://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-enablin=
g-new-virtual-vulkan-driver/" target=3D"_blank">https://www.collabora.com/n=
ews-and-blog/blog/2021/11/26/venus-on-qemu-enabling-new-virtual-vulkan-driv=
er/</a><br><br>According to the author the modified qemu branch is still ne=
cessary so I want to enable that.</div><div><br><br><div class=3D"gmail_quo=
te">Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin &lt;<a hr=
ef=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.c=
om</a>&gt;:<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.=
8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-l=
eft-color:rgb(204,204,204)">
<div dir=3D"auto">You need to clarify what you want to do exactly. Why can=
=E2=80=99t you use the existing recipe?</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed 28. Sep 2022 at 9.58, Edgar Mobile &lt;<a h=
ref=3D"mailto:heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left=
:1ex;border-left-color:rgb(204,204,204)"><u></u>


<div>Greetings,<br><br>I want to change the git repo url in order to test t=
he Venus driver. Can someone tell me which variable in which recipe I'd hav=
e to set?<br><br>Regards</div><div><div style=3D"white-space:pre-wrap"><div=
>-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ge=
sendet.</div></div></div><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58196): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58196" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58196</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93968127/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93968127/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div><div style=3D"white-space:pre-wrap"><div>-- <br>Diese Na=
chricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></d=
iv></div></blockquote></div></div>
</blockquote></div><div style=3D"white-space: pre-wrap"><div class=3D"k9mai=
l-signature">-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit=
 K-9 Mail gesendet.</div></div></body></html>=

------9UI304FTE941HP18YS3XPED8B17EL3--

