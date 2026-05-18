Return-Path: <ext-antti.garding@kempower.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01B1FCD343F
	for <webhook@archiver.kernel.org>; Mon, 18 May 2026 05:00:17 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.85])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.1751.1779080408822158099
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 May 2026 22:00:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kempower.com header.s=selector1 header.b=aAv+gEZN;
 spf=pass (domain: kempower.com, ip: 52.101.69.85, mailfrom: ext-antti.garding@kempower.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=es1COukxdeNft2VEAiN2yxM7qFTcWs534fvPsw6srAq4ihwGJnuybzH+vDATUSkoRgg6IBnza8A2Mkmyd2V7+pq+XveEQ6VJ9nAJWAtWEKpGpP4lOOt7bk4jWFcBBMAJ4CZ+K2MGKqjwwRSAqH3DvqtdMQ54geuY1UJ0dmGjIEkNjffL+hhOXrvj5NJC1VNh9xdoXgzLZWho7McrTjOJUfrgd+SEQmtN5GoxEFyhR3acH/FW7rOudRz72JbmI5YX2XpwEPDNN6TIlI4vyRdbB8DbAaHcAooCuW4CgRytZDMzsjlB5CyPnV6IB6Ud02fMukEV/uz558s+RPYh7DSUPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lt3aMM5OmhKVv/84qsI563hhG9HNHV2SOQrlFc1QcSc=;
 b=QagcK0hNhpwdmitUVyC9/Byh5qEo1YcR9ndU6l3GIVJtMMAQ6t74nz8NximnKXQyBJ1lAALg9Ik04tremwjjBeDIiHXcf2l1InW6ruldoo2UIMRXy27fK7jnhchcRLUzqG2cNzYgooakvdeqBzocgkn+7qjbTOhraC6CHpSJsRQka4qcZTohe8cCmSYW7F5443AxH9Dj31LoIarv7nc1CEjXF29I3lIxHy5tle+fIH71xi9HGHt2Po7k0JcJ3COln4y5HLK0MZid/18EKdxGdw7DwUfqb1ZFbAsgWSCep0fsuiFz7CYpuwS2TCkR6HeBNieK8sotdBmhpaPLTkVDCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kempower.com; dmarc=pass action=none header.from=kempower.com;
 dkim=pass header.d=kempower.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kempower.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lt3aMM5OmhKVv/84qsI563hhG9HNHV2SOQrlFc1QcSc=;
 b=aAv+gEZNKavF8vJx4RRJ8m/d2oF64dmirKGeBYYJIHBzjZYBknk3nu1d6rj5rKL7G7/FcLH4UiG8kydUR9eUxgrTYqPW7Z7kY3yVJKmlzgbmAEjvMRGKgoLjy8wnnCRg/8TbFsPRhlKqypwMmf1x0y30XOx72a87rj4ZQt1PCf/esJE/AC678238KWMHO3wUyGY9MG/1SrNFRqfBYw7cFgP/TcSuGgPm7cZkxu29dJna+hc59KBFnHzCfkNZQCfLgwwSrzwzvYktW+AOzr48QPj6mcT5awcT225Bh3xztEbJvSj1M/C3Vt1xyqjoz/ZjgtYWqMe+yo57AP+8EIRDjw==
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com (2603:10a6:20b:342::22)
 by PA6PR08MB11582.eurprd08.prod.outlook.com (2603:10a6:102:522::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 05:00:03 +0000
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d]) by AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d%5]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 05:00:03 +0000
From: =?iso-8859-1?Q?EXT-Antti_G=E4rding?= <ext-antti.garding@kempower.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Topic: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Index: 
 AQHc4hww6A85r090PEm7Pqr9xvkthLYKfb+AgAANdWSAAAUsgIABWqPNgAAQGoCAAADOM4AAC1qAgAAAVy2AAA+cAIAAEL/i
Date: Mon, 18 May 2026 05:00:00 +0000
Message-ID: 
 <AS8PR08MB72516677F87CEF721A3C556FD5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
