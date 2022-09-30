Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF94C433FE
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 20:25:06 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (NAM11-BN8-obe.outbound.protection.outlook.com [40.92.20.10])
 by mx.groups.io with SMTP id smtpd.web12.1925.1664569497002908458
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 13:24:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=Db6X4bXt;
 spf=pass (domain: hotmail.com, ip: 40.92.20.10,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nyEz2XJaotOzWEWrT6snEu0t+XMHQH5XoJTQ4C+X3zMrcROBIvVEUqITMnS5Rr7LDk91w91uScpfpyWw8QdQ01XwTcGDlB71zqBbUBIGvIUsHXb5+aEWjpNkkDHVXgNifFyLbMYt0TvrAaWgUhi+SPWF5ji7IIsMrgiRYR5x8MVVTsp4hqAhnAtd1EkvVyLtz3X3cReIv8GuK8c5OruBKe916N4ZHZfJfDnPtq2iRjkfmo7QdRiLAMlPtCp9LT/KCM+U432e/fK0tntjoaKZxrHciH0l35xrHGnsgMV1EVSwCytpD4SlsDUEXN4ByE3+XTpp6smPxeQVU7ddZBzu1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWJVGdwSBs2QKXfkBfUzFaPuLl7JG1CA6P2/UUS+DDM=;
 b=GBXrcqML7thaiVy1zLnA5dnkSkPkcxvH6FsT+1akn2VsFhsKERKptpJ+r1ibxV4FkS3Gdl6lBtAibgd2O3oI0RbkwFwpJPYqyVm5wy+5fxJY8jUYUFe5eKpAPa7TgKn91dqHhf3SixDLszJ6zeycx3q6m/RBTc0S7qfjs/Zs27PdlqySIXR0YMpO81U+SIaWRfkQ0M/wDF82vFXEzSEBXLH2YC1Ot3Lq8re9+OfYA66qVs6OVgGLOFghow28H33rh/NjvBb9HOf4rsYoXvIAz2A9ntlKrv9uVEOTQSRdQL5IkWXP2Jctm1G+zY7bGDOwvBk2mQaNf5jYZtU0t3HmUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JWJVGdwSBs2QKXfkBfUzFaPuLl7JG1CA6P2/UUS+DDM=;
 b=Db6X4bXt60B3D4BMchkSQRCtOakvZ0AP24YoLtLnFfl+FSGLUwaShMvY08w4t/PN6Lx84WIM/qtr5HwvDoahi+SzI/Bsxsg/uN1BpGkJBNTKrTUnx2+a/EGuRtVxbqgJ5Wo/0evsAbk7WtcnDb6cHLGbrzArtX08OI/oAU0CEXPrWAzZYN1QiOfuWi1IFbM3Aw1vyESil0iVpRKGwecQwCDCe+Y0/I04wDoxcyN3p6vUt/uHZ7UJAB3/qON//hm4s4vu4kfn1MVJXLccDpZmX4IfErgQciZfUGSdFGbh5MFNX0F1gpvDtmHbqWwljOOGgz6Puufh7vIj9I8ymsNXYA==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by DM4PR84MB1808.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:4f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.18; Fri, 30 Sep
 2022 20:24:54 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Fri, 30 Sep 2022
 20:24:53 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Changing git url of qemu
Thread-Topic: [yocto] Changing git url of qemu
Thread-Index: 
 AQHY0xAhusSEff/lx0WfGVKKek9etK30foMAgAAB9ACAAAJBAIAABCMAgAACAACAABBGAIAAEFEAgAAJ5YCAAAPNgIABfxmAgAAFMICAAjLOhQ==
Date: Fri, 30 Sep 2022 20:24:53 +0000
Message-ID: 
 <PH0PR84MB183522C486078708425E2BF5C7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
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
In-Reply-To: 
 <CANNYZj8gA-1K8pGGHNcxAqn4KRXow-tdDh395n9GDskbkTs+OQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [aWHKevLoEpvABGIaNkzIE1tvX6TNe/H7]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|DM4PR84MB1808:EE_
x-ms-office365-filtering-correlation-id: 614e505e-0a20-4ee9-cc72-08daa321d539
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kSX9empE31Y9aYkjdTi7EOPqyKZs0LoqLQUrc8/Ff0i7ZjaSboYGIIMGgAwvy0uLeZvTEM70vhosVrdr147uQa06/JyAJxXkNnCyPRNrZAX8MJcm78f+W//PYdkTBfPElhBqKVH92kkoZ4fWVfDtIa6o7Zt3w76za/XDT5bG2cyXkcEVsuF6XH+YT+tWJk8XDPaxk09YSejLD3R3Qk4HrKHJsw5AsuPl5lhmt7N47/PABypC+mJObz9WBuD6+1HKc67S5G/wledJC4L55nM1gPYa+oKLkbArl/7L+iXuD5tBNv4n9YNI9gkZbfZ/G8PiDssiebrZaI1nBNOxYfA95KfKGr8djR1hxyT8ofcAgEb3+HRmjD41plEzQlIPkrewTZBxOiXPm4tP+WZsjrGBSV4k1olYrMA1NoEycQZTWm8/VXZC4EqORLEj/rIi1Qvy1SI7RrjxW4NfnLZRq15qyA9TxZMBjjS1K+uevbkS3fDXkcGVHnneCvEfNfQND/1TNpET1G91WLZtOsMmuDIYUYQUoO/k+kqYQtGERAjSeghenNVUbVMxu6awZEPeJHWO6p9lRyNMeyD9CIOpx5493123xEocHD/jciBf4G4eEhY31yJUArysrRSsCfmnoiZGRwvOs+ilqVhIy5Db8GMSpqamVOwgikgmSPzLF3kzWNZNK7sGLEQql/HRCEhOlV1YgYt4hnreNDUry0wSMneR524FgsUOHqhIU118Mfk3aDs=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?THpCVvTiCkgSRxAyfMMxhc2VCUzIRu7lbeB7LAQVPnWalhg0cFCCZeFl?=
 =?Windows-1252?Q?7K7xQWUHylc8bZJbnB1WvctpfAqzKYp/IZAaRiHXNzyXq1jNhFMdn84M?=
 =?Windows-1252?Q?WCilFNvgtGoKve6RuCoumA0e9f0jZi7KJhz/WgI5ySOyTUQ0UfmLj9iV?=
 =?Windows-1252?Q?SWWmFcEgkyWpSh8acCdDTrA21Zo5HjQF+FrzgCAON4u9rdtonWZS+Jkj?=
 =?Windows-1252?Q?Xm8oe52lD9K1PtuD0w/ns+qTKyKgmjhqNesP9gUouHJR+JXaJjiTdD+A?=
 =?Windows-1252?Q?+yPvX9NrPbxnkKRw2szDYwpLws1C+umBzCA0U7201BXqSInKEzW3G2Em?=
 =?Windows-1252?Q?T2R4KTSRge3WMFnnXCsKV7fHxItft8ras9uW4JNPkUJMvIGf1hoFBraN?=
 =?Windows-1252?Q?nq7qAtCzmeztN/8Y87in4IWACtxfuAqIHWI+FZWrZbe/qfk1UVmB7AnY?=
 =?Windows-1252?Q?dmF18Eo97vEThKCKk+UEBmrOuNdRJd0eE2wLPs+LVhEqv6FxQiD2EYar?=
 =?Windows-1252?Q?uVKfFGG4uUwWMahYCsuQU33yTMen38DjNOiYrqQb8uSvO2FuqkO4yP6J?=
 =?Windows-1252?Q?OnSVDzwektruWldJeUh2x8aI3MUXaXrQ1J3Tb6kBomufd6LwhMA9NiKr?=
 =?Windows-1252?Q?GJvPkuJTawTVXYB3ytKMguNdOJG66opBlAG1/U7ZBRRp70YwuRTPukRX?=
 =?Windows-1252?Q?7CA/QTCAhUkkzzULqaqPo51Lh3EEbrk5WbEGpOA6cu7O9o6WPJbSbY9h?=
 =?Windows-1252?Q?1SrllQDUDUkSMdCOiFHcFadNRVzjA3DdAcCgm7K8cFyW5w/OkV0fu2vy?=
 =?Windows-1252?Q?2yGa5J1DnhvFigs1vVEGfwJe4zKtgMlTcsp59eFdxYEOCxf+YdfpQpqS?=
 =?Windows-1252?Q?cRVfiGagO1u5YZ5E3PP1+ioypZ0+gM3aH7MX8PVTMqCC2hVSsBioX+Rh?=
 =?Windows-1252?Q?jaTJcqMPhSyCKtP7j/VBMShG+fIYzfIrBwrbFrndnd+P5ripUyHsNhKv?=
 =?Windows-1252?Q?TokC5JI8lLXhWdQthkM7AkpI2Sd6N1fSa1uvBgVRTmrp7HOYRd2osDR9?=
 =?Windows-1252?Q?cp9Gmwxo3dMF+iYqOqyVhBW9v4nzzeJdp1A8MHofZKEPcfB8Rq+7MFQa?=
 =?Windows-1252?Q?yKpquAig8nY5m6LwQD7cnqL3YwHIKdLfuymtTlyjK3UZfF/ENyVqfZK1?=
 =?Windows-1252?Q?IJeCFE8OUOqph/zH4ubIW/VnXoXJbL1zzKk4jlxjlWKHy/nvTse1Lshb?=
 =?Windows-1252?Q?YS6+L2knJvG4yk+AZuyh6iwI0rxB2Ogvyat/aAIAgfOMpU2Gup+wuf02?=
 =?Windows-1252?Q?ZI9cdIUxyTTjVx+fe9tAh3oP7CcElFcgdHHnlBDz+vR3yQMN?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB183522C486078708425E2BF5C7569PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 614e505e-0a20-4ee9-cc72-08daa321d539
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2022 20:24:53.2617
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR84MB1808
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 20:25:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58238

--_000_PH0PR84MB183522C486078708425E2BF5C7569PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I deleted the whole build directory, recreated it, only added the arm switc=
h in local conf and your changes for mesa.inc.
After a few hours of building core-image-weston it again complains that it =
tries to copy llcm-config14.0.6 over itself. I don't know what to do anymor=
e.

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Thursday, September 29, 2022 10:46 AM
To: PHIL <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Changing git url of qemu

You need to build mesa, not mesa-native. And please show exact changes you =
made.

Alex

On Thu 29. Sep 2022 at 12.28, PHIL <heideggm@hotmail.com<mailto:heideggm@ho=
tmail.com>> wrote:
Tried in a sifferent machine with wednesday poky master

Building mesa-native gives the error

cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/me=
sa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6' and =
'/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa-n=
ative/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6' are the =
same file


Am 28. September 2022 13:37:05 MESZ schrieb Alexander Kanavin <alex.kanavin=
@gmail.com<mailto:alex.kanavin@gmail.com>>:

Try latest poky master?

Alex

On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail.com<mailto:heideggm@h=
otmail.com>> wrote:

 Mesa build fails. It complains that it copies llvm-config14.0.6 to the sam=
e file.

 Am 28. September 2022 12:48:04 MESZ schrieb Alexander Kanavin <alex.kanavi=
n@gmail.com<mailto:alex.kanavin@gmail.com>>:

 The following works for me. I get

 tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan-d=
rivers/usr/lib/libvulkan_intel.so
 tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan-d=
rivers/usr/lib/libvulkan_lvp.so

 --- a/meta/recipes-graphics/mesa/mesa.inc
 +++ b/meta/recipes-graphics/mesa/mesa.inc
 @@ -88,6 +88,7 @@ def strip_comma(s):

  PACKAGECONFIG =3D " \
         gallium \
 +        gallium-llvm \
         ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan wayland', d)} \
         ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'opengl egl
 gles gbm virgl', '', d)} \
         ${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'dri3', '', =
d)} \
 @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
 -Ddri3=3Ddisabled, xorgproto libxshmfence"

  # Vulkan drivers need dri3 enabled
  # amd could be enabled as well but requires gallium-llvm with llvm >=3D 3=
