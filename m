Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9107C54EE9
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 14:40:58 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (NAM04-BN8-obe.outbound.protection.outlook.com [40.92.47.84])
 by mx.groups.io with SMTP id smtpd.web08.20768.1663598435422263612
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 07:40:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=JwcCb401;
 spf=pass (domain: hotmail.com, ip: 40.92.47.84,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GTnbaFNa2WN5u39tD1VWmjl4fug2f4NJVzCOQt5x3+56Kt3iFIQ/IKK5PmgxuU9Z9M4Yufhkv67vJ7QWhgAcmETR8S7wg/w2c4D1Nb916nkZ3Vkzha5MjMFtfbYr144L2DVDbDtYK/T2JRX97PvxL7ev8lN8IC8dsDPFGh8lhNQ7qHIEqECNMPrkGDLkyjBudcO+9ZiTzbI43j+3ntWz5ihnQYYyrbQ7NSm6Sbw490fdUrsC2y7L46o4u4iNkA65Ebitl1j0ne9UzQQcLLGy8eQGVx8gttDYA5o65aPEmS4F/eGN0+KtkTxVZ6Zc/6w1Vj3obepmeuIPX/P0D1uN2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mSB16EM8oxPA+9GFTdOqQvv/Uv9U0cFQMUFz88jnAbk=;
 b=ZN2WvLK5FLsIFj2B6Dj9SrEyB7lYoUigcgtCNp7WVCrrra8Wh2yH4CCYIf0I6V1dwwLg9GsSnBHn64AjPhKguUuZXlGsS2kp+wBK4o6kpZnT4oDp3lt/MpObbXc4XQaD/3aobXfbJ3I4Z7rGQvQHunQatEsTKTYXAejnTQldZ2HFIrvMOwincy1oapuO67f+TUt3kuFyTeUHk7+X0uQ0U/vuC3LYHJqAPrXQpuq4qBq4jZznb7ExwBhEecn0hblklcaS7dFavl0kDfOwsbP7TPsk3m1AnS6w4BzrBnhg+N2on0d9Hidv8KBCdJT+ycRtHZ0b6H3KszhX1EZlN1RqRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mSB16EM8oxPA+9GFTdOqQvv/Uv9U0cFQMUFz88jnAbk=;
 b=JwcCb401zTrKjvFJQWvKD02U4xOIGivF1y0j+yHIHygCmK8D722TF+Jh1BFl/UhgXpWzT5KwlQyY0HW7pI+jhdsI+8T9/IW966+IxfZUniwRZoQ2qdSl8yRV/t/a7uBN2IdvXm1p9KMGXFa2tUt8DD+nS31MWb27Z3DBamA0sZHnP1eF73TaeHLtGH31tDXvjZeMN8fONC8tylpFQHIRDR87WbfMIms44xvF3mp6qBsXX3ajghiaDa+lT6dUmDjZFKEjIHtikQLf26jJ7LBNMXrxZDseEYd4G2k+kkhOWoy0tN+UkTJlkxmZxAmJM2Z11ncIlBh5PtjGoF/4uj2KXw==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by SJ0PR84MB1412.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:432::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Mon, 19 Sep
 2022 14:40:33 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5632.018; Mon, 19 Sep 2022
 14:40:33 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
Thread-Topic: [yocto] Adding Vulkan to core-image-weston
Thread-Index: 
 AQHYycEskKLcduGixUqgdEVWou0Ata3h+FKAgABURlCAAP7uAIADFZtOgAAOLYCAAEOZXIAAEcYAgAAB7hmAAAvIAIAAAptVgAAB2ACAAAEYXw==
Date: Mon, 19 Sep 2022 14:40:32 +0000
Message-ID: 
 <PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
 <SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
 <PH0PR84MB1835D30B90E3ED9ADADA471BC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8diBFzwNe_veJG-Vx9cam0u=-uG6O1c=gSL9J9kO6NEg@mail.gmail.com>
 <PH0PR84MB183555F695A0E7C8818C14E5C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9oFKPYa63AiH4tDJ8Jku0826ySM22uXxxq=vOwbbD+vA@mail.gmail.com>
 <PH0PR84MB1835788AFD16FEB8E4A15790C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ANJ_EnvBgi+mZH52kr5rxyhBbBWEDoaOFPR9MDLDgZg@mail.gmail.com>
 <PH0PR84MB183571245531C6D271BD5A90C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-rLXUAXn_BNYCM8bjeeWVCWU3YYFvnr5bagw7e0V8Akw@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-rLXUAXn_BNYCM8bjeeWVCWU3YYFvnr5bagw7e0V8Akw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [IlTlPGR6VI7wbSUlMiX7GuMouPlC5m+a]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|SJ0PR84MB1412:EE_
x-ms-office365-filtering-correlation-id: 76bd5367-1881-478c-59b8-08da9a4ce838
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 QClJ3CUuRG8DOmMq/1tMokHfbc8BZjuDVt08i2qZFd5v/IksnTcjZWjMyxU0iSMdBtMDE9M1oDyEcSdOGXDIdI6dQdlYF4LAr9nvT7yQkgZHGtnH7xoowAhPdzmYUWZl9tSK8+SvEd4pFUMkCybQSXOYHWP4VyWSgIUTP+TefCzqcSInwesVrKV1sL7kuxhbLLDyWxiqyArQGM8t4eYSlR2v7rsWF68FwTV/ZhRQWfJcDke+GpSYsSRf60loEeZ0gJx5uC3CCfK08UtZTO7bJAB0BUwKmJU72taCBVrWi7Ii7EndUtqKCOaAKgESIMd0JdKttoD38+FiDj9fJqHdFh+olzw0dBXU88Y558ECof7AMGSSfSvSo94NwpvEMvq+Kv+t1u6wwAKoNX4hkxxvGz7nqu3CI7RgA8kJ+VEPu8v4wWIllCP31GuPzriGhiGejRKKuCTsXE71WVn6CM9Ineem0GD1J/929QRECIqi5C3oZyrkgGkV17ewrLiU6TC3Pg8vDE4g4jDSUu5fM+Q9nwqvzSAan3x+VKTyybGw8bHWHJFmva0rjrSBsR3hc+ZoEvY8ohmr3ixKpWHbQiZf5MxZH5HUvJ+HSDKFtwV5NVcQgsmEnK+aUkoXW4pmtCZlUvP8NNXM7/B+rjrAFmCdp5kZvVxmefLxckoDNeIblGs6s8FESsJQSzNa7y2XFlc0
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?cSg2hkQIg9g+XC0Xr07zPoSzv2ZasZGCCkcZHVb5cpZh+PBqeUDNuUZu?=
 =?Windows-1252?Q?P2OwrfApPvc4CO8OcyuRDi9G0uo4Bs1szwcFoGvarPUfYbxLlkeXR1j0?=
 =?Windows-1252?Q?3GAUeqH1t3YgHmw+Qz3ErnBFisuoYMJyH0BaSoi15WkwDS/b/Ap6EeH+?=
 =?Windows-1252?Q?izXQkn1t4z+lS+fcYhIZTKy61T6hC4O6u6oCVLwH6YhrsRZ1bOzyI1h/?=
 =?Windows-1252?Q?Ujd+R8D0OcIncms5emMYEp441OCS/D3hxJPKTYglcHBB/lQozjQKD4iD?=
 =?Windows-1252?Q?f7AziG8BrhDDCkrXg9g8YJGQeT+WHw+95Ql7uUpFMZsS5NdMV0fQk0DC?=
 =?Windows-1252?Q?qx8eemr4c4Ya476ajoAVlEDOK2BS6vz2PhgW9Isig+1JUFgSi1klgFuI?=
 =?Windows-1252?Q?p9pSEGyS+MIc+rY9PymsVZ11nwOTeuUA36E5kbSiBp8jeJ21tPtY3kYy?=
 =?Windows-1252?Q?hPHD+9VPABHsHZMlAhUn+keykjGNsfH3z1kthIVzXghYq3HIzjH7jAjg?=
 =?Windows-1252?Q?s7eZriWhWFo1J6PA7fAXvpVlH4OK9L0KvAqXF6eXjpLmQ4brBSLCb2YP?=
 =?Windows-1252?Q?YKjgPXOUKFIUdPnETvppYWTFGA3EO6gaVWQRQ9xwjrWE3gX0ypmFbXc6?=
 =?Windows-1252?Q?H47V6kmxuTq9wraBwsM/wHQNW/Pq5trUGb31jvXlS76H7Ede/JmqyYUa?=
 =?Windows-1252?Q?sPiSseHKN8flFGJlkNkL/1a92skde3jvI3b3j5TGJOXtBVz6vi5Dp2jf?=
 =?Windows-1252?Q?JNbI9vR+2KxLDxRDvpPMSJxGTVGEmq5ksHifRc1TqZh8oPpWn9F0ucIG?=
 =?Windows-1252?Q?AbIVONUxwmKSYcmOiI5wIuJDkWiedpEGoWNRAjtS30EmgB1eQs/gSL67?=
 =?Windows-1252?Q?1uV++jaYIBd9ZXUJii8+3K7ebGVS+CrVMIpATk5/zb/+Hlj2s7axJnY0?=
 =?Windows-1252?Q?ocondg5WBaBJb06CBWKvU49hYxPfqyjZDwYvdCL7Ay3Sv+BekuQba+bj?=
 =?Windows-1252?Q?TSvxGG8O04oIFu2GbjkTsqfZdU6CkUoFs4FSmXDWFbnBOsz2UyMVzqKH?=
 =?Windows-1252?Q?QDQ/WVNDQVn3V+RtZPHJU3g6TBZkvrlu7Yqm870dpWZwz9TLAiTJzsdA?=
 =?Windows-1252?Q?C0nuCy0lzUanttbgYeMizOjmTvfWN1tyqT3IbUzF5KnvSD1x8o1RBIYx?=
 =?Windows-1252?Q?ZcZBUeVW9uMfR9ubXKgBuKqPkKLh9Qbp3v3EJYwkiBNXXk9GEvHt6p6E?=
 =?Windows-1252?Q?DxlN6/gV/gYiQCE1OkqmEQlYnzBXvQFZU6KwINc6gZBvgvRlWGNT7yUh?=
 =?Windows-1252?Q?whMUgYfx1ellhXEh+oS1a1ssLXQV6koAsMrbU5wcWg3vbvyL?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 76bd5367-1881-478c-59b8-08da9a4ce838
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 14:40:32.9921
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR84MB1412
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 14:40:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58076

--_000_PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Is editing meson_options.txt the recommended way to customize Mesa in Yocto=
?

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Monday, September 19, 2022 2:36 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

You do, yes. It=92s not qemu, it=92s in Mesa. You can see the options here:
https://gitlab.freedesktop.org/mesa/mesa/-/blob/main/meson_options.txt


Alex

On Mon 19. Sep 2022 at 15.30, Edgar Mobile <heideggm@hotmail.com<mailto:hei=
deggm@hotmail.com>> wrote:
What are the qemu params to activate swrast vulkan driver? And do I still n=
eed mesa vulkan package? meson logs show it wasnt't compiled with vulkan-dr=
ivers.

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail.c=
om>>
Sent: Monday, September 19, 2022 2:20 PM

To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

I think swrast Vulkan driver may be a better option to start with. At least=
 that is contained entirely in qemu guest so you won=92t have to wrestle wi=
th pass through code paths to the host which are all experimental. It=92s e=
ntirely uncharted waters for me as well.

Alex

On Mon 19. Sep 2022 at 14.52, Edgar Mobile <heideggm@hotmail.com<mailto:hei=
deggm@hotmail.com>> wrote:
For the time being I use vulkan-tools so I get vulkaninfo. It fails apparen=
tly due to no appropriate driver available.
I think adding virtio-experimental to mesa may be necessary, right? Or is t=
here another core recipse that will add mesa vulkan drivers?

Regards

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail.c=
om>>
Sent: Monday, September 19, 2022 1:31 PM

To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

As I said you need to inspect the working directory of the recipe to find o=
ut what goes where.


Alex

On Mon 19. Sep 2022 at 13.28, Edgar Mobile <heideggm@hotmail.com<mailto:hei=
deggm@hotmail.com>> wrote:
I have the impression that the only binary vulkan-samples installs is /usr/=
bin/spirv-cross . Are there other packages that install more samples?

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail.c=
om>>
Sent: Monday, September 19, 2022 8:25 AM

To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

I suppose you need to look at compile and install logs for vulkan-samples. =
And how the installed items get split into packages. I=92m short, inspect $=
{WORKDIR} for it.

Alex

On Mon 19. Sep 2022 at 9.36, Edgar Mobile <heideggm@hotmail.com<mailto:heid=
eggm@hotmail.com>> wrote:
Greetings,

I see the libvulkan.so.* libs now, but I don't see any sample binaries that=
 look like Vulkan. Is there a list somewhere for all the files in vulkan-sa=
mples?
Regards

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail.c=
om>>
Sent: Saturday, September 17, 2022 8:28 AM

To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

If the samples don't link with libvulkan directly, it won't get pulled
into the images. How are they loading that library, is it via dlopen()
somewhere? Invisible dlopen() dependencies typically need to be listed
explicitly in RDEPENDS.

As a quick fix, you can add vulkan-loader to the same
CORE_IMAGE_EXTRA_INSTALL list.

Alex

On Fri, 16 Sept 2022 at 19:17, Edgar Mobile <heideggm@hotmail.com<mailto:he=
ideggm@hotmail.com>> wrote:
>
> Ok, so I switched to Kirkstone and added vulkan-samples to CORE_IMAGE_EXT=
RA_INSTALL.
> But no libvulkan.so in /usr/lib.
>
> Am I missing something?
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail=
.com>>
> Sent: Friday, September 16, 2022 12:14 PM
> To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
> Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
> Subject: Re: [yocto] Adding Vulkan to core-image-weston
>
> You can start by adding vulkan-samples to the image - the recipe is in
> core. We do not test vulkan in qemu, because the software vulkan
> rendering is still under active development, and marked as
> experimental in virglrenderer.
>
> It may help if you use qemux86_64 and kvm for it, because software
> graphical paths are too slow without it generally.
>
> Alex
>
> On Fri, 16 Sept 2022 at 13:43, Edgar Mobile <heideggm@hotmail.com<mailto:=
heideggm@hotmail.com>> wrote:
> >
> > Greetings,
> >
> > I'd like to test graphics rendering with Vulkan on an Aarch64 Yocto hon=
ister (qemu, host is x64). Can you tell me which parameters I need to add t=
o local.conf to get all libs and headers installed (plus maybe some useful =
tools and demo if present)?
> >
> > Regards
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#58059): https://lists.yoctoproject.org/g/yocto/mess=
age/58059
> > Mute This Topic: https://lists.yoctoproject.org/mt/93720286/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@li=
sts.yoctoproject.org>
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com<mailto:alex.kanavin@gmail.com>]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

