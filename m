Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B88C433F5
	for <webhook@archiver.kernel.org>; Sun,  9 Oct 2022 22:29:40 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (NAM10-DM6-obe.outbound.protection.outlook.com [40.92.41.51])
 by mx.groups.io with SMTP id smtpd.web11.335.1665354570624731136
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Oct 2022 15:29:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=rSrPhFJG;
 spf=pass (domain: hotmail.com, ip: 40.92.41.51,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NUyPgXt9FvUwX4G0E2wt7gTAAzRSrado3/lnbNueJjqFHNvFQtdNcr+FzbxZqURsNxlRv+ULY4gqDBTO9n1Nuc1NKbQGHu6+t5A5HVVLE6umkW16MGrsOCSraqW9Y7JK6EMr82fng4EjsR8ylm55KP3eHvH4FVRLnxn0iLW2m6FndrR/7YxqWJCCvhUIEbG1u8LD10p48VooN9enHLJl74VmEnGSREYYgLHX9zkFViofhYFNQyYuCZLPOwVRLKGVshTO6e66YmZvtZZ+EH/jvGpo90+ZJJaGWNnuhKdm4f2PU9/xNNl2n6xXkn8GT9fVEKix70ahfRZlM2CvPirUdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wmm2/Nr7EECU3XalXfiAPixhCGQKOHbGoPSYBOzDCWY=;
 b=N9dskYmEwwvbpsk1GSM9uc/7knWnOjUUULSitsBkz46cmIl+qTnMqNW8+9Ofk6y84jwTHoA2sX7qU48a7RFg/X/hD5voKZ/4tSE0Em61sDmbmxch7uOv3Z9+B1lm35xqdzTD9o5TPAb4/1O910xTN0sX+B3qZTJhtzPA0nft7BbuYmrWX3fROqmFtbyDh16dzi1+Nj1WKrdJBnw/dvdo6ukOpqdlKBLbDtS+0oUGLvgCNnFt9JxCwt3q1yUV+f69vkkOjC0m5FLPMtXI8nlkoojI2Ns151UhfSUUKhzwuvivT66U6ZibYvPcyYB5hevYZtpJg3t39GljANu3dgOnlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wmm2/Nr7EECU3XalXfiAPixhCGQKOHbGoPSYBOzDCWY=;
 b=rSrPhFJGvSnGTpWy5tyzytF23uh6x7kgpqCYUu5TPtfBIQ+UMk5TNEzJ0+W2UOnHHJ/1k9eEplE08KYjbVGaF6fdjVxF+NK3k9zSjhEKOgJBn9P2w1C+z/YL6k+yibcQx6EBoHAr013ghs2F+kdotbfNBBAJ/mrqm7NmDikQQ20UwkHMhUeJCo8X3w0cGKi2oLUmYwCceA0Iy004YFyU6LUxIXp/s1fK3kE2vS8LuPJRWoXjY0JDvdrfZvREdM9C2gmekBteLNO6pnx7YKWY3tb9AB0OEhFBvFsCn3XQ/CQXo/qnIOhL1vnVUClgocuUGh+Dis7DfPAz+Pc4gsN0qg==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by DM4PR84MB1591.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:4a::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5709.15; Sun, 9 Oct 2022 22:29:28 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.034; Sun, 9 Oct 2022
 22:29:28 +0000
Date: Mon, 10 Oct 2022 00:29:18 +0200
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
 <PH0PR84MB1835720987A0C6B0DDBCE7CDC7219@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----UX8GHHGDEZ9XMVNBRVC4PP59QIQW8H
Content-Transfer-Encoding: 7bit
X-TMN: [fOMXdQF/cBGcMudrOr2NSrUpPTYBpwQK]
X-ClientProxiedBy: AS4P191CA0028.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d9::20) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <D418B21D-D087-4AFB-AFE8-06AD37E8AA7B@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|DM4PR84MB1591:EE_
X-MS-Office365-Filtering-Correlation-Id: 396511bd-dbbd-49a1-224f-08daaa45ba59
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TtWZAbwfgMz6DZHLCARWorG/29y/q7lGXT3Jcr8hsSPBOc9eNPrSJj4WRAmr76PLWOF4enmjydTvlasgfMLDvF9Pq5ZOEiJ86xjZm9OyoT0QI5XMyPwb4DmPMet7hBSl8Wr2cBIINYAjvunL5Q94RVY83LAcckNvZ97qPdZwWBOKzsuki1bCyIlVaN39xhanQEMVqHug5a8/336vDKvNcP5uEUqNeSOCAK8GT++Tz6L0nbtYJK2a9mMYXgmd6FRzB2EnUiauvJrvqX3rAhVi+3TjEwujXAnI2R9W74weeOsmMwiFv9gn1xvIEKhJQ/NMjtHCJ3Ir9UvmKmGh5h8VqSt4LHUwC62DNSwz7Rdtn8uGKUBbPUTaRyp25oMvT+C+GmLE7hWKTCE3pVzmBMzwOBEOnHaXOuiY8R1W5NjUwosXZk2Ns4g3guPF95yM5HUiwpcc8ud2u39e5ZWdb/BOAxVrAWtWjhRyIZITaQyUBt7ZQWSEm+gKnsjG+RQQIPOEmTWvoPy0mlmZ9QAdWSxXEsMxbGeIRnxrYTIGO0cgifwiO+k0IxuQrloAZeldu5ZyATdItWclMv8H/hKrrDu59A6x7ZXuyM/4X0ao3JJTmII4b5jvgX7r3ofOGQ6cvC2nDEovqgyzksEpe9lMaHEW/fzr9B24ZljlsEGpljXM+ymVxTHskhqex2KEjATcUGj60IY1ShHV63KNkp1OYwi2XJR01H0N8n7+lbWzktDNDQE=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L3FqZm9RNWlUK2I0Q1JwVjEzVnJzcjZNdXBZVksyM1phNGpnWUJwVHl3RWFW?=
 =?utf-8?B?WG5STStOc3pjZUVjTmozWUNITHB0YWZlVEFGV0VmTFlsNE9WR2ZsK2M4RVor?=
 =?utf-8?B?bHdZV1ZLZms2WWViSUlEdkg2NndtSWdSejlJeWZaVG56NzhNOEtNYUJpK1Zl?=
 =?utf-8?B?SjE1NUM4OW0xcVFtSVhsVVhNVEVCVXRHL3NiNjZyMXJBS2M3UHQ4OCtxOEFZ?=
 =?utf-8?B?KzNXbVY0b3ZwV2FvZTNQYi95dnpybnlSdkJFWGlMczBhQlFTY1NLNUZoWXZk?=
 =?utf-8?B?LzB5cmpVcDh2eHNMMkZNMGMxVFhEQSs4eHI4SXBrWGxTZCtlc3BpWWdHeG1X?=
 =?utf-8?B?THlHVTFNYXhMdjZ6T0t4WEVqZUcrakU4SDROT2pUWW53WkJ2Ulo2M3lRWHBs?=
 =?utf-8?B?elhwcUR5L1VmSGw2UDM4Zk1NTTMyY0NjSXNIdTNpeXVpVzJrOWlKa0xkMVl1?=
 =?utf-8?B?UXVXTE0rOHVpbSt5ZWZQcnIvNlBNZmVkaFlUaDQ1aTVwWUZxMXM4amt6VkZO?=
 =?utf-8?B?dS9KZnhhS3JWUGlvTHpRemZjM0xUV09Lc2JaK3IxTjZsU1B3MXJUUTltZU96?=
 =?utf-8?B?eW1UR2Nja1lzU2E3a2djQTMwRTl4eFZrcGI5aWsxL250emIwSlFmU040SExu?=
 =?utf-8?B?TDloNzh4bmFMWWpNUWxvSnJQaGFSS1g3TzBwdWtOZHBPTk0zSkt6QXNNOEJ6?=
 =?utf-8?B?R2JnVmJJcG8yVFBzR3lzRXVydkRQVlREemFmV0YzeW45Rzh2UHV6YndDSEU4?=
 =?utf-8?B?R2ZYNm5kczJnSmRVVjJwQk0yNU1sbGRvZFFWbXJkRnlET21LcE9nUzdKK0ZO?=
 =?utf-8?B?RndjdGVML092K0c2RUJ0Q3l1M1VqNnNWNlVBdlF1cW9rNEoxMlFKTjlLU3Vq?=
 =?utf-8?B?Tk5PaW5TU0dURHZPWkppSk9taVlFK3UwbzlOUFNBSE1oY0lnenpoTm1OeENN?=
 =?utf-8?B?aTNNT1doMGdRdDYxdjZSa3lGVlIzdzhtanV0c3FmWktLcnQyMmxlSmNYNnh3?=
 =?utf-8?B?cEFIVWtTdkZuN1hjcnZjOFZLUTJmMHlEVDArbkw4Y1BDbTVHVERjQmdsSVJD?=
 =?utf-8?B?V0JxMFQwUzN6RXhJM0xMYUxVTExUajFMWVRxc3JqMmdZQ3Y4cTNpZVNHSmZx?=
 =?utf-8?B?Y3dyNVQ0S1VKK3lqTm5BbG54V29QVE14M3JZMEtVWFBNL3BDSFQvSGR0VGFK?=
 =?utf-8?B?M3VBWmxGNzVxd2tBUmhTSDl5RG9WYjVXcXkvcTJSREFsYXNLWWNmL2I2aDlE?=
 =?utf-8?B?YmhBZ0lJeDJyampPRkNkbFdOQ3E2MGtPOG5PZjVaVUJPVGVuRjNzRW5aV0ZN?=
 =?utf-8?B?V3lPUHI5MkZvUGRWVUowMWVzUUhBR2t2elh0YWRJbkx0cXoyTVZiZi8yWGF1?=
 =?utf-8?B?OUZrTnJtak9UVmF2YVkwUkI2V2pBTVRKekhOd0hPQ21CNHA3VnZhQnk5eGxy?=
 =?utf-8?B?cHdISUdHQ29rMUg5WnErcnZLZDVVWVNGM1FhZkpmS2ZyUkJ2ZnRrdVI5SVZy?=
 =?utf-8?B?SFJHNkdLSmh3RDZIUnUxeXdkRXRjOXRoZ2oxVmM3aVZURit6ZDhqWWxyTGJa?=
 =?utf-8?B?SDFBUEJpNHFxMThWQ3F6bkFyeFZTcFZYTmsrR283WG4rWExDM2VndHdnNXd2?=
 =?utf-8?B?SEFGL0NPNC93NWhGVVV2RXFvQTYxTGlhYzd6MGl1SFdVZ3FMcDdWU1dNM2o0?=
 =?utf-8?B?RnNQM0htRUVLVGRxVFowcjV6QjZsSmV0aUFIMkpMRnVMZDZEc0lITXh3PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 396511bd-dbbd-49a1-224f-08daaa45ba59
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2022 22:29:28.7818
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR84MB1591
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 09 Oct 2022 22:29:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58299

------UX8GHHGDEZ9XMVNBRVC4PP59QIQW8H
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Any more ideas?

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
------UX8GHHGDEZ9XMVNBRVC4PP59QIQW8H
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>Any more ideas?<br><br><div class=3D"gmail_quote">Am 30. Septemb=
er 2022 22:53:22 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&=
gt;:<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; b=
order-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
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

------UX8GHHGDEZ9XMVNBRVC4PP59QIQW8H--