.9
 -VULKAN_DRIVERS =3D ""
 +VULKAN_DRIVERS =3D "swrast"
  VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
  VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
  VULKAN_DRIVERS:append =3D"${@bb.utils.contains('PACKAGECONFIG',
 'freedreno', ',freedreno', '', d)}"

 Alex

 On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail.com<mailto:heideggm@=
hotmail.com>> wrote:


  Also vulkan-drivers is empty in meson generated by bitbake. If I add it m=
anually it will complain that llvm is disabled. How would I enable it?

  Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin <alex.kanav=
in@gmail.com<mailto:alex.kanavin@gmail.com>>:


  I think for software vulkan you need to pass in
  -Dvulkan-drivers=3Dswrast when building mesa for the target.

  Alex

  On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail.com<mailto:heideggm=
@hotmail.com>> wrote:



   I asked the author so I assume he would have told me. Apparently the vir=
glrenderer branch is obsolete.

   Currently my only changes from poky master are adding vulkan opengl x11 =
to distro features and vulkan-samples vulkan-loader vulkan-tools virglrende=
rer to core image extra install in local.conf.

   I also added virtio-experimental flag to mesa and virglrenderer meson re=
cipes.

   I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.

   What am I missing for Software Mode?

   Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin <alex.kana=
vin@gmail.com<mailto:alex.kanavin@gmail.com>>:



   I would first check whether any of that work in the branch has meanwhile=
 landed upstream. The post is from 2021.

   Have you tried the software Vulkan in the guest?

   Alex

   On Wed 28. Sep 2022 at 10.21, PHIL <heideggm@hotmail.com<mailto:heideggm=