--_000_PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9PH0PR84MB1835NAMP_
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
Is editing meson_options.txt the recommended way to customize Mesa in Yocto=
?<br>
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
<b>Sent:</b> Monday, September 19, 2022 2:36 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Adding Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">You do, yes. It=92s not qemu, it=92s in Mesa. You can see=
 the options here:&nbsp;</div>
<div dir=3D"auto">
<div><a href=3D"https://gitlab.freedesktop.org/mesa/mesa/-/blob/main/meson_=
options.txt" data-auth=3D"NotApplicable">https://gitlab.freedesktop.org/mes=
a/mesa/-/blob/main/meson_options.txt</a></div>
<br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon 19. Sep 2022 at 15.30, Edgar=
 Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplica=
ble">heideggm@hotmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left-width:1px; border-left-style:solid; padding-left:1ex; border-left-c=
olor:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
What are the qemu params to activate swrast vulkan driver? And do I still n=
eed mesa vulkan package? meson logs show it wasnt't compiled with vulkan-dr=
ivers.<br>
</div>
<div>
<div id=3D"x_m_-5488592202682781880appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-5488592202682781880divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,0,0)" face=
=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif">From:<=
/b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" data-au=
th=3D"NotApplicable" style=3D"font-family:Calibri,sans-serif">alex.kanavin@=
gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 2:20 PM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"x_m_-5488592202682781880divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,0,0)" face=
=3D"Calibri, sans-serif"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable" style=3D"font=
-family:Calibri,sans-serif">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" data-auth=3D"NotApplicable" style=3D"font-family:C=
alibri,sans-serif">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-ser=
if">yocto@lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">I think swrast Vulkan driver may be a better option to st=
art with. At least that is contained entirely in qemu guest so you won=92t =
have to wrestle with pass through code paths to the host which are all expe=
rimental. It=92s entirely uncharted waters
 for me as well.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div>
