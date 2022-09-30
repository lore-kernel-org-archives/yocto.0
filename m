Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE377C433FE
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 20:50:47 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (NAM02-SN1-obe.outbound.protection.outlook.com [40.92.44.32])
 by mx.groups.io with SMTP id smtpd.web11.254.1664571037413117494
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 13:50:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=cTn0FmhI;
 spf=pass (domain: hotmail.com, ip: 40.92.44.32,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J1rPzMX+mbRkiXb0sCygOqeZUybUfEjXkuKKqYztDE6OOMKQFLQ4ooVZIAcjDoEU5rQubUQKQHucs7DLpGzBIf9ZTyIt8W1Dv0dMkeVdL5ZAGBjMUWIS9Asf2QjKYzsWQYD+T3ugectJbVXIvSbZwB2d/X62vd1fNRf8bt0BGsUAIECI2m1m/qB3q/oqScwtXpm2BXRZFChdBLz/gD5qcyCs3ATqi+nonDWgY2Ga+ksw+t6dVaj84Hs4dqFlSElAmyNHCh/OMItjURYATs7uLNzlTHOdPk2d6B4nbB9KoyOW7iXcJNr9cL7iJJcKKhMzzFf0Uj0/GvpvQIXhi+aX+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QNxO4bg0dEhOmgOdrn2p+GZPaC3JEPeXxfcNh1PSZdQ=;
 b=Bmbskv/GFvtRuHqDGtdEULf0mU/QEObYQwGN4a8wZX7ZAR08SrJeFtufdzkNbAVmxQgP+7Vt+a0CoLe8QJO4Qfw22jBrHgstTGWZ89dk+or38eXe5o4x8W0GZbnOfXbjifNm16VMK5+FSAU94nk6XPJ1Y4o9atgUx2erH25Dex/OXV2ZiDp2wyhKOOonGtOdfZ2duZfLH572DmxuGfDjNJHIl5x1bx/lCUNyIolxNf7D1jDAqLu85oQ+bQqdWcWuHyYp5LESQpa63aCEXYL1uRcPhILQ116fzA71nj/1wLhz9ZjyunreCyomV/V5yKthw3lS6ZAv/0th1TEcSo0npg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QNxO4bg0dEhOmgOdrn2p+GZPaC3JEPeXxfcNh1PSZdQ=;
 b=cTn0FmhI5XG4h9Q5ZjdwDyDhDWsQOuMHbrYpcTSOdinnViecFYtSDZ+GstLstD5u+nAyXWKgYIpJb2z2M2E0Ql2/Sa18HJQKF4Y1rCLvJgUmtU7NGKll9u7zMkgY19u7BjHKJ6fRTUmmPp/Qa7pU8tGTMkZnrLX0i3actYmQPfN92Q/MQpvzytVcUYI0NvvXt86wE0rapTb8MBJmmnqgjeuviWKaQt9UZg77onel2Wzl1pXDQV+t6EYyLafH8IrLr4OOxnCpc37C8294phJv/TfiXBCm3M60++CzrXDMjbikqUT8QO/yob3Sbhu82we2hbt8t5ikjEciYZx3/Ffmzw==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH0PR84MB1810.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:161::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Fri, 30 Sep
 2022 20:50:34 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Fri, 30 Sep 2022
 20:50:34 +0000
Date: Fri, 30 Sep 2022 22:50:30 +0200
From: PHIL <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Changing git url of qemu
User-Agent: K-9 Mail for Android
In-Reply-To: 
 <CANNYZj8e83mohBHrxKAnM==4O+P-FsW2=4CfzpaaC2zXD+boBQ@mail.gmail.com>
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB1835BF84B82124FF0DB10565C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_sdovPpw5+uhPaa65LDBgZUctApsJDv-6KReSi-Zk1PQ@mail.gmail.com>
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
Message-ID: 
 <PH0PR84MB1835C850590FA49C7DD82C97C7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----LXSWB24CT0R5LJ1XYOZX0QNS2QSV8V
Content-Transfer-Encoding: 7bit
X-TMN: [wxh4un0l2F6u/F+8+fNuorvpgFidd7xS]
X-ClientProxiedBy: FR3P281CA0150.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::19) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <8EF29CA7-515A-413D-BE88-AB1E934EF0C9@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|PH0PR84MB1810:EE_
X-MS-Office365-Filtering-Correlation-Id: b10cf290-9a60-49b7-5567-08daa3256bfb
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ol+gqsWkf9OXi1YQMwTGbSkeVdgFdtpVzVmwvj/NlEVHyMwlfQcfX++Vd+jXuGO6FIAn4dsQRnA0OzGpxuxpHvKEhMEV/LntkfO8tUz6D3eI1J8yDw9I5AmLYqE8pNLqCWtXV8QcpbSe7U2tA5wVKl8pj0riG0ZcBheeKqP/wpZUIaBnm8e+5IGV+qiLthSyHIJFGB8JVcGbLzVp/v7jKhOVt/QBRy2ww1eU4K+8pU3xEhU0Iyxc36RKJelHm2yLM1Ib6tKutdsBX1mWpp0fuNQN/YADPwx3xQnjJ6bH8P35tKT/P+BLyhS9cQD3HJWoVKEx/FE/5bK4kI/0l47g7gyMTUnaLb0oc4GfDKgW/hz0LJQxZLgAhqadswOASoojTOr7plcKDqtX1w5xa1VB0S7z6GGdUc8SXKOFpUhAVqoCd1cPNhd7J9RiAodwHwrgNwvTBhfu+shsfP2AjcQ1SIJ0tIBXYNuD22Gka8DeYBIcls1H0ASzL+cGECNwiAHx4LrPLZiH+Eie+/hG6/VgL1O2B+QkG7VBOq+O2aPsyN62GZSJQnyVtHtcv6vH7SKfdyhiJnf2Du9pBqMsKi0lF8vDsymHaY6IsPj4NDq7q2ylPsUQPgTZd9zxNMK0kyO496BADumrFbu7Jeb9poX2n9ze85+w6QbodddAgL5zH4mnXhFYCYBHwmFTFxmjfXKpx2A9a6MeM7O0DaNflGIsbUHsY+bFCxOkW7hWqYPMhDI=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MTdKaFhFWklmSHBMN09FbXNDYlUvaWZmcnliZDRTeUJKRnJoZTdNQVNOdVQ2?=
 =?utf-8?B?eTQvM2Ewb0s5REFRMS8rVGM1eTF4WG9oem1acDdnak5sTFBheHNxSkJ2WHJ1?=
 =?utf-8?B?dFVNRHRrcUh3MlVCa1NQTi9SVlQ2VkROYnkwclUydW9GVjZkOW5aYkNXK1lX?=
 =?utf-8?B?UTJJeVRtcFdMUFZjL3JGeFRFT1k4WEI4aFhOL0RpeFpUVUlhRlpuVjBmaDdi?=
 =?utf-8?B?T053andvbG9xTXp2MVZMVXd0N203V1pLdGcvY1c2bGo3OVV5dDdRblNlUlk3?=
 =?utf-8?B?azlweTR5NGp0VHpsVEdpK1EySnlIZHQxR3pOTy93QzVTM1RUK2xWbFpaTXFU?=
 =?utf-8?B?VnpUckl3MFFjWWhUQXIxdTJ2ejdpdXBqZUpIRE00QUFyN1cvNUxzdjVXc28v?=
 =?utf-8?B?YVg1WXZqalVSNEVrdERyTmtUVUlITVFRd2c5dFJwcGRGNnZiTDRpUVZ4S1c5?=
 =?utf-8?B?YjEwNTZCcU5BUGNUdzBqaXhvYU9qZjFGa3AzbFNaUzM4SWtTUUJzcE4raDlj?=
 =?utf-8?B?Y2lOZTg5MW1hZWh4N0VkZHAyc2ZmMWk2aXpJeEJ4MkpCc1FOU1ZUeStmN2w3?=
 =?utf-8?B?V2J6b24vczBNc25RSW0rMzRjblRPaVRPaGFMc083emZYZDJUNGIvdThoeFF0?=
 =?utf-8?B?ZHQ1Z09Rc0RBWDdrZWkwd1hvUkN3NCtDa0krNFhLditBUnQweDNHTW1tOWNo?=
 =?utf-8?B?YjVMMkNNNXFKWGpjS21oVmRBVlY2ZldlNjZWK0xXWWhZUkNGdk1kNHJjcnZR?=
 =?utf-8?B?aUFUMjMxdW9ZOWU3TzVJSldtUVRqSHZuV3hmQTAwTTlRVTJIZjlOYVZsSGlJ?=
 =?utf-8?B?Yzg1bmp6WWFzL2VyeU8rQnNpYlJxNVcxL3ByREtZWStrUWpBeWwzcE5aNFdW?=
 =?utf-8?B?RHJLS0JzQlRiZmdOVDlVU0JCZmQ4OUl1Tlp5Ti9IZVFlVXJySDZHcVdZd1hN?=
 =?utf-8?B?QXpleVhUdEIxeDQyV2pIWG1SeDJvQjJFTFhmOGU2MjA0U2tGNjNnK1lSTVNM?=
 =?utf-8?B?NG9TUnZMVVRDYUdsYStCQmhVZmJCM1gxcHpnNkNuS3h0QmRTYW9oZDFZOStt?=
 =?utf-8?B?QVFLVGFndktHOGtmRC82Vis4QmxDL2p6QXZHS1RkMjE5alVaWGtsUEtGV2JC?=
 =?utf-8?B?MWdmQlUwclNoR0NSanFUa2hReU9JZkEvSkk1d0tQOVJuaWc1TCtMQTJseVlG?=
 =?utf-8?B?MjVsMVBvYXhKQy9wMUlUdXVyc1FWL1JiV29ndHRnQUpudlh3eWk5MWNNNVpj?=
 =?utf-8?B?Q0dxTUw0dmJxVjJLNk1iY3NSWThqeEJVVFY5b0EwaDNUYjVVcU92STZMNnQr?=
 =?utf-8?B?ejgrRFpWL0ROS2pDNHV3NHN1U2ZITzZqZEpLNXlqKzQvRVYvbHl6N3NINHBl?=
 =?utf-8?B?UUF5SU1RY3pjV2VtV3RoWGNBemhza1g1RW9sckdlY2FyWmZncG5UeFNTTUdH?=
 =?utf-8?B?VUJGenpEVTMyZ29Vc0U0ZGxiTlJYUlgwem0zd0FlVzJQWGpVVXVuSitQNy9v?=
 =?utf-8?B?YVk5L3FOYjN5dHRTOHpDekZONWxFY1pERWltd01rK3o1bFloeDV2MXV0cUwx?=
 =?utf-8?B?eWZhV3lhQW1ocDlxTWhMdjhpMWtadE55aytkRWkrTUZFaXNBazBCNHFtR1ly?=
 =?utf-8?B?cTlRQTJxdzZ2QUFWb2kyMEdBdTJVdzFGNjVaaVpUNnR6ejNlYUIwbmFFRDNn?=
 =?utf-8?B?U2xMSklwQldMSmdCZ1E0bXc4VFNuTDNtQjEzd3drYzVSQmw4eG5rU0JBPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b10cf290-9a60-49b7-5567-08daa3256bfb
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 20:50:34.8671
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR84MB1810
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 20:50:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58240

