Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 344C4C79F9E
	for <webhook@archiver.kernel.org>; Tue,  8 Sep 2026 13:32:27 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.103])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7463.1788874338423426342
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Sep 2026 06:32:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=Toi7a422;
 spf=pass (domain: optimeas.de, ip: 52.101.69.103, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YNah2LXLk7xfsZVl34xN/qVXOqGkKWyPAoMUBJECsPMYgObiDiVo5OEoOiWyC2U8q22Ix23Esjrli+rP1oqwArwe0HAq+kJesgoHTwErR3o88brWixQq0OSqYhZrOkX7bjHZpBH1Zpne1ooqA3JFvxCdA6JuItYy01p4fONA9JYvuSVAxM3+HvKsFLRDXXazddyiHYFpd4o8oc88QS7E+Cbhrny831PvpbXi/F+qxPkbskeIoixv6RkNLIjrmri59Jtv2FwOU9nx0914xNB6AjnffgM/yOfxo5zm4kVyk7Rl7uY+2mGcJ0V3LGMBUNpwHE7ULrXCrzY9LS5enwBQNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gRGmHOZrO5YHT/6tVoG7CrWFDwPw4JQ3YXJFwjW3DFg=;
 b=Y7BVX2+PNws0h8GkEbFTeevYEEumNTRiGsiHUdhnK9po44W5hyu06p1YyqpOyRCQtrhHIRrrRj45otNxmMirkVZmQNO6B6qU6fzwcx/4v+KyuxYwBoK+9W5r91p9l6mACVeaeLCOXenhC9G2mGoeMlrU+eZed9v1Yn72HI8y7tUbECoNzCOFsA76qF3h5NXaOLWcx7IFTimRjGFCx2UVa7hswTuZIkt4zPwxrkF1lbq4/DVBIJlvAI7BFbdiD6+44XcuMWg3Jp17aKhk9VPgIMxX+X9f+0WhLVB7qX+m7Pix5T8BkMdw4afHdGAKTYdqkrasgG/JbPjqRS4xwTtLvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gRGmHOZrO5YHT/6tVoG7CrWFDwPw4JQ3YXJFwjW3DFg=;
 b=Toi7a422qoOrFpXnv3F39BS9pzM/J9zlSQec5pd99Ajh+xx5FQVFf2kWqatz4OPwET817xhaT64cUYR8PokoG59Wl1s5K23MAAZKNwrMLMpw9aswMZeBXYxm6rsVtH6GUtAmX6XXhvWZuaJmouAp5KiJi+KXT9vOBe4R42XEvlY=
Received: from DB9PR10MB5257.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:33d::19)
 by AM7PR10MB3686.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:13f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.382.15; Tue, 8 Sep
 2026 13:31:51 +0000
Received: from DB9PR10MB5257.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8df6:d2c0:87a6:636c]) by DB9PR10MB5257.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8df6:d2c0:87a6:636c%4]) with mapi id 15.21.0406.005; Tue, 8 Sep 2026
 13:31:51 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"yann.cardaillac@balena.io" <yann.cardaillac@balena.io>
Subject: AW: [yocto] Multi-vendor Yocto distro: how do you structure layers?
Thread-Topic: [yocto] Multi-vendor Yocto distro: how do you structure layers?
Thread-Index: AQHdP3MyWjJJiuik90uc/nybkO5Z2LbEq1r5
Date: Tue, 8 Sep 2026 13:31:51 +0000
Message-ID: 
 <DB9PR10MB5257F54F8DFE8FC4D383926499B12@DB9PR10MB5257.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <CACuRGzBAnGRfu-vRgJg5-ucBWcGfHRnsPH9mJuAubJ17K-E06A@mail.gmail.com>
In-Reply-To: 
 <CACuRGzBAnGRfu-vRgJg5-ucBWcGfHRnsPH9mJuAubJ17K-E06A@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR10MB5257:EE_|AM7PR10MB3686:EE_