@hotmail.com>> wrote:



   I try to enable vulkan according to this tutorial

   https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-en=
abling-new-virtual-vulkan-driver/

   According to the author the modified qemu branch is still necessary so I=
 want to enable that.


   Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin <alex.kana=
vin@gmail.com<mailto:alex.kanavin@gmail.com>>:



   You need to clarify what you want to do exactly. Why can=92t you use the=
 existing recipe?

   Alex

   On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail.com<mailto:h=
eideggm@hotmail.com>> wrote:



   Greetings,

   I want to change the git repo url in order to test the Venus driver. Can=
 someone tell me which variable in which recipe I'd have to set?

   Regards
   --
   Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 Mail gesendet.
________________________________
   Links: You receive all messages sent to this group.
   View/Reply Online (#58196): https://lists.yoctoproject.org/g/yocto/messa=
ge/58196
   Mute This Topic: https://lists.yoctoproject.org/mt/93968127/1686489
   Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@lis=
ts.yoctoproject.org>
   Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@=
gmail.com<mailto:alex.kanavin@gmail.com>]
________________________________


  --
  Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 Mail gesendet.



   --
   Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 Mail gesendet.


  --
  Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 Mail gesendet.

 --
 Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 Mail gesendet.

--
Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 Mail gesendet.

--_000_PH0PR84MB183522C486078708425E2BF5C7569PH0PR84MB1835NAMP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I deleted the whole build directory, recreated it, only added the arm switc=
h in local conf and your changes for mesa.inc.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
After a few hours of building core-image-weston it again complains that it =
tries to copy llcm-config14.0.6 over itself. I don't know what to do anymor=
e.<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Alexander Kanavin &=
lt;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> Thursday, September 29, 2022 10:46 AM<br>
<b>To:</b> PHIL &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Changing git url of qemu</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">You need to build mesa, not mesa-native. And please show =
exact changes you made.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu 29. Sep 2022 at 12.28, PHIL =
&lt;<a href=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable">hei=
deggm@hotmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left-width:1px; border-left-style:solid; padding-left:1ex; border-left-c=
olor:rgb(204,204,204)">
<div>Tried in a sifferent machine with wednesday poky master<br>
<br>
Building mesa-native gives the error<br>
<br>
cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/me=
sa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6' and =
'/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa-n=
ative/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6'
 are the same file</div>