------LXSWB24CT0R5LJ1XYOZX0QNS2QSV8V
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

X86-64 is right or do you mean arm?

Am 30=2E September 2022 22:39:44 MESZ schrieb Alexander Kanavin <alex=2Eka=
navin@gmail=2Ecom>:
>You might want to try enabling gallium-llvm only for the target mesa:
>
>PACKAGECONFIG:append:x86-64:pn-mesa =3D ' gallium-llvm'
>
>Alex
>
>On Fri, 30 Sept 2022 at 22:24, Edgar Mobile <heideggm@hotmail=2Ecom> wrot=
e:
>>
>> I deleted the whole build directory, recreated it, only added the arm s=
witch in local conf and your changes for mesa=2Einc=2E
>> After a few hours of building core-image-weston it again complains that=
 it tries to copy llcm-config14=2E0=2E6 over itself=2E I don't know what to=
 do anymore=2E
>>
>> ________________________________
>> From: Alexander Kanavin <alex=2Ekanavin@gmail=2Ecom>
>> Sent: Thursday, September 29, 2022 10:46 AM
>> To: PHIL <heideggm@hotmail=2Ecom>
>> Cc: Yocto-mailing-list <yocto@lists=2Eyoctoproject=2Eorg>
>> Subject: Re: [yocto] Changing git url of qemu
>>
>> You need to build mesa, not mesa-native=2E And please show exact change=
s you made=2E
>>
>> Alex
>>
>> On Thu 29=2E Sep 2022 at 12=2E28, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>> Tried in a sifferent machine with wednesday poky master
>>
>> Building mesa-native gives the error
>>
>> cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linu=
x/mesa-native/2_22=2E2=2E0-r0/recipe-sysroot-native/usr/bin/llvm-config14=
=2E0=2E6' and '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_6=
4-linux/mesa-native/2_22=2E2=2E0-r0/recipe-sysroot-native/usr/bin/llvm-conf=
ig14=2E0=2E6' are the same file
>>
>>
>> Am 28=2E September 2022 13:37:05 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>
>> Try latest poky master?
>>
>> Alex
>>
>> On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>>
>>  Mesa build fails=2E It complains that it copies llvm-config14=2E0=2E6 =
to the same file=2E
>>
>>  Am 28=2E September 2022 12:48:04 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>
>>
>>  The following works for me=2E I get
>>
>>  tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-split/mesa-=
vulkan-drivers/usr/lib/libvulkan_intel=2Eso
>>  tmp/work/core2-64-poky-linux/mesa/2_22=2E2=2E0-r0/packages-split/mesa-=
vulkan-drivers/usr/lib/libvulkan_lvp=2Eso
>>
>>  --- a/meta/recipes-graphics/mesa/mesa=2Einc
>>  +++ b/meta/recipes-graphics/mesa/mesa=2Einc
>>  @@ -88,6 +88,7 @@ def strip_comma(s):
>>
>>   PACKAGECONFIG =3D " \
>>          gallium \
>>  +        gallium-llvm \
>>          ${@bb=2Eutils=2Efilter('DISTRO_FEATURES', 'x11 vulkan wayland'=
, d)} \
>>          ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'opengl', 'opengl =
egl
>>  gles gbm virgl', '', d)} \
>>          ${@bb=2Eutils=2Econtains('DISTRO_FEATURES', 'x11 opengl', 'dri=
3', '', d)} \
>>  @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>>  -Ddri3=3Ddisabled, xorgproto libxshmfence"
>>
>>   # Vulkan drivers need dri3 enabled
>>   # amd could be enabled as well but requires gallium-llvm with llvm >=
=3D 3=2E9
>>  -VULKAN_DRIVERS =3D ""
>>  +VULKAN_DRIVERS =3D "swrast"
>>   VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>>   VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>>   VULKAN_DRIVERS:append =3D"${@bb=2Eutils=2Econtains('PACKAGECONFIG',
>>  'freedreno', ',freedreno', '', d)}"
>>
>>  Alex
>>
>>  On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>>
>>
>>   Also vulkan-drivers is empty in meson generated by bitbake=2E If I ad=
d it manually it will complain that llvm is disabled=2E How would I enable =
it?
>>
>>   Am 28=2E September 2022 10:51:26 MESZ schrieb Alexander Kanavin <alex=
=2Ekanavin@gmail=2Ecom>:
>>
>>
>>
>>   I think for software vulkan you need to pass in
>>   -Dvulkan-drivers=3Dswrast when building mesa for the target=2E
>>
>>   Alex
>>
>>   On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail=2Ecom> wrote:
>>
>>
>>
>>
>>    I asked the author so I assume he would have told me=2E Apparently t=
he virglrenderer branch is obsolete=2E
>>
>>    Currently my only changes from poky master are adding vulkan opengl =
x11 to distro features and vulkan-samples vulkan-loader vulkan-tools virglr=
enderer to core image extra install in local=2Econf=2E
>>
>>    I also added virtio-experimental flag to mesa and virglrenderer meso=
n recipes=2E
>>
>>    I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo=2E
>>
>>    What am I missing for Software Mode?
>>
>>    Am 28=2E September 2022 10:29:28 MESZ schrieb Alexander Kanavin <ale=
x=2Ekanavin@gmail=2Ecom>:
>>
>>
>>
>>
>>    I would first check whether any of that work in the branch has meanw=
hile landed upstream=2E The post is from 2021=2E
>>
>>    Have you tried the software Vulkan in the guest?
>>
>>    Alex
>>
>>    On Wed 28=2E Sep 2022 at 10=2E21, PHIL <heideggm@hotmail=2Ecom> wrot=
e:
>>
>>
>>
>>
>>    I try to enable vulkan according to this tutorial
>>
>>    https://www=2Ecollabora=2Ecom/news-and-blog/blog/2021/11/26/venus-on=
-qemu-enabling-new-virtual-vulkan-driver/
>>
>>    According to the author the modified qemu branch is still necessary =
so I want to enable that=2E
>>
>>
>>    Am 28=2E September 2022 10:14:24 MESZ schrieb Alexander Kanavin <ale=
x=2Ekanavin@gmail=2Ecom>:
>>
>>
>>
>>
>>    You need to clarify what you want to do exactly=2E Why can=E2=80=99t=
 you use the existing recipe?
