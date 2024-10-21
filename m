Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAF48D0E6CD
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 08:33:56 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.121])
 by mx.groups.io with SMTP id smtpd.web11.41209.1729499631874804779
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 01:33:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=XK3yMMTv;
 spf=pass (domain: optimeas.de, ip: 40.107.20.121, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k9Xo8vEc4sCR/HN4diXPdZEC+Lehmwxfj/pM5nLlcJKt2rzm7ILnmnaaVLRBbvv6d8SUKUw86HfqmJ10Cn08th8rs0EzMjK2CeSZtXIV6yWnuL2rwBOTRBxzq3Eg1W5EXhqO6mpkFSX8jzm2/rh8t5tPMh6hp+AIruxrhX8dvCHTQ2q6bX8WaOhfCsE37xANmtFxsBu2iY1M5GQkHje06/assEYX4S/+CpvuFpUDutxLD4NcBzaejL8pnW8KrlQvvOsIwxbrNOHKxGShUIcFPSFl7xBfF6eqdJdxh5pHB9XoOpxFWiYUiuKEn0aolc3QOUF+mJ40mpqzC0DltqEwkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j4pxlPwcNHjbCiL6t8ZWFDu9aSwv2EP7LF4eV9TNz2U=;
 b=SpcqWMpGHAguwjMsCkuBcWIKj4GUO9Eb9Z26owNPBOCDU/+xSN0eUSO1yIdhDRF2kTGgg1oDk1zkypucluAjX2le5GdC4G8zaBHU7B8oOR/+eedJKE6tXcQRxRtlDElUKZ6wVH+aLHPGyX9VjIN9WirXdrkfIopUN94UDLS7yJfr7DwgN2CktONnBmQxYkZVWBKiPSUGLQN3zCsc9plY7ERf79M5y/RZ9OQw7nyDP2zubATRhC3V4BQCpl4IgD4EW0sK7BZQyyGm7mhfTJGRK6lRE6fbalUUBODEkYBeSVIINYulddQdkYc8zNnTVzyTVS426l0TPmPCpWuEIjcfTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j4pxlPwcNHjbCiL6t8ZWFDu9aSwv2EP7LF4eV9TNz2U=;
 b=XK3yMMTvwOYXlx+Z7iZWqzZXijVaKW46DMMi1b6leUs187GZUnQaHEXd6OAry0MRvvsSY2a4y4qm2C1rCXmGjfs4htPSgVQzHzb3TwhVVRpbJvaTHepqFj22pl70QU48tdFvL7SjcbBFnc3wfMnvHjUsndvjw2nxqIDl6xmlv0w=
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:28e::9)
 by DU2PR10MB7813.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:49c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.15; Mon, 21 Oct
 2024 08:33:48 +0000
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a]) by PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a%7]) with mapi id 15.20.8093.014; Mon, 21 Oct 2024
 08:33:47 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Strange problem when extending the linux-firmware package
Thread-Topic: Strange problem when extending the linux-firmware package
Thread-Index: Adsjksk5+RykX+C8TzCTp1YZKHQvaQ==
Date: Mon, 21 Oct 2024 08:33:47 +0000
Message-ID: 
 <PAXPR10MB52772C5FC76FBDCB1FF4341599432@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR10MB5277:EE_|DU2PR10MB7813:EE_
