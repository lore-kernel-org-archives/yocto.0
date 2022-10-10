Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85EABC433FE
	for <webhook@archiver.kernel.org>; Mon, 10 Oct 2022 13:24:05 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (NAM11-BN8-obe.outbound.protection.outlook.com [40.92.20.10])
 by mx.groups.io with SMTP id smtpd.web08.6152.1665408239002694014
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 06:24:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=c+I6pJv5;
 spf=pass (domain: hotmail.com, ip: 40.92.20.10,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vo1ume8AIgGtzOpyityM299alXP8iWP3sJZrScIwB750i8aKG64XxlBPv0VcmKZWqpTrRUvXj9uM8BoyXKb7bidR+cfett1ku9tlXOnMH77gwBvkjgFbn7dnmn2si6Llea71bwZiw4Mt/HvMB9dgI3KdzUPU0hq4uXR+L7EHafuV8Ckn6sKyBHQYM0rauBOAJd/ey/G1469Z/vFbCQWZ0TZdYbjudqfSNvcmA19ZR4Fy9rbGUuC7nbqWKxPvKFNFgWk05IIHlDxlOTNbpw2zrawHQIka2RfK9cSod61Jr+s4vuT4+mgcRunYCoNZa/VoIQwxsZQngCnfb6n3udNJsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tO4CYWKMeXIXcl8kC32NHlaHB8WhMZx3u8mB0GAYLSY=;
 b=UESuYs+lJ6b+K4cWj1ZBoUoHfvedPic2aVZCxQbEWabScszwENbEx2HMDsrez0RNpqAUIf5tN+wsH1K2NZr5juFf8AYEC3BloNDMHUStTJ5QQvTIiWPQjGcroyHmVA8un+UDnyVKiVFHJG1/zKdW13hJSJwaeLvFUqH5BjaBWjrNa2vm4JrpgkfIqXR5OE+ISzHWhibimMY5t6RA1F5pQRgnyvCshrPveS/Itqe2Aweblq6TfJs3RxFfJIkXBXYSJ7+IfUNrLgLSnu2UNMC75sL+rZ69McnMW6o1yz3dqFOwJ0vX6nvrWJAsxhcJbN9YEndzygHnNitTzioM8KQhlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tO4CYWKMeXIXcl8kC32NHlaHB8WhMZx3u8mB0GAYLSY=;
 b=c+I6pJv54wp5+H0bwp3iK25uzqv4nHB5VUIM4320RfMKbPA75Hl6ChDovpZtV5TEWji4xBOPTt1R7lqMSKgWKBTdXxEnjq82Wy7ws1nyyaVrOoQPyker11YQciVa5kXCYEN91qfQwWVdjYMSakWFgFHe1PKuoCv+FXCP22ASOhs3v1NOD5McOEyaeo2vV5j/sYFA9lGLmuHa4vgXJ9jc0k19zQ8nN1XKbOVzy4R0iAGV9bZP7PZ99MZCnlwvVYFf7E+vb5njFCMwxGZsLSPXfnHSMuG43PGx96XlU2R+nWJjTRyBHxy5/X6D+dtTctfPWx3eDvKZOIukdtbm2gLw+Q==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH0PR84MB1432.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:173::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.31; Mon, 10 Oct
 2022 13:23:56 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.034; Mon, 10 Oct 2022
 13:23:56 +0000
Date: Mon, 10 Oct 2022 15:23:51 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Changing git url of qemu
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj9nC456j1ALbZ4LmrOA+65Lg6cZ0tzxtKQcT6J46zjvFg@mail.gmail.com>
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB1835BB630C385390A43FDDC9C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ttajWfcN+EhgFUjxtK4rvPzkGpwyQoa=tRMP7Mo7hDA@mail.gmail.com>
 <PH0PR84MB183597EAA65D8009C257BFFBC7579@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8gA-1K8pGGHNcxAqn4KRXow-tdDh395n9GDskbkTs+OQ@mail.gmail.com>
 <PH0PR84MB183522C486078708425E2BF5C7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8e83mohBHrxKAnM==4O+P-FsW2=4CfzpaaC2zXD+boBQ@mail.gmail.com>
 <PH0PR84MB1835C850590FA49C7DD82C97C7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_QAkRLjj_3kJKihea1k9C41AaMYcVNWiXgUYy+HpZKgw@mail.gmail.com>
 <PH0PR84MB1835720987A0C6B0DDBCE7CDC7219@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_zJg5cihPu9tW9OS4e7pVqwWB+rnHXijLd2RH88UbK5w@mail.gmail.com>
 <PH0PR84MB1835BFEC6AF4CCE8E0EBE349C7209@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9nC456j1ALbZ4LmrOA+65Lg6cZ0tzxtKQcT6J46zjvFg@mail.gmail.com>
Message-ID: 
 <PH0PR84MB1835400DDC50E08B55B935F4C7209@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----4HWYWUT3NZ0P0I8J9353ELELYE74D5
Content-Transfer-Encoding: 7bit
X-TMN: [KKmbP+C45vR2Fl2C2wrdK9PT4kXf9cEY]
X-ClientProxiedBy: FR0P281CA0150.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::8) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <1A7B6E3A-1EF1-432E-B17F-9BE1AB1F3B9E@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|PH0PR84MB1432:EE_
X-MS-Office365-Filtering-Correlation-Id: 03774d6b-915e-4de1-6ac9-08daaac2af08
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dQAYmJBYq1OTXB1vXa8nCCwR2p3tZ5t4303eJ7zZ1C6lDJg+Yuk4XEGDVHBp7D/dAE5l1znwr7lY+rJNDmhy3ntkoBIlpQIgWF1vJjxafCQqoXDBnVfsXQnhEik1NrfyocFyFnM6TijPBD4TgfUfDh1LfE2LkFbfN94GipiGZuchtAbWm3rDMkMCAOEvPzeNNegPoa1lx/iVY0t0FJs5jzWmp1i9mzD315bR91h5wmzHS3dxXFw+x95w/dywOq7nNxPv5RTcSMlrso3u1fpowAOU8b5Q+NaH8smkKX5eBb47HqJJ8XjxHuQy+TirxiCtyEpf1PFl3rCQL34VxTXKxdATBaPdQwoBvzlemEajUU/yzGPUvpbjamTueC+BmJ//i7HlYbbKKXo2A5RUvNR3M0Akf2C3GV9Xmgna39brMqsl+UEY0GsDqj2zFz7LiVeGo9uFCeTGLZA7T4cjGQkqJGWTSdcqON5SAsoY67+P70Te7ULX4/OVYjO5zoMGwyzdXo0DGIC8XaMQvjFYdgw38/W3r1otgLRzEF1lSBb1d3ngxiPpdlNwIorEm/g4Z1hKJ99nqFb3g7Hp0ukvdo6O9ud0qnVaBwo+OgQVLkA/uyWo5nPgj5Jmmz7UVGJCjLsqxOn6obyol/fdDY01Rxq6dRqfN9HCBD/i5/QEmkojLGRq/IWBpWcivnrEY8PUkAcJk3ZJtsfSQv4RFe5zMU8PM4hwItxI5cC+iTi7Bbzbk3I=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S3BzRkhpN1VQWnlVVCt1UUdDU1J4MmcyWnExcHEybzBBM1BncTJhY1NJZHZj?=
 =?utf-8?B?S2YyTkw3UnZQOHhuN2hJSldsU2JpeVBZUFF3M05qRkp3N21zbzJqNVZsMTMy?=
 =?utf-8?B?aXVnT2l1WjBlamd1N2trL1ViTnpjbk9naENTdmFLcG1Kb3lzc0k5UGk5dENT?=
 =?utf-8?B?TVdWaHFGcXczbG9iKy9LcUEzV2tvWDJpZGx0RysvQU1LZDBiai9Hb3FLNjhw?=
 =?utf-8?B?YjkrZG9ZUGlmUkRFVXBscCswb1p4MllUd092Zk16TU8wSHFCeHJ5ZE5leUF0?=
 =?utf-8?B?LzA2WHNCZ212TGl3QWdycjQyZmhJMXhjenI3b0d3VmFVN3dCTmlxSmsralk3?=
 =?utf-8?B?aHJhdVFrQUErWktTbFBlejR0eXNDSlhBa2RFMTZ2eXRsK2VON2IvbmJqdFBQ?=
 =?utf-8?B?Q2lUMjNnb3dQcUxrWkJwYzhVMS95aDJFbE84MzFkS2NuelJWZzJhL2EvRW41?=
 =?utf-8?B?YTNQc0tZUi83SWhJTXAvWkZrTFBKQWpMNGVXNGhBZzlIVWQ0RHMzUUNTNmRk?=
 =?utf-8?B?Qmwxc0lHUFhRd3NpaHRuK0p0TWhVR3Q2RUZPamhpaE1HdmtPQTgvNldEazJh?=
 =?utf-8?B?dHA5UTBQekRFR0JWWk9FSTZFOVYyNjVGMkpoSTJhcTI5N3FSTW54NkM3dmFa?=
 =?utf-8?B?bWNTVlNPdTk1VWZyTEkyd0RGVGhCVzN6K0syRCs2ZlJubE80S1h4citMNUNp?=
 =?utf-8?B?TEJNVm1wQWlTR01pMkVGa1ArellzeEViUUZ3MlVRUTEvaSt0THlGaGhMYjZk?=
 =?utf-8?B?RmN6N1dxV2dXT3dUMFlGelF1b1N3Z1JIWHllWGsvVHdUYnA1TlAwUWNZVmNV?=
 =?utf-8?B?TzVGR1ZyQnhkWndVcHprTEE1ZkZ1cVd2TkVTRENpcmdoOVY2Z24zQUpCbUt5?=
 =?utf-8?B?c2tFWXVtTUNTTWNFWU5ZVE5aVlM1LzB4UjZwNmNZZjE5YmxpdEJnN2hlVGVR?=
 =?utf-8?B?M0YySHJLb3RtSEVwa283bTlMVmtFelJTZEZIdzVTdU9YaDhjYlJqSnRIRWFI?=
 =?utf-8?B?T2krMlpUaEtBQTVCb3kvZDFxcDlEYjcyMGJFUGJpd2FBeTdNbzd3dHhqRU1T?=
 =?utf-8?B?aEZzeEpCTWYxOVlNVWNObklUMG9Ta3E4NktPN1B2ZVVVN0hYcldaNjZGQTVI?=
 =?utf-8?B?QXR6M3J5N2cwQ1JZS055K294cUxjaEY2L092dG5vMFVaVExJZkJPeDFlOGRN?=
 =?utf-8?B?N05kcFlSVmVsTlVGNEFKWGpBTTExUmJwVEYwamkrcXk4T2hyQUt3c0ovbHdN?=
 =?utf-8?B?ODlHYXNOZTJTQ1R6c3Q2WmtNSWlkYS9Db2NCeDNJME9hbXVNblV0K1lzYys0?=
 =?utf-8?B?NytELzdiVUZ1WGFIMlpNVXBZeWliOGptNjB0L0FvUzNYeThyL09ERW9YVkUw?=
 =?utf-8?B?RTBvUnkrSnFHUldvZTM4YnBqT2JPTlJQMmowUnBqM21kVkR1S0Y5bGdNdU9N?=
 =?utf-8?B?TU8wY1ZMa3BvZkh5ODZCT2Y1aTkySHdhcU9IMGU4SEl2d2RFZDVocE5pbFBV?=
 =?utf-8?B?MVUrZ3RBUGRQbTFva1dOUWdDSmdRdE51TldtS3lsUkRPU3U3WlVBNVNZOW9s?=
 =?utf-8?B?a2J5K2JJTkNCTFh4S0pvb1MzencxcVdqVkhrNXhzbitXZ1hNUk5iaks2eURC?=
 =?utf-8?B?dVNidmdEQlRFd0FZYUthVnFhdW02dkt2RFdwNlFtblRoeWh4R25wejRuMkRL?=
 =?utf-8?B?cndKMTJlZ0dNQnhRNGdwcWhMMW45OTAxZkhGcXNHcWJRcnl3d3gveFRRPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 03774d6b-915e-4de1-6ac9-08daaac2af08
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2022 13:23:56.7350
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR84MB1432
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Oct 2022 13:24:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58305

