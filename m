Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A0C5C433F5
	for <webhook@archiver.kernel.org>; Mon, 10 Oct 2022 07:50:03 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (NAM04-MW2-obe.outbound.protection.outlook.com [40.92.46.12])
 by mx.groups.io with SMTP id smtpd.web10.3866.1665388198642568728
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 00:49:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=RZUh+fCH;
 spf=pass (domain: hotmail.com, ip: 40.92.46.12,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ArkHgKrpB6nQc55yGF3EWwZk/Qb3vhnGUsAJdx0PvEsokEGE4QLZMewt9r3NdSDNS91DEwTOfx8RRNyIVu5CQmxyevsQQrPuqsqjLCYNU3w4/GVDkJV36vugfEQP9ydvGNq5TB4QuImybMZ7b1YFTujkKZ/vGW0oTTQZg1POUlYSJ7CTawDrq4Z2dNBqnZY0ZGMb0+zByxIg367vakb23XH50iOKsYWIHb2U1vWcilo6UTmHvtUvtnTQG+Gr/MZd+5GPosHGk/Is+n3tWdsjqlREsU21Y6jTYqUhWSvAzfQ4lkrK1R4cLEHk78KFMgPVChO1giqfLJv2sx0U+x8wng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kupuo3OczCsNSYQDU7SXHmpTQEp+PF3yCDGDEy5axGI=;
 b=JjD0+wvmUC0bD/OIcrEaAya1F46CAZ1+FRX7q7fjMwUzoPDz/Z+raejtq1QNzSwx364FzSaStG4AigPY21K3cVHySuamZAzcJ94p4gXlABy5hut6GTUErH2y8ZolhtBf61L/22joEjhD64lshf8SxN49ThtZzhWMZgHXzkB9zbxjqVhnQJW07pOyha9EraBB62CedS/aSimQcW8GfMwm0ysjrmSF5si6D+LO1Pv9pu7Y7xiZ6d77xZbmb8KNIhUHWG5Os9l43sROLpak7sKPM05weUsMcdhLXtDtlm08XUTx1Nx8GTu1xswV7lSLMk3PEl8gkOU19ne+X2/6ewpPDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kupuo3OczCsNSYQDU7SXHmpTQEp+PF3yCDGDEy5axGI=;
 b=RZUh+fCHYu+1onDDsQZQJJOCjrV3kmcwIOnkwsRGtOCB3zvUPUFBlIv0ePdGfhIx7dmLHW8539CA6HqtQD2EokYB1IUO2T5f4jUO0wYH4EpI+1b6VibjrNg4TJ5JJc/z5mxOIXEr2cdYx5fr/QzKeNndR9uU+gO5xm74Zno9wfdnQrMTEvQ3SOZMJcX+BEjk2q9hpkVlzDFGCVUJMpab6SrQZwb5eZx8ZozrhqJVIyXOKEz5c4pQKZZB9eG5LjwbomZ5osXbXZuyud7+QM+Ml+RAFlmyI4PlbASgPDFklW4BPmQ2+ogpSh8Dk1WgzhTkIiXiTwXwMrV6NI+mwUmbEQ==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by MW5PR84MB1500.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1c2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.32; Mon, 10 Oct
 2022 07:49:51 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.034; Mon, 10 Oct 2022
 07:49:51 +0000
Date: Mon, 10 Oct 2022 09:49:46 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Changing git url of qemu
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj_zJg5cihPu9tW9OS4e7pVqwWB+rnHXijLd2RH88UbK5w@mail.gmail.com>
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB1835197966482CF4FCA15A0BC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_M_nrekrRRJ2oKbWFr7PhcTtwFNucrGd3=ZyVHfmP2MA@mail.gmail.com>
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
Message-ID: 
 <PH0PR84MB1835BFEC6AF4CCE8E0EBE349C7209@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/mixed;
 boundary=----7IUDJ6F4WJVULYZSYDBKDT6L0T9PHF
Content-Transfer-Encoding: 7bit
X-TMN: [x/i7Iy/iMKBk2jXWvfu0Eby9xcH7/gsk]
X-ClientProxiedBy: AS4P251CA0008.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d2::16) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <07769A6E-6755-41C1-BFAC-B246C5993075@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|MW5PR84MB1500:EE_
X-MS-Office365-Filtering-Correlation-Id: b815dc29-92bc-49f1-a632-08daaa940321
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	N+WbWVHwZXz8H6zkym6P4/BQW3YezQV8QzdEXkK4io1cNGipkArxnFGZe6+tYxdMm+jxDe9xqVWnz7QanWax17OC/y6fV1Ve/mI1fst1peJR2SPYFpBf2MtGjua/CKQBygnKq9y5UT1lSjkIdY0n7H2W6E1PYB4OGigRXo9sQRrASCzOZ1uFx4ihKLTbPj2xwyGRZfX80gvVmCldKbskkRMv1iAQdxWu3YGDg2wzrK7gVuj9PEsR5f+idoMEY/09WcoR3cdjoRw5jQ0C5Mqle0DQe2nOGzBqxQSCzt0P34YQ67+wH4u3bg0b8BF2BUiF8UfNYZVG1hw8Cre2QEfiEDQ/g7ptB+/74S1teHMWxKa39R+p9F5Jv+na4MPOa/sOGFfpFeCukKtpDINhPryBP3CuQKwADiYfzRsX77cwC4ZQNIWg5N2faDKJH5KkibQi5l6OKqlxRgy2zZrNpv36N88AZWjNSCXDyM7qKfUO2Ln2XLcH+3CwgztLPWEFe6FOS/5rRWX9MegQhr5J5BNDKOTSnCRe3+KTy/N3jooYV6NTBfJt415jiBX3QelcjCh46gbRk/ZfoZK9wRkoOH4FhlzjZ3Y6YLPI1S2Afz2ZQDE9GNAfcv9AcNL7oZCJo7z6ZIqkSD+wfYpCsTEB+yDEGRzrpV9Rhu6f2VLR1ToiN2I=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UU5mSkZiL2ltTXJDWjlxUXVVTWFJVitTa2VMdFZyWEhuMGlQV3BwYWtMTnlX?=
 =?utf-8?B?T0ZYUXVkc1RNanhLenZvQWFpKy9DSlFlbitRc0FaL1YwZ2RaV3VmS0xyMU5O?=
 =?utf-8?B?WTBrclg3a1BGUVpjS1BtSnRYNWpHZTZBQjluaEFxYTlWNWsvbzc2by9mTG13?=
 =?utf-8?B?a1FsWEJyZWZuY1hqTzF5UE9LbmhtaENQZFB4cENzMTRkQlYwaFhEeG96eGho?=
 =?utf-8?B?bDVoc3hKQmxzc2Y2amtkMTQ3WWV2Vkh3eUZueWxzT1NYNmlzRDNiMmFDYW42?=
 =?utf-8?B?YnJwWUtST3JPZkswb1lZd2JIMmJkTFlEYVk5eG83RUI5OGVZL0VJU1pmWGoy?=
 =?utf-8?B?T3NCWmlEQkVpUTJUeWxEQmd1TmNNWWd3a25GdmNFSTR4RlJFVTlXSW1ZVnRO?=
 =?utf-8?B?OEVTRlVXZzM0ZFVWR3UzUW53MnB1UWRmbzlZcFUrWGVNbHJLUml6VXBjbG1N?=
 =?utf-8?B?RjdtL3RQTU1zMFM2SEhRSkxCRnVOUVdiQ3lyTkw5QzRzVGNNWUVVVTNPMzJR?=
 =?utf-8?B?b2NhbzNoSThsYmYxQWNNMDh3UTc5WGFTSGR2VitkUCs3ellqdUVHTHRVNXJa?=
 =?utf-8?B?RHlreFZDbks0eDg4ZVB3NlliM2xaMkprTklXcnZPeXhyL2VMTHRoRytDOS9p?=
 =?utf-8?B?aEdZUkRLOUNjeXNIQ1pLdmNqRnErcWhSa1BKK1NEejlXVzg0WTNaQnFaamRG?=
 =?utf-8?B?b1EvSndhdXBxaEFGaUpFdlo4ZCtyTDJmQ0FPaXliSmRnemF0UHhiQXBlVWpX?=
 =?utf-8?B?Q1Y1MURoVzVDTHVRNlp4MndwVHhPdEorM1VoS001NUlTYS9OWDhIaTJhODhh?=
 =?utf-8?B?ZmNsc3duU0ZwcDFxSXZTODBNSmJ6cUtIUy9MdzRMa0Q2WHVWYlQ0YXZMNCt4?=
 =?utf-8?B?STA3bWVHR2I2NzBjays2ODd2eXdMb3R1M2xJLzQrTHliNnA2ZHozZFFBbW9D?=
 =?utf-8?B?K3MzOGhsdFNxNThKaDNnaEdHaURUWEV0OXd0TzlUdDFpSWlCK1dXc1p1ZUxD?=
 =?utf-8?B?YmNldmc0UGVjODg1WThIaVFOdTl3TEJGZkZjR1g3cDYzOEF6YTVrOHZZN1Ay?=
 =?utf-8?B?ZGQzM1VQOFNieklkdkMrZXJxY1hwQ1VJaDlpTW1HVVpoRk1ObURnLzRvR1hy?=
 =?utf-8?B?UjNBVGMxeTVPL3V0VklMSVQwL1dtRzNyQ3czUHJqczdoWGRyYW11ZmhtTTNv?=
 =?utf-8?B?bnJ2NjJITFJhSS9LRGd1OG51a3pycGdOUFRVNmw0eXRIR3V0MmpXUkd6cHc3?=
 =?utf-8?B?RmgvL0I1WU5aeHZjdnlXbndTWWFmYS91Qk8xOXlEK3NQUkZWRjV6R21QY0Q3?=
 =?utf-8?B?NVNiTUJ5MnZvU2J6SnNCREJHVGtsdTlxU09kU25DUzlWOU1EcFBoYnpZc0NO?=
 =?utf-8?B?aVdtOUhiUEV3b0hBSU54dHBFcDhhaEU0YVNPckRSbWNNNHY0QlRHMFUweDIy?=
 =?utf-8?B?WnlnbFBUTDB4UWI2bWM5VVl6Tk5YMUd4bnJIZWU4SVJGc3hxMEhSVUZKRE1p?=
 =?utf-8?B?ZHZoQ29VM1lBVWh3UUFzTXFtdFBjTG5NbzlBZnNoY3ByN2g4NXhUVG1lNGJX?=
 =?utf-8?B?S29oYlNsRW1RN0lsYmhzaFUrTzlHNGxYMGlDdFYyNVU3NVNNQnNEMDNDMzJO?=
 =?utf-8?B?UjQrcHhxaktwSzFwcGw4Q1pUeWNKQXlUOGZZMDN2T0FHQlgvZDAyTVVQYTJG?=
 =?utf-8?B?K1QrakdqdUhaWndSUGRSdVlYTXdjbWVRL2hkQnNBeUtsNWZhVlBaUk1nPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b815dc29-92bc-49f1-a632-08daaa940321
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2022 07:49:51.5451
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR84MB1500
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Oct 2022 07:50:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58301

