Return-Path: <kubiznak@2n.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75A6AC4828F
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 08:10:20 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.78])
 by mx.groups.io with SMTP id smtpd.web11.15773.1707293413295714636
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 00:10:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@2n.com header.s=selector1 header.b=CygQSBc5;
 spf=pass (domain: 2n.com, ip: 40.107.8.78, mailfrom: kubiznak@2n.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C4p9k0nAKoOOwrdqZQDk8BvwSV6wdOGESD66nxRENCwWoL/SiWfwGZ6nhEUz7MB4chqkjAiqPO3+FW18lziHYzv5Cz6flbh+6a3p+L32cLhfOgGXkLxnoSeeDfrHIDsHOPnavUG8Mwc9nDIt5zSvbh2nlNMukTJp640dRH64wCuioIZu8RuCkQRNhUE+DHxabLOO9rG4XFI0vm4U2UjivUlBIhnD47s73H9CsX4Nqduk36NuG7/+ftM9XARrisJKb+c1faLnifhtiak559C20QNXqxq1KC+jNQe/E4s7MSLtiWEOKJ6L8W3JKU9/12pdlUbCDRAlt/YD2M+wOAHdOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/cl6yns5wEHC0epKPBVmChllMDR1mxnQYtdE5lp6QY=;
 b=AATmjd3CO7JLf0VmS9PiX6at3wtgde73EqUBtHOFMEI5gjgF5teKBZllWUiC/L+3zkllUPO8Za8bJUOsjxinAUjfS/fcvIjC11txDUeSWY2oGv6ClHqly7b0XMey9vG2VV34wjFZv/TUhXD9zF8XFqdfGpIgF1HsiNKJe8j3fsnDavNh/hogyw9kj3OW69FBzu3cmXqYdv4NMbqX4PzmG8GKIpOitg6sQ4cEJc1HZMYUKJ/7P55YdZ5HiR9R7aXaOyRoRFLLaS2kYOMbRvM2r8HJsCjU8RTSxmnlJj4BXNOUrJc3A9HosCP2ocoP0ymtkCEhcFWJWo3BnbvmNgtRjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=2n.com; dmarc=pass action=none header.from=2n.com; dkim=pass
 header.d=2n.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=2n.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X/cl6yns5wEHC0epKPBVmChllMDR1mxnQYtdE5lp6QY=;
 b=CygQSBc5F6UlLQ0ubmewsXu1EzKlXiR5YPm16lDTw5OQbHcMe2PSehfPT6iOLvqmvJ3JXpst3lJSF1DLOh0VRLGb8j1CKSeXcUiNcQ12jroiRvTWRnMONqCooyuq6WjIFn8I3XdLP39YeD4kwYhP/r0dPrGflQuZ9u0nOHUQcC5T5iB0CqEYVK02KMQ/XEt09ym3TraBkvP6S+mqfreoyVbNgATLiNP0rXmoZoZcuNJSNg3v8pRQHMPETDqU/7RCN175mmcd9JDFMglQFl5wKsZj7SUlj1LrsdSPQC0Lyamogx4sKLgOjjVPkIYmHZJh1xCvJlB+eCfmkYD6JXrvCg==
Received: from DB4PR02MB10030.eurprd02.prod.outlook.com (2603:10a6:10:3f2::14)
 by AS8PR02MB7319.eurprd02.prod.outlook.com (2603:10a6:20b:3b1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.37; Wed, 7 Feb
 2024 08:10:10 +0000
Received: from DB4PR02MB10030.eurprd02.prod.outlook.com
 ([fe80::2fbb:896e:28fd:a7f2]) by DB4PR02MB10030.eurprd02.prod.outlook.com
 ([fe80::2fbb:896e:28fd:a7f2%5]) with mapi id 15.20.7249.035; Wed, 7 Feb 2024
 08:10:10 +0000
From: =?iso-8859-2?Q?Petr_Kubiz=F2=E1k_-_2N?= <Kubiznak@2n.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] SDK: Install recipe dependencies only
Thread-Topic: [yocto] SDK: Install recipe dependencies only
Thread-Index: AQHaWQtBwqrGCyx+qkSr1itY4zJlPbD+hqXB
Date: Wed, 7 Feb 2024 08:10:10 +0000
Message-ID: 
 <DB4PR02MB100303AAFC8994F688E273D5AE2452@DB4PR02MB10030.eurprd02.prod.outlook.com>
References: <yzLo.1707230479202311438.Hvkm@lists.yoctoproject.org>
 <CANNYZj9_iA6oSOH8wRaOHDeNVTKijnq+S8AFcU45Sny-SUvGuQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9_iA6oSOH8wRaOHDeNVTKijnq+S8AFcU45Sny-SUvGuQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=2n.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB4PR02MB10030:EE_|AS8PR02MB7319:EE_
x-ms-office365-filtering-correlation-id: d1d20679-9d5b-42c7-dbcd-08dc27b43438
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Mwe0Kc4Hh/GW7z7Zma6ZNYSzvHpJGHj1beycgdW+yeOIKO8z/efpb4hFJe/eP448xna58LQtkjlYCJbuOyGJ5F1lMlsju7fd4oVPz6bCdfredn5R6RUOK3DQ4zIjBl3+AhMU2Cgg1nON2Y2PQdRnl0hG8x8gakL8SvOYxchJ1nO9HCoXMD3JE2u8zAxHrxDcZeaWBMxsniTxHEMRBPFZz1GsXYWd8sXOkzSbNvQ1D52gV82khsB8qhiK1IRMCBdRTZ9RTAtNd/ZYR8VeISjV96anQ3bW0p/GQfkYFHHSB01NximW9tRJmFSmf3cytV7pFdN3Qj3UQkeaXY+L41N+KRHweKHdfOkJUWI49qHlqY8eEna6BlqQrLR0VLkFK6S0vX/+Z8aVhGZg+bd3ZVMFlBv5P+7451lwI5/UgmgJJVohSrXr/R1srA/Rph6pgimvF5rJVfkPKu5JRCIkuYZS/xd0tXwq9o8HefVMM0GuGk2Q+Su//zAih1nuMXs8mAnqViv1jj8vzHeQbcm75UvoEczu1jdg1o0ZYqa9klF+/YyJ+WDbENomazD7Cc5cxlWfik02PkwpomUs8iY4PAeHTKYI6HQgcbnQqkEd8fg+3Lfys/GIXIt8ahyizFdIXPQQ
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB4PR02MB10030.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(346002)(376002)(39860400002)(366004)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(83380400001)(38100700002)(122000001)(8936002)(52536014)(8676002)(64756008)(76116006)(66946007)(66556008)(66476007)(66446008)(91956017)(110136005)(316002)(5660300002)(2906002)(9686003)(26005)(71200400001)(53546011)(6506007)(7696005)(478600001)(38070700009)(86362001)(33656002)(55016003)(19627405001)(41300700001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-2?Q?RsYWbVOLH0X8Pm2l2VTMaYre/eT+Il3ZPBUB6QjOYRQ+gJYviXXSdynPxL?=
 =?iso-8859-2?Q?b+NKBaW0CK6hqqZtwKqXlyl+awbyPdp+6T4dBuGi1N7cnJ4mcsf7cz6rau?=
 =?iso-8859-2?Q?xJatDkHzJSsPn+7KQrWZ92f4YfjqnhlMrECFpWZCDV2ffpyCzgrmN7MYk+?=
 =?iso-8859-2?Q?AtSnPYwx7h0aWgcSEIY4j9gVhaPgef/xG8Bp8Axi8lLU/OSel9Zh8NIKsW?=
 =?iso-8859-2?Q?JJw7OTVfm2I9MFwq4cEfuT037sVSZc4l/ljGYb/XD8KewKL/tp1UTNviZ4?=
 =?iso-8859-2?Q?BkdyoXeSpLypwQx/HL9Q1me59Hun6cvlr6XAXg/1wMrzgWoijLavU4MBRm?=
 =?iso-8859-2?Q?aOZq1YBmYy23Wf+htBvFmsAQLXk3lNta4eYZZBKqbXWKU7+bKX2M+2ucJh?=
 =?iso-8859-2?Q?Vb43v1dFd0+h7uel+Eecn2pn/w5qqWPUWcqZyfchrAh/NNpqbmYgp8htYa?=
 =?iso-8859-2?Q?qVbjO+XQnmYAE3xkxR76IwORnLR5iCGoqcNcsYpjwjwhpdAoP6QXfZrv6X?=
 =?iso-8859-2?Q?+4IqCQM/esJNgVaCgmF5jl9c3kbNouxN/AUz9D3JZFPzd8M/AIwx1vriw8?=
 =?iso-8859-2?Q?hqMvYMtP2EQIXuC/mCysc+05v8uURHkw81LPIDjN3ZEqvTqhRqMEkaRZDz?=
 =?iso-8859-2?Q?KYu6YGE0iX9sVnudJK3l1lMtXT8u20ppX3f75zeXRGqqeUHopJDXhn52uG?=
 =?iso-8859-2?Q?ZM3LZeZVQOUEp9IFiw0NQngE8pPtEz4v5bUeGpyjQ+5nwlrV3jTdxGcl6/?=
 =?iso-8859-2?Q?msF8tMdy2dOuOCZhoHhLaplaItyoAPnXeEhXcbdFnxsDcSaN3/zfAOSekX?=
 =?iso-8859-2?Q?G3/5ClaALfLBFCTbCMsEuGLgvOSx/PH2Yz4s8psltU3wE3piUv98zUdU1Z?=
 =?iso-8859-2?Q?/fZJfTu6lndbLxljn/hf+5+iXv+zpyH6B9fhA2/5hhP5fy3HlasIc0SieV?=
 =?iso-8859-2?Q?jK+hxeqw78ius3iAEXy2aDca2urgF1urWDVMQ5aTEKbp0FoD+qoZ+wkgd3?=
 =?iso-8859-2?Q?o/u0SvSNaqVXXgw7cWjP9+uTqQz9uJhBZqpsOMphWUgVFr6co0x6UBJTRZ?=
 =?iso-8859-2?Q?SNjVUhE0zln3us8ebdHXirNxUge2PkJpf3m/sSIQDKjorblF8QUDj0AnlK?=
 =?iso-8859-2?Q?aYp3LQgxX/ZiCnu5TYii1V/y5vGzWrh7YIc48UVemiFzPhR9N7FVGoeIE/?=
 =?iso-8859-2?Q?I5HX8cMOUuls8NjsG3o0IBzFLmxCyKsnsX+3GmtUnKdN/gE1ZVAyEtgN+f?=
 =?iso-8859-2?Q?q1NchLqxerkA2vvJvk61LV7ghaK3oupD9w2r8WXXqVh7iPWDJz7ufWrcWG?=
 =?iso-8859-2?Q?/3UwUdEqb1DEEskulwIbIO+cmaOJxHePj6XHrW4qrcJ4/0YNG3O57UypJR?=
 =?iso-8859-2?Q?ekkBZp1oOJ5IDebxrfPW/TYD70A+1604ogbWxNn+D0TqcQN/80o4R3bTuN?=
 =?iso-8859-2?Q?Cz/12b8kvizRQRfe97fUjZbuosew/s5dThyZ90x8Ny4FxF/VXMBcOZhGQI?=
 =?iso-8859-2?Q?f+IaBbM+dNDUBfc/7EAIDGUm9uxQKcTkDt3hQCtybExmkOsPzKGBCUKpyR?=
 =?iso-8859-2?Q?qmKHrDcpTx1KpQb5eeVLV6rZ9ILo257wNqOo1Izz5SpnaYTRA6MycVY5Vj?=
 =?iso-8859-2?Q?a4Hid6QLP/GI0=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DB4PR02MB100303AAFC8994F688E273D5AE2452DB4PR02MB10030eu_"
MIME-Version: 1.0
X-OriginatorOrg: 2n.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB4PR02MB10030.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1d20679-9d5b-42c7-dbcd-08dc27b43438
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 08:10:10.3288
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CJqueMFOX1/V5VhOFq7zhPuK0rS4JDJ+GE+jEOktSFOewdJvzfbD4UrbE7PbsuFG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR02MB7319
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 08:10:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62413

--_000_DB4PR02MB100303AAFC8994F688E273D5AE2452DB4PR02MB10030eu_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Thanks for your suggestion. I am aware of the direct SDK workflow, but this=
 is limited to the Extensible SDK. That is sadly no option for us, my quest=
ion relates to the Standard SDK.

Petr
________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Tuesday, February 6, 2024 3:46 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; Petr Kubiz=
=F2=E1k - 2N <Kubiznak@2n.com>
Subject: Re: [yocto] SDK: Install recipe dependencies only

On Tue, 6 Feb 2024 at 15:41, Petr Kubiz=F2=E1k <kubiznak@2n.com> wrote:
> This works somehow, but:
>
> 1. Dependencies are not defined right in my-app.bb, where they belong.
> 2. Runtime dependencies of my-app are not installed in SDK and need to be=
 further explicitly specified in `TOOLCHAIN_TARGET_TASK`.
> 3. Native dependencies conversion is cumbersome.
>
> Am I overlooking a mechanism how to identify and install all dependencies=
 of a package without actually building that package? It is clear that auto=
matic runtime dependencies resolution couldn't be performed but perhaps all=
 provided packages (with some exceptions) could be installed. I mean, if fo=
r example `harfbuzz` is in `DEPENDS`, all provided packages including `harf=
buzz-icu` can be installed.
>

This might not be suitable for your situation, but I strongly
recommend you look into 'direct SDK' workflow if your yocto is recent
enough. It was implemented exactly to fulfil the need for an SDK
environment that is accessible directly from a yocto build (with all
the possibilities of updating and rebuilding, and adding more
dependencies etc.).

Alex

--_000_DB4PR02MB100303AAFC8994F688E273D5AE2452DB4PR02MB10030eu_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi Alex,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks for your suggestion. I am aware of the direct SDK workflow, but this=
 is limited to the Extensible SDK. That is sadly no option for us, my quest=
ion relates to the Standard SDK.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Petr</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Alexander Kanavin &lt=
;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, February 6, 2024 3:46 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; Petr Kubiz=F2=E1k - 2N &lt;Kubiznak@2n.com&gt;<br>
<b>Subject:</b> Re: [yocto] SDK: Install recipe dependencies only</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Tue, 6 Feb 2024 at 15:41, Petr Kubiz=F2=E1k &lt=
;kubiznak@2n.com&gt; wrote:<br>
&gt; This works somehow, but:<br>
&gt;<br>
&gt; 1. Dependencies are not defined right in my-app.bb, where they belong.=
<br>
&gt; 2. Runtime dependencies of my-app are not installed in SDK and need to=
 be further explicitly specified in `TOOLCHAIN_TARGET_TASK`.<br>
&gt; 3. Native dependencies conversion is cumbersome.<br>
&gt;<br>
&gt; Am I overlooking a mechanism how to identify and install all dependenc=
ies of a package without actually building that package? It is clear that a=
utomatic runtime dependencies resolution couldn't be performed but perhaps =
all provided packages (with some exceptions)
 could be installed. I mean, if for example `harfbuzz` is in `DEPENDS`, all=
 provided packages including `harfbuzz-icu` can be installed.<br>
&gt;<br>
<br>
This might not be suitable for your situation, but I strongly<br>
recommend you look into 'direct SDK' workflow if your yocto is recent<br>
enough. It was implemented exactly to fulfil the need for an SDK<br>
environment that is accessible directly from a yocto build (with all<br>
the possibilities of updating and rebuilding, and adding more<br>
dependencies etc.).<br>
<br>
Alex<br>
</div>
</span></font></div>
</body>
</html>

--_000_DB4PR02MB100303AAFC8994F688E273D5AE2452DB4PR02MB10030eu_--