x-ms-office365-filtering-correlation-id: d567bfe1-efc1-4114-8d2b-08dcf1ab1553
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|376014|366016|10070799003|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?Pgjup2ESedKFc/ETJk7VYl1Iv9RFyySaOdRWYyLX/x71NqaCgq7gYUzDFV4y?=
 =?us-ascii?Q?oyt30Rwb859qnE0jGdfG6eqSrz9VIHvv7zBBBwhssp3kZFSd4xNI2rGqfgV9?=
 =?us-ascii?Q?CckZWN0VkJcatZf+5zxnc+YrfrpGZCbXhvygy87utMTWulLGhryZgoE22Llz?=
 =?us-ascii?Q?rVNvUSw4ulpzGOxERDtlvc5UUfnMN1fbZyWUoT9ueQD53MOz5q7TzuMNYYEC?=
 =?us-ascii?Q?501wDUwYgOxmmebkW9cH4mjZ5lT289WI1duMCROC7eAbcQmLsdM3y2zTyVgs?=
 =?us-ascii?Q?2mbA9/qw4tnzNXOWDrjGzPmjK1Y+g7CtCGJPYB1r8zGZSO7TzyX3uma5C1tH?=
 =?us-ascii?Q?H4uroZWVTk8goBFYsENLEQVUDENEHFMxZDyAqLnxmnFjW+L5CQKxzOxYVQaz?=
 =?us-ascii?Q?aUewRkyhqdlJk1SlFEANCGe8mcyjrHu2ypa71Jrki0QqV8azIUhaZXW7GXWq?=
 =?us-ascii?Q?F7HW2/CCBh+YK3fMnniW3SQIQHejL+e+GYghKsStXiZvzSaQJQ+iN5bfqk7O?=
 =?us-ascii?Q?NIel8MuOS/N+Lid6S5RXZmETSwquQk9fxWOyHnGLFpKVAjq90SB9D+KrBLSq?=
 =?us-ascii?Q?u86PG5yysUUVtWRxBVjOHc9CkNxIzXBQ6QQOvClulKHGb9LXA7cHYSxq0PqT?=
 =?us-ascii?Q?M5tPctqtNbYBgfk/xf6jlaW6Y9gmVT0P3FBP7faSoXa7UhsucBPFgU3a4L6N?=
 =?us-ascii?Q?7tVp0U8R2F2CtKO0YmU70MWAVVRTJKhHCOKsWjJ+j9rLhvqnb1weaILrroRE?=
 =?us-ascii?Q?hWYlEodITFRva+FJqtDpD1t0qqYOR7p0SmK8QXhUaro2GjTcA5aR8/Hk8Lcl?=
 =?us-ascii?Q?GhV0XBgmr4+AjL3uULNqS5RlywmCBLrBSq6WPbtDVTOlM5+qL8CrQa4z3BH8?=
 =?us-ascii?Q?8YHxTxqFMEzf+hCuJcmFooBNSIFPcQpcU1+AwcjSxDMLjUtiZMimihktG2HD?=
 =?us-ascii?Q?pLcfOo7GPibbyiffmnh3SPwuSKvr0LL8UGyGmK/8V+q4xWTNHQmQd4ADu70b?=
 =?us-ascii?Q?ZedaqgJ3hCmiCNc8uizWTtygUWN5s14TBF0DtNkN+uiI5ZUFSb5KrgVu/Fce?=
 =?us-ascii?Q?UaUnxdLgiAmTMmTt2F2G6oiA2vTF/SG0yIJDBc+2r8JQWKRNixXJVg4m/Z1f?=
 =?us-ascii?Q?Xr0aS0B4M/RrRzTm1F8eAD1FuNsgyBhc23yk4In09SoF4I4K1Mt9Lw5pRnrq?=
 =?us-ascii?Q?W5O0r+CCt4bV1vaep1mVLFxaKQfve9TTKamS6xp1smWclAGSgoxYrSYPtKkX?=
 =?us-ascii?Q?tjXMF9oGv+NahLAI8dKm58BzyB8DDlLaODdcEjLibKAlS03CIq0hvJzrDJtm?=
 =?us-ascii?Q?atZeSz4qmNJQvnvE2xvJWvHabhUna9+UPK1+u+32KEREMu9IthW9qfXf2Kp2?=
 =?us-ascii?Q?1xdGH+A=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?n/m/f+y7vTqJdBFAC4XKAon5FvdHLBejEmk230BXUobL3eXZTh/zt3yEgTCj?=
 =?us-ascii?Q?lfMkO6G890AA80XjWSR/WOLBDQyT36+cP9lMzA7piHuTPcigQStX5x6afuIK?=
 =?us-ascii?Q?upihQBMt2UUriJdSOoSfL5tLmUFsNiRXItDXKTnpFpx2tPkhK7jqpvnJrImF?=
 =?us-ascii?Q?z3EDw+kv2Ml3gpiJB2IDc4/ouFnqQn1yyTQBNBHcC5/Z7Pu5KcC0Nu8lSfoK?=
 =?us-ascii?Q?fqZMOdLhuRZbjhYczFsmYf5n1FsYiEB8g0T6ppexSfKnxOmJjA4j8DapTCNo?=
 =?us-ascii?Q?p0jRCgqrqcD/9aAxj52gt7lyq15RsalRhdJQVb0hs3tW/ARXtiL+/ybx8dfY?=
 =?us-ascii?Q?wOTeji/Xg25WcTnmf3IZEVijb1TpghbfBLcZlSLAHKpHtqSog7QauqmExvtQ?=
 =?us-ascii?Q?7aTGKoXvjylW3PSbuwhI22iCfiDp5z5YjzlL3gwXqXFZIXZdRPeD2cBqEZw/?=
 =?us-ascii?Q?afsuw6eyPy7q00P2shar4wjrohzTGjQavg4pBtg4JboEBgW2Xkobb+ZH5wXV?=
 =?us-ascii?Q?h6TM1sifoBj+Fx7kg1PkBuGRAU+xMeCqRMW8+WPe0G5Y2RCnLWxn7No8apuJ?=
 =?us-ascii?Q?9pS5LBapMpXnAJ7HP314Uu0+kMolgkO78PdlHcQEVfrWqvpn9Y13A+hzgIYF?=
 =?us-ascii?Q?JgNBayFMi/cxowrcmu0CwPfc01KPtPKTxXgkqextIqsm59BHt6R6BAIqWVjK?=
 =?us-ascii?Q?Y8EL/nBacm38hXwpjmpqORN411UnU4LtejmO1F2YgHaeNZb7yq+0xRkZSuqC?=
 =?us-ascii?Q?uFVDWFH3mXlbgj7zJAC0YHYqnb6iC4boY0hMXppRsXVvFYvpfIwiP8gOqCTv?=
 =?us-ascii?Q?tzGLz+mudegTPnyKdXfFiVYXtGIOu8urbVGTJ3GIuaDhHWPxW+c401U2Cjjd?=
 =?us-ascii?Q?m1VgtcM4s3Moqu4fcuGG3l0ouvi7s4G62SoOcBdywBie9MCDZNJBNJPZoG/o?=
 =?us-ascii?Q?q/c6e9DpgJj1pd6qIEKQnzC7B8EsOD15GRM/7V393ZeeRRyjKj6WucoK00Dy?=
 =?us-ascii?Q?Jik/ZbhTIu6jWwOo2wvUoxwg1UOHPS3GfDAadFVt1EAjZ4FAx9530JoSvs3m?=
 =?us-ascii?Q?46lwQ78eyO/Vlw3v6Fwpfn51xgcE8cm9Pvt6C00Bkqs1RA+xLZkZxy2kHoql?=
 =?us-ascii?Q?5cL7rLfu2Kst1DT5yH+8vmUq/aTnII8te3JUElKB5OW6Pj710Za/IepauN+l?=
 =?us-ascii?Q?uVGQ6mLsQe4vMWxDkXf6PsvgPuEODYaPBnnUEfMBK0cmLAqsdjf1Qj1D72+F?=
 =?us-ascii?Q?I/kSd4jysfvBvoj5Eeq/faf2qhr1Y6o+niPPKFSRR1XTu1EwhjUM0smYbZRK?=
 =?us-ascii?Q?KBEvhq+pV6mNWsn65s4BozG9Yk3IqT6HKbCOU/p/4QmvkaNEY5D3+Ao479l4?=
 =?us-ascii?Q?+6YBGH7/j1YbST/eq+xEKNv3vGOZYTR3Xn5iCc8MSEb1+T45nKSvrI7BdJAO?=
 =?us-ascii?Q?TWkByOnXSyMuEFt1wnh9dPmAGDL9i7bK7WpFriU/BlfLCIM6HDfQ/n2MkwPO?=
 =?us-ascii?Q?zateUul+DPG0R4qwQdt8SR6nx9F7CtVZl4k4u58b0hO9dGGFObo0hykPBqbN?=
 =?us-ascii?Q?p7Q9HvDrLeSKxriTNrGr9819BkLpoHoeHVft6jT64EK/+gG23jxWcXdLxCt5?=
 =?us-ascii?Q?MXIkDbZdMn+4JsCP8uUZhFDBHQnxh9R1SVlfykHh7ZzSMs70q3fZL2Pod2U2?=
 =?us-ascii?Q?CpBLlg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PAXPR10MB52772C5FC76FBDCB1FF4341599432PAXPR10MB5277EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d567bfe1-efc1-4114-8d2b-08dcf1ab1553
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2024 08:33:47.8757
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WT5fn2zUyWPu5zDwHb0ZQpHGPXDHkbHDWb3neJ4g6IyqzhgUNs7wDo64SgE9kS4y8ZBWwKRUcXX+64EN61war3uSpfG5P+pmtlb+yzEsLBA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR10MB7813
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 08:33:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64058