------7IUDJ6F4WJVULYZSYDBKDT6L0T9PHF
Content-Type: multipart/alternative;
 boundary=----ISANKC2C6WLIZNO60OU2PVJQ0AL7H6
Content-Transfer-Encoding: 7bit

------ISANKC2C6WLIZNO60OU2PVJQ0AL7H6
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Sorry for being strenuous! I just really want to get this going and I've ra=
n out of ideas=2E All I can do at the moment is to express my gratitude dor=
 the time you've already invested=2E

I've gathered some data that hopefully has everything you need=2E This inc=
ludes:

Poky Commit
My local recipe diff
Poky=2Econf
Output from bitbake layers and recipe
Output from bitbake core-image-weston

I can provide more if you give me the command!

Regards

Am 10=2E Oktober 2022 05:55:35 MESZ schrieb Alexander Kanavin <alex=2Ekana=
vin@gmail=2Ecom>:
>It works for me=2E If it does not work for you, you need to show the full
>content of your local modifications and full content of error messages, a=
nd
>precise revisions of all of the layers and poky=2E And keep in mind it=E2=
=80=99s
>volunteer help and no one is obliged to carry you to a solution, especial=
ly
>when you have not introduced yourself and your goal properly=2E It=E2=80=
=99s far
>easier to just stop answering=2E
>
>Otherwise, commercial support is available=2E From my company (linutronix=
) as
>well=2E
>
>Alex
>
>On Mon 10=2E Oct 2022 at 0=2E29, PHIL <heideggm@hotmail=2Ecom> wrote:
>
>> Any more ideas?
>>
>>
>> Am 30=2E September 2022 22:53:22 MESZ schrieb Alexander Kanavin <
>> alex=2Ekanavin@gmail=2Ecom>:
>>>
>>> That depends on what is your target=2E If you're running qemu on a x86
>>> host, it's better to not do software emulation and build for
>>> qemux86_64 as well, and then run qemu with kvm, so it executes
>>> directly on the host CPU=2E
>>>
>>> Alex
>>>
>>> On Fri, 30 Sept 2022 at 22:50, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>
>>>>
>>>>  X86-64 is right or do you mean arm?
>>>>
>>>>  Am 30=2E September 2022 22:39:44 MESZ schrieb Alexander Kanavin <ale=
x=2Ekanavin@gmail=2Ecom>:
>>>>
>>>>>
>>>>>  You might want to try enabling gallium-llvm only for the target mes=
a:
>>>>>
>>>>>  PACKAGECONFIG:append:x86-64:pn-mesa =3D ' gallium-llvm'
>>>>>
>>>>>  Alex
>>>>>
>>>>>  On Fri, 30 Sept 2022 at 22:24, Edgar Mobile <heideggm@hotmail=2Ecom=
> wrote:
>>>>>
>>>>>>
>>>>>>
>>>>>>   I deleted the whole build directory, recreated it, only added the=
 arm switch in local conf and your changes for mesa=2Einc=2E