<div dir=3D"ltr">On Mon 19. Sep 2022 at 14.52, Edgar Mobile &lt;<a href=3D"=
mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable">heideggm@hotmail.c=
om</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left-width:1px; borde=
r-left-style:solid; padding-left:1ex; border-left-color:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
For the time being I use vulkan-tools so I get vulkaninfo. It fails apparen=
tly due to no appropriate driver available.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I think adding virtio-experimental to mesa may be necessary, right? Or is t=
here another core recipse that will add mesa vulkan drivers?<br>
</div>
<div>
<div id=3D"x_m_-5488592202682781880x_m_-6479862864363465798appendonsend"></=
div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Regards<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-5488592202682781880x_m_-6479862864363465798divRplyFwdMsg" d=
ir=3D"ltr">
<font style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,=
0,0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-ser=
if">From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.co=
m" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-serif">ale=
x.kanavin@gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 1:31 PM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"x_m_-5488592202682781880x_m_-6479862864363465798divRplyFwdMsg" d=
ir=3D"ltr">
<font style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,=
0,0)" face=3D"Calibri, sans-serif"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable" style=3D"font=
-family:Calibri,sans-serif">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" data-auth=3D"NotApplicable" style=3D"font-family:C=
alibri,sans-serif">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-ser=
if">yocto@lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">As I said you need to inspect the working directory of th=
e recipe to find out what goes where.&nbsp;</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div>
<div dir=3D"ltr">On Mon 19. Sep 2022 at 13.28, Edgar Mobile &lt;<a href=3D"=
mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable">heideggm@hotmail.c=
om</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left-width:1px; borde=
r-left-style:solid; padding-left:1ex; border-left-color:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I have the impression that the only binary vulkan-samples installs is /usr/=
bin/spirv-cross . Are there other packages that install more samples?<br>
</div>
<div>
<div id=3D"x_m_-5488592202682781880x_m_-6479862864363465798x_m_-82003841010=
95602077appendonsend">
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-5488592202682781880x_m_-6479862864363465798x_m_-82003841010=
95602077divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,=
0,0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-ser=
if">From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.co=
m" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-serif">ale=
x.kanavin@gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 8:25 AM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"x_m_-5488592202682781880x_m_-6479862864363465798x_m_-82003841010=
95602077divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,=
0,0)" face=3D"Calibri, sans-serif"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable" style=3D"font=
-family:Calibri,sans-serif">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" data-auth=3D"NotApplicable" style=3D"font-family:C=
alibri,sans-serif">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-ser=
if">yocto@lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">I suppose you need to look at compile and install logs fo=
r vulkan-samples. And how the installed items get split into packages. I=92=
m short, inspect ${WORKDIR} for it.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div>
<div dir=3D"ltr">On Mon 19. Sep 2022 at 9.36, Edgar Mobile &lt;<a href=3D"m=
ailto:heideggm@hotmail.com" data-auth=3D"NotApplicable">heideggm@hotmail.co=
m</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left-width:1px; borde=
r-left-style:solid; padding-left:1ex; border-left-color:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Greetings,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I see the libvulkan.so.* libs now, but I don't see any sample binaries that=
 look like Vulkan. Is there a list somewhere for all the files in vulkan-sa=