------4HWYWUT3NZ0P0I8J9353ELELYE74D5
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I have an OpenGLES 3=2E1 based app for Weston that runs on Aarch64 Linux=2E=
 I can start it sucessfully in emulated Poky=2E Now I port this app to Vulk=
an so I need an Aarch64-Vulkan-Weston test suite=2E=20

If that is the info you wanted=2E

Am 10=2E Oktober 2022 15:04:18 MESZ schrieb Alexander Kanavin <alex=2Ekana=
vin@gmail=2Ecom>:
>You still have not introduced yourself=2E
>
>I  have reproduced; the key difference is that you are building for
>qemuarm64=2E This does seem like a bug somewhere, but you can work
>around it if you build for qemux86-64 - you should do this anyway
>because otherwise the performance of the software renderer and
>everything else in qemu (without kvm) will be appalling=2E
>
>Alex
>
>On Mon, 10 Oct 2022 at 09:49, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> Sorry for being strenuous! I just really want to get this going and I'v=
e ran out of ideas=2E All I can do at the moment is to express my gratitude=
 dor the time you've already invested=2E
>>
>> I've gathered some data that hopefully has everything you need=2E This =
includes:
>>
>> Poky Commit
>> My local recipe diff
>> Poky=2Econf
>> Output from bitbake layers and recipe
>> Output from bitbake core-image-weston
>>
>> I can provide more if you give me the command!
>>
>> Regards
>>
>> Am 10=2E Oktober 2022 05:55:35 MESZ schrieb Alexander Kanavin <alex=2Ek=
anavin@gmail=2Ecom>:
>>>
>>> It works for me=2E If it does not work for you, you need to show the f=
ull content of your local modifications and full content of error messages,=
 and precise revisions of all of the layers and poky=2E And keep in mind it=
