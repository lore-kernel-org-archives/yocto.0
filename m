Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FF0BECAAD8
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 12:48:12 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (NAM12-BN8-obe.outbound.protection.outlook.com [40.92.21.68])
 by mx.groups.io with SMTP id smtpd.web11.5921.1663764486053995097
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 05:48:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=td3m5tU+;
 spf=pass (domain: hotmail.com, ip: 40.92.21.68,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jgFwUdxp/oX4UbkDg+KWFnaOdnUW0TxpNS2Z9GzvT4rhFUweNBxQCvIYEMNuvnCiS5WPhBmdbjkjxLhngYRnURlMUPqkPsLwxfmVQNSQoJWWvoNhGd6S/YP0Yf2+fUJgYUqqwXw9BVJdw50HaLXZHw2SQWUiNhEgJyikBw9ZfxFbmbgC58e8cE8FX4oaP+2ToigmfO2VS3csMBxhlXeP++uBpSZ913910kaSmc0ZmtnJwhllbH9vCtupKuVfV4obflRUOei3YybaVV+0HUcDioNSWzBd6jNJASbqf4j7YP0/534u6LpFk4vscwSz9yzaAs5xPaa+6V7TTUZ5gLXhGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FmGXXpKZ0nwMf43JADCOva28g6FWryCbc2oY+iwns9Y=;
 b=AVBkUI+fo80qxCvl5pnZrJbPIFBC0ePkoBr4psN5jqp3tDRrKqA1hJdoP2dXS1MPCW9L1TZcyWL+RkWyH95m0gkBOdNm/pj0s8J7mt/x2vkposE36N5tVb7BIza7HwW2Io3cqa8l+Ec27ctgsV+vyJQZa9UTrx6uwxqoCTlvkSplrs9WJIuZflHpA6WM5F7bRa6gpPeOj4Vqhv0koyDaX9BSvPqWCRWxli/7/HSl5UknPGFU8gcDaPFY9UYSjwdTLxuVEoAxBuVBiabA0QqtsR/4XPhlgIEltyLq40NQBtlwklZyMcBwatdQIERoTZ46S7QUSt7HnvjWrRqDxUzjBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FmGXXpKZ0nwMf43JADCOva28g6FWryCbc2oY+iwns9Y=;
 b=td3m5tU+7ls7LoXXHuYjFob8zgQWqyVr+ou05vfr8uXAxMpU86qw6YrgxO5lb3lvISIA97D4VN5pfflWC5pyk9NrOqPX9UTWi6EHYFOEpTR3zHA252TEkEJbRxtR+y83urgs4wG/bHiCOEMLZk6OphGSD2dPBiq6G72k/sFS8pmwfoluHRkY0acS/dprh0VVAw/GvKRP4z7buM/vkFnbFOhS04/zl0GgO9J2U0GJGSHs8qU3s6N72A4Qilimqmz54E5mWNcQUFMx31t7/p8aJDOA81PGcjymoagjUtxDKMdHV4TlBEX9gAc9kQ6ClOhVrbPe6e2L7VNoORpJTO0HjA==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by SJ0PR84MB1483.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:431::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Wed, 21 Sep
 2022 12:48:02 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 12:48:02 +0000
Date: Wed, 21 Sep 2022 14:47:55 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Markus Volk <f_l_k@t-online.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj9kALWyEp+56R8RUhjJ6kPB36q4QpbtJzc0v0imPOdw-A@mail.gmail.com>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
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
 <PH0PR84MB1835B5FFD430030BE74F9F97C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9kALWyEp+56R8RUhjJ6kPB36q4QpbtJzc0v0imPOdw-A@mail.gmail.com>
Message-ID: 
 <PH0PR84MB1835502638DA727304FBA402C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----AX8HIQFTS4QLAM8TICQE4KM0GD8N6J
Content-Transfer-Encoding: 7bit
X-TMN: [QseqP6zCGmbV99bbHL3MZjgLBICk17RB]
X-ClientProxiedBy: FR3P281CA0061.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::9) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <1FB1FFB7-B76F-44EF-8613-705E1DBA771D@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|SJ0PR84MB1483:EE_
X-MS-Office365-Filtering-Correlation-Id: e1b8db29-acf9-4195-4bdf-08da9bcf8580
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tDPbN5YHgIvvDcM+h/B0aPCpa890/oTmcgT4S9648eDgExpckC279bjtjp7QyAtzG2j6296nKd9nI2B/1ZcnhsqFzz+SCqHDV8nADdQLWO2lHyJFCV6mkO1DR99r+iy20v9+8xUC7PAvZJBBKP+enqnfNaiqWzg1ZxD91AVMSl9ZDn4bmBi4uMi639PtJY0nIi75a5MLqCxRDUX8QfJjNNLXUjTFXC7jgF0dS/pPwntUYw3SiTTQM1zrTsKixG6VWKsa70GQWeRrrf2UzI/+tr83kh02dka9Wl40ssLQMsgEthCRQ8RYkihknpinPuMf0gIc5qSPjbsjszWuSN1/CP7lZjdhxKS2hoPf0wNoOlNxt5AXDAXQjfQVZyQD3QCBfN7gMP/17OmlgGci/zAaf506V4E3ZcnsH/J1x4njQqjtCZW5nU2/v+xOqmLMznsQEojzGxkvYITJDw8LOMIV/qeIDL/l3fivkxxtftElimlEZfvGJ7VJvTdWBuGImFy0Xe/QRN6x95BofTczV+Qm0JpCcv0K/LCSVrHsaCpQm5R6WJvshnd+PqhY+rM+xGUGXq1HRp6d5zBPX/jYuIVYAit5y04cg8UBAsrzS3hPPTz/3yMdqNRHHbC72+rnemr1c6Izdns02dLVUdVaTTmKgyPtgoiTXQTTkhaC1C+IxOWQiuwRT2VP5TCHO6mCQd9t
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ekZTVkc4MlNzQS94QlkrNjZXWTRtR25XQ3JzcEZ4d2lGY2h0cjlNVXUwcWRj?=
 =?utf-8?B?NW1IMFBBZGgyUnEzaXM1VmdVNXRiU0p6VERHeTZwVXNJajZLbmRRSngzbjhu?=
 =?utf-8?B?M3JZQ2NuNm8ydS9wajYxd1dIMDZFOFJmQy96OFAvZjhTYVU0azFyS1JsOUtt?=
 =?utf-8?B?WnVWVEFvY2Q5M0lITDZzUEZMQ0JNQlVyWGVxditKR0dGb3plelVWSWR2cm4v?=
 =?utf-8?B?Ly9vbjhqR2RjcTd5dU5idlUzREZwVmlmeWZzSHROcUtxMUdlVSsvTFRHQVg2?=
 =?utf-8?B?aDREd2tFaEVtWE9tdnZwbWRxei9GRjEzUGVGZWlvZ0hNM0d5TmJQSWZ0bjRs?=
 =?utf-8?B?SnI0QmM1YytyK2FOTGQxOTRDcHkyK0F1YmJOcE1heFFqOWFMSng5ZXozYXA1?=
 =?utf-8?B?Vm9jQkNCQTBZMVNFKzVkSHF2L0Z3Zm4xVzZsV3I2K2lwQ0hPekovOXZQWG1V?=
 =?utf-8?B?WUp1S2Uxbk1YMTBuU1JTOEF3UHNZQ3UrZjRyN3JHZUVodDE1cFNuVnl4emlt?=
 =?utf-8?B?dmJ0bUVEeDBnL1Y1M09JSGZxTkFybHpjbnhDQ1R3clN0d0dreWU1YjFIQWVw?=
 =?utf-8?B?QnJJTWJFdDNQVEdia25IalY2NU5CcjZrdGl2dGtJbzB1STRtY1J5Q2FncExO?=
 =?utf-8?B?UHMwdXlnTUpGNjVjajNPQUl3WDVkVE1OM0hBRmUwSDRoQ2lTdTYzaGMwa1c0?=
 =?utf-8?B?TG9iNXV1RkZBQW5zbTdwbHhtb1Vwd3V2VmhISHlubTVuU2ZkN3JSQVRmRFNP?=
 =?utf-8?B?SWJyaytkY2FPL2c1RW54NldQWERkc3BpOWp1WUVXK2NRNFo0M09oejd2UWFN?=
 =?utf-8?B?ampPZHEwdWxxYStqRG1oWUYzWW1HYUhzc1lOWVJ4TFNZVnNvU2VKTXFsMEdr?=
 =?utf-8?B?V3dUS3FWWTB4blF3TTVYUG4wOCtrS2NXekNlakdtdU1xSUVGUUovVitVZm02?=
 =?utf-8?B?T3dJODRGTG45TGFvRzU1Uys5bm53L284NHc4OGhWTlZMbytyakFzTk1PYXdr?=
 =?utf-8?B?Qmh6N01QbHlFL2M3V1hHeUsrOGJoak5mUjVFZUxVVkk4djRvVzdmMmxuOHJv?=
 =?utf-8?B?SkxzVlpscklrTjZ1amlVdXFGbE1vdVFkWlZVQ3lpcHlZdmM3RUM2M1NEZzZS?=
 =?utf-8?B?UFBleGp5TW16MXJIa1BjZDZMQ0x4S3ZHeFVhdy9BejVWbTc5WXdSSHZpUHMy?=
 =?utf-8?B?MHExbnlXSlREWmpwMW05Zm5FWjlXbE5DUG9wSUhXYk9jU3I2Y1ZBRDUwREo4?=
 =?utf-8?B?ZjF0TUxNb3YxTjhkbFJLdGlMc21EMk9ISWpZQUpGMjFpTGRVNGo4ajNZQ05z?=
 =?utf-8?B?YXpYVDBGT2NPd1RyakZhRkp4bkwyMDJuN2FLVWx0M3lHTVBidmVGc0ZsaGxK?=
 =?utf-8?B?eXF2cG9MYmlZVGlPYk85OWpjWmc2VkRDdHJDeTRFWi84S3gxMC9Kd0VhdC9x?=
 =?utf-8?B?Rjc0ci9BZkUwZ2JGOWpPM29xc291b0FIdXdFQy81RVZUQVhBZ2lUNHNWb2hE?=
 =?utf-8?B?MjRsd1NOKy9TaldrTlpHY1ZUajI2TTB1NHl3TTlzZ3RjcWUxejgwZGFwckM2?=
 =?utf-8?B?QW1VOVFWd2ZFWVRhOFliSlhWLzBmVUdYUVlocWdHNlJkNjNaVWE5SWd6Vmkx?=
 =?utf-8?B?dU9YODRtZkNGZkRvc1VIMXRIbWRwbTR0NTZLNS9PN0orNTFJMzFwNUNWclRl?=
 =?utf-8?B?TWlqOTVVY2lSZER4b0pSaXVVMm1FMSthc2ZUZ2wzdHdhL0JDZ25WU1pnPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e1b8db29-acf9-4195-4bdf-08da9bcf8580
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 12:48:02.8065
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR84MB1483
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 12:48:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58121

