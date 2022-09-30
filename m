Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 767F8C433FE
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 22:23:24 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (NAM12-BN8-obe.outbound.protection.outlook.com [40.92.21.43])
 by mx.groups.io with SMTP id smtpd.web11.630.1664576598006997542
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 15:23:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=ksQzdAvT;
 spf=pass (domain: hotmail.com, ip: 40.92.21.43,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=meWzqtJS8xqY6808SfLWuKBHCnIaeLPSLooQtBrVc8iRdRGoOrjGFWbcR4n3FOYh3EAYhI40p6sACNU7gr4X26zQvXkwUnPLLP0oPwBm/5c62SZV9w2q86oIy8NIwiP/iEkiwUYbuV7tH1X0KPmCxPR8yXut9QW2WU4He0OMOKXcmIA3oQ7xTcgJKjmeZZt/fJ1DcEmLm06opQAnDqzqtui+h7qhfpC7qXGtXmjad6kkCCdogXqHoUIIwfDrSIup7KFKCAc026qP+kmurNDNADJODiWygRvVGqTPv6xqNWzGbig9qxAaSXsuCS2ZNX4NaIqwY9kpuYbi8IHEBlAvzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=odQsx85jyys0HLl7byXPfyV1bNnq9SdmHsTbeUgI09Q=;
 b=SCF93GPTtI8WHmLkTk8euaK4mUjVm7NuF3BazCqCevczySmfV4a+Zni71lYnUX5C5JbUN03GNPDe063M7xJaKZrpJ6KeSoqVPntwp7BHNChFsuBHLy4Zk9ktLSEDlggfw5lmrG2sTo58G5bl4n+ctg1K+TYsuqrF9+0l5NAsMUsOD3KkrPueAWWTBsHIzxhsS25/72E3Xqe21L1BA7QLDIgSAk8DTfL3AsQF9u7qdJNYa4Khtu3UkVMuB+LSpEobvhzRp8XnzshkEJt2p5CJI146VZaZS8E+n5Ds3kwXsIxuSFbIK5JiATgYj43IFmZhQwkJr4OF3ViILuIVC3ilug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=odQsx85jyys0HLl7byXPfyV1bNnq9SdmHsTbeUgI09Q=;
 b=ksQzdAvTMwfZHSyfjZWOeEew4ovTUC+08G4jZpqcsTtISm0T3Nv2PL610U78R+cA4GElSxWYBP4mxDNtTJO9zTjcPkeHsCaAVv6OvalvvLAJZ7WcfODkWlpjn5K/myiv1s897vsPTyze5ysldBB/eGEXrsrTfQrvB3lW8awTc3ttMRf+1moK58s4pFZbKIzkwfcwtb8uJ9otajU0hTBxJKSQsn/BdU0iZ+f+R/ydoaEr2GUmAqEPjZ4fRwc8LI7QT33yeGB2fTUAq0xZ9JIgQEr7YvQK/rf+VTSkCC6VBpE5lSwGfaRdzSHiUqn4gu4xkVsponG2nwpKJn+95orjVQ==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by SJ0PR84MB1699.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:432::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.20; Fri, 30 Sep
 2022 22:23:15 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Fri, 30 Sep 2022
 22:23:15 +0000
Date: Sat, 01 Oct 2022 00:23:10 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Changing git url of qemu
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj_QAkRLjj_3kJKihea1k9C41AaMYcVNWiXgUYy+HpZKgw@mail.gmail.com>
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB1835A9768FB8246072F05484C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8hmMe9Qc-pb5KxFW-kraCJCZ=kttZmzkospx4VPp0rDw@mail.gmail.com>
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
Message-ID: 
 <PH0PR84MB18359D00B27EBB93D895D3EEC7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----FXT2N4C9OHI0TB8MZ8X5XEW73GBFBV
Content-Transfer-Encoding: 7bit
X-TMN: [+vKFQMbp8nRL/agJrQ63TCzOVz05jToZ]
X-ClientProxiedBy: FR3P281CA0052.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::23) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <534A5C30-40F8-425C-898C-7075F42DAF20@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|SJ0PR84MB1699:EE_
X-MS-Office365-Filtering-Correlation-Id: 0337b122-058c-40a7-ebb3-08daa3325e2e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	CulOmqALJQlFRcPlNPilyD7Koant/2kf0gLmFkq2bvFTSjmxxmvgH2VBKre44KW5ywjpkH1U3e7kbj0XJPMQtqbWHoY589WdVW7rz7GV4lYC2DA4d7xSeMWIVhvwHGPx1IUdLAQDzm5Gpc+mg/B8VbZhkRPPuy5PUrx3P2AI+PR7sXc3g9rdOlB9SC0ce4g9QoQa/htMiA4QERHGO9oSkZJb0RMnQ2EHkocxuTfHjMsw3AYbYBenApsnU4KflbQFgcZfLtDASVovWoHpWNvvp/s6INO510A5yTNf8jCo18I/fSdP/x/W6a8wZldkRoaJ46yWf7T283C2C6udwmuUEMWu/oONI9HxmJcqyCn3CxHQQ8gXypW87lJagxxIebwJUFXnjFzNkC2skHzd1zdMH75pYiBJSMUJ9JhySw1R9jOsqvYyTsedSGIZ/wFZ8/cGHZJsbFcTgriwxODskZOetNWTPZ7eXSp2ErRxR9PIMydQ/2b0fP7TKxDrG4BSNly+JkrEdpRzIJaZjNhVmGJeU+5ErlASG3iPUZ3bcunBfY1D8ajel7zPzyzUGmBKd6tzI0wEgeYNCWSUDdTQp+Srya+IYfWuCTNAlCPEupT7IZ5e0zjTfjlcFjHg0PIOVug15LOYLknqzkptxdFbbWeCRfKYzNtjUOSkTJD8Tgsy2hy/e7PL0FUlRo2z1+A9KClvLvS/rGlaqnygiIUszmVBSAxPDPKDDcRxDgVb7gdiTcA=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UmxIekRxU1hiZkpqMTJkWURnR294OGpFYmlhUWdKYnhxUGc1TnN5MDkwNFlj?=
 =?utf-8?B?Mlg3UGhQWjZGbVBreFVGN3llS1hRbnBLbGRvSnlzRnFDUTltZlljRmk2NEZN?=
 =?utf-8?B?dmlwdEUvM1B0SnVxelBYdUw3QnpuTHJoYTdWR0RvYVVFTlVBajh0MGhudlNI?=
 =?utf-8?B?eTA5bDV5ME1LUWJ4OXhlZkd1d1hjL2MxWkxFaXVhV1NxaVcyazNFdE42N1Mr?=
 =?utf-8?B?VDAvQnpmUDdOeXJZbEZLaGhkL051QmZCMlgwc01pY2JtSFc4dzJHUEwyN2c1?=
 =?utf-8?B?QUhBYk9kMEpDZ3VhM3Q1RktKcUNPZnhrMktRL3hmUmQ1WEMrZm9LRGNsOVRK?=
 =?utf-8?B?K0RleFlhWnU0bG5TWmhRcUxTNVhCdGQ3VzRTdWp0Vm9tazF0L2NXSy9vanJv?=
 =?utf-8?B?WURkSTd6dFU5S3dXVXd5U0NQREpSVzQvY1hmSXNjVVR6L05yNTQxWURUWmN5?=
 =?utf-8?B?UXBhTk9YL29US2tZTjQ5U0NQMlo2UVFTUGtvbDErN3RkTW5LZzdiRkZXTEsz?=
 =?utf-8?B?Y0RuMXhDaE9kc2cxdEdEbW9LazRWdkFobW9CbTdmV2VIcCtVMTFDRU4xT25k?=
 =?utf-8?B?QW8vZko1WFVqdTIzSVFsOVJoY0VlRmlQM0ZCVXBJbDMxSlZweUEwK3JzbEhQ?=
 =?utf-8?B?MmNud21FQ1d1UUx2OGFmUUZHTCszRCtraTkyeGJIcTFaVmI5VGdKZDdtVEdB?=
 =?utf-8?B?OXRaNTA2MXFyTVlQVjZxbVZLdHpSUmQ1S25pS1RyeGVZTDhweUZOb0pKZ1Ez?=
 =?utf-8?B?QXpnbGsyUnJjQVMyK1FZY09CUGtmMHNSL3d0YzZzaEZJZWh5TUJObTZ5NHhK?=
 =?utf-8?B?RVY1ak1aRSszcDhVL2NXb2l3VnNqbFFrQmRGSzR0cnNQZGVPa2RmcmNXaXQ5?=
 =?utf-8?B?R0xhMnhjT203Q3RCZUJhMmd3dXA3VnRTWUxPbUtUYkFhK2E0T2o3NHZkQnVK?=
 =?utf-8?B?V0I0SHFQSmJGdUMrdTZBdDVVOE92WkR3M3JoOHJaZFhYMDAvVzhyUmxxbGxz?=
 =?utf-8?B?bkl5ajF0UGF3WXEyMHZrbE9jL1AvdTVGUVd5WWVHKzcxMXZseEFUWEdkZVBi?=
 =?utf-8?B?bWVDRFhGUmVlcjFFWGFwZVhVZ3lhQjBncmM5M2xFQnhFVmRBUUQvOTZCWnlk?=
 =?utf-8?B?aFY2WjlNNkhidUF3Ky9ZS1JRaDdDa3hxWVBYdUxhNEd3ZFQ3ajN2aVliZTZV?=
 =?utf-8?B?YUhSY3JnaVdwdnNuWEV0YnRNZkd0bHRvbUlvRzJDeUxNVDBOdW16c0V5MEwv?=
 =?utf-8?B?OE9MU3BDNGdCSTY1blJCS21SVUJySXFTMmFoNStzOFl0T1lDS3g3SCtGWHNl?=
 =?utf-8?B?cDRVNGFDMW1lME53ZjlETmhHMUNjN3FzUjR5Q2dNRHFtbVVoY01NYVZSSkJh?=
 =?utf-8?B?TzY0UGFrMlNyYXlQYTdaNGtxazlVSjZMbXFwcCtIWG12blRHT1lBSFpJOVVN?=
 =?utf-8?B?TUE5bEwxZm5VWjdqZmh5bDVOSnVCai9OL3VwVDZCNFlYU3VyQ0g2WEt4UUNo?=
 =?utf-8?B?dzAzWWxUdi9aOUs4NlZPbWd2aTJrOXdmeVc0cFR2aTVlZGtSeXo5Q1dxcU9N?=
 =?utf-8?B?SEJuT0ZhekRwREc4eGh3QXNvMHNuNTloWWNtclNVZy9rMDdTdFRXeFo5U0tQ?=
 =?utf-8?B?S0FHUW41Skw5ajlBOFZJQkNsckNtemc0Z3d2SUxRNkxnOXdtYnJHR0xKV2Ez?=
 =?utf-8?B?U3RlOG1LNW8zNzFKbW0wdjk2TENjT3JWV29Dd1FsdzdPZmpWWDd5ait3PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0337b122-058c-40a7-ebb3-08daa3325e2e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 22:23:15.2973
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR84MB1699
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 22:23:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58244

