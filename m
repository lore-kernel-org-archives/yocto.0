Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76950C433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 11:46:01 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (NAM11-CO1-obe.outbound.protection.outlook.com [40.92.18.76])
 by mx.groups.io with SMTP id smtpd.web08.24221.1647431159822474254
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 04:46:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=JwJBEi1C;
 spf=pass (domain: hotmail.com, ip: 40.92.18.76,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EINFJWzm2HCEci85yJr6Li+bcSP1nQoAsW6LfvAf3Rvb3IHL7YF4q4kfhmjP1Lcp20P7533xUc5cIcoyvx8jOcTsW1KLj2T7mcWJlOkO/7TJUhxDxkBAgPiRp0uN9QiXD/WYItxLRtzpl8cfdOZoujFIbFseHBFrzGglvFyYOXqSo+TMxLxDSD9Qwz5YNUa6jUQsoR9sPI68RNj5CP3O9wed/MX5lZRpeMJ0/5n1M6aeBYFt6NIlUMFmsaXLVDequCwF5yNL4Vc/3fZ+wuqHO9eaCVeBBAOE4XiruhAgQLaAg7+vhq5WIJNRG0k7W/MciWHpJ/65Coogv2v+u34N4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RBBTjjl8DwhuMSw5pOzVYSddjSJRbLfvoZid+KdhHZQ=;
 b=GNpTtUgm2lUIGpjTXtKWf469WGhS+K17+yBiaU7VA8rAafubTYRbZhR6FX9nT9K8ZEtQwqwaihCjYgxiJIz8PpgDJRu5Uhq2wY6JVti6OKIwUac0Ca6gzz3iYeKAs0kA1wGVR5TrN5JOkioT8udg44TpS5QiT4yvuna3pmX+FMX+IsoYa9OAubaywT/9dm0ytVnuNxCsWO/CZIWqJ3Vy6zrJ8QqbfMxdfIJfLYcEif6Kj3j9ZRreTqL0Jne72sVrfPNAIOFznLj6kA0JoXADU+2oNeXshCChO6UoDO8cDJtNnGuUdPdICWUwde0plO2wZZmD7FMbbXpvn2Vt3ttBlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RBBTjjl8DwhuMSw5pOzVYSddjSJRbLfvoZid+KdhHZQ=;
 b=JwJBEi1CoRGDmQIgAXjUwn7eBBsFdkojE+WjoitiRVM+qQ39HgyMRcyHi7myhPZaBkHV0rGvketqSwBhpPmMz/CAA3b3lCmTgHacqvvWOVx67s9D0uNF0gP9BOx4GNmMzBV2SNBrgiRN34gx+AgCRBt6be9MMrBwHwiEJT49iJmQV7QImh9CExk3OEtOc8S4cOGWD/kqX9b13uwNjri+PIMYb2d47WIz88nIppXn/yY9QkuV/vWF/PBORekD0hHHF4rwKM7j4WbXSgIvDIkfUd2AmEflIdP4vvc0AKTkXMSlsMDw29f0hXn2dMWhFhNbw+b0NP+MbFTCctHqS2CkGg==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 BLAPR16MB3875.namprd16.prod.outlook.com (2603:10b6:208:27c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.16; Wed, 16 Mar
 2022 11:45:57 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83%5]) with mapi id 15.20.5081.015; Wed, 16 Mar 2022
 11:45:57 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA
 not available.
Thread-Topic: runqemu - ERROR - Failed to run qemu: qemu-system-aarch64:
 Virtio VGA not available.