------AX8HIQFTS4QLAM8TICQE4KM0GD8N6J
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

It has the individual packages but split up=2E One directory for mesa-vulka=
n-drivers etc=2E I don't know how to process from here=2E

Am 21=2E September 2022 14:38:10 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>You need to check package-split/ to find out why=2E
>
>Alex
>
>On Wed, 21 Sept 2022 at 14:30, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> Ok, there is a build directory tmp/work/cortexa57-poky-linux/mesa/2_22=
=2E0=2E0-r0 =2E In there, there is a package directory that has all libGL* =
libraries and one libvulkan_virtio=2Eso but they are not installed to the I=
mage=2E
>>
>> Am 21=2E September 2022 14:14:10 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>
>>> This is not logs from mesa, this is logs from your image recipe=2E You
>>> need to start with mesa=2E
>>>
>>> Alex
>>>
>>> On Wed, 21 Sept 2022 at 14:12, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>>
>>>>  One of the logs has this
>>>>
>>>>
>>>>
>>>>  Error:
>>>>   Problem: package packagegroup-base-extended-1=2E0-r83=2Eqemuarm64 r=
equires packagegroup-base, but none of the providers can be installed
>>>>    - package packagegroup-base-1=2E0-r83=2Eqemuarm64 requires package=
group-distro-base, but none of the providers can be installed
>>>>    - conflicting requests
>>>>    - nothing provides mesa-vulkan-drivers needed by packagegroup-dist=
ro-base-1=2E0-r83=2Eqemuarm64
>>>>  (try to add '--skip-broken' to skip uninstallable packages)
>>>>
>>>>  Am 21=2E September 2022 13:57:17 MESZ schrieb Alexander Kanavin <ale=
x=2Ekanavin@gmail=2Ecom>:
>>>>>
>>>>>
>>>>>  You need to go to mesa's build directlory and inspect what is getti=
ng
>>>>>  built, with which options, and how it is installed and packaged=2E =
All
>>>>>  the needed bits are there, but it does take a bit of 'yocto skill' =
to
>>>>>  find your way around there=2E Start by looking at temp/log=2Edo_con=
figure
>>>>>  (and then do_compile and do_install)=2E
>>>>>
>>>>>  Alex
>>>>>
>>>>>  On Wed, 21 Sept 2022 at 13:38, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>>>
>>>>>>
>>>>>>
>>>>>>   If I read the mesa-vulkan-drivers recipe right it should install =
libvulkan_*=2Eso but it didnt I had to use vulkan-loader=2E Any idea in how=
 to debug that?