<div><br>
<br>
<div class=3D"x_gmail_quote">Am 28. September 2022 13:37:05 MESZ schrieb Al=
exander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" data-auth=3D"=
NotApplicable">alex.kanavin@gmail.com</a>&gt;:
<blockquote class=3D"x_gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex; bord=
er-left-width:1px; border-left-style:solid; padding-left:1ex; border-left-c=
olor:rgb(204,204,204)">
<pre dir=3D"auto" style=3D"font-family:monospace">Try latest poky master?<b=
r><br>Alex<br><br>On Wed, 28 Sept 2022 at 13:23, PHIL &lt;<a href=3D"mailto=
:heideggm@hotmail.com" data-auth=3D"NotApplicable" style=3D"font-family:mon=
ospace">heideggm@hotmail.com</a>&gt; wrote:<br><blockquote class=3D"x_gmail=
_quote" style=3D"margin:0pt 0pt 1ex 0.8ex; border-left-width:1px; border-le=
ft-style:solid; padding-left:1ex; font-family:monospace; border-left-color:=
rgb(114,159,207)"><br> Mesa build fails. It complains that it copies llvm-c=
onfig14.0.6 to the same file.<br><br> Am 28. September 2022 12:48:04 MESZ s=
chrieb Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" data=
-auth=3D"NotApplicable" style=3D"font-family:monospace">alex.kanavin@gmail.=
com</a>&gt;:<br><blockquote class=3D"x_gmail_quote" style=3D"margin:0pt 0pt=
 1ex 0.8ex; border-left-width:1px; border-left-style:solid; padding-left:1e=
