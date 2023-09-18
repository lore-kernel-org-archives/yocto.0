Return-Path: <Logan.Grosz@b9c.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E59D8CD37B0
	for <webhook@archiver.kernel.org>; Mon, 18 Sep 2023 14:54:55 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.100])
 by mx.groups.io with SMTP id smtpd.web11.53522.1695048886882108520
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Sep 2023 07:54:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@b9c.com header.s=selector1 header.b=ZyINDW0K;
 spf=pass (domain: b9c.com, ip: 40.107.236.100, mailfrom: logan.grosz@b9c.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KNxk6xEbNoiWoV9B6CIkoToCTGny+VpJuEb16GPlq2aF8IYngcGJ/r4Bt421DeM21aty5il0eSGVZA+2u/cqVy3dvZ9/UdvR5H53Q6s8Lt9vFlGOYQn985P6mq5xqhvZx5NucG4MOUPFzTdgWJTS6V1B4WhXY53tqNyuTkIZDUe9JwmUQkJA4VA3b6vOr+fC3f4VdEjcvLe8C27o8GQLfZUQ4ucx5ijngvSXQCvk6As5lUegIIpZVbnuIMaUBddJUZCpYkCS/1LN8mYF1yca4xwEnatS90Cyy/AmUJDKLxdvMNJ5IJ7CrIg0n0FLje5K3IKnDlNsX7u0TUiVhDSM4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t0KrQhmiqXNUY82yhuqjvBjxZc4uHpuqHw2pyk+NsZc=;
 b=A5uJdVXFLzlcva4scCd6t0pjfUnh2v65zTTVgsqtYYJD86Jlj7COVk4cR2CND6Caaupzr0kdfvDo/3kvoZgnKhIzFluXRKDkAZONGuRk7RBIfAYF5IcABVPfZoQOfRM1tTw5z6XmLvrkF/ZVQ8uMA9tiL4wZu3cydpPu1RxlMQTO4XtwuJ2Qs5NYkjmQJcdSVn8Sndww89z9xS9uA9lUwNV2jveBbo/0dfUMF1xlfKpmJ1ZNakZTi6e20Q82M5i4Rgi0Cl6frrhPYrGGio48rPrp2vuW8IJUJBunB/ihJD1sGDOOfP/xyaPc+ZUskmTEHTEQCdx4a73qMYJG2SVk+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=b9c.com; dmarc=pass action=none header.from=b9c.com; dkim=pass
 header.d=b9c.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=b9c.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t0KrQhmiqXNUY82yhuqjvBjxZc4uHpuqHw2pyk+NsZc=;
 b=ZyINDW0K+G0vR80/kjtckhmtrovSlXVhrrHfteTP+44vcPDMzdu59ti/0mjAUcr3BCwROp2qzSgU0i6oscThHLO7axSyVn5V1C778/5xVd1Hsttu/i51QEgrp13V6OCE2LXT5dkXPLRrCvV9sCugA4EJIAySIX7NZ+6ObEd0w+0=
Received: from MW4PR16MB5087.namprd16.prod.outlook.com (2603:10b6:303:1be::18)
 by MW4PR16MB5032.namprd16.prod.outlook.com (2603:10b6:303:1b7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.26; Mon, 18 Sep
 2023 14:54:43 +0000
Received: from MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::7145:89d0:98b8:2cef]) by MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::7145:89d0:98b8:2cef%7]) with mapi id 15.20.6792.024; Mon, 18 Sep 2023
 14:54:43 +0000
From: Logan Grosz <Logan.Grosz@b9c.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Overriding package configuration as a distro
Thread-Topic: [yocto] Overriding package configuration as a distro
Thread-Index: AQHZ6j6M7yRKz/p7LEGKuaImpNR2irAgqnIAgAAA9BM=
Date: Mon, 18 Sep 2023 14:54:43 +0000
Message-ID: 
 <MW4PR16MB5087C85F25577FBAB93300D7BBFBA@MW4PR16MB5087.namprd16.prod.outlook.com>
References: 
 <MW4PR16MB5087B2826350F1ECBED3E9E0BBFBA@MW4PR16MB5087.namprd16.prod.outlook.com>
 <838268d3-7b61-6331-270a-1a35f210d5a1@theobroma-systems.com>