------FXT2N4C9OHI0TB8MZ8X5XEW73GBFBV
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Tried

PACKAGECONFIG:append:aarch64:pn-mesa =3D ' gallium-llvm


It goes pretty far, but then we get back to:

=2E=2E/mesa-22=2E2=2E0/meson=2Ebuild:1782:2: Unhandled python exception

Am 30=2E September 2022 22:53:22 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>That depends on what is your target=2E If you're running qemu on a x86
>host, it's better to not do software emulation and build for
>qemux86_64 as well, and then run qemu with kvm, so it executes
>directly on the host CPU=2E
>
>Alex
>
>On Fri, 30 Sept 2022 at 22:50, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> X86-64 is right or do you mean arm?
>>
>> Am 30=2E September 2022 22:39:44 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>>
>>> You might want to try enabling gallium-llvm only for the target mesa:
>>>
>>> PACKAGECONFIG:append:x86-64:pn-mesa =3D ' gallium-llvm'
>>>
>>> Alex
>>>
>>> On Fri, 30 Sept 2022 at 22:24, Edgar Mobile <heideggm@hotmail=2Ecom> w=
rote:
>>>>
>>>>
>>>>  I deleted the whole build directory, recreated it, only added the ar=
m switch in local conf and your changes for mesa=2Einc=2E
>>>>  After a few hours of building core-image-weston it again complains t=
hat it tries to copy llcm-config14=2E0=2E6 over itself=2E I don't know what=
 to do anymore=2E
