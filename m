Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD8DC433FE
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 20:54:37 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (NAM02-SN1-obe.outbound.protection.outlook.com [40.92.44.91])
 by mx.groups.io with SMTP id smtpd.web09.289.1664571272625724062
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 13:54:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=FnVn1oRF;
 spf=pass (domain: hotmail.com, ip: 40.92.44.91,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A2a4XjDRX9zNcSjb8WZpTSFzrgv6I2pFzdQhGaSONikZ4JQP5Ipqhq3nDVfX/82KQ0A9CslpBn8RhCMNnXehGo9IERpYVdinB57Kn494g6h+SLD0FislU0tvJhb7TM/FZ5pZu9rPkaZMfUj3/vpT/exRUKGi2kcV8lQIIe1YRC6Ou9KvB68qP8H/utHpNTOTiWfICyw/u8HN69RbChS2skCNiJNcWp/s20W/ses4tIGl2pIn3/Cwrp+kiv9zjZWxPE9ay92e1A0lLhG6kkBnRDTIUjSP4Zqc3VmR29eb+KkQExol7iCbOGvYVd7TO+SDT+VaH6SBETQ5XONPT2/QGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mIuuBi4K1nbMUQsw/glfrJY2cO4OdMe1d8V6pQugfTM=;
 b=aXwRrKUMP9SDmMALLnSAieADwRvC/cs1OklD/t8GLH96wK/UtTbc224VuR+UtxJ2N5smhcqgdiCLmUrKxTL497HJYsMnbxpyk8NRb5qt8bEg5fbnp7BNcqoK7TR02AascaQ0ZP+43D88VVhoIAEXDjb1i7hCO0iwT3zGbfVOrLr8P0J3LR6aLGLGvN324GGsYw77ewvn3b3a+MKarHDSizfDZQJwlZ/HaOduR4g8cGm0dLML3J7gRvAGol6u3JFvjKYJ6hB83mlkLrQelTezpHfdvoZAhfL3HJ+x61VUF5+SVg4hWNWrLjDA+0xzlYZpQp8Dm411m72KkEYiEqk8YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mIuuBi4K1nbMUQsw/glfrJY2cO4OdMe1d8V6pQugfTM=;
 b=FnVn1oRFAqm/0oG/hfk2nXP6NLe3GshH8/bli9aKUFv3bCmJ1tvMx4WTsA9dKyqXurBKIRQpXKEDzU31aPvmQGYE5jS1rY03qjWzJPhCFQQMqgkuGGtWcSkLkdHxbsKczVlo5JQBxN+q8DS92vyyuzpKR+rukO5zdEk/4Wqk8vTvb4LJ6ZmgFFaVC5Re56rE/Rs01rNwaNMzJQo3Yfjheo7wzNOcjibrt5Sg1u3f9GSLTFOPcP7PikdU6DDCZxEz8bVS4EbW5b0j5cy035Ca8NL3Outvtq2Cd0VdP+WUEXAQSUq6I8Gis6E92pSmQrBZtRR2z8C7AVQmHti6wqmcEw==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH0PR84MB1810.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:161::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Fri, 30 Sep
 2022 20:54:30 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::3a10:f0a6:51fa:ae01%5]) with mapi id 15.20.5676.017; Fri, 30 Sep 2022
 20:54:30 +0000
Date: Fri, 30 Sep 2022 22:54:25 +0200
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
 <PH0PR84MB1835BF6BBBCD6568AD44B65EC7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----9PFO12W9YBAKBOK3EU7WYACM68N8H1
