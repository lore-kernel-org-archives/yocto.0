Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79640C54EE9
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 13:53:08 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (NAM12-DM6-obe.outbound.protection.outlook.com [40.92.22.42])
 by mx.groups.io with SMTP id smtpd.web08.20151.1663595579238728939
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 06:52:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=gbAHOJ8f;
 spf=pass (domain: hotmail.com, ip: 40.92.22.42,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DzVqq7+WjgsLe0tybxu6josKcDzdk+DCtcaWR7CaynKPXy+qJ4wit7vtbykWOeWnNQwRW4Tks8CSoH25FOIqSBwiMdTO3kk1s/0GuLol1Ey4gg7xo52Y8qy3nqodU4itFR2HApUGwt/ONwPXydXSt3Q3EoNB2zbfF6Nqbnwpah/MEdhdgvfyQLbvv0e4kBJLNYvMMiR9peHE2ixe4nRnY2w3anbtqQYx9D120xrlEz31BH0ATJaNRqEEEoPDm4nCwAabqu8H42dgGOeVR1Zh7KcK8KTK6uaOtreyrky8/dJIDtWPGhQy6RU59GN17zNt//EyOELcrYop6FX1qMhvww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gQt1l7XRfLawug1BS9n5Q3zKSYuf/p3qCyKuz5X7CSE=;
 b=ibe1oZ34JMigjxh3MoKdWBvxYs25fB027xaQ2Z5hRX0YJwhMWZVLrdDaN2Nc3sM8U4TVdaLLs5u+WwU8cjy32jfsrMyOJejmtcZP85iXneonxVkhbrP3MrIz9jJlFjN9l23UL2K21HHQTbiBAn9Zh+oQa/fxVeS0EqQ4gzyZz46w2ganugBejGKrCCYxLFgptGLDbM2F4AGastwX+yM7iWDp4E9Il4UoKfpzXKcGQq8t0Wl7B8HKj8rVncz5iRqZ69K9hihcNdI5F/EE/b+CoySzYifHNtpIAttSPiNu3rC5C1EJvRSUaYbD9aapFcFyq2tq7YcPUmcqBl7rPLwaew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gQt1l7XRfLawug1BS9n5Q3zKSYuf/p3qCyKuz5X7CSE=;
 b=gbAHOJ8f8RgcDBgNtZIygb6oU70aeUXK5noS/E9KygkSznQjjQbILW2tr0kOsOasnxVGN6TTMp1aQNRPHl3NejUuKd11ABvgc6Kdz0Mqn4CIJMsllwtyR2tEsZUYcH0V2A+KJJWaGOnTK0oPdK2tuAPmnGzkD8snTEdOSJfr6z23xMGfGeJffo3keiZKcGwZnbj5ouReRicPBg8/95vjxMYvavrlLUI3HAjnVVmy6RO84tiSGF9m+fgsXV5wkdccBLXTBTwu7YQTkjUMNe3d9IYNyNrIDjH53GqQRPUwdZSXSlud3yXipnkUEbxjZZbB2jWhXD8w7ynwUHDNArrkeg==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH0PR84MB1574.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:171::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.16; Mon, 19 Sep
 2022 13:52:57 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5632.018; Mon, 19 Sep 2022
 13:52:57 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
Thread-Topic: [yocto] Adding Vulkan to core-image-weston
Thread-Index: 
 AQHYycEskKLcduGixUqgdEVWou0Ata3h+FKAgABURlCAAP7uAIADFZtOgAAOLYCAAEOZXIAAEcYAgAAB7hk=
Date: Mon, 19 Sep 2022 13:52:57 +0000
Message-ID: 
 <PH0PR84MB1835788AFD16FEB8E4A15790C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
 <SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
 <PH0PR84MB1835D30B90E3ED9ADADA471BC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8diBFzwNe_veJG-Vx9cam0u=-uG6O1c=gSL9J9kO6NEg@mail.gmail.com>
 <PH0PR84MB183555F695A0E7C8818C14E5C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9oFKPYa63AiH4tDJ8Jku0826ySM22uXxxq=vOwbbD+vA@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9oFKPYa63AiH4tDJ8Jku0826ySM22uXxxq=vOwbbD+vA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [942uDrLMrjuf2FxhY3VmLAl8D03cD3Vy]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|PH0PR84MB1574:EE_
x-ms-office365-filtering-correlation-id: fa2654d6-8c14-4216-3506-08da9a4641fe
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 brlr2bAIn2W57xK7ARnLIl7kBx5Mt4Pf8Swy6n9eBUCjIe0O/1l+wii5tlBMRG7pHUzQXd0UqV1gYNVlTwZGK/kouvSuWOHwY1OgZy07NisT2oXDW5EfhCxvUwhGtvGAZc1jGaOeXq9H2337m9vZ8JuUnV9TPUwrkC7Odiz61dTS3s5L4g9T71LShzjOP/5rJGbZsRJAY8e0+yZUslZ3cGWxQeEGNwNkihCJGXpI6DJL6EbkFYzoUygD42hUh1rCN3ZjoteVDYojekgCtLL94PTBf3bZqBqpMP+Xb6YiOb3d1q5XtGL+H1Y1zAf3Mr/xteNrpzFSbubYZgUVqIRRsxjgWIWILCRejJSJQ6eHyBfZroPgMQVONCyi0ZxSGyJ+XeMS4B8GPCphVtyxeS9z/xkwxuPuRBxwbthUGKn3dVAGOIiYz8xugQJ5xxlk/WnjUIXZLNXjN6XMJyRcS9PpO5LYPZSTe/Hyo0aPjvqE+2weiRatjvf19Kqq5TXTRNrIQba17rbyUeepcSukCZuGgPbYL1vs6BRpLOWLnrI31nwmZtoDeFxJeX7utwJdzkrXuDWKIoQj/0I3y9/o+xD/82fly1r+z6NgFIqYyDwN5aifxXmkHjId5cLP/49Zqy6yO21gIwJ3HUXGb1wskzMW6ED8R8xvRBRXblKmXj4teEVbg7NGejpr/eqecPb3wCff
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?1qJ7RiQoy08ySPLWAYaeJeEk7EZCOKXpxM6KrhdDT7Pee6Ief5QDF2wa?=
 =?Windows-1252?Q?UKM571WDbpykMlg9N/hnnMwhjI4aVDxERcIl466UditNpcUXhh8c1mza?=
 =?Windows-1252?Q?HcqauN1WQnKyzOZehEjTEKTnMtTt9XnAKXAsH+gyMEDj9eiSSxraW8Ha?=
 =?Windows-1252?Q?ha1bU1YWKAQPrYeuDRJ6QIxrABunC3cF/txz1jmEIomsFCYXkkcTD+nt?=
 =?Windows-1252?Q?ipZoxEJ78Qbtxz6M3r3GmBCQN/dOmCkmf4csdXd4cc/QBTfzajlg7T1c?=
 =?Windows-1252?Q?IkjHeQHjBkcmzWoPdbYXDstgZ+wqSEh2Ut5ik/d3qDCYjHPzaBeYdycp?=
 =?Windows-1252?Q?N5JX21uipFqNa6aLkqu/ibtOeXol+KKjqYf0LSCGeSLegMYt53XYE2fN?=
 =?Windows-1252?Q?f6Bga+VelbAHtIRv320GBgEc3RVzAyAhzNFm9hxPQliGvFZGEMu8tOlD?=
 =?Windows-1252?Q?XWmtIqMIsvzobd3c8esOOizpFRqlfENOM7PGIt39tUS9zDUAPL2HCDrL?=
 =?Windows-1252?Q?ukPM3MJNfIq6IImBPXrXMhSe4R53iaY1XDAexDAScdsCwn6jDCUwVMDC?=
 =?Windows-1252?Q?DKzBXCDWVAG5AyJYN8OKM4H9UrL6LwpcMFIcYOvhP3zp/0uTvNfZZPjT?=
 =?Windows-1252?Q?n0IZ+hFpZB7Pv2vE8IhSGQ++28ZG7JGZnjADfiIPI21bikgA1OT+1wOV?=
 =?Windows-1252?Q?FfRA9/7iEoRgB0MpZMEfqa5J+oLw9wL0Nr3bLjCTVID6ECEgPpMBJfMo?=
 =?Windows-1252?Q?OURK4okXpAjHFt+evMc1tckw3KYN64On2vTqu9jd5q6cnspiJAQsSU7X?=
 =?Windows-1252?Q?jlCso//zdewSxKzPQceBH3+lHt4J/n0ZKNL5HqOLeWTmxh95RV9k2cn7?=
 =?Windows-1252?Q?zxkzX5bc3S4U1o+QIHQxJBUz3FTQVU2L9THyzXlGOyHEyI7lSZwO1bFt?=
 =?Windows-1252?Q?fSXV+Mfgm0a3qRMO1X8hf7c13c5F9EB8tbTD0BCXI5QgkdnrTqB24FX9?=
 =?Windows-1252?Q?H82ab7ESr+MHO1h69MutfbDe1fziKfX8SfxHAllQuFYSBgZSGSMnkvUW?=
 =?Windows-1252?Q?+zozlsBY1/PYAsv4bQKsO/YvsoXXloMuERll4MrVLSZnFV19RuqBlC4H?=
 =?Windows-1252?Q?voVGPiDB/H3/Doc3jWDQbD2nYBgnw8chCI7V9hOVeELlBGNYQV/vkAUG?=
 =?Windows-1252?Q?OL875MPPUdq+DrG8VnzkoPwPoObu4HRVnyreiaZ0ZREn9JGfpubfOQ8K?=
 =?Windows-1252?Q?o4tCdlcAULGhc4k9d8H1vVOa9f8gFDEhW7hg7n/6HSWfLwa6aObvzmBg?=
 =?Windows-1252?Q?sRYE7QYCAgtXRw9/5SIjVRrsQJAxQL+pjfaTVWlyEL+BQ+3D?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB1835788AFD16FEB8E4A15790C74D9PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 fa2654d6-8c14-4216-3506-08da9a4641fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 13:52:57.1288
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR84MB1574
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 13:53:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58072

--_000_PH0PR84MB1835788AFD16FEB8E4A15790C74D9PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

For the time being I use vulkan-tools so I get vulkaninfo. It fails apparen=
tly due to no appropriate driver available.
I think adding virtio-experimental to mesa may be necessary, right? Or is t=
here another core recipse that will add mesa vulkan drivers?

Regards

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Monday, September 19, 2022 1:31 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
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

--_000_PH0PR84MB1835788AFD16FEB8E4A15790C74D9PH0PR84MB1835NAMP_
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
For the time being I use vulkan-tools so I get vulkaninfo. It fails apparen=
tly due to no appropriate driver available.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I think adding virtio-experimental to mesa may be necessary, right? Or is t=
here another core recipse that will add mesa vulkan drivers?<br>
</div>
<div>
<div id=3D"appendonsend"></div>
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
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Alexander Kanavin &=
lt;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> Monday, September 19, 2022 1:31 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Adding Vulkan to core-image-weston</font>
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
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon 19. Sep 2022 at 13.28, Edgar=
 Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplica=
ble">heideggm@hotmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left-width:1px; border-left-style:solid; padding-left:1ex; border-left-c=
olor:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I have the impression that the only binary vulkan-samples installs is /usr/=
bin/spirv-cross . Are there other packages that install more samples?<br>
</div>
<div>
<div id=3D"x_m_-8200384101095602077appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-8200384101095602077divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,0,0)" face=
=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif">From:<=
/b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" data-au=
th=3D"NotApplicable" style=3D"font-family:Calibri,sans-serif">alex.kanavin@=
gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 8:25 AM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"x_m_-8200384101095602077divRplyFwdMsg" dir=3D"ltr"><font style=
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
<div id=3D"x_m_-8200384101095602077x_m_-3031302158469435834appendonsend"></=
div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-8200384101095602077x_m_-3031302158469435834divRplyFwdMsg" d=
ir=3D"ltr">
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
<div id=3D"x_m_-8200384101095602077x_m_-3031302158469435834divRplyFwdMsg" d=
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
</body>
</html>

--_000_PH0PR84MB1835788AFD16FEB8E4A15790C74D9PH0PR84MB1835NAMP_--

