Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DAF1ECAAD8
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 12:31:02 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (NAM11-CO1-obe.outbound.protection.outlook.com [40.92.18.54])
 by mx.groups.io with SMTP id smtpd.web09.5672.1663763452887071691
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 05:30:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=pPd1vCST;
 spf=pass (domain: hotmail.com, ip: 40.92.18.54,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h3805/JdiuiRVCtjVa2YTPrKzHSyia4N0MQxUadpdhCboxY/IGphCyfhBipneGaUoskdXw42dmgq2hRwd1kta3sbiaw8Ug4cvBvMUcOOrPR7V+0crauDjR9gjZS4pvnV6PZSwKoGUH5lFOAebHEOsvT8lhbDfe+fsnSSocMpJZ0GYiYJCDm8WyUVG4cfyFoFn4KApc+2dOeZAedr1729nOOA8Q8vQie27QGfVecK/IMluYGNJEXI1+9vUbKXpUBJEJ4AWQBcTDNwmvATgwugBzmwP+FtCK3r9liXuWZTXiRjxOMLq8l8nxflt9fNI2h3CYRdkBYAGMJ9iKDfIXgYow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZFyAm5qkQOq08RUEB1yL1e3VLUpGYz/piC/BDVtwQro=;
 b=NMI19i7enRGaXhhTE4ocApROA4t2ryfjVLjCCqMTHnRrBg3um/jLv/X6DfGCI8n/ADkMTOKnwlgVI1f671wtSyrhV23FbJIfliQi845uJWkhwglJXDdnCAvLpqqoNtlbm8L1DWy2BGctTZd9x2IoOwnkfDUjJA8Mu0veph52Ra6xB/KIdS2SspzdeZemc1n3sxb12AptVyyTutSe1oZqWeiDlI0+HrwVQ3rNe8a6kJtSPxWhI1byKzhsPZj6h1AVf3nM4Zrel82WuKOlujMuDIsQQ7INow9yV5zwlidw4n1OHA1g4yymSpNPpy4Hb4pWuy6/CMB+YZZ8DqeBGj7PAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZFyAm5qkQOq08RUEB1yL1e3VLUpGYz/piC/BDVtwQro=;
 b=pPd1vCST/9LmYq6gyXWlmLpJUx6GvwlYQQWYCTVsPkuMmX7K/on2cPycX0mosd/jwKxzoIAQLnGdjkFj7hLYP6FdMZFudhUPeFhAQDr9zpD7oz/pMBGn+73KPlXIiXysDhErmXBrPUl6vw69AEKdCec9E0KPcHOSPHXJ9oUjZTjFQ35thROaIwAmukB/1CqsXEP1DqWzTpQfieEIJSYC0ap3LWpFlOjWsLBopHk4f6FgttUjIf8+nNWF3JnoT6f5UZEs1e5DBuvIEv3KZg45M4CR0CafX0NkdekBJ904Zko00XkwgPRZyR0gk5q5JWu82wmD58fgwB25GmI7ZgDaFg==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by DM4PR84MB1710.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:49::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.16; Wed, 21 Sep 2022 12:30:50 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 12:30:50 +0000
Date: Wed, 21 Sep 2022 14:30:43 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Markus Volk <f_l_k@t-online.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj_LvAnPgrVgQsu2WcTa4R-Fyy84TTTSSzXJLseKGDB+KQ@mail.gmail.com>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
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
 <PH0PR84MB1835958E697521CC93766B80C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_LvAnPgrVgQsu2WcTa4R-Fyy84TTTSSzXJLseKGDB+KQ@mail.gmail.com>
Message-ID: 
 <PH0PR84MB1835B5FFD430030BE74F9F97C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----1LM1SLDWEATSIHSNICUE6RDR37UEDN
Content-Transfer-Encoding: 7bit
X-TMN: [vV2h22qv96XZbQ+uM8ChmUVTKOAxcgry]
X-ClientProxiedBy: FR3P281CA0139.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::13) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <7A752D35-3727-48AF-BEBB-7165A88F932C@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|DM4PR84MB1710:EE_
X-MS-Office365-Filtering-Correlation-Id: e3245883-b245-4b97-79d7-08da9bcd1e2d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WGpW9UFWTPKTsZ/XkXQQe50B711utUQwwUSPh2fw2zGt/oEcA1pOZEv+jKkh7hCxAEeWACxRzaTeOI8a9B/jpkdlTtcbCEMmE66VwdqptEJ4loriNKlPsgIZ9KNpz4XzdjfeDc4vCJ8FU6GP2kkQlvicj+b0tAC2jjXs+X5m4FAV45LCbZAMzXKGeP3XDMaaBr5+Tux/ajSUsRxj51kTaRaUcbp783WbLTW6r+KjDnNu9co27STN5IWr5qEG1649x0SzxfuO/1D/0/7WKKHDhQVngqgDCTT2GyL3JZ4rDRKN1sKr2wqLL+Bq8p7sClVKUDxp5mAKFSJ8klYtmaoAkX9yzJ3iiX5KsuETKfnrgRux79G/TerdMn0WWWCpesMpmWiuQwDprH8PwPI+ERq0/NdnT5Ddqelb9CjIvzFjN09h6rtT5ScQsgqv1wQm4ctm0bZxJBTC7aBHMP/WMKFwYyUbPf34pI84c3dmNZunEk0lfE1V8OVD28ToLukoABuubKURpqDzZQcHj68+eRRQ9to07l+wq+G8XnMs26BTsUYze+xVgXwOT+0YrFPyXjbChbqkgArfMFZSPHGgNr44zj1+zWiUzd7GmIE9aX+o6X1tmTzkKbj4VmLMk1zy+GxeK1J6bq9gPOcjx/03dUH3HHRWa68mG6eTiJezPyvFL83mRPThJYbnxT09L4zcI0PX
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NkxWaHV3RCtFVk1DV0FTVHFHK3NHcVRqaGpwYnFTaVBSMy9UdjA2QzV4WmRw?=
 =?utf-8?B?WXNWRnEzMWV2TTZyQnBtRHZranRKN0Q4cXBGNzJnQjd1cHFHczljUlA1Tno0?=
 =?utf-8?B?MjJtakk3TFZFVGVFMnVyekFEdkFqQ3dkREd5YXBJK3ZLdVF0bFk4K0FUSXNO?=
 =?utf-8?B?MmFFWXZMeFFpSjNHRlMraVNOazBVbFVMZFdPZk1yaDJjcGdibzN6RG52S3lt?=
 =?utf-8?B?bXVCcGdmRjZiMTJEaEFFTERnTFJFdGYwZEJ4T29OeWZNQTR3bEk0dXdTNDZz?=
 =?utf-8?B?cDM5K001b3B3ZmJkNHJvdUhkNGkxUFU5U1lLN25PdUdlOU12K0pPZGZzM3pS?=
 =?utf-8?B?Sks1NWlQL05RM0NBVHJ5UFhnanZpTVJMbUJDZjhjT2hsS2ZmVTErRmo0OUo0?=
 =?utf-8?B?dWsxWlV1Q2srZGtiaWtnQXVwZE1Pd0ZtcFZJbSt6MmZQM2h0cEZWRzFyNnJR?=
 =?utf-8?B?NU9kOVhNdnU1dXpvOENPUitRUUN1YUpmUU13YmpIN0ZoYmkvdGVHTDd4MXgz?=
 =?utf-8?B?OWk0Y3R2NTh2RGNVem5HTUVZdXNycWl6UG9lWU5BTDY5SGpPWTZQalhjMllx?=
 =?utf-8?B?L2pnMEh5SUIvTWdSbnlYY0FTMll5N3U4cmZuOHI0bGV4MWxFNng2WDdYQzdo?=
 =?utf-8?B?RWthMngranhnQ0ZEcEhGdkwwc01KWjdSMHFFa1grUGNDLzdpNDZVV1l5ZGxZ?=
 =?utf-8?B?bk9MaU9VWklDL1l1SGJSTDE4TkxMUzI5UE1PeWxnUEpJSHNLTkUrUXc3SWcz?=
 =?utf-8?B?K3FhWkt1NWs4ZVlmTkUrdDhQQi9lelZRWWJnOUxFZVRrRlh1Z0Z3VzMvZVhZ?=
 =?utf-8?B?aVdOaThwOXBvNkJRVURuLzQvd3JieU8wTmwzZGwwczRHSldFSGFQOHZoNUtp?=
 =?utf-8?B?dU9aR2tMc29MMEI3eWhIUzE3aDBsM3lUV1JZVUREY2xONmpKeCt2MmxGd1Va?=
 =?utf-8?B?MWVSTnRkMXJGcU1UZnlkUWI0dS8vSjZrNVhFdmdBZDJGeUhRaktSRmUzeDVk?=
 =?utf-8?B?QmVJZGJRbFBtZkRqZmpucGV0ZzZEODBUZWYxNWFNMDJyQlJtNjYvUmhqbkdo?=
 =?utf-8?B?U25rZElodkNWeGI0L2FMazdMM3RHcFFCaERkazQvM2pqQjVPcWtqS2FGSXBQ?=
 =?utf-8?B?ajFRRHJZZmVjLzZVMUYzeWtGRHhrNGcvOXhaeS80c0pXazVhcnNDbjQrVHFw?=
 =?utf-8?B?bUV1Nk91VlNTbFcyZHJKeStoNFE0MG9HVUlscTYxUTNSRExzSHJKMjhEY1o0?=
 =?utf-8?B?SEVDY3RWUno3UG1OUHZQSmovWTlzZ3J0R2pSQS92K0h2YkxxeURxUlg4ZUkv?=
 =?utf-8?B?cUxkcE9TR3pSZCt4UjQ3MTArQXBxQUZwSWU5S1E1T0t3SnBBR29IVGtIY3RE?=
 =?utf-8?B?bStjdGtNSEkya3JZY1g2T1Fja2pDdDN2U25GdjJtd2tKeTZ4SUZXL0RReHpD?=
 =?utf-8?B?M2RCejhHeU0vOXM3NzRDZ0VmRnlIUGxZbFBIdFJzTVFFTnlmOUVMN2YwdEcz?=
 =?utf-8?B?dzNUYzY0eHR5eFhaZlhjME1YQ0dXeWhQb1NKQ3huMU1VdEdJWDdZTmRNYnVk?=
 =?utf-8?B?MEkyckRma1d6bmFhQXpMaUFEaGNhREJGbEd2V1NrR3VwRzdNeXRodDVsRk1H?=
 =?utf-8?B?SW9JNlc1Wk9qRUFZUFVHNEhONjdrb1lvRi8wZkZVUlI1bW1URStJdjFTcko2?=
 =?utf-8?B?bU12ZFRvSkRIU0hIM3hOTVcxMUViTXBvNnU4UG14bkliWThDTEE0UG93PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e3245883-b245-4b97-79d7-08da9bcd1e2d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 12:30:50.4806
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR84MB1710
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 12:31:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58119

