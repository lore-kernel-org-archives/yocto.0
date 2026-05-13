Return-Path: <ext-antti.garding@kempower.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3391BCD4F21
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 14:22:55 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.66.110])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8750.1778682164408449547
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2026 07:22:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kempower.com header.s=selector1 header.b=qRfwjdpx;
 spf=pass (domain: kempower.com, ip: 52.101.66.110, mailfrom: ext-antti.garding@kempower.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J/9TVuiOdOK9KTIWUgdJ26WKMA6h3lc7LQQqT/I2FeFOdS0RUvJIJFia+IdGtv4j5v6WP+qxo9IWjXIMSuWCuQFdTAHA2CillQy8JclrtW6x/7ZnSE1ILf1aXlQNy9A3iZdy12ecM+ruB0GrNSny6cVAMv5aOE9+XZP+wWPIaLFb66nsI7xVlnQgOSlv/wOUjY9TmdGDk9ZOFFyffgNtv93oHxieI84dxG4jHaQ2wpRUudQZ/qT0xNU9B6HJ7scMPyw2fC+aSdo2oo91+SgG5zHUwd4b2GiAwVb0efYwOSfOtHUqOAhRSb2LA/+cr0VT5CInd2iJkBz8S6pcLsBT0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ToLvs2SQmWGGmr1DNEBpvxvejtnAnT7XK45fj2eJt8=;
 b=DelmYRC58d9vlWsmF3mZN8Nln+aZgfKPsoR+9Er1boNN6xA7WL0bNu8s2I0iKovS1rJPRmFMTVfIM8AJPZCqnNf0HrrsaUYT3q9yqrFIPRxwJFnphZSQBwsQub/G59o9s9JX/bqN6Vzb/kFJOBuwUzcEtoLvY5a39s+/YMDW93AODbFGEwCJOG+5A5bAnA4SKCPLJEMyAKVhI66gA7gFkR6GylfYMMgCauEXQ5rPGyrK46DG4QyV1skq5kNsFOxkASOPLYp023Dr3FN4M1qlLIsPWGTB2D6EDJtoCFPf9vc1TrXC/LCoSUwJRsGQ9WdQa99kB/xJfnwpiuJ8ttib4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kempower.com; dmarc=pass action=none header.from=kempower.com;
 dkim=pass header.d=kempower.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kempower.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ToLvs2SQmWGGmr1DNEBpvxvejtnAnT7XK45fj2eJt8=;
 b=qRfwjdpx23tIvq/Mqu3kwyRZuv5/aJANmPxX24Zml3d/46kkpXspRyAb5E5T4LBfDdXiCKgBbhpexG4OAw5xTN6JhCYRiNqhZTu2RoVApOyvnTwyS25br6dzI7sKjnpkuRx81s0YQ8J6Py/OgvMGm1ka0b8DNOsKK9ITByFPk6Zuzz8WgoLRTF3AvwzHYrPIGSVg5i1cUZfZiQfDoehl+mkXtBSrsFBjICy2EsjShvTx1tat7NnrF1aCAHpjk3X5OP1noWdQ92D5nDVWmmWipVU2RHhOMd6PflUTLmwHLAypayqXJni4rmgUljh4Ifeo6Ghmpg1T+esA7JhEbGBE8g==
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com (2603:10a6:20b:342::22)
 by AM8PR08MB5732.eurprd08.prod.outlook.com (2603:10a6:20b:1d4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 14:22:31 +0000
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d]) by AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d%5]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 14:22:31 +0000
From: =?iso-8859-1?Q?EXT-Antti_G=E4rding?= <ext-antti.garding@kempower.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Topic: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Index: 
 AQHc4hww6A85r090PEm7Pqr9xvkthLYKfb+AgAANdWSAAAUsgIABWqPNgAAQGoCAAADOMw==
Date: Wed, 13 May 2026 14:22:31 +0000
Message-ID: 
 <AS8PR08MB7251A410724D0D006312018ED5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
References: 
 <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
 <AS8PR08MB72519BF260608361FE603E29D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj_VGh3G-b6mWPqJO6WukwRhkh3Gvjffk3GXG8D05ezeOg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_VGh3G-b6mWPqJO6WukwRhkh3Gvjffk3GXG8D05ezeOg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kempower.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7251:EE_|AM8PR08MB5732:EE_
