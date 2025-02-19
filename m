Return-Path: <thilo.cestonaro@thalesgroup.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD291C021AA
	for <webhook@archiver.kernel.org>; Wed, 19 Feb 2025 09:51:12 +0000 (UTC)
Received: from esa.hc1631-21.eu.iphmx.com (esa.hc1631-21.eu.iphmx.com [23.90.123.40])
 by mx.groups.io with SMTP id smtpd.web11.18583.1739958662041991049
 for <Yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2025 01:51:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=bbmfo20230504 header.b=SudBdYth;
 dkim=pass header.i=@thalesgroup.onmicrosoft.com header.s=selector2-thalesgroup-onmicrosoft-com header.b=nYPTjaQx;
 spf=pass (domain: thalesgroup.com, ip: 23.90.123.40, mailfrom: thilo.cestonaro@thalesgroup.com)
X-CSE-ConnectionGUID: IXmCsW/iT/+vtoguaW13gg==
X-CSE-MsgGUID: Ef5DtqjzSaSYni5rhYNxNA==
Authentication-Results: ob1.hc1631-21.eu.iphmx.com; dkim=pass (signature verified) header.i=@thalesgroup.com
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="27993593"
X-IronPort-AV: E=Sophos;i="6.13,244,1732575600"; 
   d="png'150?scan'150,208,217,150";a="27993593"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=thalesgroup.com; i=@thalesgroup.com; s=bbmfo20230504;
  t=1739958660;
  h=from:to:subject:date:message-id:mime-version;
  bh=uT4uFMIc5HjtDYtiC9gxHrklqp0zzS5Ped8Yl0bUbtw=;
  b=SudBdYthuAlGb3TK9PoPdGSnlaDw+Ux1YKO3IS5RslZ2oBnqEyDHy2fk
   VOWOS9zXNyM2/xFGut/qvqQnusw9sjfM8gCOJnNgBPbyKg+0RgbIa4Yzy
   1tE0f6P7V8dVebtePY4WqqAUAcMtj/7S615ODKshYc65wKimhDq/fz0ua
   0asbXpUcdTfCCjyFAAL5+skmAxQAFdYsZIWFZxwMalg7Ch/LyIhcyuLkF
   jSA6Je4hdOFcKShn8t8XPwHFLyrNmq2jBe/K+bnNv00OLWu2Rgo/lTz2k
   enVKNe3PvSTybCadyEX6TERHvxZ2mCiznzETnwiQyz0AQjzU5N2beY45v
   g==;
X-CSE-ConnectionGUID: x+fT3vtmQtabjhyQ7PXXlg==
X-CSE-MsgGUID: DRsL8ZTBRK+PlnXhf+4smA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="118092572"
X-IronPort-AV: E=Sophos;i="6.13,298,1732575600"; 
   d="png'150?scan'150,208,217,150";a="118092572"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AaHwEZryhv89sL/peMlZQCqTAgMQGojG+nSxaN3wSKpsAb9YXjn2Upj2WxN99DNU4ZUAG1ngTY4mwMHK2ZQZRZ/YcNxZVnkkdWhB/GR51HXpAXh1AwpHusWzYNApd26iZ3y+QxjbmTKL1/qlvbypMO8EQ+nwdlikLg4xkxzxnZeQ3IzW+Z2NHG1YFQ9W5aqV5cIVzQF786Kj3bFCwmz8slL+CdZlvcrvf2hLSR9Pr4P08uCBc3YML+RKk5tf+/t03KoJSFa1QWh5his8rZ6z4rLjyBJQJ8X3GPHATsnI4IMxQqLsv/8Ewt4eDskX/ZpV40KL1Q23aX/zpgMe6rsPuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uT4uFMIc5HjtDYtiC9gxHrklqp0zzS5Ped8Yl0bUbtw=;
 b=G8spA4AHECbxFYF+U+97QAOQlf6CXm4nmmaxS1n2L7w9+QXT+5HeIf/VhuqpjMWs8Xg3JHnN3bWNJg15ZDHjfLBtiOyDiwCWamOYM7zutbaK+xTXMifYD5YkSFXYXaJPXfYp0WSzg94JDbtaCvPX58C4FggKdBmzlKY8q0y+azkuNcf9/ScPKh+NSO21kt8UsVBWAERc2WmYrHWVExag49Zfry7NrwNBAc9i3zrHJNbwGv7eaYw6VJ5wnVFcvx6ZzIY3nEB8ITw3MJi9qIauGd35bDJ0nglNVPIo/7RGbLxxCf01NyQUFMkE0ZbWudtIiCYIh1Dj21KhVg0NxDGGRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uT4uFMIc5HjtDYtiC9gxHrklqp0zzS5Ped8Yl0bUbtw=;
 b=nYPTjaQxgJMP6pelQ9d8UIcAYzuCB6hvb5MyPk+skGg4gBL+dUo5AoKEKqGmMzSMl8kCPuJS4jw4H3X5Wb6FcJxKOrJVfTjwVuV2GRdX3b2dqbqvZfJ5gYCsgqXd777bYoaWocVIInyVyUtRpEgnkFEGChvx0iLqS2NSzfT8C2g=
