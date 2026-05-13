Return-Path: <ext-antti.garding@kempower.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23CF9CD4F25
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 12:51:51 +0000 (UTC)
Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.107])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6744.1778676709132768994
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2026 05:51:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kempower.com header.s=selector1 header.b=kATJZnVp;
 spf=pass (domain: kempower.com, ip: 40.107.162.107, mailfrom: ext-antti.garding@kempower.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=asNR7hHnkz7zOzXu5/mWWTsyNhrhXPqgQ0za8S2bD5f9mWX3m5uYtBj+HIBh848rm4ZxEBquFeHlotfy2z0ftIsJoLjQTk2H4A2fSqbICOsFfcesask9H7NAB2hqIrY+03CBpaH9YHILeybknuHGLXDLopxkMVOcBsk76x9VdaQ4dpWBSw924+ZK1C1vN/GGzArfFJ7F58xhOcNrI32IYG8mo5NskdfBJKHkZhrLWWzCR+i662CcYeSBg1iWI83eP11KQUebnQcUex/A6Cdh5fDr+EwfbwQ2JoWM34E/K+xO9rPKVnz3BI9N9v7iW282Fh9nRx4AD3XfGdHJnZIjoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MVY+J59k/Oifbev1+b1rbofprskOaKDQcg6OvJn4oWk=;
 b=dmVeKvn5rpHVdDynUbD15c17wnpgDwo3BHJqCh8cqHfHtk8+ZwOQCcs3xACF+3+d5gvRZ5GjMwU6Nf4yPQzsWadFMqZzYHk1JuxwQEfKmvIsV1VMCQEEHeHcCIHRGBgYONv5OZQo5JrkGWoYYkmbAmCCLekbwi7JT0iRPS+Ye1hvXkCoDNk4/B6bJ/uTOgR8x7qRC06EWy6dD8mRjKha2O54Ci7OgB2jd+ymolNi9QmjFMUdeDjGZM/LthQP2TeJff4FN6SRcBJJQbrT+fIY4dmLw69kiq63VBzC47m63q1wCCYn1yXsOJfsnRmjG0IfKL75C/oF2LkrW7az0ntoJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kempower.com; dmarc=pass action=none header.from=kempower.com;
 dkim=pass header.d=kempower.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kempower.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MVY+J59k/Oifbev1+b1rbofprskOaKDQcg6OvJn4oWk=;
 b=kATJZnVpQD8Scz5m1jYIqBExqObzDvxrqT9SYZs3al8o2obGQ02OBhBzG7zRHU8GAjISZkIVf+LqWJxLKoREWRPwhO2tGE5OfWqUB5dwXOnibd2RF6zkh42AhYfU0pVdg1Mn8KZYM+bTw34mlVFEgLCtfPS84T0b3knsAijzyXLZiMsx67mVirzjQiDO9QVLL9mLZz+csQikhSVM+34zPLfOKBGjPlXHcwmHXtxUSF40NpTyAdJ4r1FcEu4vaaOP3z0rXZzbXSdnP70uYKAPYKDW0y91kTvRmBz9nE2bg6ktC10EMqxa6LI/lMm4BTQ7jDf+TOO4Mo6050v7r0XUWw==
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com (2603:10a6:20b:342::22)
 by AS4PR08MB8190.eurprd08.prod.outlook.com (2603:10a6:20b:58d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 12:51:44 +0000
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d]) by AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d%5]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 12:51:44 +0000
From: =?iso-8859-1?Q?EXT-Antti_G=E4rding?= <ext-antti.garding@kempower.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Topic: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Index: 
 AQHc4hww6A85r090PEm7Pqr9xvkthLYKfb+AgAANdWSAAAUsgIAA7JGngAAFL4CAAGM5fIAAAmWAgAAAmDs=
Date: Wed, 13 May 2026 12:51:44 +0000
Message-ID: 
 <AS8PR08MB725137B5AF5DEB044A47D85BD5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
References: 
 <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
 <AS8PR08MB7251E97A7AC8E670837F704CD5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <2809cf78-c2d1-49f2-81ab-b01b4594de96@windriver.com>
 <AS8PR08MB7251371207FE8FED08D1FAE0D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj91A4NW70-vCNR8j0rStTxuAC84ZgxDmHhErpugXO_N3A@mail.gmail.com>
In-Reply-To: 
 <CANNYZj91A4NW70-vCNR8j0rStTxuAC84ZgxDmHhErpugXO_N3A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kempower.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7251:EE_|AS4PR08MB8190:EE_