>>>>>>
>>>>>>   Am 20=2E September 2022 15:26:45 MESZ schrieb Alexander Kanavin <=
alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>   What often works is running it under strace - you might be able =
to see the one key syscall that causes the failure=2E Otherwise you might h=
ave to go through the heavier gdb step through=2E
>>>>>>>
>>>>>>>   Alex
>>>>>>>
>>>>>>>   On Tue 20=2E Sep 2022 at 10=2E25, PHIL <heideggm@hotmail=2Ecom> =
wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>   Ok it seems to use Software now given how slow weston-simple-eg=
l has become=2E But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER=
=2E
>>>>>>>>   --
>>>>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mai=
l gesendet=2E
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
------AX8HIQFTS4QLAM8TICQE4KM0GD8N6J
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>It has the individual packages but split up. One directory for m=
esa-vulkan-drivers etc. I don't know how to process from here.<br><br><div =
class=3D"gmail_quote">Am 21. September 2022 14:38:10 MESZ schrieb Alexander=
 Kanavin &lt;alex.kanavin@gmail.com&gt;:<blockquote class=3D"gmail_quote" s=
tyle=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204=
); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">You need to check package-split/ to find=
 out why.<br><br>Alex<br><br>On Wed, 21 Sept 2022 at 14:30, PHIL &lt;heideg=
