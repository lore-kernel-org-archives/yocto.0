Return-Path: <l.v.d.beek@student.tue.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C81EC433F5
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 09:26:10 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.138])
 by mx.groups.io with SMTP id smtpd.web08.9947.1638955568467423860
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 01:26:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@student.tue.nl header.s=selector1 header.b=DLgLxaWi;
 spf=pass (domain: student.tue.nl, ip: 40.107.6.138,
 mailfrom: l.v.d.beek@student.tue.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eh50zcDsj5ltXKTNRPLddS9ZvXEZO4SlfJZ3I6MpDH+3UEw40pqN2WY5AbsFgA3ntb6EDzMZkEVUt/VjAQtIdkx4g0hx1SmiGVsDGhMFr4Ujn+U6K1uxwXH6+uLQ+WeFO7raiFh99e0GhnriusOdqmCHnDbnilinoFJa2edsnCjjLLEwkTVj1GNU3FWNyR+tdp8q+cv81JVV38P/7meAsVBCK78I4bBHlhC7t4QoTHvA7rd8MwzgC0sUy+6FrmmLMcJ4j/JC4r5vYws5nbhR1YQlOmVzbGQRDHRg6JZSXW0edQI59C7s57Ra2d5NTA09gOdpMX+YtQQ9f4ohJ9Ci9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lDYjpxxWNNQh7TN2t2Zw7nrPxXsQnMVulzFJdI2vkJ8=;
 b=TUCFrXtbjy0CWQ/96A0Tb0vW69fvlsSMG9taV2Mws2RnAe5+gURG0yLWU8f6TkCKKufXMp+uk71WJwphjA4d/6MS/5tFR8Eojh5lS73JdFZARgPISSBfw3hnfWrPeSr9M/CWLwf6l88qmZfI9hig8lHqHLhJDetHXaBGGqJKg5jNwgkUMMsZPOC1GULSoC3PUIU3IpkzJtujWBhtLBH+jkvRQccYKNp1SDzQgEKb1NmFbonQKLYq3+a1ez0KbFk/8AqyI2MxpStBZt3BevpMUPHnQ83BOtdvUEr6cr7HjPAjDUhx1ZEv2kLARnN+a//FPbqj6YG62Wtuy6KBdLfajA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=student.tue.nl; dmarc=pass action=none
 header.from=student.tue.nl; dkim=pass header.d=student.tue.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=student.tue.nl;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lDYjpxxWNNQh7TN2t2Zw7nrPxXsQnMVulzFJdI2vkJ8=;
 b=DLgLxaWiAOUhzNhjsfMJ7U16pZj4kcejJrwCIiUmW3AfihBeTbkxE5aChsYzsAAUMEH/7ePf7zaEEh9OGRlRIruUuTHY2J/EvUR3yaMeZ+oiECX1jZvOO09vzAKwe8GGIOrMXQBtk4o81O042BxtB185ugc45Yi71AT+44hWXWW+f7eFcxrFS0v6TlFYmOiga/gsjk8O2O7+OUzC5yolY6NdlClxUPhvzpc9wnyTYMqVZY87Z4K3N5d5NtrRahsa9QBgfG2EohpDaI5z/l2oQaOkN/3keNWogwIQnF2uDV+4B815t9XkHDLUugTTsvIkuV6Iua2StR8NzUQsi5OCRw==
Received: from AM0PR09MB4148.eurprd09.prod.outlook.com (2603:10a6:208:1a0::22)
 by AM9PR09MB4707.eurprd09.prod.outlook.com (2603:10a6:20b:2d9::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.12; Wed, 8 Dec
 2021 09:26:05 +0000
Received: from AM0PR09MB4148.eurprd09.prod.outlook.com
 ([fe80::3138:623c:2402:11f5]) by AM0PR09MB4148.eurprd09.prod.outlook.com
 ([fe80::3138:623c:2402:11f5%7]) with mapi id 15.20.4755.024; Wed, 8 Dec 2021
 09:26:05 +0000
From: =?iso-8859-1?Q?Beek=2C_L=E9on_van_de?= <l.v.d.beek@student.tue.nl>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Behaviour of .bbappend when default script is not present
Thread-Topic: Behaviour of .bbappend when default script is not present
Thread-Index: AdfsFZ/mhYHEJfBeRsWTh/S+gGeY3g==
Date: Wed, 8 Dec 2021 09:26:05 +0000
Message-ID: 
 <AM0PR09MB41483E0204895E44F51AE10BAC6F9@AM0PR09MB4148.eurprd09.prod.outlook.com>
Accept-Language: nl-NL, en-US
Content-Language: nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d1733db-ea45-4af4-fdd5-08d9ba2cc2d0
x-ms-traffictypediagnostic: AM9PR09MB4707:EE_
x-microsoft-antispam-prvs: 
 <AM9PR09MB4707729DA2839C528FB04080AC6F9@AM9PR09MB4707.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 XItKPbZK6THsgcefNcPuFXcnEDJ8dZwl1ndASq2pNdVmjrQLk1WE3sesIGj/DnzNc4U7eY05vVT5d76yZmsLZJ/HdojBSEwEvldrP7QkxxPn2TRoZI8VZEMl7LiNK7okRDLFiyqTYsqrLs02fPB6Dx2uLUs/7Sz1c7DpMz5dPyUDAdef/q5ezhfmgUwXbWT6gpBvnIuKT04lyV/UDA+86c8sJgkDU/5TZcowiTGnnkmboAv3jKydbMasGanWTeRCfsc+CmoLoThYUhu/shS0/CjZwNFXCsZhidAtJWfC2zO62vD7KZ19XCBz2ZhiwaHHoWtSUYKTWrg2pFsOCqS7ArqajryS3EeXAF38HzjSxDvEkVMSZEOzBua1mhpZtEilD5pnko6SCY+pZMnNfMBKIZ7x34P6BHp8tkmogNGWaxMvcRxh4WHux6/XCdZF3toOB/g4U3DbnoemWW27i71fHs6LirhigjMuQfnl4m57T+S0bdSI3QEtQyYEaIS5kHZ5my5Gbif3sisIo5Ojc/mY4RgnSBSOQ4g0e3vsx/Z1N71kTTOrlWk/8zTAhq4tDL5ngOZ2/2Lwq9o7V6m4tg1I0kn+4E1xcImvcNY5QR7OBPBO931rRJ5xYgARurYv9RHVmLUcXp7xscYeU0yG7680z18P00jKkOyz3458mZdnJUror1odlGKSHUSPtvQcIa1FLOzyzb/Cj6iVJLDoYypDiIPy7hEeLxOPkIPCK539EuI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR09MB4148.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2906002)(122000001)(8936002)(8676002)(52536014)(7696005)(6916009)(83380400001)(38100700002)(316002)(786003)(26005)(5660300002)(186003)(66556008)(66446008)(6506007)(508600001)(9686003)(66946007)(71200400001)(76116006)(66476007)(64756008)(38070700005)(66574015)(33656002)(55016003)(86362001)(142923001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?sWgNhCGPjdLoJ9UdzBXl3WNdJgdS8YfUAtMSZNrxx7RA5UC6jYfpY8xqPk?=
 =?iso-8859-1?Q?5Ccyt+k5QG40+RfkNpZbIVv7VbJZx16ssEMWrE6xRPbwuTqzxpEmfLV5lo?=
 =?iso-8859-1?Q?0ePAnbH7risEZMQIAAOT/wSNahJ+IqxCNEY6sImlL/Tzl9hTRTkdOm4m7t?=
 =?iso-8859-1?Q?UO52ocGyUbhnqZfTSp7DXiUk6fCeAdeufl7U6vDRg4ZAkj3KtfGq7yEqbM?=
 =?iso-8859-1?Q?uKf2uunNyZFSvC5sR8xqGwWtDBRAEwQ0y5SRwqvN+Y25LSMdlieMmwF8fE?=
 =?iso-8859-1?Q?LpqlhLN84G6q5JvAI+1noahUGtslkyB1M32/5VTqAAKYbsx0/UuubT8mfH?=
 =?iso-8859-1?Q?1djCd8fts3sPCTQ+m6MLM6oC5wmjT3eeA7Kkm1tH89ympvCxCy9WhLBA4l?=
 =?iso-8859-1?Q?6YbwkYtr2Noci4l7D8/yuWfPSvjGDb8DDMSyC3GaeZqCGnlPFj1In8m+Ui?=
 =?iso-8859-1?Q?8Je3LmisqbG26m/lqIHG+KgYGCZGjrPKs2c+zTWln5DydRk0rErX64LIJV?=
 =?iso-8859-1?Q?otl1+uaj3jcxSg3Ycfd0aW8mmVEj4FluEbn822jhRvGvC/dQ5mwQIZCzbS?=
 =?iso-8859-1?Q?dah/os3X9MDIpoReyjBlUYnIqZ/jpvjyueQP3xhVotVc8nMVQqwiU5SNwn?=
 =?iso-8859-1?Q?2u/K/xKbTdi+qyZPyTpXj6TvPi8kHsDLIwyCAM4SIInzQaHWKDYkdHwWYC?=
 =?iso-8859-1?Q?avDHrkDPatf/6Cftnr1WH1Qhn5+rVuiSSH1JrawzwQ9tMTTIKqiV7rMW9c?=
 =?iso-8859-1?Q?1SGHpqgkOiIGjfcGwfqL0iQk6/Ao4VSXudMRi/9lrS9m2h5MbDRtvBjfoB?=
 =?iso-8859-1?Q?aQhbFCP1P3SJYyWJ6X8TFSKtmfgDN+eZ0VUTL/rt2x4cROdOW1Ejq8YKVQ?=
 =?iso-8859-1?Q?U1eKU8XD6RZX8gfK1WwfDY2q0wD/uzJub9lN+WAM2tDlJAxh94UZrwxtcC?=
 =?iso-8859-1?Q?ABa9jGD3omtYr12MezP/s8B7nBWbaZcYrhwpga5vlYP68NZCzOU04rm8y+?=
 =?iso-8859-1?Q?x/SeoZbsWvbgClvBbk1UBez4yRKxWQv8aAgDu6u64/DsEleB1UZ1D4iAJU?=
 =?iso-8859-1?Q?j5MVDn/+ivNqNIcEzpbHF6wchJ497XEX5g/N6DoXgcr2JL7vlOqYshYYdt?=
 =?iso-8859-1?Q?mVTeZ2/qWTFcOGGfrMphPBfsroxPfMny+Uvp9LP5/nBdAbvrBlvwuji4vK?=
 =?iso-8859-1?Q?oW6jSHQni/CMrk8QrQTJq03HCZ22Tc7POQLBnJFkBInSMwgE5mG7PMGv5d?=
 =?iso-8859-1?Q?mTGWU42n0+j/YAw4XDpY0FyCONOHqLXbgfZOvw93FGYXyw+DJo3dwllwXE?=
 =?iso-8859-1?Q?QDtWzy6sAc1Z/pSV8jMafCWKAzsIvzBSqf3jtLOWGs9yWHplELOauQWnvX?=
 =?iso-8859-1?Q?9P6u/m+oGJZtIejNBQvMdGwvr2ajh3YsB9IzrhC1wGLKYCRS4i8ZZPVNwG?=
 =?iso-8859-1?Q?KywrlMSy+1lHZ+Bw1lelIarq5XtfBEVHxlrXKKUSx7gZWF4mYFa2rqEg1U?=
 =?iso-8859-1?Q?7SzH+396xfesPbFqI1brUH1IwzvvsbZRA+/9a6z2fJ+ljKEHYktSW3EJuO?=
 =?iso-8859-1?Q?EBm7fWsrosHQqTxBbykIy/Xx5NyI+HmWBkopfwtLyiodkkko00TPEJDAQb?=
 =?iso-8859-1?Q?pV+uG3wvNXVDQFltxollWMm7VzwshRQOiDq5LHJG2mRuZiPpu7dUP8kEQ1?=
 =?iso-8859-1?Q?caM1ScqQuKgeIuY/qX4ouseSK+2KL2X5AKBU3f1d94l7ihMj4POpCBnmsU?=
 =?iso-8859-1?Q?fiCg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR09MB41483E0204895E44F51AE10BAC6F9AM0PR09MB4148eurp_"
MIME-Version: 1.0
X-OriginatorOrg: student.tue.nl
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR09MB4148.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 7d1733db-ea45-4af4-fdd5-08d9ba2cc2d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 09:26:05.8722
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cc7df247-60ce-4a0f-9d75-704cf60efc64
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 eY58q5jI1kQndHWfitA3M0uJiH4ldwHKhQnTjToSRhqPVf/RBYKq5P0aOkjdENTVIHyDoGAq+QJukGDf9fX+YfP+uAn1rBb5S3IIYrdiAiE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR09MB4707
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 09:26:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55513

--_000_AM0PR09MB41483E0204895E44F51AE10BAC6F9AM0PR09MB4148eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

My situation is as follows:


  *   Using Kas container to build and enable easy CI, I have 2 .yaml files=
 creating my 2 builds for 2 different machines: RaspberryPi and Qemu.
  *   Qemu yaml file does not contain meta-raspberrypi repo
  *   Custom distro that extends poky has a script rpi-cmdline.bbappend tha=
t appends script with the same name from meta-raspberrypi
  *   Rpi-cmdline.bbappend is used to simply add 2 kernel commands to cmdli=
ne.txt
  *   Rpi-cmdline.bbappend contains line on top with: COMPATIBLE_MACHINE =
=3D "^rpi$"

When running the Qemu build, Bitbake will say that the default .bb file is =
not present for the rpi-cmdline.bbappend script, which of course is true, b=
ut I don't want to include the meta-raspberrypi repo in my sources for this=
 build as well.
It seems like the "COMPATIBLE_MACHINE =3D "^rpi$"" is only regarded after p=
arsing the script, which still requires the default script to be present.

I've searched the internet but have not found a way of achieving my goal so=
 far, so my question is:
Is there any way of having this .bbappend file present without the default =
.bb file there? Or maybe there is a better solution to add kernel command p=
arameters to cmdline without using this rpi only script?

Thanks in advance.

Kind regards,
L=E9on van de Beek


--_000_AM0PR09MB41483E0204895E44F51AE10BAC6F9AM0PR09MB4148eurp_
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
	{mso-list-id:161357856;
	mso-list-type:hybrid;
	mso-list-template-ids:-993782938 -2144013882 68354051 68354053 68354049 68=
354051 68354053 68354049 68354051 68354053;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">Dear all,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My situation is as follows:<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">Using Kas container to build and enable easy CI,=
 I have 2 .yaml files creating my 2 builds for 2 different machines: Raspbe=
rryPi and Qemu.<o:p></o:p></span></li><li class=3D"MsoListParagraph" style=
=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span lang=3D"EN-US">Qemu yaml=
 file does not contain meta-raspberrypi repo<o:p></o:p></span></li><li clas=
s=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><s=
pan lang=3D"EN-US">Custom distro that extends poky has a script rpi-cmdline=
.bbappend that appends script with the same name from meta-raspberrypi<o:p>=
</o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-left:0cm;m=
so-list:l0 level1 lfo1"><span lang=3D"EN-US">Rpi-cmdline.bbappend is used t=
o simply add 2 kernel commands to cmdline.txt<o:p></o:p></span></li><li cla=
ss=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><=
span lang=3D"EN-US">Rpi-cmdline.bbappend contains line on top with: COMPATI=
BLE_MACHINE =3D &quot;^rpi$&quot;<o:p></o:p></span></li></ul>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When running the Qemu build, Bi=
tbake will say that the default .bb file is not present for the rpi-cmdline=
.bbappend script, which of course is true, but I don&#8217;t want to includ=
e the meta-raspberrypi repo in my sources
 for this build as well.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">It seems like the &#8220;COMPAT=
IBLE_MACHINE =3D &quot;^rpi$&quot;&#8221; is only regarded after parsing th=
e script, which still requires the default script to be present.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;ve searched the interne=
t but have not found a way of achieving my goal so far, so my question is:<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there any way of having this=
 .bbappend file present without the default .bb file there? Or maybe there =
is a better solution to add kernel command parameters to cmdline without us=
ing this rpi only script?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks in advance.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kind regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">L=E9on van de Beek<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM0PR09MB41483E0204895E44F51AE10BAC6F9AM0PR09MB4148eurp_--