In-Reply-To: <838268d3-7b61-6331-270a-1a35f210d5a1@theobroma-systems.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=b9c.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR16MB5087:EE_|MW4PR16MB5032:EE_
x-ms-office365-filtering-correlation-id: b789dbab-8bf6-4b61-95d8-08dbb8573164
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 05uZxEiuT0xJoVYgNIYk+LMIJH1W+bAwp3cOOX/752SLKEDJhN/ccMJ69W3cQiZHqrMIsBnoWeB+MO1+A7CbxsS+6BZeiEabzvnTrJ+XuyyUvPB0QsNoo/VlZxSmmRgKvdY5AlQBF4QKbJmsxuCmttnqUxqG7ZCXnih+Evml84lpDHAUAzrRtNoBuu0RkSLqMrgLKrlWnOh8j7+ZwaTQt5oRaXOaxOmq98i1VJLru9WtiF+Ny4eOthKoHGaL/ANTxhBEFXCYR0oI39hFGMTEK05gm62iDRmitQUycQvmXSKi1kfdU8sbSCSWGj2QfmN7BlrWbBjI8ezABdBceFqg3bgqsKCkhkW9FUsJEmjuHqyUfFqHtW0RWMmxi3t5/9c256TDYFjPH8XVWPHuaBNlm20w1Oa13uANZ15jRvFDHXSYVv2SHoqWRUWHsGrd0RGcNIpnz8uANdbwpkwoACSPJWvvYL2uALGPCau91PGotDlvtjFmvcIeA0mUfdLuYgwfXWMM4fxDOGiC0gGIdka2FIGsYr/iGt/75b9O66GC8sT+UIYKK9xivRPHjQbBuFS4loLTfbP2hkcyH87on/OCkllcIJN74duUxQNPAxynSafcr4vo9TwGJQntREPGUKVU
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR16MB5087.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(39830400003)(346002)(396003)(376002)(1800799009)(186009)(451199024)(26005)(52536014)(8936002)(8676002)(122000001)(66899024)(33656002)(2906002)(55016003)(5660300002)(86362001)(166002)(53546011)(7696005)(6506007)(19627405001)(478600001)(71200400001)(316002)(9686003)(76116006)(110136005)(91956017)(38100700002)(66946007)(66446008)(64756008)(38070700005)(66476007)(41300700001)(66556008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?gWIrOcbU9XL0Gd2z3XOZe/VEQX6ysTftBvvu60H5n7hzEMGXahRQ9uuWAj2D?=
 =?us-ascii?Q?gQlU7qYdD/cW/TRxhV245rzZWgYHy+g0EzCMesOyutzrmywmTw6MahPTGk3v?=
 =?us-ascii?Q?gL7PZ6EKUrLAkMGkI1KUIDz++3Qw3rCg2j+UKMOWzYViP1jE5dczTb4jV0TF?=
 =?us-ascii?Q?9Aki+Rtc2c2GvtNicoVpJ16zdJCx5VOBNxh6Q5ZB/034JWm/zqCrRWAiQHHE?=
 =?us-ascii?Q?huaLJ4XIvZQWp0KHwFuRmMzTam87zcZTfePBUclX929eb8FmJL+iC3acIcO4?=
 =?us-ascii?Q?/Ra5GP8D4Y/2DfwRiwoV+NkBFIYyt/3xjslhNbW6IpeuITJghCjLfPoPMI44?=
 =?us-ascii?Q?Re5HIieiFNUhDNEIXCRDBfSDj940Z9bUv8lNTbskNCFNSanw1ip/xKiUd5Oh?=
 =?us-ascii?Q?iAivseRx0bsTkVAPTDoCinSIAOj8wLK/0uEv8tnDGJ6pXuUx5Aaj8BqtfE1f?=
 =?us-ascii?Q?CY+DIoNBJEohQdj4jjII1STbvQxboUuMMdxkkogi/fq7JD4vx5eNScEz4bFh?=
 =?us-ascii?Q?AEcvfiRkuln1MAmTYhVfZxeSU4u2XpULhVC8J+28r2jFNWxgfP/9IJlY08AS?=
 =?us-ascii?Q?lSvGJsi3j4k1B/aiaKAhZJyLDz3k3XjrXBnoHvPBmswTWS4qDEo2sSasLenY?=
 =?us-ascii?Q?/Np4exCOj5sVU6BkLjhQS60nLmwCoFjmiBn6/hfe6cHE28Tap/800lyKrms3?=
 =?us-ascii?Q?w/ZsnieMZEcYeXoiTmjaOz9V5LuwS25pJt1GMP6jEXi2e0eGCejl10ruuaOs?=
 =?us-ascii?Q?tPpqrMvarVT1nidwumqySctQFT1VTLEhhwC/VZtRO6/EytSuIowF38oDcjJJ?=
 =?us-ascii?Q?OnKIHt6pXOEpjxfiktu61gjPGrdBFOFVhnJBaNmFxG2CopMqIHQGn9ED7MVm?=
 =?us-ascii?Q?XCJqVQLR/atLgtnd9paJ0f+lj0j5bGbrPTSQ4TKBNSL1bwkxN5gBSNAmYZI9?=
 =?us-ascii?Q?+cbuGCnH1LAENiWQXdz+Z/2dNi8dIlm3SSJYZvUaRqMTZApT6CE8TRnE9G2C?=
 =?us-ascii?Q?1GjjyGPub7o2Fb9/RU2MdbOKXH+vqYChgehbpOnN0XOXXyoIb190BNyrWlBY?=
 =?us-ascii?Q?BV1k2UnBXhGcz0mU0V6i6EVB4G3XD9ktA4kxhduxa2OEe36ldiUZ8KwI1iv5?=
 =?us-ascii?Q?5nf9UOr9TTNLiLUVV80OE23jm+x5XBMSoQhdfuHnNpxan3Ym6G9e3oU634Tc?=
 =?us-ascii?Q?pnHvr/7kg7dCqQSjE/uAy9h1L6fx8pf4hym/oai7HU2XEmVNK3J+3t9hpwDX?=
 =?us-ascii?Q?BwoLT6dUFscP7ccWWrmZbJhyLkG6mIyaxvzg/J8adhmWF/pL+V7VN+oz6vwt?=
 =?us-ascii?Q?QuWNtqR2A7eX7abbpZA8B/P8ti2br9xagw5rTjpLMwvtjihzY8ZiKjJ3LANV?=
 =?us-ascii?Q?Lv/vyIdF8XwYz9bSkSIDj+tUk2jr1miQGP7mHCXHm1Q3WHuxpz4gZffO6Pv7?=
 =?us-ascii?Q?YmtaPW1KrjUzb8+VYgOfiVJ0BkbwmO0Du4zZLkYwIsXOYWwOgyaDcBsk6G5w?=
 =?us-ascii?Q?J8AbPfLK8N6NrtmHFY9vUL6VLETTs0aI5mqPChsGVGoFOclbw/YRdhZGcX1Q?=
 =?us-ascii?Q?+zh4l1hNkG2W71m8Crjln5OA0drWhQMo1LxOml7a?=
Content-Type: multipart/alternative;
	boundary="_000_MW4PR16MB5087C85F25577FBAB93300D7BBFBAMW4PR16MB5087namp_"
MIME-Version: 1.0
X-OriginatorOrg: b9c.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR16MB5087.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b789dbab-8bf6-4b61-95d8-08dbb8573164
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2023 14:54:43.3150
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ace18e3-3825-4b3e-be2a-b5c73f048d39
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g3PA5Br5hvLDpipTOMWnSqZBdL7X0zMos1UoYYjEg9vthhzDUkpRisQvV+5yDt+MHvRuojjfCAg6jXgWeWVpqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR16MB5032
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Sep 2023 14:54:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61035

--_000_MW4PR16MB5087C85F25577FBAB93300D7BBFBAMW4PR16MB5087namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Quentin

Ah, this is great. This looks exactly like what I was looking for. I apprec=
iate the timely response.

Thank you,
Logan
________________________________
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Sent: Monday, September 18, 2023 8:50 AM
To: Logan Grosz <Logan.Grosz@b9c.com>; yocto@lists.yoctoproject.org <yocto@=
lists.yoctoproject.org>
Subject: Re: [yocto] Overriding package configuration as a distro

Hi Logan,

On 9/18/23 16:43, Logan Grosz via lists.yoctoproject.org wrote:
> You don't often get email from logan.grosz=3Db9c.com@lists.yoctoproject.o=
rg. Learn why this is important<https://aka.ms/LearnAboutSenderIdentificati=
on>
> Hi, all
>
> I have two distros in the same meta layer, "A" and "B," and a recipe whic=
h installs a configuration file existing in a layer elsewhere. "A" and "B" =
should provide different configuration files, overriding the original confi=
guration. It seems less than ideal to create a bbappend in this scenario as=
 that would require the bbappend to know about the various distros and even=
 handle the case where neither distro is chosen, some other "C" distro may =
be built for. My goal is a distro-centric configuration rather than a recip=
e/package-centric one. How can I do this? Does this align with the framewor=
k, or should I be looking into a different solution for this problem?
>

The distro name is already part of FILESOVERRIDES so you can just add
your configuration file in a directory named after your distro. e.g.
provided your distro is called logan-distro, the following makes it
possible to override the configuration file from another layer:

```
# cat recipes-foo/bar/bar-1.0.0/logan-distro/file.conf
meh
# cat recipes-foo/bar/bar_1.0.0.bbappend
FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}-${PV}:"
```

no need to modify anything else if the file.conf file is added via
SRC_URI mechanism, otherwise you'll need to add a bit more to the
bbappend (or use patches instead), probably via a do_configure:prepend
or even do_patch:append (I think the file fetcher also allows to install
directly in the proper directory via subdir=3D parameter?).

Cheers,
Quentin

--_000_MW4PR16MB5087C85F25577FBAB93300D7BBFBAMW4PR16MB5087namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi, Quentin</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Ah, this is great. This looks exactly like what I was looking for. I apprec=
iate the timely response.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Logan</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Quentin Schulz &lt;qu=
entin.schulz@theobroma-systems.com&gt;<br>
<b>Sent:</b> Monday, September 18, 2023 8:50 AM<br>
<b>To:</b> Logan Grosz &lt;Logan.Grosz@b9c.com&gt;; yocto@lists.yoctoprojec=
t.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Overriding package configuration as a distro</f=
ont>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Logan,<br>
<br>
On 9/18/23 16:43, Logan Grosz via lists.yoctoproject.org wrote:<br>
&gt; You don't often get email from logan.grosz=3Db9c.com@lists.yoctoprojec=
t.org. Learn why this is important&lt;<a href=3D"https://aka.ms/LearnAboutS=
enderIdentification">https://aka.ms/LearnAboutSenderIdentification</a>&gt;<=
br>
&gt; Hi, all<br>
&gt; <br>
&gt; I have two distros in the same meta layer, &quot;A&quot; and &quot;B,&=
quot; and a recipe which installs a configuration file existing in a layer =
elsewhere. &quot;A&quot; and &quot;B&quot; should provide different configu=
ration files, overriding the original configuration. It seems less than ide=
al
 to create a bbappend in this scenario as that would require the bbappend t=
o know about the various distros and even handle the case where neither dis=
tro is chosen, some other &quot;C&quot; distro may be built for. My goal is=
 a distro-centric configuration rather than
 a recipe/package-centric one. How can I do this? Does this align with the =
framework, or should I be looking into a different solution for this proble=
m?<br>
&gt; <br>
<br>
The distro name is already part of FILESOVERRIDES so you can just add <br>
your configuration file in a directory named after your distro. e.g. <br>
provided your distro is called logan-distro, the following makes it <br>
possible to override the configuration file from another layer:<br>
<br>
```<br>
# cat recipes-foo/bar/bar-1.0.0/logan-distro/file.conf<br>
meh<br>
# cat recipes-foo/bar/bar_1.0.0.bbappend<br>
FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${PN}-${PV}:&quot;<br>
```<br>
<br>
no need to modify anything else if the file.conf file is added via <br>
SRC_URI mechanism, otherwise you'll need to add a bit more to the <br>
bbappend (or use patches instead), probably via a do_configure:prepend <br>
or even do_patch:append (I think the file fetcher also allows to install <b=
r>
directly in the proper directory via subdir=3D parameter?).<br>
<br>
Cheers,<br>
Quentin<br>
</div>
</span></font></div>
</body>
</html>

--_000_MW4PR16MB5087C85F25577FBAB93300D7BBFBAMW4PR16MB5087namp_--