x-ms-office365-filtering-correlation-id: eeaa265b-3193-47b3-79df-08df0dad8aab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|10070799003|366016|23010399003|1800799024|38070700021|10067099003|56012099006|22082099003|8096899003|18002099003;
x-microsoft-antispam-message-info: 
 Rt0Ht0p3zNHJqIK5A+fvvkYDhez1mjZu34eIwETx2bMc4r1HGcHNTdEKqjtfGdO5x207wfJjY0LNKE8klTjPniqvVuG3J/dKT/YMD4hI+LBnPIC/jGgCAhmpz1RcUQ43qCkl9b9tTTfGaR2ug3JTByh5xVHJ0IP9UAxY1C/D9EtVJmwhGaRXpPDlbKTQs0yOqhQdknGKAlBoLC6WXEu92yDm5Xh/Eeuv1m8SgrjVWEPA/I/YgpJgiuwWonHyNKvfaE3Hi3YJyReqJLCKINhARZtGiwpFb/MtqvtC8qfIMzuhdODfILQL9ADbn0TcfNKKdPLpjUGyg/T3KrSdPdjrxeUuvY8j2uR0GML8z8h6ukpaKAfpbrCMEJosVgmVZSbq7o6VAccIOFr3n1S8ccNU7ic5YHIKbbI+ISV78xjnJ/BVw68ZHHLd4aUF3AxQTU5ESeP1KecXckeLbva02XMkJ7SHj/MMDUc/rTud1s6djTq42uqKGIsWMGU5Ov4W9XjuZ7sIWbfJhnWmArgGMl7ASjLn304e83jX0dctzfAKlZiJv7lnIQ7q/0t2LteKBnDqJ5/ZgOPkeg93ZuK+2NjdsAV7Ggium/bmIyJU2ty5BEwGojSRBauq+KB2Vp0HSGykLFYineSyyXHVyFPtgrKxF8CCbrbJkoJkQJI5H7hFS02GTxqJowEylcv9DDfCPoq8rTf4oqaa22D1igTScVAkNsRZAmsFdXwgYYAWuIX/Kec=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR10MB5257.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(10070799003)(366016)(23010399003)(1800799024)(38070700021)(10067099003)(56012099006)(22082099003)(8096899003)(18002099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?xvj831GzRCxHL2Lj1WGA8y6uzp+rl4/WKH+FvQ2od7A2V6gRMSHKttIyHS?=
 =?iso-8859-1?Q?1IC2FzX9F0cE06W8vgdhypveEMzdD8gBSpfwdKOn+9yioOZ6sMej/zJ3Qg?=
 =?iso-8859-1?Q?nMpmNeGsYakFBxHBbOnIs2RDOVjG4ixztK1X5spN0FQUd+REOrZMdRGwTP?=
 =?iso-8859-1?Q?+cq+FyRePQJug85IJb68eKK1YJc5pkUcstsG/Djhbf+lnk9aBRfJgD5jxE?=
 =?iso-8859-1?Q?eXIXSaQq3yU4hc6l4FpqLH2LlsCA7c0tvjH+cWh7TLng3j1YGD775euV2Z?=
 =?iso-8859-1?Q?+0DvDQ/qezwtHim+9IPdYy/gCgBcljw6kejFY4RNEOmtkPEpvOl4AI+7PB?=
 =?iso-8859-1?Q?AT/Hnm1l/MD8vFRrDjjXLZNekcNqRKvTRkiNQz339cbVOnoosa35V9zlt4?=
 =?iso-8859-1?Q?7OpvYt48qpFcFB58/g+vw0jOoNUi4UbNJ83jJyS7cYur32pJusBTKYPjxp?=
 =?iso-8859-1?Q?LxgvbTundE9Pbr6X+ck/eCK3iFHwd8q0PWy6EEys0Q2e9mtfLvXtTjJOzP?=
 =?iso-8859-1?Q?JSw2HEVSpXgRSdUzIVZhSOYYBZWXjWkAwRhm7RjCjqswWia/t8NoYh1peA?=
 =?iso-8859-1?Q?hE41ewnSTX84ZDLVdTRj22d2QvEFQg8ZUCwUno3oB7tcwoZiwaxPHdBJ2n?=
 =?iso-8859-1?Q?VVT/DiFoJBzoNDnkjAPl+0ECGYhJWQHo6eBN1wHNB1XIsE2eRJ4pdbr33G?=
 =?iso-8859-1?Q?VgrQVSAxlyAdZ/Msg8oMIxIMvRYmpH3XWn+WNZQ0vEALalgkp6I1kDd8Vy?=
 =?iso-8859-1?Q?QlGY6KwQDhYEnvz+zAKu1uvz8+D7jv27ha4IyKuusWlLSMqni5HIZeTBlO?=
 =?iso-8859-1?Q?FXIfjiSss29GzkvDZ9A6yPnhXGP7mZ2EJjwpPOLCZ8PauO8fUTAzCxbFaF?=
 =?iso-8859-1?Q?mOpmZfxQ5Gwql90zu2PaGFd9WLMQKIxLkxgfqRYTzuyrumpScNCv0fXRqD?=
 =?iso-8859-1?Q?rRUe7Ohrx47opYzAzNZeJsoifIqbmDWseU2ryerLKn+gSN+rIMRM1xhV4P?=
 =?iso-8859-1?Q?2ilhp4NPoJYcAimDPu/JXS9S/J7qdIr9upZfVcFK5sp5suryGFH5MtTS5J?=
 =?iso-8859-1?Q?D8sXs9G46F6NSV/O5l6tcvF6+e87e/hbMOicnFeTXsquShyMKP2FtDzpvp?=
 =?iso-8859-1?Q?UouKQzc3CIErLsBFK1HcHZeOUGtlLapfo+IMiUreiptAcdxgsoLneR8l9d?=
 =?iso-8859-1?Q?oeQuqtET6Z2wr9Lb0+2GXOA3Iv6G1cGb1cjZ0PUy8Yz64PQrBuLDrGiAsD?=
 =?iso-8859-1?Q?xDApiRjuRvf0/uWFP57+xmJm2ThA17u2908Ikhx/W0BlZzZ2RT4wSjT/yJ?=
 =?iso-8859-1?Q?ORxP51FTYSwbBSbUrqkuSnTeJVFzC1lM/2Ah0xzlrEiVXV8g+nyR09x2uc?=
 =?iso-8859-1?Q?KEzrAo77JYWGSEqmDcB/Fn7ViRmOmuVWMtn8Yy0XoCjwirY63nO8iPskLl?=
 =?iso-8859-1?Q?kgn3y2ncvHZ3t0NzoXRWnnINRtD/IpRZ3AbifRzM8M0/0n3kVpzv6VHqM2?=
 =?iso-8859-1?Q?xqx2wtNG+FV9WdCEGApkzWYban29+rmCFpGLzA7dzqtg6jISx70ihFJaMb?=
 =?iso-8859-1?Q?5SsoRLiyE5hefgeul+qmdu8P1juAzp0O/b6Au/9akDsD1qAF5+3a2uibfO?=
 =?iso-8859-1?Q?J0VH85dG9lRBIW73arSFyFiomgeLaKjcgW1krEYo37OX1Bez2ZengyvQA7?=
 =?iso-8859-1?Q?dkt7JRkYe/3z+6v6z/dq6XITsXzwI35zRktje2EhOID9m3lfJ5ylYD5mey?=
 =?iso-8859-1?Q?bfGvA0Z6PUqpi96K5NnjF1fjg4e5UaTMsK0PEIeTREkdWa5Ml3+0HiAeVg?=
 =?iso-8859-1?Q?yd6n30fRyJopEJxCiD6nJfYDFSCe1VyMB+snq3HahD+TE8xdZxOHPE+aQK?=
 =?iso-8859-1?Q?OC?=
x-ms-exchange-antispam-messagedata-1: xH3t02DWE/skyg==
Content-Type: multipart/alternative;
	boundary="_000_DB9PR10MB5257F54F8DFE8FC4D383926499B12DB9PR10MB5257EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR10MB5257.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: eeaa265b-3193-47b3-79df-08df0dad8aab
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2026 13:31:51.6479
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WZ/KF218FFG3cElY30EO14NgiEmEhLGSUG69Mx0HkVie4NMqfWIDifNWa40Ko1hK53DOxsPOK12Ityqj9gqUFZy98C41nZxpHUuJcYXkaFw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR10MB3686
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Sep 2026 13:32:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66709

--_000_DB9PR10MB5257F54F8DFE8FC4D383926499B12DB9PR10MB5257EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yann,

we have exactly the same problem. We have a product with a distribution tha=
t we integrate into multiple vendor BSPs.
Through painstaking work, we turn the vendor BSP into a kind of BSP layer t=
hat we combine with our distro/product layers to create separate Yocto buil=
ds.
This makes it easy to make changes to our layers, but maintaining the vendo=
r BSP layers is time-consuming. All Yocto builds are updated to the latest =
stable version (currently wrynose) every two years.

  *
I'll present that layout at OSS Summit.

I'm looking forward to your presentation. Since I won't be there in person,=
 will it be recorded?

Best regards,
Matthias

________________________________
Von: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> im Auftrag=
 von Yann Cardaillac via lists.yoctoproject.org <yann.cardaillac=3Dbalena.i=
o@lists.yoctoproject.org>
Gesendet: Dienstag, 08. September 2026 10:39
An: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Betreff: [yocto] Multi-vendor Yocto distro: how do you structure layers?

Hello Yocto community,

I've been using Yocto for almost 10 years and keep hitting the same problem=
:
How do you keep one distro coherent across multiple vendor BSPs and yocto v=
ersions?

What I've tried personally:
- stack two vendor BSPs under one distro: conflicts everywhere (Yocto versi=
on, kernel, systemd, invasive DISTRO layers)
- fold the distro into each cleaned-up vendor BSP: works while the board co=
unt stays small, but doesn't scale, because I ended up with multiple versio=
n of my distro

I now work at balena, where one distro is shared across many boards/vendors=
 with a deliberate layer split. I'll present that layout at OSS Summit.

I'd like to hear how others approach this. If you're willing to share:
1. How you separate distro vs vendor vs board
2. What broke when you tried to scale (version skew, DISTRO pollution, kern=
el/BSP coupling, etc.)
3. Tradeoffs you accepted on purpose

Reply here or ping me privately. Pointers to public repos are very welcome.

Thanks!

Yann

--_000_DB9PR10MB5257F54F8DFE8FC4D383926499B12DB9PR10MB5257EURP_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Hello Yann,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"margin-top: 1em; margin-bottom: 1em;=
 font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helv=
etica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
we have exactly the same problem. We have a product with a distribution tha=
t we integrate into multiple vendor BSPs.</div>
<div class=3D"elementToProof" style=3D"margin-top: 1em; margin-bottom: 1em;=
 font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helv=
etica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Through painstaking work, we turn the vendor BSP into a kind of BSP layer t=
hat we combine with our distro/product layers to create separate Yocto buil=
ds.</div>
<div class=3D"elementToProof" style=3D"margin-top: 1em; margin-bottom: 1em;=
 font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helv=
etica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
This makes it easy to make changes to our layers, but maintaining the vendo=
r BSP layers is time-consuming. All Yocto builds are updated to the latest =
stable version (currently wrynose) every two years.</div>
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:false,&quot;u=
norderedStyleType&quot;:4}" style=3D"margin-top: 0px; margin-bottom: 0px;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0); margin=
-top: 0px; margin-bottom: 0px; list-style-type: &quot;&#10146; &quot;;">
<div class=3D"elementToProof" role=3D"presentation" style=3D"direction: ltr=
;">I'll present that layout at OSS Summit.</div>
</li></ul>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I'm looking forward to your presentation. Since I won't be there in person,=
 will it be recorded?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Best regards,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, sans-serif; font=