--_000_PAXPR10MB52772C5FC76FBDCB1FF4341599432PAXPR10MB5277EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

a few months ago I added Bluetooth firmware via a linux-firmware_%.bbappend=
 file with the following line:

FILES:${PN}-rtl8723 +=3D " ${nonarch_base_libdir}/firmware/rtl_bt/rtl8723*.=
bin"

I had added the linux-firmware-rtl8723 package to my image. Until a few day=
s ago, this worked wonderfully.

Since about October 18 or 19, adding the files ${nonarch_base_libdir}/firmw=
are/rtl_bt/rtl8723*.bin causes all firmware packages to end up in the image=
.
In a way that is unexplainable to me, the package linux-firmware-rtl8723 se=
ems to get a dependency on linux-firmware, which causes all firmware packag=
es to end up in the image.

Does anyone have any idea what is happening here?

Best regards,
Matthias

--_000_PAXPR10MB52772C5FC76FBDCB1FF4341599432PAXPR10MB5277EURP_
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
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">a few months ago I added Bluetooth firmware via a li=
nux-firmware_%.bbappend file with the following line:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILES:${PN}-rtl8723 +=3D &#8220; ${nonarch_base_libd=
ir}/firmware/rtl_bt/rtl8723*.bin&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I had added the linux-firmware-rtl8723 package to my=
 image. Until a few days ago, this worked wonderfully.<br>
<br>
Since about October 18 or 19, adding the files ${nonarch_base_libdir}/firmw=
are/rtl_bt/rtl8723*.bin causes all firmware packages to end up in the image=
.<o:p></o:p></p>
<p class=3D"MsoNormal">In a way that is unexplainable to me, the package li=
nux-firmware-rtl8723 seems to get a dependency on linux-firmware, which cau=
ses all firmware packages to end up in the image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does anyone have any idea what is happening here?<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Matthias<o:p></o:p></p>
</div>
</body>
</html>

--_000_PAXPR10MB52772C5FC76FBDCB1FF4341599432PAXPR10MB5277EURP_--

