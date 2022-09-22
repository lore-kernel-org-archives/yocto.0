Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C19EC54EE9
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 16:22:54 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (NAM12-BN8-obe.outbound.protection.outlook.com [40.92.21.84])
 by mx.groups.io with SMTP id smtpd.web11.919.1663863769207605199
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 09:22:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=EpBNbFjk;
 spf=pass (domain: hotmail.com, ip: 40.92.21.84,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=asEYqchXoTlLntgWYdL8ROZQVRJDJiN+sp5sZjCydmpr7OO9kIfgLAfvpJhlctNGcKmcjrIk3XvztcSvrXH5WbzGoP+x3Q8eV22XwNiAk4LQk96Pi9pK5BNt0wzpPmYiTaGqRXehbCf55RO+HjHYULIgWCDx6LH8G5SDX5RZdv/iLC2ndz4Tfx2EPxvXeCeOVFhEHExA39F590v3PmyNY+OCFvlzSE0VAGXRf6ESW9eytlmmYvdopTqcvL/AG6F902P0c1Br2CHzDVZWoc5dNmgf9n5mwsMf7Z28AoEc3Is+LQpxq+ldwT38LwWigghalBR3+NAyYODbZuwqlb3HpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/mE4B5YI4qfWZ6Gk2c21qFYlMbT8blj+JIn/AW3Kb4I=;
 b=ZAdbjRXZH2KkBGELqDWggXX/3GRcXFy1+yHeiN2uN7FTmGNyd3Ky+p/TDuLz6kyb7hs7X83ZNthQfS55bMyoki8bH5FTAoDW5jgXWcMllVyymb0cC9ParBu8xOSkncQTZP8LsLsjHFYkibQLimGKZUDEs6n5vD6zXA3eiWQ5CIDTLyD++Y+qQNVnAacDxWbfq2rhDmfA00sAh/M1vYjeU7PHfRwHQMSALujtV0hD1pEtxLJ5t3sBewRqeYrhRAV8uZ5AuMmExraXUWd0MC4XTvuOI1dlKXL0lHvXDK6/knSlI/3511CflxoytWNVW/m/9Vd75GiwBh3w6Qemn/uIxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/mE4B5YI4qfWZ6Gk2c21qFYlMbT8blj+JIn/AW3Kb4I=;
 b=EpBNbFjkBFUc0fkaUa5lv6i465KwBX5KIwe+nddNfVYn0n26QLxr9hJMPjTv+a/2J4YU4bI1wlERCmeWm8WPlWjfQYHTCN0v8DrGcFhWy8H63W4Yk0i1Dh1VSibjpRihZen+x7TcLggtqeRMI/a9FgZzlV+JCPZZ7s1mJ4MvM1OMzv1EPCAlnwyZtsFE5A0hbXesVwP+yandTJ6wRvvvFbzuvUAJ9FqxEDxyfZlehxFAqG8peI4Tco8Z9ooELlzsV+DixvovYjE8sj0VNwRzfIipKVrurvL18mSAYCQ1+gPR4MYxrlt/sJPa5m+5hd/0LaWfjwFHuVIzUBE4HRUKUg==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH7PR84MB1815.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:155::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Thu, 22 Sep
 2022 16:22:46 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5654.016; Thu, 22 Sep 2022
 16:22:46 +0000
Date: Thu, 22 Sep 2022 18:22:32 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Markus Volk <f_l_k@t-online.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj_OkdKSmRkyOWDNe_MApH_drqvOmy415DZ4Zf7hYoyh8A@mail.gmail.com>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
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
 <PH0PR84MB1835502638DA727304FBA402C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_OkdKSmRkyOWDNe_MApH_drqvOmy415DZ4Zf7hYoyh8A@mail.gmail.com>
Message-ID: 
 <PH0PR84MB1835E2DDF36B3743D088CEFEC74E9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----GED4DJKSOB7R433RO4HES45YT30UBY
Content-Transfer-Encoding: 7bit
X-TMN: [NbS3TIb8uy6JP1EQmnQ4RzW5bp80HrJ8]
X-ClientProxiedBy: FR3P281CA0107.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::17) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <93CC264F-4B13-4DAC-B2CA-59BD597FC600@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|PH7PR84MB1815:EE_
X-MS-Office365-Filtering-Correlation-Id: e385fe0e-6239-4739-f263-08da9cb6af24
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vQ0B+SHuYgN6X/whktUkwHaQ+hi1JStCcIs5+vqT/sBEXtJoIh1hc9ZP+8IQsMcEciyvO8lUkBpWA/uFC0/ZzvxFa8eV3eGq7cUuyV4sct4CtiaZxiTRwGLfH3rFK3RXm9sXPC0ygx0ArT4VeqqzRkPRxgD+ETnIDc8NyppXOjn4PcdHAnsHMdWo4RC+9K+IK5hH1hGG5LUd1QY8aknHBHo05Au1a2e5+RKARwr5NI6n5Qfd44YyEv1VFTBbnCEu4d7x8Cpuy5WZjHHoyMFkHXxNsYr0VvCY1UtnVD6jvBn4vSZYSobNrJERd5r5QfomKde2xleUN2DnZr3GAkL2sK6xe9exnmEI0ZPjchh6bWDKaFD9e5EgQFP9+TGv52VoGeWPoKE70/wnkMWQ/Yz3mDKk/ztTHqBqEj746e0CcGlZQFeagn7xWFgbkSpZRaQoaL8BuWxRL3E7ccxTBfjxbW+EdDU0yAXv+8VaPbEiRMPSHJ0XIoPwIXRppy3SHtE9ZIFS/umukiapzBG0QT/8c8TD9PsIFPmxbVzHtnq7SpIOFwGmU21vrjhQjGhcaOjB+wPBEYoeK9vUAbtEl2zAfwnu1sIvAeL7Z98JsW86ISw4krhqjBCeKIXFU0C1wr5iBqqQTLMeQy1upVzyulzPVUZQXpw+fCkURljy0+GFuEM0/ImFZn3QjXyXSZy8WFBm
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c1NHOGpOWmxyUnFuM2lSZnR0bXVDYWxEQlJKOEdqcmVOWVBMOCt5VlEyOTdn?=
 =?utf-8?B?bzh2OGNlbHBlYTVGRHVCYzlPZzdncXluL2hNOHZpOTdadWtJOE5oUVJNVXJU?=
 =?utf-8?B?QVoycFVxN0dTczR0aWsvdmhDbnMwVndmK3Y0R2VKZEQwQW9JOFVtYkJHZXZ1?=
 =?utf-8?B?MFp5VVhPTjdlbzhzdXNKcTNlMGFMOVpIdDBnOHgvU2xVT3N2MFlGdkQ0eWhM?=
 =?utf-8?B?UW14djNwVVAwc1J6OWRXYWZtV29iazh0SkxHcENJYWRWbzBqRDMyeHg0Z05q?=
 =?utf-8?B?VHZsaGhLeVo1dDNpcnplYU40SEg1bEhQdHdRaXVJbml5L1BxTFlGUTZ3UGJ4?=
 =?utf-8?B?WUVHYTVJSXJnY2FxKzBqTVk0bk1WSlJqY0tKOWR5MXdjTzVaS1lOa0RiNFlH?=
 =?utf-8?B?Um5GdmdEdUxESDMya0pSYWFESXdINWFaTW9GdXBxQlR5U3krS29udUpPZGtQ?=
 =?utf-8?B?bGlvU0tEUXRWdUtrdC9rUEpyc3kxckdIdWZRV0hycE80d2dCWHQwcUl0V0Z2?=
 =?utf-8?B?Q2p4OHMvSm1QRjl3b29oaHNIS3ZGU3RORWxRT01FeWNqMEk1N1NxWTRaakVs?=
 =?utf-8?B?LzFCY2JSZlI4bHpzeE1JUXNOUEZ0MngyK29IUHYzY0xqM1IwYXRCT2s4OGM3?=
 =?utf-8?B?WmZvR0hkbE5sRGlXTzNWQlVpVDFCaWtCMnlpOFYrV2ErbjdaZjBlU29RUlV0?=
 =?utf-8?B?ejZLMFJUM0NrN2dVZGNqRXE5ZThFdDB4cXJVYVJsemlVQ29ReEEzSDhUMHhU?=
 =?utf-8?B?QUZsNGRRT1gwdVB2blh4d21EQ2YxOFZSTlRUME9NT000YllTbGwwT1NVaWxE?=
 =?utf-8?B?T1hNa09SV1RIQW45R0ptKzM2UnpvK1lIa1Z5cnFzNEVBZkdYbkNBMENKcHpw?=
 =?utf-8?B?VHFPMUJsVGZLNWx1U01lSzFPTnJNL1F2N296MWJoSW0xTHdqMzNaNzI1VHMx?=
 =?utf-8?B?Smk5aWlWVDVNSHV1S2xmS2traXZwajFUM1N2dmNrWk9PVElnc3FwbnpYUytJ?=
 =?utf-8?B?TFFvYnZ5TGIzUVVacW9DOThFR0wxRWV5TE9jTWxOOG5XTFc5R0JOcVRKYkxy?=
 =?utf-8?B?REJ4dGVpMy9SZEZxRklMazNWZnJEVnBzV3dGZ0p0cFhwSHdGd1B3anQvY2I3?=
 =?utf-8?B?cjdUMXlNN3NORmVLa0I3REV1dTBvdGQxV3FZRDR2ODBWSHpxbGY0dWdZYk53?=
 =?utf-8?B?dDZ4aXJCWHRJS2lHRnNNNzdEaERlMVNyMWo0VjBDZ3hGTkpwNVlOWW5LeXNY?=
 =?utf-8?B?ZjZxRExsYWduekU5am0wSmI5N2ZlV3BvMmJNTkZjNEpOa1o4a3dTVkFWbk9M?=
 =?utf-8?B?enE0d0ROZ0UrQTJGb2tFdnlzZ3RRVHl1VEdpR2M5ODYwL293b01WbTkrcDNC?=
 =?utf-8?B?cGhCT2JIVnM1NVJ2WkR2dVNacVdnWU5ONEEyVmFhc2FiSldkL09CVzRVbFRr?=
 =?utf-8?B?bWZKQitJbzJXWkRUN0NpMC9BSlhZcU9EMitoRERZcTFQU3Vhd2ZUSGZQbmFp?=
 =?utf-8?B?Q1pha3BiNlhoZkhqdEFjNkpodFBSZEp1bEd5aUIremNOVEpVYjlRV3dHSitX?=
 =?utf-8?B?dk1uaGVGVFBQbFdDc0RBYlNURS8vVXh2WmpJZGtLVDlZUStVSzlRVVMxLzh1?=
 =?utf-8?B?Zmtta1IrVnBsTU9aaVhwS3FPYisvZWY4V1VQa0FES1YzNXE1ZXk3eWpqYmVP?=
 =?utf-8?B?bW5Xa0tkeGttUzZkSURPYXIreGp1SHlxdXVPY2tGVk1LU3VXbGN1Y3NRPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e385fe0e-6239-4739-f263-08da9cb6af24
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 16:22:46.4792
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR84MB1815
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 16:22:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58136