=E2=80=99s volunteer help and no one is obliged to carry you to a solution,=
 especially when you have not introduced yourself and your goal properly=2E=
 It=E2=80=99s far easier to just stop answering=2E
>>>
>>> Otherwise, commercial support is available=2E From my company (linutro=
nix) as well=2E
>>>
>>> Alex
>>>
>>> On Mon 10=2E Oct 2022 at 0=2E29, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>> Any more ideas?
>>>>
>>>>
>>>> Am 30=2E September 2022 22:53:22 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>>>
>>>>> That depends on what is your target=2E If you're running qemu on a x=
86
>>>>> host, it's better to not do software emulation and build for
>>>>> qemux86_64 as well, and then run qemu with kvm, so it executes
>>>>> directly on the host CPU=2E
>>>>>
>>>>> Alex
>>>>>
>>>>> On Fri, 30 Sept 2022 at 22:50, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>>>
>>>>>>
>>>>>>  X86-64 is right or do you mean arm?
>>>>>>
>>>>>>  Am 30=2E September 2022 22:39:44 MESZ schrieb Alexander Kanavin <a=
lex=2Ekanavin@gmail=2Ecom>:
>>>>>>>
>>>>>>>
>>>>>>>  You might want to try enabling gallium-llvm only for the target m=
esa:
>>>>>>>
>>>>>>>  PACKAGECONFIG:append:x86-64:pn-mesa =3D ' gallium-llvm'
>>>>>>>
>>>>>>>  Alex
>>>>>>>
>>>>>>>  On Fri, 30 Sept 2022 at 22:24, Edgar Mobile <heideggm@hotmail=2Ec=
om> wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>   I deleted the whole build directory, recreated it, only added t=
he arm switch in local conf and your changes for mesa=2Einc=2E
>>>>>>>>   After a few hours of building core-image-weston it again compla=
ins that it tries to copy llcm-config14=2E0=2E6 over itself=2E I don't know=
 what to do anymore=2E
