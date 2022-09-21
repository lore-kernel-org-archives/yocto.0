Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D201EECAAD8
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 11:38:41 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (NAM04-DM6-obe.outbound.protection.outlook.com [40.92.45.21])
 by mx.groups.io with SMTP id smtpd.web10.5273.1663760317484450789
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 04:38:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=IYQMOi/C;
 spf=pass (domain: hotmail.com, ip: 40.92.45.21,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GdRJBmpSKE75kCwTk5jZfXkEl0SowT1jo6VjBQrbanRGAsHS6tiB5R7viHvndIwGvIsnZbuQrMuZSlHmXyYYgoqeT6sYA9eRxkM1AbHS8HQ4dRwFl/6n1OPyqO6zITvKE34pEfA33FrOE7kdzG09UVu9TgYEfdp3gmjy57pQbz875ix5sDmZ9JU0W0Y9OEf1y/E6pIFmMjRYI8dmWiL0LeJ6O8m4/yd41Tch4Z/NLNEnL8YlGdfFUiL/ouo1cmGn4T2ZMsXfG1JX/MYW/KnYrqk9aHtTelAC+KdBgMDpw70rQyzZON8ZNTU0ZJvdAARSVUoJKrPfo/6TF72LnPHToA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nnXCI9CIRh2TGeFty0JdlxNw66RDbnlUP/uWFL4KUVI=;
 b=TaXOGCSVeWxwR53bcOKUR/O2g/dhothQuaJd2Afe1kKN9Gg4cX0YSbGx0OSoR3AcT8jO3AcuhuRxGAq5JlkA1hpg/wP7SiwUQhYMW8hrl7/07Bag3R8B+TVqGJnfeGqIk7z5uu0uYAzPe/QRlJVreSd31RIV1htk6bN6cfrAAlJby0pLqmTX8ZonIQVpiyf9rytWc2NcRpwFN/A7kehqgX26c6mB5JZFczjQGXkTRdy94DpawNhaBp9ZOjd40idZsq2V+xsBzrwjtOaEKfjqdy4FLRljSU8aknJO1qsrkt02ialOqYw6FT2GNBbmXE9UiQyB3MtOaEEMW9ehOWZbNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nnXCI9CIRh2TGeFty0JdlxNw66RDbnlUP/uWFL4KUVI=;
 b=IYQMOi/CLvpDn6SLQFIJUixc1+hg5Lx3N17f5d0Kts1OvuOM7lzqQlzTN3nFCVM05jMl0X2GnjdBHTTZ7lwI6ba6i9yF/jEHlvjb0foIuddm3AEo1qkf+kfODskaURw0vrqngNTb+l2XFuPkBru9jaLN9p79sP9Jx93HEX0xp2laeEf5WiQQnQh7R/Bq76F74TrK/iS85ivGMme8ClvUAbLEt78j3L7uiXMhowBcc3Z2oFHazrn+06mT5BBcpr4Hp7VavEH5VkFa3suhPNYrFLE7krbs6/bWgc2dlKo/BN1AGS39NTEAh0/iQOB40aIIR+iat+k54hiVWojFIRQ2gw==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by MW4PR84MB1586.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1a5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.19; Wed, 21 Sep
 2022 11:38:35 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 11:38:35 +0000
Date: Wed, 21 Sep 2022 13:38:29 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Markus Volk <f_l_k@t-online.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj9z+0TX5WpyKSYBEM40HASYHykDHktVENsTfDnUTvyrug@mail.gmail.com>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB183571245531C6D271BD5A90C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-rLXUAXn_BNYCM8bjeeWVCWU3YYFvnr5bagw7e0V8Akw@mail.gmail.com>
 <PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-0ewbydhAYAw6u0JgnKcBEJTSgZ+QzTxnwD2Lmh9vDgA@mail.gmail.com>
 <P5UGIR.ETKUECS9HZXY1@t-online.de>
 <PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <40WGIR.ECG3N5TIIYMJ1@t-online.de>
 <PH0PR84MB183594E043D2D4644D204710C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ZmE4_KY41Xe90YSFSm-t3MPVQjDH+gTw8TJBFgTjoWw@mail.gmail.com>
 <PH0PR84MB1835BEBC6B143383119B2EA7C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-DASeVZAJKe5SURTNec_uth5CofkyOu6ytn9rv2dc76g@mail.gmail.com>
 <PH0PR84MB1835ADAA61579A359EE70E46C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9z+0TX5WpyKSYBEM40HASYHykDHktVENsTfDnUTvyrug@mail.gmail.com>
Message-ID: 
 <PH0PR84MB183510DD06DC37C976C8ABFEC74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----MPDX41XZF7CD1LBB15BG38T12U0DLG
Content-Transfer-Encoding: 7bit
X-TMN: [4Uh6UFuQ9p81tTGxkPrdg6a8NM4Tv2v0]
X-ClientProxiedBy: FR3P281CA0131.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::14) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <DA5DA2D2-5E9E-4383-B5A0-845611D295B7@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|MW4PR84MB1586:EE_
X-MS-Office365-Filtering-Correlation-Id: 13f0e579-c049-4660-e236-08da9bc5d15d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	B+ho9Zm0PfSNqNVjKtyuBjhx/6neOX9+NOvDUqVB4Dy8Zp4O7UOe3RwpEAXPb3zRx5e7CpEFV2cn2IA3o4oW1Sr2npM+wy3lRrwyD5kUAnVALllLe1oxLPxrzIVo8OerbTWLZQxg+RD7noC7eLzdkKgJv+xsfrqpCbM7H/P2FT8ApHKDqbg8CHBovtN6LtRn6lqVi4L1lwuJld6KvTugaHiPqfSlDvo2mPByVTg0H2JhEoftVGpI83BknLE58fXN2VI+zkhTbmt8QLJVgUtWddcL+MtlWc2KttjbNYmDg2ayjWBLGi1Iw/1Q35116uVtSAlz7VtsNMH++xGH9bjf8xBbN/jMK029Oh2TJPRMXn4lCjQUQpiyDbSyXA/sjzlnAnxePCTOgUh/P6bsJILVzKVv0nWNsJGqgB33yh6H+cS4VyKWdjLTarfUvsVl0aBeThKHiS9Z9ImECdpiizclk78akmNqVLly4qIMJytWJW/KVkSgTM5jH9gg0y5JSgZJzlTbbbYcuh1J5VN6UUSOyYsiKByXEgmDh5SATGGpdGkVwWlL1NLZEJVkg3KZc81NieR8OfX3HI4ZgI0vGmn8HvHVocPc3mVvpjju97wbThXx4wPNEuntU0Y3MXPUfYYpaRtuTCDf0ptlNzFRKZAjU/uYUPYWOMfL+9zwxZwkf7RzGToavXB6KCc7rwjYyFOq
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TnloVnVwV3J0aHdCWGlTYUFzOUZOVzJ1SGhKbkRXOE9jTnY1aXFHdDJDaWli?=
 =?utf-8?B?Zi9sbldFblJISTZqTW1jRHRTU3NKaWRZdDB5aTROMEl0b0tZRXJ5VXdmMWxH?=
 =?utf-8?B?Wjl5SlN2enJUaEtidVA0UjdGWThucjl1L2hLZG0xM2dLRys5UWlNRzdhT3ZT?=
 =?utf-8?B?eG13TlFjeCtnNHRIcHdWMDBCZjJpZ2tNYmNobW52R1pTZWw0eCs4SjN0WUUv?=
 =?utf-8?B?NU8zT1E4OVRZbm56eWZuejRBUXlBb3oxaEoyOWF4VUNtZVNPcGUvem9EdE83?=
 =?utf-8?B?d0tBOERtMm1oY3FnUE15eUYrZFNxNHNvUk9pL1R5MVJYZUt0elhQVUpQK3Jr?=
 =?utf-8?B?b0V5eG94aHZUWWRzNnA0OU5PTCtRMCtiR29SeVhSUDd2ZndzTmpoWnkzekFn?=
 =?utf-8?B?MUZ4bm5yWDZKMS9uczhFb0lNTFhmMlYvUndzemhyKytibGdFT3VMUDFjdWx0?=
 =?utf-8?B?S3krUnF3RXAwZitKbG51TExoWHhQbGUzZkxaUmE4aXcxR1pTdGJ3TDF2bG5B?=
 =?utf-8?B?a2lDRm5QWEw0M1poN3NFclFRNVRNSUp4SHh0UVJPVGlsVjN4U0dReWczaCtV?=
 =?utf-8?B?SUErOE9QT0dtNU92TGdCNlF1K2FEb0F6b1FZS0FRSDhnTjlBdENuSnd5emdP?=
 =?utf-8?B?SHlXQlhlalgrdlFRLzVlMEIwSlBwK2RwZEVMZnJOU3hEN21vV01wb2c3YUlK?=
 =?utf-8?B?bm9MOW16YjA0RVRna0ZqU0JjL21pd0plN3g3UVdTbEhEQVF1dUQrUWFJNUhQ?=
 =?utf-8?B?UnNTZGcrVVF1VURMRnY4bktEci80aElJbXVlV1VTN3M3TEFBYnNudG9ITkVa?=
 =?utf-8?B?bmpyRVhrcUtUYVF1SURhY1U1eHE5QS9BSndxZmRkMyszVTZkWlhLRjlzdTF0?=
 =?utf-8?B?MHVybVZnK1JWTjhadEo4VWVVT25DRnp4N0MzeDRlZDg2S3JRcHgxRGhOS3ZD?=
 =?utf-8?B?RkNrN1RwUFpBUW52a2d3ZS9sQUM5ckx3SVJmMm11U24vTU1TeU83aUo5OXZa?=
 =?utf-8?B?U3dKb3A2WFBDQzZET2d6Z2RMV1VKZ203VVBpSUtpSEZuVFhQOHZEYTk5TE9Z?=
 =?utf-8?B?cGhYcEtySkFBSjdqeDh4SW9NYmlQQTdEMmJ4clBRMzlnaVl2cS9ZdGk2c2g2?=
 =?utf-8?B?UzdydFg1Tm5rM01UV2dWeERqemhqUTdic3UrTnk5T1FMREtQTFNnQVBXUDZG?=
 =?utf-8?B?TUJ6ek5pS1NXNVJRcE9pWVdScEtjTS81cmQzWFl0cmh1QkcxZzhEdm12TDVM?=
 =?utf-8?B?Zyt1OUZVd3d3WHFMTEhhekF0ZnBrdUh3V20zbHlTekdMV1BGM3loblVnWEdJ?=
 =?utf-8?B?MW9wTk94enNHN2VISE1hMmRRdWY4Y2hyZXl2RWhxVDVaTU12THpuMUdObjcy?=
 =?utf-8?B?OVg0TFFLeEQ5Y0IydUtqcDF6SmdDUnZqWEdCaTBUSFRndzRZZUl5Y0dOcTdy?=
 =?utf-8?B?THYwZVUxRVlFRmQ1bVd4QUJncGRSWnMweUFsME5ZUjJkQmhiUkxWNnZ2andD?=
 =?utf-8?B?ZmttNERGYXA5bjhvSUlTeGVvY1YxazFPWFU0R2x4ZjVJS3pTcDc0WTVycVda?=
 =?utf-8?B?MGgxZ3lYVWVxeGE2dHVrWWFBYk1aZElQcjVyd0lPaEFsWTNFUHFxVHJUcU54?=
 =?utf-8?B?NTJmaFBmS0grK29MUTRBRFBIQ0hmTi84SzRMcVBOaE0ydTI2K0ROUGxXSVQ0?=
 =?utf-8?B?bStveWtab3dkTit3TTVTVkdMWFAwTk1Ibjl3TGR0dXJNdEUxN3NpakRBPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 13f0e579-c049-4660-e236-08da9bc5d15d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 11:38:35.3549
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR84MB1586
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 11:38:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58114