------1LM1SLDWEATSIHSNICUE6RDR37UEDN
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ok, there is a build directory tmp/work/cortexa57-poky-linux/mesa/2_22=2E0=
=2E0-r0 =2E In there, there is a package directory that has all libGL* libr=
aries and one libvulkan_virtio=2Eso but they are not installed to the Image=
=2E

Am 21=2E September 2022 14:14:10 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>This is not logs from mesa, this is logs from your image recipe=2E You
>need to start with mesa=2E
>
>Alex
>
>On Wed, 21 Sept 2022 at 14:12, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> One of the logs has this
>>
>>
>>
>> Error:
>>  Problem: package packagegroup-base-extended-1=2E0-r83=2Eqemuarm64 requ=
ires packagegroup-base, but none of the providers can be installed
>>   - package packagegroup-base-1=2E0-r83=2Eqemuarm64 requires packagegro=
up-distro-base, but none of the providers can be installed
>>   - conflicting requests
>>   - nothing provides mesa-vulkan-drivers needed by packagegroup-distro-=
base-1=2E0-r83=2Eqemuarm64
>> (try to add '--skip-broken' to skip uninstallable packages)
>>
>> Am 21=2E September 2022 13:57:17 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>
>>> You need to go to mesa's build directlory and inspect what is getting
>>> built, with which options, and how it is installed and packaged=2E All
>>> the needed bits are there, but it does take a bit of 'yocto skill' to
>>> find your way around there=2E Start by looking at temp/log=2Edo_config=
ure
>>> (and then do_compile and do_install)=2E
>>>
>>> Alex
>>>
>>> On Wed, 21 Sept 2022 at 13:38, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>>
>>>>  If I read the mesa-vulkan-drivers recipe right it should install lib=
vulkan_*=2Eso but it didnt I had to use vulkan-loader=2E Any idea in how to=
 debug that?