>>>>>>   After a few hours of building core-image-weston it again complain=
s that it tries to copy llcm-config14=2E0=2E6 over itself=2E I don't know w=
hat to do anymore=2E
>>>>>> ------------------------------
>>>>>>   From: Alexander Kanavin <alex=2Ekanavin@gmail=2Ecom>
>>>>>>   Sent: Thursday, September 29, 2022 10:46 AM
>>>>>>   To: PHIL <heideggm@hotmail=2Ecom>
>>>>>>   Cc: Yocto-mailing-list <yocto@lists=2Eyoctoproject=2Eorg>
>>>>>>   Subject: Re: [yocto] Changing git url of qemu
>>>>>>
>>>>>>   You need to build mesa, not mesa-native=2E And please show exact =
changes you made=2E
>>>>>>
>>>>>>   Alex
>>>>>>
>>>>>>   On Thu 29=2E Sep 2022 at 12=2E28, PHIL <heideggm@hotmail=2Ecom> w=
rote:
>>>>>>
>>>>>>   Tried in a sifferent machine with wednesday poky master
>>>>>>
>>>>>>   Building mesa-native gives the error
>>>>>>
>>>>>>   cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_6=
4-linux/mesa-native/2_22=2E2=2E0-r0/recipe-sysroot-native/usr/bin/llvm-conf=
ig14=2E0=2E6' and '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x=
86_64-linux/mesa-native/2_22=2E2=2E0-r0/recipe-sysroot-native/usr/bin/llvm-=
config14=2E0=2E6' are the same file
>>>>>>
>>>>>>
>>>>>>   Am 28=2E September 2022 13:37:05 MESZ schrieb Alexander Kanavin <=
alex=2Ekanavin@gmail=2Ecom>:
>>>>>>
>>>>>>   Try latest poky master?
>>>>>>
>>>>>>   Alex
>>>>>>
>>>>>>   On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail=2Ecom> wrot=
e:
>>>>>>
>>>>>>
>>>>>>    Mesa build fails=2E It complains that it copies llvm-config14=2E=
0=2E6 to the same file=2E
>>>>>>
>>>>>>    Am 28=2E September 2022 12:48:04 MESZ schrieb Alexander Kanavin =
<alex=2Ekanavin@gmail=2Ecom>:
>>>>>>
>>>>>>
>>>>>>    The following works for me=2E I get
>>>>>>
>>>>>>    tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-split=
/mesa-vulkan-drivers/usr/lib/libvulkan_intel=2Eso
>>>>>>    tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-split=
/mesa-vulkan-drivers/usr/lib/libvulkan_lvp=2Eso
>>>>>>
>>>>>>    --- a/meta/recipes-graphics/mesa/mesa=2Einc
>>>>>>    +++ b/meta/recipes-graphics/mesa/mesa=2Einc
>>>>>>    @@ -88,6 +88,7 @@ def strip_comma(s):
>>>>>>
>>>>>>     PACKAGECONFIG =3D " \
>>>>>>            gallium \
>>>>>>    +        gallium-llvm \
>>>>>>            ${@bb=2Eutils=2Efilter('DISTRO_FEATURES', 'x11 vulkan wa=
yland', d)} \
>>>>>>            ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'opengl', 'o=
pengl egl
>>>>>>    gles gbm virgl', '', d)} \
>>>>>>            ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'x11 opengl'=
, 'dri3', '', d)} \
>>>>>>    @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>>>>>>    -Ddri3=3Ddisabled, xorgproto libxshmfence"
>>>>>>
>>>>>>     # Vulkan drivers need dri3 enabled
>>>>>>     # amd could be enabled as well but requires gallium-llvm with l=
lvm >=3D 3=2E9
>>>>>>    -VULKAN_DRIVERS =3D ""
>>>>>>    +VULKAN_DRIVERS =3D "swrast"
>>>>>>     VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>>>>>>     VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>>>>>>     VULKAN_DRIVERS:append =3D"${@bb=2Eutils=2Econtains('PACKAGECONF=
IG',
>>>>>>    'freedreno', ',freedreno', '', d)}"
>>>>>>
>>>>>>    Alex
>>>>>>
>>>>>>    On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail=2Ecom> wro=
te:
>>>>>>
>>>>>>
>>>>>>
>>>>>>     Also vulkan-drivers is empty in meson generated by bitbake=2E I=
f I add it manually it will complain that llvm is disabled=2E How would I e=
nable it?
>>>>>>
>>>>>>     Am 28=2E September 2022 10:51:26 MESZ schrieb Alexander Kanavin=
 <alex=2Ekanavin@gmail=2Ecom>:
