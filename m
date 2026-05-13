Return-Path: <ext-antti.garding@kempower.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C4F3CD4F3C
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 12:35:51 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.66.128])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6443.1778675742446304700
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2026 05:35:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kempower.com header.s=selector1 header.b=YAl4LO0+;
 spf=pass (domain: kempower.com, ip: 52.101.66.128, mailfrom: ext-antti.garding@kempower.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ltES5SLMAA5LqVIQDLO1AFNMLVBbu1VOpAZWHL9ntI0Srt8cQ05PdwOg2J0b3I+BmEWEEIheqRxMtcGJF85mWq+ykOv6WZR8WZw00ZwAHDiARUE7POXyBQuFIXil9KsXkSydgv2kicBIO8+/fE4tcgnBUvgknJlPE1Imgch9v+JFwxWts/U/eSWO0UJ2etvmv19HGjgWD4lZYxrXRpAEtMO7sSmaii6zbH2bt8ITXkinQqIO8RxrOGcvWmBofA1R3oh7F1/y0u4EjTV+SmrYXcF5ClfupElKYgIs9LtU1Q/LWQd5ZgYHSa5EN1HgFB1ccgmLZd5TnJrrZ31vSd4efA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IZ74Rl7gCY/PiBECMt16VvUKEAqVshMw7ht2x5cs8qc=;
 b=wfomx0fnctQ83cLYeccVxcU5ww5DwPC30Gi+1UsTjdksldqkdtBWb3oRtnyCV6LjUMiVjyL+z6CtSpfSeGtvxfkmU42otC4NO9yDknp5o+NnBcqUIfsM75nAil4q+pVIpA+1PMdqfNV8tPudJKwp2iK4Kf8DcpPw/sRMqh8krHCXhPwakUPCQm/+3d5DxgylS8kQXT7ZQWYvYzegIZWJ3Mys6FqGAuVNDNQlBMLvo2Y/Y4zcObm9m5+rZp4G02Ix4IWPaqCfM7K7WI8jZwv9GgiGbJQv8OgiOaVIyxbz+uCEXMLDLsO5mLe9g4fhkjzUtfb9nzJz3QSZxev0wKY/eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kempower.com; dmarc=pass action=none header.from=kempower.com;
 dkim=pass header.d=kempower.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kempower.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IZ74Rl7gCY/PiBECMt16VvUKEAqVshMw7ht2x5cs8qc=;
 b=YAl4LO0+cI2E581FQK+/gdURyZFixy82FfxCGGj3jLd4G1VQwXsDDurXdxOVaKfg3Ws5zvP5BA3IYdjORmoWcc2w5G8gNkCpFrXi8sjzAHH/cQcc6fRVwMDVNgH6zOmDsVgAaNtFcK5dEbly7GWDHuLJ68K+Uxe6yRFATRZ7pS3QrsZjBc2TV2gOAyugHCKeMtBq19HRFt5tb7Lm/0/6d4XAzCEFltniO3BQQF2gOG28RkWV0l9u8GSFIS5ZZztQCsT8zi4ID1G/HIU7aG6MZC53Qk4OTG1rhNWtSXkUp8aPW9AtjR7pv891WpSUtHDuh8skbA26MmHzH7PnVhN31A==
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com (2603:10a6:20b:342::22)
 by PAXPR08MB6528.eurprd08.prod.outlook.com (2603:10a6:102:15a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 12:35:37 +0000
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d]) by AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d%5]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 12:35:37 +0000
From: =?iso-8859-1?Q?EXT-Antti_G=E4rding?= <ext-antti.garding@kempower.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Topic: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Index: 
 AQHc4hww6A85r090PEm7Pqr9xvkthLYKfb+AgAANdWSAAAUsgIAA7JGngAAFL4CAAGM5fA==
Date: Wed, 13 May 2026 12:35:37 +0000
Message-ID: 
 <AS8PR08MB7251371207FE8FED08D1FAE0D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
References: 
 <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
 <AS8PR08MB7251E97A7AC8E670837F704CD5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <2809cf78-c2d1-49f2-81ab-b01b4594de96@windriver.com>