From: CESTONARO Thilo <thilo.cestonaro@thalesgroup.com>
To: "Yocto@Lists.Yoctoproject.Org" <Yocto@Lists.Yoctoproject.Org>
Subject: SDK and what goes into it
Thread-Topic: SDK and what goes into it
Thread-Index: AQHbgrI9zZv7Il/XZUW+GGfn3in0LQ==
Date: Wed, 19 Feb 2025 09:50:56 +0000
Message-ID: 
 <PAYP264MB4108A21C7E8A696BEE78F47EE9C52@PAYP264MB4108.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: de-CH, en-US
Content-Language: de-CH
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAYP264MB4108:EE_|MRZP264MB1608:EE_
x-ms-office365-filtering-correlation-id: efc921ee-3b7a-460b-a836-08dd50cae80d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|13003099007|4053099003|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?cqw/OI1Oqe1fWwXdIK9fDYqDnEScSw/xuiFV+ahGHuNdIzOF6b8NSmMFKh?=
 =?iso-8859-1?Q?TZezFDdDZNlIUX1N7zGem9r1vvnYvH0Ll4IWwZkoFtXQmLVKAQPTiAopZz?=
 =?iso-8859-1?Q?P+Zy+cjXBr2CwopqQp/PQ7YHbSOivwl1ePy/HBtIE7PS2ubAJFopsKrAPF?=
 =?iso-8859-1?Q?NLFrHlvi5zUVx7fiL13QJRadSw3EGwSo4lh2vmlgrwURFqzeXjJbB4C+1X?=
 =?iso-8859-1?Q?Hd8BL/qR1VTLB6x1mSWgdK1pK5r+SFwSfjRFit8VmRWsjIiDtwAOkxPDHR?=
 =?iso-8859-1?Q?9IDEcYUjTQMTSCdBPWTv2IU6J0PnuECL+fhf8TjR4hbSsmYgJ5XQ0aQKn9?=
 =?iso-8859-1?Q?NAF+J8jSvPt+dWzH+KagF01GIdGdUeGYPTaDmonFGF2rXwerfOtt7ea2Yn?=
 =?iso-8859-1?Q?caI7S9siSUvb5aqoI0wURDwCv5qTi4yo3I3VPMHwVxz11r/oNhlFE9TGc2?=
 =?iso-8859-1?Q?j/g8W02+K+W3ZDClxywHyLuaVyK4Douj4lpR/2N57hznvPBfktbGrWeEvV?=
 =?iso-8859-1?Q?8jq/w7f2r2mw3xj/EPCdsMl1eAq9ZcuTz9HV4kzKJ9UPdjaF852FzRdRaQ?=
 =?iso-8859-1?Q?KmXC7EFRywDTj259+C5h2fYMkFZeke1ZiypP6NDZciNUUJzqq4dl+xv7K9?=
 =?iso-8859-1?Q?TslnQ8SI+AruslnYnYbnP9r17mXej0wq7ZW4HanH1Z2yXt8WbnhGeIUVGA?=
 =?iso-8859-1?Q?VMFTTJzu7DD3ejbDUEDjj8UFwo2fzELtUYPuXB5ORGHexRSk31Z/CnOuUo?=
 =?iso-8859-1?Q?20PVi0W0MsNQuI6JyWXbohjRuwgPs1ry7ot0/AJ+HAH+WPDvgK7llv0dNt?=
 =?iso-8859-1?Q?36l7cwBBAlpb44RIARzhQfQIphtwU8TCmFSKcYNk/Z2/TLYDXDfEK9jxPV?=
 =?iso-8859-1?Q?SetFqjAZQ1nXA4x2yZVVJ3hFyexRlvKdV4NOxTtf58/tXdKc9OasU54Xpx?=
 =?iso-8859-1?Q?QO2mRGBQbuOvhZIdbP614OoMeAgDRqCr4XMh5QPjFbZ2f4fo/mrR8yelps?=
 =?iso-8859-1?Q?onU/OuKAu4Ie5QQ2aIlG/bpUf05rvurUWlTGJd/BvBnBSUigro4k8rwpsP?=
 =?iso-8859-1?Q?eR4gsspAW+UoYSoSk19WyghhWhhDHIoK346hh3TKCFwXDpxtpG6DhN50Lg?=
 =?iso-8859-1?Q?54SS+z2R5J50EUM6u6r9fOeOKFZnOeAMjvGU5Y9H3BATtfJ57CZYlA8A+u?=
 =?iso-8859-1?Q?XHnmI81DfzjEFBmJSOMVXDhcUGmZCriGUoDCKm7lcpvvagHSQNcz0A44Jv?=
 =?iso-8859-1?Q?EV0hQAlmKAALS8vjXLzBkXPKy+xrkNpWfr0IowkxEgQS7gb4VYdENOcvqi?=
 =?iso-8859-1?Q?j07Yt0PvRU2vzTaUm8O+9+k4SaS4wNrwPvQN/iBeds3ZuWm5NbaSrhPtOT?=
 =?iso-8859-1?Q?TbyO/IJrAFN0L4B6QejGP1cMkuloU38bMHO8THpIsi4Qc+75QYjidp4tfm?=
 =?iso-8859-1?Q?3y7IyvboLhIbKpj4?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB4108.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(13003099007)(4053099003)(38070700018)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?p6R1m5aMFnn6FVwxu5e2IsCbt5sMNTCQpUgus5+j2LzgGEVxX3qijE37h7?=
 =?iso-8859-1?Q?FL0dIGOHQzoJaSVZCF4TubWNZ0LbIeODdapDMh+Gw+ZAS8/bGmEMWBcHz5?=
 =?iso-8859-1?Q?uYo6n5SLZ7yFSUE4E/LPVZiq25pwnR9++zRbAxY9pl62It85W/ty37PvC0?=
 =?iso-8859-1?Q?D652hGqfV5wFyi7enbBjKgpUIsAcx8s7McoxrmgEAavEs/X7wdtQtVYbJ8?=
 =?iso-8859-1?Q?HIdeI+JRAPdIiQbjXrJJ/FfjxXOXISpRaL04VlOB6QkDYeq99R64LBoE7m?=
 =?iso-8859-1?Q?hRLzApNWehvmeKtgtLvCeNLIP2QcH11y/mW4evMehBnof1PBCr4Y9qGN6S?=
 =?iso-8859-1?Q?cDSzGNOZZtk+2dDpHk1zF5Au4pXl/GxiBVK53XfUSzHE/BRPX/UnXNV9a4?=
 =?iso-8859-1?Q?jBHGPHvux1dy6cR0UrRAlaU8Rs+oNfqMq3qPVBQoVOSIPj5uFl53cCRkXr?=
 =?iso-8859-1?Q?e467brUzaTRg5AmjvA3PF28qxDHFQKmSXH0QbME2zzbeDC9yr9oV4NEhmU?=
 =?iso-8859-1?Q?OIRbPfo8+GLhDwR04kS/2qHSOtRYnMNbO3j769owbFLu6TqaimDztag+jq?=
 =?iso-8859-1?Q?ZrZzngXqQ/vVVu5BODC877A/z5sS8YFUSQe2W3o6MJOrihg590iOa82n1R?=
 =?iso-8859-1?Q?e1mimaWJK0Mpk6TS0T7J7wasqx05wexFGRdpE9uZYA3w8rAJPdjSsNS/uf?=
 =?iso-8859-1?Q?XWULtNPzymgf0P/1nVf8kMbY8+QID9Uu1CuVYdk2xVeZYcZyzkp19f1k7z?=
 =?iso-8859-1?Q?3cn4rYe9IzwK4iIkD0z/fD8kQ2epl2JD4jbwOBUo3bnL9Jdc2CzKFXoWUA?=
 =?iso-8859-1?Q?5AwOEACWTonS+58a0Quo2mXyqxk0H1UnCltMEt8e87TUVgKXo6Q1sge1Db?=
 =?iso-8859-1?Q?FaFfWF+Pu1HnYW/hTImQ8gyTywj5grCDY9L1cdwbLNs2UL9YmxTqdMN8P9?=
 =?iso-8859-1?Q?FR09pUkGLtBXlw2kUtG3K4Y6UpQa26yr6fsxwfHoy/MzB2pY1s6nirlmCk?=
 =?iso-8859-1?Q?5HzlfO5UyT+57mo0YxgnlGMw2SC38rvDFQrA94cBq2WVzyZnHrpfEwwEU7?=
 =?iso-8859-1?Q?yTM9HWOJAKEuKqlCGxAC5GpGnls3IQF5oLYqlKBL/CHlE9RDBpc58j695d?=
 =?iso-8859-1?Q?Nj8sMxdbmlg8qWyi9ym8Ic9rVsQ/KITjBi3eQMumq0AEWrv3RClh1XEKsT?=
 =?iso-8859-1?Q?VFJm26yTyRs3Z9IpGDarBOEx6Av6MK1iRfhj4Vq2xM3t7B4kZ0BUwDgdPZ?=
 =?iso-8859-1?Q?ziGOoIUTtVA1XOZvyzau+tNlvV2xu91Kvp4wtGdr1RWxp5PAwSaRGP8Mi0?=
 =?iso-8859-1?Q?d157GRNJQZzHBwk+9L+eVegnSJvFuw6jA8BirLFtrYPkZ6UUx2RQ4aZH9i?=
 =?iso-8859-1?Q?uhkmhqSDyQQ64zNnwAYGtrAw9biUm5tqtLg+UklEiUsHBAtNsWesujIJEN?=
 =?iso-8859-1?Q?OYjPEUzVag/pjLqkT9DRgblaKaaqL76dK7XTol+YsaGEqG5QN3E1Ag0yPR?=
 =?iso-8859-1?Q?Kf3X8EfnyBHp3MFV7RVV5AovwWB4JgKQin0fASx57ij6keEjFtTHPTgO7r?=
 =?iso-8859-1?Q?XR6Zcg74jF/BFHqT7qkEw/y43mxYHYoPsSnI8Yhw+56UlXHkJMB0j7WVxx?=
 =?iso-8859-1?Q?YAcOi6lutnmLwPCFsut9P47g836YpeMfhPcdTF1vwtIWZ1MICK7Ek45g?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/related;
	boundary="_004_PAYP264MB4108A21C7E8A696BEE78F47EE9C52PAYP264MB4108FRAP_";
	type="multipart/alternative"
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2025 09:51:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64841