>>
>>    Alex
>>
>>    On Wed 28=2E Sep 2022 at 9=2E58, Edgar Mobile <heideggm@hotmail=2Eco=
m> wrote:
>>
>>
>>
>>
>>    Greetings,
>>
>>    I want to change the git repo url in order to test the Venus driver=
=2E Can someone tell me which variable in which recipe I'd have to set?
>>
>>    Regards
>>    --
>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ges=
endet=2E
>> ________________________________
>>    Links: You receive all messages sent to this group=2E
>>    View/Reply Online (#58196): https://lists=2Eyoctoproject=2Eorg/g/yoc=
to/message/58196
>>    Mute This Topic: https://lists=2Eyoctoproject=2Eorg/mt/93968127/1686=
489
>>    Group Owner: yocto+owner@lists=2Eyoctoproject=2Eorg
>>    Unsubscribe: https://lists=2Eyoctoproject=2Eorg/g/yocto/unsub [alex=
=2Ekanavin@gmail=2Ecom]
>> ________________________________
>>
>>
>>
>>   --
>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gese=
ndet=2E
>>
>>
>>
>>
>>    --
>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ges=
endet=2E
>>
>>
>>
>>   --
>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gese=
ndet=2E
>>
>>
>>  --
>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det=2E
>>
>> --
>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et=2E

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------LXSWB24CT0R5LJ1XYOZX0QNS2QSV8V
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>X86-64 is right or do you mean arm?<br><br><div class=3D"gmail_q=
uote">Am 30. September 2022 22:39:44 MESZ schrieb Alexander Kanavin &lt;ale=
x.kanavin@gmail.com&gt;:<blockquote class=3D"gmail_quote" style=3D"margin: =
0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left:=
 1ex;">