x-ms-office365-filtering-correlation-id: 563e1a0a-b495-46a4-7975-08deb0ee6303
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700021|11063799003|22082099003|18002099003|56012099003|8096899003;
x-microsoft-antispam-message-info: 
 a75YumRddeBv+pOprPVyp1OoRlXtnPukD0jZVq/7IR3CVEx7JnLM7SJrkxqni8Yrn+w5r4ivrmUYBXpkUKfF4sTlfyHUJbcZv2l3mxWgnKR7nzGpTxyJXQ6YhyAYBzgX0wFsTnrXWCgdZuwAobfJLf7M3sE1JU1VTRhpUChMs3T3j6rd1bu/FMgSwSXS8RlVTPtSlSDLGCCuLfz8vYig2yRoXvIRKSRA5nFOYaRVegkRi7BaVp0qveODts4Fcy+RLOBtH5iQ1WbeOdKFHPzQaJWp2aSTFi+0QsenlwCN9PY1v5KYq15RdmMtkjMIW2PYT45oRnyLNqJxyMVc1CrxdjZWRzDzIstsDnMq3R2Msdm52hMlArBHUDp5VhOnSABISPk/3zUoDAOLz3P7pL564fw0el9R/Ra9U0nVRyhXFMUvWcSaODBBtTsy6z7ARqTKD5dzaHLES7ZQQvg9snCwIMnXP2XR/PYRzan0hwrH2mwnfme0eM+LC//UX1+TcCl8qbfBV3sc697UKOb6vSnEQa+zAcLCyFQ9V5bJNAonlix8u0y9Ce8Qe1iCk5quILZR4QZS8Q5LDzoS2OcPV/JNDgsq+4Pfb48XplRRCgjecnKMdl0J/danRDcRQhSdXTXm+QmjsA76tmctZQHj86BPRKJ7ge97ix8cU+F2aWwV7LMhe6K5YkANsQb9Mp5w31ApsfoU+eoBb/aMAm3mYfoaHaukMhIBi6mFdJ9TvPcGbA2Sjh1C+xc+I+WAwHD4aq1p
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB7251.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(11063799003)(22082099003)(18002099003)(56012099003)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?rmR1jCbkOhHE7fsRiGEkf9Q0WD5rvo/wPf1vhIUwy5DMJSYhqNLDoNLzLO?=
 =?iso-8859-1?Q?mOB6BAHZKmtyDxA9xMrrzHxI74e1kVZik+L4MoObN6hGB21PyuF/gRkkOL?=
 =?iso-8859-1?Q?it5xxkv9thSYTwnyMncW+wQBAl1ZtTVVDmZS86Xr8YjuQqYbM+yBa54G/n?=
 =?iso-8859-1?Q?eAFnMXSznCgd2GMI30yD7Ig1RdMzFNQB5SHeIqiiDiJmFUg61KlhfzEBxL?=
 =?iso-8859-1?Q?oDtsqJ4Xi+BckjHFq7XU1iXud2ebwBoTlojvVlkpumHzMA0oOmAXbu1MuT?=
 =?iso-8859-1?Q?pYAD/2ZCQ4ijn8mVHm2gEzQzdOCjKmCZcn+9zSO+tf16SHl8PRkkvNCdTM?=
 =?iso-8859-1?Q?J1STKMN7oh0m9/6m1njAbcdfpGv4SEpA2+TjwlvgFLbSG7LnipeHXAGa4M?=
 =?iso-8859-1?Q?e+V9PiVOkvWKv+dhvBUpJZfTTxSwSm3oCQsQIuopcVZrVNkoJ+NzPOorgb?=
 =?iso-8859-1?Q?M5JWfyTs6UdWeUP5VNWfPu8I83pKbmWFS7fIrmc9xCb8f4RIFXn+xIVZAL?=
 =?iso-8859-1?Q?yMY8/ie6cD2C8/jYhNosCtf2bhfWtCxeQlwA4cLJ5US6gH+9N9KDkVjaIO?=
 =?iso-8859-1?Q?riKMuME6TtfyG2iVDVmmdMRrBw5WebJ9TNUFqhKnMF5FfCA0YsRDo3rRXY?=
 =?iso-8859-1?Q?9338GtqkD2EKT3hNcCKQ96yK4ykCwXyO027gYIwrl31zuglTvMvFqt5xIm?=
 =?iso-8859-1?Q?fcUYi70UIB0n4OExVD8sKt3pFAuOP7vALnXx9kuRJciuWWMouyqq0GoRh+?=
 =?iso-8859-1?Q?1xt4EgsirzCN5fRujWaCvuCIMaseD9grga+5qr/NBcdpfnzRieyiLPg6FF?=
 =?iso-8859-1?Q?ONaY5M2qSIfJSR0pRGpNhoQ+W3MnKJIGZtjKqu5oPfcfralmVWGG0QIaFe?=
 =?iso-8859-1?Q?Fja1S3WZjQEJz4h7M6eSW3vWmprYVvMtu80ifDMn5LTBlkSv4IKaM0rOMT?=
 =?iso-8859-1?Q?HVriQ+HxWSwI/2NSjvrAYaxBmT7HnjzxpjO+s2thuIbpbAjxgiuaV6BJqM?=
 =?iso-8859-1?Q?zP2B6twpF7PX9/YiqskeAw1ENw+8g8hG3JHfG7Ue6npasNgCdwdJ0TdG55?=
 =?iso-8859-1?Q?3/ld/LoSl4t3mPf3JrUWUfZfkZfmki75AL54JqF0RbzPVVQDmrn5+ZPNDE?=
 =?iso-8859-1?Q?hPNZHBeFDoG/Kxu9/Ab1k2byk4CF4WUQeHUBcul4+zrUZDqS0HyT4s2G6G?=
 =?iso-8859-1?Q?A6DetR/tBg1RPH/wlpPGsf7SvkLrfOH+tLwdLYES6ACbVrjQpJ4TeX+5kJ?=
 =?iso-8859-1?Q?3O3ZEa2gad8FLPHKZfCaY6JgIZz++nZT7yHidFUy+zh8p0l8GDGXjhsMmJ?=
 =?iso-8859-1?Q?yn26NDqWEgX1ZV/nHhm6P12Z36DhSbrRn/maMmGbagr7yFn4XmLQ7w0EpH?=
 =?iso-8859-1?Q?/SLY8hnneAxLBP2t14aNfcaRkPR40kjLfLDog07VIt3u+6MUOoV5AoGrv0?=
 =?iso-8859-1?Q?HBtFRHNrX5AOzJP2GKd5T+y7WQrqRyUsjQBa7SIemdg9Pu7Bs6X8QKQk1l?=
 =?iso-8859-1?Q?aRlLKUn2S8e9Yc9cuB2n+wLSJEgbf1nO4XHN8/RCjZLR04PhekhrMoh09B?=
 =?iso-8859-1?Q?frGr+z8J7xjD1vif4bc51JOeb3+KpvXu1a32+ogcosAH75KbF3iR/8whOm?=
 =?iso-8859-1?Q?K8Om5ODy+4CLvk/1ee0kU7ghxDhSZh14gu0JGwjQSwluFsuAHBbJ8RXTvx?=
 =?iso-8859-1?Q?p8coO+8JVzpOkYzPg+PfCgX433ZumcbrBFVEbs7BrVgAi7QVLww6sbrEgF?=
 =?iso-8859-1?Q?Mpt2CrjD1zLDs7stNnVn3ojtSt3cO5R5sleyvBJid5iKk+ATz1ouXLvkqi?=
 =?iso-8859-1?Q?MfUJgufDbg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB725137B5AF5DEB044A47D85BD5062AS8PR08MB7251eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kempower.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7251.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 563e1a0a-b495-46a4-7975-08deb0ee6303
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 12:51:44.2727
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08631c2f-66d7-4254-afbd-4f0e104d509d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VOC/yOnlWoXRm+tsM+45rdDIzHMtN4SmHf1Y5f+YPdVjMCHzlBl8T7doKq26L7nKZckVekT+74PxqS2A5LpBbDk0D32N6bCDU5UVZhGA7RU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB8190
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 12:51:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66553