>>>>>>
>>>>>>
>>>>>>
>>>>>>     I think for software vulkan you need to pass in
>>>>>>     -Dvulkan-drivers=3Dswrast when building mesa for the target=2E
>>>>>>
>>>>>>     Alex
>>>>>>
>>>>>>     On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail=2Ecom> wr=
ote:
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>      I asked the author so I assume he would have told me=2E Appare=
ntly the virglrenderer branch is obsolete=2E
>>>>>>
>>>>>>      Currently my only changes from poky master are adding vulkan o=
pengl x11 to distro features and vulkan-samples vulkan-loader vulkan-tools =
virglrenderer to core image extra install in local=2Econf=2E
>>>>>>
>>>>>>      I also added virtio-experimental flag to mesa and virglrendere=
r meson recipes=2E
>>>>>>
>>>>>>      I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo=
=2E
>>>>>>
>>>>>>      What am I missing for Software Mode?
>>>>>>
>>>>>>      Am 28=2E September 2022 10:29:28 MESZ schrieb Alexander Kanavi=
n <alex=2Ekanavin@gmail=2Ecom>:
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>      I would first check whether any of that work in the branch has=
 meanwhile landed upstream=2E The post is from 2021=2E
>>>>>>
>>>>>>      Have you tried the software Vulkan in the guest?
>>>>>>
>>>>>>      Alex
>>>>>>
>>>>>>      On Wed 28=2E Sep 2022 at 10=2E21, PHIL <heideggm@hotmail=2Ecom=
> wrote:
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>      I try to enable vulkan according to this tutorial
>>>>>>
>>>>>>      https://www=2Ecollabora=2Ecom/news-and-blog/blog/2021/11/26/ve=
nus-on-qemu-enabling-new-virtual-vulkan-driver/
>>>>>>
>>>>>>      According to the author the modified qemu branch is still nece=
ssary so I want to enable that=2E
>>>>>>
>>>>>>
>>>>>>      Am 28=2E September 2022 10:14:24 MESZ schrieb Alexander Kanavi=
n <alex=2Ekanavin@gmail=2Ecom>:
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>      You need to clarify what you want to do exactly=2E Why can=E2=
=80=99t you use the existing recipe?
>>>>>>
>>>>>>      Alex
>>>>>>
>>>>>>      On Wed 28=2E Sep 2022 at 9=2E58, Edgar Mobile <heideggm@hotmai=
l=2Ecom> wrote:
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>      Greetings,
>>>>>>
>>>>>>      I want to change the git repo url in order to test the Venus d=
river=2E Can someone tell me which variable in which recipe I'd have to set=
?
>>>>>>
>>>>>>      Regards
>>>>>>      --
>>>>>>      Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Ma=
il gesendet=2E
>>>>>> ------------------------------
>>>>>>      Links: You receive all messages sent to this group=2E
>>>>>>      View/Reply Online (#58196): https://lists=2Eyoctoproject=2Eorg=
/g/yocto/message/58196
>>>>>>      Mute This Topic: https://lists=2Eyoctoproject=2Eorg/mt/9396812=
7/1686489
>>>>>>      Group Owner: yocto+owner@lists=2Eyoctoproject=2Eorg
>>>>>>      Unsubscribe: https://lists=2Eyoctoproject=2Eorg/g/yocto/unsub =
[alex=2Ekanavin@gmail=2Ecom]
>>>>>> ------------------------------
>>>>>>     --
>>>>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mai=
l gesendet=2E
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>      --
>>>>>>      Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Ma=
il gesendet=2E
>>>>>>
>>>>>>
>>>>>>
>>>>>>     --
>>>>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mai=
l gesendet=2E
>>>>>>
>>>>>>
>>>>>>    --
>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail=
 gesendet=2E
>>>>>>
>>>>>>   --
>>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail =
gesendet=2E
>>>>>>
>>>>>
>>>>  --
>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ges=
endet=2E
>>>>
>>> --
>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et=2E
>>

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------ISANKC2C6WLIZNO60OU2PVJQ0AL7H6
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>Sorry for being strenuous! I just really want to get this going =
and I've ran out of ideas. All I can do at the moment is to express my grat=
itude dor the time you've already invested.<br><br>I've gathered some data =
that hopefully has everything you need. This includes:<br><br>Poky Commit<b=
r>My local recipe diff<br>Poky.conf<br>Output from bitbake layers and recip=
e<br>Output from bitbake core-image-weston<br><br>I can provide more if you=
 give me the command!<br><br>Regards<br><br><div class=3D"gmail_quote">Am 1=
0. Oktober 2022 05:55:35 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gm=
ail.com&gt;:<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt =
0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir=3D"auto">It works for me. If it does not work for you, you need to=
 show the full content of your local modifications and full content of erro=
r messages, and precise revisions of all of the layers and poky. And keep i=
n mind it=E2=80=99s volunteer help and no one is obliged to carry you to a =
solution, especially when you have not introduced yourself and your goal pr=
operly. It=E2=80=99s far easier to just stop answering.</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Otherwise, commercial support is available.=
 From my company (linutronix) as well.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Mon 10. Oct 2022 at 0.29, PHIL &lt;<a href=3D"ma=
ilto:heideggm@hotmail.com">heideggm@hotmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(=
204,204,204)">
<div>Any more ideas?</div><div><br><br><div class=3D"gmail_quote">Am 30. Se=
ptember 2022 22:53:22 MESZ schrieb Alexander Kanavin &lt;<a href=3D"mailto:=
alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;:<b=
lockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-le=
ft-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb=
(204,204,204)">
<pre dir=3D"auto" style=3D"font-family:monospace">That depends on what is y=
our target. If you're running qemu on a x86<br>host, it's better to not do =
software emulation and build for<br>qemux86_64 as well, and then run qemu w=
ith kvm, so it executes<br>directly on the host CPU.<br><br>Alex<br><br>On =
Fri, 30 Sept 2022 at 22:50, PHIL &lt;<a href=3D"mailto:heideggm@hotmail.com=
" target=3D"_blank" style=3D"font-family:monospace">heideggm@hotmail.com</a=
>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 1=
ex 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;fon=
t-family:monospace;border-left-color:rgb(114,159,207)"><br> X86-64 is right=
 or do you mean arm?<br><br> Am 30. September 2022 22:39:44 MESZ schrieb Al=