------MPDX41XZF7CD1LBB15BG38T12U0DLG
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

If I read the mesa-vulkan-drivers recipe right it should install libvulkan_=
*=2Eso but it didnt I had to use vulkan-loader=2E Any idea in how to debug =
that?

Am 20=2E September 2022 15:26:45 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>What often works is running it under strace - you might be able to see th=
e
>one key syscall that causes the failure=2E Otherwise you might have to go
>through the heavier gdb step through=2E
>
>Alex
>
>On Tue 20=2E Sep 2022 at 10=2E25, PHIL <heideggm@hotmail=2Ecom> wrote:
>
>> Ok it seems to use Software now given how slow weston-simple-egl has
>> become=2E But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER=2E
>> --
>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et=2E
>>

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------MPDX41XZF7CD1LBB15BG38T12U0DLG
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>If I read the mesa-vulkan-drivers recipe right it should install=
 libvulkan_*.so but it didnt I had to use vulkan-loader. Any idea in how to=
 debug that?<br><br><div class=3D"gmail_quote">Am 20. September 2022 15:26:=
45 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<blockquot=
e class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1p=
x solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir=3D"auto">What often works is running it under strace - you might b=
e able to see the one key syscall that causes the failure. Otherwise you mi=
ght have to go through the heavier gdb step through.</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue 20. Sep 2022 at 10.25, PHIL &l=
t;<a href=3D"mailto:heideggm@hotmail.com">heideggm@hotmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-=
left-color:rgb(204,204,204)"><u></u>


<div>Ok it seems to use Software now given how slow weston-simple-egl has b=
ecome. But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER.</div><div=
><div style=3D"white-space:pre-wrap"><div>-- <br>Diese Nachricht wurde von =
meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></div></blockqu=
ote></div></div>
</blockquote></div><div style=3D"white-space: pre-wrap"><div class=3D"k9mai=
l-signature">-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit=
 K-9 Mail gesendet.</div></div></body></html>=

------MPDX41XZF7CD1LBB15BG38T12U0DLG--