>>>> ________________________________
>>>>  From: Alexander Kanavin <alex=2Ekanavin@gmail=2Ecom>
>>>>  Sent: Thursday, September 29, 2022 10:46 AM
>>>>  To: PHIL <heideggm@hotmail=2Ecom>
>>>>  Cc: Yocto-mailing-list <yocto@lists=2Eyoctoproject=2Eorg>
>>>>  Subject: Re: [yocto] Changing git url of qemu
>>>>
>>>>  You need to build mesa, not mesa-native=2E And please show exact cha=
nges you made=2E
>>>>
>>>>  Alex
>>>>
>>>>  On Thu 29=2E Sep 2022 at 12=2E28, PHIL <heideggm@hotmail=2Ecom> wrot=
e:
>>>>
>>>>  Tried in a sifferent machine with wednesday poky master
>>>>
>>>>  Building mesa-native gives the error
>>>>
>>>>  cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-l=
inux/mesa-native/2_22=2E2=2E0-r0/recipe-sysroot-native/usr/bin/llvm-config1=
4=2E0=2E6' and '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_=
64-linux/mesa-native/2_22=2E2=2E0-r0/recipe-sysroot-native/usr/bin/llvm-con=
fig14=2E0=2E6' are the same file
>>>>
>>>>
>>>>  Am 28=2E September 2022 13:37:05 MESZ schrieb Alexander Kanavin <ale=
x=2Ekanavin@gmail=2Ecom>:
>>>>
>>>>  Try latest poky master?
>>>>
>>>>  Alex
>>>>
>>>>  On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>>
>>>>   Mesa build fails=2E It complains that it copies llvm-config14=2E0=
=2E6 to the same file=2E
>>>>
>>>>   Am 28=2E September 2022 12:48:04 MESZ schrieb Alexander Kanavin <al=
ex=2Ekanavin@gmail=2Ecom>:
>>>>
>>>>
>>>>   The following works for me=2E I get
>>>>
>>>>   tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-split/me=
sa-vulkan-drivers/usr/lib/libvulkan_intel=2Eso
>>>>   tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-split/me=
sa-vulkan-drivers/usr/lib/libvulkan_lvp=2Eso
>>>>
>>>>   --- a/meta/recipes-graphics/mesa/mesa=2Einc
>>>>   +++ b/meta/recipes-graphics/mesa/mesa=2Einc
>>>>   @@ -88,6 +88,7 @@ def strip_comma(s):
>>>>
>>>>    PACKAGECONFIG =3D " \
>>>>           gallium \
>>>>   +        gallium-llvm \
>>>>           ${@bb=2Eutils=2Efilter('DISTRO_FEATURES', 'x11 vulkan wayla=
nd', d)} \
>>>>           ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'opengl', 'open=
gl egl
>>>>   gles gbm virgl', '', d)} \
>>>>           ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'x11 opengl', '=
dri3', '', d)} \
>>>>   @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>>>>   -Ddri3=3Ddisabled, xorgproto libxshmfence"
>>>>
>>>>    # Vulkan drivers need dri3 enabled
>>>>    # amd could be enabled as well but requires gallium-llvm with llvm=
 >=3D 3=2E9