Content-Transfer-Encoding: 7bit
X-TMN: [dAYRnecgoCyvOqI2JvnDvQUXy/074J5u]
X-ClientProxiedBy: FR3P281CA0083.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::21) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <7E3734F5-5256-42F9-9904-D329BD7CD516@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|PH0PR84MB1810:EE_
X-MS-Office365-Filtering-Correlation-Id: 001eb843-d133-4dc6-cc3e-08daa325f8aa
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9rntHOCQMGXi1RK5Wa7BgjMJtLp3iybP4e/7gcsoLOt35c/OQPZiEPHR7VbZl3mHvUXDQEjWxJs5TZ4pxk2keeCkx8ez+Hw9mfp6fFGW8gXHLr+EmLn78tIJom1vG461vXAD4qnAROs2ttf1K1ccLvhpB4b9UgFYKgLktaTZPO2KgQj+qrQGu2gVqqxcomHbqogJJOI4SICjOpVmPMczy8fFlpJCj/vcLs+Sio21siAI+Vrrcn46B/aUdHILSY7vz0+Jz0RZNv4UokDF/G5FjbkfOu8NBUn47ixkqbJ+J6xtmPrB109znoWCEu8/tmMJv+0vKheR0ef2jXGpcJq3O2VpSLhNeQJ6IS6cio/lj+7rDRrfkOJFxgPvHQqjDflKQJlYKolbGe8QrFW4V1s11Pnlt3WTxkq9dLI+J3cy+fwY0vKYGcLQMY3LaOPdRUjNv6uwX69MSigkMpK+k9PSNxoWDHXOUU7cKHsoa04lvfVznbqzKND/EVGZeDxw1juyUpOH+b1+XF2hxr9DJLdiVAYyE3fEMxLNpuDXwhIz6rwt7N0VY1v8jtGlOU694Qi4tsib6G2QSUmlLZRMZScFYk+gfZBtPiNEHlHm38mSqZtXi1KD6DlSrOSqTtrqiFtDowntmT2W9f4zxonYGZgE47BEtHOUkQtYa1/YupYNMMstZNgosm76pzotS5lJB+4rM8mZ36eFNoWKLeyCJOkXtheCj6lNjM5zlTZ4CdgVl7U=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SXZHdnJHeGlOTGlLViszUXdPblQreE0rOGJhYzRGWnhLYlUzbzJieXRGZElE?=
 =?utf-8?B?aFkvakRzTjAzNXpGNjV1eDZGbTdHRlNxRytRSG5qRDRNKzFXdGd6UlJlbFQ4?=
 =?utf-8?B?ck12UDh2WjNOMnJoM3lZVVZhbFk3L2pkK1VwVUN3QnE4ZGdEUTlvbGVKZFBI?=
 =?utf-8?B?TG5LMFVINGJXMjBEQmQvT1czQ3hsNTBvNUdmUUVOdjlLTzZjVnoySHE4TzBL?=
 =?utf-8?B?K3NtTGlGNStUc2NPOElCZ293M3pTYkZRZHJkbENpc016eFYwTjNSSUNIclNY?=
 =?utf-8?B?M29rWlhmOVZlNkhteDNZVEp2WWZIbzlQZHNnVnFzR255cGRZc1owazdGZ1VW?=
 =?utf-8?B?ZlFzV0M4RmdLVVBsejBuVGIxNkk2TjU3VnUyclFvaS8zZXJySGF4QnpVbjdq?=
 =?utf-8?B?Z2hmbXRQbUdkQlpPbmkxMENIMkpaZ2xPS0xDeHZkSm5LU1l2NnAzdjI5N3RC?=
 =?utf-8?B?c2l3WW5mWis3dTVPaU5oR3R1Q1FUVjZTNW9QLy93WEd6RmpZWFVJR21QWlNH?=
 =?utf-8?B?RVdDeDJkOW1QQTM0SlRpLzdjNDlnU1JTam9ScUo1eWkyVkp5Wmt0RG5IVEZm?=
 =?utf-8?B?OEJWQkoxY25YQzN3T09STVJhaExFby8xUW5WTWVHZ3l5RXMzT3FXRXhyU0dm?=
 =?utf-8?B?QWZGeG0vbjRDaGx0UFVPQ1Y3Skp2WGJJYjUyVkwwVGJsMHZPa0RHaDNEZmpk?=
 =?utf-8?B?S1ZwUnRwMTRaaDVDMnRDczErbTlRd2h3ZGdhV1JpVDBUNG9NdW4yVnZhS3l4?=
 =?utf-8?B?NDczUncxQnpMbm92NStnaDluYW5PdHZ6WmtBNmFFSSt2dlJGZzl6b0NTMVJ3?=
 =?utf-8?B?akNNM2dyRTZENisrOWhDZGdXN0dNNTNrYTF2ZHlWL0xDNDVhV3dURDZmNlFq?=
 =?utf-8?B?NmF0ZmNxRDV4RUJSUmk3V0U1S1hjWVNiNkF3VzdIbVVRZUVBWWNvT0RQdHdu?=
 =?utf-8?B?QlVPemk4RnRYOVp3VUFsM0Q2bnVRRGx0WVVzVmdEeGpwN251cXBjRGgrOXZp?=
 =?utf-8?B?Y2wrNWV1ZlpQTXRUOWVzRzUyM2pwV25JejhBd2pSRU1yMWhBN2JZUmVDSElP?=
 =?utf-8?B?Sk5aU0VlOW5Xc3NMUTUxRnkwUkxVWGFEaFFYekRNSjk0ejU5YkMxc0VZbWcr?=
 =?utf-8?B?UkhlR3A3dXVBUUVNcENPVkVtTDdLSXRtdjh6S05PWjFoV0JjcGE5YlJHcWFM?=
 =?utf-8?B?ZmZHSDYvM2wvdkZpdGUyQmo0a2JXNmw4MkcwSllwL3d3WW9odFhrbXhqVyth?=
 =?utf-8?B?cWc1VCtPdXB6ZFlpL0RXcm8yUlFiQzdoNzh2bDFYY0dKQVhZTm1FRjZkeTZS?=
 =?utf-8?B?cTQvLzN2QWFhUE9SaVJwQ3hLdG53UTJxdzJPNit4NGIzOHRwNXN2L0JWdkZ0?=
 =?utf-8?B?amQvV0lUdVZSQ0xiZmFYWG9sRHlsSHAxOWs4anI1SlNYeHlTL3BqYjh0YTFM?=
 =?utf-8?B?WDdSL3lrMnhQQyt6KzBvbUpuYmtiTlhQUnF2T3ZvbXlYSWRtNXJmdW5FdXlo?=
 =?utf-8?B?dTMzODEwS1Q4VEFBa3ArNmNzVkJlemVYK2QxVW5HbmgxblA1d041ZEgvdmtQ?=
 =?utf-8?B?L1hsNnM0ZzFvK3VjeDRLZys5ZlNaMHpwVFFsblVZNjFHeVRpb0ticGUzQjBU?=
 =?utf-8?B?V2lCaTBoYVdOT0owRGt6SU9hZENnV1djTmxVS0dLVkpOcVVaUmJjWEhTUms2?=
 =?utf-8?B?NHFiUlBXdTMvbjRlTUpIVC9OY1g3TzdzSGQ2OGtaTmY3emE4c2gxZ1R3PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 001eb843-d133-4dc6-cc3e-08daa325f8aa
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 20:54:30.8812
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR84MB1810
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 20:54:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58242

------9PFO12W9YBAKBOK3EU7WYACM68N8H1
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I added your line to mesa=2Einc now it complains over llvm disabled again=
=2E

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
------9PFO12W9YBAKBOK3EU7WYACM68N8H1
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body>I added your line to mesa.inc now it complains over llvm disable=
d again.<br><br><div class=3D"gmail_quote">Am 30. September 2022 22:39:44 M=
ESZ schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px so=
lid rgb(204, 204, 204); padding-left: 1ex;">
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

------9PFO12W9YBAKBOK3EU7WYACM68N8H1--