In-Reply-To: <2809cf78-c2d1-49f2-81ab-b01b4594de96@windriver.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kempower.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7251:EE_|PAXPR08MB6528:EE_
x-ms-office365-filtering-correlation-id: 8335b9f7-f65e-4eb8-cefe-08deb0ec22bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700021|8096899003|56012099003|22082099003|18002099003|11063799003;
x-microsoft-antispam-message-info: 
 VV2CejvLc3+iuF1sgrXdaA4hBpAJ357fQ4T9EbACBza9+jksIvfBlotgls9PX2vzoq9+l0iaRTmD6oiNd4GAgPwTDVb1eCITJHvGBO92VYC3Bv423npACtIdpiJDSwn2H/fr7N99y9x/2ezcSzQaB/FySKzKAWEpwFCFZQoL0+e8QwMkpaX3liOLjwuGfFaQj1+lZ1EA/ysX9WqpfvSATj4CpmlaulMnJU2st+wmLvXUyY+drrUqCgWFV40x1X4HRpTnSWspvReASCi6tC+jzrwgxV4mkIbXXpwau0hbCtnPYaZHq4b0MrmF+QI/Ek68H8T2II2pS+uUgSxMDoAr2SxVP8HZhMwpYlWsqjr/NxtFm+G9duxpPtmwZxVTS7L3y7iW7N0E6u1bl6TtrYaI4nYbjplLShkdMOCw+ZxotZEM7uBGtW8ck8nnJFjkVLDNB8+0XAgSKvEhE3+6Mn2k9yx+bQAGuKmTkbuFRt1nsoZ0EdA171JKjWIsJ+yU29luF+5lGCczSW9/fTnB1FYaS1JFS6YlJ3Qzdm81DDTA/+w7Rqwk6njrthwtvlDzwYPS3fqJI3zXAziVhqUtRGTZDtONgbZqQDJyt8KLi5LI1kuFfIDFEOoWbgoFbrgyM1LY7PARzXvLguUGiiPQGZmWyBv4SLLwQES0Z7+2cj1iWCnX7nOBUrT3o5ElQWwvJwBXpdoztmB/PHSQs1vUPJXtXHCTnslXf2s+gDbFr9YufL8iu6N58NE1Xl1Bltemf259
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB7251.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(8096899003)(56012099003)(22082099003)(18002099003)(11063799003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?0fRZMGnNTWPyDmL9hlSh6XYAYlN9lq9rolvCuZxu4QYuvJgZLCDs56EzU9?=
 =?iso-8859-1?Q?VIJQLBPF0BhopFzFXydbUMRxG8ghq+Ej5pmYTzoZZXHWduNp+TViFpIdJi?=
 =?iso-8859-1?Q?7SCA6k7h6StukIFRuYyfmY27tY1C6hPus3fRWvIMjxwI/fT38q6L0AW9SO?=
 =?iso-8859-1?Q?zrl9tGWEPepbFwM+KxOt89P6dygyrTWkJh5+8vKASNx78AhYEP/W2zSX54?=
 =?iso-8859-1?Q?YQ7vwJS6u1rrTcxbadNTty+VPRpHitNHtfVYSq9uOpizq3dZiJsWZq2Pm0?=
 =?iso-8859-1?Q?sYd0cB41WbfYa9085sd1vh9fNrZjbmSzUP83DN4JS9So1hhU4SgbYzLwZh?=
 =?iso-8859-1?Q?ug44zSKq6L1LmI6X2Qm5yGoOoSNqBzCC4ISbz0q3xmOZ4AE2SMZbauHqkC?=
 =?iso-8859-1?Q?TCrYqhm2lbfVvvTZ1tkxm7oJ01+bGIkpgyiiVMzsfkKuDmXVwhSghQ2jAd?=
 =?iso-8859-1?Q?muURlK+7MCzu7DvTcdvFnUCilI58fUxC48JoFEL8xX3OXEWT0Do4co1QYP?=
 =?iso-8859-1?Q?IdkmKC4rL+kE1g2w2OsMkHihNpYZf8oS9ZdZ0aE+jJY3bo56wS2+wtvzqS?=
 =?iso-8859-1?Q?mtUMuTidRinkcgc0Z4qXNmf43KZjEeQEJyquwHY64ma2BfSl6SmlNvNT6I?=
 =?iso-8859-1?Q?MGtqjSdjB/qDe0/dIx5U4TGebaLzfqCbwPRUQl7cIrsw2gvPi7B/5LnZMc?=
 =?iso-8859-1?Q?fqO1cKkfVdhBQojsF6wIiKj3YhKd4JhdCfIgaPcjmHNYCAJiGyPjTq+sMv?=
 =?iso-8859-1?Q?g7Hrvk0t1WeRDPQXOwNEQyUv17I5bA0mBaRfTgqmGFuPDZSe53cJ2zPl9B?=
 =?iso-8859-1?Q?i13XuoWuT2P/ldbbnm07iy0DmWHIL1dkHjkZnMnUSdesA4/82JugnJX6Yf?=
 =?iso-8859-1?Q?MhoS9+6cOKc++j2REs/Rc1ed/kSpweWbwe/ojTGq3uLiBsadPTEHZsd3DY?=
 =?iso-8859-1?Q?ZANoD9k9TFAnFrISsdeJI6bRuVcmhnYy282f3R6g7+0oNy+WoZft9nSNyE?=
 =?iso-8859-1?Q?mZJFUB5iCcfLkDreV8AyMpfbpSfRGXWjANsMgB+gcOAnWgbMvNCOyg6jeO?=
 =?iso-8859-1?Q?B1M9fbyLreaJWmqBWS75d9++JLw19eV5u1fwmjylW0HN9G4pP8iTI093Wg?=
 =?iso-8859-1?Q?KxHnxSlRr8K5r1ZyVXSdCsO3SKfzHgnNUf2Mnq0PAhnw96VW+0z0cFvgZ7?=
 =?iso-8859-1?Q?LIYUCeveKzAuRPRkzn8Hy3bacekYC8csnK6UmDulxqgwn62D1dRVK2NVNs?=
 =?iso-8859-1?Q?gzUUfPqMGNxxpu0vgGEdi3fdu1202raqRXWTuOBF3EP/vy4867GYiNe29R?=
 =?iso-8859-1?Q?YHYQsgEcfQM5AGPBpAxeZQQC55nyKkuX6n47qulMyTFhiVXgsk+bAjYD45?=
 =?iso-8859-1?Q?8thVNm/arfIvNQM5a7mkZUCNWCuDThh0bu9Q7EcjGYG726FlQpRU2m8FIz?=
 =?iso-8859-1?Q?F6OpCRuB+a5QIMW4BWtRNH3roI3lsfUhx2nyXwXb+rvzpOMLGiTVn9LCdV?=
 =?iso-8859-1?Q?KWIb9u6UHxc7uKZcZcoObZ9idmlm050mIwFKJ+wQdz1zSS+Ud2WJjKjXtG?=
 =?iso-8859-1?Q?UX7jdPB8sEBl/kS6Vm8gxfCupBtHwWj00zcINMIvmGKyl5Jxl6hRLDeZo7?=
 =?iso-8859-1?Q?vrV3LndotHRPeeBGoE6qjysz5jphm2sYWmLOfFmE/BILhewJdw9+v4MkDw?=
 =?iso-8859-1?Q?6ZzrjPpjVyQMsg1NLAHShcKPm8W8C52HLygHrHxYSQgT86VcDMHA6cwX4g?=
 =?iso-8859-1?Q?NR/GL78AYfl+wgIvR6kaZqXNKIdlxRe6EiyTcSjL79q/K3aWkRTBgQc775?=
 =?iso-8859-1?Q?zy7lwDsNgA=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB7251371207FE8FED08D1FAE0D5062AS8PR08MB7251eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kempower.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7251.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8335b9f7-f65e-4eb8-cefe-08deb0ec22bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 12:35:37.4582
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08631c2f-66d7-4254-afbd-4f0e104d509d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yu/f3EgZNuFVoQAZufWQhhRDa2FfHM2Xkhjx12T773o3gTdx5N7f4URf5NUokdN2G2ugMiXOWPENB+Gh9pB3ccWY0c9w2Y7ZnxtX4ZrmHyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6528
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 12:35:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66551

--_000_AS8PR08MB7251371207FE8FED08D1FAE0D5062AS8PR08MB7251eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> You can use a bbclass + event handler to achieve this.

That sounds promising.

How can I find out which event to use? Grepping bitbake's code in my clone =
of Yocto didn't give me any easy hints. Yocto's manual gives impression tha=
t the list there is not a complete list but rather an example.


BR,
Antti G=E4rding

--_000_AS8PR08MB7251371207FE8FED08D1FAE0D5062AS8PR08MB7251eurp_
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
&gt; You can use a bbclass + event handler to achieve this.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
That sounds promising.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
How can I find out which event to use? Grepping bitbake's code in my clone =
of Yocto didn't give me any easy hints. Yocto's manual gives impression tha=
t the list there is not a complete list but rather an example.</div>
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Antti G=E4rding</div>
</body>
</html>

--_000_AS8PR08MB7251371207FE8FED08D1FAE0D5062AS8PR08MB7251eurp_--

