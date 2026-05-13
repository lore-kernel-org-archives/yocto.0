Return-Path: <ext-antti.garding@kempower.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A620CD4851
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 15:07:36 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.81])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.9956.1778684851296518166
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2026 08:07:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kempower.com header.s=selector1 header.b=aSN5OYso;
 spf=pass (domain: kempower.com, ip: 40.107.159.81, mailfrom: ext-antti.garding@kempower.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FuX+M3eUamnt7RFIATipimZsaLi3anp/Q5I+jB7THT5quCHPK+hyMsdE2v004onxwYREu9MQ/rWecFzJnn9qvUTCcb73/1gz1cwGSwYTM2bc0aKflkX35hCd/6eLeTLbQYz3F6iFL3EdR1cjtZoa2GDUawDs1Que36EtMULkbSYfwpv6IpcLxqPo7pbMz/Uvd3puu166vLyR83mQf0pRZakCs8MxgA05hcUSavBYWpUM7ugdMIF6ljQoRjb2M0KjbYllmWJCiUDbXsTQv7N2e38QkgYFPROM5/e6lj3udcQ0Zh/I4SdRwgKLTSrGCcKJQZCXQHGDP17KfA5SJl9hmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rcv1EVybqPMVW7y99pXq3XgWrzncbT6c9kn1SPHSOcc=;
 b=MYBwKvf9aTG4Lse2bhitYdQPVnqz8kbrTZ0D88xPmdNlhLFuJggRePK8cFKtY6NnWF23N4qu6JceTGPPNoAMGanq97K1r2NXk9ci4NqB+lnEgTDM7E5TJwfL1MCp98dvqygBEQeRvDK8oCzTltz9vszQ+p07VjxuR0rFyPPmjARTzpDcuhzE56T8VV6HSRNV4ln5sXykTjjNrp99qjYz0at6xOemimCW9h7ze41wyYumTHXcjYyfS9iKz5XuO9c1ZwlGEuZt7V+jDj7tQIhEQ/N43Xu3jc1RPs+RY2X3TF+QzUgjmq/sVjUHl8bkyn5hWTL4kPHHNr8m/R/VCC9bvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kempower.com; dmarc=pass action=none header.from=kempower.com;
 dkim=pass header.d=kempower.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kempower.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rcv1EVybqPMVW7y99pXq3XgWrzncbT6c9kn1SPHSOcc=;
 b=aSN5OYsokdX09DrJNhWzkyaDsXjsXDBlevhf7QNhprn7L++Wmju79qI1m/clfKbyRZ/n4Pv/UpGHW1IALmytDvyZrBvMXfQfzn4XwDxbVxP9vIULZXrJC9oChVoymwmJo0BoXAKAnSwwarljt/4zg2GI1lNktRKuskxkXN6f1g6IQ9ubB0pbqj41hh63vwZxztgE+V4t5atBkKpTvHeb6/fcUori0KV9eIoSa3vEylnkff9Ymleu9bUzd8c0Au0wSt6OFLgS8b24/2no9S/51FrEU4sUczSTWh4YFsp+muTll7KG8b7PlhDtVDiuRMe2GYsFe6HQSTUdhg0/C08VkA==
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com (2603:10a6:20b:342::22)
 by DB4PR08MB7933.eurprd08.prod.outlook.com (2603:10a6:10:37b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Wed, 13 May
 2026 15:07:24 +0000
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d]) by AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d%5]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 15:07:23 +0000
From: =?iso-8859-1?Q?EXT-Antti_G=E4rding?= <ext-antti.garding@kempower.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Topic: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Index: 
 AQHc4hww6A85r090PEm7Pqr9xvkthLYKfb+AgAANdWSAAAUsgIABWqPNgAAQGoCAAADOM4AAC1qAgAAAVy0=
Date: Wed, 13 May 2026 15:07:23 +0000
Message-ID: 
 <AS8PR08MB7251477F2671A0E8F6E86B49D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
References: 
 <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
 <AS8PR08MB72519BF260608361FE603E29D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj_VGh3G-b6mWPqJO6WukwRhkh3Gvjffk3GXG8D05ezeOg@mail.gmail.com>
 <AS8PR08MB7251A410724D0D006312018ED5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj_7Q_aS8yp+ZR3=9xTjHUsJyxL8ep9K2qO3RwSMnFUvoA@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_7Q_aS8yp+ZR3=9xTjHUsJyxL8ep9K2qO3RwSMnFUvoA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kempower.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7251:EE_|DB4PR08MB7933:EE_
