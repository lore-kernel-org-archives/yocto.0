Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6326C433EF
	for <webhook@archiver.kernel.org>; Tue,  8 Feb 2022 19:15:03 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.49])
 by mx.groups.io with SMTP id smtpd.web10.15898.1644347702765308188
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 11:15:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@missionsecure.com header.s=selector2 header.b=vnf6bJWp;
 spf=pass (domain: missionsecure.com, ip: 40.107.236.49,
 mailfrom: gary@missionsecure.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V0xPqmKlefPUILn3f1WCAacZ7Qp20yOX/+RLXYjKBoe3K6KOmBgqJo6PngI/ZpakdLW7mfzwOshKxqFJUA2A/drMls7CtBc1+MWUufHkfnxdkKQ8JHiPW8ZoSfMxyfPLmlaRGcylD6cXOUcZxsFEwpJoFAWda0gwmsmDmOC9IqZZ9yiO7RUbt3e4jZWm7HvP5taEcB0wDrGTJrOWa4BoQHoGQpwn0utbCrhqKIYoJrzq57v8bTC5dbDVh4Ol9pXtui/I4uxaXb2RAhKhm84vuxv5r0VD+BzbevDhs8Im9grEpzz56MAIgUzX6fSAZ232wMxP64sipTVrWL47Ks1rvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HUpbfZVS2kD8xcbiN394GELk81a0n7vu+SY55sfS4Zw=;
 b=WYORb7j7XAusguytAkC3D/Fo8vHROaLYvaXOYH74ZyddGKW4Hb1A2pKtYUJeXXGMA5mxuv43mcqyOBoGUHTcodHNl18IB68+9C/Vb8kA+lyy4vNRDeooRWNFB/gcYBv2AL0w2iOGf3UUPEggdBcaO4V6eF5ceGUWINu1Qf8uCM/SqFJBEmYxaXurTdD5Rlmv2WW2qR8aGjTawYielnMgagUS5nfyhIFfc54Ud45OckZ2TlFHsla8BOmJ+chjCGE1C4Js8x84q9bVqTDXZiOsVTJZZrEFDhQdjKHtxezYn7D85OTPTWeyrvR14RXtXHm4AxX8WXelGWPf9SNMRWKe9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=MissionSecure.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HUpbfZVS2kD8xcbiN394GELk81a0n7vu+SY55sfS4Zw=;
 b=vnf6bJWpzhxkEnRRILn6CnVWpFpIahunjwaH1OhIzJfljZOVhHTbYE6eWzSvwqpTN5tA3YXx0hiGjrFU8OZdIHJIW6z8t1IpCoUqVtVYxpwpd6gEm/v4+8SM1Jj+h8JE2LnRpV876X8RxZkGi4YWWRZx7YfngbpRhwg8mniGhAQ=
Received: from MN2PR17MB3903.namprd17.prod.outlook.com (2603:10b6:208:20f::14)
 by MN2PR17MB3389.namprd17.prod.outlook.com (2603:10b6:208:192::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.19; Tue, 8 Feb
 2022 19:14:58 +0000
Received: from MN2PR17MB3903.namprd17.prod.outlook.com
 ([fe80::f0a0:5033:834d:99f6]) by MN2PR17MB3903.namprd17.prod.outlook.com
 ([fe80::f0a0:5033:834d:99f6%8]) with mapi id 15.20.4951.019; Tue, 8 Feb 2022
 19:14:58 +0000
From: Gary Huband <Gary@MissionSecure.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"pvanberlo@gmail.com" <pvanberlo@gmail.com>
Subject: Re: [yocto] Zeek recipe
Thread-Topic: [yocto] Zeek recipe
Thread-Index: AQHYHQY3C7rbypsih0GRS4D8885sIqyKBfNo
Date: Tue, 8 Feb 2022 19:14:58 +0000
Message-ID: 
 <MN2PR17MB390309B95E43D96A99F5BB11C32D9@MN2PR17MB3903.namprd17.prod.outlook.com>
References: 
 <CAJxFkmqx=oQzcjbMxjnJ5+e0PbAogLRejjFuuBsZ0RgnTkHrbA@mail.gmail.com>
In-Reply-To: 
 <CAJxFkmqx=oQzcjbMxjnJ5+e0PbAogLRejjFuuBsZ0RgnTkHrbA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 6bffa8d4-c6d3-609a-b214-46b8d6f57f2a
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=MissionSecure.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 989e9b7f-00c7-40e8-2f65-08d9eb374c73
x-ms-traffictypediagnostic: MN2PR17MB3389:EE_
x-microsoft-antispam-prvs: 
 <MN2PR17MB3389D0B32612C40DC64F04ECC32D9@MN2PR17MB3389.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 JJ41tdkmocWtUgif2ThK7si9VrmQ+E1MSFoIx1VLw4w88XiNZYGdWtO6ZbbdncnGkc4fFhCX5EFNxToVY3hT7Bk0rqA3MoeIPEoX7w6pedolizd+rC08RWKw1WesfKZrgW7P8YkpbXDz2b65FBJK/6vzoPPzHWBBsdYQBOWMVWHUvrWCK3SEpepJfti/i0s7zPSKCyBmO7e/tZagNyewUvhH5nejXXPQI6R5vUkgbaL9khwEEuAyG1cHmh9gf0yR/ovMWh9okpL+vkYOd8tt/CNPqq5aMOh9uCBO9e0IPFi9wDhTr5B3pUigcOayfZHYEJfsj1dT+QnNPi7R5yNeQRAIYNKPjlHBhmKDk4XcqwEbzL5P2LgHm2ui1RFvrIlETdv1Po5ClE9q5KQ4vU7Yn+kgIzOQpbzWT12JDLkaVhDhtBM6F4opk/+NHMGQ2U3Dd7yzzzk5/zpb4g3rsz7DYyzaWp4rG+xvOUZbF0pQ0bxxQk02JcqgOYnc+sNU9GGkfTaS2WJtiJMsLUpwYuU0ZEv8SSLYcC0FkO0+P+iwJ1RI5XsrNnMIqqBZxTdCRnNnmuC/Ek5rIwWSun7Mrzv6tJSyDH5QD5MICtL9Oz5Vf51zwSm750xvO3XspEzvDqA1b4tw9J7VTtcdmjnNWw/AX2UFFgvJvcfEWExeVfI32oLCswYPdu3yfxO2KSmm0Ocroevk+AAuXjmtrDth3d9WQNp8N77vjbsN4D8NHpVk0v0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR17MB3903.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(136003)(366004)(396003)(346002)(376002)(39840400004)(83380400001)(122000001)(186003)(316002)(110136005)(38100700002)(8676002)(86362001)(26005)(55016003)(64756008)(66476007)(52536014)(8936002)(66446008)(5660300002)(76116006)(2906002)(7696005)(38070700005)(71200400001)(508600001)(40140700001)(33656002)(9686003)(6506007)(45080400002)(166002)(66946007)(66556008)(19627405001)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?bm5cF24ccEzFcYTCGOgk2PKdN8lejS+mTFcpIzGOkC1kBUjnrnvA76v7La?=
 =?iso-8859-1?Q?oYp60kIaL+4uyilWDkNdPnKgxHQ+rRmwqlY+Hhzk5kfwwPI1wJ/LwtVJXb?=
 =?iso-8859-1?Q?2iTjavHoX1sbR0UxPGxpFCYmXg8pDaTIH2uiU+6ZBx9YXu0KypgrMDB5kA?=
 =?iso-8859-1?Q?fr35NNdgpXon9rmj4TR7Rqt2Ix+0qdgeWxX5oSEC85rVnyajxW2wsR766a?=
 =?iso-8859-1?Q?85rOgyfP5cHq5jjFYDRNHwE9W1Tnt0Dw1HhAYA3pdv9DmHLccO+MuDUjc+?=
 =?iso-8859-1?Q?SXANwvEZLgJ9Bwl5M2wH7jiuEpr/J3KGkfCXuUGVDw9/MXEN4dJzILCbZK?=
 =?iso-8859-1?Q?Q+H7mO+lnjUFGuQJBE38IDX5N2ln5OVdYVw0LHvm7FgNt66Idd+thNJ/YR?=
 =?iso-8859-1?Q?ex1uiCXbc0KfUp/F/6Qu9LTxi3FMa4sYyLL++H4I/wZWLRc5PXYP8Yx4s/?=
 =?iso-8859-1?Q?sCvkXfa0WHzrGZvadHAI64WMjd9Sj3+mibbDKi9csXkBh3pYmyEPAEX+Tt?=
 =?iso-8859-1?Q?zXRhqPlo2IE/A+rlBCrEAkIS0icVzTH2qTmteVJdrUIRwOhiwnDdNyROmv?=
 =?iso-8859-1?Q?NzuBT3CZ7k2jdgh4uFh3YWyCpcE22LwdOZ7kf32W2TAyrgVBtKeZDgQ8z5?=
 =?iso-8859-1?Q?Dqd5NDCEDK99reyv/Qpo38Qb9nAFjs4SlZLpryDUeXoIYzx2S+95lkCsVu?=
 =?iso-8859-1?Q?C4wupYcp+qRlik7XAoqRGJ+CrONKUtfNYIzLXlu2t5PKIFoGfD/oH7Duoj?=
 =?iso-8859-1?Q?vUSA89UJ9zOka7AvtyCeSoSIwzRSiZ2l6AO9NLfiIA4bjJwgGTCzTV4Q5S?=
 =?iso-8859-1?Q?FWzWnk0UzXbOMz4YKlnaQl8nx3NyaxPLAQkg4T9VS0pX690ODZ2AbeR1wt?=
 =?iso-8859-1?Q?EhVUtIiCfJ5xbQ+2LvC0ARAVZ9WhZYk1r03Qg37c5VdyEV7UpE92AFkYA5?=
 =?iso-8859-1?Q?kmcuFxJjZ0jaRUl34Qvq54YbM4U6TAYPYEC+dCf8TIlhkEJgRowFQbso2A?=
 =?iso-8859-1?Q?5dHV0ZVcPTSs+47exiA42FkP3pFGtGR5ciTDI6b20tkZ7/0QxLtS1fwuA4?=
 =?iso-8859-1?Q?WcGLDjElmgW8fqdb50MXdT16fGTv0cdIdVr+4ZIx6CdcDof7QO78EF7oXi?=
 =?iso-8859-1?Q?fXZLAnQOIDwfzw3uCiGSmYKjCNH5XghirypbKz1tugo0PYw6bVCGvu2Grx?=
 =?iso-8859-1?Q?4EyiJhD1+QrwE5aW+YpokWGFWkCFmuUbsSlivF0da2iFLOKDXLu8wtSOI4?=
 =?iso-8859-1?Q?PF3RL9fdd5myJCl8pSelwBUCe+kO0eZqtQ2VLpCwlsqTRL+U8OSr9J/GYN?=
 =?iso-8859-1?Q?PRl/5WD1P5bf9EribhMG2fvbQ4E+Au9xYHnPayIdOmzvuEDBu8pMIQh4eQ?=
 =?iso-8859-1?Q?ixEVuY7q8u3H2RwpcAcgECXNdSrK1iNWWa0gJxFWK745hG2r5J9MUy+CHi?=
 =?iso-8859-1?Q?NoaQtOHZM9fmXgjPY67VR8fbIVTRZ401w7Mov1HmfmwjIsxdIewcJmiEKr?=
 =?iso-8859-1?Q?p0V3DcUk9fZibrgn63KJadfXdVbS6SrEfRgmGRGai6DI5OV/Gg8Xd+eo3m?=
 =?iso-8859-1?Q?jX3sopbzCNridrK4QgJVPdzLAW9yH5byod42/C9pPhuvvY754l5yX9b4DJ?=
 =?iso-8859-1?Q?jMf52LbNVdlPD0zAxNfv782G6g6zOsGE6KNVryGAxDlRCwHhgIxoab4A?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MN2PR17MB390309B95E43D96A99F5BB11C32D9MN2PR17MB3903namp_"
MIME-Version: 1.0
X-OriginatorOrg: MissionSecure.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR17MB3903.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 989e9b7f-00c7-40e8-2f65-08d9eb374c73
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2022 19:14:58.7044
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f0ca9611-f13f-4dc9-8e1b-119172b8ec5d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 CUrJePgDwibyD4goFy3Bfr5ZX72m6vevVSjZ0zhIwB5ZNNG/gIJ+8SeL91FmOBL6Fce5xkpLxUk4xe3T7O0Nqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR17MB3389
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Feb 2022 19:15:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56111

--_000_MN2PR17MB390309B95E43D96A99F5BB11C32D9MN2PR17MB3903namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I could never get a Zeek recipe to work.  I resorted to building it on the =
target, saving the binaries in a repo, then creating a recipe to install th=
e binaries.

Gary

________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Paul van Berlo via lists.yoctoproject.org <pvanberlo=3Dgmail.com@lists.=
yoctoproject.org>
Sent: Tuesday, February 8, 2022 11:08 AM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: [yocto] Zeek recipe

Hi,

does anyone happen to have a working Zeek recipe? Whatever I do, I cannot g=
et it to compile properly :(

Regards,

Paul van Berlo

Gary Huband
Sr. Software and Systems Engineer

Office: 434.284.8071 x720
Direct: 434.260.4995
Gary@MissionSecure.com

Follow Us!
LinkedIn<https://www.linkedin.com/company/mission-secure-inc->  |  Blog<htt=
ps://www.missionsecure.com/blog?utm_source=3Demail-signature&utm_medium=3De=
mail&utm_campaign=3Dblog-email-sig>  |  Website<https://www.missionsecure.c=
om/?utm_source=3Demail-signature&utm_medium=3Demail&utm_campaign=3Dweb-emai=
l-sig>

: : : : : : : : : : : : : : : : : : : : : : : : : : :

[MSi]

This email and any files transmitted with it are confidential and proprieta=
ry and intended solely for the use of the individual or entity to whom they=
 are addressed. Any dissemination, distribution or copying of this communic=
ation is strictly prohibited without our prior permission. If you received =
this in error, please contact the sender and delete the material from any c=
omputer.


--_000_MN2PR17MB390309B95E43D96A99F5BB11C32D9MN2PR17MB3903namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I could never get a Zeek recipe to work.&nbsp; I resorted to building it on=
 the target, saving the binaries in a repo, then creating a recipe to insta=
ll the binaries.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Gary<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size: 11pt;" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> yocto@lists.yoctopr=
oject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Paul van Berlo =
via lists.yoctoproject.org &lt;pvanberlo=3Dgmail.com@lists.yoctoproject.org=
&gt;<br>
<b>Sent:</b> Tuesday, February 8, 2022 11:08 AM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> [yocto] Zeek recipe</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi,<br>
<div><br>
</div>
<div>does anyone happen to have a working Zeek recipe? Whatever I do, I can=
not get it to compile properly :(&nbsp;</div>
<div><br>
</div>
<div>Regards,</div>
<div><br>
</div>
<div>Paul van Berlo</div>
</div>
</div>
</div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal; text=
-transform: uppercase;">
<font color=3D"#595458"><b>Gary Huband</b></font></div>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458"><i>Sr. Software and Systems Engineer</i><br>
<br>
Office: 434.284.8071 x720 <br>
Direct: 434.260.4995 <br>
Gary@MissionSecure.com<br>
</font></div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal;"><fo=
nt color=3D"#595458"><b>Follow Us!</b>
<br>
<a href=3D"https://www.linkedin.com/company/mission-secure-inc-">LinkedIn</=
a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionsecure.com/blog?ut=
m_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campaign=3Dblog-e=
mail-sig">Blog</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionse=
cure.com/?utm_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campa=
ign=3Dweb-email-sig">Website</a>
</font></div>
<br>
<div style=3D"color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px;=
 font-style: normal; font-variant: normal; font-weight: normal; letter-spac=
ing: normal; line-height: normal; orphans: auto; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; widows: auto; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">
: : : : : : : : : : : : : : : : : : : : : : : : : : : <br>
</div>
<br>
<div><img height=3D"44" width=3D"115" alt=3D"MSi" src=3D"http://www.mission=
secure.com/images/MSi_Logo_email.png"></div>
<br>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458">This email and any files transmitted with it are confi=
dential and proprietary and intended solely for the use of the individual o=
r entity to whom they are addressed.
 Any dissemination, distribution or copying of this communication is strict=
ly prohibited without our prior permission. If you received this in error, =
please contact the sender and delete the material from any computer.</font>=
</div>
<br>
</body>
</html>

--_000_MN2PR17MB390309B95E43D96A99F5BB11C32D9MN2PR17MB3903namp_--