exander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_bl=
ank" style=3D"font-family:monospace">alex.kanavin@gmail.com</a>&gt;:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 1ex 0.8ex;border-lef=
t-width:1px;border-left-style:solid;padding-left:1ex;font-family:monospace;=
border-left-color:rgb(173,127,168)"><br> You might want to try enabling gal=
lium-llvm only for the target mesa:<br><br> PACKAGECONFIG:append:x86-64:pn-=
mesa =3D ' gallium-llvm'<br><br> Alex<br><br> On Fri, 30 Sept 2022 at 22:24=
, Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" target=3D"_blank=
" style=3D"font-family:monospace">heideggm@hotmail.com</a>&gt; wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 1ex 0.8ex;border-le=
ft-width:1px;border-left-style:solid;padding-left:1ex;font-family:monospace=
;border-left-color:rgb(138,226,52)"><br><br>  I deleted the whole build dir=
ectory, recreated it, only added the arm switch in local conf and your chan=
ges for mesa.inc.<br>  After a few hours of building core-image-weston it a=
gain complains that it tries to copy llcm-config14.0.6 over itself. I don't=
 know what to do anymore.<hr style=3D"font-family:monospace">  From: Alexan=
der Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank"=
 style=3D"font-family:monospace">alex.kanavin@gmail.com</a>&gt;<br>  Sent: =