--_000_AS8PR08MB725137B5AF5DEB044A47D85BD5062AS8PR08MB7251eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


> I think you should still show us the body of the function that sets
the tag from the value PV. What is it doing that can not be done with
the approach that Quentin suggested? It's rather baffling that you
simply skipped his response without explaining that.

Sorry for apparently ignoring Quentin's suggestion and thanks for bringing =
it up again. I first ignored it because applying it requires touching the S=
RC_URI in the recipe. Now that I had another look at it, it might work sinc=
e it is not hard-coded but comes from the function. I will try it and also =
discuss with my team if they see any reason not to solve this that way.


BR,
Antti G=E4rding

--_000_AS8PR08MB725137B5AF5DEB044A47D85BD5062AS8PR08MB7251eurp_
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
<br>
</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;">&gt; I think you s=
hould still show us the body of the function that sets<br>
the tag from the value PV. What is it doing that can not be done with<br>
the approach that Quentin suggested? It's rather baffling that you<br>
simply skipped his response without explaining that.<br>
</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;"><br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Sorry for apparently ignoring Quentin's suggestion and thanks for bringing =
it up again. I first ignored it because applying it requires touching the S=
RC_URI in the recipe. Now that I had another look at it, it might work sinc=
e it is not hard-coded but comes
 from the function. I will try it and also discuss with my team if they see=
 any reason not to solve this that way.</div>
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

--_000_AS8PR08MB725137B5AF5DEB044A47D85BD5062AS8PR08MB7251eurp_--