-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt;">Matthias</span>&nbsp;</d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<b>Von:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&g=
t; im Auftrag von Yann Cardaillac via lists.yoctoproject.org &lt;yann.carda=
illac=3Dbalena.io@lists.yoctoproject.org&gt;<br>
<b>Gesendet:</b> Dienstag, 08. September 2026 10:39<br>
<b>An:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Betreff:</b> [yocto] Multi-vendor Yocto distro: how do you structure lay=
ers? </div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr;">Hello Yocto community,</div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;">I've been using Yocto for almost 10 years an=
d keep hitting the same problem:<br>
How do you keep one distro coherent across multiple vendor BSPs and yocto v=
ersions?</div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;">What I've tried personally:<br>
- stack two vendor BSPs under one distro: conflicts everywhere (Yocto versi=
on, kernel, systemd, invasive DISTRO layers)<br>
- fold the distro into each cleaned-up vendor BSP: works while the board co=
unt stays small, but doesn't scale, because I ended up with multiple versio=
n of my distro</div>
<div style=3D"direction: ltr;"><br>
I now work at balena, where one distro is shared across many boards/vendors=
 with a deliberate layer split. I'll present that layout at OSS Summit.</di=
v>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;">I'd like to hear how others approach this. I=
f you're willing to share:<br>
1. How you separate distro vs vendor vs board<br>
2. What broke when you tried to scale (version skew, DISTRO pollution, kern=
el/BSP coupling, etc.)<br>
3. Tradeoffs you accepted on purpose</div>
<div style=3D"direction: ltr;"><br>
Reply here or ping me privately. Pointers to public repos&nbsp;are very wel=
come.</div>
<div style=3D"direction: ltr;"><br>
Thanks!</div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;">Yann</div>
</body>
</html>

--_000_DB9PR10MB5257F54F8DFE8FC4D383926499B12DB9PR10MB5257EURP_--