------GED4DJKSOB7R433RO4HES45YT30UBY
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

One more thing: It seems bitbake/meson has problems updating the build flag=
s when I add the Venus-experimental=3Dtrue flag=2E Changing the bb file doe=
s not update the variables in the meson logs where Venus is still false=2E=
=20

Am 21=2E September 2022 14:54:08 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>Next you need to check if you have the mesa-vulkan-drives package in
>deploy-* in the same mesa builddir, and does it contain the needed
>driver file?
>
>Alex
>
>On Wed, 21 Sept 2022 at 14:48, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> It has the individual packages but split up=2E One directory for mesa-v=
ulkan-drivers etc=2E I don't know how to process from here=2E
>>
>> Am 21=2E September 2022 14:38:10 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>
>>> You need to check package-split/ to find out why=2E
>>>
>>> Alex
>>>
>>> On Wed, 21 Sept 2022 at 14:30, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>>
>>>>  Ok, there is a build directory tmp/work/cortexa57-poky-linux/mesa/2_=
22=2E0=2E0-r0 =2E In there, there is a package directory that has all libGL=
* libraries and one libvulkan_virtio=2Eso but they are not installed to the=
 Image=2E
>>>>
>>>>  Am 21=2E September 2022 14:14:10 MESZ schrieb Alexander Kanavin <ale=
x=2Ekanavin@gmail=2Ecom>:
>>>>>
>>>>>
>>>>>  This is not logs from mesa, this is logs from your image recipe=2E =
You
>>>>>  need to start with mesa=2E
>>>>>
>>>>>  Alex
>>>>>
>>>>>  On Wed, 21 Sept 2022 at 14:12, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>>>
>>>>>>
>>>>>>
>>>>>>   One of the logs has this
>>>>>>
>>>>>>
>>>>>>
>>>>>>   Error:
>>>>>>    Problem: package packagegroup-base-extended-1=2E0-r83=2Eqemuarm6=
4 requires packagegroup-base, but none of the providers can be installed
>>>>>>     - package packagegroup-base-1=2E0-r83=2Eqemuarm64 requires pack=
agegroup-distro-base, but none of the providers can be installed
>>>>>>     - conflicting requests
>>>>>>     - nothing provides mesa-vulkan-drivers needed by packagegroup-d=
istro-base-1=2E0-r83=2Eqemuarm64
>>>>>>   (try to add '--skip-broken' to skip uninstallable packages)
>>>>>>
>>>>>>   Am 21=2E September 2022 13:57:17 MESZ schrieb Alexander Kanavin <=
alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>   You need to go to mesa's build directlory and inspect what is ge=
tting
>>>>>>>   built, with which options, and how it is installed and packaged=
=2E All
>>>>>>>   the needed bits are there, but it does take a bit of 'yocto skil=
l' to
>>>>>>>   find your way around there=2E Start by looking at temp/log=2Edo_=
configure
>>>>>>>   (and then do_compile and do_install)=2E
>>>>>>>
>>>>>>>   Alex
>>>>>>>
>>>>>>>   On Wed, 21 Sept 2022 at 13:38, PHIL <heideggm@hotmail=2Ecom> wro=
te:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>    If I read the mesa-vulkan-drivers recipe right it should insta=
ll libvulkan_*=2Eso but it didnt I had to use vulkan-loader=2E Any idea in =
how to debug that?
>>>>>>>>
>>>>>>>>    Am 20=2E September 2022 15:26:45 MESZ schrieb Alexander Kanavi=
n <alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>    What often works is running it under strace - you might be ab=
le to see the one key syscall that causes the failure=2E Otherwise you migh=
t have to go through the heavier gdb step through=2E
>>>>>>>>>
>>>>>>>>>    Alex
>>>>>>>>>
>>>>>>>>>    On Tue 20=2E Sep 2022 at 10=2E25, PHIL <heideggm@hotmail=2Eco=
m> wrote:
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>    Ok it seems to use Software now given how slow weston-simple=
-egl has become=2E But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVE=
R=2E
>>>>>>>>>>    --
>>>>>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 =
Mail gesendet=2E
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>    --
>>>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Ma=
il gesendet=2E
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
------GED4DJKSOB7R433RO4HES45YT30UBY
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>One more thing: It seems bitbake/meson has problems updating the=
 build flags when I add the Venus-experimental=3Dtrue flag. Changing the bb=
 file does not update the variables in the meson logs where Venus is still =
