Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D613C32771
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 08:21:37 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (NAM12-DM6-obe.outbound.protection.outlook.com [40.92.22.70])
 by mx.groups.io with SMTP id smtpd.web10.5444.1664353292979168326
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 01:21:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=gWOFq5oq;
 spf=pass (domain: hotmail.com, ip: 40.92.22.70,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XOP31sMh2joPQpOzbx3Lafq/smG71K5lylhzCF8PsLuDR0TWzzE+ZKRWLmTsv87iuq5u9pYRgSY5K0cfENbrVdNAmXZbigPatnAw/MyX0sy5CK8ilcjU8kFPPq8bWixZAlOJUWPYeKsK7ItI+hnsGi18QciZDQbBV3HijySzhk6N5YF0D1owz5Cmm+WbKY6N2C3I6zbEtwsMO+w8ERNRtAOJ0B6R1CFd7ypGw13NjS+VClxyPzguDW6Qmh9jqryB8AVfB3tyLACbnknkAJDIIPLMrFoFUPsxV1AQG6TdE2oqo2fMmMiInnylTnsjeh21k4n3BLPjb138+U1x3EsHOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O3g3FS0QRD+IG5uJxMVs5OOuezl6S7a+2xUczw5SMJc=;
 b=NjbZR4imZNhWSLJfV8YIcOz2KD2eV7/kvDi8BfUJpJpiN8PoDjUSYvEeqR5+a9j5am2mSvf8yEb0pYjvNrSu3duYImYHBenSO2MF1toDGB93TpV4Xfwu5egHggFxH931g/XzwJ0RxW9rpv2lbWLslfD7tqmNCRzXEqiHvulWCCRLd/tRi/eOouD3iPRbuzGrvu+ZuAlbc2ulKdZ03FHfE0icpKoq7j3PSnxy/gzKJTY15AUd6kO+J6OXJF1cjHGIqHITWwEf/vh0tNU+O8E9ztWYiga076I0cOg3FQpNMWVmy35SUh515e+9l3ZKj1KxIEdUvN/7VOKhuhf077bc6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O3g3FS0QRD+IG5uJxMVs5OOuezl6S7a+2xUczw5SMJc=;
 b=gWOFq5oqAXKMBtQHXzS2PiuNhqqnr9KIznZ5ke9QHnLxMXXLyNH5FTKmzpRwUS2UAxE4CzQDqlfn9bpDbZtQDB+HDwRYxlrjug6Ywr7zZNsLzaETcEy2eHQZN+Ow+cF9aZ2RnyPO6mfm6hpMnowGxEs07TqGmCpwrz851QJ34tKlBBQTIzHolwi2yUdyYlvoppu1S0a2wekWf7s2Gxh/BX0KrFmG6o0Asay5YwD+zkT9ialnfxmD9x8+LYycHaXoeut1j3nZYmOk+Edj4By9I17DU3reiNCOJtYCh7DhTwAxqcJCcgt0cZ45zSGzMMJqdTaSMk2JaMNUdq6bvWkZ7w==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by SJ0PR84MB1699.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:432::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.24; Wed, 28 Sep
 2022 08:21:31 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Wed, 28 Sep 2022
 08:21:30 +0000
Date: Wed, 28 Sep 2022 10:21:24 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Changing git url of qemu
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
Message-ID: 
 <PH0PR84MB1835BF84B82124FF0DB10565C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----NQUO4JXYMJVR74IDTGAZ0R2SL7G56M
Content-Transfer-Encoding: 7bit
X-TMN: [zJobba0eMP3usCzSLUgMDMllQ3TvyAS7]
X-ClientProxiedBy: FR3P281CA0008.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::14) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <EB35A1FE-71E0-49F5-A5B8-4959E177C170@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|SJ0PR84MB1699:EE_
X-MS-Office365-Filtering-Correlation-Id: 5be8d20b-6997-41df-1c51-08daa12a7255
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wwZrFZtXkhIztIqnWIKodjm5n3S7dpvHh0pSkE8snRYvn6qHUDq6Xe6iXn4P6NfLqn5COwMOs72At6rE6Q9ofBS931ZhVOSsh5z2DENd94jqCK5Viyn6Wxn3vUiAMBS1060LKgp399094PD5nx5haBMwfCXx+wvf+1Yv+mRNRvKkIPM7e+Z0n11ZjfBB8zVNXjXFbgz6DoTKdUa1+ynBI4bvQfxxQViUyIoIp8RkNPKtFzZGdYQn0GREgngZiAcFaWKKrAuzZbM8fwrKYp3zk8+U9eAFa5EOtpHybLIc6fQ1aIp2jDoauoVZO1tTzQpCODBKbhO/dcFgjhsHz60xT0XEYOpCNjeTGC4H0KGytm5239P6n3IlNIAt+Nscqd/0Cb8JhgkHvTVg2upBzwSZkNlySSQy55+ACHVRUDez1h1hzHSUYbctlfSKRDWd9C94IpcZtRQEZXAEJv9mDTGFx1cbIEXqDm0iZuiqcylWGS+rAvMCYlOJGUPWzsp7mhTV2FU8ngEmhYhDi1zUGQg5dvX0Yk5Bz/g2vEFp0Okvp/wWq6Y4k/0ZW2Ff+wZGH/g1zl6Tt2UKC2ron8EaqR9bFjSpDSv6TRq/5cZ5hnFX6eq6HLo77pcmmUCrnV55o7tesOyjBRiqRC3lm41rLA1Wmz3D+WtQ2H8pyqUeQlRh15XFDYxnMa1ywr1Sku9IcxgP
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bVZzc2VtTHVmenFtcGRhSXAzQVlyUTNaL3lRZE9jODNvallJanQ1M05CVlQv?=
 =?utf-8?B?MGtTRlM5WUM0TE10RzBzK1ZGYm1hWmNtY1pGTjA3THJJclEyYnRCQ3p5bFFJ?=
 =?utf-8?B?OVdmTVdKd0FicTN6YWI1RXluQVpPOHRyMzVQRy9FV0lGUDI3ZERPU01XTmlW?=
 =?utf-8?B?YnhQK1dKdGkxWXBoRW5zUFNFUEN6d3h6MzR3NmNaY1NrdkcwMCsrSElBeW9Z?=
 =?utf-8?B?d2doV0ZSWG1udERoVXo1anluY0RVNE9YNFdlVzZ2eE5lTVNxb0haV2VPT1A5?=
 =?utf-8?B?SHptK0dJR3U2NjYxdVcrUm91R1pnZy9zQTd3Rjd0YThmVmlwQUhrYkVDU0tT?=
 =?utf-8?B?azJib0hJRzMxdENxK0ZpU0gxQ1hTN2RjMkwrSng1UDBjSWZzaDVyL0lLdDFX?=
 =?utf-8?B?aVN3Mk5RWVpsYU9Ya0pPY2J2ZjVRWVZabEpjazJsUXlwemtvaTU0cFQ0YllK?=
 =?utf-8?B?L2krSTlEalc0UHhrWGhnTENnRkZ5d0ZXalA0T3o2UXk1Z0U4cTgvdFVyb3Ru?=
 =?utf-8?B?dFB3UUNJVzB4aXBrbVVEWnNXQUZDSDVrbk43SjR1cGdKOWdhSVZxTzlwT2t3?=
 =?utf-8?B?NE9zVWNJSGx6ZllKbEwxMklsWFRVVUlvT3hQaEJZVkpYc3REYkpONWVQSk9y?=
 =?utf-8?B?QTRiUWJ0Qmk4akNoTlVTTitOUTJWVDVsOEVNc0RaMlJmRzVzaTM1bEpLeG16?=
 =?utf-8?B?dmFpS3o5ejdDQ0VSKzJvZ3ZjOTlxZmlaZW0wbHFsR3o1dFdCL0J1bDNQMEs2?=
 =?utf-8?B?UWFNTE82RE5DaUVMeWY5Vkk3dzAzZWNUQTkzOExwdGhEcXluSlZVNzRsb293?=
 =?utf-8?B?UktBb3FFOEgwUExwQUtFMVAwVWtCN29RU1RpS1pkckZxVVdGRmF3bmlTdVdR?=
 =?utf-8?B?dmlLejNBWHZRbVE0UlJWekFGbVp1TVhqZTlHdDNHUldBaElFU0s1aTdiQXVj?=
 =?utf-8?B?eDJFSmcxQnYwZ1kxNHFjNGY3TkdhWEZiY1JvdExaTmQzblhmSWRDNkQ0YVN0?=
 =?utf-8?B?UFJNOVBheFJwSVJ6WERwS3d3NFFrQW5CK1E3T2VkNmNPaWZjdHFtNW42QXhy?=
 =?utf-8?B?ZUJsUGpOeE1QalhPZXlMUWJrYkM0SWZjZWlObG85Y1ZmUlBsVEdzNXRodzcy?=
 =?utf-8?B?bnRHSHhYUTlDdUxGZ3NNaHNYS1pJbkt5dU9ZWHpkMXFjckI0N3lWU3BsdmN1?=
 =?utf-8?B?ckcwSjVnYWxRMTZ2aVhtaGZZeGZPem40UXhYeDF2a2ZVSXVKNDlnVkt4cENB?=
 =?utf-8?B?Z0lUSXhQM3RTN211ZVRlWkk4ZytZcW9QdXlhME5TYlJNNzhUWHgxMHQ3bDBj?=
 =?utf-8?B?YnRPRHBwNC9IRDY0TE5VT0Q1MVZPc0ZEenVid1BMeUZnNEIvZ09RUDh4WTFU?=
 =?utf-8?B?b1FtWDlYS1lVQ3FpTWRBRS9CK0NsTFkxais4L2xFS0FCRFBjeVlzUGFQUzBN?=
 =?utf-8?B?aG9vOTZOSWw4ckZ6NmtWOXJPRms5dFdqL3RuRFlsVDJoUFdaVkRVVzBHVXRk?=
 =?utf-8?B?VnBUUVBMRlNhRGx1a2k0VkFUTmd0Qk52ZDBRdHJGR0krYlM1cUp6Rll1OGRL?=
 =?utf-8?B?MjgrZHNVa2E0YkZyTExQdHFnZzdMdmFXNSt4bTJibHNnZ2pZWXFmU0NzQThY?=
 =?utf-8?B?QjlxWHRxME9OMzQ2WWxrdGFjbE9DcUVWZzJBa3k1Wm54QVNhUmZuZlJXK0VN?=
 =?utf-8?B?Z2Jtb2pIVXI2bEhKUzkyYmhGdXFHYmJIZFA4bEttN0JzYmVvb08yVmxBPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5be8d20b-6997-41df-1c51-08daa12a7255
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2022 08:21:30.6958
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR84MB1699
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 08:21:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58198