<pre dir=3D"auto" class=3D"k9mail">You might want to try enabling gallium-l=
lvm only for the target mesa:<br><br>PACKAGECONFIG:append:x86-64:pn-mesa =
=3D ' gallium-llvm'<br><br>Alex<br><br>On Fri, 30 Sept 2022 at 22:24, Edgar=
 Mobile &lt;heideggm@hotmail.com&gt; wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #729fcf; p=
adding-left: 1ex;"><br> I deleted the whole build directory, recreated it, =
only added the arm switch in local conf and your changes for mesa.inc.<br> =
After a few hours of building core-image-weston it again complains that it =
tries to copy llcm-config14.0.6 over itself. I don't know what to do anymor=
e.<hr> From: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br> Sent: Thu=
rsday, September 29, 2022 10:46 AM<br> To: PHIL &lt;heideggm@hotmail.com&gt=
;<br> Cc: Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br> Subje=
ct: Re: [yocto] Changing git url of qemu<br><br> You need to build mesa, no=
t mesa-native. And please show exact changes you made.<br><br> Alex<br><br>=
 On Thu 29. Sep 2022 at 12.28, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br>=
<br> Tried in a sifferent machine with wednesday poky master<br><br> Buildi=
ng mesa-native gives the error<br><br> cp: '/media/user/SSD1TB/yoctoqemu/po=
ky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22.2.0-r0/recipe-sysroot=
-native/usr/bin/llvm-config14.0.6' and '/media/user/SSD1TB/yoctoqemu/poky/b=
uild-virgl/tmp/work/x86_64-linux/mesa-native/2_22.2.0-r0/recipe-sysroot-nat=
ive/usr/bin/llvm-config14.0.6' are the same file<br><br><br> Am 28. Septemb=
er 2022 13:37:05 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&=
gt;:<br><br> Try latest poky master?<br><br> Alex<br><br> On Wed, 28 Sept 2=
022 at 13:23, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><br><br>  Mesa bu=
ild fails. It complains that it copies llvm-config14.0.6 to the same file.<=
br><br>  Am 28. September 2022 12:48:04 MESZ schrieb Alexander Kanavin &lt;=
alex.kanavin@gmail.com&gt;:<br><br><br>  The following works for me. I get<=
br><br>  tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-=
vulkan-drivers/usr/lib/libvulkan_intel.so<br>  tmp/work/core2-64-poky-linux=
/mesa/2_22.2.0-r0/packages-split/mesa-vulkan-drivers/usr/lib/libvulkan_lvp.=
so<br><br>  --- a/meta/recipes-graphics/mesa/mesa.inc<br>  +++ b/meta/recip=
es-graphics/mesa/mesa.inc<br>  @@ -88,6 +88,7 @@ def strip_comma(s):<br><br=
>   PACKAGECONFIG =3D &quot; \<br>          gallium \<br>  +        gallium=
-llvm \<br>          ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan wayl=
and', d)} \<br>          ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', =
'opengl egl<br>  gles gbm virgl', '', d)} \<br>          ${@bb.utils.contai=
ns('DISTRO_FEATURES', 'x11 opengl', 'dri3', '', d)} \<br>  @@ -108,7 +109,7=
 @@ PACKAGECONFIG[dri3] =3D &quot;-Ddri3=3Denabled,<br>  -Ddri3=3Ddisabled,=
 xorgproto libxshmfence&quot;<br><br>   # Vulkan drivers need dri3 enabled<=