x-ms-office365-filtering-correlation-id: 16622a45-0853-4603-d6c4-08deb0fb11ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700021|11063799003|56012099003|22082099003|8096899003|18002099003;
x-microsoft-antispam-message-info: 
 bAolokYywqJQg+J/g9Rshnt4u8l7r8In1mIp+cxuDva/UOGZCmERrJmITr0rgdgFbWpZrytt+jVYC0lOBbTYRM5AOec5obGh3h3Feg/RX42LQZ9v15Wtv/x+XaY1z1jnUvvLMWu1h/8EdpOuxrt/jH8RStjKygJbxj1kIvgg3RteajrnD/19a95zBkb6YwwHabu1PtN8NSooP1WpHKzDqaFG0NZL75ylt7kYKC55WyJPakpXBx9luqT69u2G+tuHf/5Vve/LauIaNtPCunmpMlT1GEbPiO2Q0+1ygjVTYJpgXASOaT8R26e0dqxbPdcA/ZDwmlX5Ijc1lU9/1Xt8s4CwLZXtA+eemvNGDfSWA3Wh+hgQfGGrSlv5ORElBgKaaqc6Ob/5kqqJk9x7wwoW9ncZrkVgfyASIf+jvKrBxfqGXtmjOJjwfHliHEsW60eSHDNtJwJTYD97dYDTFJw1inW9wPEt3IELqARlnExA98/8MUyb+R3N0AKel4+Dnstsk04k6ZPVTwyuf9QIz627+I0krHJMNF+LFT3l3qNgamLAT372gP4pTWCzYC84WR1m63l0WSDeKzCBSpbhADry6MJt525J5xx7zedcRVedp60p/dPLeFwgknqUjEGoW79kKnwNGm8pGz/MDut+ii7/D8xu8Fqo8S/IOLXjBybH036/rABR3lEnLZMSUZaifQeLUJtaByooXXmRqY+saRda97mjLsN3mn7afjCQgH1pJsDMZa8WIj183Nj8l+KKe35Y
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB7251.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(11063799003)(56012099003)(22082099003)(8096899003)(18002099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?cuejXnwA/CYc34q3My/02T/iLnRSYlRyoYTS6SYbxUeYc8Ia40FR0ApXN+?=
 =?iso-8859-1?Q?N81P8ZgeWqeBgAUgYHsvOFKxIsyiQC18Ujnnj9Qj7FyVBxv3AuXcqIPojR?=
 =?iso-8859-1?Q?todVqo/bPc1j2cMZYIvhqILJ7tNUVF2lZ4j1nfXVQ3gIWKxsxryNfGfM9D?=
 =?iso-8859-1?Q?Aab/12KLhsSbl/sJgchbLIXexDl+Y9dwiDkSpCjZ/gQxx0GzCbEDlkOEfm?=
 =?iso-8859-1?Q?DgdUr6VV4nksBHl9ITvI004JeI9dQ8sx3KJkRXIAYiRS7QKT5N+p18q6D4?=
 =?iso-8859-1?Q?z74u9bET64SNYsHX7z7jX5jt62waRNvpGgVrg+1m+6xaH06lz8568qRcUA?=
 =?iso-8859-1?Q?xD6qCLjchw8sGp2PcxRtIYE9D8numrhotgQBUlXQJ1+1bb1M8qNwFB2QOv?=
 =?iso-8859-1?Q?OOUiWqQ2+1Zl45yIVw1ttScLSJbzviijm+C6cmWC+KTwWYA7it+Om7qliw?=
 =?iso-8859-1?Q?3OCcdZr7GyNW/H/ED/I6Bt5fpJcgDNDMH8rZNAupscvX6ElA8T5AuL0l9E?=
 =?iso-8859-1?Q?EU5m+T76dw5jQde6SvFqF4071ZOduwFLMcSe8qY1UUiP15z4eU7MUS04wu?=
 =?iso-8859-1?Q?OiSSkYxBrHaqTtnfR7pMSJetvwjgpCD16aVfr8r3D/Oo4JwoCKSi5uXG+T?=
 =?iso-8859-1?Q?b09sxx6IL8HfAAdNVHg393fOcq7ErFnzLmJLgmn5CDyvAleYh6lRWlEN7h?=
 =?iso-8859-1?Q?FPrOouSzjnuKtf1FnvtXd/8z9TBns2MYSQwt/Ft/vYJeFM3QJ1fRMH9IRw?=
 =?iso-8859-1?Q?MIjmvcXfAwTHom+vZP2HQN3KDupGAiIrU8tnkPqVLgiT22hf60m9rBgVv9?=
 =?iso-8859-1?Q?UVOOZl66AXkejWXT+cNby+bzXd+1d3uEF4KXJJzCRtPLju4vrzLUbDvI0U?=
 =?iso-8859-1?Q?B+XGk7KxyBCRRRjuJgGbAqKLynUxOrn5W/y1YDqKrMadpIeLqPhA/LFr0c?=
 =?iso-8859-1?Q?2G0M7TkOe4rXvToAmisOQv19BrPM0sK+DX8UPXOIW7swpw3PA4w/f43Kyo?=
 =?iso-8859-1?Q?HuimqceIx6kzjQCk3WGJKcE5psvbQmCrHfmhozDzovhZoRMNufWOr5b0i1?=
 =?iso-8859-1?Q?TJC6Q4yfnp+lCdNzMAPLPNncUfsE/ASu4GXpP6FfKOicKjRHoZBLJniB8T?=
 =?iso-8859-1?Q?jvXOElq04KzUl+Y2EbSXImGs4bYYkFgu6njsiXRroRhrt+KqK2WXIsqx8b?=
 =?iso-8859-1?Q?gf0apdgIgtoAgBM70lp4UmsSDnb1NET+77+cUNRUI7zmgxZnVArVYpE0mp?=
 =?iso-8859-1?Q?dIrnNaFgnDgitwTc6AvEZJeKc54gN1adR6zXcbtI4FW6bDSNJaZxobA8Nc?=
 =?iso-8859-1?Q?+mAHDnQ516+PbtNujzEH05mzHqeDiSzIptf4mKM4Xtz0f5FVm4vJ7so6cN?=
 =?iso-8859-1?Q?N5wV8UjMcDEfgwWaqK6+a8AfEeg/GzlhVYpQyP73mtVPiR2TPlIkDDCb6r?=
 =?iso-8859-1?Q?qAwjyYQGxd7VGg9wudOYGNP4kXIg2f6KNmnRuTCW2dVGpUDtKDiiU1/mmc?=
 =?iso-8859-1?Q?+cFWlkrO+5UL+9qE+S78BYzPIxzLNyFJjMn5s85++NFEyWWgZd5Qyjq7Dd?=
 =?iso-8859-1?Q?f0e1SmIrb8rINJVg+5Z5owIzK1dagtuq13yv1HK4ZRYbfdMlx/25aVyuv5?=
 =?iso-8859-1?Q?v4mm1s1XkgXWq9zmQtbPcTAcvXCnl+OTNUOotIeQB9+RJPQDaxmshnVP0q?=
 =?iso-8859-1?Q?JI1QH3/ubysbGwruuEMsEY2LFxUnH3bzMzYXsezo8kQ8v+SXwNPm2c2b1V?=
 =?iso-8859-1?Q?H3q+Mdf80Hi/cKBHo8hc1tkmHQ7Br+L+sDgcH55WNSyOlqVjIVDWltkS5/?=
 =?iso-8859-1?Q?glGyxKX2FA=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB7251A410724D0D006312018ED5062AS8PR08MB7251eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kempower.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7251.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16622a45-0853-4603-d6c4-08deb0fb11ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 14:22:31.2884
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08631c2f-66d7-4254-afbd-4f0e104d509d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p9cDuN75ABVxxPjSOMITnFlSZk0qr1DfO81zgRrGbT/hdSwpVuFVV9E28Hskr8WJ4x96ORyQgKcJVQzlQO5S5eeYoo9oE3ZM9R7NMnQJSSY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5732
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 14:22:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66556

--_000_AS8PR08MB7251A410724D0D006312018ED5062AS8PR08MB7251eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> You still aren't saying what the condition for adding, or not adding
the tag is. What are the two scenarios here, why would one or the
other be selected? Please: if you want help, you should be forward and
clear with the use case, even if you have to disclose 'something'
about your development process.

If there is only one repository in SRC_URI, then that is the one to add the=
 tag to. If there are more than one of them, then one of them is the main o=
r root repository and other repositories are cloned into subdirectories of =
that one. That one is identified based on a name parameter with help of the=
 variable defined in the recipe that I mentioned earlier. Each SRC_URI entr=
y is checked to see if the tag should be added to that entry and if yes, it=
 is added. If it for some reason ends up being added to several entries or =
to none, that will either cause the build to fail or the tag-commit-hash-ma=
tching in bitbake to give false positive which are both acceptable outcomes=
 in that situation.

> You can probably just always inherit the class, but the class would
add the tag (or not), depending on whether some variable is set. And
then you either set it or not in your build/conf/local.conf, or some
other place that affects bitbake configuration for the build.

For debugging purposes, the appending must be easy to toggle on and off for=
 any single recipe. I would accomplish that by having it packed into a clas=
s which would make its decisions based on the meta data that is already in =
the recipe inheriting it.


BR,
Antti G=E4rding

--_000_AS8PR08MB7251A410724D0D006312018ED5062AS8PR08MB7251eurp_
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
&gt; You still aren't saying what the condition for adding, or not adding<b=
r>
the tag is. What are the two scenarios here, why would one or the<br>
other be selected? Please: if you want help, you should be forward and<br>
clear with the use case, even if you have to disclose 'something'<br>
about your development process.<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
If there is only one repository in SRC_URI, then that is the one to add the=
 tag to. If there are more than one of them, then one of them is the main o=
r root repository and other repositories are cloned into subdirectories of =
that one. That one is identified
 based on a name parameter with help of the variable defined in the recipe =
that I mentioned earlier. Each SRC_URI entry is checked to see if the tag s=
hould be added to that entry and if yes, it is added. If it for some reason=
 ends up being added to several
 entries or to none, that will either cause the build to fail or the tag-co=
mmit-hash-matching in bitbake to give false positive which are both accepta=
ble outcomes in that situation.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
&gt; You can probably just always inherit the class, but the class would<br=
>
add the tag (or not), depending on whether some variable is set. And<br>
then you either set it or not in your build/conf/local.conf, or some<br>
other place that affects bitbake configuration for the build.<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
For debugging purposes, the appending must be easy to toggle on and off for=
 any single recipe. I would accomplish that by having it packed into a clas=
s which would make its decisions based on the meta data that is already in =
the recipe inheriting it.</div>
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

--_000_AS8PR08MB7251A410724D0D006312018ED5062AS8PR08MB7251eurp_--