Thursday, September 29, 2022 10:46 AM<br>  To: PHIL &lt;<a href=3D"mailto:h=
eideggm@hotmail.com" target=3D"_blank" style=3D"font-family:monospace">heid=
eggm@hotmail.com</a>&gt;<br>  Cc: Yocto-mailing-list &lt;<a href=3D"mailto:=
yocto@lists.yoctoproject.org" target=3D"_blank" style=3D"font-family:monosp=
ace">yocto@lists.yoctoproject.org</a>&gt;<br>  Subject: Re: [yocto] Changin=
g git url of qemu<br><br>  You need to build mesa, not mesa-native. And ple=
ase show exact changes you made.<br><br>  Alex<br><br>  On Thu 29. Sep 2022=
 at 12.28, PHIL &lt;<a href=3D"mailto:heideggm@hotmail.com" target=3D"_blan=
k" style=3D"font-family:monospace">heideggm@hotmail.com</a>&gt; wrote:<br><=
br>  Tried in a sifferent machine with wednesday poky master<br><br>  Build=
ing mesa-native gives the error<br><br>  cp: '/media/user/SSD1TB/yoctoqemu/=
poky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22.2.0-r0/recipe-sysro=
ot-native/usr/bin/llvm-config14.0.6' and '/media/user/SSD1TB/yoctoqemu/poky=
/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22.2.0-r0/recipe-sysroot-n=
ative/usr/bin/llvm-config14.0.6' are the same file<br><br><br>  Am 28. Sept=
ember 2022 13:37:05 MESZ schrieb Alexander Kanavin &lt;<a href=3D"mailto:al=
ex.kanavin@gmail.com" target=3D"_blank" style=3D"font-family:monospace">ale=
x.kanavin@gmail.com</a>&gt;:<br><br>  Try latest poky master?<br><br>  Alex=
<br><br>  On Wed, 28 Sept 2022 at 13:23, PHIL &lt;<a href=3D"mailto:heidegg=
m@hotmail.com" target=3D"_blank" style=3D"font-family:monospace">heideggm@h=
otmail.com</a>&gt; wrote:<br><br><br>   Mesa build fails. It complains that=
 it copies llvm-config14.0.6 to the same file.<br><br>   Am 28. September 2=
022 12:48:04 MESZ schrieb Alexander Kanavin &lt;<a href=3D"mailto:alex.kana=
vin@gmail.com" target=3D"_blank" style=3D"font-family:monospace">alex.kanav=
in@gmail.com</a>&gt;:<br><br><br>   The following works for me. I get<br><b=
r>   tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulk=
an-drivers/usr/lib/libvulkan_intel.so<br>   tmp/work/core2-64-poky-linux/me=
sa/2_22.2.0-r0/packages-split/mesa-vulkan-drivers/usr/lib/libvulkan_lvp.so<=
br><br>   --- a/meta/recipes-graphics/mesa/mesa.inc<br>   +++ b/meta/recipe=
s-graphics/mesa/mesa.inc<br>   @@ -88,6 +88,7 @@ def strip_comma(s):<br><br=
>    PACKAGECONFIG =3D &quot; \<br>           gallium \<br>   +        gall=
ium-llvm \<br>           ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan =
wayland', d)} \<br>           ${@bb.utils.contains('DISTRO_FEATURES', 'open=
gl', 'opengl egl<br>   gles gbm virgl', '', d)} \<br>           ${@bb.utils=
.contains('DISTRO_FEATURES', 'x11 opengl', 'dri3', '', d)} \<br>   @@ -108,=
7 +109,7 @@ PACKAGECONFIG[dri3] =3D &quot;-Ddri3=3Denabled,<br>   -Ddri3=3D=
disabled, xorgproto libxshmfence&quot;<br><br>    # Vulkan drivers need dri=
3 enabled<br>    # amd could be enabled as well but requires gallium-llvm w=
ith llvm &gt;=3D 3.9<br>   -VULKAN_DRIVERS =3D &quot;&quot;<br>   +VULKAN_D=
RIVERS =3D &quot;swrast&quot;<br>    VULKAN_DRIVERS:append:x86:class-target=
 =3D &quot;,intel&quot;<br>    VULKAN_DRIVERS:append:x86-64:class-target =