>>>>>>>> ________________________________
>>>>>>>>   From: Alexander Kanavin <alex=2Ekanavin@gmail=2Ecom>
>>>>>>>>   Sent: Thursday, September 29, 2022 10:46 AM
>>>>>>>>   To: PHIL <heideggm@hotmail=2Ecom>
>>>>>>>>   Cc: Yocto-mailing-list <yocto@lists=2Eyoctoproject=2Eorg>
>>>>>>>>   Subject: Re: [yocto] Changing git url of qemu
>>>>>>>>
>>>>>>>>   You need to build mesa, not mesa-native=2E And please show exac=
t changes you made=2E
>>>>>>>>
>>>>>>>>   Alex
>>>>>>>>
>>>>>>>>   On Thu 29=2E Sep 2022 at 12=2E28, PHIL <heideggm@hotmail=2Ecom>=
 wrote:
>>>>>>>>
>>>>>>>>   Tried in a sifferent machine with wednesday poky master
>>>>>>>>
>>>>>>>>   Building mesa-native gives the error
>>>>>>>>
>>>>>>>>   cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86=
_64-linux/mesa-native/2_22=2E2=2E0-r0/recipe-sysroot-native/usr/bin/llvm-co=
nfig14=2E0=2E6' and '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work=
/x86_64-linux/mesa-native/2_22=2E2=2E0-r0/recipe-sysroot-native/usr/bin/llv=
m-config14=2E0=2E6' are the same file
>>>>>>>>
>>>>>>>>
>>>>>>>>   Am 28=2E September 2022 13:37:05 MESZ schrieb Alexander Kanavin=
 <alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>>
