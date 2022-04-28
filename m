Return-Path: <martin.weber@br-automation.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975A2C4332F
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 09:09:45 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.71])
 by mx.groups.io with SMTP id smtpd.web12.7780.1651136978914774225
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 02:09:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@br-automation.com header.s=selector1 header.b=JXO9Iyiq;
 spf=pass (domain: br-automation.com, ip: 40.107.5.71,
 mailfrom: martin.weber@br-automation.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TYFB+OfrTZN3kq0ctQ7ltjtqNz81bKSJsevFpJlsq8rSexCupJpS+FxrMgU5HOcuuiFX3J0XcG8QF+PzW/0m65aiLqFJDmOgtqPJhrVLTOWB1c8pA/gcmGUTdZ6HG+OEu4In39FOjj61KCVZyCWzv/6NxcbErw/WrKArT2JL69PWud5+e23rlTgxRqd4ReNl+ag6l1T7cYwRwBEsrRB2VbAZhGrdOfV9/sBAI97p1GCzo6HdkazvGGHM5paVumABIqaHS0uuNDswPCy5mOiEfYvhwNQKOHT5iv8H8WgVlHOqFk4xugAodHoYwlyuiP8pzwcTEl/4kwOlIlC2pwAdQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+PinvdS3JB7yLW494Oo1zNor1YWq9ejeQ6dnCzOTOsA=;
 b=DBNYHLFmAipQGDIkxLv3p9Fb4DHVgzEe5cqb619/oFdBGOuvubEkZYEE9ZvkBoOPJFvt4b7KdbeP3Yl67MdL4uvdMm8zNWv+jQuywUTRDpyGQauOjjSxjznsJLcXKm8eyy3HScNyHtIjo43EEyyv6cMkvcKmdAYZfu0I/uFkjhXQ5jjTcyAKfRwxeEziq/qyxP8yojNHG2EjKlDFIEEupK2QBPAJtV5jrqnGNayKWOA/5/w6mG9ILjEpyw/Jpof8UyqmliJ3viJGgf2RkYEnKQpk9wwynvXz0p+DT6Ur6ZFnQPMe6hzLLyh4GRiRk5TYsuPSdeyPMVhzAp2RDa+Nbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=br-automation.com; dmarc=pass action=none
 header.from=br-automation.com; dkim=pass header.d=br-automation.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=br-automation.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+PinvdS3JB7yLW494Oo1zNor1YWq9ejeQ6dnCzOTOsA=;
 b=JXO9IyiqyJiQCK3/fcgJndIpVl0liHmxv7QlyJaPqcT+CK+1SiymbiVXPBVaefKcqL/01LqtNJykChIZzQFnvdbLrtr7xDYHIHsr9mWglctPFH2vCMfGkcJO3YMxZ+lUVPjkGG4kVaBGnYIqojXVRYOGPVOjYW+eGJloBV03kQWy3/i7sIiJFJfmsm86qYDZ+H5W+P+AjeXuD0tliC1hKCdXXDI37V6LFz0063mh9864jMbr1QYfPv0agBbU/EwyreN+sWd74wBI7XMRH/oYTUZ1IcxDrz2qKZXjaghB/4eYCg5Lp2HX6HCATkYILh/DFmqLk1pJkJZikibjZ6WtXg==
Received: from VI1PR0602MB3549.eurprd06.prod.outlook.com
 (2603:10a6:803:10::24) by DB8PR06MB6089.eurprd06.prod.outlook.com
 (2603:10a6:10:3d::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.18; Thu, 28 Apr
 2022 09:09:33 +0000
Received: from VI1PR0602MB3549.eurprd06.prod.outlook.com
 ([fe80::444:dc91:f0a7:e7ec]) by VI1PR0602MB3549.eurprd06.prod.outlook.com
 ([fe80::444:dc91:f0a7:e7ec%6]) with mapi id 15.20.5186.021; Thu, 28 Apr 2022
 09:09:33 +0000
From: Martin Weber <martin.weber@br-automation.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Building recipes in multiple flavors for differing images
Thread-Topic: Building recipes in multiple flavors for differing images
Thread-Index: Adha3xbnse6BdhsiQFaQ1GijPNrdtQ==
Date: Thu, 28 Apr 2022 09:09:33 +0000
Message-ID: 
 <VI1PR0602MB3549F83AC93A53785DE48677D3FD9@VI1PR0602MB3549.eurprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=br-automation.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38b6a43b-28bb-4e3d-88b2-08da28f6cf94
x-ms-traffictypediagnostic: DB8PR06MB6089:EE_
x-microsoft-antispam-prvs: 
 <DB8PR06MB608957FB9318AA9AE5FC2004D3FD9@DB8PR06MB6089.eurprd06.prod.outlook.com>
x-abb-o365-outbound: ABBOUTBOUND1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3N1dLD3UFHodi7vfjqvsIS4gRrhQ6jyA5NNECtTsxrKC/Qogcyvf2S4kHj+iscfKn3h86s15vVyibIgJXLQ92JAgVBj/Oe6jcUR5AstpQwUHQjImH9jezPIVd9saXVGN+NIZIuSFZ2HowaOkPHieEiXdi1IeUkkwxkZ6wiLRG507eoReFiZXrQIRAGarRY9lm2S3r5duXvxNgxl4kmQE2FiBlAwY2fY3ZbUpkSqb09ZE7iFZQfZh1AVBUwdMco6J2lLeyOU5hi5Y138h2yeXQj5Zv5T9ToUtis63R3dfh7eq9e5L1+nKPoR0H1GIiDZxjs+V0h3hQ5Rv1yvLLoR7q/DqqnTAMmakPsN7RWugV19IpdLA/J0ao9u04bjKxZZTh79x+FbsYpeuC1kgs9msb5w2vw0JYnwF1J/b8Wd4pNxIycHt5Pg453sHu5kKws3S4jpauTzo/cTfScgDuwV8C0xtiQwQiLcSrqnK4HJncVN0HqrJMSbYwGvALww4DAW2O9ULPq41nvq9mHhxKcRY7mHuDfN6x26A0vPzaf4U6PNMBr9/9DB4eO/uXBh4cSsCpM+PZ4IIiL1F1Em8IgCNW67LYBSL0pSSlSyLqsN/sJas+5MWsRGhcBpWekTUFVQX6S02O+B14g+3GD7NdBNYbjrNhMnctx2VEjNyiGygci09LFFjfqmQbr7KwL8fZUKFw8mQF8DF2GNNUUcSSk05kM5thT6zjWRyCekAvO8IGmhi6LFRBLy5BLpTCzJFsSbDMbQbMIep7HSCyRObo0MEuXAIiqOIG56p8uzw4ailTIA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0602MB3549.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(64756008)(2906002)(76116006)(82960400001)(66946007)(66556008)(66476007)(9686003)(122000001)(6916009)(33656002)(7696005)(8676002)(6506007)(38100700002)(86362001)(26005)(66446008)(19627235002)(71200400001)(508600001)(186003)(8936002)(38070700005)(55016003)(66574015)(5660300002)(83380400001)(316002)(166002)(52536014)(44832011);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?WHIu9bvCyrtPDYdIJRHYwO4cvDRY5psf71BDKZjJdi71WN3Bu/hllP9Yqr?=
 =?iso-8859-1?Q?DW/rl3+rjFQDruNlTRrwi8W8TEmi0OZkkOklCNQcM/eJQQEmOLR/VtUO8l?=
 =?iso-8859-1?Q?SMAxxfFlFwO6QW7+Sq6IguumfjuFGewM8envn+76iJaeVRp0s0BTIBRYHr?=
 =?iso-8859-1?Q?DP5XmN020KLLPYS0zrrhzQ122hQZFEUiLl5K6AE+fTOI3K35FapFd+WZRU?=
 =?iso-8859-1?Q?us3VEDiunZk/PjS4/MMzUOd/YIVn1dGDkuB5TO63jcVDn5KcFIq2oVDofv?=
 =?iso-8859-1?Q?YVM4ggP3tkU4JAZtOenlb4ZuINXxrpLNXOXhaRgW32ZMyYTIQ1NxpYtaUv?=
 =?iso-8859-1?Q?EBM15kT5GKu4yqPP94+mxxz2FqIPA3kL6gix05SW6LATtZGkz6h0iKWcTW?=
 =?iso-8859-1?Q?+ADMBfy+1HNAY1ao9hfvi9QaMpgXqqENsrapT4mFaRqUe70n96Kwka3AAG?=
 =?iso-8859-1?Q?hGlpk6x6clq4qp2nSYO57/QqLRRIfyzwMAo7UJdoOA5ZSpKsvDWxTl0zjm?=
 =?iso-8859-1?Q?YSbHcgbfPCMYVDyFoKocva6UW6rUHx814bS38I01lXrWJnC8fyCUKxs9yM?=
 =?iso-8859-1?Q?uJvWC/moUbLd39Qjhyw13JJp9mq7ApD4SRZfP2jdQVZ7ZHvgAm7ObGyiX1?=
 =?iso-8859-1?Q?BQIgsCASFPiLdC7y8FqxTRJMv7NM++r12LyhI6mrIt3SftcF2qnZm0FDnq?=
 =?iso-8859-1?Q?5GE+5poWU3xs6Tb/IoBznNtrWCZmY58v0ywmvTlwaxAiwfYx/tdeesm3UG?=
 =?iso-8859-1?Q?jtR+6EA2BP2QOpkHFSIKiCWCLG9+7OX+O/d8zH7QgnffJmIkNobk2PqeeB?=
 =?iso-8859-1?Q?RoYiNe0krJdnhyt41e0A6nIb0Ecpw0svY2aszb2zE0GV9f8L93AgNDmM76?=
 =?iso-8859-1?Q?Onndxzm+IucBMRMkrD76LUg8s4yu+6UU9Vet5ItQVJYWvBln5p72u4TuDA?=
 =?iso-8859-1?Q?78jt96V/bmH7nn6oCRpEt8auVkFfKIRNvLw3nGwcP+rCvn+nvq431ZKAs1?=
 =?iso-8859-1?Q?alK5iQflZFbdx28aR631JpXNRsQ2AzG/sFl6wEWE8huZ2M09LDBU1CjmSE?=
 =?iso-8859-1?Q?durnN7uh64Y4HPrUOtecp6m0+GsOBfo3i5Do7Wvmi51ltaclXlztzfllZ6?=
 =?iso-8859-1?Q?bdC6ztOuGJPpVj4QpMyUvLm1A5zjJMgxNMx9jsrJLWHG/Fe6stS54CrItB?=
 =?iso-8859-1?Q?NCLfWzJzBv/72ffCsv48QabFpCKDFdnJlYjbpSqXEjM4hpjK6jldFs/cgm?=
 =?iso-8859-1?Q?SIDRKBRj11IIPYSNudl54Q60CjcKtKWYjQE3gGBg30Pc9H9c1+ljXRkO0T?=
 =?iso-8859-1?Q?3nu9mj5m8tqb4eRfloEx1bs5Bj7QWB71zeSU/zypxWMRn0Xr7lw4lX5o+4?=
 =?iso-8859-1?Q?W9/xDmIiiwX4V6Kgdd9G4q3AyyjnEdChtDdfsRjRXm6cgnlXntQpNFT9qn?=
 =?iso-8859-1?Q?cM6dc8qfLmwsPT8NMl3A+r0PtQPNytMPmRXgYKGwfcRRR5T25xtr+WTuha?=
 =?iso-8859-1?Q?QLZAzrEIQaqmOLtBrA1rwZNNzIOn/GS2+AqZLXSSjTRfdGuSCxgaYcmCC3?=
 =?iso-8859-1?Q?HxEWC04dcJooYiweXs2ZGhu8wCUuv5Sq/oRet2S4fL9aBPTm/SzJJVN8hR?=
 =?iso-8859-1?Q?n/uBG/3CAWktSRsc8F5lNPaZLLfrgS90lbaP0BnrJFpRek2Nhz3KfMzGXI?=
 =?iso-8859-1?Q?x3hloNQrDRjlnhRQ1Yl5yYPs0O6qSaKavi6RIoUy97hK1ERZGp+QixSKUL?=
 =?iso-8859-1?Q?t6RkQfFBoYEBVLtA1sdOsP1BjCz+m4kyjecCUHfCjUrwrJIf8iXcO7jZmN?=
 =?iso-8859-1?Q?jG9FYi0FttZEVJ9yLDmNNIaLt1nJ43U=3D?=
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0602MB3549F83AC93A53785DE48677D3FD9VI1PR0602MB3549_"
MIME-Version: 1.0
X-OriginatorOrg: br-automation.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 VI1PR0602MB3549.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 38b6a43b-28bb-4e3d-88b2-08da28f6cf94
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2022 09:09:33.5874
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 372ee9e0-9ce0-4033-a64a-c07073a91ecd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 imaG8ojcYjooaV7Bt2Xk/AGX9S7Jh2zy4WHX2nJrbmD0/jfPb5tFeKooqoKyHylLYTCVAKtjai4lYhkhGK50pvNLk922gBeFWBwIi8kJE2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR06MB6089
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 09:09:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56927

--_000_VI1PR0602MB3549F83AC93A53785DE48677D3FD9VI1PR0602MB3549_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everybody!



We use yocto to build the system for some of our devices. Given we have mul=
tiple use-cases for differing partitions on the device (rescue system; main=
 system in "release" flavor; main system in "development & debug" flavor), =
we use different custom distros for our build.



With this mail we would like to ask the community what the best practice fo=
r our use case are, describe our current approach, and ask whether we can d=
o things in a better way.



The software we use (machine/bsp layer level; software level) in principal =
is the same (same upstream, internal or 3rd party), but we need to build th=
em in different ways (e.g., one uses system V init, one uses systemd init; =
one uses optimized-non-logging versions of the software, another ships debu=
g symbols and enables logging during buildtime; one installs and enables va=
rious systemd units, another doesn't, etc.).



Our solution to this problem is that we have (three) different distros, and=
 use distro overrides to enable/disable/patch/append/delete various bits an=
d pieces throughout the otherwise shared recipes. The "problem" with this i=
s that we need to use different build environments to build our three distr=
os, i.e., we cannot re-use otherwise identical packages. We were wondering =
whether it would be possible to use three images instead, and build the rec=
ipes in differing ways depending on the image. The "cleanest" way we could =
think of to do this would be to use recipe.inc files for the basic setup of=
 each recipe, and recipe-X.bb, recipe-Y.bb, recipe-Z.bb that customize the =
build for the various use cases. This works fine for recipes that we contro=
l, but we stumble over customizing re-used recipes from lower layers that w=
ay. For example take dropbear; we might want to enable or disable it by def=
ault depending on the use case; and build with or without systemd integrati=
on. We can't find a clean way to extend the recipe in the upper layer with,=
 say, dropbear-sysv.bb, dropbear-systemd-disabled.bb, dropbear-systemd-enab=
led.bb because then we don't extend the underlying dropbear.bb; if we requi=
re/include the underlying recipe, we have a different $PN and now the FILES=
(EXTRA)PATH won't resolve properly (and all $PN overrides in dropbear.inc d=
on't apply). If we force the original $PN, now we're building the "same" pa=
ckage three times..



Once more, we do have a working solution for this (use different build dire=
ctories and different distros) that enable re-use of the base recipes (we u=
se .bbappends to customize lower-layer recipes with OVERRIDEs in that scena=
rio) and were mostly wondering whether there's a /c?leaner/ approach with m=
ore (CPU-cycle, harddisk space and package DB) re-use.



Thanks in advance for any input & Best regards,

Martin Weber
Research & Development - Embedded Software Engineer

B&R Industrial Automation GmbH, B&R Stra=DFe 1, 5142 Eggelsberg, Austria, w=
ww.br-automation.com<http://www.br-automation.com/>
Phone +43 7748 6586 - 0


--_000_VI1PR0602MB3549F83AC93A53785DE48677D3FD9VI1PR0602MB3549_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;}
p.xmsonormal, li.xmsonormal, div.xmsonormal
	{mso-style-name:x_msonormal;
	margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
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
<body lang=3D"DE-AT" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"xmsonormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif">Hi everybody!</span><span lang=3D"EN-=
US"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif">&nbsp;</span><span lang=3D"EN-US"><o:=
p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif">We use yocto to build the system for =
some of our devices. Given we have multiple use-cases for differing partiti=
ons on the device (rescue system; main system in
 &#8220;release&#8221; flavor; main system in &#8220;development &amp; debu=
g&#8221; flavor), we use different custom distros for our build.</span><spa=
n lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif">With this mail we would like to ask t=
he community what the best practice for our use case are, describe our curr=
ent approach, and ask whether we can do things in
 a better way.</span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif">The software we use (machine/bsp laye=
r level; software level) in principal is the same (same upstream, internal =
or 3<sup>rd</sup> party), but we need to build them
 in different ways (e.g., one uses system V init, one uses systemd init; on=
e uses optimized-non-logging versions of the software, another ships debug =
symbols and enables logging during buildtime; one installs and enables vari=
ous systemd units, another doesn&#8217;t,
 etc.).</span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif">&nbsp;</span><span lang=3D"EN-US"><o:=
p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif">Our solution to this problem is that =
we have (three) different distros, and use distro overrides to enable/disab=
le/patch/append/delete various bits and pieces throughout
 the otherwise shared recipes. The &#8220;problem&#8221; with this is that =
we need to use different build environments to build our three distros, i.e=
., we cannot re-use otherwise identical packages. We were wondering whether=
 it would be possible to use three images instead,
 and build the recipes in differing ways depending on the image. The &#8220=
;cleanest&#8221; way we could think of to do this would be to use recipe.in=
c files for the basic setup of each recipe, and recipe-X.bb, recipe-Y.bb, r=
ecipe-Z.bb that customize the build for the
 various use cases. This works fine for recipes that we control, but we stu=
mble over customizing re-used recipes from lower layers that way. For examp=
le take dropbear; we might want to enable or disable it by default dependin=
g on the use case; and build with
 or without systemd integration. We can&#8217;t find a clean way to extend =
the recipe in the upper layer with, say, dropbear-sysv.bb, dropbear-systemd=
-disabled.bb, dropbear-systemd-enabled.bb because then we don&#8217;t exten=
d the underlying dropbear.bb; if we require/include
 the underlying recipe, we have a different $PN and now the FILES(EXTRA)PAT=
H won&#8217;t resolve properly (and all $PN overrides in dropbear.inc don&#=
8217;t apply). If we force the original $PN, now we&#8217;re building the &=
#8220;same&#8221; package three times..</span><span lang=3D"EN-US"><o:p></o=
:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif">&nbsp;</span><span lang=3D"EN-US"><o:=
p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif">Once more, we do have a working solut=
ion for this (use different build directories and different distros) that e=
nable re-use of the base recipes (we use .bbappends
 to customize lower-layer recipes with OVERRIDEs in that scenario) and were=
 mostly wondering whether there&#8217;s a /c?leaner/ approach with more (CP=
U-cycle, harddisk space and package DB) re-use.<o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,sans-serif">Thanks in advance for any input &amp;
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:black;border:none windowtext 1.0pt;padding:0cm">B=
est regards,</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fami=
ly:&quot;Arial&quot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black"=
><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:bla=
ck;border:none windowtext 1.0pt;padding:0cm">Martin Weber<br>
</span></b><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:black;border:none windowtext 1.0pt;padding:0cm=
">Research &amp; Development &#8211; Embedded Software Engineer</span><span=
 lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:&quot;Arial&quot;,san=
s-serif;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black"=
><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black;border:none w=
indowtext 1.0pt;padding:0cm">B&amp;R Industrial Automation GmbH</span></b><=
span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;colo=
r:black;border:none windowtext 1.0pt;padding:0cm">,<b>
</b>B&amp;R Stra=DFe 1, 5142 Eggelsberg, Austria, </span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;=
color:black"><a href=3D"http://www.br-automation.com/" title=3D"http://www.=
br-automation.com"><span lang=3D"DE-AT" style=3D"font-size:9.0pt;font-famil=
y:&quot;Arial&quot;,sans-serif;color:black;border:none windowtext 1.0pt;pad=
ding:0cm">www.br-automation.com</span></a></span><u><span style=3D"font-siz=
e:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black;border:none wi=
ndowtext 1.0pt;padding:0cm"><br>
</span></u><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,san=
s-serif;color:black;border:none windowtext 1.0pt;padding:0cm">Phone +43 774=
8 6586 - 0</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&qu=
ot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_VI1PR0602MB3549F83AC93A53785DE48677D3FD9VI1PR0602MB3549_--