=3D &quot;,intel&quot;<br>    VULKAN_DRIVERS:append =3D&quot;${@bb.utils.co=
ntains('PACKAGECONFIG',<br>   'freedreno', ',freedreno', '', d)}&quot;<br><=
br>   Alex<br><br>   On Wed, 28 Sept 2022 at 11:49, PHIL &lt;<a href=3D"mai=
lto:heideggm@hotmail.com" target=3D"_blank" style=3D"font-family:monospace"=
>heideggm@hotmail.com</a>&gt; wrote:<br><br><br><br>    Also vulkan-drivers=
 is empty in meson generated by bitbake. If I add it manually it will compl=
ain that llvm is disabled. How would I enable it?<br><br>    Am 28. Septemb=
er 2022 10:51:26 MESZ schrieb Alexander Kanavin &lt;<a href=3D"mailto:alex.=
kanavin@gmail.com" target=3D"_blank" style=3D"font-family:monospace">alex.k=
anavin@gmail.com</a>&gt;:<br><br><br><br>    I think for software vulkan yo=
u need to pass in<br>    -Dvulkan-drivers=3Dswrast when building mesa for t=
he target.<br><br>    Alex<br><br>    On Wed, 28 Sept 2022 at 10:44, PHIL &=
lt;<a href=3D"mailto:heideggm@hotmail.com" target=3D"_blank" style=3D"font-=
family:monospace">heideggm@hotmail.com</a>&gt; wrote:<br><br><br><br><br>  =
   I asked the author so I assume he would have told me. Apparently the vir=
glrenderer branch is obsolete.<br><br>     Currently my only changes from p=
oky master are adding vulkan opengl x11 to distro features and vulkan-sampl=
es vulkan-loader vulkan-tools virglrenderer to core image extra install in =
local.conf.<br><br>     I also added virtio-experimental flag to mesa and v=
irglrenderer meson recipes.<br><br>     I still get ERROR_INCOMPATIBLE_DRIV=
ER when running vulkaninfo.<br><br>     What am I missing for Software Mode=
?<br><br>     Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin=
 &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" style=3D"f=
ont-family:monospace">alex.kanavin@gmail.com</a>&gt;:<br><br><br><br><br>  =
   I would first check whether any of that work in the branch has meanwhile=
 landed upstream. The post is from 2021.<br><br>     Have you tried the sof=
tware Vulkan in the guest?<br><br>     Alex<br><br>     On Wed 28. Sep 2022=
 at 10.21, PHIL &lt;<a href=3D"mailto:heideggm@hotmail.com" target=3D"_blan=
k" style=3D"font-family:monospace">heideggm@hotmail.com</a>&gt; wrote:<br><=
br><br><br><br>     I try to enable vulkan according to this tutorial<br><b=
r>     <a href=3D"https://www.collabora.com/news-and-blog/blog/2021/11/26/v=
enus-on-qemu-enabling-new-virtual-vulkan-driver/" target=3D"_blank" style=
=3D"font-family:monospace">https://www.collabora.com/news-and-blog/blog/202=
1/11/26/venus-on-qemu-enabling-new-virtual-vulkan-driver/</a><br><br>     A=
ccording to the author the modified qemu branch is still necessary so I wan=
t to enable that.<br><br><br>     Am 28. September 2022 10:14:24 MESZ schri=
eb Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=
=3D"_blank" style=3D"font-family:monospace">alex.kanavin@gmail.com</a>&gt;:=
<br><br><br><br><br>     You need to clarify what you want to do exactly. W=
hy can=E2=80=99t you use the existing recipe?<br><br>     Alex<br><br>     =
On Wed 28. Sep 2022 at 9.58, Edgar Mobile &lt;<a href=3D"mailto:heideggm@ho=
tmail.com" target=3D"_blank" style=3D"font-family:monospace">heideggm@hotma=
il.com</a>&gt; wrote:<br><br><br><br><br>     Greetings,<br><br>     I want=
 to change the git repo url in order to test the Venus driver. Can someone =
tell me which variable in which recipe I'd have to set?<br><br>     Regards=
<br>     --<br>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit=
 K-9 Mail gesendet.<hr style=3D"font-family:monospace">     Links: You rece=
ive all messages sent to this group.<br>     View/Reply Online (#58196): <a=
 href=3D"https://lists.yoctoproject.org/g/yocto/message/58196" target=3D"_b=
lank" style=3D"font-family:monospace">https://lists.yoctoproject.org/g/yoct=
o/message/58196</a><br>     Mute This Topic: <a href=3D"https://lists.yocto=
project.org/mt/93968127/1686489" target=3D"_blank" style=3D"font-family:mon=
ospace">https://lists.yoctoproject.org/mt/93968127/1686489</a><br>     Grou=
p Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=3D"=
_blank" style=3D"font-family:monospace">yocto+owner@lists.yoctoproject.org<=
/a><br>     Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/=
unsub" target=3D"_blank" style=3D"font-family:monospace">https://lists.yoct=
oproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" t=
arget=3D"_blank" style=3D"font-family:monospace">alex.kanavin@gmail.com</a>=
]<hr style=3D"font-family:monospace">    --<br>    Diese Nachricht wurde vo=
n meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br><br><br><br><br>     =
--<br>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail=
 gesendet.<br><br><br><br>    --<br>    Diese Nachricht wurde von meinem An=