>>>>   -VULKAN_DRIVERS =3D ""
>>>>   +VULKAN_DRIVERS =3D "swrast"
>>>>    VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>>>>    VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>>>>    VULKAN_DRIVERS:append =3D"${@bb=2Eutils=2Econtains('PACKAGECONFIG'=
,
>>>>   'freedreno', ',freedreno', '', d)}"
>>>>
>>>>   Alex
>>>>
>>>>   On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail=2Ecom> wrote:
>>>>
>>>>
>>>>
>>>>    Also vulkan-drivers is empty in meson generated by bitbake=2E If I=
 add it manually it will complain that llvm is disabled=2E How would I enab=
le it?
>>>>
>>>>    Am 28=2E September 2022 10:51:26 MESZ schrieb Alexander Kanavin <a=
lex=2Ekanavin@gmail=2Ecom>:
>>>>
>>>>
>>>>
>>>>    I think for software vulkan you need to pass in
>>>>    -Dvulkan-drivers=3Dswrast when building mesa for the target=2E
>>>>
>>>>    Alex
>>>>
>>>>    On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail=2Ecom> wrote=
:
>>>>
>>>>
>>>>
>>>>
>>>>     I asked the author so I assume he would have told me=2E Apparentl=
y the virglrenderer branch is obsolete=2E
>>>>
>>>>     Currently my only changes from poky master are adding vulkan open=
gl x11 to distro features and vulkan-samples vulkan-loader vulkan-tools vir=
glrenderer to core image extra install in local=2Econf=2E
>>>>
>>>>     I also added virtio-experimental flag to mesa and virglrenderer m=
eson recipes=2E
>>>>
>>>>     I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo=2E
>>>>
>>>>     What am I missing for Software Mode?
>>>>
>>>>     Am 28=2E September 2022 10:29:28 MESZ schrieb Alexander Kanavin <=
alex=2Ekanavin@gmail=2Ecom>:
>>>>
>>>>
>>>>
>>>>
>>>>     I would first check whether any of that work in the branch has me=
anwhile landed upstream=2E The post is from 2021=2E
>>>>
>>>>     Have you tried the software Vulkan in the guest?
>>>>
>>>>     Alex
>>>>
>>>>     On Wed 28=2E Sep 2022 at 10=2E21, PHIL <heideggm@hotmail=2Ecom> w=
rote:
>>>>
>>>>
>>>>
>>>>
>>>>     I try to enable vulkan according to this tutorial
>>>>
>>>>     https://www=2Ecollabora=2Ecom/news-and-blog/blog/2021/11/26/venus=
-on-qemu-enabling-new-virtual-vulkan-driver/
>>>>
>>>>     According to the author the modified qemu branch is still necessa=
ry so I want to enable that=2E
>>>>
>>>>
>>>>     Am 28=2E September 2022 10:14:24 MESZ schrieb Alexander Kanavin <=
alex=2Ekanavin@gmail=2Ecom>:
>>>>
>>>>
>>>>
>>>>
>>>>     You need to clarify what you want to do exactly=2E Why can=E2=80=
=99t you use the existing recipe?
>>>>
>>>>     Alex
>>>>
>>>>     On Wed 28=2E Sep 2022 at 9=2E58, Edgar Mobile <heideggm@hotmail=
=2Ecom> wrote:
>>>>
>>>>
>>>>
>>>>
>>>>     Greetings,
>>>>
>>>>     I want to change the git repo url in order to test the Venus driv=
er=2E Can someone tell me which variable in which recipe I'd have to set?
>>>>
>>>>     Regards
>>>>     --
>>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail =
gesendet=2E
>>>> ________________________________
>>>>     Links: You receive all messages sent to this group=2E
>>>>     View/Reply Online (#58196): https://lists=2Eyoctoproject=2Eorg/g/=
yocto/message/58196
>>>>     Mute This Topic: https://lists=2Eyoctoproject=2Eorg/mt/93968127/1=
686489
>>>>     Group Owner: yocto+owner@lists=2Eyoctoproject=2Eorg
>>>>     Unsubscribe: https://lists=2Eyoctoproject=2Eorg/g/yocto/unsub [al=
ex=2Ekanavin@gmail=2Ecom]
>>>> ________________________________
>>>>    --
>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail g=
esendet=2E
>>>>
>>>>
>>>>
>>>>
>>>>     --
>>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail =
gesendet=2E
>>>>
>>>>
>>>>
>>>>    --
>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail g=
esendet=2E
>>>>
>>>>
>>>>   --
>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ge=
sendet=2E
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
------FXT2N4C9OHI0TB8MZ8X5XEW73GBFBV
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>Tried<br><br>PACKAGECONFIG:append:aarch64:pn-mesa =3D ' gallium-=
llvm<br><br><br>It goes pretty far, but then we get back to:<br><br>../mesa=
-22.2.0/meson.build:1782:2: Unhandled python exception<br><br><div class=3D=
"gmail_quote">Am 30. September 2022 22:53:22 MESZ schrieb Alexander Kanavin=
 &lt;alex.kanavin@gmail.com&gt;:<blockquote class=3D"gmail_quote" style=3D"=
margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); paddi=
ng-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">That depends on what is your target. If =
you're running qemu on a x86<br>host, it's better to not do software emulat=
ion and build for<br>qemux86_64 as well, and then run qemu with kvm, so it =
executes<br>directly on the host CPU.<br><br>Alex<br><br>On Fri, 30 Sept 20=
22 at 22:50, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid=
 #729fcf; padding-left: 1ex;"><br> X86-64 is right or do you mean arm?<br><=
br> Am 30. September 2022 22:39:44 MESZ schrieb Alexander Kanavin &lt;alex.=
kanavin@gmail.com&gt;:<br><blockquote class=3D"gmail_quote" style=3D"margin=
: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #ad7fa8; padding-left: 1ex;"><b=
r> You might want to try enabling gallium-llvm only for the target mesa:<br=
><br> PACKAGECONFIG:append:x86-64:pn-mesa =3D ' gallium-llvm'<br><br> Alex<=
br><br> On Fri, 30 Sept 2022 at 22:24, Edgar Mobile &lt;heideggm@hotmail.co=
m&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt =
1ex 0.8ex; border-left: 1px solid #8ae234; padding-left: 1ex;"><br><br>  I =
deleted the whole build directory, recreated it, only added the arm switch =
in local conf and your changes for mesa.inc.<br>  After a few hours of buil=
ding core-image-weston it again complains that it tries to copy llcm-config=
14.0.6 over itself. I don't know what to do anymore.<hr>  From: Alexander K=
anavin &lt;alex.kanavin@gmail.com&gt;<br>  Sent: Thursday, September 29, 20=
22 10:46 AM<br>  To: PHIL &lt;heideggm@hotmail.com&gt;<br>  Cc: Yocto-maili=
ng-list &lt;yocto@lists.yoctoproject.org&gt;<br>  Subject: Re: [yocto] Chan=
ging git url of qemu<br><br>  You need to build mesa, not mesa-native. And =
please show exact changes you made.<br><br>  Alex<br><br>  On Thu 29. Sep 2=
022 at 12.28, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><br>  Tried in a =
sifferent machine with wednesday poky master<br><br>  Building mesa-native =
gives the error<br><br>  cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl=
/tmp/work/x86_64-linux/mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bi=
n/llvm-config14.0.6' and '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp=
/work/x86_64-linux/mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/ll=
vm-config14.0.6' are the same file<br><br><br>  Am 28. September 2022 13:37=
:05 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><br> =
 Try latest poky master?<br><br>  Alex<br><br>  On Wed, 28 Sept 2022 at 13:=
23, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><br><br>   Mesa build fails=
. It complains that it copies llvm-config14.0.6 to the same file.<br><br>  =
 Am 28. September 2022 12:48:04 MESZ schrieb Alexander Kanavin &lt;alex.kan=
avin@gmail.com&gt;:<br><br><br>   The following works for me. I get<br><br>=
   tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan=
-drivers/usr/lib/libvulkan_intel.so<br>   tmp/work/core2-64-poky-linux/mesa=
/2_22.2.0-r0/packages-split/mesa-vulkan-drivers/usr/lib/libvulkan_lvp.so<br=
><br>   --- a/meta/recipes-graphics/mesa/mesa.inc<br>   +++ b/meta/recipes-=
graphics/mesa/mesa.inc<br>   @@ -88,6 +88,7 @@ def strip_comma(s):<br><br> =
   PACKAGECONFIG =3D &quot; \<br>           gallium \<br>   +        galliu=
m-llvm \<br>           ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan wa=
yland', d)} \<br>           ${@bb.utils.contains('DISTRO_FEATURES', 'opengl=
', 'opengl egl<br>   gles gbm virgl', '', d)} \<br>           ${@bb.utils.c=
ontains('DISTRO_FEATURES', 'x11 opengl', 'dri3', '', d)} \<br>   @@ -108,7 =
+109,7 @@ PACKAGECONFIG[dri3] =3D &quot;-Ddri3=3Denabled,<br>   -Ddri3=3Ddi=
sabled, xorgproto libxshmfence&quot;<br><br>    # Vulkan drivers need dri3 =
enabled<br>    # amd could be enabled as well but requires gallium-llvm wit=
h llvm &gt;=3D 3.9<br>   -VULKAN_DRIVERS =3D &quot;&quot;<br>   +VULKAN_DRI=
VERS =3D &quot;swrast&quot;<br>    VULKAN_DRIVERS:append:x86:class-target =
=3D &quot;,intel&quot;<br>    VULKAN_DRIVERS:append:x86-64:class-target =3D=
 &quot;,intel&quot;<br>    VULKAN_DRIVERS:append =3D&quot;${@bb.utils.conta=
ins('PACKAGECONFIG',<br>   'freedreno', ',freedreno', '', d)}&quot;<br><br>=
   Alex<br><br>   On Wed, 28 Sept 2022 at 11:49, PHIL &lt;heideggm@hotmail.=
