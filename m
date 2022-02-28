Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AF49C433FE
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 12:45:46 +0000 (UTC)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.56])
 by mx.groups.io with SMTP id smtpd.web12.19195.1646052342850854288
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 04:45:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=c3a0gD7a;
 spf=pass (domain: optimeas.de, ip: 40.107.3.56,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WY+rnk0/PD0MJGuDhOXo2bGBbt++irLGQWlzdpiaMHny4FRQIwD7rJQeRIQ9Y1zoEIv5Q/FtN1MaJRjVkb9pqcTj7mcMYyQtF0YeCVT2bp+76Jk3p4iOzEooMYhaP7EhWBgPpzNQLaRLM0wa/cfJaFczKCoca+xPR3XIzQyJTN1DIPbQioM4hAH4N6QyHkztaWJoQa+I6bb7C/ZL1fYvOnLteuMUJ6g1Uf10DOWfmfNrSYOk3HtMXgyx9nLsjsTECwgjPYxGunM8SdVtxz3k1PWYOlZJQPTfm69XitmUFR0212zTygO25b77MC16TNn6n9k2RoluCUQwG7Wrax2fBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ki8KaRF3akQoQOydYuci+2oHFcXnGEL7OdUY6ffm8W0=;
 b=UYP6bvyJq91a330BBaUFwL+zhwJLJktDmmHIw26Z7zDbmoEtWLdIuBZRyVmg4Y/9lf9BrLKa/rBsUGUHZipwVwhOknd3KbPzlA2uIbuj0QsXsCB6hdQhAN+14msEm+LfJdVZEhx+yXoCaFSpwQ1rsqo4JENVDTvxxC6et2VK4yZGTMf9JE+HUTqY68OXiFTkD837YCkiXGxCmZRbhYJGgsPRvMSAD+uzSZ0Z6UGUWc+Blwy6cVYyLduGl6kCIE/qjxQwXBvt0QPJTlkNtB90/catpHq5k2cIzVZ4U95+d52MUyo1vij3pKyrIVwdu3uk8jDRQfWDrQO108lOHSbO6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ki8KaRF3akQoQOydYuci+2oHFcXnGEL7OdUY6ffm8W0=;
 b=c3a0gD7aBl7p2NyOG+qV1PpBYjyGAQ+CMGR/lBXIqGiJFKRxvZPSndJDvLmQl4MlQSDli9qqJfMmY7VLHfd0hCcy5y96vDPBV2f+SEXr6H2n3+udOBWiENNSBsHa3O3H4tLtHRyyVGdW1teZPYA/m4HfXPjWksBt4LWpEUhcF2c=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by PAXPR10MB4765.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:155::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Mon, 28 Feb
 2022 12:45:38 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::79bd:e9ef:d96c:6731%6]) with mapi id 15.20.5017.026; Mon, 28 Feb 2022
 12:45:38 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: python3-smbus no longer builds - Does anyone have an idea?
Thread-Topic: python3-smbus no longer builds - Does anyone have an idea?
Thread-Index: AdgsoDxwz5nPM39dSs+Z5RVAclHBUQ==
Date: Mon, 28 Feb 2022 12:45:38 +0000
Message-ID: 
 <AM0PR10MB31073672E30DE783EABE13FE99019@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6fc10f1e-c9ef-48cf-4148-08d9fab83914