--_004_PAYP264MB4108A21C7E8A696BEE78F47EE9C52PAYP264MB4108FRAP_
Content-Type: multipart/alternative;
	boundary="_000_PAYP264MB4108A21C7E8A696BEE78F47EE9C52PAYP264MB4108FRAP_"

--_000_PAYP264MB4108A21C7E8A696BEE78F47EE9C52PAYP264MB4108FRAP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Classified as: {OPEN}

Hi!

I'm currently struggling to get a specific paket into the SDK of our image.

The situation is as follows.
We have a "library" which is generated code and header only. The code is ge=
nerated via a python module which is obviously a dependency of this library=
 but with the native part.

As this library is header only, it does not appear in the rootfs, of course=
.

Now the SDK does not include the headers of this library and the python mod=
ule which is used for generating the code is not part of the SDK too.

As I want to be able to build the headers only library via SDK, we need the=
 python module in the sdk.
As I want to be able to build the app, which needs the headers only library=
, via SDK, we need the headers of this library in the sdk.

I added the library recipe to the DEPENDS of the app. I added the native pa=
rt of the python module to the DEPENDS of the library and RDEPEND:${PN}-dev=
 onto the nativesdk part of the python module in the libarry.
But nothing brings the wished result except adding TOOLCHAIN_HOST_TASK +=3D=
 nativesdk-......