mples?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Regards<br>
</div>
<div>
<div id=3D"x_m_-5488592202682781880x_m_-6479862864363465798x_m_-82003841010=
95602077x_m_-3031302158469435834appendonsend">
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-5488592202682781880x_m_-6479862864363465798x_m_-82003841010=
95602077x_m_-3031302158469435834divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,=
0,0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-ser=
if">From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.co=
m" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-serif">ale=
x.kanavin@gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Saturday, September 1=
7, 2022 8:28 AM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"x_m_-5488592202682781880x_m_-6479862864363465798x_m_-82003841010=
95602077x_m_-3031302158469435834divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,=
0,0)" face=3D"Calibri, sans-serif"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable" style=3D"font=
-family:Calibri,sans-serif">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" data-auth=3D"NotApplicable" style=3D"font-family:C=
alibri,sans-serif">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-ser=
if">yocto@lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div><font style=3D"color:rgb(0,0,0)" size=3D"2"><span style=3D"font-size:1=
1pt">
<div>If the samples don't link with libvulkan directly, it won't get pulled=
<br>
into the images. How are they loading that library, is it via dlopen()<br>
somewhere? Invisible dlopen() dependencies typically need to be listed<br>
explicitly in RDEPENDS.<br>
<br>
As a quick fix, you can add vulkan-loader to the same<br>
CORE_IMAGE_EXTRA_INSTALL list.<br>
<br>
Alex<br>
<br>
On Fri, 16 Sept 2022 at 19:17, Edgar Mobile &lt;<a href=3D"mailto:heideggm@=
hotmail.com" data-auth=3D"NotApplicable">heideggm@hotmail.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; Ok, so I switched to Kirkstone and added vulkan-samples to CORE_IMAGE_=
EXTRA_INSTALL.<br>
&gt; But no libvulkan.so in /usr/lib.<br>
&gt;<br>
&gt; Am I missing something?<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
data-auth=3D"NotApplicable">alex.kanavin@gmail.com</a>&gt;<br>
&gt; Sent: Friday, September 16, 2022 12:14 PM<br>
&gt; To: Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" data-auth=
=3D"NotApplicable">heideggm@hotmail.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" data-auth=3D"NotAp=
plicable">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@list=
s.yoctoproject.org" data-auth=3D"NotApplicable">yocto@lists.yoctoproject.or=
g</a>&gt;<br>
&gt; Subject: Re: [yocto] Adding Vulkan to core-image-weston<br>
&gt;<br>
&gt; You can start by adding vulkan-samples to the image - the recipe is in=
<br>
&gt; core. We do not test vulkan in qemu, because the software vulkan<br>
&gt; rendering is still under active development, and marked as<br>
&gt; experimental in virglrenderer.<br>
&gt;<br>
&gt; It may help if you use qemux86_64 and kvm for it, because software<br>
&gt; graphical paths are too slow without it generally.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Fri, 16 Sept 2022 at 13:43, Edgar Mobile &lt;<a href=3D"mailto:heid=
eggm@hotmail.com" data-auth=3D"NotApplicable">heideggm@hotmail.com</a>&gt; =
wrote:<br>
&gt; &gt;<br>
&gt; &gt; Greetings,<br>
&gt; &gt;<br>
&gt; &gt; I'd like to test graphics rendering with Vulkan on an Aarch64 Yoc=
to honister (qemu, host is x64). Can you tell me which parameters I need to=
 add to local.conf to get all libs and headers installed (plus maybe some u=
seful tools and demo if present)?<br>
&gt; &gt;<br>
&gt; &gt; Regards<br>
&gt; &gt;<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; View/Reply Online (#58059): <a href=3D"https://lists.yoctoproject=
.org/g/yocto/message/58059" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/message/58059</a><br>
&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/937=
20286/1686489" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/mt/93720286/1686489</a><br>
&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.o=
rg" data-auth=3D"NotApplicable">
yocto+owner@lists.yoctoproject.org</a><br>
&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.ka=
navin@gmail.com" data-auth=3D"NotApplicable">alex.kanavin@gmail.com</a>]<br=
>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
</div>
</span></font></div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9PH0PR84MB1835NAMP_--