x-ms-traffictypediagnostic: PAXPR10MB4765:EE_
x-microsoft-antispam-prvs: 
 <PAXPR10MB47656305C515EF4A723D845E99019@PAXPR10MB4765.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 mnLBvJgwEP7bcNrHGijg0WYbeFHd8c5qAe7cbOYtHbfZHvuq5gZXkoDc0B7QNzU0j9T0tGTD9HZKBDVQ1q/qBJ8c48LCL+q2IoDt6mMntM4ZE45eC8vA0x6cn8EEH0hY7K1KHK1nbMo4lvZ3PTzvmtIb232GTUQADCo3unN7NDsOz9QYWhSk0l0txJhHg2Ciz2N8Y2LvysW9FYd9bSW4V/efrq6LGcSNrHHn1i1iWuqID2AmoGqGlAINawOixlNY3EwQlDYxXzzcLV2GGHB9VCa01kaEIlF5vpJXAkivzX0jWjEd9Lnx7s8BL0mhD65/tB6zVgS6CsPk8SVSw6odrM+WtyUUoA/orE6GsglhNexEEUvqtOR4sYW8rbr28UsSAlmv7rDhkYCPqJ8eUTAwPZWfKzLk9oIDozfx/qDbkxhL3lJY4DsSulW2fW0yfms9h1y3jXuOw5O77DuECUquhtNNpxDLR/DZDhG39qE9xq05peDH0Hw0vrvJpBt+hgAHlEiC0ZnmkC/Vz87RE0IGRujJEVLNLby7NF5gQgMKqgEWwq5kdcxLMPdK3MbM3UHulFPCZcGv4ImkpfQz0Ss8rmeiyCN+ktLi4ue/EqtO+OXv0BEpXf6QCEkMC0g80pZUDiOVMd4xfdK+OEw0q9ATsE8JQ2aLA05TAdctdx7UlZ7FpoBX8naMLhmrnT+1QNPRsW2ZtC78YHP5VvV9xKcRrA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(39830400003)(346002)(396003)(136003)(376002)(366004)(55016003)(71200400001)(7696005)(508600001)(9686003)(186003)(83380400001)(558084003)(316002)(122000001)(38070700005)(19627235002)(8676002)(76116006)(66946007)(66446008)(66556008)(66476007)(64756008)(6916009)(38100700002)(8936002)(52536014)(5660300002)(2906002)(44832011)(33656002)(86362001)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?cHq+Y39e9MZI0vwCUoB3A9jPjOuqVhrJSJvDMCDG7snm9N3gVurITSpyvF4R?=
 =?us-ascii?Q?RKoN1MFWrDB/t1iIAp4ux13kffV7D6IaPG5pz2g8jZxP+QMqy0osrlDiDQPi?=
 =?us-ascii?Q?TZTlbjgfZqIb9+MGviLAlESmxEp8PgYQV/aLbT2ub+KNzGOFBOpRtWEQkTMa?=
 =?us-ascii?Q?vsQQ6N9Gp2KSoMkz26GOg18zHbs2pLOOagU2B+NUT5T4/Lz79+tVrsehtO66?=
 =?us-ascii?Q?H/OiGLbPQznh+7ZfALhT5uH73a0lC0wWNwBpBIqIAsUWqlrQ3C+2FlBR1jX9?=
 =?us-ascii?Q?oRlAlRbM0MtQ5PRoeGzMK1j3Td4q/ZRLIMdIf9676m/CU16KUBLpdNmvYIMX?=
 =?us-ascii?Q?5hi2c+Fk7fRS2gy0kLNcAB6U+W8gdsczXkhq7ZDsROLXT44WWYMbcxUy0GT1?=
 =?us-ascii?Q?R6Qhlrx4HQcBdPaw74tRdgxGNuu3Dmz8yM4M3x5FvPYms8n3GsCfBuV7Hbtu?=
 =?us-ascii?Q?CB0JYkCl/qV2YO+6034V69OmG0VRxI4tnSiCTRloBnhfXm4H3ZiIcEKEqtSq?=
 =?us-ascii?Q?YvIuPhslbxKNAmjUoli4ZrvLqo4SPaKiLA6bC7WRxJDqmyZ55RsjJ/GeVEjg?=
 =?us-ascii?Q?XEmAt1Ap9ZNo2/ChBDYxmNUqwtndk2l9JEC39M4zVGVpSWBQ4YoxFgBM2mig?=
 =?us-ascii?Q?rkwLb+VQWuGJ53RyHdfL+NB6sfqe4bSle+WF51nGa/jHd5aHcaP/edxxSD2Z?=
 =?us-ascii?Q?I+RYluQyVnuDWsf09D2Mqj20eUPDFYQXk4tvFkymJUPx07iUzeUSceb48q0Z?=
 =?us-ascii?Q?NVfrozIA2tyzMQp70ktKBWZEK2UQb7coqduEH4yURoPWTbUmSqGriCflP2Mh?=
 =?us-ascii?Q?YWjwoScCY+9cvQlT6/NEtadtdxoE15H/aaCj0x4vCgpeC2F+xIJSDjIZ4iFk?=
 =?us-ascii?Q?arGPcw04ePhrExdFbKxYEdy8o65VkCX1Oc97Pz1nwNfk3gFwQ14vKKGEFkQ0?=
 =?us-ascii?Q?nYT8qAA8HlUvuCMySiGPebQcEwgUObfxSm9U39ionAxYx2DAPj9zJfMkgWuA?=
 =?us-ascii?Q?Bflkvn+ZOpRTVz4piVqh+pMtckGMB3waIm7ed70nVCx0JxjKpNcHkfFoN82S?=
 =?us-ascii?Q?G03OPjTOWvDaOrwM1qunlfCNdyRrBZjAIJagbcpekApY0W3LpG3ZNFDXtakO?=
 =?us-ascii?Q?/5YQbTGDbmckpswsnBkguzPyVqjgP7Cxz7191iQvKNima2ig2TX0m2lbfp8D?=
 =?us-ascii?Q?c3jMhP5dMz2WmwnlmPo3zlDItNd/NPzL11Guj/v/8jQB/d9vtB1P6X+GJPnZ?=
 =?us-ascii?Q?3hGUcxxdrkHs1ygxE9wJOnERY3fKqRzBn1oxpEUpmTBB+IqVtjYnRfE+NerO?=
 =?us-ascii?Q?d8zmQN+jGEaFAjUXSgiASQVOAHWK1nit8zlce79jsBjRFSkigg5+BxTlNior?=
 =?us-ascii?Q?mSe9QJehMvLOo2V+Guuu1nxerq9A4bCrzdPajKAJa/6pQORBN01FGzlS4vhe?=
 =?us-ascii?Q?UkLv4gbc7nGm7+CFv3kFvmtDdaaKDYQZRGQ9yWLawjPKEBk/cpEnlVVBxSkv?=
 =?us-ascii?Q?yndKsLFJJeqTn4SD9+hGBFdDBgAf/DOItsfK913dlSlZFIy9WnujAqhtQRIy?=
 =?us-ascii?Q?I7wdfAUGrAwrY30mxDEzH0+TIMUdOcedgi3+KRL8O0wDz96k9XFsGUlbIOx6?=
 =?us-ascii?Q?H/AtdWz+p8P5OPdqsUYAuMqk6/TYe2GJhcJ8ve0X0VX5ngzivl/Nmdg/U5JM?=
 =?us-ascii?Q?adn36v2SWbp+FfIASlZLoDKPqLPRddSLpQxldallx2Sd9uhzbbt2+YivGZ1N?=
 =?us-ascii?Q?8+ABAw/lpQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR10MB31073672E30DE783EABE13FE99019AM0PR10MB3107EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6fc10f1e-c9ef-48cf-4148-08d9fab83914
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2022 12:45:38.7409
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 YkhLn/4BGOCRivKzRxKDg0eTE3L337lElniBghWQIkNHmqgBgzL9sLNJGO2xwaG67pBAm17amQmpv+1dgd5ZpuxmLiMYvkjYzY5PBoV7slg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR10MB4765
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 12:45:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56310

--_000_AM0PR10MB31073672E30DE783EABE13FE99019AM0PR10MB3107EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

the python3-smbus package no longer builds.

The install step ends with the following error message:
ERROR: python3_smbus-4.3-*.whl is not a valid wheel filename.

Does anyone have an idea what is the cause?

Many greetings,
Matthias


--_000_AM0PR10MB31073672E30DE783EABE13FE99019AM0PR10MB3107EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">the python3-smbus package no longer builds.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The install step ends with the following error messa=
ge: <o:p>
</o:p></p>
<p class=3D"MsoNormal">ERROR: python3_smbus-4.3-*.whl is not a valid wheel =
filename.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does anyone have an idea what is the cause?<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Many greetings,<o:p></o:p></p>
<p class=3D"MsoNormal">Matthias<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM0PR10MB31073672E30DE783EABE13FE99019AM0PR10MB3107EURP_--