Is this really the only way to get the python module and the library into t=
he SDK or am I doing something completely wrong?!

How does yocto determine via DEPENDS and RDEPENDS, what is going into the S=
DK and what not?


Cheers,
Thilo


Thilo Cestonaro

Embedded Software Engineer

Avionics / Training & Simulation / Switzerland

Thales

M: +41 (0) 79 536 56 48


Thales Simulation & Training AG
Stauffacherstrasse 65

3014 Bern

Switzerland

[cid:d403f9c2-5670-42cd-8b59-c6035b237cad]

Find Thales on social media and at www.thalesgroup.com<https://www.thalesgr=
oup.com/>




{OPEN}

--_000_PAYP264MB4108A21C7E8A696BEE78F47EE9C52PAYP264MB4108FRAP_
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
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Left">
Classified as: {OPEN}<br>
</p>
<br>
<div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Hi!<br>
<br>
I'm currently struggling to get a specific paket into the SDK of our image.=
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
The situation is as follows.<br>
We have a &quot;library&quot; which is generated code and header only. The =
code is generated via a python module&nbsp;which is obviously a dependency =
of this library but with the native part.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
As this library is header only, it does not appear in the rootfs, of course=
.<br>
<br>
Now the SDK does not include the headers of this library and the python mod=
ule&nbsp;which is used for generating the code is not part of the SDK too.<=
/div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
As I want to be able to build the headers only library via SDK, we need the=
 python module in the sdk.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
