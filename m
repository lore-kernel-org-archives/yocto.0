Return-Path: <kbeal@eclipticenterprises.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DD3C0219B
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 21:25:18 +0000 (UTC)
Received: from USG02-CY1-obe.outbound.protection.office365.us (USG02-CY1-obe.outbound.protection.office365.us [23.103.209.89])
 by mx.groups.io with SMTP id smtpd.web11.5306.1739309107797788380
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 13:25:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@eclipticenterprises.com header.s=selector2 header.b=QEANjsMU;
 spf=pass (domain: eclipticenterprises.com, ip: 23.103.209.89, mailfrom: kbeal@eclipticenterprises.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=AoIYSZqtvpwRnIBihkBvciHJJcQmvVxRPnLd0OvnGTRTIFVjEHkQZFNfWlGUseSdlWH/tNuV8XkJwtHSfaTnmroHxbTOO+omDdA/qXJFZvqpgB9JVf282JndBr8VP8te3dkQOJZ3VQruTkiTDON5LukKtcFNymqox4Tq9qWF/7M7KlS9SvWITILvk/ra6eXLBPoYKwaHvCSd32WzEYPnFOaISfjGKwiHWOzL/DAjiedkbUkxsiaG9+A3cKgrIq81Es8g9bXYSdsBsavPTzh4PFO6IZAmi32lS9Ga4SuBM9CyBkz6iknVXnQJn/0MZfYKyFVWCT0rA8GRP0ZhLbX+Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YtH6GLO0gnSjL/MlEURNOmM9jwnuhQVV6qZj+bUnbgE=;
 b=HTHb3yKGtUSA8t0rCHDMe67YDpTK96L7xVOPNeZNGD05An+h6SmsnelkOsoSzgGLCNAb1amt88050Cuvk0x7aso9bHdplv+3ZgaK8lg8h4qe3F8YCuJkDJx7qWdtsHjUbPYU6PF37Q3BzQvQytPsGXwu5zQMzO8TnEokavSMoG9Gyps9I2NHtHl7hrAkbZfPzPvKoSl6a15N9VZYnLnIEbgoiwDR93EoGToOCvb7Bga0ZMMUy+h3zojRmAz5iLQHJAIZ5eBqs9Y9AJ1T09WE5NMFgTN+ArWkDKjeki+UBcCZGuht+q4cJvcrQMMFSUeaXqUamuigEv37X4PfIZiVzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eclipticenterprises.com; dmarc=pass action=none
 header.from=eclipticenterprises.com; dkim=pass
 header.d=eclipticenterprises.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eclipticenterprises.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YtH6GLO0gnSjL/MlEURNOmM9jwnuhQVV6qZj+bUnbgE=;
 b=QEANjsMUg+numlFTCEiq91aofKFUXq/XX7DOmfpepPY2oNVyr/iSrSLQA8weJyKdeklz9Iym0hXpXPH6Vejm5xQtzTEmv5Lx99cVytuFxhiq31lsjP9oFe29wo6J0TbkSGW6g8bGCNbaxCdtLflScK9ePBlflFrCKRdxdPXHF3fFzEOW68YBoZOspdDbMg/dvpSSJJVBCxk9s27cckvXuhzzegaHUjFetgPnKJFHgQ5O6Fgwcd4T+3fyizrxZ4J5FNc2WNxvuNHIrzM52xNv/jEqJuyHkysi0unx1Vmzl1gyZzrt62MyvnD+sgCsx/PtAQ6p1e1kvr52vxkz+0X/Hw==
Received: from BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1a2::22)
 by BN0P110MB1625.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:184::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Tue, 11 Feb
 2025 21:25:03 +0000