Thread-Index: AQHYOSrnDihWuD59JE6B4gVYRW8F9Q==
Date: Wed, 16 Mar 2022 11:45:57 +0000
Message-ID: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [yvU80q7UVUlfaJpgZf/0XyLM88kOIMzp]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd851698-9be2-4179-0b4f-08da0742890e
x-ms-traffictypediagnostic: BLAPR16MB3875:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 rq7OqDLXwBBaRb99z3Och1oaFbRQM/Jiug+a5d7hX6Rs2HyIUycdBihRNd4sRzmjez1ewVsByOTYRHYTGqPWDH/A0qxuoXFslq7KtUKLoFkxVCbfZ0Bu0IHk9Tp+WUFL2Vq4obMYOLNkdPtl1hfdwlvzIfDeDHTqYk0qXAuB7gPc/+pdfB+vEr69FcNK24mv1B6fFVLpeO9BAF4wkQF77TyQzoBrAiGXXAks9sTyJr2OodlQcQhEAK3kteQ05ztFsLnlC/Okv4OMbff50MlSPx8fblZyNM0B5QfW/ZCrMWXNUiQqxddf+Ft1XK3qmtJCmWWUQnHfznpbpWseI7wEk+kXjrKS5qggEHvq5r/LuuwDRM9yRYBFWZIiUR7lCQXXvKdH+1e+jIty5RRwcvFW0ilx/2kpp5y+GTimmn6hv29sxtjkgNgAH7ykJCPv3i6n8jAH33pew2i/0JSR/O3J4MnINvDjk5Uh1fN55iaxwwks83sap+DDO26K1puAm/1dwdF6WjeoPJ587IUcB08BzYe8a1wOsvQRdLB2EobijbD+vuoqQnjX+XpYsjINXWqpGTE9+Usfn/XZxc6rL91T2CO2287foc+hG1+Xq6MPHe5MAwin4nAJI4nwxnFpeOYP
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?0mmWJyIxdgVXMHeo191i8DXEeUGW7Tc7giYNXiCc1wK1Hq4eeqcj3c70D7?=
 =?iso-8859-1?Q?q38aI3nz3LNOAlXv4iAdC5rpsnHqCS9gTs8lMQGXRnkX/jf3Zazkuers1R?=
 =?iso-8859-1?Q?CW0crrP9puMM7RfAa1MW0J/nSHxCzLohnYNe7TmZ9yhUt3VClxwz3bxqiy?=
 =?iso-8859-1?Q?CbrDJuY/Zr0xKnq6WwftNvX0aXz6St56RIJCq/VaSSSJ3uRSVqi9EE0H9C?=
 =?iso-8859-1?Q?jK16XwlqLQ2qU4UjNEF9sYmTK4aIGq8vC7pO9AXFqaZiq9msfdk3yrxTCJ?=
 =?iso-8859-1?Q?8ie6dNfjPEn7PKr/dguM/q+dY8UH1qebSLsCJVYKeuwJPX6rCHusu0feyC?=
 =?iso-8859-1?Q?GjymT6kDzk7ZjhueS9jZfWzPyv/RISwoDUEor4izQuR6b06hLTOgdfbWl9?=
 =?iso-8859-1?Q?XlcAoXIzQSpfzFAchqxxO3Hd7nX7sqDT06g4XKlkRFZJvMpiQUmqkq4FU3?=
 =?iso-8859-1?Q?mMWU/5RFhdUM0RPVgjAXHuL3K6z1NSeBau9vcbxSdlSVsF/tJjsZf4iOXd?=
 =?iso-8859-1?Q?cjUmYoKFCz2MOThxujHvD4EgDelfpxnhX3jzGQNjvwT9FVMat2mwJQymea?=
 =?iso-8859-1?Q?LsSJZetiSl/G3axMm1FshZZorG6tEaQ8WDZ2s8yAlgrqg643qdjMe5yfbI?=
 =?iso-8859-1?Q?EGjCgJNcckhSIZl5Ro4JJP4s1Kue1Tkyz87gJckZyCZwm9o4XKi2WlTXSl?=
 =?iso-8859-1?Q?Z9lTkWhxA+X+OQB/XLxTCEYpB3EUXRy44CLGdUaPYNSXkm/jdUu1WDNiA9?=
 =?iso-8859-1?Q?Vd6SE1Nu+RVqfXLIJ4a94e7FgF9J8VgSIHXq7jSUrTTFOML8lE/B7SVNAR?=
 =?iso-8859-1?Q?2PgTvu9jK9zzmV8IEhx2pDi2rMakSxA6XJNUmcSZ0oqJ9FBBET13Jfs2Gb?=
 =?iso-8859-1?Q?ab6D6BddjGan6ZfSonITwyYKRMrS6/d2/r/RMYAIWWzqMFpKytRAXDukyZ?=
 =?iso-8859-1?Q?/SG3/b4ZmtGMMLY+sqHPMLM7kMLQrtiVnBmwKOCMhT1njh0WFgpWabfHwU?=
 =?iso-8859-1?Q?BgpO66QIvNt7yc83xCfJ/EvxpHn93hD69+OuRO8EVXsR5VKkkaDI2fvoVf?=
 =?iso-8859-1?Q?9JC+oXqt8Q/m/DV47nDMDOBdPMoga8J3t7eT6BBtZ24Hs19t0LvWVVg511?=
 =?iso-8859-1?Q?MKd8Sr5gRRemL2dAHRMYrq+6zq6G5WXNcCupBTsVFO8Z10LLwAW+AeROuW?=
 =?iso-8859-1?Q?XbFfopCrdC5XRg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB43578CD48FE66AE37B2C3545C7119DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 dd851698-9be2-4179-0b4f-08da0742890e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2022 11:45:57.4669
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR16MB3875
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 11:46:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56467

--_000_DM8PR16MB43578CD48FE66AE37B2C3545C7119DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Greetings,

I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that purpose,=
 I built core-image-weston from Hardknott following the manual

https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html

I then try to run

runqemu sdl gl

But it always aborts with

runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not a=
vailable.

What can I do?

Regards

--_000_DM8PR16MB43578CD48FE66AE37B2C3545C7119DM8PR16MB4357namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Greetings,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that purpose,=
 I built core-image-weston from Hardknott following the manual
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<a href=3D"https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg073=
06.html" id=3D"LPlnk978067">https://www.mail-archive.com/yocto@lists.yoctop=
roject.org/msg07306.html</a></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I then try to run</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
runqemu sdl gl</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
But it always aborts with</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not a=
vailable.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
What can I do?<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards<br>
</div>
</body>
</html>

--_000_DM8PR16MB43578CD48FE66AE37B2C3545C7119DM8PR16MB4357namp_--