droid-Ger=C3=A4t mit K-9 Mail gesendet.<br><br><br>   --<br>   Diese Nachri=
cht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br><br>  --<=
br>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.<br></blockquote></blockquote><br> --<br> Diese Nachricht wurde von mei=
nem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></pre></block=
quote></div><div style=3D"white-space:pre-wrap"><div>-- <br>Diese Nachricht=
 wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></di=
v></blockquote></div></div>
</blockquote></div><div style=3D"white-space: pre-wrap"><div class=3D"k9mai=
l-signature">-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit=
 K-9 Mail gesendet.</div></div></body></html>=

------ISANKC2C6WLIZNO60OU2PVJQ0AL7H6--

------7IUDJ6F4WJVULYZSYDBKDT6L0T9PHF
Content-Type: application/zip;
 name=yoctoproblem.zip
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=yoctoproblem.zip;
 size=16612

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
mfJ2V0u1O2rxTqQ3lqRlG5ac3fmLC5a276lQ8nxJ3dEQOM5DkLCaUXKdwwPWBHh0qnrUXyKPKMHL
JpaKLUpoFMlZ+7KWgAWo4zjNlvei5fs+QpySxo0xOHIel551FA8vcXKP0tkbr+cUhrJ4Jcxk+cPa
vOJ2d5Byii9Q6HIrkRrvswqy/CmnSpyLSDJXGLltNBeNO9vd0skWzaEUb2OWYK14z8skLt/fXwxW
3o+yLtxa5QsIEVY+O/nT65uri6v3bXLRzYTxhJeXP36w51BdvB0W0kJBkjUi8kDtLkSmtBmvmzvV
ygr+decvRwcvzXUg1gnYi0XLtvgHeK0fEgq/tZp7Z4ntWGumLW3/6LjZbrZJeVP/p6wHXMKLWMpb
8NkgZGbDj8WEP3c9rgj80tFdLJa1qieKJAKG4WwV0hT9G0CM/2nB+B8ZONxnA64JrhkR3/6DEVre
A4SHKwBrrfofAvhfE+ZwdfZlh4aD+FEysbzicHSn0G7ZGmtP43a88l9tbd0yKBeRf7BhR1AZkQsc
2MkiN/sUhNmRjlfSQMHqf0b49p+dWJztLTL7bPVmTR3XcgcdGB7fg4+mZS1yVmHotFcGBuYCRoIH
CB6ZFGPCoLX/D1BLBwj7HWxIexMAAOJmAABQSwECFAMUAAAAAAA5TEpVAAAAAAAAAAAAAAAADQAg
AAAAAAAAAAAA/UEAAAAAeW9jdG9wcm9ibGVtL1VUDQAH38pDYyrMQ2MqzENjdXgLAAEE6AMAAATo
AwAAUEsBAhQDFAAIAAgABUlKVWgLanm6AQAA5wMAABgAIAAAAAAAAAAAALSBSwAAAHlvY3RvcHJv
YmxlbS9SZWNpcGUuZGlmZlVUDQAH2sRDYyrMQ2MqzENjdXgLAAEE6AMAAAToAwAAUEsBAhQDFAAI
AAgAiklKVYlQbgIIAQAAnwEAABsAIAAAAAAAAAAAALSBawIAAHlvY3RvcHJvYmxlbS9sYXN0Y29t
bWl0LnR4dFVUDQAH1MVDYyrMQ2MqzENjdXgLAAEE6AMAAAToAwAAUEsBAhQDFAAIAAgATHo+Vdfz
XOQRBAAA6QgAABYAIAAAAAAAAAAAALSB3AMAAHlvY3RvcHJvYmxlbS9wb2t5LmNvbmZVVA0AB6Hs
NmMqzENjKsxDY3V4CwABBOgDAAAE6AMAAFBLAQIUAxQACAAIAD1LSlUmMfuJ2CEAANKpAAAeACAA
AAAAAAAAAAC0gVEIAAB5b2N0b3Byb2JsZW0vbGF5ZXJzcmVjaXBlcy50eHRVVA0ABwbJQ2MqzENj
KsxDY3V4CwABBOgDAAAE6AMAAFBLAQIUAxQACAAIADlMSlX7HWxIexMAAOJmAAAUACAAAAAAAAAA
AAC0gZUqAAB5b2N0b3Byb2JsZW0vbG9nLnR4dFVUDQAH38pDYyrMQ2MqzENjdXgLAAEE6AMAAATo
AwAAUEsFBgAAAAAGAAYAXAIAAHI+AAAAAA==

------7IUDJ6F4WJVULYZSYDBKDT6L0T9PHF--