br>   # amd could be enabled as well but requires gallium-llvm with llvm &g=
t;=3D 3.9<br>  -VULKAN_DRIVERS =3D &quot;&quot;<br>  +VULKAN_DRIVERS =3D &q=
uot;swrast&quot;<br>   VULKAN_DRIVERS:append:x86:class-target =3D &quot;,in=
tel&quot;<br>   VULKAN_DRIVERS:append:x86-64:class-target =3D &quot;,intel&=
quot;<br>   VULKAN_DRIVERS:append =3D&quot;${@bb.utils.contains('PACKAGECON=
FIG',<br>  'freedreno', ',freedreno', '', d)}&quot;<br><br>  Alex<br><br>  =
On Wed, 28 Sept 2022 at 11:49, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br>=
<br><br><br>   Also vulkan-drivers is empty in meson generated by bitbake. =
If I add it manually it will complain that llvm is disabled. How would I en=
able it?<br><br>   Am 28. September 2022 10:51:26 MESZ schrieb Alexander Ka=
navin &lt;alex.kanavin@gmail.com&gt;:<br><br><br><br>   I think for softwar=
e vulkan you need to pass in<br>   -Dvulkan-drivers=3Dswrast when building =
mesa for the target.<br><br>   Alex<br><br>   On Wed, 28 Sept 2022 at 10:44=
, PHIL &lt;heideggm@hotmail.com&gt; wrote:<br><br><br><br><br>    I asked t=
he author so I assume he would have told me. Apparently the virglrenderer b=
ranch is obsolete.<br><br>    Currently my only changes from poky master ar=
e adding vulkan opengl x11 to distro features and vulkan-samples vulkan-loa=
der vulkan-tools virglrenderer to core image extra install in local.conf.<b=
r><br>    I also added virtio-experimental flag to mesa and virglrenderer m=
eson recipes.<br><br>    I still get ERROR_INCOMPATIBLE_DRIVER when running=
 vulkaninfo.<br><br>    What am I missing for Software Mode?<br><br>    Am =
28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin &lt;alex.kanavin=
@gmail.com&gt;:<br><br><br><br><br>    I would first check whether any of t=
hat work in the branch has meanwhile landed upstream. The post is from 2021=
.<br><br>    Have you tried the software Vulkan in the guest?<br><br>    Al=
ex<br><br>    On Wed 28. Sep 2022 at 10.21, PHIL &lt;heideggm@hotmail.com&g=
t; wrote:<br><br><br><br><br>    I try to enable vulkan according to this t=
utorial<br><br>    <a href=3D"https://www.collabora.com/news-and-blog/blog/=
2021/11/26/venus-on-qemu-enabling-new-virtual-vulkan-driver/">https://www.c=
ollabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-enabling-new-virtu=
al-vulkan-driver/</a><br><br>    According to the author the modified qemu =
branch is still necessary so I want to enable that.<br><br><br>    Am 28. S=
eptember 2022 10:14:24 MESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmai=
l.com&gt;:<br><br><br><br><br>    You need to clarify what you want to do e=
xactly. Why can=E2=80=99t you use the existing recipe?<br><br>    Alex<br><=
br>    On Wed 28. Sep 2022 at 9.58, Edgar Mobile &lt;heideggm@hotmail.com&g=
t; wrote:<br><br><br><br><br>    Greetings,<br><br>    I want to change the=
 git repo url in order to test the Venus driver. Can someone tell me which =
variable in which recipe I'd have to set?<br><br>    Regards<br>    --<br> =
   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesende=
t.<hr>    Links: You receive all messages sent to this group.<br>    View/R=
eply Online (#58196): <a href=3D"https://lists.yoctoproject.org/g/yocto/mes=
sage/58196">https://lists.yoctoproject.org/g/yocto/message/58196</a><br>   =
 Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93968127/168=
6489">https://lists.yoctoproject.org/mt/93968127/1686489</a><br>    Group O=
wner: yocto+owner@lists.yoctoproject.org<br>    Unsubscribe: <a href=3D"htt=
ps://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g=
/yocto/unsub</a> [alex.kanavin@gmail.com]<hr>   --<br>   Diese Nachricht wu=
rde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br><br><br><br><br=
>    --<br>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 =
Mail gesendet.<br><br><br><br>   --<br>   Diese Nachricht wurde von meinem =
Android-Ger=C3=A4t mit K-9 Mail gesendet.<br><br><br>  --<br>  Diese Nachri=
cht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br><br> --<b=
r> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesende=
t.<br></blockquote></pre></blockquote></div><div style=3D"white-space: pre-=
wrap"><div class=3D"k9mail-signature">-- <br>Diese Nachricht wurde von mein=
em Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></body></html>=

------LXSWB24CT0R5LJ1XYOZX0QNS2QSV8V--

