Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4EBC54EE9
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 07:28:16 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (NAM11-CO1-obe.outbound.protection.outlook.com [40.92.18.71])
 by mx.groups.io with SMTP id smtpd.web12.9026.1663658890899031646
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 00:28:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=ITR9YIkq;
 spf=pass (domain: hotmail.com, ip: 40.92.18.71,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fKMQU3/E9O7hFOI0jeLjrUnx8Fw6EcanxlbCpjAdQ2wB6MIHwZEY3sOUp2mnKR1cNjGIW9ymoldM/Zfa5vKCJYO4cWGDlcIg6uCjvgSib9ZuibeXjYCmSuGczwU9TrquPFiAYqzSmif8ePfgp8TNvO9wCJhcW+3WPw2Hvbjq51OytpKJALzGinGrNFQgDbDyvKOXx8IRVUVDWAXmbfsIzxZm0N1SYSGOTQ+PNJF08idit/LvVvhB6l8OMzyyVuWxxyjfl3ppL+DXSC8ESMt6vu7UyK/4NvZcemU7yHboP+jyd3rlY9+WiqSesCOKs9qn1yyOc3LiBv8DErzVVD4Njw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U94vGEz8QOMkZJ/z3a7p6a3dZvIScuuQxHn//5dh+o4=;
 b=f/s9RX+pSJAF25z8zz7iRzxawJW0L6tRNQZ63mPv6Mqn2CmGiwo7pmcr7arLoII09LIMrQ5MCHnPO29W7llI32DHP/+hK2QU88cQXefC8ZYe4Si/3Jy4224PmxUulAy1QppIl9KJ6P39Yk1zaswfpdObxM4tIy02letKFKdwKimWUztuXxU6cKbcHgOBQfbdNO+14UtxksMJ2C4QwDVV0XoL4JauyprNhbXWvsnPWJ8p0+PkS2PUU8A3zBAnne7b8frDnWjqyIp3Fx6xPIJ+X+L5Og6oy2OeRCwecqYVPW5LYeUN6Kan9x+5iYg5gNyqmwk/7iX2rmw9He/S7gQOhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U94vGEz8QOMkZJ/z3a7p6a3dZvIScuuQxHn//5dh+o4=;
 b=ITR9YIkqr9Zu03lUvmprZ4aPROncV3D/hXfPR4X/hRFTemAQc4qIl6hraEchDjPaLL8nFIde4aaiEpMCAyFqCEeIGHCpHuxs53vxAWAw9p6/asJzwy6W7hfldyV3U+is9BUrUN01Xv8oU6Cwe4dlPZ45YU4wn5v9E8H6pl4Uh9YkZij6vWNNllZhLYt541M3EKKTeHGt2bRO4K3pHV2+Jt9Id+e1LSCiOYy/xdsHQ/imYptrBGMqrNOi6wtTUTVX2nBgxbTpnhxY1aRMt2dGzaGAZmqHLqDYBEntF5lkDsEu7Z1WPWL0s84TSfyXZPHgWZXf/x/Ud6AgdGH26abxpQ==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by MW4PR84MB1585.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1a4::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.19; Tue, 20 Sep
 2022 07:28:08 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5632.018; Tue, 20 Sep 2022
 07:28:08 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Markus Volk <f_l_k@t-online.de>
CC: Alexander Kanavin <alex.kanavin@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
Thread-Topic: [yocto] Adding Vulkan to core-image-weston
Thread-Index: 
 AQHYycEskKLcduGixUqgdEVWou0Ata3h+FKAgABURlCAAP7uAIADFZtOgAAOLYCAAEOZXIAAEcYAgAAB7hmAAAvIAIAAAptVgAAB2ACAAAEYX4AADs+AgAAR1oCAAAQiFoAABwAAgADtts0=
Date: Tue, 20 Sep 2022 07:28:08 +0000
Message-ID: 
 <PH0PR84MB1835B9BBDC762CD55DB5C77FC74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
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
	<PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj-0ewbydhAYAw6u0JgnKcBEJTSgZ+QzTxnwD2Lmh9vDgA@mail.gmail.com>
	<P5UGIR.ETKUECS9HZXY1@t-online.de>
	<PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <40WGIR.ECG3N5TIIYMJ1@t-online.de>
In-Reply-To: <40WGIR.ECG3N5TIIYMJ1@t-online.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [1TlX5RnYWJ6+l+DvZ2r760C2iZJ0I55n]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|MW4PR84MB1585:EE_
x-ms-office365-filtering-correlation-id: f261746f-ba25-4b49-0615-08da9ad9aaaa
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0f2iCQE8t0upHFNeJzWhCdJI4hgM0T5bv+xOEqpwNqfnMrd09wHNpFfbfaSq2et7AvsxiuOwK9yK3naoeSWgmdDiyE7YilDmsNKmpraLAHeSDmNJ+eu9ZOVDEGwD7bnvNP2L9la5ARZ7sRPqvw85e4BAMqxHX022FGLyrPrrCMIDSjrdz1zLTK7muTffc++ETBds2DpNaxxLlo4KDYUcSriCGsv5F2jDgW9eiVb6s3j/Ow2n6X93mG8f6Hq9EKeolKXVeaQWlo880VGedCu0TidwQFR9CcQIHGx4vYDtDMCqWi4mZHEnCB7iUeqbaB/IjdMNigfVtmocqxBby7QgbHp1gbn3PLPsYo7XPZJbdohWKZp7otxKY5v8i2pD4twP7S74G1yZfSJtggGbg1f2Iuy6Rn7DTxppRGeR7FfEjzR6uUE8vz9G5cPiHInxpS8rw9U8334w/qf0IKBSk14w5Cg5+v7re3FE2SEybdm59lm0fcQemZEvFq+LFKc9QcCjJUkpXO6Qc4gIG2LeTfeHyGOwEuMIlBg4myQpfZhItneORB0aFTXICLW2/5cav6+CxOPI4Ug/okzc7N7vP8lhLcP369j4iszEm7d8ym1Mf10m94rkTxUaH6iK3P8nhRtnpAljtewxakBxeCOh22TbZoHWF4ND2hSxzYCMauMWloKxcXptdGZXmjnMeAO67uM8
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?aUx7nXkiEJ9xvDCmMNBBGBXXjxpIRFkiMoTSshb2c2xIW5xQD/TgLDFxrl?=
 =?iso-8859-1?Q?geOK/B521l1YseaVqdWy7kSx9aFMZPj8QJi/JcLb1v60mpD/YoUCCXSBQc?=
 =?iso-8859-1?Q?4CvkIOX7tpLMv1HM0ws5gvY8j+ELE8KYDVs+RVNbR1wT0KnaqPHs6ZpNJb?=
 =?iso-8859-1?Q?BkAKo7C0gBDmAFn7979tfAnSwmDRy7sQ28FHACv0dd0dSMrE9EY+eGNVWQ?=
 =?iso-8859-1?Q?0xCNdCgpp9rPExcEgx9xXEwMIzS3NJ7xqBDQFFQOxzYgCUCmxXpBlXoBBc?=
 =?iso-8859-1?Q?D3c3qsJ4eZviCdGkYE5Zdn2HRUj+/50rB+ku6gmsBv+0DPhczWgrYGRIvU?=
 =?iso-8859-1?Q?qwwIyZ/0fj1qIwxbf/L13TugL4VFe7wdeSmM/ptFEWPz4al+H7zY21vB0M?=
 =?iso-8859-1?Q?ekgRcvC+SeIJS+12uyns/wcfcef5zwkj013vmK7Wb4M3f2Do7QyffI4YOP?=
 =?iso-8859-1?Q?iMlz5qhQDwEtI21uC6yExAAvUHPjlK0GaJPnK9bQtcNAG0JGX2+J1lkVd4?=
 =?iso-8859-1?Q?V2j1mfF0QLbhMMoIdXLxMP9NZGC0UnwY/EdgltYWtj9M4KHBo4A5xSSQwD?=
 =?iso-8859-1?Q?5iTuA1aJHYTWsCZWY8DA8pXLvKZJ1JQTTvEuM8IbpbrRno8jBG6ATIe65Y?=
 =?iso-8859-1?Q?moYR5E6zBw6Lg6x5Aq0ZLnrJo6LVILFY9NmrJ3lTWFU55aNNhKNHYO2ROC?=
 =?iso-8859-1?Q?DWg33uVqfQKW+ujTwD2cA6G++YKf7DjPXboUXH86mY8+5LWr7P5j9nn/NX?=
 =?iso-8859-1?Q?rM/naKTXuIDenKCka9pRCss8z8mqh/55ZEg+omMHbJ9XTYbwxt5j39bQF0?=
 =?iso-8859-1?Q?WBrsZ3O/ZK7Ivhf1W9tbRzPmtf11NLOLeLU/ZsNX/0S6bOgNKiI2sCTmgi?=
 =?iso-8859-1?Q?VekH894XdE730rRlQsfenXSd1WijLNI+S0zt3XDLbiMxrobpl85Oo5swtv?=
 =?iso-8859-1?Q?mlhlKKGYhMT/LNq2GGQ+vB0R4l5YaXvd1MV0O/W2+bLnZCPDytOWjKkZ1r?=
 =?iso-8859-1?Q?HaOYaXcIOMqB6BK27W3QZ1J8T8By81QYrjyqpKmIjPEq5KkBC9/WNkufvr?=
 =?iso-8859-1?Q?I8ckv05bFQL6DypWi0S1E4Q5mF0QFemsz/Yy/hF5zy0/d5WQQ3pzbDdc+K?=
 =?iso-8859-1?Q?bVPkmdpz25p9a1XeFXT6R9/qL9iXBQf9qmhWlZKPhOnoLB26CVCeX7J8+y?=
 =?iso-8859-1?Q?IhYN1Fg/OHJamMdvSRzavLLzeU+cJhC+G7clVlEAyXqazqjFg33TV7dgH3?=
 =?iso-8859-1?Q?AL7ILO/8fQuLEzcJun7xR5yC+Cx0S5qc8UYpxzNkTHku60sm0I7tcfj9aM?=
 =?iso-8859-1?Q?M+VA?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB1835B9BBDC762CD55DB5C77FC74C9PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f261746f-ba25-4b49-0615-08da9ad9aaaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2022 07:28:08.7571
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR84MB1585
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 07:28:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58086

--_000_PH0PR84MB1835B9BBDC762CD55DB5C77FC74C9PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hmm, I can't find a virglrenderer.bb. Do I need to add something?

________________________________
From: Markus Volk <f_l_k@t-online.de>
Sent: Monday, September 19, 2022 5:16 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>; yocto@lists.yoctoproject.or=
g <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

Am Mo, 19. Sep 2022 um 16:54:52 +0000 schrieb Edgar Mobile <heideggm@hotmai=
l.com>:
This wasn't enough

i guess you would also need to add venus support to virglrenderer.bb for qe=
mu:

DEPENDS:append =3D "vulkan-loader vulkan-headers"
EXTRA_OEMESON +=3D "-Dvenus-experimental=3Dtrue"

but i have never tested this

--_000_PH0PR84MB1835B9BBDC762CD55DB5C77FC74C9PH0PR84MB1835NAMP_
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
Hmm, I can't find a virglrenderer.bb. Do I need to add something?<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Markus Volk &lt;f_l=
_k@t-online.de&gt;<br>
<b>Sent:</b> Monday, September 19, 2022 5:16 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;; yocto@lists.yo=
ctoproject.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Adding Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"x_geary-body" dir=3D"auto">Am Mo, 19. Sep 2022 um 16:54:52 +0000=
 schrieb Edgar Mobile &lt;heideggm@hotmail.com&gt;:<br>
<blockquote type=3D"cite">This wasn't enough</blockquote>
<div><br>
</div>
<div>i guess you would also need to add venus support to virglrenderer.bb f=
or qemu:</div>
<div><br>
</div>
<div>DEPENDS:append =3D &quot;vulkan-loader vulkan-headers&quot;</div>
<div>EXTRA_OEMESON +=3D &quot;<span class=3D"x_s">-D</span><span class=3D"x=
_s">venus-experimental=3Dtrue&quot;</span></div>
<div><span class=3D"x_s"><br>
</span></div>
<div><span class=3D"x_s">but i have never tested this</span></div>
</div>
</div>
</div>
</body>
</html>

--_000_PH0PR84MB1835B9BBDC762CD55DB5C77FC74C9PH0PR84MB1835NAMP_--