false. <br><br><div class=3D"gmail_quote">Am 21. September 2022 14:54:08 ME=
SZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<blockquote cla=
ss=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px sol=
id rgb(204, 204, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">Next you need to check if you have the m=
esa-vulkan-drives package in<br>deploy-* in the same mesa builddir, and doe=
s it contain the needed<br>driver file?<br><br>Alex<br><br>On Wed, 21 Sept =
2022 at 14:48, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px soli=
d #729fcf; padding-left: 1ex;"><br> It has the individual packages but spli=
t up. One directory for mesa-vulkan-drivers etc. I don't know how to proces=
s from here.<br><br> Am 21. September 2022 14:38:10 MESZ schrieb Alexander =
Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote=
" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #ad7fa8; paddi=
ng-left: 1ex;"><br> You need to check package-split/ to find out why.<br><b=
r> Alex<br><br> On Wed, 21 Sept 2022 at 14:30, PHIL &lt;heideggm@hotmail.co=
m&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt =
1ex 0.8ex; border-left: 1px solid #8ae234; padding-left: 1ex;"><br><br>  Ok=
, there is a build directory tmp/work/cortexa57-poky-linux/mesa/2_22.0.0-r0=
 . In there, there is a package directory that has all libGL* libraries and=
 one libvulkan_virtio.so but they are not installed to the Image.<br><br>  =
Am 21. September 2022 14:14:10 MESZ schrieb Alexander Kanavin &lt;alex.kana=
vin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0p=
t 0pt 1ex 0.8ex; border-left: 1px solid #fcaf3e; padding-left: 1ex;"><br><b=
r>  This is not logs from mesa, this is logs from your image recipe. You<br=
>  need to start with mesa.<br><br>  Alex<br><br>  On Wed, 21 Sept 2022 at =
14:12, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #e9b96=
e; padding-left: 1ex;"><br><br><br>   One of the logs has this<br><br><br><=
br>   Error:<br>    Problem: package packagegroup-base-extended-1.0-r83.qem=
uarm64 requires packagegroup-base, but none of the providers can be install=
ed<br>     - package packagegroup-base-1.0-r83.qemuarm64 requires packagegr=
oup-distro-base, but none of the providers can be installed<br>     - confl=
icting requests<br>     - nothing provides mesa-vulkan-drivers needed by pa=
ckagegroup-distro-base-1.0-r83.qemuarm64<br>   (try to add '--skip-broken' =
to skip uninstallable packages)<br><br>   Am 21. September 2022 13:57:17 ME=
SZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px=
 solid #ccc; padding-left: 1ex;"><br><br><br>   You need to go to mesa's bu=
ild directlory and inspect what is getting<br>   built, with which options,=
 and how it is installed and packaged. All<br>   the needed bits are there,=
 but it does take a bit of 'yocto skill' to<br>   find your way around ther=
e. Start by looking at temp/log.do_configure<br>   (and then do_compile and=
 do_install).<br><br>   Alex<br><br>   On Wed, 21 Sept 2022 at 13:38, PHIL =
&lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #ccc; padding-left=
: 1ex;"><br><br><br><br>    If I read the mesa-vulkan-drivers recipe right =
it should install libvulkan_*.so but it didnt I had to use vulkan-loader. A=
ny idea in how to debug that?<br><br>    Am 20. September 2022 15:26:45 MES=
Z schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote =
class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px =
solid #ccc; padding-left: 1ex;"><br><br><br><br>    What often works is run=
ning it under strace - you might be able to see the one key syscall that ca=
uses the failure. Otherwise you might have to go through the heavier gdb st=
ep through.<br><br>    Alex<br><br>    On Tue 20. Sep 2022 at 10.25, PHIL &=
lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #ccc; padding-left:=
 1ex;"><br><br><br><br>    Ok it seems to use Software now given how slow w=
eston-simple-egl has become. But vulkaninfo still fails with ERROR_INCOMPAT=
IBLE_DRIVER.<br>    --<br>    Diese Nachricht wurde von meinem Android-Ger=
=C3=A4t mit K-9 Mail gesendet.<br></blockquote></blockquote><br><br><br><br=
>    --<br>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 =
Mail gesendet.<br></blockquote></blockquote><br><br><br>   --<br>   Diese N=
achricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></bl=
ockquote></blockquote><br><br>  --<br>  Diese Nachricht wurde von meinem An=
droid-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></blockquote><br> -=
-<br> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gese=
ndet.<br></blockquote></pre></blockquote></div><div style=3D"white-space: p=
re-wrap"><div class=3D"k9mail-signature">-- <br>Diese Nachricht wurde von m=
einem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></body></html>=

------GED4DJKSOB7R433RO4HES45YT30UBY--