As I want to be able to build the app, which needs the headers only library=
, via SDK, we need the headers of this library in the sdk.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I added the library recipe to the DEPENDS of the app. I added the native pa=
rt of the python module to the DEPENDS of the library and RDEPEND:${PN}-dev=
 onto the nativesdk part of the python module in the libarry.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
But nothing brings the wished result except adding TOOLCHAIN_HOST_TASK +=3D=
 nativesdk-......<br>
<br>
Is this really the only way to get the python module and the library into t=
he SDK or am I doing something completely wrong?!</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
How does yocto determine via DEPENDS and RDEPENDS, what is going into the S=
DK and what not?</div>
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
Cheers,<br>
Thilo</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature" class=3D"elementToProof" style=3D"color: inherit;">
<table id=3D"table_0" cellspacing=3D"0" cellpadding=3D"0" style=3D"margin-l=
eft: 0pt; box-sizing: border-box; border-collapse: collapse; border-spacing=
: 0px;">
<tbody>
<tr>
<td colspan=3D"2" style=3D"padding: 3pt 0pt 1.5pt; width: 360pt; height: 28=
.3647px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(36, 42, 117);"><b>Thilo Cestonaro</b>=
</span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding: 0.75pt 0pt; width: 360pt; height: 24.37=
13px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);"><b>Embedded Software=
 Engineer</b></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding: 0.75pt 0pt 7.5pt; width: 360pt; height:=
 56.9409px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);">Avionics / Training =
&amp; Simulation / Switzerland</span></p>
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);"><b>Thales</b></span>=
</p>
</td>
</tr>
<tr>
<td style=3D"border-top: 2.25pt solid rgb(0, 187, 221); padding: 7.5pt 0pt =
3.75pt; width: 360pt; height: 38.5536px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);">M: +41 (0) 79 536 56=
 48</span></p>
</td>
<td style=3D"border-top: 2.25pt solid rgb(0, 187, 221); padding: 7.5pt 0pt =
3.75pt; width: 360pt; height: 38.5536px; box-sizing: border-box;">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding: 3.75pt 0pt 7.5pt; width: 360pt; height:=
 105.696px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);">Thales Simulation &a=
mp; Training AG<br>
Stauffacherstrasse 65</span></p>
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);">3014 Bern</span></p>
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);">Switzerland</span></=
p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border-top: 2.25pt solid rgb(0, 187, 221); paddi=
ng: 11.25pt 0pt 3pt; width: 360pt; height: 61.8301px; box-sizing: border-bo=
x;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 118, 118);"><img width=3D"160" h=
eight=3D"36" style=3D"width: 160px; height: 36px; max-width: 100%; margin-t=
op: 0px; margin-bottom: 0px;" data-outlook-trace=3D"F:1|T:1" src=3D"cid:d40=
3f9c2-5670-42cd-8b59-c6035b237cad"></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding: 5.25pt 0pt; width: 360pt; height: 36.36=
41px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 9pt; color: rgb(121, 118, 118);"><b>Find Thales on soc=
ial media and at
</b></span><span style=3D"font-family: Arial; font-size: 9pt; color: rgb(5,=
 99, 193);"><u><a href=3D"https://www.thalesgroup.com/" title=3D"https://ww=
w.thalesgroup.com/" style=3D"color: rgb(5, 99, 193); margin-top: 0px; margi=
n-bottom: 0px;">www.thalesgroup.com</a></u></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin-top: 0pt; margin-bottom: 0pt; font-family: Aptos, Aptos_=
EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-siz=
e: 11pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Arial; font-size: 9pt; color: rgb(5, 99, 193);"=
><u><br>
</u></span></p>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
</div>
</div>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Center">
{OPEN}<br>
</p>
</body>
</html>

--_000_PAYP264MB4108A21C7E8A696BEE78F47EE9C52PAYP264MB4108FRAP_--

--_004_PAYP264MB4108A21C7E8A696BEE78F47EE9C52PAYP264MB4108FRAP_
Content-Type: image/png; name="Outlook-gqchuj5j.png"
Content-Description: Outlook-gqchuj5j.png
Content-Disposition: inline; filename="Outlook-gqchuj5j.png"; size=3351;
	creation-date="Wed, 19 Feb 2025 09:50:56 GMT";
	modification-date="Wed, 19 Feb 2025 09:50:56 GMT"
Content-ID: <d403f9c2-5670-42cd-8b59-c6035b237cad>
Content-Transfer-Encoding: base64

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

--_004_PAYP264MB4108A21C7E8A696BEE78F47EE9C52PAYP264MB4108FRAP_--