>>>>
>>>>  Am 20=2E September 2022 15:26:45 MESZ schrieb Alexander Kanavin <ale=
x=2Ekanavin@gmail=2Ecom>:
>>>>>
>>>>>
>>>>>  What often works is running it under strace - you might be able to =
see the one key syscall that causes the failure=2E Otherwise you might have=
 to go through the heavier gdb step through=2E
>>>>>
>>>>>  Alex
>>>>>
>>>>>  On Tue 20=2E Sep 2022 at 10=2E25, PHIL <heideggm@hotmail=2Ecom> wro=
te:
>>>>>>
>>>>>>
>>>>>>  Ok it seems to use Software now given how slow weston-simple-egl h=
as become=2E But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER=2E
>>>>>>  --
>>>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail g=
esendet=2E
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
------1LM1SLDWEATSIHSNICUE6RDR37UEDN
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>Ok, there is a build directory tmp/work/cortexa57-poky-linux/mes=
a/2_22.0.0-r0 . In there, there is a package directory that has all libGL* =
libraries and one libvulkan_virtio.so but they are not installed to the Ima=
ge.<br><br><div class=3D"gmail_quote">Am 21. September 2022 14:14:10 MESZ s=
chrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<blockquote class=
=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid=
 rgb(204, 204, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">This is not logs from mesa, this is logs=
 from your image recipe. You<br>need to start with mesa.<br><br>Alex<br><br=
>On Wed, 21 Sept 2022 at 14:12, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; bord=
er-left: 1px solid #729fcf; padding-left: 1ex;"><br> One of the logs has th=
is<br><br><br><br> Error:<br>  Problem: package packagegroup-base-extended-=
1.0-r83.qemuarm64 requires packagegroup-base, but none of the providers can=
 be installed<br>   - package packagegroup-base-1.0-r83.qemuarm64 requires =
packagegroup-distro-base, but none of the providers can be installed<br>   =
- conflicting requests<br>   - nothing provides mesa-vulkan-drivers needed =
by packagegroup-distro-base-1.0-r83.qemuarm64<br> (try to add '--skip-broke=
n' to skip uninstallable packages)<br><br> Am 21. September 2022 13:57:17 M=
ESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1p=
x solid #ad7fa8; padding-left: 1ex;"><br> You need to go to mesa's build di=
rectlory and inspect what is getting<br> built, with which options, and how=
 it is installed and packaged. All<br> the needed bits are there, but it do=
es take a bit of 'yocto skill' to<br> find your way around there. Start by =
looking at temp/log.do_configure<br> (and then do_compile and do_install).<=
br><br> Alex<br><br> On Wed, 21 Sept 2022 at 13:38, PHIL &lt;heideggm@hotma=
il.com&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt=
 0pt 1ex 0.8ex; border-left: 1px solid #8ae234; padding-left: 1ex;"><br><br=
>  If I read the mesa-vulkan-drivers recipe right it should install libvulk=
an_*.so but it didnt I had to use vulkan-loader. Any idea in how to debug t=
hat?<br><br>  Am 20. September 2022 15:26:45 MESZ schrieb Alexander Kanavin=
 &lt;alex.kanavin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote" style=
=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #fcaf3e; padding-left=
: 1ex;"><br><br>  What often works is running it under strace - you might b=
e able to see the one key syscall that causes the failure. Otherwise you mi=
ght have to go through the heavier gdb step through.<br><br>  Alex<br><br> =
 On Tue 20. Sep 2022 at 10.25, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; borde=
r-left: 1px solid #e9b96e; padding-left: 1ex;"><br><br>  Ok it seems to use=
 Software now given how slow weston-simple-egl has become. But vulkaninfo s=
till fails with ERROR_INCOMPATIBLE_DRIVER.<br>  --<br>  Diese Nachricht wur=
de von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></b=
lockquote><br><br>  --<br>  Diese Nachricht wurde von meinem Android-Ger=C3=
=A4t mit K-9 Mail gesendet.<br></blockquote></blockquote><br> --<br> Diese =
Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></b=
lockquote></pre></blockquote></div><div style=3D"white-space: pre-wrap"><di=
v class=3D"k9mail-signature">-- <br>Diese Nachricht wurde von meinem Androi=
d-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></body></html>=

------1LM1SLDWEATSIHSNICUE6RDR37UEDN--