x-ms-office365-filtering-correlation-id: 47540af0-7f21-41f6-e85b-08deb1015633
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700021|8096899003|18002099003|56012099003|22082099003|11063799003;
x-microsoft-antispam-message-info: 
 jtrCWPS/7HOnxWJxWcO+Nl1DM5bg8mglwQr6jjIMAanDQ5pUud8iKhmsUVNvXc8RA3/ccauveV4xz3Wh+2tt+ImDudAb6NrLVdFci55zaNAYlhOVZAalm/MH7G9/kckXNmka44RQpXscQCh0+S08PX7qbLr3EnwYqMgh9Vpj8YoE+oD06Sfc0XfMrw5MNLoETb1TsweqAsYdJDdrfDmXdLxmlPB1MJ2C7AOdMBVeqzKxqguuQC37+5pmSZmCUYnIcqm9VXWb6nctM9g2RpYfjUUm7/LtzL08zYfoou+WtqBuhReElVTlWP+C0KpMdT4jY/nfSg1pLYDkLjLAljeGxqa2cecugkOoCOBXX/XOMPYDuKfahNU2EnNm6SmdsE5HDZKUlD2BVd6xtK1rPXsF1A5Pjk0z1iQhrGN7oiwDWUwC1NliVgV/dkuDfGXeqW/NXwGd3PPKTn6Oqirirv7t208jQnK/hTrdROdEecoGYUbr6M/Sq220389R0xVkcTSURAd8sTpiDC9KUjK9wIQIs7s0DyrSO9AhwifMARjBxTxoGgonqNb0P6t7c+Ds+MR4R8DsTtW2b8qOsAAfW/x2KuVPRsJgQzQFlP9x8zaR1PgL+tNPhApTde7w3poGFXQyAvGhR44uPnoVYP9+h/s7HXr8yaJD4guVHzO1g7UzH3d7rgRUphDPlmyRAB+9jnWOpjIbn4iqSZOLQtNxLskpTjJySZqK1Tz3BYETp6bHKR4AkcZ5wm3D/XSuZnwQDnNQ
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB7251.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(8096899003)(18002099003)(56012099003)(22082099003)(11063799003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?DIxVp0vpTwdKtVlliLlJ/YVqQh4vdW/NS/vNxx7C94eLJYKGc9LgcTEolc?=
 =?iso-8859-1?Q?O0VJCouTLjGuKUvnmUs5G965T2XHaTNwyHRgr9W1zWQTlfoaoJ92+DQ1s1?=
 =?iso-8859-1?Q?S9PgwSn5Ao5wAbJYC0npxPRo1InMrqRVyU9ScIX4YLSO8YsKB4J/GzqXQz?=
 =?iso-8859-1?Q?ipVqj0VsX4dsgwW51HRSOabY/wQXwdIbj6bc7fBDft5bIRI1sSZJfJd5q7?=
 =?iso-8859-1?Q?pAJSFT9mBkzqy9O92hMt3trThyB/bIYVNmnuKv0BmlLbHYTren2rDwsF8N?=
 =?iso-8859-1?Q?2lhwkhBZNEJD+U3rOWyHV/k/wozs/1b653JcXDlVAdJcDfWnL4cLH1OBh6?=
 =?iso-8859-1?Q?xzeo8rQIz/KNVxeLQTZi1LDsIHfN5xOMTawo9NYM8grXJgdmHRjH3ZSCu8?=
 =?iso-8859-1?Q?ECtJuv0gK2YCQV7v2RDL5vh357OzsVkPYyWDx4lpL+vXy3sDvDfPl6IRNr?=
 =?iso-8859-1?Q?1ahlhAXZdM6xWbsfizkCbMocnQCYTXuKL1MJqXA3rtpXZq5C9GisNmLqvk?=
 =?iso-8859-1?Q?WHw5YYXUWpZgoUyuT07YnKAd4C/ID7d6snfi0NqLLmhqMPxCMry9HLIdaM?=
 =?iso-8859-1?Q?UYG/oPoeb0WpxIypi0Vcf5fetCmzj3WO5FLjKTIGLzOnymq9ZyBBsnKQmw?=
 =?iso-8859-1?Q?/W8K9V/isjsCTUdWpOdKCM0FZo1QV3LGE1Il0jBQhuYonx4ZnayiI+ScFA?=
 =?iso-8859-1?Q?iCDVwGwsAJza8Vi4KRidsc82f8DpPiZtlGXTkPtnYLLbqTzF4G5zqt9r3C?=
 =?iso-8859-1?Q?og/X8l5eLy3hyqVtmfeyqMhVVTf1QeKL2cSZrmLkXejDT+xzaUHBruPWaI?=
 =?iso-8859-1?Q?uQ5qBbaUu6qc30tdXL6j+0Xn/Ck+8sHDNRIotaM5McBbZhczOGBUPhuggr?=
 =?iso-8859-1?Q?fc3UJG2HQDphl6wRmuuspDALy2mHM5biJX5bXN5obmDCLU++qxUGidpHZL?=
 =?iso-8859-1?Q?xmOdBOrEhzhJ9S5unXh8E+w8/U4xHYkhbsOWmZ7ocBNWJYHm/2mKwd78W+?=
 =?iso-8859-1?Q?Z9ovm/6PJ4ON2fVYRaEBIeHiMF41e84HPa/NN3ak2MVllW++OWY+76+J1I?=
 =?iso-8859-1?Q?dhqJKv6CgGk3ocL1xGisBYOtZRe4TuapfHw+reXRNqGJdNivLdI3hfaFgJ?=
 =?iso-8859-1?Q?4tC7co7nfZy24ESojBV8w7qysasSmkCZWl8mI2bWBMusi7mQKLMiutCRiM?=
 =?iso-8859-1?Q?trWOcQZYlsjMebE5LXCwqEkPdDLyzqNKMN7h0VqM4/SZH/NixJuvlt1DMO?=
 =?iso-8859-1?Q?BXP5TAegMojKvMZMvhVJF4VM52T4Yv+jgcSLhkxGpLA0mY/o6+5/ygMZXN?=
 =?iso-8859-1?Q?WD9VpBLthxsLloLwyDk167qpfZ/fTbocLNzFexHKa81d3gGKke2jbvMGKM?=
 =?iso-8859-1?Q?XCRJtR5VFde9W3WN5MTS0keT3YrQtLFFHSucfWYRR8Z7grZlZPjzwuGkVW?=
 =?iso-8859-1?Q?ex1aSimjx0BMAfZX69hpVOgC8xVyeBggwSDCbGbc5mhvup+QPsYq05r2lb?=
 =?iso-8859-1?Q?JgyaepiQwQ5MCVbOIAUM6d+aD6iJ/mbxTCpaDZDMNN4hwHQTb6zZ3vk30O?=
 =?iso-8859-1?Q?kxVi1yzeI+tjKoucr9K4UkAb2mg7Jw3A7m3uhdTA32HBGzETRkheuEDwYH?=
 =?iso-8859-1?Q?I9v0V90J89Fgxsds25Yvrc5dtBjV4Y4I6w/3yphkfXwyWajXlo/HHgEp5b?=
 =?iso-8859-1?Q?c+d6tt8l932qxWoFjxeKnn3lIHzqvAK1PiBuE+1Pvpdm9cNnwPi1Sh0pie?=
 =?iso-8859-1?Q?alS3crSJVX7DqwCHWujK6XlImGKKWSYx+KSrhw+OI0kzgskqYJk+1uOscX?=
 =?iso-8859-1?Q?Q/aLby+Nag=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB7251477F2671A0E8F6E86B49D5062AS8PR08MB7251eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kempower.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7251.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47540af0-7f21-41f6-e85b-08deb1015633
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 15:07:23.1705
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08631c2f-66d7-4254-afbd-4f0e104d509d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YO2yL+fB0gD9FBpAxuazh1P/WM5MykNHP12/p/cXpqe+pkQx/gttvZjkGT7OrqKg1dq92ZecnLAIRfhKa7KqLD1uvyO5XgliOrrwe+zoIXE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB7933
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 15:07:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66558

--_000_AS8PR08MB7251477F2671A0E8F6E86B49D5062AS8PR08MB7251eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> Then what in Quentin's suggestion isn't going to work? You put the
function and the SRC_URI_TAG assignment into the class. You modify the
SRC_URI in the recipe to refer to SRC_URI_TAG variable, and add a
class inherit into the recipe. Which part of this isn't appropriate or
possible and why?

As far as I see it, it requires you not only to inherit a class but also to=
 modify the SRC_URI and possibly make it dependent of the class (I am not s=
ure what would happen if I added SRC_URI_TAG but didn't inherit the class).

In other words, you can't turn the tag verification on and off by simply ad=
ding or removing line "inherit src-uri-tag".


BR,
Antti G=E4rding

--_000_AS8PR08MB7251477F2671A0E8F6E86B49D5062AS8PR08MB7251eurp_
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
<div>&gt;<span style=3D"font-size: 11pt;"> Then what in Quentin's suggestio=
n isn't going to work? You put the<br>
function and the SRC_URI_TAG assignment into the class. You modify the<br>
SRC_URI in the recipe to refer to SRC_URI_TAG variable, and add a<br>
class inherit into the recipe. Which part of this isn't appropriate or<br>
possible and why?<br>
</span></div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;"><br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
As far as I see it, it requires you not only to inherit a class but also to=
 modify the SRC_URI and possibly make it dependent of the class (I am not s=
ure what would happen if I added SRC_URI_TAG but didn't inherit the class).=
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
In other words, you can't turn the tag verification on and off by simply ad=
ding or removing line &quot;inherit src-uri-tag&quot;.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
BR,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Antti G=E4rding</div>
</body>
</html>

--_000_AS8PR08MB7251477F2671A0E8F6E86B49D5062AS8PR08MB7251eurp_--