>>>>>>>>   Try latest poky master?
>>>>>>>>
>>>>>>>>   Alex
>>>>>>>>
>>>>>>>>   On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail=2Ecom> wr=
ote:
>>>>>>>>
>>>>>>>>
>>>>>>>>    Mesa build fails=2E It complains that it copies llvm-config14=
=2E0=2E6 to the same file=2E
>>>>>>>>
>>>>>>>>    Am 28=2E September 2022 12:48:04 MESZ schrieb Alexander Kanavi=
n <alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>>
>>>>>>>>
>>>>>>>>    The following works for me=2E I get
>>>>>>>>
>>>>>>>>    tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-spl=
it/mesa-vulkan-drivers/usr/lib/libvulkan_intel=2Eso
>>>>>>>>    tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-spl=
it/mesa-vulkan-drivers/usr/lib/libvulkan_lvp=2Eso
>>>>>>>>
>>>>>>>>    --- a/meta/recipes-graphics/mesa/mesa=2Einc
>>>>>>>>    +++ b/meta/recipes-graphics/mesa/mesa=2Einc
>>>>>>>>    @@ -88,6 +88,7 @@ def strip_comma(s):
>>>>>>>>
>>>>>>>>     PACKAGECONFIG =3D " \
>>>>>>>>            gallium \
>>>>>>>>    +        gallium-llvm \
>>>>>>>>            ${@bb=2Eutils=2Efilter('DISTRO_FEATURES', 'x11 vulkan =
wayland', d)} \
>>>>>>>>            ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'opengl', =
'opengl egl
>>>>>>>>    gles gbm virgl', '', d)} \
>>>>>>>>            ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'x11 openg=
l', 'dri3', '', d)} \
>>>>>>>>    @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>>>>>>>>    -Ddri3=3Ddisabled, xorgproto libxshmfence"
>>>>>>>>
>>>>>>>>     # Vulkan drivers need dri3 enabled
>>>>>>>>     # amd could be enabled as well but requires gallium-llvm with=
 llvm >=3D 3=2E9
>>>>>>>>    -VULKAN_DRIVERS =3D ""
>>>>>>>>    +VULKAN_DRIVERS =3D "swrast"
>>>>>>>>     VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>>>>>>>>     VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>>>>>>>>     VULKAN_DRIVERS:append =3D"${@bb=2Eutils=2Econtains('PACKAGECO=
NFIG',
>>>>>>>>    'freedreno', ',freedreno', '', d)}"
>>>>>>>>
>>>>>>>>    Alex
>>>>>>>>
>>>>>>>>    On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail=2Ecom> w=
rote:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>     Also vulkan-drivers is empty in meson generated by bitbake=2E=
 If I add it manually it will complain that llvm is disabled=2E How would I=
 enable it?
>>>>>>>>
>>>>>>>>     Am 28=2E September 2022 10:51:26 MESZ schrieb Alexander Kanav=
in <alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>     I think for software vulkan you need to pass in
>>>>>>>>     -Dvulkan-drivers=3Dswrast when building mesa for the target=
=2E
>>>>>>>>
>>>>>>>>     Alex
>>>>>>>>
>>>>>>>>     On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail=2Ecom> =
wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>      I asked the author so I assume he would have told me=2E Appa=
rently the virglrenderer branch is obsolete=2E
>>>>>>>>
>>>>>>>>      Currently my only changes from poky master are adding vulkan=
 opengl x11 to distro features and vulkan-samples vulkan-loader vulkan-tool=
s virglrenderer to core image extra install in local=2Econf=2E
>>>>>>>>
>>>>>>>>      I also added virtio-experimental flag to mesa and virglrende=
rer meson recipes=2E
>>>>>>>>
>>>>>>>>      I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninf=
o=2E
>>>>>>>>
>>>>>>>>      What am I missing for Software Mode?
>>>>>>>>
>>>>>>>>      Am 28=2E September 2022 10:29:28 MESZ schrieb Alexander Kana=
vin <alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>      I would first check whether any of that work in the branch h=
as meanwhile landed upstream=2E The post is from 2021=2E
>>>>>>>>
>>>>>>>>      Have you tried the software Vulkan in the guest?
>>>>>>>>
>>>>>>>>      Alex
>>>>>>>>
>>>>>>>>      On Wed 28=2E Sep 2022 at 10=2E21, PHIL <heideggm@hotmail=2Ec=
om> wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>      I try to enable vulkan according to this tutorial
>>>>>>>>
>>>>>>>>      https://www=2Ecollabora=2Ecom/news-and-blog/blog/2021/11/26/=
venus-on-qemu-enabling-new-virtual-vulkan-driver/
>>>>>>>>
>>>>>>>>      According to the author the modified qemu branch is still ne=
cessary so I want to enable that=2E
>>>>>>>>
>>>>>>>>
>>>>>>>>      Am 28=2E September 2022 10:14:24 MESZ schrieb Alexander Kana=
vin <alex=2Ekanavin@gmail=2Ecom>:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>      You need to clarify what you want to do exactly=2E Why can=
=E2=80=99t you use the existing recipe?
>>>>>>>>
>>>>>>>>      Alex
>>>>>>>>
>>>>>>>>      On Wed 28=2E Sep 2022 at 9=2E58, Edgar Mobile <heideggm@hotm=
ail=2Ecom> wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>      Greetings,
>>>>>>>>
>>>>>>>>      I want to change the git repo url in order to test the Venus=
 driver=2E Can someone tell me which variable in which recipe I'd have to s=