x; font-family:monospace; border-left-color:rgb(173,127,168)"><br> The foll=
owing works for me. I get<br><br> tmp/work/core2-64-poky-linux/mesa/2_22.2.=
0-r0/packages-split/mesa-vulkan-drivers/usr/lib/libvulkan_intel.so<br> tmp/=
work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan-driver=
s/usr/lib/libvulkan_lvp.so<br><br> --- a/meta/recipes-graphics/mesa/mesa.in=
c<br> +++ b/meta/recipes-graphics/mesa/mesa.inc<br> @@ -88,6 +88,7 @@ def s=
trip_comma(s):<br><br>  PACKAGECONFIG =3D &quot; \<br>         gallium \<br=
> +        gallium-llvm \<br>         ${@bb.utils.filter('DISTRO_FEATURES',=
 'x11 vulkan wayland', d)} \<br>         ${@bb.utils.contains('DISTRO_FEATU=
RES', 'opengl', 'opengl egl<br> gles gbm virgl', '', d)} \<br>         ${@b=
b.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'dri3', '', d)} \<br> @@ =
-108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D &quot;-Ddri3=3Denabled,<br> -Ddri3=
=3Ddisabled, xorgproto libxshmfence&quot;<br><br>  # Vulkan drivers need dr=
i3 enabled<br>  # amd could be enabled as well but requires gallium-llvm wi=
th llvm &gt;=3D 3.9<br> -VULKAN_DRIVERS =3D &quot;&quot;<br> +VULKAN_DRIVER=
S =3D &quot;swrast&quot;<br>  VULKAN_DRIVERS:append:x86:class-target =3D &q=
uot;,intel&quot;<br>  VULKAN_DRIVERS:append:x86-64:class-target =3D &quot;,=
intel&quot;<br>  VULKAN_DRIVERS:append =3D&quot;${@bb.utils.contains('PACKA=
GECONFIG',<br> 'freedreno', ',freedreno', '', d)}&quot;<br><br> Alex<br><br=
> On Wed, 28 Sept 2022 at 11:49, PHIL &lt;<a href=3D"mailto:heideggm@hotmai=
l.com" data-auth=3D"NotApplicable" style=3D"font-family:monospace">heideggm=
@hotmail.com</a>&gt; wrote:<br><blockquote class=3D"x_gmail_quote" style=3D=
"margin:0pt 0pt 1ex 0.8ex; border-left-width:1px; border-left-style:solid; =
padding-left:1ex; font-family:monospace; border-left-color:rgb(138,226,52)"=
><br><br>  Also vulkan-drivers is empty in meson generated by bitbake. If I=
 add it manually it will complain that llvm is disabled. How would I enable=
 it?<br><br>  Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin=
 &lt;<a href=3D"mailto:alex.kanavin@gmail.com" data-auth=3D"NotApplicable" =
style=3D"font-family:monospace">alex.kanavin@gmail.com</a>&gt;:<br><blockqu=
ote class=3D"x_gmail_quote" style=3D"margin:0pt 0pt 1ex 0.8ex; border-left-=
width:1px; border-left-style:solid; padding-left:1ex; font-family:monospace=
; border-left-color:rgb(252,175,62)"><br><br>  I think for software vulkan =
you need to pass in<br>  -Dvulkan-drivers=3Dswrast when building mesa for t=
he target.<br><br>  Alex<br><br>  On Wed, 28 Sept 2022 at 10:44, PHIL &lt;<=
a href=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable" style=3D=
"font-family:monospace">heideggm@hotmail.com</a>&gt; wrote:<br><blockquote =
class=3D"x_gmail_quote" style=3D"margin:0pt 0pt 1ex 0.8ex; border-left-widt=
h:1px; border-left-style:solid; padding-left:1ex; font-family:monospace; bo=
rder-left-color:rgb(233,185,110)"><br><br><br>   I asked the author so I as=
sume he would have told me. Apparently the virglrenderer branch is obsolete=
.<br><br>   Currently my only changes from poky master are adding vulkan op=
engl x11 to distro features and vulkan-samples vulkan-loader vulkan-tools v=
irglrenderer to core image extra install in local.conf.<br><br>   I also ad=
ded virtio-experimental flag to mesa and virglrenderer meson recipes.<br><b=
r>   I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.<br><br>=
   What am I missing for Software Mode?<br><br>   Am 28. September 2022 10:=
29:28 MESZ schrieb Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gma=
il.com" data-auth=3D"NotApplicable" style=3D"font-family:monospace">alex.ka=
navin@gmail.com</a>&gt;:<br><blockquote class=3D"x_gmail_quote" style=3D"ma=
rgin:0pt 0pt 1ex 0.8ex; border-left-width:1px; border-left-style:solid; pad=
ding-left:1ex; font-family:monospace; border-left-color:rgb(204,204,204)"><=
br><br><br>   I would first check whether any of that work in the branch ha=
s meanwhile landed upstream. The post is from 2021.<br><br>   Have you trie=
d the software Vulkan in the guest?<br><br>   Alex<br><br>   On Wed 28. Sep=
 2022 at 10.21, PHIL &lt;<a href=3D"mailto:heideggm@hotmail.com" data-auth=
=3D"NotApplicable" style=3D"font-family:monospace">heideggm@hotmail.com</a>=
&gt; wrote:<br><blockquote class=3D"x_gmail_quote" style=3D"margin:0pt 0pt =
1ex 0.8ex; border-left-width:1px; border-left-style:solid; padding-left:1ex=
; font-family:monospace; border-left-color:rgb(204,204,204)"><br><br><br>  =
 I try to enable vulkan according to this tutorial<br><br>   <a href=3D"htt=
ps://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-enabling=
-new-virtual-vulkan-driver/" data-auth=3D"NotApplicable" style=3D"font-fami=
ly:monospace">https://www.collabora.com/news-and-blog/blog/2021/11/26/venus=
-on-qemu-enabling-new-virtual-vulkan-driver/</a><br><br>   According to the=
 author the modified qemu branch is still necessary so I want to enable tha=
t.<br><br><br>   Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kana=
vin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" data-auth=3D"NotApplicabl=
e" style=3D"font-family:monospace">alex.kanavin@gmail.com</a>&gt;:<br><bloc=
kquote class=3D"x_gmail_quote" style=3D"margin:0pt 0pt 1ex 0.8ex; border-le=
ft-width:1px; border-left-style:solid; padding-left:1ex; font-family:monosp=
ace; border-left-color:rgb(204,204,204)"><br><br><br>   You need to clarify=
 what you want to do exactly. Why can=92t you use the existing recipe?<br><=
br>   Alex<br><br>   On Wed 28. Sep 2022 at 9.58, Edgar Mobile &lt;<a href=
=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable" style=3D"font-=
family:monospace">heideggm@hotmail.com</a>&gt; wrote:<br><blockquote class=
=3D"x_gmail_quote" style=3D"margin:0pt 0pt 1ex 0.8ex; border-left-width:1px=
; border-left-style:solid; padding-left:1ex; font-family:monospace; border-=
left-color:rgb(204,204,204)"><br><br><br>   Greetings,<br><br>   I want to =
change the git repo url in order to test the Venus driver. Can someone tell=
 me which variable in which recipe I'd have to set?<br><br>   Regards<br>  =
 --<br>   Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 Mail ges=
endet.<hr style=3D"font-family:monospace">   Links: You receive all message=
s sent to this group.<br>   View/Reply Online (#58196): <a href=3D"https://=
lists.yoctoproject.org/g/yocto/message/58196" data-auth=3D"NotApplicable" s=
tyle=3D"font-family:monospace">https://lists.yoctoproject.org/g/yocto/messa=
ge/58196</a><br>   Mute This Topic: <a href=3D"https://lists.yoctoproject.o=
rg/mt/93968127/1686489" data-auth=3D"NotApplicable" style=3D"font-family:mo=
nospace">https://lists.yoctoproject.org/mt/93968127/1686489</a><br>   Group=
 Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" data-auth=
=3D"NotApplicable" style=3D"font-family:monospace">yocto+owner@lists.yoctop=
roject.org</a><br>   Unsubscribe: <a href=3D"https://lists.yoctoproject.org=
/g/yocto/unsub" data-auth=3D"NotApplicable" style=3D"font-family:monospace"=
>https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.k=
anavin@gmail.com" data-auth=3D"NotApplicable" style=3D"font-family:monospac=
e">alex.kanavin@gmail.com</a>]<hr style=3D"font-family:monospace"></blockqu=
ote></blockquote><br><br>  --<br>  Diese Nachricht wurde von meinem Android=
-Ger=E4t mit K-9 Mail gesendet.<br></blockquote></blockquote><br><br><br>  =
 --<br>   Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 Mail ges=
endet.<br></blockquote></blockquote><br><br>  --<br>  Diese Nachricht wurde=
 von meinem Android-Ger=E4t mit K-9 Mail gesendet.<br></blockquote></blockq=
uote><br> --<br> Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 M=
ail gesendet.<br></blockquote></pre>
</blockquote>
</div>
<div style=3D"white-space:pre-wrap">
<div>-- <br>
Diese Nachricht wurde von meinem Android-Ger=E4t mit K-9 Mail gesendet.</di=
v>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_PH0PR84MB183522C486078708425E2BF5C7569PH0PR84MB1835NAMP_--

