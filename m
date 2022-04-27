Return-Path: <Heinz.Wrobel@nxp.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19630C433F5
	for <webhook@archiver.kernel.org>; Wed, 27 Apr 2022 12:14:20 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.73])
 by mx.groups.io with SMTP id smtpd.web08.7463.1651061655360351471
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Apr 2022 05:14:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nxp.com header.s=selector2 header.b=imxibVnY;
 spf=pass (domain: nxp.com, ip: 40.107.6.73, mailfrom: heinz.wrobel@nxp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qkj14SZYfAoAPayZbWKKmLStcLRBHO1tWliRGCjhu7Hd7o59A3/vQ9EHPIOS7m1ktHtprsF9PPXVSgtI/kbh2mvQX86Ze4UxSihWdBPsqRnEGVdAhGZEFNNM4i9WyUlyWeTv2byT+LEY7DhdqGxFEj+4luPIlTsIVPWc20AaPIdiYVZh0bIC8qN/ORf/Rm6dfSkcdfk2fpKQKXDHJsE9xUMG7K05E7GdN7NnyHNTjD7VNl/7Iny2ONKk0gbjdmtOTdY1c35NnqAMd9mjGMDUx6/UPyBSO+ywHVhuuODrakJ5mvDXKgBTPV3b4MmAiLY2R8Hlu8/rZ7AKSo8g/El3GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gJojKX69y6P7qRXNfrIWCg+vfxrFziw4S3uw0IEciy8=;
 b=bJqqc9YyDb5QwxtqNq6cWU4B41gOAC5vymt7zKaTYuI3rNhsH/AqfxAHsWKN5D7nLIXRWC/idwYlHWSwhHfXXLxAlxx3CDjtOBAqme52pSCY7N2vpWwqTvvcnB0vqpJsb7xa0k/XM95QPnoKabD1QfT4V8NR1dUZxXMSRWBfRs9ldn0e57fOYjBIbvDkvDZ22WcaB2M1ArTcWIBPEnj47beQvHaon6+UzE4CQEDQvEnru1cMD1QKYRXqgB+G224EfYC3iRCPhKQJ1rBAOAl/xHpx8xZ4w6azViOh2OEN4EPh2iKeDL3jkt5t1dqkwHDX6A+AvqYtZHp5u7zI4yjBHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gJojKX69y6P7qRXNfrIWCg+vfxrFziw4S3uw0IEciy8=;
 b=imxibVnY7gi1Snxxz63we4TebqVcMUsbuI5l2itnyc3jXDujzMw45f7VVlpPolWAlhgA1ExzUm4saRkanGcuPW3299DyL0sBkQE7Zn2bYpIg99EL5y7z+EEDU6JuWsQEMYpEGA2mjRUWgRa3bvBdTQOgFdvWCQNyhNHJYIFnrLs=
Received: from AM0PR04MB4388.eurprd04.prod.outlook.com (2603:10a6:208:72::18)
 by AM0PR04MB6996.eurprd04.prod.outlook.com (2603:10a6:208:18b::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.21; Wed, 27 Apr
 2022 12:14:10 +0000
Received: from AM0PR04MB4388.eurprd04.prod.outlook.com
 ([fe80::f0ef:5e88:46bb:8796]) by AM0PR04MB4388.eurprd04.prod.outlook.com
 ([fe80::f0ef:5e88:46bb:8796%7]) with mapi id 15.20.5206.013; Wed, 27 Apr 2022
 12:14:10 +0000
From: Heinz Wrobel <heinz.wrobel@nxp.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Is inheriting a bbclass multiple times well defined?
Thread-Topic: Is inheriting a bbclass multiple times well defined?
Thread-Index: AdhaMAU74lpyLBoMTxWc6BV4VjtX8w==
Date: Wed, 27 Apr 2022 12:14:10 +0000
Message-ID: 
 <AM0PR04MB4388C3754F2527799CC4B68C8CFA9@AM0PR04MB4388.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9eb69c2-b573-4c99-a21e-08da28476fa5
x-ms-traffictypediagnostic: AM0PR04MB6996:EE_
x-microsoft-antispam-prvs: 
 <AM0PR04MB69964E714A241AFA110137888CFA9@AM0PR04MB6996.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Irf4pKS5kh5sZ/ccsBU5ak7p8MNgmS2BgpxNBz6Mt2MvZG8dy7RMhObYdzzc/7gRkLNtz8QN9wy3x+QX4Ow8FTf+6zRQxVYHRHlvlUD/pnK/ytixwFq9XLbXWvMqnt0wWVG7krsSwC5ozL5iGoqZiyHSuZkQLEXYVrRFfMnu1KOwednvfZkXlAP6T6/MD82Mfg/0lSQDgeh1tQqH5HqnBsgCg/N7LCqEjKI9TCvxsaR7qX85tIAZOysu5sEsVGwRtNP6sQ43fo9xwpfh8pnCEMJpulEtc1+DM9i5b9olJo3w0LDrNpBkgbfEhL6k9KgWHHS/uu1/2cirZgbtp5c31ahSda6X4t2JSNTj4eAEAU0+Kf0QNAixL6vD238GIw2Hrzzkhx4MR4UKwFmw0YiVYXVnhnRkGTATPQEdhpZnUzW5yD8Bh5540AZRkSs0yrhFz8viJe4RO8156eU/zmTYMa3XZv1eqprnOIWJ5hYTZSVFw96ZhD/F7ZIZa3kvHJO20HV6pAUjt8aC/rJ2nNa96SAPD6Hn/47SdWUKocQKsLHEFF9FbkX0i/X5ur49yugdPtughD9qusnSFe9wcRiN1UeKKcbs3OzNijMHTlSonzTJcN+1/jUIYBMGXjFJSGxoso5TVc2LkTHXy/X4h21TURkbzehVzSLIf/UmI5OmoLXAeQnCSHLPTNbZGp3VWAgJVVOTLUyXk0I8jeZ4Yp1w6A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB4388.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(2906002)(64756008)(508600001)(71200400001)(4744005)(66556008)(76116006)(66476007)(33656002)(66946007)(122000001)(8936002)(9326002)(52536014)(44832011)(6916009)(9686003)(7696005)(316002)(6506007)(26005)(5660300002)(66446008)(86362001)(55016003)(8676002)(38100700002)(38070700005)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?wccadQGaAzG0tTi9a/1i2OFUF2PqFS43IasR8cJSmdYw+szEKI3J8QOq/9ZV?=
 =?us-ascii?Q?3ubMQsTI/ad1ARZjaDG8PJy+YKZsH7H6zAD4T1aPyvoyRAw/7XIG77HJV8sY?=
 =?us-ascii?Q?Cu/Gf42UXG8Gjuxdxg2LHjeMmd9V7HQ2bl1m/eZEcOOZqAVx7yCHlqrbwPN4?=
 =?us-ascii?Q?+ye6CuCFyZAFWuWithozg5K5kaVyRZb3R6Rxa8UBryPBhSRQz8G3FnHOa30t?=
 =?us-ascii?Q?3uQJddQ2WvcSp5g1vGanit4Le2xIL7hGwRWNvFvsjh1jj1vLfVx1UF6gC9oA?=
 =?us-ascii?Q?6deUGopR3s4e1cXZoZaeAOOhA+VtN/y8DmODGbEVcQgkW4wRshwcwI2NNaR6?=
 =?us-ascii?Q?rv/LRmIDdUCZ1IzTpvCK6JtBmDpLFO1FBKwOY/9Pg4kSOblFW0aRbrVKWat7?=
 =?us-ascii?Q?HxvOaNmM7r1p257ZYmwWx3WbFR2S1Ihlx/eiIO4GtNK2TUF6BQfKjYNoX3NK?=
 =?us-ascii?Q?FxowPmC+ZnzL1+5h25AxsLRSWvSycK/uV5bV5rMfSntzvqQzlsYC1Jspb1WJ?=
 =?us-ascii?Q?EMBklsy8jdmjc1wWhXanIPgLRy2T9UoXYBC/1GgRAvyqZplP84waeap4GnVj?=
 =?us-ascii?Q?xR+Ve9zHWqXokD5nPqSj3PTt+vxJhrOqa9fHW5XgaVYwBFQ4Da3GUs7QgVt6?=
 =?us-ascii?Q?yBpqA8CKObqNJgi+724JxIyKxnV549E52VnQtNWvkvX7Xth5cmxkr1p6wURg?=
 =?us-ascii?Q?1thByVKTAppYRCc3j7+KufCo9uXYBFg8yCGEjwGOQDWeAaIMkSF9OI3oEuqc?=
 =?us-ascii?Q?0oB5A8CBzqm6jYPexmzJk/50mDVt+pEKuiv2zQ6apc9QBFeoM4eGMp0ISpe8?=
 =?us-ascii?Q?r6nxYnZ4Msz38yPL+MITxVcmAegI7TP8Kk6nJaHDWhmljHXwV5i/vhZDU20r?=
 =?us-ascii?Q?o8kBQHJAXR/aF9fmbg1Hls5PyilSup9TtQI890Y6zGou3Fw9qs6/EGzCTL8N?=
 =?us-ascii?Q?qfZTf93pCPC3I6YuHrkGNV+M4OjHIF2j71YxJ82MARPn6LEvb5At27zCAURP?=
 =?us-ascii?Q?Z2iQ9SthkbJ604QDKGDwaKyurO0HxqmlzAtSM4zxkfqZV5Z08QSvkS0tuP0B?=
 =?us-ascii?Q?/vRWtz7A4Qw6u7cT9/kIdAnFwwtyExoR7+j9gvT5dNk+mwcdaXdPnKAWkiZC?=
 =?us-ascii?Q?xtUD+eY7gyNz8EI3Ux3L6vUujMgie7eH6spdzYbQAInPRW6mFelOVLAMCuru?=
 =?us-ascii?Q?lX0zahD8cFjRMysnggWmPNj1zJ3Moqh1k+1//ruX/htAQAxIkIX3bH/CjJK7?=
 =?us-ascii?Q?1BEkQ2SKYueh6N2NBerJom1BUDFMHNPvWH5DdauTxkUrv0brZLC6+dtx58md?=
 =?us-ascii?Q?b7/EqY097TXdnANqJagTQD8hJsdWgeNj2pnZZT4LkUuGCrlUAQRrIFcqL/cC?=
 =?us-ascii?Q?5F5dvqbu5ANSA7pLiuYvAVYH6Lxin5ys9swVpRuMQdr/iLwH+89q8wegGdcP?=
 =?us-ascii?Q?GzNrR9ycGyOVema9LDJHgM7WQmr72fDewoMIg7mUw/KbnGzFjmgvvjiBDMfd?=
 =?us-ascii?Q?1LomFst/Nn25XRaDvQKRVh5188n5TUAQvuPzDaUXkpmsOFUk8mzDDCluUrcS?=
 =?us-ascii?Q?t7xkg40eq5PQPGW3bNYztwotWipm2fvAJPUBOGUSzA5dMBz3/GGB0WOIWmZB?=
 =?us-ascii?Q?u7khm2v2apJLqBVeBYEtK2+ay/Tt51MepiJFB8V2gabHc8HI1wqCG5AMaVIe?=
 =?us-ascii?Q?nPNpdQTVBQUgNSEj/Y36NC/UGJuC7+4JKJ2l0/T0KmNIOF+vs2v1lA1InJVc?=
 =?us-ascii?Q?nHsBNcpwQQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR04MB4388C3754F2527799CC4B68C8CFA9AM0PR04MB4388eurp_"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4388.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b9eb69c2-b573-4c99-a21e-08da28476fa5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2022 12:14:10.6949
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 9ww/zvdZ03JXlCUGDGy6CAO3Ow/Qf/9cPTo5Iq3kT+b4Yyuwf3Xehspmy6oQqglL9AUiT8AQ64kpCSwdaUgR9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6996
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Apr 2022 12:14:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56914

--_000_AM0PR04MB4388C3754F2527799CC4B68C8CFA9AM0PR04MB4388eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

If I "inherit" a bbclass multiple times in a recipe, is the result well def=
ined or is that undefined behavior for bitbake? I couldn't find docs that s=
tate anything about that and the bitbake sources are less then obvious to m=
e.
I'd rather not go empirical if a clear definition of the behavior exists.

Assuming it is well defined, is it harmful to do that, or benign? If ok, wi=
ll, e.g., the first inheritance for a class take hold and the others be ign=
ored?

An example for that situation would be an image recipe that is built from t=
wo includes that each do the same inheritance for different reasons, leadin=
g possibly to repeated inheritance of classes in one recipe.

Thanks,

Heinz

--_000_AM0PR04MB4388C3754F2527799CC4B68C8CFA9AM0PR04MB4388eurp_
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I &#8220;inherit&#8221; a bbclass multiple times =
in a recipe, is the result well defined or is that undefined behavior for b=
itbake? I couldn&#8217;t find docs that state anything about that and the b=
itbake sources are less then obvious to me.<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;d rather not go empirical if a clear definit=
ion of the behavior exists.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Assuming it is well defined, is it harmful to do tha=
t, or benign? If ok, will, e.g., the first inheritance for a class take hol=
d and the others be ignored?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">An example for that situation would be an image reci=
pe that is built from two includes that each do the same inheritance for di=
fferent reasons, leading possibly to repeated inheritance of classes in one=
 recipe.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Heinz<o:p></o:p></p>
</div>
</body>
</html>

--_000_AM0PR04MB4388C3754F2527799CC4B68C8CFA9AM0PR04MB4388eurp_--

