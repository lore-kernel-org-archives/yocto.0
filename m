Return-Path: <joseantonio.cardenas@niko.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F14EFC433F5
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 11:23:39 +0000 (UTC)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (EUR02-AM5-obe.outbound.protection.outlook.com [40.107.0.40])
 by mx.groups.io with SMTP id smtpd.web12.35921.1653909808336201494
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 04:23:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=xOr+FR9Q;
 spf=pass (domain: niko.eu, ip: 40.107.0.40,
 mailfrom: joseantonio.cardenas@niko.eu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U2jc+zBt5UgcRuKPhpwVQD73y1tXgp26t/+zMIAiViPgXkOgMBHiMLgEMjHvDoZF18M/CjLVGlh8L2/4rEasQ4B4IyWvU1wmPFU83U07qTbaJFiQkpmhQ9cltYim51ISvzL4Zzqb3fC+DEZqaGgaF66vvEoIsU9KUrKCwo4wKIaXQW/mngC9QoP51caQQgm9mHoPi7iKXTN5q1aCYprQ85eK7aI0Us8yoV0foVNi56g60wA43Ny1jxGWBiK9yDGHookepDWBYIMMpkbGZUcVAaQ12TJs9Tsm0+Lk3vxodkVd26CDJGEzCN3gGD/FdpAd1KbMeIaxqy6X0epz4vbLHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CC2urg4Ct/qtRjtRBnI+usc1KPXuo0Yf/HTOxpe/csw=;
 b=npGHMdxOZLfQxjRLHsPJDqrNI2WpempxpoRVoa+pn5r5r8RUzO6uRsXyCG8eR9aO7fKjX2PA3nKzpjpvonf06DuWYJTXBrhea3E/qcVIvdPxmWd9fJTxBhVwiPdhQnMvC4JOJOJzPZfIM0c6AazNKKHA33+nWkqTM2CYHu4hW/wPc5W9oYDP0226qc4XPnywcoeUOuz7YismaBYT4HiGVFjNXGMss4k4HxffyYtb4WP3byJbZmqr7OyaE6CAN5MYsBHddpghLtX64Z8uSC1UpMEtOs4AYB6FQkR8kD9Rqr48TiUbuRcwWdwOJj5KE1ewc/CeBM2nzoGLQf2awM7oNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CC2urg4Ct/qtRjtRBnI+usc1KPXuo0Yf/HTOxpe/csw=;
 b=xOr+FR9QyQNHOTgVAOCDTjnJHaj82+14L9yAq+wGpysEUQEywXqpybwP1NYo9V+tNmq11/BtPOqF6xOL3WD5X47h/qIt1VbsH+YTylzqf7vAf17G+ymUPh/JzBLW8MGy1zli/sOQrl2iuzsC6z4fPcKlq1rh0NqP/6rKNEs2qUw=
Received: from HE1PR08MB2859.eurprd08.prod.outlook.com (2603:10a6:7:2d::18) by
 PAXPR08MB7396.eurprd08.prod.outlook.com (2603:10a6:102:2ba::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.19; Mon, 30 May
 2022 11:23:24 +0000
Received: from HE1PR08MB2859.eurprd08.prod.outlook.com
 ([fe80::4802:5d02:3cac:58ec]) by HE1PR08MB2859.eurprd08.prod.outlook.com
 ([fe80::4802:5d02:3cac:58ec%4]) with mapi id 15.20.5293.019; Mon, 30 May 2022
 11:23:23 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <JoseAntonio.Cardenas@niko.eu>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: How to modify an existing file from an optional recipe?
Thread-Topic: How to modify an existing file from an optional recipe?
Thread-Index: Adh0FpcNFMhYq0RjS4y2H4LIFObtZA==
Date: Mon, 30 May 2022 11:23:23 +0000
Message-ID: 
 <HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=niko.eu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3cbef954-e275-45e7-349f-08da422ecf12
x-ms-traffictypediagnostic: PAXPR08MB7396:EE_
x-microsoft-antispam-prvs: 
 <PAXPR08MB73962613719F7085E88736E98BDD9@PAXPR08MB7396.eurprd08.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 wRlGfaUmCss9V8juhrAWT5dqnqvMjYPaX8OofiYhRUPZcvQVDb7UyACLrKaA5Zw6A8MB0+By0+4s7kT8uVua0PBzfED7erunPauSN8MQ681PnH2EpEos8h/2T4+2SP5YZx8CG1g92IOlTbLOAuFSyBD0ee/DWisU/qLK00IGOfAasIOF6pbzy1dL5pJCTuZzGW8wJ6NlcY9eDHojXGvRQE0K0HkoCxaYnwfZQ7MvR4j3BLD6PCrG4qLyghaymvZxsp7QgAawgDV3bp+vQLhgf1WLeC6ML22GxA46Vpv/F5MpIc1tSkt1u/AETKmHvvv5ilJpKpNbNOORKY3Mrk9CWeWKV2ua+WLFOfVzSJMfZwhKt2hS847CaKHqSTZZk48QWvg4VFe0Zk1InAom22rYZMcakiCnyoyuxLPN/Z2u2itmH4ao5HNkvF4MnRkOxIxu57GDed24OUKWwPeBfgSeKF1urti3UXZh7GmIJuBMMbE2Cw0SEnCRChgJPT6QAFOe8SR1ehf84OOhZoaNGlMgNCx5DrCkws4tyxdPa7vEWZSqwy4FepElMuft4YyDzAiwi/w18FCx81eqVI98XJ8TbbWcgDhxLx9E6yqf4l6xrLZUTKVJfY9coEYrgBiu2D8Ve/WgLj+I3VdJnrc/i4phCx7UitACK8ZJC05NJbPqUly0vVKm3PbsfyirYwp4vZo5GfYbV3Sr4sAw75mm2Bfydw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR08MB2859.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(5660300002)(6916009)(7696005)(38070700005)(33656002)(316002)(38100700002)(66946007)(76116006)(186003)(19627235002)(4744005)(9686003)(64756008)(86362001)(66446008)(71200400001)(66476007)(66556008)(8676002)(122000001)(508600001)(55016003)(8936002)(52536014)(26005)(2906002)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?CBHTsKtBu/8cGtBKzWApI8L8rtIC5hyR+qGX0/l3M5xA4wEjtYcpIlvcLpPI?=
 =?us-ascii?Q?CtZgcfAm7G9+ZC8nGzQckwM5J9bMIEBDx0WNTg24jP9F1HCBq2M9+2Ue/gvW?=
 =?us-ascii?Q?fH1yXtZsGTUcGrqaseAhhgrSNUbkBEEuVd0TkrUECZiPmjRlspXEovBMySnz?=
 =?us-ascii?Q?MY2Q50XpgMy1RAp07WLXJABzYLi1PI+tzu/o6Fy582t9Zwg1v2m8crv4FdK1?=
 =?us-ascii?Q?nPdxSiw12txaiXQeGUkN240eEplWDXTmiuy4Eqz1txYwBf+vduFLAPm0idrm?=
 =?us-ascii?Q?kuMuUbDB/f8S32gkmThJxsRxArO9nn10k3kz4vLPKiPZNfwEyt/bDbZrhNL0?=
 =?us-ascii?Q?/URR8d+FTMjcsShNv7bBKfjG7CJKqyaNcs3uPT58g6GMFX/o/DOg8W3ym6ya?=
 =?us-ascii?Q?wHD81bS4arNbIucq/ixJDBSWIza8s5hN47qDRp9VlGR8KaVCWaF7vJ7NChT3?=
 =?us-ascii?Q?xKN0mz2MO9pK9Zv/ChrbKnBBeOsDczYffQB4Xl4lzKtpkTFdvJe3lSNOpXhm?=
 =?us-ascii?Q?0PNTyWwTw+2YOG6m8Ys7GTxrPkAMIyYUDuHuMmC3sBQ9p9gSq/5yGHJ3R8XQ?=
 =?us-ascii?Q?6mmY+OgPoX3k7c7iHpdlDWYno4bZl7xmVVeYWmXlcxyHXtQFw6lRwQQxnK/d?=
 =?us-ascii?Q?lm8jsMi0CAuiNNSDNu6Tfu7u1MaNFNPLbHYHIFW5WQ9iWBzMsX3wUqsYxcMZ?=
 =?us-ascii?Q?5nCJ3YK2dsizydOIVd5m3aQPQ0SMBuzfZYz6cqJcc9rj5QSBybKgzLLsLKnv?=
 =?us-ascii?Q?HNLFSqIqsGQ7zIOGhTRaD6gC30JUVV8ZVkt88az+Bv2RmP8zP6i2i4i5C7nL?=
 =?us-ascii?Q?QfD4v6hUJ0egGwWPFg0iIgqH2uLinPmjtHR5L87LSz+kNrbBVLaZXiXlc5zB?=
 =?us-ascii?Q?MeLUzngrcLZ6COWQnQo8vNxAFQSyfk8JzFZBrov6bPzLK1YQGQ2yVYNNOXIL?=
 =?us-ascii?Q?cmz93XJtn8pHWkrVZ71BD3AMJ70RQYAMAIQyCQnvjzqKeMrj2yImkoEVNU6i?=
 =?us-ascii?Q?DUCP8TPN0RBLrNyJTMtMBiHP6fp+YAV56r9DFjE3p+GG9mlzdqkpOGLOdlzh?=
 =?us-ascii?Q?iGEYhIzIgx3Y+MoHhIS0JSjuzHRYE4tU7BgkuLsYMl87sbYsh0LQpPLSHIE9?=
 =?us-ascii?Q?T1QueBY8nNgorNWtwr923BIQp/HFjnQI8TfqsylcmHU6QYF76WkLnTQ12WSJ?=
 =?us-ascii?Q?Dg5QUTN6Va8P7aNfv8w/Yp1ReEADjngBb2s6OLM0gAHgmv7l6AWGWz0QthV0?=
 =?us-ascii?Q?C9uJRqUfBu5RApusVSJPydJHD77p1xx8J2+nD7K3u4tL3MdrJv56qtWGGQob?=
 =?us-ascii?Q?emo3rCnu1rb8ekKWPyRPD5yyAULbkYhpCwioeepMVQwMzD3WZErq6ikfsqvn?=
 =?us-ascii?Q?ztSgq2HBKTVLqklMwkJnHD35wWXCmxfgegVvR1aGhkX3PvlAUAZZmtv+SMy1?=
 =?us-ascii?Q?FU5LeKrTqg9SihmyWbs0Ko7qwqzJEotXTnMZy9rngQGhDqkEyPvADdtsEpzs?=
 =?us-ascii?Q?RumwDEHRQdQb/ZnFBsZN+xd5Iydye9r2L6SvsB1llPWGGevM4JTdXO8ZER4l?=
 =?us-ascii?Q?Kl7PzYg1UbUigwBKdWYS7UZz5wMKcvGJTB6IdibjzrUyKozQSOEOuLmIUItT?=
 =?us-ascii?Q?eHMDmktLaR80rpHKpnK3n/xiq6NE1VDkPA0dE1fuGwRJAcvsjHMTqIgmcvhi?=
 =?us-ascii?Q?5hT1gtb4o82F+lBEFeTSYok5XhlsrjAWETiV7BGiWhF7dd6hDDMAgZM3wZMD?=
 =?us-ascii?Q?O+tDx4q9T0KVFxVverre/+S5E52qPRk=3D?=
Content-Type: multipart/alternative;
	boundary="_000_HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9HE1PR08MB2859eurp_"
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR08MB2859.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3cbef954-e275-45e7-349f-08da422ecf12
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2022 11:23:23.6039
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 l9vdmHzjfHSknxsedfZM11khksN6/V2iyOD+MDms6bL+o0K7GiZhLGGJgaXWp/ntvChQyrh/IQj+R5g+iwM6rnvTOJQ4uPgxciPqI1mSdig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB7396
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 11:23:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57211

--_000_HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9HE1PR08MB2859eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I have a recipe that is built only with the SDK that modifies the content o=
f an existing file in the rootfs by doing "install -m 644 ${WORKDIR}/my_fil=
e ${D}${sysconfdir}/my_file" but this command is returning next error:

Error: Transaction check error:
  file /etc/my_file between attempted installs of my_recipe-1.0-r0.7.armv7a=
hf_neon and initial_script-1.0-r155.1.armv7ahf_neon

I have seen that the best practice to modify an existing file is to create =
a .bbappend but this modification would be done for all builds, not only fo=
r the SDK. So what would be the best way to do this?

Regards.
Jose

--_000_HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9HE1PR08MB2859eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I have a recipe that is built o=
nly with the SDK that modifies the content of an existing file in the rootf=
s by doing &#8220;install -m 644 ${WORKDIR}/my_file ${D}${sysconfdir}/my_fi=
le&#8221; but this command is returning next error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Error: Transaction check error:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">&nbsp; file /etc/my_file betwee=
n attempted installs of my_recipe-1.0-r0.7.armv7ahf_neon and initial_script=
-1.0-r155.1.armv7ahf_neon<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I have seen that the best pract=
ice to modify an existing file is to create a .bbappend but this modificati=
on would be done for all builds, not only for the SDK. So what would be the=
 best way to do this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Regards. <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Jose<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9HE1PR08MB2859eurp_--