------NQUO4JXYMJVR74IDTGAZ0R2SL7G56M
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I try to enable vulkan according to this tutorial

https://www=2Ecollabora=2Ecom/news-and-blog/blog/2021/11/26/venus-on-qemu-=
enabling-new-virtual-vulkan-driver/

According to the author the modified qemu branch is still necessary so I w=
ant to enable that=2E

Am 28=2E September 2022 10:14:24 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>You need to clarify what you want to do exactly=2E Why can=E2=80=99t you =
use the
>existing recipe?
>
>Alex
>
>On Wed 28=2E Sep 2022 at 9=2E58, Edgar Mobile <heideggm@hotmail=2Ecom> wr=
ote:
>
>> Greetings,
>>
>> I want to change the git repo url in order to test the Venus driver=2E =
Can
>> someone tell me which variable in which recipe I'd have to set?
>>
>> Regards
>> --
>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et=2E
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group=2E
>> View/Reply Online (#58196):
>> https://lists=2Eyoctoproject=2Eorg/g/yocto/message/58196
>> Mute This Topic: https://lists=2Eyoctoproject=2Eorg/mt/93968127/1686489
>> Group Owner: yocto+owner@lists=2Eyoctoproject=2Eorg
>> Unsubscribe: https://lists=2Eyoctoproject=2Eorg/g/yocto/unsub [
>> alex=2Ekanavin@gmail=2Ecom]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------NQUO4JXYMJVR74IDTGAZ0R2SL7G56M
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>I try to enable vulkan according to this tutorial<br><br><a href=
=3D"https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-e=
nabling-new-virtual-vulkan-driver/">https://www.collabora.com/news-and-blog=
/blog/2021/11/26/venus-on-qemu-enabling-new-virtual-vulkan-driver/</a><br><=
br>According to the author the modified qemu branch is still necessary so I=
 want to enable that.<br><br><div class=3D"gmail_quote">Am 28. September 20=
22 10:14:24 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<=
blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border=
-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir=3D"auto">You need to clarify what you want to do exactly. Why can=
=E2=80=99t you use the existing recipe?</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed 28. Sep 2022 at 9.58, Edgar Mobile &lt;<a h=
ref=3D"mailto:heideggm@hotmail.com">heideggm@hotmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-c=
olor:rgb(204,204,204)"><u></u>


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
</blockquote></div><div style=3D"white-space: pre-wrap"><div class=3D"k9mai=
l-signature">-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit=
 K-9 Mail gesendet.</div></div></body></html>=

------NQUO4JXYMJVR74IDTGAZ0R2SL7G56M--

