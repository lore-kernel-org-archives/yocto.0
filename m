Return-Path: <ext-antti.garding@kempower.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76183CD4F4A
	for <webhook@archiver.kernel.org>; Mon, 18 May 2026 14:56:22 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.107])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10238.1779116174886847710
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 May 2026 07:56:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kempower.com header.s=selector1 header.b=ZAPsBeUX;
 spf=pass (domain: kempower.com, ip: 52.101.69.107, mailfrom: ext-antti.garding@kempower.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ofLRfUdzbgee4SwzpHPJkvy03YL/Dv56PMPhswv1iOA6tofwRDwZ9fbPo7yD7ny7NDe03ieH9Ktqvjr8Qiw3GRfK3ImQw4fEHkkO4JOSdu2XDH4iyjOjKZjTInxfVdiYiFCBszoSlMnkBRlHL6zqpZKJ1X43zUceT6rlaJIqjST+4+VZDx3nKLeGkdrqHZJulzKZmeq4ewXslfOi4VHlIazbSbgFt0/FrHie8OPaDVLVNGw2YsTCfe2hnA1s9/8ACe/Vj1mkwxVkAR4df2qLmXCG4iR9SHEqmSS64HIt9AqHLNMhn52IBht4bpjTRYI7MAcoSNAgG2i/U+Katv2hnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VSg5TcuEBk8TWjlOm/PqEc3ds8cGT6S5TDm8yx2k11c=;
 b=HJFU+k1IgQiJMbrLC6hyRMQS74PUuaYzzCjHsHE/E+iZIpjUqqAyjnK37TpNSAJh69aZRWkiisnDTRv1y+qcTUqAIgOvGVi5FpOy6QAd0o6WWAmZJGj5+UJ5yMqGAxAAyvq2hzpejgbOejOTiiZqcvIBhDz8MclSlg4ZWqabhCJp1gEC1uj1V70HqRoWwle3A5r0vK6Ax1BAXJQGAe16fHRXTANEZynObG3vi0SsPaTJOyeiXU5FpjyCQjgGeUTQibe57sXNxKVUvR3/SKvPsu5Spiz1c3j/DDkwZn/gxHO7ngPL6CctIffOtHE4cO/syQcDPNDFKzjagV027U54jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kempower.com; dmarc=pass action=none header.from=kempower.com;
 dkim=pass header.d=kempower.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kempower.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VSg5TcuEBk8TWjlOm/PqEc3ds8cGT6S5TDm8yx2k11c=;
 b=ZAPsBeUXZBffQzUt1JjOtKHcTQ2HSiu/pbB3UrJmEj/6mA4cQ8inM38EhGy5Bu593FD+p+M2BcGY4bj+p3xM9rS9pW17C+HFaAg4pvVrnwsc8g0OT40l4h7ysWGMgPCHbJewPjybowy6dNbGtm7RTlT4TJBm0/83VPDH5xs//v2env3oueELeCWSpPLZlAuBlH8oX8kQwxIFrAZFKcwwyNK8KtKd6DNJmb/fXalIK8b2EWkwb4FhV9//3wbAP4B70nSaROA7OS3hn3WvamgSw/k8K6uzRTojmTbCZ1WQ77b3D850HUBbPUZr0ZlOs0oy6diG5KSfTwYvLHXA79YU6g==
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com (2603:10a6:20b:342::22)
 by DB9PR08MB8724.eurprd08.prod.outlook.com (2603:10a6:10:3d0::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 14:56:03 +0000
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d]) by AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d%5]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 14:56:02 +0000
From: =?iso-8859-1?Q?EXT-Antti_G=E4rding?= <ext-antti.garding@kempower.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Topic: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Index: 
 AQHc4hww6A85r090PEm7Pqr9xvkthLYKfb+AgAANdWSAAAUsgIABWqPNgAAQGoCAAADOM4AAC1qAgAAAVy2AAA+cAIAAEL/igAd6jYCAAEUspw==
Date: Mon, 18 May 2026 14:56:02 +0000
Message-ID: 
 <AS8PR08MB72514DC2F3B87AC70DB0F90CD5032@AS8PR08MB7251.eurprd08.prod.outlook.com>
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
 <AS8PR08MB72516677F87CEF721A3C556FD5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj94rNNiDb1e4Dns7X+dJOH=MbgY-ZbYDzQPmJn5+s+ctA@mail.gmail.com>
In-Reply-To: 
 <CANNYZj94rNNiDb1e4Dns7X+dJOH=MbgY-ZbYDzQPmJn5+s+ctA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kempower.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7251:EE_|DB9PR08MB8724:EE_
