Return-Path: <l.v.d.beek@student.tue.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C56EC433F5
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 11:01:33 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.137])
 by mx.groups.io with SMTP id smtpd.web08.10652.1638961290157826495
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 03:01:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@student.tue.nl header.s=selector1 header.b=jQhc8Eyx;
 spf=pass (domain: student.tue.nl, ip: 40.107.21.137,
 mailfrom: l.v.d.beek@student.tue.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EYc/8vjlxY+c2FMYx7nUIhX+8vDHFQQm9Byp8fC45LvB6bO+ZCPnS+C2Vbq05hANifgHmESGy9MrAA8j49lszSd8ghRAKyGA26BXuiRi2moXNUXGw+cD8E2khku/++oivrsgkaxMv6djsvZu0NXltGH8r8Wx1OCfVibrp+qawMgd53rrGBEiBdqYubptn/X4s23GFQeZLucox3LWlbZMs39qITt050Tg8N+wPhg1OBX8HQyrX3q4qBnbVIaSYEbBmHmd3xdjWeySCi7ON+mVhbbD7K4skDMNxVQtkMGU7dZhn0ksW18WaU8xIbRgQR6+QVtypDmKSYztK1DQ2rwAzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z/DeCvmG1ZqKGJdK+AZKTk/3uU4ifD8F614ymYqCtzY=;
 b=WePR24NFjUrIIvCsUCVrfmVUg6zNujrNuhCiwYeXE4lVdNO8Jr5tcoj6kWz368lTlMXEA0i9V06lSvUJw+lKBH/4VbWQddbhW4w+ymuguzSzuuXwZMnrpcTYyrwmiGUwAGpTxd74ZeMxOF+KojSVVg03OadFsglZ9n8aDmOt2+th7WXytMrUnER9omg4BG564xUbOZjrqIZ0d5RAMy44XhDGlfc9ibSEqPxX0oTfWNQRiFfh2aNkYW69gCiScvrTNpLOlu6FU5lGmXtmWLoz31r0DYjGVXSQUkYonZwdrJ7i6kT34+H3umbFcUSK6v8LJPCAz+kU4KiCeRt+XK+gBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=student.tue.nl; dmarc=pass action=none
 header.from=student.tue.nl; dkim=pass header.d=student.tue.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=student.tue.nl;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z/DeCvmG1ZqKGJdK+AZKTk/3uU4ifD8F614ymYqCtzY=;
 b=jQhc8EyxBwpLnJaHmlYbAvBRONMOh5i2SW1bEahYccKQz3WNipXvJUHHbtmcx3lw+B2+2cA0ixFsY6cRG5MD+ualWS4NH8IbI+5qIAsysJPNQ6qWYPW6oUpvXy5oEVfPi3TbVVeznpGCSgANK5ugcNfWNRJuGFLRXZcLIZP85CCo7OeG4h+7MCHmnb752rAiR8tZ3+uh7e0h8RUQw0H07+zcHlyvtHTBwsYbvJiXWFJ8waA6rSy43X1V8VdkXeK7hlEYAEx/IGJHzTP4cwSFq2+3zPHt0veCbauVPLVY9Ge0OQSs+czUOAqQw+qRykyvwXcPEt0cY0/IKhA6gNkz2A==
Received: from AM0PR09MB4148.eurprd09.prod.outlook.com (2603:10a6:208:1a0::22)
 by AM9PR09MB4963.eurprd09.prod.outlook.com (2603:10a6:20b:303::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11; Wed, 8 Dec
 2021 11:01:26 +0000
Received: from AM0PR09MB4148.eurprd09.prod.outlook.com
 ([fe80::3138:623c:2402:11f5]) by AM0PR09MB4148.eurprd09.prod.outlook.com
 ([fe80::3138:623c:2402:11f5%7]) with mapi id 15.20.4755.024; Wed, 8 Dec 2021
 11:01:26 +0000
From: =?iso-8859-1?Q?Beek=2C_L=E9on_van_de?= <l.v.d.beek@student.tue.nl>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-raspberrypi] Changing rootfstype to squashfs
Thread-Topic: [meta-raspberrypi] Changing rootfstype to squashfs
Thread-Index: AdfsIfHbnkVEzW3cS1ez3zpqXEIFlg==
Date: Wed, 8 Dec 2021 11:01:26 +0000
Message-ID: 
 <AM0PR09MB4148A6CC45FAA097DB5B592CAC6F9@AM0PR09MB4148.eurprd09.prod.outlook.com>
Accept-Language: nl-NL, en-US
Content-Language: nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 226f23bf-073a-4f5c-ccc4-08d9ba3a14a4
x-ms-traffictypediagnostic: AM9PR09MB4963:EE_
x-microsoft-antispam-prvs: 
 <AM9PR09MB49630647B76E6401C0E16197AC6F9@AM9PR09MB4963.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3futyaczcrA3SSLVPWkLt0GavHLVreNnwW2Ke6rAlHwuKaWy42nD06Syvj4NxKP2YlmOk9P/g5OYR8XuP1J0J1SDyKa7sKYLRtqUzPXePHisgezQI7smNoa0pyb+NYmmHeJe3JSVGq7Jn8oIyB+S0Oj6WUtHRcHu0HV52lOYtUGRGXdJS0LmBFe12NNz3IeI14VPRpgY7Jckk4IX3WiXdJpRY8JJ4AnEgUJfQmXeHl6sUkZMhDn2mBjNvrftpKvNyrKUvC2ZfxRQoIzhH7zBos6fb1tiQvq+9FZbbTm3a7IE3c2UV8ADxOqaZgXQqsP0Brri1xmPh9EA5/wL8kW+w8UeZ/lLgOpyfjzW+2sokWyzKAvYTLeVu2qmO42aAUuckgcYptyqs2SlTqo0mG0VB2siCJnjbpl91l+h43Vdx9YGkBHOxmGB9n2P/i15F8idiOs0AQhMOQ+5Zf4VK+s2ii8q93D1JnYisWGTRHQqYM2ED0fdxpNSE/xKqzkHNu4qRNGQkupsO0nkkLWkviBeQaRu6Gyn2MXfGeh58xhtT0SZ1J21W+WlbJMbYychTvjGIr1VTPYRaChlka/h2xtceq5sp34bttoY4ufrmiqexKuBpO3ON1qE1wfYudkuljXFBnueptAXXzKqNKbgamcvoW7Kepvfd8mHV60B/tfJqAoPtK/ik36TxqnSQbxCsd63I/n8VNZTeT1eWSu4VYWsxw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR09MB4148.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(33656002)(8676002)(38070700005)(76116006)(83380400001)(66946007)(71200400001)(66476007)(64756008)(66556008)(5660300002)(7696005)(66446008)(786003)(86362001)(2906002)(6916009)(55016003)(186003)(8936002)(316002)(52536014)(122000001)(66574015)(9686003)(38100700002)(26005)(6506007)(508600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?jK9tjFkGMEbuBDE0X4CCxaIPPc30I4vXvP1uPwcE1bGmh/T/hWlgPNaQhF?=
 =?iso-8859-1?Q?faOBdp1mkjMxO/fuMnAeAzLNuDGoCAJoOMl4IZWAMhKoxvxm76RIMRgVp1?=
 =?iso-8859-1?Q?35HYHcf1tmhNsM6KCvV8SyYafe7KgcBStI+YMqBf7QAGbLTabdewk/PGgN?=
 =?iso-8859-1?Q?9ygvYppNo/4HuqfFVv7JmF6c4fGRaB195GEPc8RKcqacaKNSOXhdMMO8R9?=
 =?iso-8859-1?Q?8bF3iJ3KqL6W8dhgrdiAI2/co8nPOsVOqvQoYFv7U1S36h7a2WPIePKa2c?=
 =?iso-8859-1?Q?4CSuzkeInh38rcPj/eLLkHiyLMt6X5Wi2sNfBJ+4tEyRG6pmUuk7AdUcdt?=
 =?iso-8859-1?Q?4HSurQMm8dMXPXLmPVTI6jsw7kpENNZYGe9hRrZt98JRP5NCAlEcl61b2E?=
 =?iso-8859-1?Q?WBcGUKnft51oTK9cSDoFoqw8dvdM22D+easIYrJ0sYQXi5XWSXAa68s52+?=
 =?iso-8859-1?Q?Cj4le+0uMKg/oajdd/l9LTE7LU5VvdheSF5KBkD49nouSjYs0TFZfQl8kX?=
 =?iso-8859-1?Q?d00PEoSI3KStOiyvdUWv7mk6z6hHMFw0XiBsalfN48hkng5PjJihon3gos?=
 =?iso-8859-1?Q?aqKLUhuyvlIlKsFiiVP8XnVzuURUgmEdKA0zwVJoE8YO6A7vO2LHR5dpZn?=
 =?iso-8859-1?Q?gPP0xHCxe+E0XK5GKVh8auomtzvNVJTiMkpen3ikIBibJpPZLNBej/lBh1?=
 =?iso-8859-1?Q?nz9fPHk2TyBb3K1G28rjsXzsBqdaYyyZUQzTjulYkp9SAFZpj+MoHY0WKj?=
 =?iso-8859-1?Q?xRnoXvP+K6OkhpqULnDFie5pg6+L4vX1FiB96lzjbLBm4piHOJfcQcw1p8?=
 =?iso-8859-1?Q?IKNRsypMBZHZiFqSGmq3IFOi6uYbhY4XLWsg9dkhbKfrMN6o5lYBhxlsR6?=
 =?iso-8859-1?Q?7sDhObhLDQ2o8xogJlmIm/TiPtnoK5mE9UZIjHY9kIX6Oq8rUZ2ADonKHO?=
 =?iso-8859-1?Q?tFhpk7ypYTk6OiRSJ4EJCosyDApPX/GivGenBB9BFepSDxt93AoSbd0/Cw?=
 =?iso-8859-1?Q?SDHSbIPtmfqhR7DuDpnvI8GKRjV6E7mNpU23Yq9FbEuhwzjmHH3JoXELpr?=
 =?iso-8859-1?Q?1qYtlOLetl23cZcJoPoKxhqDFQ1IQ/z/TGwWCKKlpzqxdV6UdtaxhKtxTI?=
 =?iso-8859-1?Q?Da6UBedwdZ2GY+FfZVFwj0V0MSnDeT8ylIFqS9gYUTDWdreWhRxTmLNWvD?=
 =?iso-8859-1?Q?hsjLnh5C4DbhKJM9lLuUfQ4UM/IeI0+TlgcQ+qhdxu9mU08ozmALlanJ3y?=
 =?iso-8859-1?Q?H8iadKRN8d0LJbaewx1xZkipczR4iu1aXwjfanw47Gu5KJ2n1ZeKHD1Azh?=
 =?iso-8859-1?Q?UeVg0eARzCwUAiIkxG+2p8CuxlFWnQYPiOuCfrDNcLkCYwqsCMk4N/QESd?=
 =?iso-8859-1?Q?SWZErx6EwRkOTsbRZdOaSGAIXkZ+T4xYRwVKDXl9T/BKiFm2HNt3o+X9Jz?=
 =?iso-8859-1?Q?Mg+W9vfdBvC8sfr81m+LVJcRPvlC/lKEz2+RDFZ/QV8lE6jgLi6sEFJzpD?=
 =?iso-8859-1?Q?9jkdfLPKIGdZFVVxGPuqObZM6jFeykLldHdDKNfevGsuLV4k1Rm/GECc0J?=
 =?iso-8859-1?Q?iS9ldjwqFXiIZpIkdScvqjzIT0WTysStciYxDIVGKb3c3TO9e0mcignXbY?=
 =?iso-8859-1?Q?Xfa7Fso+9GwieX7/7vS9K+ddbyyrzb20kGhdo4mfdH32d5dBvnNcBbCb6x?=
 =?iso-8859-1?Q?6L0XMawgf3HVKtUHvWEvaNH7TC00nkY/K/Aes9/LDBAqUX0jNjBFhM4iZg?=
 =?iso-8859-1?Q?Ldfw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR09MB4148A6CC45FAA097DB5B592CAC6F9AM0PR09MB4148eurp_"
MIME-Version: 1.0
X-OriginatorOrg: student.tue.nl
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR09MB4148.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 226f23bf-073a-4f5c-ccc4-08d9ba3a14a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 11:01:26.6332
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cc7df247-60ce-4a0f-9d75-704cf60efc64
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 CQFAmghju1WWTcakLW88L6pqWCIzvumA2Y9i0rkC3HpUyY88wAmbmX/QWzX2HS22lIRs1YGOjZdna1OzdfSMcejK1dSfcFfxTSHD6SG915s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR09MB4963
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 11:01:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55516

--_000_AM0PR09MB4148A6CC45FAA097DB5B592CAC6F9AM0PR09MB4148eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

My goal is to have a squashfs rootfstype and ext4 data partition that get c=
ombined in an overlayfs and switched to the root during boot.
I managed to get the overlayfs and switching of root working thanks to meta=
-readonly-rootfs and some changes locally, but only with 2 ext4 partitions =
and not with a squashfs partition.
I changed the rootfs to squash fs by changing the following 2 things:

  *   Change to --fstype=3Dsquashfs in .wks file
  *   Change IMAGE_FSTYPE to "squashfs wic.bz2" although I believe this is =
only necessary to get a .squashfs rootfs file

Please note I am running the image on a raspberrypi3-64, and I also noticed=
 that the cmdline.txt still had rootfstype=3Dext4, but after changing this =
to squashfs I got a kernel panic with error:
"Not syncing: vfs: Unable to mount root fs on unknown-blick(179,6)"
Which I believe means in this case that the kernel module for Squashfs is n=
ot loaded? Could someone help me out how to load this module or point out s=
omething else I am missing?

Kind regards,
L=E9on

--_000_AM0PR09MB4148A6CC45FAA097DB5B592CAC6F9AM0PR09MB4148eurp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:788822615;
	mso-list-type:hybrid;
	mso-list-template-ids:2117263022 138848008 68354051 68354053 68354049 6835=
4051 68354053 68354049 68354051 68354053;}
@list l0:level1
	{mso-level-start-at:2;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NL" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My goal is to have a squashfs r=
ootfstype and ext4 data partition that get combined in an overlayfs and swi=
tched to the root during boot.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I managed to get the overlayfs =
and switching of root working thanks to meta-readonly-rootfs and some chang=
es locally, but only with 2 ext4 partitions and not with a squashfs partiti=
on.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I changed the rootfs to squash =
fs by changing the following 2 things:<o:p></o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">Change to --fstype=3Dsquashfs in .wks file<o:p><=
/o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-left:0cm;ms=
o-list:l0 level1 lfo1"><span lang=3D"EN-US">Change IMAGE_FSTYPE to &#8220;s=
quashfs wic.bz2&#8221; although I believe this is only necessary to get a .=
squashfs rootfs file<o:p></o:p></span></li></ul>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Please note I am running the im=
age on a raspberrypi3-64, and I also noticed that the cmdline.txt still had=
 rootfstype=3Dext4, but after changing this to squashfs I got a kernel pani=
c with error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8220;Not syncing: vfs: Unable=
 to mount root fs on unknown-blick(179,6)&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Which I believe means in this c=
ase that the kernel module for Squashfs is not loaded? Could someone help m=
e out how to load this module or point out something else I am missing?<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kind regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">L=E9on<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_AM0PR09MB4148A6CC45FAA097DB5B592CAC6F9AM0PR09MB4148eurp_--

