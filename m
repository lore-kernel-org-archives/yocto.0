Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F41DECAAD8
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 13:35:42 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (NAM10-MW2-obe.outbound.protection.outlook.com [40.92.42.22])
 by mx.groups.io with SMTP id smtpd.web09.6357.1663767332308960219
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 06:35:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=XJksPDnR;
 spf=pass (domain: hotmail.com, ip: 40.92.42.22,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rh80scko3WjRP2dUXZQXjMjBkvdbDF187/SRSQXuO5IkD6a15RC+sFyUFzHQlBQRT4ykrGQqOGrlTEkVbVu35BgitSowE2Rt0tERvwtT3rpGHicQAKpRo/eWx7trM9sKoZ8sxtq2lRHGY4rLOTBiJsjGAO2uyn4VI7R2Cudf0etfGSTOFgLnQvKK55/zH0hC8Ux/DLEbes7sS+ucRLs10N3btf3EO9LzfT8OCuvNISqdl29IwxquRVCEbOorln47tfztQA7uR9La+zkLOhcnSKjk4wE9gFASsJ35FJfXzrer0yVMY6dA35f3kz/9nkwizB//rdF03/JigPkp2D+gng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FZ9ZW6jwaVWWzJr7HdGPfvImOVXyBNe3Ns1oqDEjRsE=;
 b=hmP/n7EPYB+08TCQ/Rg1NYU6n1TQbMF7FwpKkxhpeRXJgKxUN4PogQBtmwjyDtSQwdACHXdqszGkD1Dq4FPmdwdzNL6qpplrmAfgI2qatpnkrJsj4af18BvwvgTMFPP0s8bvmNkvCXZiB1dvBO5H67MgAEFltAyB7bjFQrfRJA4JECmUu33HPooqWwInaUFVDsEi60GUaau12+SyQFUVdxHGbXpVqRnI+Ka5wG5m3TRZARpU7TtObqusNaCr+ln/SGjoqnTI9GXRGO7vQrwk1RrD1nS7AZZGJ8MAwm5WtUleSygcf270mkHCTxuvCd4eROfWP5trYCV8xnLFP1AshQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FZ9ZW6jwaVWWzJr7HdGPfvImOVXyBNe3Ns1oqDEjRsE=;
 b=XJksPDnRzCcxeN5AQlPpWqtw5l0GPILURux3ycihdjMdq3b9LsFuTeZpHAallHRLAe1qsxFS9oacBonztVRv9Vs6W1sZVe7RxgcU/OosqAmLZoh8OXDu2H1UPT3FwUF8Bf98g9J83EHL3bd1IJj5gDp8cUKLkIeq7/m1n4A5W/9dgBfmK6JF7sL01wRewwPhxZuYQD0sUqkcx/1QjTvABqjVhZsgRzftu8I9ytjHiXZzQhekxMQmwp5qt5p6ZqDqirbDfmH4bwbUCPWciqDaRQkYtHh1wgqPIB55GaDUz++Jjzee8AFPXrKZ/BHwW68mVWMXrwiHPD1oiO48I0QJtw==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH0PR84MB1669.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:171::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Wed, 21 Sep
 2022 13:35:30 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 13:35:30 +0000
Date: Wed, 21 Sep 2022 15:35:23 +0200
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
 <PH0PR84MB183594CAEB3E8845FD758F39C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----3WKZ1XGYJWEP1Q9PJQ53KKTHWKWKX6
Content-Transfer-Encoding: 7bit
X-TMN: [7dYR3vg0toN8wU2t/ELTsuvTgSRVBjib]
X-ClientProxiedBy: FR0P281CA0137.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::13) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <622855B1-9A36-4996-8EED-7C61BD98BB3B@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|PH0PR84MB1669:EE_
X-MS-Office365-Filtering-Correlation-Id: d4080081-f447-492c-ecfd-08da9bd626a4
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MRaSpm9/oVddNXwUaH5b7QmXgZjK/XV7TG4QA1MQSiEBw7O39PRvM3fHWwjV+8SYn1zqx4UqiG4ETx4PJrTZg8oh/cQms9EEV4G7oIg5B2q4pfvTzWdDRA/DG/XIsstRE9KJP/bXNEnid+IjTvh/R19vKLkTa+kK9kDLFSk6P65Q3a+fawY4IHS5+RrbUKN7gguRI42Vu+hdSJqlcFvM8v/UVjVdzwzIL4s2Aicu+UXX3fMCYIiQSzSljLSvKI7u+9+OsO5adSEuWBPFM6XbR3xBuLSIm0RDSXbsRjDI+6e4NHYO2mn39U68jJBgdn3kvTp43AJ0qYPvCLuTmAfgVI24URQzNsNKrFqxClTwViwbeZBGegEw7vc2gMEl+igGzbl+94yqJozm51A1mXzGPruSr5dhKnZpCaR/oIDb+dsXTVHdu5NFlvjqDE2Tctj7weLuD/r/Bc2tpYtg4Ym1hn2AtGwRjRWYGiR+yxrtwVPDdDOGkdvWF2jKTF1MeeSFZEmu9Wb1QQW7CDCK+OTYy/61TQlbJE2595L1jZjEB6evAb8baSgD+QFobiCLfbpgXZLIokpxFV20zCd/1qf24er6Wsp13jWK6/ohVD4q6cBKdWzuOpfR7s79sHWo2CMoQKM8dGljpHcXyLKRP3FQ6AldqEWUOxD6L4DAFqZNhw9fo36/G4aKKvrU+idD5sAk
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c0dtZkNDajhkTXQxYUQ3TndTVGdYdTExMnFZWW1FZTY1OFBkVXNKTXQ1ZW84?=
 =?utf-8?B?SUdUcWduNmlyci9nc0xYTm1RVWduYkdwNEp3R283blFFaDNadzgyL28vT2J5?=
 =?utf-8?B?ek92T0x4QnoxYlNWZlJKRDQyZHE2MUI4MkQyQStuQmVLYzZEZWtIV0JFdldB?=
 =?utf-8?B?bU1EU2NuZlh5Um9KV1NEN0RMM0ZWWUtiZE9FZm1EVUc3ZnQ3T0xycVQrQTYy?=
 =?utf-8?B?NG9aaXorNEdSaEhUWXBncXgrbGJUbFB1MXQ2QTNIYUhhZzNkUis3UEZ2cS80?=
 =?utf-8?B?Z3EyOGxmdWJzVHoxWnY0ZitwbUF6eWNXeW5VTGFBa09JWVdpM1kxS3gzaWVw?=
 =?utf-8?B?NzVKWHZVejlCa2xRNjJQY01rOUZ5SjBINU1adFUydTR5aE82RTVNWERhRHYv?=
 =?utf-8?B?V0p2QjZvRWV1d084RGM1bWZGVnhDVUZVNW5NeERKdU1nK1htMXpXTDFxMU4r?=
 =?utf-8?B?TnJ4YWlMNlVqUFZJcytyTXoybmVzRU91bEorNVFtQXYwQVh1SzYxai9MaXFT?=
 =?utf-8?B?R3hwanFGWjBRNmd5bGlkZXlkeHNXUlNENkw1V2tRN21QbU5HRVFkOUNPVkdN?=
 =?utf-8?B?RFU4bEhPb0NxM1V6eVc5bnQ0clliUDlpWjBaTzRudWRGaDlLaldzaDF0Z083?=
 =?utf-8?B?dWpFWEVWQ000NmNTYU9kdjBIVm9ZVEo5WlRZdzk5ZHhhdVFVNUh3dFFjRUhM?=
 =?utf-8?B?d00yNkhtdFQ3c0RmeXZ3bVFhUGZ0NCtEYmpLZDRwMkJRemh1dFQzaU1QUmI2?=
 =?utf-8?B?ZVBOWkpKR2hKc3NHSmR1SFJZOHdZMnhvUVB3ZFBTc2kvZEdFQjlySS9mMkpz?=
 =?utf-8?B?eHh6Rk1lUUNkSzVpNUpJUTYvM3ZLL1pQT2RJdUFsZlUyV1JjVWIwOG40aXdu?=
 =?utf-8?B?TTM2WTlsd0Y0NXJQd2wwREJBemlIL3htSWlBU1FFKzlkTjF0ekMzc0k4Mk1j?=
 =?utf-8?B?M0N5Yk0yekpLSHNndXpPeXNRUHFMcnFFTHRSZWVNcFludjlDREM0ZThIRmM3?=
 =?utf-8?B?a3VvQ0tLSGdtK1ZZYzF6SlFuN2c5dm8xNzFucjVLSE1yNGN0MzI0SzRLTjNk?=
 =?utf-8?B?OGRuUWJrazFuckoyZG5yNVgvWmVHNWl4aFE1ZkxsUVJodkZnbEt3b1R5RnFD?=
 =?utf-8?B?RG5YTE5JeTlWa0dVMDJzT3lNSFpubFRkcElWZSs3TjNtZ3drQmRqY0FhSlZx?=
 =?utf-8?B?aFNOZ1NLZlpueEozekVmWEx3TkJhajAzNTRBdzh0TW5FbGMxTU9wVWdMM0Nu?=
 =?utf-8?B?akxnMHBzNnlwVUQ4cGZ0RWtnOGZKN0dzbmtMZ2Y0MFExbENWdzVsblh0Undz?=
 =?utf-8?B?RDlPaEFSY0c0TkdUSnBCWXNKQ3dsWHUrNmN2c0VYaGVQamh0bGxSemJhVWlT?=
 =?utf-8?B?b1RtVEg5dVpEQllSQURjRlVMN2NiN1ZtMXo3eWlUcXE5aFB1aTV4U3Q3TUxv?=
 =?utf-8?B?VjN1ZU1YRzVlRTYwNXZUbFVBWVAzWGltUWNLUHAxZHhraWRtYk10VVEzQXlY?=
 =?utf-8?B?U1pkejVmUjRTL0ZuSWN4dkk2eE5BR09WZDRPM3ZhK0R6SXJkSm1oQUNTM3Jr?=
 =?utf-8?B?QWRqdnNZNFZqL1FEc2kwNHVpWEhYVmRkeEtKQUwxd0U5cE9ZMk4zSmk5RGRJ?=
 =?utf-8?B?ODJuYUNxcklGYWhpSTBDcmZUT2JzY3AwMnBvSEdGM1NXUWcyU0ZHdkloc056?=
 =?utf-8?B?bkxGYWFpbVlKYlVCMjVwRjdEdFZHQWoyVjJVejdnV0J1RUgvSTcyQ1FRPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d4080081-f447-492c-ecfd-08da9bd626a4
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 13:35:30.1713
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR84MB1669
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 13:35:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58123

------3WKZ1XGYJWEP1Q9PJQ53KKTHWKWKX6
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

There is a directory called deploy-rpms=2E It has rpms for all gl/elg/mesa =
stuff but not the stuff from mesa-vulkan-drivers as libvulkan_virtio=2Eso

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
------3WKZ1XGYJWEP1Q9PJQ53KKTHWKWKX6
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>There is a directory called deploy-rpms. It has rpms for all gl/=
elg/mesa stuff but not the stuff from mesa-vulkan-drivers as libvulkan_virt=
io.so<br><br><div class=3D"gmail_quote">Am 21. September 2022 14:54:08 MESZ=
 schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<blockquote class=
=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid=
 rgb(204, 204, 204); padding-left: 1ex;">
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

------3WKZ1XGYJWEP1Q9PJQ53KKTHWKWKX6--