x-ms-office365-filtering-correlation-id: 8a34f851-0c12-4c18-6489-08deb4ed9447
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|1800799024|4143699003|11063799003|38070700021|18002099003|8096899003|22082099003|56012099003;
x-microsoft-antispam-message-info: 
 pDkGhLZDEfkdySiflQjMCHX43/ECtUnc3LgBRBc6zsK8+7wtN6QV2ek6SXCAnJmzkv8/KdS+C2jd5PFZoYtpXLBj7r+edORl6JdSbsMJC3DDOMsI99c90o9vm8Xaqs89rbPSNXLUsg5rGBEfNiKVpXCTH1OwoTBKwJ1zJrBYChyL19rpJGPFzSdSSRXKxfnZo1joJBkc44Nr6PpRktUqOCT6i44xcG8TWLD/6iDp5c9CWKVlhZ9UhXkEqPGNiGq/hCWpJ/5b8lBFOZYGipEDFSc74nEWl4687RrpUgiHbeVyY2e0u/mACxdFjBFx/Fq3VX/iIUVYSq0wDbJ0HhLp43Vz/rGgnHUAd3YmkAp76aeyidMCeRJ0ZGxDQsBd8eBQ4pQs1HnBMpH5ASukNM4QCh7xOs02UXPPuDZtKMn6ExquAuYL6XrTWV3Lyq+p7R+U04eYoSi7KN6oB9mDV3aREkNyTnpn/aXV8Kpr9rs9iTBLdO/bqBFkXFQNtIuQV876z8EehfA2mEnbHgBRloDD6cnDDuPC+t3SH5dIlSo6S9xQ/Ri4Q0wA43QpH2UWMNBbdjpRqb4a+PBcR8yJXNCe7zFIBVeI6/hdTYqohrHWN/gV3iRutU/bltakYyGZFU9V6kACofdRA3steFuWzUxHHAElsPBxmM1w7p5Nm+BkLp9IeXCSUGEapDhZ8dYMigXRq3fFShxaVOsJDdOlp2rzbrk1OBN0ML1Il1wlCi/juK9vV5YfVXD3TFWVdN1JF3jr
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB7251.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(4143699003)(11063799003)(38070700021)(18002099003)(8096899003)(22082099003)(56012099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?PZ/jsbp0Xbc04WvXz/l3ypcQN0k7hdXvuE4ApGctGY3djnuwIys7uE8dnl?=
 =?iso-8859-1?Q?cLRhzAk4yOiZAX7Q2mYGwswubIy3x7iwM/T53ROyWMAfhaSHd1eEhMB20V?=
 =?iso-8859-1?Q?7MOtBMTn3B1B5kYLn6COvyvwrDEQ2c/uT8FTH+gEetQ6yD69jpT5TBsIL/?=
 =?iso-8859-1?Q?u4j6QA3tBysqPmDKQm+XXinE1/3kHETPpYcFgwBkzOiR1Nvtm6JXyQCDlz?=
 =?iso-8859-1?Q?5Zf1fIHs4z4EnDJ8/MB/ZdiK6A5cKtkqb052RCZ7UFrzhM6TgjBKroq/sf?=
 =?iso-8859-1?Q?fSfjihIEvfJZ8BeJIDXi+H6GTYbnQBbT/K3fTR0pI49qZEeF8zZEa3LPK9?=
 =?iso-8859-1?Q?n4ioImwYFkKnpQdrdfZKb7gcQeweIjHSavZorn/M3kJ04MyIpJwFSooDiQ?=
 =?iso-8859-1?Q?6SztIliDqz0OJE02IK2tu1U4g0v8oSqAZhernSAksk8GL9KeNmMhga1/S5?=
 =?iso-8859-1?Q?jQXWloA9tsUwrliV4r1TLkh0yFuuYUeTCaF+Ux3QZgiWDS3ZAa2/v+LHFT?=
 =?iso-8859-1?Q?WfBjmJWLwGg2zO4nLTfSu3LjZNED+sKtBwyVjoM6o8DWmq7G1pOqXrL0km?=
 =?iso-8859-1?Q?BeuscmsapLjcOnz3xtrfZyPfY0rSNGk1gEZNK2U7Smb28Y1F905XI/LXgd?=
 =?iso-8859-1?Q?K34hWvY77vssFkQd9fRPXb/O0niYN7uWm01e7EtzgyhpYbxDXYtGBW6bH2?=
 =?iso-8859-1?Q?9yJMOr/izyEkEKJ1URpq6ZQTwO3KpM2bnGWgOpuZXnCwAliWqB8SA6/s9Y?=
 =?iso-8859-1?Q?MM8XOQ8MwVrjXfEnAm9d2jYOSjeqbSckPV5qmGzTmsEv4JKXAlTlT4hm57?=
 =?iso-8859-1?Q?Nha1HrRwR27ayOF/KWXzaJzmj0BvMALdPgcZtnoYgMMNN167MrrBvrGnBJ?=
 =?iso-8859-1?Q?4lfEyckcif+hLNd4g3aE4hmMZm5+Zu1v9R8znX9chXcLYKjIq+K/g/WGWV?=
 =?iso-8859-1?Q?dO9UsTTAwP+lvq6DYkORM1USk1JpIoYp5cnKm9sWpuBwFLQZCzqC51jy+C?=
 =?iso-8859-1?Q?nQf0rY6AYyyLqyMl6OnpkUt8bOf4esJJqvPDz41RiltbjcRFhKSkbt22Lw?=
 =?iso-8859-1?Q?bHZRkxLcOR8kQZo7JLg9aEJWlmvcUHEvhztu9wX8jwntlyW5VbGcFv4JTN?=
 =?iso-8859-1?Q?3letlyRaIg0eGb0m6cnRTuj9Dukoj8OyQDAEWHYz43Y03VXS4JYuMfZtTi?=
 =?iso-8859-1?Q?z2vMOgYuiZqGH8OoUgGH12g79TdFrjNUPaFlF6wUyd1+AUWlKN5ifaErxq?=
 =?iso-8859-1?Q?opnAKiSMJJ2q+fWxbSM9KOBiG7ZS4G+YD5U9i7d6243hhMNgi4Ko/qL140?=
 =?iso-8859-1?Q?8zVV902ht7FWAQTjFr6XyFt96zytyETEEI8I6bJNLFHcqqfqasddGd05kp?=
 =?iso-8859-1?Q?n0BBVUmd+ZT/vBYozU3v5BIT4QrgHgc2M9rUM4E5oa1Rbqt54eIUAxae1O?=
 =?iso-8859-1?Q?b2XbTxxW/UC58cxaCiU6KbuDEmV+VGIeKrcqFd7oVsiHg6mrhaHrjSlLBB?=
 =?iso-8859-1?Q?Cmbv8z2U2F/o3JDcwq51hmdCn4vbH8D0CbjiTa/KwYO11ibjT3kalxeBFR?=
 =?iso-8859-1?Q?480ohjuZBIOjNRyLsK3bgbvDnk4mM3BZok2s38SOBYuOL/75jIiHW2bXGv?=
 =?iso-8859-1?Q?5zLw1OAU4lIPzk8ydPFNl/F/p0H+Gc4r3tXs+QZfdXtGGxO+SzkRO8GtT0?=
 =?iso-8859-1?Q?m0JUoo2zzEnb//dF2LT2R/tJPEHxtbm2qdju+pHz3xfdHO7K58urh7C083?=
 =?iso-8859-1?Q?WbzR5+HaElAHb9AK7J5PbA4+9+aLTc+3x0FYM1N6BUcZX8OuwRhke//A4Z?=
 =?iso-8859-1?Q?Cm1h/5h3sg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB72514DC2F3B87AC70DB0F90CD5032AS8PR08MB7251eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kempower.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7251.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a34f851-0c12-4c18-6489-08deb4ed9447
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2026 14:56:02.0916
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08631c2f-66d7-4254-afbd-4f0e104d509d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nPggP/LYrkiixZrVOAtwVS2KjSMXi0BxS22vUB50CB02ImAjnDBWh00lNhyO7pwagthRYwqoSB3nEgMCnSdgqUy9e74k4zfHIMLnnGHCxQ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8724
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 May 2026 14:56:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66575

--_000_AS8PR08MB72514DC2F3B87AC70DB0F90CD5032AS8PR08MB7251eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


> Basically anonymous python, event handlers and everything else you
tried is *way* over-thinking and over-engineering, and no one will be
able to understand what you did there, and why, because that's not how
such things are typically solved.

> The standard, working approach to form SRC_URI dynamically is to first
set a variable with a function, then use the variable inside SRC_URI
assignment. Which is what we all are trying to get across.

Ok. Thanks for advice, all of you!


BR,
Antti G=E4rding

--_000_AS8PR08MB72514DC2F3B87AC70DB0F90CD5032AS8PR08MB7251eurp_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof"><span style=3D"font-size: 11pt;">&gt; Basical=
ly anonymous python, event handlers and everything else you<br>
tried is *way* over-thinking and over-engineering, and no one will be<br>
able to understand what you did there, and why, because that's not how<br>
such things are typically solved.<br>
<br>
&gt; The standard, working approach to form SRC_URI dynamically is to first=
<br>
set a variable with a function, then use the variable inside SRC_URI<br>
assignment. Which is what we all are trying to get across.<br>
</span></div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;"><br>
</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;">Ok. Thanks for adv=
ice, all of you!</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;"><br>
</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;"><br>
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

--_000_AS8PR08MB72514DC2F3B87AC70DB0F90CD5032AS8PR08MB7251eurp_--

