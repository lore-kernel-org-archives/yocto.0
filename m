Return-Path: <awm5463@psu.edu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 236C1F3D5E3
	for <webhook@archiver.kernel.org>; Mon,  6 Apr 2026 13:51:57 +0000 (UTC)
Received: from PH7PR06CU001.outbound.protection.outlook.com (PH7PR06CU001.outbound.protection.outlook.com [52.101.201.24])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.55369.1775483508501589308
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Apr 2026 06:51:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@psu.edu header.s=selector2 header.b=CIW+Mfci;
 spf=pass (domain: psu.edu, ip: 52.101.201.24, mailfrom: awm5463@psu.edu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ureQy1hYAFpCfS4lCwHkWNNVjnf0U/PwfrjgqE3b8ZamI80aGpf9S6oBcS2hi56Fxo/R/oz/p4d3wAfTWuuPOLKifSFoSSX/2TWDUQ33WJqGbksbECply53j1t3WJ0gw++P7WmVCZybNzdeFhYXFh1zxMMCy7XuWMw2/r/C1fWgt9aYx2whRTmbvpcxU9VerAk6eLvHEwACdAebsJFLEjIxMgCerDFpZoO5U0CViWCkVlQtdAXiPtzJ7RCZKmjfSAbYp2UZIFKqg8vc81JWXO9408YRZzc0lczaOlBlmMZhpp59tleXbeq6gwmiy5e4eRkAqXsYHdp22aXH6rUoBWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B2rtdXDKC5BCou6nkVzoPeHSyONbaloUnOIGjzSTrKE=;
 b=CLCFtbj+6y42MRoLwl/vZuxBLXYU4jqOHZDaf+1i3JfNZvjeW+lYDOlV6woy6552MKTOFXqgfmQCPGdJM+wWxP8J+Ty83KhJ6nb6DrmUCHk+3pmQNqcWWE4PNxX9tW/2yw/n9JmbYlLxtDnkwN7Qz7GPDeBY8ruSmT7jo0WDcPH2sneFhhTUhk6PcyMaSGdmx7toDUmgy9ams5hcyJlOQBXARMlsB3kT0mEXxtLLDTvDk+S1wwtCR0R+AvII7PrQe3es8LlV3BYrZTgpwZuwRzKFu13fxngqBWQx34jYa3C9zn2hvFO5Y2xAmFNmjB/CI+dAWmVuSvvhFSQMKjAVWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=psu.edu; dmarc=pass action=none header.from=psu.edu; dkim=pass
 header.d=psu.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=psu.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B2rtdXDKC5BCou6nkVzoPeHSyONbaloUnOIGjzSTrKE=;
 b=CIW+MfciXRVPVIu/cbATV9LJvpBxOQJgOErkb46YEeaW30mT9ZydNNHdBmaDTZeK9ATeElZeUhKYk9CSf+waP9v3CI5V4l2Dv1mkhJN7lrDRaVOaLrK2OkYFy4Tu6Kx+UsE5GS7nCH7GEjEUCEYii/FECr6O1V7aNgDkFRb96odKWFc2SUdbKGAjAUud/GRHzG0Zop0SpbzcfhTkrtTKRz3cCOCi4zCwyleDxxwwdqSrdqkqjubDGYkkJwMNB6naSQFdhbc3FTLZLHSQsd41UdL+L+1uHt+j5MPqdVStXB6qW3TYnDl1+Z6E/CWAO4553aYAXT5dHuM647QEIfHVig==
Received: from SA3PR02MB9996.namprd02.prod.outlook.com (2603:10b6:806:37d::15)
 by SA3PR02MB11046.namprd02.prod.outlook.com (2603:10b6:806:460::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Mon, 6 Apr
 2026 13:51:46 +0000
Received: from SA3PR02MB9996.namprd02.prod.outlook.com
 ([fe80::f762:c2aa:e59:fd74]) by SA3PR02MB9996.namprd02.prod.outlook.com
 ([fe80::f762:c2aa:e59:fd74%5]) with mapi id 15.20.9769.014; Mon, 6 Apr 2026
 13:51:46 +0000
From: "Marchini, Anthony A" <awm5463@psu.edu>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"pokybuild@yoctoproject.org" <pokybuild@yoctoproject.org>
Subject: RE: [yocto] QA notification for completed autobuilder build
 (yocto-5.3.2.rc1)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-5.3.2.rc1)
Thread-Index: AQHcpNBGq1Em6ydGkUCNkmpVfhahh7XST2PK
Date: Mon, 6 Apr 2026 13:51:45 +0000
Message-ID: 
 <SA3PR02MB999616996BFC76AC00C15988A95DA@SA3PR02MB9996.namprd02.prod.outlook.com>
References: 
 <0101019c8ae412ff-845f6e40-3349-408d-bf21-31af2cb42d7b-000000@us-west-2.amazonses.com>
In-Reply-To: 
 <0101019c8ae412ff-845f6e40-3349-408d-bf21-31af2cb42d7b-000000@us-west-2.amazonses.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=psu.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA3PR02MB9996:EE_|SA3PR02MB11046:EE_
x-ms-office365-filtering-correlation-id: 1c1c0f63-5c21-4c4b-7391-08de93e3a486
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|10070799003|3109299003|69100299015|7049299003|376014|1800799024|366016|786006|38070700021|56012099003|8096899003|13003099007|18002099003|22082099003;
x-microsoft-antispam-message-info: 
 EJwOT4CIwHHK4G7SCZhpOO0cFv736Jk3lJRjiBQ2G+lmXiUcCV1A80Wl65wxkFPVREl2wtGki1vM92Y3TTbXv9OhbYEXSltdkJiaPAc6HNdd80WvNBfAtkwIg53NFwW8QXViZg+PdWn40cugFl2We7eGrUb1fIrhY6PdAqBBxTMVJbj6jBSy1gNFFrsTuZJC0Ta8CmHdG3TWjDFyE4LaUifoIW+bOF84OTIu+/XLCmQLbTwrZNIKUzI8fALuHcclWTXCKzqzrwCaB+9i65fjNYO4oB4ixGvGN7QFOdDnOYhZGctFmCoY9PRvvarTCmrwqYrTP5oMfDlQ/2NDChnp8diXoEOtTcGSBwN8QZPtFZfhxvlPkclFeGsy2c1r3xlRSReRo0IDPTGVV/a6g9IyMjeaT0QJwZesQ/8Q28+pd74Pp+MpoHQie/4eqxp0cQ9DnSI4usKkZp+PhtDKJaJxgEXOjEol2se7ny3sjpOa/skFDyMLKTXz0lTyk4DTR+ufwxN+ihq9fa0uvBC0GJTjPRA1IAvbuuFWIJkcGUSFN6ONv4Ywm2nTHIt4A7YII6L9cYSSh/qB9nbrKTJyj5lcUiwQkj4m87qaHyDDuT4Kvjrj2WBxvBYRzJwn6ikKT4kl2KPDvgDkhLZ245KdehpJcaYIg+8zCiM0gsNaWkAcXiuJrMtvIQkHpPga3V/OoqkCggM4YRfJEr1Tz/6nW6MDhM1u3Byt/kHKELyz7RFVSPvi+htMEQANKAhlTL8wseOW
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA3PR02MB9996.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(3109299003)(69100299015)(7049299003)(376014)(1800799024)(366016)(786006)(38070700021)(56012099003)(8096899003)(13003099007)(18002099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ADLorHXkX7/0ovhXbZYWOyMPT2VDZwHjKEJH+YSC7hqMO8ehBz7LHitr803M?=
 =?us-ascii?Q?m1dxG0bDctwiTa7DyUfsFO6xw7gpj96qoRcoxo5SAg6ZXtuFVxkUc6ttAEwI?=
 =?us-ascii?Q?9JyRzBk0aaZV5joHy8hXiLzaLIQ7KRerkLt+KeUYN2+CaCpliZUe/7ulCDgz?=
 =?us-ascii?Q?kkewCCqPZ73xxly5TEbkOtvzJbqHrhJtmbHsOKr3v9gEU6PHv8wzuiOAkr+V?=
 =?us-ascii?Q?3zVEOLNPDN/V0dScQP+IVBD4J+IQ/MWUspS2isnkqhFBjEba8h1uCgLdWvB5?=
 =?us-ascii?Q?GfRpqzmRitobFbRwOwNQjDUY71kHHLJs4KRh1KWhgJwi+gvj2A+2PD742EF9?=
 =?us-ascii?Q?e+VVpTwEkglZvsF0hBW2aBV6/aXGDyhSJ2SJBJOIqKTGhVWG1YFbLu/Oevv9?=
 =?us-ascii?Q?3Jg5TuEikg1w1QXPNq4VbMiGgoUNDJfVI6/a/mMSVTmoJa493LtkRgHuidoL?=
 =?us-ascii?Q?6k/nl6AudXZ8s/H2wp7n6bXW+kuoLdp4FQZmf6c4BeP4geDRr6wYQ1D2S4Qa?=
 =?us-ascii?Q?Ncb+1QxOgvWrcThVl6NarjqQ0rs6dT0BlALLBEo+3ACrmNWuR6lx7LtnhJ65?=
 =?us-ascii?Q?Nr8Ep1hk6Ew2Bp9+VLtScyRQ/8nDWVEZwiRKaSzQOoSDOt8usglnFw29JLlF?=
 =?us-ascii?Q?mDPu1UY4ek0ENumUdztJE4dni1XTJe9HtBdgUzQkOMMNAKxfnMKAzbDOfynI?=
 =?us-ascii?Q?9B9dFK9BXejgvInNTr16zuVhXR8jdFIxZYzJ/rjkAWxu74AOxEYkf6oR2C4H?=
 =?us-ascii?Q?VDjjiAc20vXiP+LhDqzbBlJNucH1lDMQrF4cZwn4wfXfbveKp081oyiJXAtP?=
 =?us-ascii?Q?4fCfVCXLW/tv3mP62MI4tRqJz0Ob1ISL13zCVib9B8BDBL0qskooEebSQC3a?=
 =?us-ascii?Q?v5Zk8WPnrEKYQGt8XYrdC7MAorSu1FteX6MmjjQWF7jTf+/sQSAN9Q6MJtkO?=
 =?us-ascii?Q?cayqqPFVi0pBT1CiPEe70c0BJOGs3wj6WtNWcckFyIX0jq1tQtnWVL6IQw4+?=
 =?us-ascii?Q?V0cCxnUcm7HpMN7gqdPtINl4Wy70DDBxdENre6bsnQk5zLTaVrxP/V7JP854?=
 =?us-ascii?Q?74ePqa3+1utpFZuoB0t1YVODiSrKNGM44oM1OxF0ABQsoZ8Q3YoonH1IN46c?=
 =?us-ascii?Q?Q8qfaA5cH0FPTKbw1m7KqIRcmhMmWpp2U9Z9B9nLS84mh4Rtqt4TWFQ3k7Cd?=
 =?us-ascii?Q?iIo268KrS6JPcAvPAvNXa29Nmmd8Vf1ML5cwaU9ufbsvM0OKAOVYkjjA+Mvu?=
 =?us-ascii?Q?B8NIw3PDYCMTQ8APV24qnIW1dQx5qWoSGURNYkqO3Lxp8yQCHbapGPReKXKb?=
 =?us-ascii?Q?jpHbjPrEqBJgSk0lS7TBEnIcebMdYou3FsuJvXUYURiFYdnnr5gGZwLsU7lq?=
 =?us-ascii?Q?bCpVK+KdmDRkLQ+8YNcZWwb3SAfyZfJrtJoGTX9UtC9m9Wy8420DpH4ors8T?=
 =?us-ascii?Q?SH2q1vC+OHUoRVDaI45RQP1MhocPRvRwsatPlu01c6RakHNamuMbbkcM0DEt?=
 =?us-ascii?Q?GeJ+tN0k0SewqCIunDwnVwgOXRrFsMOo4IEanwUgzQUsD8MGQDgbw41m90hX?=
 =?us-ascii?Q?NseCfpR1rmmtvKyn7M1xoEd/15Q9XRb28JrSUQnpPSlVXYVxtB/c0c2wyaxk?=
 =?us-ascii?Q?FtlBmRye8UL/yia2oGpi1MQHn5TgjNGf4D25dDaf8xae/sLYyZ4HWaX6RGEw?=
 =?us-ascii?Q?hS1PRT+FU8r1thHd5XeCXWURZIvRAEWYpW8vXztGHZPZ1LklXPilhAupa4GW?=
 =?us-ascii?Q?jjFLTMsahg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SA3PR02MB999616996BFC76AC00C15988A95DASA3PR02MB9996namp_"
MIME-Version: 1.0
X-OriginatorOrg: psu.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA3PR02MB9996.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c1c0f63-5c21-4c4b-7391-08de93e3a486
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 13:51:45.9964
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cf48d45-3ddb-4389-a9c1-c115526eb52e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PTaah3j1MZfzfo833hlvxK4FkuOks3G7NN9zepNIjp/M+QPSPoLUut7SMPvmlGA1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR02MB11046
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Apr 2026 13:51:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66385

--_000_SA3PR02MB999616996BFC76AC00C15988A95DASA3PR02MB9996namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

[laugh]         Marchini, Anthony A reacted to your message:
________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Pokybuild User via lists.yoctoproject.org <pokybuild=3Dyoctoproject.org=
@lists.yoctoproject.org>
Sent: Monday, February 23, 2026 2:25:28 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Cc: qa-build-notification@lists.yoctoproject.org <qa-build-notification@lis=
ts.yoctoproject.org>
Subject: [yocto] QA notification for completed autobuilder build (yocto-5.3=
.2.rc1)


    A build flagged for QA (yocto-5.3.2.rc1) was completed on the autobuild=
er and is available at:


        https://nam10.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Fvalkyrie.yocto.io%2Fpub%2Freleases%2Fyocto-5.3.2.rc1&data=3D05%7C02%7Cawm5=
463%40psu.edu%7Cbafe3330088441b36a6e08de72e766bc%7C7cf48d453ddb4389a9c1c115=
526eb52e%7C0%7C0%7C639074535354555532%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hc=
GkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3=
D%3D%7C0%7C%7C%7C&sdata=3DU6IbBrIkmmN%2BXySfo95PMO42aaRkIakcHD%2BsYvnolTg%3=
D&reserved=3D0<https://valkyrie.yocto.io/pub/releases/yocto-5.3.2.rc1>


    Build URL: https://nam10.safelinks.protection.outlook.com/?url=3Dhttps%=
3A%2F%2Fautobuilder.yoctoproject.org%2Fvalkyrie%2F%23%2Fbuilders%2F29%2Fbui=
lds%2F3262&data=3D05%7C02%7Cawm5463%40psu.edu%7Cbafe3330088441b36a6e08de72e=
766bc%7C7cf48d453ddb4389a9c1c115526eb52e%7C0%7C0%7C639074535354611011%7CUnk=
nown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4z=
MiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DwYXmSruEvNq7jzu78=
R%2FSmMzNKsj7ImSnAOB6nIQROds%3D&reserved=3D0<https://autobuilder.yoctoproje=
ct.org/valkyrie/#/builders/29/builds/3262>

    Build hash information:

    bitbake: 7af7e04f3adc8ba144d9e2e6b37ed4ddb3b59df0
meta-agl: c1761e898d7fca3d8438e9b010eaf234f94fa407
meta-arm: 73460c53949658ab6c8b46269c3a69caccd3f745
meta-aws: 49ee51b051ffa9a0eb3325cb8fea351eaf8cb9d6
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
meta-intel: 8ca2f37f456db6693e696174ada1f4317e3ebee2
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
meta-openembedded: d28d0a23615f4d91d125fdcd247a71245087dab3
meta-qcom: 49bc2113adb0b86d463c311d32d4fb1007fe4845
meta-virtualization: 8f03a0cc8950ef5d5e4f11d9ae494946d1991e45
meta-yocto: 691ff0fbeab54eceb26d90140d7a8f672532235b
oecore: 21314665e198c1abe458d0bad5c4d14d4c3ad856
yocto-docs: 9c363d270ab45f3443391fb7275817db69d8a5d4



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




--_000_SA3PR02MB999616996BFC76AC00C15988A95DASA3PR02MB9996namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<div>
<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" style=3D"background=
:#EFF6FC; width:100%; border-radius:10px; border-collapse:separate; border:=
1px; border-radius:6px; margin-bottom:12px">
<tbody style=3D"font-family:-apple-system,Segoe UI,HelveticaNeue-Bold,Helve=
tica Neue Bold,Helvetica Neue,Helvetica,Arial,sans-serif; font-size:20px">
<tr>
<td style=3D"padding:5px 15px">
<table style=3D"width:100%">
<tbody style=3D"font-family:-apple-system,Segoe UI,HelveticaNeue-Bold,Helve=
tica Neue Bold,Helvetica Neue,Helvetica,Arial,sans-serif">
<tr>
<td>
<table style=3D"border-spacing:0">
<tbody style=3D"font-family:-apple-system,Segoe UI,HelveticaNeue-Bold,Helve=
tica Neue Bold,Helvetica Neue,Helvetica,Arial,sans-serif">
<tr>
<td><img alt=3D"laugh" src=3D"https://outlook-1.cdn.office.net/assets/react=
ion/laugh.png" style=3D"height:25px; width:25px">
</td>
<td><span style=3D"font-weight:bold; padding-left:3px">Marchini, Anthony A<=
/span> <span>
reacted to your message:</span> </td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> yocto@lists.yoctopr=
oject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Pokybuild User =
via lists.yoctoproject.org &lt;pokybuild=3Dyoctoproject.org@lists.yoctoproj=
ect.org&gt;<br>
<b>Sent:</b> Monday, February 23, 2026 2:25:28 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Cc:</b> qa-build-notification@lists.yoctoproject.org &lt;qa-build-notifi=
cation@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> [yocto] QA notification for completed autobuilder build (yo=
cto-5.3.2.rc1)</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText"><br>
&nbsp;&nbsp;&nbsp; A build flagged for QA (yocto-5.3.2.rc1) was completed o=
n the autobuilder and is available at:<br>
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"https://valkyrie.yoct=
o.io/pub/releases/yocto-5.3.2.rc1">https://nam10.safelinks.protection.outlo=
ok.com/?url=3Dhttps%3A%2F%2Fvalkyrie.yocto.io%2Fpub%2Freleases%2Fyocto-5.3.=
2.rc1&amp;data=3D05%7C02%7Cawm5463%40psu.edu%7Cbafe3330088441b36a6e08de72e7=
66bc%7C7cf48d453ddb4389a9c1c115526eb52e%7C0%7C0%7C639074535354555532%7CUnkn=
own%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zM=
iIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&amp;sdata=3DU6IbBrIkmmN%2B=
XySfo95PMO42aaRkIakcHD%2BsYvnolTg%3D&amp;reserved=3D0</a><br>
<br>
<br>
&nbsp;&nbsp;&nbsp; Build URL: <a href=3D"https://autobuilder.yoctoproject.o=
rg/valkyrie/#/builders/29/builds/3262">
https://nam10.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fautobui=
lder.yoctoproject.org%2Fvalkyrie%2F%23%2Fbuilders%2F29%2Fbuilds%2F3262&amp;=
data=3D05%7C02%7Cawm5463%40psu.edu%7Cbafe3330088441b36a6e08de72e766bc%7C7cf=
48d453ddb4389a9c1c115526eb52e%7C0%7C0%7C639074535354611011%7CUnknown%7CTWFp=
bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjo=
iTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&amp;sdata=3DwYXmSruEvNq7jzu78R%2FSmM=
zNKsj7ImSnAOB6nIQROds%3D&amp;reserved=3D0</a><br>
<br>
&nbsp;&nbsp;&nbsp; Build hash information: <br>
<br>
&nbsp;&nbsp;&nbsp; bitbake: 7af7e04f3adc8ba144d9e2e6b37ed4ddb3b59df0<br>
meta-agl: c1761e898d7fca3d8438e9b010eaf234f94fa407<br>
meta-arm: 73460c53949658ab6c8b46269c3a69caccd3f745<br>
meta-aws: 49ee51b051ffa9a0eb3325cb8fea351eaf8cb9d6<br>
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871<br>
meta-intel: 8ca2f37f456db6693e696174ada1f4317e3ebee2<br>
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10<br>
meta-openembedded: d28d0a23615f4d91d125fdcd247a71245087dab3<br>
meta-qcom: 49bc2113adb0b86d463c311d32d4fb1007fe4845<br>
meta-virtualization: 8f03a0cc8950ef5d5e4f11d9ae494946d1991e45<br>
meta-yocto: 691ff0fbeab54eceb26d90140d7a8f672532235b<br>
oecore: 21314665e198c1abe458d0bad5c4d14d4c3ad856<br>
yocto-docs: 9c363d270ab45f3443391fb7275817db69d8a5d4<br>
<br>
<br>
&nbsp;&nbsp;&nbsp; <br>
This is an automated message from the Yocto Project Autobuilder<br>
Git: git://git.yoctoproject.org/yocto-autobuilder2<br>
Email: richard.purdie@linuxfoundation.org<br>
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp; <br>
</div>
</span></font>
</body>
</html>

--_000_SA3PR02MB999616996BFC76AC00C15988A95DASA3PR02MB9996namp_--