com&gt; wrote:<br><br><br><br>    Also vulkan-drivers is empty in meson gen=
erated by bitbake. If I add it manually it will complain that llvm is disab=
led. How would I enable it?<br><br>    Am 28. September 2022 10:51:26 MESZ =
schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><br><br><br>  =
  I think for software vulkan you need to pass in<br>    -Dvulkan-drivers=
=3Dswrast when building mesa for the target.<br><br>    Alex<br><br>    On =
Wed, 28 Sept 2022 at 10:44, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><br=
><br><br><br>     I asked the author so I assume he would have told me. App=
arently the virglrenderer branch is obsolete.<br><br>     Currently my only=
 changes from poky master are adding vulkan opengl x11 to distro features a=
nd vulkan-samples vulkan-loader vulkan-tools virglrenderer to core image ex=
tra install in local.conf.<br><br>     I also added virtio-experimental fla=
g to mesa and virglrenderer meson recipes.<br><br>     I still get ERROR_IN=
COMPATIBLE_DRIVER when running vulkaninfo.<br><br>     What am I missing fo=
r Software Mode?<br><br>     Am 28. September 2022 10:29:28 MESZ schrieb Al=
exander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><br><br><br><br>     I w=
ould first check whether any of that work in the branch has meanwhile lande=
d upstream. The post is from 2021.<br><br>     Have you tried the software =
Vulkan in the guest?<br><br>     Alex<br><br>     On Wed 28. Sep 2022 at 10=
.21, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><br><br><br><br>     I try=
 to enable vulkan according to this tutorial<br><br>     <a href=3D"https:/=
/www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-enabling-new=
-virtual-vulkan-driver/">https://www.collabora.com/news-and-blog/blog/2021/=
11/26/venus-on-qemu-enabling-new-virtual-vulkan-driver/</a><br><br>     Acc=
ording to the author the modified qemu branch is still necessary so I want =
to enable that.<br><br><br>     Am 28. September 2022 10:14:24 MESZ schrieb=
 Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><br><br><br><br>     =
You need to clarify what you want to do exactly. Why can=E2=80=99t you use =
the existing recipe?<br><br>     Alex<br><br>     On Wed 28. Sep 2022 at 9.=
58, Edgar Mobile &lt;heideggm@hotmail.com&gt; wrote:<br><br><br><br><br>   =
  Greetings,<br><br>     I want to change the git repo url in order to test=
 the Venus driver. Can someone tell me which variable in which recipe I'd h=
ave to set?<br><br>     Regards<br>     --<br>     Diese Nachricht wurde vo=
n meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<hr>     Links: You recei=
ve all messages sent to this group.<br>     View/Reply Online (#58196): <a =
href=3D"https://lists.yoctoproject.org/g/yocto/message/58196">https://lists=
.yoctoproject.org/g/yocto/message/58196</a><br>     Mute This Topic: <a hre=
f=3D"https://lists.yoctoproject.org/mt/93968127/1686489">https://lists.yoct=
oproject.org/mt/93968127/1686489</a><br>     Group Owner: yocto+owner@lists=
.yoctoproject.org<br>     Unsubscribe: <a href=3D"https://lists.yoctoprojec=
t.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [alex=
.kanavin@gmail.com]<hr>    --<br>    Diese Nachricht wurde von meinem Andro=
id-Ger=C3=A4t mit K-9 Mail gesendet.<br><br><br><br><br>     --<br>     Die=
se Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br>=
<br><br><br>    --<br>    Diese Nachricht wurde von meinem Android-Ger=C3=
=A4t mit K-9 Mail gesendet.<br><br><br>   --<br>   Diese Nachricht wurde vo=
n meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br><br>  --<br>  Diese N=
achricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></bl=
ockquote></blockquote><br> --<br> Diese Nachricht wurde von meinem Android-=
Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></pre></blockquote></div>=
<div style=3D"white-space: pre-wrap"><div class=3D"k9mail-signature">-- <br=
>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.=
</div></div></body></html>=

------FXT2N4C9OHI0TB8MZ8X5XEW73GBFBV--

