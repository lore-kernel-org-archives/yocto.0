Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11C96C54EE9
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 12:28:48 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (NAM10-MW2-obe.outbound.protection.outlook.com [40.92.42.97])
 by mx.groups.io with SMTP id smtpd.web08.19202.1663590521504168399
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 05:28:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=X/9Dc0qM;
 spf=pass (domain: hotmail.com, ip: 40.92.42.97,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LkwLNP7xyTj+I8ES5PTK1B0rncRvxl/LbPVhjhjhSfyBoPA8A6ymL1jwGSGRckcOOB6lKOoIaRZll4q5ZA8xF/aGcudapfcP8syoTwrk6c0eHQh2pa6N03rKBGHjvdgc8HLgjYqsbBIAYuGxXqR9olIH5I5y9fuermvaHgtzICNo8kYTQyzpmC16zQKaJGklqDu5vuitfNFQ5RUYydXFq0NOX2OsNYfG9rPtbxuAJ/DskOtVQHi87GFJNEU4Mvqg/lyBjnoxsvLk+HNDQeLWVpVhSZ7N/n4WDp2bmR00o9SwspcZfWlFVYzqb4N+hZc+8KqUb+/+1VGl7WbikNfcgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ql8MuOrcHLO3TTfJ6l2xtkOSGaT03tEQ7NW/42JzO9k=;
 b=DCxVM76BW3N4N3/4C8zMZTmqxAAqZU3/sepb0GXi70cefzgdM93NvUV2CUYhHAybDkkBHVkkpFgUuz2ilPznmfHVSoH2pBFygmWibtpkSp3urPwtuhcv4/7Kvoel2z+VSuMEQ2zxyqORQZ6UL34rvmWdd8p+va/rVESd/jXIyCjG+uRUmIr5RzdzLjWMZiH2ovLELJ7Y1U1vJl2A4QemoEiknPyOUFQew88DfcTM8LillReO36ZRO7Oupmus1eOMNww+/E6+6vUt10nouEzeS5jIEi4TB4whyyQ0MD1HWV5LLUMBj4KFPR26TmZgg+ahAbBZ99Z/5+jdg/XqDMB9FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ql8MuOrcHLO3TTfJ6l2xtkOSGaT03tEQ7NW/42JzO9k=;
 b=X/9Dc0qMBXHq2qh3NtkNhBB/rekEiOouTHuydrdVDWrmMRRT2SMrvcHXujzxnFSrEokpxQZcAd3HeJ7rfRM8Sg8Ooa0fH2Cez3y5rEf0td5cV1ufq7kRTOq/FTSoQKueOo/Lv+ofd/Yk3I1LBaxxat1M2adDipd9lGlNBPZn+KVUkJlozia8NA5RRtOHZoWoK4hQzio/J13k+b6BZw9FZ0X7aUMRjT8qmoE+BPyTHTAw6MjOn3wvYlMe8DCvkhNNob2QbPJN7fmhMafzArGMU9fQCPQMGCVxzoDLGGGUca5Wb5QGsfzf2Pbus1Zuj1HDDphyh1Ss56h2m7ghvtZ+8w==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH7PR84MB1486.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:151::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Mon, 19 Sep
 2022 12:28:39 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5632.018; Mon, 19 Sep 2022
 12:28:39 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
Thread-Topic: [yocto] Adding Vulkan to core-image-weston
Thread-Index: 
 AQHYycEskKLcduGixUqgdEVWou0Ata3h+FKAgABURlCAAP7uAIADFZtOgAAOLYCAAEOZXA==
Date: Mon, 19 Sep 2022 12:28:39 +0000
Message-ID: 
 <PH0PR84MB183555F695A0E7C8818C14E5C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
 <SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
 <PH0PR84MB1835D30B90E3ED9ADADA471BC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8diBFzwNe_veJG-Vx9cam0u=-uG6O1c=gSL9J9kO6NEg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8diBFzwNe_veJG-Vx9cam0u=-uG6O1c=gSL9J9kO6NEg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [BJ4aKj124pHPA3RpNK5L7rzzl3N9GieI]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|PH7PR84MB1486:EE_
x-ms-office365-filtering-correlation-id: 628c519d-47a0-4d3c-63f3-08da9a3a7b76
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9xOjRJvhXv6dS4EnHjdiQ9KYii32IavrBGtpyjRA16z5SPkln3Z/wlKTfYqzTYVxa+Hy3wlixEPnh3KrxSB+43WHl2IIYkZmCchWOhjxAejYAufwjtP2tQmmKUkfSnBpkSHrsJY7pCAhjtTLS7dTJ+kYNeR9cKuz25W5z7UHNZ/A+mrRXYZR2svdIa11/7YM6r2HvIR7jWApp390CAtyPzuOq3dRhC8xU2Ibkp+DC2UDxLKsh2yNE40ZY2UMKIDyKTe1x/Fldj1aHxEBxOgU1olAwPv8D5tdW2WkfGkoKxxk6r1qdJXj+CVRdJeBb6RT9FjObSDZ0J/9Gls+HR16G2otla9SfpX3EyjdwRaslLqgsT86M/GTcsL7OGgLFJPE4nViR3ZAoSXKi+Rw8WMCXnHA1mMxQWIFgrZXt8+7jr2isafoYN2NWh2i0eZ/RqB1tRm9dLut9IC49qf4ByXb2fCG1euVjfKGXWLVwyNenNSJI2XbXy9WZFg3Krd2QJs1ikA9ghdg7ak68LRkjAxdjmyAQo3zV0KJ162bYe/qMn/SKFhsoypyXk0Y5RIF7yKzFzKVxCn/4g+TCSd674LDYgA5QGv7NgzzBBvy2jq7NJSqFYFVq6cwqzRWo3zUYon6LMYBj12zuWuGSNwRM7qwETeJNq3ZGUqtLQ0Mb9iALeT/BWsnEtzd7xgNbbEp2wbp
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?B7kc3MyGSBs6x/Eoi7MrNWIVFMRFParXdCTZ4j2WO5awHTvGy0A14TLs?=
 =?Windows-1252?Q?k5xIhjriQAW6il/2+a+gAKjnpQNlbQE/9U4TihtsGk6TwgMl0tqK6SHA?=
 =?Windows-1252?Q?7k2mezPt9FWK7ES1ADRRnGSsnusCurmmWV1hQ+KesY1eHqyfZKf8RD5R?=
 =?Windows-1252?Q?gXB/CUJGskfDTZl42GcRUMYJTZZkZp4W55tudV2iOKYORc1XZsH2+p/2?=
 =?Windows-1252?Q?/dLYENg4ZvwP4V6vMnLBCOcV4XF+ziX1+FI1JtvVnKqTJt91lGHUaeLS?=
 =?Windows-1252?Q?MuMEagXpCNwcPj0wKcOKiZBnsa4lqqKrAgWF/rMLSzGpeIJw4unoGX38?=
 =?Windows-1252?Q?6T88hvuyoqVM3pp9RUCRxCcMK1Mp3GgpRps5ZvsPM+e4tWsclf53n5ko?=
 =?Windows-1252?Q?PKIr2PtqvGHbFh3bZjNW4964b5ik+665tfBesyk7aOBubiYTd4l8KaFc?=
 =?Windows-1252?Q?bqvglQ9iHc5vJ1SChGBJZR8uPPOTbxEcGOupPoB1KWQ/PgndPoRiFNXD?=
 =?Windows-1252?Q?sduchIkJf4D63nJp7jl/XxLyZn2sEUhdUwP9WSO1KEbS1M2OVIisJU5U?=
 =?Windows-1252?Q?VKOMCE0CUVCYLLCVvZ25/r7m9++C0Jsk6wHos9b+XVzPLu7GKM8zioGR?=
 =?Windows-1252?Q?OlqVrW2FVqj40Ix9csiwPpLVIt1YD9utZbzqtNzn0jK6p86cqpPTtCfN?=
 =?Windows-1252?Q?TLTunSREPWaS/AT0nC+26aPyexg1w4kgeQxJOlhJJkW/EQPSgfGkGzTx?=
 =?Windows-1252?Q?FE0MCL9yNcPqghMgT7YwrQq+yYzmz5YG087bdody8fBb2CAkk08Ud6VK?=
 =?Windows-1252?Q?fEI6N1u5x7ddJdTQJgKmj5oB/Voda/ZwRigVvTbF8S7Uu6SLViQyOC9V?=
 =?Windows-1252?Q?1jl+droZzlcl5MRXrZsQxq1O5/QqwwR2nzkLeG5ftjBg08tXO7O4DONQ?=
 =?Windows-1252?Q?yJDxdYBTVtJ+rssf8TYdIP0ZfeBvgPtyr8xCWqnhKfMEwmz+309r1UNG?=
 =?Windows-1252?Q?P95g93cmYXUze1LE4b6/xHYUkc9d9cVozTEwRdSOk1AiC4hD4CSirrqx?=
 =?Windows-1252?Q?jDlQIa10sPzt6eVrA/BjgwlUOm+uw6PjYIT1WTV/A3U+GLUn5V/4TAz2?=
 =?Windows-1252?Q?v1RNcHw05nqJLSRiGMrP168FvxWfWxz2/wUPLyK54C6P7aPHzB5/vtiW?=
 =?Windows-1252?Q?bp44cDb0VxkJ9gLRFm7t3yFIy1Dhgg06shAar7SortVIVCA9NnzKP6gO?=
 =?Windows-1252?Q?TsI2GTp7pesCwfrx/lP1fJwjrfYUUnnJcrAmngioAJ/oWgWOVOuS9zGQ?=
 =?Windows-1252?Q?gLvbsHrihv7+69AWHPJaFWKGxxh/dZSkF3Fs3tSm1wQn3Dyl?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB183555F695A0E7C8818C14E5C74D9PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 628c519d-47a0-4d3c-63f3-08da9a3a7b76
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 12:28:39.5846
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR84MB1486
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 12:28:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58070

--_000_PH0PR84MB183555F695A0E7C8818C14E5C74D9PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I have the impression that the only binary vulkan-samples installs is /usr/=
bin/spirv-cross . Are there other packages that install more samples?

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Monday, September 19, 2022 8:25 AM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
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

--_000_PH0PR84MB183555F695A0E7C8818C14E5C74D9PH0PR84MB1835NAMP_
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
I have the impression that the only binary vulkan-samples installs is /usr/=
bin/spirv-cross . Are there other packages that install more samples?<br>
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
<b>Sent:</b> Monday, September 19, 2022 8:25 AM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Adding Vulkan to core-image-weston</font>
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
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon 19. Sep 2022 at 9.36, Edgar =
Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplicab=
le">heideggm@hotmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left-width:1px; border-left-style:solid; padding-left:1ex; border-left-c=
olor:rgb(204,204,204)">
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
<div id=3D"x_m_-3031302158469435834appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-3031302158469435834divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,0,0)" face=
=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif">From:<=
/b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" data-au=
th=3D"NotApplicable" style=3D"font-family:Calibri,sans-serif">alex.kanavin@=
gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Saturday, September 1=
7, 2022 8:28 AM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"x_m_-3031302158469435834divRplyFwdMsg" dir=3D"ltr"><font style=
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
</body>
</html>

--_000_PH0PR84MB183555F695A0E7C8818C14E5C74D9PH0PR84MB1835NAMP_--

