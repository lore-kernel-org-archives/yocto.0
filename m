Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C378C54EE9
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 09:26:07 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (NAM11-CO1-obe.outbound.protection.outlook.com [40.92.18.19])
 by mx.groups.io with SMTP id smtpd.web09.9603.1663665952895287025
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 02:25:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=QV0V7Jfg;
 spf=pass (domain: hotmail.com, ip: 40.92.18.19,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XxYpNUT55kj0ZuxbnPvI4n8jQZ+m5Ccii7h0TtF+Fakiu62qJ1C/Fn6Ns2muyIgoabTg5vKJ+hbB3DkM1pfEHIn3HjQSzOlQI2s3K3YkI7d2se6ql80FOJk5R3UpSfCxuA/UX+wtH0xiOPpA7fo0Ilp6GkGv+fAmPnHfJjbIq+Mb378n+sZmrimsrICNhGDWE6xjB5Zxjy2JhiL4MtHAEiKYuB8oWzanHz3jJBPfU+3vhDUmM/DRwhxE92Y8+/PDJ4K5vL+Tckl6iQ8xBINPVVAVhEtR8jWRpl4xQ7HiHZQt2BPS8YeVfhFmahOthm6Sttynvi2LVftHnudJGssSrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iLmMCcfJrWKiuJ8MEkMcb174IHGDaHJ/QT5vXl5yW5U=;
 b=NE4SpSvzrSrLx9san7ckie3DjhwtMcB9X2Ya2fS0j9oHid5sUaIhTGJ9jd/GX9g6koA/Q9i5jfWhE5cgYnrxwKPvmV4IYRKXlCSMic4nma2kUmVKNNFdFleCgXhXnCdV3zM8XUHDW+4hxP6J3rAozLAkzXQcybIVv4XuFBgjFo1OIOfGSXa6gJxlRmWSXt4dETVe169VIyPsk6mPoxMjleAAcu14bxcBKwJnOzSL/CQlpv6GBuw2u1ErJCLtOetf5JLgT7OJ2P4/5caZoM0AUARpKOoLEtK9PaRWjtMtVeBR5O0YglBQ6hkFkjDcA6ANT2KM2UXrj7EmnA/cLRs6hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iLmMCcfJrWKiuJ8MEkMcb174IHGDaHJ/QT5vXl5yW5U=;
 b=QV0V7Jfg+zDCSX4oepn6t5yC7Sw6LiZfwO2kOZnsonIJsRZw45vJzfZIpsXMuvBbiJVQN1g1nrLqxL6KH4uybyI1eZF5eFYLnUKG7wFLJDTrnbpj3LpdibgBK+hunHqzcEXAGJL0GmbQgCpqwufxL8ucq8EjFtKB+nb9j6AnwQOhwudd5d3WNs7Fgsi54M3oe2feS3OqQeSO9BywW4/OgKMFJSmyvGZnTtEt4FaBQ5DcptZeJ0DqfZb5G8YYjbMCgOheFdRTFn1wTXJYd71r8TWBM80iu0eR0LYMSX0wMcuSb+iJmIAfcY5cRCI/4TEgX6SR9hPZeC/cjBvAC1LTZQ==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by MW4PR84MB1683.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1a6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.19; Tue, 20 Sep
 2022 09:25:51 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5632.018; Tue, 20 Sep 2022
 09:25:51 +0000
Date: Tue, 20 Sep 2022 11:25:42 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Markus Volk <f_l_k@t-online.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj-DASeVZAJKe5SURTNec_uth5CofkyOu6ytn9rv2dc76g@mail.gmail.com>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB1835788AFD16FEB8E4A15790C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ANJ_EnvBgi+mZH52kr5rxyhBbBWEDoaOFPR9MDLDgZg@mail.gmail.com>
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
Message-ID: 
 <PH0PR84MB1835ADAA61579A359EE70E46C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----MUAMU9VXCD2GW2JAE9N8N8VSZ3RONI
Content-Transfer-Encoding: 7bit
X-TMN: [vNC0IAouxuN7OwcheZXnxc0gKkNKGMBU]
X-ClientProxiedBy: FR0P281CA0100.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::6) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <E9D40D12-1B24-45AC-942D-B7FB0CF13EE5@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|MW4PR84MB1683:EE_
X-MS-Office365-Filtering-Correlation-Id: a0955fe4-7f17-41dc-b274-08da9aea1bf4
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hPEEEHgpWBP6Ctx7UkKb8a2j03UHzzAcU3iArY94+jAiCLI5yy5slPzSZIDiub2tQp7hj+cu3zGk7OaZT5LOX6GyphODAehBgSumC642gNxy5G01XeBdtDP2Sl2YD6SRyq094Ju8jQJzI33gYVoUfe6stb4SvvqqsE/4/Mf5CBUWykbNAvpORbqXC2tZDfNEAVG2VxFgzrEmck5TGyKEYGjLg0YPzufyLJ/t5nPoX8v7akodvlPCX5wsqXePsEjTg7TBAyTh4Mk+84w0bCCTxYNZoRGf0oPmpk1hYQALdymiD2AvLkz0lmZJQWOIPQBD7E4cKG7BBpS1SZe2kGoWtaXk2dPMJR+OSZPh60m+aXYmjJ6/M0MxdKWFs6p3b6MEFgsSIBqfi5UIyJIloURycLElbeWzuNV6DDlWzNiMdrZR7W+imnlpHtbF58JLu3o40f28MBCrBkEgiVX3dohbDoBlOyhkq+mWjyzo+kn8/vkw+w9SC7XwNejoLk533ubsv9HOZS6IAKy1mXCDMbCJeVqCO9qz1Uay8Cn2QSYcI5Y8XZ1a6TZyqh3fliUW628FbmIiX7qAiLiRvX5KcAZvH53FGDGz8m4YJvaVIdDiFw08kt9xcHdYjTlaotyPFdaC7XP6NzFzMOJx7qQ4twjxxHEt/XpMlNWBcMkJOkorRv2GtH4IIH+AJZGci3+BfXLg
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?czJ0V05XejdENWRlRkdnSUNCbnh4akRhNlN5Zkh4NU1KSnhjLzJ2SUJ5dVFW?=
 =?utf-8?B?MGVqMERUSlQ3K1lPQzdYazNzbmlMd3p0aldXbHF2UENNZkpNTzMxdVJiWlkv?=
 =?utf-8?B?OHZhQ0QyVFVFKzdER002c1BpbVdZRW02K3F4bVM5MDliQ0Y2ZVJGZlBPdU1x?=
 =?utf-8?B?aFlmTWlxNVdBYXZSbk1NZTZrQTZ3M0RGUEpHOG9ZbnJxbWpOcmpYSThDYTIy?=
 =?utf-8?B?NTl4TnJ6L3J5aGNtQjd5YU5zdnRhaFBOdzZRWkswMWtJdFNKdHF3aXBIMk8v?=
 =?utf-8?B?aEpBVXhzSGJzZzZvVWZQWWNRWlZUcVcrcTk4YmZBcmN1WTFIajNkSUovK1Ey?=
 =?utf-8?B?bUVBK2pDRzQyeFJub3F0eHBCSW10ZXhKYXRSQkg2U2FkaGIzWEluWUVzbWhH?=
 =?utf-8?B?Yzc5MGJ5b3g2b2I3OE1HQ2J0UERjRGllR3UyVG5lNDNSdVByb1BrM2F2dTV5?=
 =?utf-8?B?L2pKTWVsajdYZ1RST0ZlOTJ2QnJzUzlpTXdqVTdEZWRiWHc2U0NjZldhU3ly?=
 =?utf-8?B?Y0xtV1J4VDhaYldHZy9kbTErbFFhQm1WTWZsazNSNitCblREMDRXVHlpNGg1?=
 =?utf-8?B?ZFV5aStPS1lUZmdTT2pGMWxuTGRVTnRvY2pkd1d2QWVSTUtFS2t4bUVEb3dF?=
 =?utf-8?B?cVY0RVJrTnNKQWkxWVUyNkV0ZW4wUVFydFozRi9HbEF1aTFEZVExdEx0QVdq?=
 =?utf-8?B?bDVhUkdJK1c4cUQrNjBBZllTbWttZ3JZbDFPRW82VEJrbmp5VHAydnBCWHpW?=
 =?utf-8?B?YUJ4cGJsLzhjT3RaQ0NvZEh2VGwzbDRvY2xCUEtRUkFpQUxLN3U1eHBxRVBz?=
 =?utf-8?B?TlZpb3pzNXc4Z2VsTWowdGgycUgwWUtCZkJ3SlJta0Z0d0twcllMejU3NXp0?=
 =?utf-8?B?UkVVallhaHhmOFUzMUkrQ0E4enBNVE1sSklsNllhMVZaYkR1WitEU2hhalBQ?=
 =?utf-8?B?NkFYWUpRaWlPMFBuWlgvSXBCKzdTVm1HYUZIaTRLeWxXRnNGWGluTEt6V3RQ?=
 =?utf-8?B?aDVkT1B6a3QwSFZoallkVjZ4dThjc2kwWmdRcmFTMkpKYnlLbW9Kay80OWVK?=
 =?utf-8?B?NHRLbUtDcjlIcjI3b3FxRUpObS9heDhqYkRXYm45MktLU1NoalQ5RU1Haytr?=
 =?utf-8?B?RVJIYTdzZFhQbkJ0bWF0enFKcHozZGI3S0FtMmpQdkpWUkU3R3dKeUwxUXdF?=
 =?utf-8?B?TENxVzEzUVhjZi9kODEyVm1LZForUE9zdktmY1BtNTROWVJyaVcwbUlwK2s3?=
 =?utf-8?B?N0lTU0ZOd2Y2bTVmUUdRQ3hMY0E4ZnBEYzNhWEFLZmtWVU96YmNRSFBGUHBr?=
 =?utf-8?B?anB1STY2bVQ0L05EOG0vbG1QWTVBV3czMTRQS0VEMzNLQzQ3T2ExQjRzVUov?=
 =?utf-8?B?VGtwR0FWSERuSWxFV2FPQi80RXBBd2ZIZnVqM3ZqZ1l2V1NtYUhTY3FuWW4w?=
 =?utf-8?B?b21VR2ZzY05jbmxCd0tGSmtIcG53LzNKRktvaFFCSXBPQW03SXlnRnNuYU5Q?=
 =?utf-8?B?dVREVFJDSFZBVDJQN1BnQ1BWcld0S2hiSlV6OGxBSFcyUVQyL1FHMFBQSlIx?=
 =?utf-8?B?dUxRVkVBMDg0Z0o4YVB0K2RreWpRSDZQL0lxUWgwL0ZnWXBzWWMzMHk5NmQz?=
 =?utf-8?B?d3dvQmo4VU9PQlFtRnBTOXNWQmJBTnNVMmdLd1UxS2h1c21pRzlrUjU2TDBj?=
 =?utf-8?B?eDgxLzBjdEFZZUd0VXhrTXFWVHJQMGZObE1iTTdibFVxYUlGUnBHTDhnPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a0955fe4-7f17-41dc-b274-08da9aea1bf4
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 09:25:50.9955
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR84MB1683
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 09:26:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58092

------MUAMU9VXCD2GW2JAE9N8N8VSZ3RONI
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ok it seems to use Software now given how slow weston-simple-egl has become=
=2E But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER=2E
--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------MUAMU9VXCD2GW2JAE9N8N8VSZ3RONI
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head>
<body>Ok it seems to use Software now given how slow weston-simple-egl has =
become. But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER.<div styl=
e=3D"white-space: pre-wrap"><div class=3D"k9mail-signature">-- <br>Diese Na=
chricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></d=
iv></body></html>=

------MUAMU9VXCD2GW2JAE9N8N8VSZ3RONI--