References: 
 <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
 <AS8PR08MB72519BF260608361FE603E29D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj_VGh3G-b6mWPqJO6WukwRhkh3Gvjffk3GXG8D05ezeOg@mail.gmail.com>
 <AS8PR08MB7251A410724D0D006312018ED5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj_7Q_aS8yp+ZR3=9xTjHUsJyxL8ep9K2qO3RwSMnFUvoA@mail.gmail.com>
 <AS8PR08MB7251477F2671A0E8F6E86B49D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <7d648b16-f9dc-479b-9473-06bdb0c0e63b@cherry.de>
In-Reply-To: <7d648b16-f9dc-479b-9473-06bdb0c0e63b@cherry.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
undefined: 1579173
drawingcanvaselements: []
composetype: reply
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kempower.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7251:EE_|PA6PR08MB11582:EE_
x-ms-office365-filtering-correlation-id: e0490ac9-f969-4b8a-0e38-08deb49a5249
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003|8096899003|11063799003|4143699003|38070700021;
x-microsoft-antispam-message-info: 
 +u61s+4k58cFDPZrX2on1IwUqnBge1ljRnyVPXdTcJ2XmGBN+VKH8yo+E985AQeORKvKO4/jXbb66Vbe8GhuxchjnbH0sEto2dpjbT2Qw7DA/ZPll5h1Qx4Az1PFLBGN3bwfrr45Ul3ee15tUCKy8ox/95XmNg1renWtdtQZMl4VthhuUAuf1ci2pW3Ns8+A/rOXgefD4wt7P/bYOGhUKj2KOFeJh9Z2hMasEQbwo68ufQ3PpD51R9zu5GP/lA2FrDrjf7iaoktXAGlb33/LFcdRDv03E9SSvmeHX9Te7uoO3GAQs7tvCgRs0AJvSPjVq36b3QcwcX25Z18HTzujLUKu+JZQAzsOYrIL9Mcb4JEjQ/HjQl3jSdlFW5vVp6BWdlGKeXMvOpu5ok+IYMSeD/yaNLGXnr+SvBjyWGlfFYH95MJdOOsjFM8g5QDkV5kRTgWstP1CsONKmpeZRk/hgZOcpyWKQPOlUtJqQ1DZx054iUXUDhdeHO5ERtOMlf3P3wQZd8iqSdoYbfVrt/d3Bu9F5BH3JP428fiSg0h9kKofpsU9KQkY0EKFgjfIBXOZlNFK0oA+NI2lx0fhpac7DuhC+4NA43jOT0xhvKyeUhaXSF6wdxrNFs4dI5hPrKawOZDm2sRfuiIGuww1zldr4SV8/eMHoQm9aTECyx1d68HA4B+CgUXPzLD1y6/xau9KxQAXVDPsYU4Pa3uzWvjoCB6oy39Clvo8Eq772FuFY/ByVeeI0gEhGpTaXgZxQzcd
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB7251.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003)(8096899003)(11063799003)(4143699003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?0/VLgpG3YU6ascH0Ksc8A2FggMH7HtMp2Drt3Yp8ugU8XcQ++1Ir/0fHmq?=
 =?iso-8859-1?Q?BT0mbitD6tYyhlzWG+kXDMj3mtn6CkSYK94lXHdpLAlWp+EpY+WCQvzCdh?=
 =?iso-8859-1?Q?MnmPM6vfN6z1hyW/yNOi2mwiEgnLwMWJu+HRfHCNS0Di2q76JUfUz+L+k+?=
 =?iso-8859-1?Q?Vm9+xNxi7lpuKgJcix8VumEj/mJ6nRMK3ksx8/pdmDhB1YF5oQuUFkeTut?=
 =?iso-8859-1?Q?NzqXegrOZfAEVsNinUVEqYuA1RyPJCX7tSob+1KEP6PVJyKvhVp6rh00w7?=
 =?iso-8859-1?Q?QIBApr/dziKSS8lNfYz8v8/KGqp6qKeqyyXQzvwrhQ45eQVAbKs6mupx50?=
 =?iso-8859-1?Q?M4F0e9XBLVK61/rfd38HlSvRKLY9rFcRCEkTHV3bPqZ8q+AcEeCzZ0NW7g?=
 =?iso-8859-1?Q?Zl7j7E96hnBhTA3TwD96Ci3x4p/I/LJn0N3MfsPPt8IqOvW/djdMXck6KN?=
 =?iso-8859-1?Q?W3MXnCiq9dXE/ZG8uDooWYbzSrO08R0rgdI8EwSG6ALZFLfnInEmh8Mqgx?=
 =?iso-8859-1?Q?LWRjadEDqvdYbtY2aG9HCL/0/iURfVRgg+8hB5jiPU/2+ZFQSZpVt+fCYw?=
 =?iso-8859-1?Q?SOzy7hLzzqAtDBGFqYg3VIU+NsJEQnv1oc5tUfjq8Jd5OYN22WBbyaXYSB?=
 =?iso-8859-1?Q?iuCGUcDX5y+peALSXvFtQGZgzBRCPxDdiyeKrr3Hyf9Ad5F0lzOlz3vx7L?=
 =?iso-8859-1?Q?cBPJ8C3fmxwVwXkon7qrbFgk2FfKKbM7JXnjK+fpIc116jV41wT8gMADEk?=
 =?iso-8859-1?Q?i1m/J0EcuN0QnM4M9RdXCSn9G4loViFeFBUBKrYyZU82mDVxNMR+OUkVr4?=
 =?iso-8859-1?Q?a01GrsLsMzThTUpXPQUDYYt7ADYMia1+lZeF9nvDG+VA3gp7SlKcEdT9hR?=
 =?iso-8859-1?Q?u/a/Gzrpq1Rv+9NsJL/uCxZuKq6UpJXIWmEC8HY0UCT1+tEIU1Um6ARb3r?=
 =?iso-8859-1?Q?l/hWzw4FVlug2z8bubAxvNSxUCfGNisLUdv+PGLtW+3hgpbrTh6V3FEcj2?=
 =?iso-8859-1?Q?TUUImums/AW+puOyr9EU3P4ihIFvgrgCAIMxc10i/9xEGM0Og0XYizYAdR?=
 =?iso-8859-1?Q?xVyEmEitE7vgJr8ver5xC5jgls8Q/njAExvAAMBzIHNe09pBjaY86Ccwxt?=
 =?iso-8859-1?Q?w3MTgYVEaJYDGUtDKC3mDNtWngbnB04k+RSFuYyUQND2dfM0zWZOBLis2N?=
 =?iso-8859-1?Q?5AqUvM7Jqtw5wkeEEeNl0Y460Cs9ed4Eh36PdiuON/lCJnqpbNBBPe49W8?=
 =?iso-8859-1?Q?HRB9FI2XPLeVwA1CnFo9vIQq7XsGZFkbett/Kv6+rTW8XtIGWdgbHyg9eV?=
 =?iso-8859-1?Q?XToGRPHMBaFFgytfa/SRysJVJ99C8pg3HnLw4TrVfEp2M2iEGDTQIKOOEx?=
 =?iso-8859-1?Q?T4wj/UT82EdjSqcoW+LQBwo/QFOP78fTI4lci6l0Pvvona2slAkFu/AvfV?=
 =?iso-8859-1?Q?pPGSKgrMii+ccRcLzOErVjIjF3638HkJgFB+viRsnelG+DyMcIHsZBBkgq?=
 =?iso-8859-1?Q?EqVvYHboYVM8e+x0N1AHjanbX6aaIKl0ENYJRGZtwFOY0onOmNr0AYFJIW?=
 =?iso-8859-1?Q?oOki1CjavZ6cFw+RGM2kF0XE0JRDvO4XkvFkoXQDkYP7NtkOvF/fyHPOsm?=
 =?iso-8859-1?Q?HpZKckjxbYaJe1CVKxoXQyNljPlE1OC/YBEK9yi9AO2sj3OGLDyLFbtJkN?=
 =?iso-8859-1?Q?sVFTguCY/GasV1e3WtjlsBJ4iUkQobfA+3ICOibmsbDZEONEfPOw3z/jts?=
 =?iso-8859-1?Q?mwSTJe1JHlm7Yt+WKvH11pGVouka4x/+klWsrsyHxdGSej79CeTb2XTojk?=
 =?iso-8859-1?Q?tj2+sFvnY2nT1//Qhd3Hat427GXwqi0=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB72516677F87CEF721A3C556FD5062AS8PR08MB7251eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kempower.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7251.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0490ac9-f969-4b8a-0e38-08deb49a5249
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2026 05:00:03.1278
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08631c2f-66d7-4254-afbd-4f0e104d509d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 95ZjcAGoSEiHM25F7q+iGxYoLKGeMiIoBWnT2nUupSFHogrI+aU3zviJCFdxmb2AoxE8Zceei26WMo3x2cDTn5cZHczWdal6PpK4bvvjCYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR08MB11582
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 May 2026 05:00:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66572

--_000_AS8PR08MB72516677F87CEF721A3C556FD5062AS8PR08MB7251eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I tried Quentin's suggestion without the part concerning PLEASE_ADD_TAG. It=
 worked and it didn't give an error when I removed "inherit src-uri-tag" ev=
en though the reference to SRC_URI_TAG was still there in SRC_URI. In that =
sense, it solved the problem, but it is a little different kind of solution=
 than what I was looking for, so I have to discuss with my team before I pr=
oceed with it.

> But the *only* thing you want to do is modifying SRC_URI but not
actually modify it, I don't understand why this is an absolute
impossibility and why you must find hacks within BitBake instead. This
all sounds like a horrific XY problem.

Now that you said it, I guess I have to admit that there is some sense of X=
Y problem here.

On the other hand, I think there is a difference between modifying SRC_URI =
in the recipe and having it modified by a class during the build process wi=
thout changing the recipe. I also think that there can be a reason to want =
one and not the other.

I already had a solution that works well enough, but I wanted to see if the=
re are other options because log prints from extra invocations of an anonym=
ous Python function look weird.

I also got curious about the event handler approach. I hadn't noticed it be=
fore this and there doesn't seem to be information about available on the i=
nternet.

What are you referring to as a hack? Are some of these approaches that have=
 been mentioned in this tread not recommended for some reason?


BR,
Antti G=E4rding

--_000_AS8PR08MB72516677F87CEF721A3C556FD5062AS8PR08MB7251eurp_
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
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
I tried Quentin's suggestion without the part concerning PLEASE_ADD_TAG. It=
 worked and it didn't give an error when I removed &quot;inherit src-uri-ta=
g&quot; even though the reference to SRC_URI_TAG was still there in SRC_URI=
. In that sense, it solved the problem, but
 it is a little different kind of solution than what I was looking for, so =
I have to discuss with my team before I proceed with it.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
&gt; <a name=3D"x_x_x_x__MailOriginal"></a>But the *only* thing you want to=
 do is modifying SRC_URI but not<br>
actually modify it, I don't understand why this is an absolute<br>
impossibility and why you must find hacks within BitBake instead. This<br>
all sounds like a horrific XY problem.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
Now that you said it, I guess I have to admit that there is some sense of X=
Y problem here.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
On the other hand, I think there is a difference between modifying SRC_URI =
in the recipe and having it modified by a class during the build process wi=
thout changing the recipe. I also think that there can be a reason to want =
one and not the other.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
I already had a solution that works well enough, but I wanted to see if the=
re are other options because log prints from extra invocations of an anonym=
ous Python function look weird.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
I also got curious about the event handler approach. I hadn't noticed it be=
fore this and there doesn't seem to be information about available on the i=
nternet.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
What are you referring to as a hack? Are some of these approaches that have=
 been mentioned in this tread not recommended for some reason?</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
BR,</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);" class=3D"elementToProof">
Antti G=E4rding</div>
</body>
</html>

--_000_AS8PR08MB72516677F87CEF721A3C556FD5062AS8PR08MB7251eurp_--