et?
>>>>>>>>
>>>>>>>>      Regards
>>>>>>>>      --
>>>>>>>>      Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 =
Mail gesendet=2E
>>>>>>>> ________________________________
>>>>>>>>      Links: You receive all messages sent to this group=2E
>>>>>>>>      View/Reply Online (#58196): https://lists=2Eyoctoproject=2Eo=
rg/g/yocto/message/58196
>>>>>>>>      Mute This Topic: https://lists=2Eyoctoproject=2Eorg/mt/93968=
127/1686489
>>>>>>>>      Group Owner: yocto+owner@lists=2Eyoctoproject=2Eorg
>>>>>>>>      Unsubscribe: https://lists=2Eyoctoproject=2Eorg/g/yocto/unsu=
b [alex=2Ekanavin@gmail=2Ecom]
>>>>>>>> ________________________________
>>>>>>>>     --
>>>>>>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 M=
ail gesendet=2E
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>      --
>>>>>>>>      Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 =
Mail gesendet=2E
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>     --
>>>>>>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 M=
ail gesendet=2E
>>>>>>>>
>>>>>>>>
>>>>>>>>    --
>>>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Ma=
il gesendet=2E
>>>>>>>>
>>>>>>>>   --
>>>>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mai=
l gesendet=2E
>>>>>>
>>>>>>
>>>>>>  --
>>>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail g=
esendet=2E
>>>>
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
------4HWYWUT3NZ0P0I8J9353ELELYE74D5
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>I have an OpenGLES 3.1 based app for Weston that runs on Aarch64=
 Linux. I can start it sucessfully in emulated Poky. Now I port this app to=
 Vulkan so I need an Aarch64-Vulkan-Weston test suite. <br><br>If that is t=
he info you wanted.<br><br><div class=3D"gmail_quote">Am 10. Oktober 2022 1=
5:04:18 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<bloc=
kquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-lef=
t: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">You still have not introduced yourself.<=
br><br>I  have reproduced; the key difference is that you are building for<=
br>qemuarm64. This does seem like a bug somewhere, but you can work<br>arou=
nd it if you build for qemux86-64 - you should do this anyway<br>because ot=
herwise the performance of the software renderer and<br>everything else in =
qemu (without kvm) will be appalling.<br><br>Alex<br><br>On Mon, 10 Oct 202=
2 at 09:49, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid=
 #729fcf; padding-left: 1ex;"><br> Sorry for being strenuous! I just really=
 want to get this going and I've ran out of ideas. All I can do at the mome=
nt is to express my gratitude dor the time you've already invested.<br><br>=
 I've gathered some data that hopefully has everything you need. This inclu=
des:<br><br> Poky Commit<br> My local recipe diff<br> Poky.conf<br> Output =
from bitbake layers and recipe<br> Output from bitbake core-image-weston<br=
><br> I can provide more if you give me the command!<br><br> Regards<br><br=
> Am 10. Oktober 2022 05:55:35 MESZ schrieb Alexander Kanavin &lt;alex.kana=
vin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0p=
t 0pt 1ex 0.8ex; border-left: 1px solid #ad7fa8; padding-left: 1ex;"><br> I=
t works for me. If it does not work for you, you need to show the full cont=
ent of your local modifications and full content of error messages, and pre=
cise revisions of all of the layers and poky. And keep in mind it=E2=80=99s=
 volunteer help and no one is obliged to carry you to a solution, especiall=
y when you have not introduced yourself and your goal properly. It=E2=80=99=
s far easier to just stop answering.<br><br> Otherwise, commercial support =
is available. From my company (linutronix) as well.<br><br> Alex<br><br> On=
 Mon 10. Oct 2022 at 0.29, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-le=
ft: 1px solid #8ae234; padding-left: 1ex;"><br> Any more ideas?<br><br><br>=
 Am 30. September 2022 22:53:22 MESZ schrieb Alexander Kanavin &lt;alex.kan=
avin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0=
pt 0pt 1ex 0.8ex; border-left: 1px solid #fcaf3e; padding-left: 1ex;"><br> =
That depends on what is your target. If you're running qemu on a x86<br> ho=
st, it's better to not do software emulation and build for<br> qemux86_64 a=
s well, and then run qemu with kvm, so it executes<br> directly on the host=
 CPU.<br><br> Alex<br><br> On Fri, 30 Sept 2022 at 22:50, PHIL &lt;heideggm=
@hotmail.com&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #e9b96e; padding-left: 1ex;"><=
br><br>  X86-64 is right or do you mean arm?<br><br>  Am 30. September 2022=
 22:39:44 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br=
><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; bord=
er-left: 1px solid #ccc; padding-left: 1ex;"><br><br>  You might want to tr=
y enabling gallium-llvm only for the target mesa:<br><br>  PACKAGECONFIG:ap=
pend:x86-64:pn-mesa =3D ' gallium-llvm'<br><br>  Alex<br><br>  On Fri, 30 S=
ept 2022 at 22:24, Edgar Mobile &lt;heideggm@hotmail.com&gt; wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-le=
ft: 1px solid #ccc; padding-left: 1ex;"><br><br><br>   I deleted the whole =
build directory, recreated it, only added the arm switch in local conf and =
your changes for mesa.inc.<br>   After a few hours of building core-image-w=
eston it again complains that it tries to copy llcm-config14.0.6 over itsel=
f. I don't know what to do anymore.<hr>   From: Alexander Kanavin &lt;alex.=
kanavin@gmail.com&gt;<br>   Sent: Thursday, September 29, 2022 10:46 AM<br>=
   To: PHIL &lt;heideggm@hotmail.com&gt;<br>   Cc: Yocto-mailing-list &lt;y=
octo@lists.yoctoproject.org&gt;<br>   Subject: Re: [yocto] Changing git url=
 of qemu<br><br>   You need to build mesa, not mesa-native. And please show=
 exact changes you made.<br><br>   Alex<br><br>   On Thu 29. Sep 2022 at 12=
.28, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><br>   Tried in a sifferen=
t machine with wednesday poky master<br><br>   Building mesa-native gives t=
he error<br><br>   cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/w=
ork/x86_64-linux/mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm=
-config14.0.6' and '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/=
x86_64-linux/mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-con=
fig14.0.6' are the same file<br><br><br>   Am 28. September 2022 13:37:05 M=
ESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><br>   Try=
 latest poky master?<br><br>   Alex<br><br>   On Wed, 28 Sept 2022 at 13:23=
, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><br><br>    Mesa build fails.=
 It complains that it copies llvm-config14.0.6 to the same file.<br><br>   =
 Am 28. September 2022 12:48:04 MESZ schrieb Alexander Kanavin &lt;alex.kan=
avin@gmail.com&gt;:<br><br><br>    The following works for me. I get<br><br=
>    tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulk=
an-drivers/usr/lib/libvulkan_intel.so<br>    tmp/work/core2-64-poky-linux/m=
esa/2_22.2.0-r0/packages-split/mesa-vulkan-drivers/usr/lib/libvulkan_lvp.so=
<br><br>    --- a/meta/recipes-graphics/mesa/mesa.inc<br>    +++ b/meta/rec=
ipes-graphics/mesa/mesa.inc<br>    @@ -88,6 +88,7 @@ def strip_comma(s):<br=
><br>     PACKAGECONFIG =3D &quot; \<br>            gallium \<br>    +     =
   gallium-llvm \<br>            ${@bb.utils.filter('DISTRO_FEATURES', 'x11=
 vulkan wayland', d)} \<br>            ${@bb.utils.contains('DISTRO_FEATURE=
S', 'opengl', 'opengl egl<br>    gles gbm virgl', '', d)} \<br>            =
${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'dri3', '', d)} \<br>=
    @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D &quot;-Ddri3=3Denabled,<br>=
    -Ddri3=3Ddisabled, xorgproto libxshmfence&quot;<br><br>     # Vulkan dr=
ivers need dri3 enabled<br>     # amd could be enabled as well but requires=
 gallium-llvm with llvm &gt;=3D 3.9<br>    -VULKAN_DRIVERS =3D &quot;&quot;=
<br>    +VULKAN_DRIVERS =3D &quot;swrast&quot;<br>     VULKAN_DRIVERS:appen=
d:x86:class-target =3D &quot;,intel&quot;<br>     VULKAN_DRIVERS:append:x86=
-64:class-target =3D &quot;,intel&quot;<br>     VULKAN_DRIVERS:append =3D&q=
uot;${@bb.utils.contains('PACKAGECONFIG',<br>    'freedreno', ',freedreno',=
 '', d)}&quot;<br><br>    Alex<br><br>    On Wed, 28 Sept 2022 at 11:49, PH=
IL &lt;heideggm@hotmail.com&gt; wrote:<br><br><br><br>     Also vulkan-driv=
ers is empty in meson generated by bitbake. If I add it manually it will co=
mplain that llvm is disabled. How would I enable it?<br><br>     Am 28. Sep=
tember 2022 10:51:26 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.=
com&gt;:<br><br><br><br>     I think for software vulkan you need to pass i=
n<br>     -Dvulkan-drivers=3Dswrast when building mesa for the target.<br><=
br>     Alex<br><br>     On Wed, 28 Sept 2022 at 10:44, PHIL &lt;heideggm@h=
otmail.com&gt; wrote:<br><br><br><br><br>      I asked the author so I assu=
me he would have told me. Apparently the virglrenderer branch is obsolete.<=
br><br>      Currently my only changes from poky master are adding vulkan o=
pengl x11 to distro features and vulkan-samples vulkan-loader vulkan-tools =
virglrenderer to core image extra install in local.conf.<br><br>      I als=
o added virtio-experimental flag to mesa and virglrenderer meson recipes.<b=
r><br>      I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.<=
br><br>      What am I missing for Software Mode?<br><br>      Am 28. Septe=
mber 2022 10:29:28 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.co=
m&gt;:<br><br><br><br><br>      I would first check whether any of that wor=
k in the branch has meanwhile landed upstream. The post is from 2021.<br><b=
r>      Have you tried the software Vulkan in the guest?<br><br>      Alex<=
br><br>      On Wed 28. Sep 2022 at 10.21, PHIL &lt;heideggm@hotmail.com&gt=
; wrote:<br><br><br><br><br>      I try to enable vulkan according to this =
tutorial<br><br>      <a href=3D"https://www.collabora.com/news-and-blog/bl=
og/2021/11/26/venus-on-qemu-enabling-new-virtual-vulkan-driver/">https://ww=
w.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-enabling-new-vi=
rtual-vulkan-driver/</a><br><br>      According to the author the modified =
qemu branch is still necessary so I want to enable that.<br><br><br>      A=
m 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin &lt;alex.kanav=
in@gmail.com&gt;:<br><br><br><br><br>      You need to clarify what you wan=
t to do exactly. Why can=E2=80=99t you use the existing recipe?<br><br>    =
  Alex<br><br>      On Wed 28. Sep 2022 at 9.58, Edgar Mobile &lt;heideggm@=
hotmail.com&gt; wrote:<br><br><br><br><br>      Greetings,<br><br>      I w=
ant to change the git repo url in order to test the Venus driver. Can someo=
ne tell me which variable in which recipe I'd have to set?<br><br>      Reg=
ards<br>      --<br>      Diese Nachricht wurde von meinem Android-Ger=C3=
=A4t mit K-9 Mail gesendet.<hr>      Links: You receive all messages sent t=
o this group.<br>      View/Reply Online (#58196): <a href=3D"https://lists=
.yoctoproject.org/g/yocto/message/58196">https://lists.yoctoproject.org/g/y=
octo/message/58196</a><br>      Mute This Topic: <a href=3D"https://lists.y=
octoproject.org/mt/93968127/1686489">https://lists.yoctoproject.org/mt/9396=
8127/1686489</a><br>      Group Owner: yocto+owner@lists.yoctoproject.org<b=
r>      Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsu=
b">https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gmail.com=
]<hr>     --<br>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mi=
t K-9 Mail gesendet.<br><br><br><br><br>      --<br>      Diese Nachricht w=
urde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br><br><br><br>  =
   --<br>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 M=
ail gesendet.<br><br><br>    --<br>    Diese Nachricht wurde von meinem And=
roid-Ger=C3=A4t mit K-9 Mail gesendet.<br><br>   --<br>   Diese Nachricht w=
urde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote><=
/blockquote><br><br>  --<br>  Diese Nachricht wurde von meinem Android-Ger=
=C3=A4t mit K-9 Mail gesendet.<br></blockquote></blockquote><br> --<br> Die=
se Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br>=
</blockquote></blockquote><br> --<br> Diese Nachricht wurde von meinem Andr=
oid-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></pre></blockquote></=
div><div style=3D"white-space: pre-wrap"><div class=3D"k9mail-signature">--=
 <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.</div></div></body></html>=

------4HWYWUT3NZ0P0I8J9353ELELYE74D5--