Received: from BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
 ([fe80::68f:3f99:c7fd:88ac]) by BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
 ([fe80::68f:3f99:c7fd:88ac%5]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 21:25:03 +0000
From: "Keith Beal [US]" <kbeal@eclipticenterprises.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"skandigraun@gmail.com" <skandigraun@gmail.com>, "r@cmss.com" <r@cmss.com>
Subject: Re: [yocto] Installing pre-built DEB files
Thread-Topic: [yocto] Installing pre-built DEB files
Thread-Index: AQHbfJ+oxNGF4EpkyUqbW6Grw/LpGrNCVQ8AgAAG3QCAABSFT4AAAcQAgAAq2ew=
Date: Tue, 11 Feb 2025 21:25:02 +0000
Message-ID: 
 <BN0P110MB1915F8C78DD787DD18600698BFFDA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
References: <leMn.1739290302619551038.wlRL@lists.yoctoproject.org>
 <3a8c9af1-8b3c-426d-8ddb-038981c5e561@gmail.com>
 <CANNYZj8VvtKSDnCn0SVAj7LZeVzeOeKqh4y_2hcKti+TegnfSg@mail.gmail.com>
 <BN0P110MB1915274A58DA1480641F1059BFFDA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
 <CANNYZj_Wpqc=DTEOa=3930F=Rn5fqUR4WWpgjpW_EkMfhyCkgQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_Wpqc=DTEOa=3930F=Rn5fqUR4WWpgjpW_EkMfhyCkgQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eclipticenterprises.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1915:EE_|BN0P110MB1625:EE_
x-ms-office365-filtering-correlation-id: b8e401ce-cffa-4bf1-4c3a-08dd4ae28c12
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|366016|1800799024|38070700018|7053199007|8096899003;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?QAfLusGjbyGzTI6VjPYz+vnPk3zqBzkuFRgPNP+7nYh8YlfD/tKaJFvgLRAu?=
 =?us-ascii?Q?CGZlKJkHQ5zariQdQja5ElgFZloxxPog3D4U/dv/27b/7X4fNDeqhlFU+WmK?=
 =?us-ascii?Q?A1Yy0Bm19l//MR97E8A4VOJyzIoIOtNIXamvgBrghpuTAIdENe/yZtSq1I1X?=
 =?us-ascii?Q?6wEexe5/Em3FAsxM/yLUWlMb1lI5fND7oq8s1/KH67FprR+KGyJ2Nz8uxg01?=
 =?us-ascii?Q?fLBOCffzSIKZjsjX+A/hEmflV6XNtQ+VIEKctDKxK1vzHkkaBEUow7BSJh8B?=
 =?us-ascii?Q?Nx6wbOqQd/0M/V4fRKYxYSrVrTHVF50YYjVBpsqj3r8Zd1iv8mvYxOowBBB2?=
 =?us-ascii?Q?esNGxpN4O+AJCTA0oygkpRBAZPQHLyf4o9hfC9pM+LrstaTP1Ly/A+h0oxTF?=
 =?us-ascii?Q?RGJewWfeirlzprqpT7r8+GFH8pWeWfOzRDH8/hecJeSsqJY4R3n1jtBbGdZV?=
 =?us-ascii?Q?TyD1KzpZurnjl+J1weARS0Xm4myUsKniRfEmxV3BZ8cvUnjNdiS+P3ru3HQ0?=
 =?us-ascii?Q?tUfgqymK9EznJoUM7PJGTV+Kep/xepPq3ZItlFi3lI65Gwt8Z1G4JniOYexS?=
 =?us-ascii?Q?JK3a6AFhyuHuycLfNm+K/uj0o0EkvqWKGZCweW9AGOyJK/5o//UuLiAbxB4W?=
 =?us-ascii?Q?qjpXS3FniUBZApzeW66QZah7eMXBlayKog62uavgK0ZT7r7wyPDnW/WQeFp1?=
 =?us-ascii?Q?9dq2Owp3cBLa189QWb/g91Gg+Vd/tap2wmz7iTQouG0wtKSTpX2twO1jCOjO?=
 =?us-ascii?Q?ZNB0lDm6U6k8V+dStix4Abz8aQcRDiYxK2Jl//Laq5UQsiessouCb3L4UQtP?=
 =?us-ascii?Q?wYT5nN1ESO5YSg1OuJx45mvUsPc4KvIGReFm5R7KVfIlaLPCPMSPAIudk4sz?=
 =?us-ascii?Q?uTcyKvA6FxQfvsW8z2KoXrGq4tNykgds5jyC4sudzBalI4o63urqGP0EjzTD?=
 =?us-ascii?Q?dQ8mCacadVprhqnE9Sz9y2HnM7a7Y5joxVWJbgjG1OJDanlx+dROF+n5yfQy?=
 =?us-ascii?Q?JW928DpNsvFNExQR7Fhxsy+bVdM80tmQfsMj5f4znb2hX9N8jumhdsviD09t?=
 =?us-ascii?Q?HePACqZQs9mDzXRzQM/OaIR4cM0AoVdTNtRLjy/VfxkgZS+iYWJqB4YE3k4u?=
 =?us-ascii?Q?J37fzNl6uKGWBwYgoC4m+m/17xds+Mx4WKscBqQEXJoDwsGplN2SvRzQf8NO?=
 =?us-ascii?Q?4CbMCdK6WzRLdDgO4VWK1JAH3/DX1AXbcPa+QXc4rkn+ZU9ywWHFUbli4/Nd?=
 =?us-ascii?Q?1iOsUf57dSUQtNsKSWpeVq+iENPRRCd5hIXGokHsLxwZ1NHbQjFoaiN2KDfN?=
 =?us-ascii?Q?xvEU4+DTY46Gwyz3XVoCHkKJNhNkUiZgtS+IiFDuvDa6yUzKvs/NMXFzG83l?=
 =?us-ascii?Q?lcNY4N2SaKAlhJ2nDG437Bsnj0kZ4Q//VGN4oLZXCs849z/0pXaB+dMfjkSm?=
 =?us-ascii?Q?2LMi58c3NtIoJdLvv4mDqpGEv6Ff75nZ?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(38070700018)(7053199007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?b2lC/ClRFicDs5cz+gXgQl0vbcTkOT0TY6l+aaGhD+SH1P5vVGw6AV8cxfJF?=
 =?us-ascii?Q?hTnnaqr+7knv6zdd0nelA/oMRLhfmuIp3Jhn4KtAJSkiz8eEJ5A8+khmwrQU?=
 =?us-ascii?Q?ooc/WfY0XbgBCKrHPlWXGAYxjWikZ9ejx9ZT+ZSKR6rRpSyEFXYaKgeE6BMM?=
 =?us-ascii?Q?8Z40n+c8ao5RsNXt9GxMvSDWa+seiyUsP+jGpmxzwd+WaNxBwRcSpKCrMuLe?=
 =?us-ascii?Q?/3Yp55OPx0mIpmYs5MrJ9bwWzORAj2C6DPZPWt+2M9PUzbMW0CjITpDjYc0p?=
 =?us-ascii?Q?7QHKTW5CFoxhhgAnhqQONIQ58UVvCQmo3s7UzwAw/lJUQQAOPmkHhHzWhr7d?=
 =?us-ascii?Q?NB53ovU2nZY22/hsprvIAJJkyBcCqV67JmRwkUVdUYy011nGAxnozTdgwkqQ?=
 =?us-ascii?Q?gwbXq+e3M7NzDddN6pK6jO8QF1A+uqhoIPxNWTnlVUb+Bf5pyq/DasovE7wl?=
 =?us-ascii?Q?qCflQd+tfOBbndglNiFo/t4VNqw+LXBg+1GKXzvuk+gK8L3/AhvSdVh1Wv0H?=
 =?us-ascii?Q?OsfsKG7uJoJ+NG1VExcBFs3ogbnz2cjL5DXXBP8Z/wQlAlT2J02tGgRf/O8e?=
 =?us-ascii?Q?n2aj2wcEinWmCpfKahKKpTWyKT9sgtcf2VumXevRbiIq6IGTE70PancSW5Qm?=
 =?us-ascii?Q?lyTy9RKEfBXxJuuW7wmEIZRmrrMrlt9dMCB5Heb3z85GR9RyaV3f+Fxjasv5?=
 =?us-ascii?Q?lMNcsgHwXOvuN3yxDTrhDU0Lnfpnz6uz5Rt1Bim8DLSN+1boBohsCy0yFGxU?=
 =?us-ascii?Q?nYu5XBhz4DQ/G1Dl1xwgj7L6pxVUfxgfnGdW1yFSmlYd0uq/mckqkKdkFQHm?=
 =?us-ascii?Q?xfzSfofzyKb0jra8dlxcEeIndYdq18gyTM9gSTU045Ye8qDUmGjicXGM50HT?=
 =?us-ascii?Q?EgtLiYXxJCyAtHl9jAdu+EtIzMGcJFoGn67k4cFS3vw2sgT70vUla43XJV+g?=
 =?us-ascii?Q?f2fio+jAkmfFnOeuzPidciyQXKuU1R03OQ4vyNVyM+5liJhewOrnG8KV1S+b?=
 =?us-ascii?Q?hZwZSBdLnBYL21v53dtk9p1+SPdV+ZBAsdQw3ibywDb/AwylYWislm2IlzYi?=
 =?us-ascii?Q?JDgGbCYO9Fx97WJRJycywj4MGNGm1Opl0B0g8XqzkSYnbSEFsJA1Hmlrkrn9?=
 =?us-ascii?Q?XxA7neUgtQUlLwwWtSM/JRPGGH4X1VaTj2+G772SAM8RDLiABqDsKUPDAtTx?=
 =?us-ascii?Q?NNtsqdWbdQvmWG3jM1yFaXEXuIh+szVmss5lr5Q4vxxLfX4/fnQ++7k/dQmc?=
 =?us-ascii?Q?+6tkv9p4DRfoTUjxc/h99wpKC4Qlqx7O+gMqCkJaxE7ZXISRR4gtgNR2oZy8?=
 =?us-ascii?Q?lR7ERIATVDRGfvtljaG7jnuhHpr97BiA7ghEgXhfElR5xLWYCluhIoNXfiND?=
 =?us-ascii?Q?VS1lO05JMbLfkdyxdLEvh11YiFzWiHlPSgK070gcyhM9WbiWoBFP5Qh2OF/X?=
 =?us-ascii?Q?4ryDiOLrPoMtB07f1VNRDiRq1iJwFTf1avWtFXoPljdeam27R2WloQCj7iMw?=
 =?us-ascii?Q?SJGjgQ3irWUWwccnYR0pMxQ4Beoe1WobPEDk?=
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB1915F8C78DD787DD18600698BFFDABN0P110MB1915NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: eclipticenterprises.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b8e401ce-cffa-4bf1-4c3a-08dd4ae28c12
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 21:25:02.9512
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b4f66761-c9e2-4856-9874-b1c6d40ccfea
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1625
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 21:25:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64774

--_000_BN0P110MB1915F8C78DD787DD18600698BFFDABN0P110MB1915NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Alex,

Thank you very much.
I should have figured I wasn't the only one who needs those in Yocto.
The Debian libparted-dev package has header files, how do I get those insta=
lled?

Keith
________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Tuesday, February 11, 2025 10:49 AM
To: Keith Beal [US] <kbeal@eclipticenterprises.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; skandigrau=
n@gmail.com <skandigraun@gmail.com>; r@cmss.com <r@cmss.com>
Subject: Re: [yocto] Installing pre-built DEB files

[EXTERNAL EMAIL] DO NOT CLICK links or attachments unless you recognize the=
 sender and know the content is safe.

On Tue, 11 Feb 2025 at 19:44, Keith Beal [US]
<kbeal@eclipticenterprises.com> wrote:
>
> I know there is a parted recipe.
> I need the equivalent of the Ubuntu package libprated-dev.
> This is the library and header files for using the functions used by part=
ed.

The parted recipe builds and packages libparted as well, it's just all
placed together into one package with the executables (also called
parted). Headers and pkgconfig files are in parted-dev package.

So you can simply use those packages and ignore that they also come
with executables.

Alex


Ecliptic Enterprises Corporation
Space Avionics and Sensor Systems -- Home of RocketCam(tm)
398 W. Washington Blvd, Suite 100
Pasadena, CA 91103
Main number: (626) 798-2436
www.EclipticEnterprises.com

Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent responsible for delivering the message=
 to the intended recipient, you are hereby notified that any dissemination,=
 distribution or copying of this communication is strictly prohibited. This=
 communication may also contain data subject to U.S. export laws. If so, th=
at data is subject to the International Traffic in Arms Regulation (ITAR) a=
nd cannot be disseminated, distributed or copied to foreign nationals, resi=
ding in the U.S. or abroad, absent the express prior approval of the U.S. D=
epartment of State. If you have received this communication in error, pleas=
e notify the sender by reply e-mail and destroy the e-mail message and any =
physical copies made of the communication. Thank you

--_000_BN0P110MB1915F8C78DD787DD18600698BFFDABN0P110MB1915NAMP_
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
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Alex,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Thank you very much.<br>
I should have figured I wasn't the only one who needs those in Yocto.<br>
The Debian libparted-dev package has header files, how do I get those insta=
lled?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Keith</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Alexander Kanavin &lt=
;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, February 11, 2025 10:49 AM<br>
<b>To:</b> Keith Beal [US] &lt;kbeal@eclipticenterprises.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; skandigraun@gmail.com &lt;skandigraun@gmail.com&gt;; r@cmss.com &lt;r@cm=
ss.com&gt;<br>
<b>Subject:</b> Re: [yocto] Installing pre-built DEB files</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">[EXTERNAL EMAIL] DO NOT CLICK links or attachments=
 unless you recognize the sender and know the content is safe.<br>
<br>
On Tue, 11 Feb 2025 at 19:44, Keith Beal [US]<br>
&lt;kbeal@eclipticenterprises.com&gt; wrote:<br>
&gt;<br>
&gt; I know there is a parted recipe.<br>
&gt; I need the equivalent of the Ubuntu package libprated-dev.<br>
&gt; This is the library and header files for using the functions used by p=
arted.<br>
<br>
The parted recipe builds and packages libparted as well, it's just all<br>
placed together into one package with the executables (also called<br>
parted). Headers and pkgconfig files are in parted-dev package.<br>
<br>
So you can simply use those packages and ignore that they also come<br>
with executables.<br>
<br>
Alex<br>
</div>
</span></font></div>
<br>
<br>
Ecliptic Enterprises Corporation <br>
Space Avionics and Sensor Systems -- Home of RocketCam&#8482; <br>
398 W. Washington Blvd, Suite 100 <br>
Pasadena, CA 91103 <br>
Main number: (626) 798-2436 <br>
www.EclipticEnterprises.com <br>
<br>
Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent
 responsible for delivering the message to the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this com=
munication is strictly prohibited. This communication may also contain data=
 subject to U.S. export laws. If
 so, that data is subject to the International Traffic in Arms Regulation (=
ITAR) and cannot be disseminated, distributed or copied to foreign national=
s, residing in the U.S. or abroad, absent the express prior approval of the=
 U.S. Department of State. If you
 have received this communication in error, please notify the sender by rep=
ly e-mail and destroy the e-mail message and any physical copies made of th=
e communication. Thank you
</body>
</html>

--_000_BN0P110MB1915F8C78DD787DD18600698BFFDABN0P110MB1915NAMP_--

