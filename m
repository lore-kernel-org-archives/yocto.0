Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 412C4ECAAD3
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 16:55:02 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (NAM04-MW2-obe.outbound.protection.outlook.com [40.92.46.87])
 by mx.groups.io with SMTP id smtpd.web08.1399.1663606494353763709
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 09:54:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=hBNgRo6k;
 spf=pass (domain: hotmail.com, ip: 40.92.46.87,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HlQW3D9Bj6cuUUTOPUefK7FXTXgUY2P4nKDcvwB9yF+Tb2/Wua7ALFObfjTRPPkdoa7WI0Ml5SC4tIERdTVXzf3xnlDIgvP8eBt1W0VuI0gHM8ryQNNe9BmJ3XJfB7qktwqoT/+0NmtenIfP14yWKeeUU5QSVF4TboZxzpyD7W4NymFkSvFuvm0T6iNLgubFW5gaYqIc9w6+kJv6OhJTnwrrX+5Z4U9dHjo0oYJMA6EoLZ9EA1l8aRcFY0aXKe6NI3XM6XvL/08rddQYSq0Qr1snjeLc5CsiMUA5X4opqscd/fRI9EVy15uKvZVuxA+GMcij5uT0zwmcKnSA/F0tfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=di3j6P9L983l/o/ykig3FufsqLRozJaSwXmygVJczcg=;
 b=GzeRg7ydobxRAuj+QgXhij/b4xSctb5GJO0CsyWkASi5BewGfRxMwmTME5B9VlIP0qsApfsOUaX+JLi7kOGGJ3NPH6WI56aQl9p4fadkPaEeRPLjj5/lcebYjr3d8eElOZPhjSSZHp7RZU/nSdV4Fz/AQ/GHt50niQu2osb1nVwTJxDucMKT/7k3ZH4eCn4v7fjYXZJGwz+QVdNLywDS30qnx1vYYug/Po+2kWgOcxGTWw9uFUtD3zU4WoSfygHeOU/z2Pt2zw3QXuI5NmGmWC3bTykhrR6HbQaoPmS0zIvoPxzqvJt1J0YpmtL2TnB5SHclW9elFMMz+z0W9rORGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=di3j6P9L983l/o/ykig3FufsqLRozJaSwXmygVJczcg=;
 b=hBNgRo6kOlfeF4qPb91lb0yfjNvnojnwocNhrJXrWQX2uWWwhyRW/d6poR1h787NJlSCM+5KjtgL6qImUuhDT9si+Dm0SBCtgK0R4MrPfX/N2tJHjq00kkHKnEKpPHzBPT+wtv7CQ0JIt8ch2XSsTBqhA+XAMpi+RdTuydGXu2B1lrL1wgFojBrDb4SCdrvt+jfSQM0hP5DlAtHEv8T0iy3FoCUjZngObKYDU4dVzWzbUa/C+GEDNttJ92CNV8M5iChpu/f/m0IBS18tLJffMOLkNHjlszuXy4qx5hxWDHRr+NyPAlGbMqVHfRLBONyRjpCCk28FqrzIz1hQQAQAlg==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH0PR84MB1761.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:173::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Mon, 19 Sep
 2022 16:54:52 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5632.018; Mon, 19 Sep 2022
 16:54:52 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Markus Volk <f_l_k@t-online.de>, Alexander Kanavin
	<alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
Thread-Topic: [yocto] Adding Vulkan to core-image-weston
Thread-Index: 
 AQHYycEskKLcduGixUqgdEVWou0Ata3h+FKAgABURlCAAP7uAIADFZtOgAAOLYCAAEOZXIAAEcYAgAAB7hmAAAvIAIAAAptVgAAB2ACAAAEYX4AADs+AgAAR1oCAAAQiFg==
Date: Mon, 19 Sep 2022 16:54:52 +0000
Message-ID: 
 <PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
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
In-Reply-To: <P5UGIR.ETKUECS9HZXY1@t-online.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [NvuxnXCJ+QCdFLEd801bzRGvmqx1OxaO]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|PH0PR84MB1761:EE_
x-ms-office365-filtering-correlation-id: 1aeca38a-95f9-44b2-9f54-08da9a5fabc3
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Mle3xNs+gbGswR02zEBgM6JgI9oKwUisxayRuyRdaLLw06DTtV6NjhdI/BGIEoK1TxzNsaqeTYXH4aJv7qcUDizUa5o0+v9t+N/RuEWBy2CuG6fFzdx5RheVFkHmAkgcpvGjgzrBah69e/5bXX1qq+mUB0xdfvob71sE8Gq8cu1/1jvPm9iMs2mrCPnu+uf3Yn7jrZ7mrS6RLsBR6wiA5mSUh8Mkx5M6tuBAhjf5BTZitzVtS1ImXOGM+pVZyLZLmc0k5sMRO4NZVMHdkIiRLgd4Xr6MZjHuDMlzvG4h7mTtx0kI1mlaomF1bEQ0ivpsdudNpaxlDVtQreyePDNO0coudyt1l86BWn875+SnyzRcFFNminWiiaidTfVvlkvaVVzk85o/UQZstx3UWHSKyBqoo7Ux4r+LEsoUbi+6IiGwT97f5fpTYfjjdsDe0iwHWqo4/X15Oq+q4pqrt3maH+iCxDCOmFM8IyIdqmL9H/x3HYsf5m5ZXup3UzLTLFLVWfWetzby4FF/DtZPMOs+K/iqKZPPNjOV4BAONJahM/8TxQTxvlq9UD5mClZqEbbkvMM0kTYKHmvGhES0aVzDUyo+IDbdL3Spr8EjG7s1Rs95h/3hqtEMTw5lGx0yACuQb6RqhwHw87iodTvjZLgnGDu20mnxtMM8lhm0ZmCdNgtfi5HJ+QqiOJyMS/pZLy4D
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?nc/+JFZc40zVz2h/51+iO8znpWdOHA4w8PQOwUgqvUm+6H329gaQdUNN3D?=
 =?iso-8859-1?Q?BLGftwcLlmp5p+hWaxHDN0tLmKo+Ch5lsbMyNJVD3bkSKnlI/QWd7RtSGg?=
 =?iso-8859-1?Q?WeAO+4QlLb+Ter4Qowwf3ofStKDuRJPAQfY5f1AF/cxTiWKUZCYsl74TwG?=
 =?iso-8859-1?Q?uwOmSRA/BsTWSx55jBTthLuvK/x+WwL3WZXq1chQlQCwstoLIcnYXAcugA?=
 =?iso-8859-1?Q?/4p9ED59OPja+Yml+fW/cF2G7+AxO86UUEjJCE92DLUS2X+CoyT23UdyXD?=
 =?iso-8859-1?Q?A92xmeMOQKWmicfRLHBDL3RuPYlWcyg/l5TszGGnnGeK7DCYM3rmzwC9yu?=
 =?iso-8859-1?Q?xc2z/V1cNpRQSWGnGvGWqPRRfS4hNS71HEF3xLueqb4Q2IhoBOmt2AFuJj?=
 =?iso-8859-1?Q?u3wLnQZKWNh47MWN6/fQYsTVLKXg26KnzDZIaW5ErOZZ1i822/6ZGOnrp5?=
 =?iso-8859-1?Q?mZXe63BYs64QkdXPIL0G1Dw97/hJ83pyM5e6R9jf7OpUTp8/HYN+ILf68L?=
 =?iso-8859-1?Q?5sQFfXsUTEhXw4//SD7nnSJ9JxJguZZ4KIkd6pU4MBR1p+w/MbPQ4aXUAp?=
 =?iso-8859-1?Q?FceJymCD1pPIFi0AG0to8E7eMko980L6g/jv4DwpC8vdV0MgHdzoB6JUmq?=
 =?iso-8859-1?Q?viVXBpvxRTRH5ICzOjJxfyEHoPaN45wzbU7V/oZTYOhUBaRXvGYWoO3c65?=
 =?iso-8859-1?Q?ZuuyTNVYiP++6+GpC5ZYFZ4xtNNfLucPYUnbKrLpTB+C2S1HUA7bkVhSQR?=
 =?iso-8859-1?Q?FsBNfHfC6qLqt8K2zm/RGpEJzI46id2o4axSYWglmDNT5wADRIVYY6gOCr?=
 =?iso-8859-1?Q?OzCMAaC9lrDzEV35xBfErZXBKm19X8XgWRI3k3uK+EnL2Vsi4+ax+lSPBe?=
 =?iso-8859-1?Q?L+MxlBM3eSCDrbgjqWqTIvxxlY5/VICdSRDRYqWOEGMhzBpJ3BtiH64h11?=
 =?iso-8859-1?Q?PWg2E7NCVI1W8JR6IdPvTo8+F8Me5nD80dxOq3hyDvMVRlGE/3rWaSNr5R?=
 =?iso-8859-1?Q?YwIpPGN8+nlAE4VusE826EM+uZEcUhbiriByjIHfj5UlufKl6rAnRlAdWk?=
 =?iso-8859-1?Q?8oBoiUqk5Le0jELK1TmNwRs9Q2ckRrY7GL4RMK6VnFrRUAeclipi2VpBOi?=
 =?iso-8859-1?Q?4+RUR+fkwYVVwwh7lAtC+1VmDWNIlGDZTZO1tI1ULXIIwTD4akErvSQgA3?=
 =?iso-8859-1?Q?S6mNhUvmdO90WcmIC/QK5nampfiR0xvD8cnnZOrLX8IEuOG175A21cptjr?=
 =?iso-8859-1?Q?rlA2PkunjlQoymo1OVpJtw73jqf875bmwF8ktCq3TSfKjuFSIcFlzmebRa?=
 =?iso-8859-1?Q?+q0s?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1aeca38a-95f9-44b2-9f54-08da9a5fabc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 16:54:52.0015
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR84MB1761
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 16:55:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58079

--_000_PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

My current configuration is

DISTRO_FEATURES:append =3D "opengl x11 vulkan"

This wasn't enough for libvulkan.so.* to be installed or vulkaninfo to work=
. Only the simple weston egl examples work.

I also tried adding virtio-experimental to VULKAN_DRIVERS in mesa.inc, didn=
't help either.

________________________________
From: Markus Volk <f_l_k@t-online.de>
Sent: Monday, September 19, 2022 4:37 PM
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Edgar Mobile <heideggm@hotmail.com>; yocto@lists.yoctoproject.org <yoct=
o@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

Am Mo, 19. Sep 2022 um 16:33:11 +0100 schrieb Alexander Kanavin <alex.kanav=
in@gmail.com>:
You need to check the Mesa recipe to see how the build options are defined

mesa builds vulkan support, if you add 'vulkan' to DISTRO_FEATURES. If you =
need to, you can add additional drivers with a line like this to a mesa_%.b=
bappend:

VULKAN_DRIVERS:append =3D ",foo,bar"

--_000_PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9PH0PR84MB1835NAMP_
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
My current configuration is</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
DISTRO_FEATURES:append =3D &quot;opengl x11 vulkan&quot;</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
This wasn't enough for libvulkan.so.* to be installed or vulkaninfo to work=
. Only the simple weston egl examples work.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I also tried adding virtio-experimental to VULKAN_DRIVERS in mesa.inc, didn=
't help either.<br>
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
<b>Sent:</b> Monday, September 19, 2022 4:37 PM<br>
<b>To:</b> Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
<b>Cc:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;; yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Adding Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"x_geary-body" dir=3D"auto">Am Mo, 19. Sep 2022 um 16:33:11 +0100=
 schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br>
<blockquote type=3D"cite">You need to check the Mesa recipe to see how the =
build options are defined</blockquote>
<div><br>
</div>
<div>mesa builds vulkan support, if you add 'vulkan' to DISTRO_FEATURES. If=
 you need to, you can add additional drivers with a line like this to a mes=
a_%.bbappend:</div>
<div><br>
</div>
<div>VULKAN_DRIVERS:append =3D &quot;,foo,bar&quot;</div>
</div>
</div>
</div>
</body>
</html>

--_000_PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9PH0PR84MB1835NAMP_--