gm@hotmail.com&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #729fcf; padding-left: 1ex;"=
><br> Ok, there is a build directory tmp/work/cortexa57-poky-linux/mesa/2_2=
2.0.0-r0 . In there, there is a package directory that has all libGL* libra=
ries and one libvulkan_virtio.so but they are not installed to the Image.<b=
r><br> Am 21. September 2022 14:14:10 MESZ schrieb Alexander Kanavin &lt;al=
ex.kanavin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #ad7fa8; padding-left: 1ex;"=
><br> This is not logs from mesa, this is logs from your image recipe. You<=
br> need to start with mesa.<br><br> Alex<br><br> On Wed, 21 Sept 2022 at 1=
4:12, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #8ae234=
; padding-left: 1ex;"><br><br>  One of the logs has this<br><br><br><br>  E=
rror:<br>   Problem: package packagegroup-base-extended-1.0-r83.qemuarm64 r=
equires packagegroup-base, but none of the providers can be installed<br>  =
  - package packagegroup-base-1.0-r83.qemuarm64 requires packagegroup-distr=
o-base, but none of the providers can be installed<br>    - conflicting req=
uests<br>    - nothing provides mesa-vulkan-drivers needed by packagegroup-=
distro-base-1.0-r83.qemuarm64<br>  (try to add '--skip-broken' to skip unin=
stallable packages)<br><br>  Am 21. September 2022 13:57:17 MESZ schrieb Al=
exander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote class=3D"gma=
il_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #fcaf3=
e; padding-left: 1ex;"><br><br>  You need to go to mesa's build directlory =
and inspect what is getting<br>  built, with which options, and how it is i=
nstalled and packaged. All<br>  the needed bits are there, but it does take=
 a bit of 'yocto skill' to<br>  find your way around there. Start by lookin=
g at temp/log.do_configure<br>  (and then do_compile and do_install).<br><b=
r>  Alex<br><br>  On Wed, 21 Sept 2022 at 13:38, PHIL &lt;heideggm@hotmail.=
com&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0p=
t 1ex 0.8ex; border-left: 1px solid #e9b96e; padding-left: 1ex;"><br><br><b=
r>   If I read the mesa-vulkan-drivers recipe right it should install libvu=
lkan_*.so but it didnt I had to use vulkan-loader. Any idea in how to debug=
 that?<br><br>   Am 20. September 2022 15:26:45 MESZ schrieb Alexander Kana=
vin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #ccc; padding-left=
: 1ex;"><br><br><br>   What often works is running it under strace - you mi=
ght be able to see the one key syscall that causes the failure. Otherwise y=
ou might have to go through the heavier gdb step through.<br><br>   Alex<br=
><br>   On Tue 20. Sep 2022 at 10.25, PHIL &lt;heideggm@hotmail.com&gt; wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex=
; border-left: 1px solid #ccc; padding-left: 1ex;"><br><br><br>   Ok it see=
ms to use Software now given how slow weston-simple-egl has become. But vul=
kaninfo still fails with ERROR_INCOMPATIBLE_DRIVER.<br>   --<br>   Diese Na=
chricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blo=
ckquote></blockquote><br><br><br>   --<br>   Diese Nachricht wurde von mein=
em Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></blockquote><=
br><br>  --<br>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-=
9 Mail gesendet.<br></blockquote></blockquote><br> --<br> Diese Nachricht w=
urde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote><=
/pre></blockquote></div><div style=3D"white-space: pre-wrap"><div class=3D"=
k9mail-signature">-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4=
t mit K-9 Mail gesendet.</div></div></body></html>=

------AX8HIQFTS4QLAM8TICQE4KM0GD8N6J--

