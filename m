Return-Path: <martin.leduc@luminator.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36F0BECAAA1
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 15:13:18 +0000 (UTC)
Received: from mx1.luminator.com (mx1.luminator.com [178.15.153.4])
 by mx.groups.io with SMTP id smtpd.web10.339.1662477195878727129
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 08:13:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@luminator.com header.s=luminator header.b=q6/D+AYN;
 spf=pass (domain: luminator.com, ip: 178.15.153.4,
 mailfrom: prvs=024876b414=martin.leduc@luminator.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luminator.com; s=luminator; h=MIME-Version:Content-Type:Message-ID:Date:
	Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JT8sby2qDsLJYwThqapjReV1kgMuMZd79J7nNMIs0yM=; b=q6/D+AYN8IxEohfKAI4xcV8heu
	WWUk/8G0zSXPAxDMOdL9UjpYP4tLz3jQ3PiudYfYlBxOZiai+AZO/U1IojMnwAUTogNRw3PG6YgMV
	R4/3Wv8RLinzX/wyPxmQ4WHEM2F/IJruhq64VBWJQJoIPcFgQtu/oEtAkjr2JMHCN8Vc28YFBmKrN
	nqL9xcKpZ0nJnSTLEqkEoWaBgT9JJx/vRpgD6ETkzv0FBR3e/85PPyvHW9dRHq1k1+uqF4QJmNcJk
	NDcpnPq5uaCalmta0g0G7EOZHPYbp4WJS+PquyaSBio8wtZqB8U+gTeRsBCKGumsg4rTNnDahm7py
	pGdR+TXQ==;
X-SASI-Hits: BODYTEXTH_SIZE_10000_LESS 0.000000,
	BODYTEXTH_SIZE_3000_MORE 0.000000, BODYTEXTP_SIZE_3000_LESS 0.000000,
	BODY_SIZE_5000_5999 0.000000, BODY_SIZE_7000_LESS 0.000000,
	HREF_LABEL_TEXT_ONLY 0.000000, HTML_70_90 0.100000, NO_FUR_HEADER 0.000000,
	NO_URI_HTTPS 0.000000, OUTBOUND 0.000000, OUTBOUND_SOPHOS 0.000000,
	SINGLE_URI_IN_BODY 0.000000, __ANY_URI 0.000000,
	__ARCAUTH_DKIM_PASSED 0.000000, __ARCAUTH_DMARC_PASSED 0.000000,
	__ARCAUTH_PASSED 0.000000, __ARC_SEAL_MICROSOFT 0.000000,
	__ARC_SIGNATURE_MICROSOFT 0.000000, __BODY_TEXT_X4 0.000000,
	__BULK_NEGATE 0.000000, __BUSINESS_SIGNATURE 0.000000,
	__CP_URI_IN_BODY 0.000000, __CT 0.000000, __CTYPE_HAS_BOUNDARY 0.000000,
	__CTYPE_MULTIPART 0.000000, __CTYPE_MULTIPART_ALT 0.000000,
	__DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000,
	__FUR_RDNS_SOPHOS 0.000000, __HAS_FROM 0.000000, __HAS_HTML 0.000000,
	__HAS_MSGID 0.000000, __HAS_X_FF_ASR 0.000000, __HAS_X_FF_ASR_CAT 0.000000,
	__HAS_X_FF_ASR_SFV 0.000000, __HREF_LABEL_TEXT 0.000000,
	__HREF_LABEL_URI 0.000000, __HTML_AHREF_TAG 0.000000,
	__HTML_HREF_TAG_X2 0.000000, __HTML_TAG_DIV 0.000000,
	__INVOICE_MULTILINGUAL 0.000000, __MIME_HTML 0.000000,
	__MIME_TEXT_H 0.000000, __MIME_TEXT_H1 0.000000, __MIME_TEXT_H2 0.000000,
	__MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_TEXT_P2 0.000000,
	__MIME_VERSION 0.000000, __MULTIPLE_URI_TEXT 0.000000,
	__OUTBOUND_SOPHOS_FUR 0.000000, __OUTBOUND_SOPHOS_FUR_IP 0.000000,
	__OUTBOUND_SOPHOS_FUR_RDNS 0.000000, __PHISH_SPEAR_TEAM 0.000000,
	__SANE_MSGID 0.000000, __SINGLE_URI_MPART_BOTH 0.000000,
	__STYLE_RATWARE_NEG 0.000000, __STYLE_TAG 0.000000,
	__TAG_EXISTS_HTML 0.000000, __TO_MALFORMED_2 0.000000, __TO_NAME 0.000000,
	__TO_NO_NAME 0.000000, __URI_ENDS_IN_SLASH 0.000000, __URI_IN_BODY 0.000000,
	__URI_MAILTO 0.000000, __URI_NOT_IMG 0.000000, __URI_NO_PATH 0.000000,
	__URI_NS 0.000000, __URI_WITHOUT_PATH 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
	__X_FF_ASR_SFV_NSPM 0.000000
X-SASI-Probability: 7%
X-SASI-RCODE: 200
X-SASI-Version: Antispam-Engine: 4.1.4, AntispamData: 2022.9.6.144218
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l24Fk+mpqTpQcn3tdS7ahk3nl3LOeXk1fB/KVVLjBjQSrC+17MikSBEbt/VUYtTWBbMivpJb+7/4OA7oDnrRTHVHezVkdbsmecth0PxYPoftzKoYXIAfGY1vkZsT5xKsZZhsUyC4uTR3vcTI2050ivWr7n9wc3JIYQMP2YIaeTrbBRezZulwWUrN86E1B/memouTYB1JzThge3LAYi+TZuCe4PwH+gvE5WuZ+aZ9NTGiC4jSQJCYhSgeMYkWxuv5c7UVLCPfGucZlyZ4sIOPHFzSUjGOt6fco1HmQKrBx0/yYq16jhTwIdRh5vMGV9BtdEq9okWvP4NA2xuDwMj4YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JT8sby2qDsLJYwThqapjReV1kgMuMZd79J7nNMIs0yM=;
 b=DZ0rcbY6YJdNX7ROpyiL++GXuzQtD0AvVcRPcSrFZCZ0clF+N/0V9lGXG56C11fAThKW+wqWQjlySWNOz7uxT6jpmejE0KvxnnpUTHqW/luvjP8RHvGom/C6YM98YvuD04TwIuTr/WobXpG6RAU/A1jGEAQUmabISPiU4ysGgYBX4w3PlJLlW6D8LryxEY/CwPRBxGZJNk+NWZ12GwD5MruWGMohgGbIm5+dHlH69OwGQi59OhsILKQZ0I6R6NuUDMaZzrHJ63z/2PfagqOIrLmPiFpXTMVXB9clRtq6hgZ1h9J9OJjYncBql0EtPeTIecsXHDniHnzZ9XUPFSU7kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=luminator.com; dmarc=pass action=none
 header.from=luminator.com; dkim=pass header.d=luminator.com; arc=none
From: Martin Leduc <martin.leduc@luminator.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: CVE patch application - best way to do it
Thread-Topic: CVE patch application - best way to do it
Thread-Index: AdjCAcgJ7CznMxmkRx2CaU+nNeK8Qw==
Date: Tue, 6 Sep 2022 15:13:06 +0000
Message-ID: 
 <PA4P189MB11834FFADD9D4079A4AC8D09967E9@PA4P189MB1183.EURP189.PROD.OUTLOOK.COM>
Accept-Language: fr-CA, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=luminator.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2bf94c1-d42b-4e07-5ba7-08da901a4d2b
x-ms-traffictypediagnostic: VI1P18901MB0623:EE_
x-onpremisesmanualforward: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 yZiabYKmBm9ZZB/aauJngykLAmKvrd7jYzdc9TguXxZsFTFG7tW0od0OCUSEqc6PpMoGikK9VtkD/S9lYFBpdaZXICvr//uV01iI6tZwwnfLjjIJZyTrw3MArEdEiLqPzhIEqeYg1zrXBfner2EaZBBSwCezB3spsWXq1zvxHEb9IECcrccotct1xqOZyWl5iOpChDhSsOgMcwy7LmVsXfaVvl3NV1lWM4J5vzA/DOyV5zShgHzG9JgIYNqHhqY+vZ3VgRGzr/VJDV2eoKYfVxvCwsMMDjMlN8Jrz6gIDmbujVS19LrZlkMynPbMGASdX7t9mk8YMWU1uc6llgoBjCc8o2LxbUktmvdxCQgyQvG39SJ7l1MzUU5NwBLpbkLO7IymDTioLL5Cyu17i4E95I9F6DaGOin9/Zj82vboKOBycpgatVv83BUj+BpLA/y3i5LAwtuQNz0UXTVZmboGYwb+b2mMo/0BG/H9H2jaKfsa8HzF5EnlyeVSrB0EQtRwOK91pOpZcnL7H/spvWuKd4iQrmuVNoN8h8TVrK7w70lV+p4IZ40Spo37XqPZ/PDUb3qQQuvExtOZp44C3CAqy7nRaT1Ug4l6vFiadEuMXn4I8T15GfwWPS0uvc5joC6pqC99mv+zq+K+Jq+BmUGrFrzcmnfc14EJVA40AZT/GHDWhnckLZIgDtQRawr132nKN6a5fd5Etgj+13HN4dFZEiTUWKT/C8/fAMPNOuaqB2ulqwmgHkyw+AEVuz+jIapgCxUvo4bChQSiozH01qvbT3jIv18gBjITSFKgBuV288aeUdDlmMQjx/Y544mEikmk
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4P189MB1183.EURP189.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(396003)(346002)(39850400004)(366004)(136003)(186003)(83380400001)(55016003)(6506007)(478600001)(41300700001)(86362001)(71200400001)(9686003)(38070700005)(38100700002)(122000001)(166002)(26005)(7696005)(33656002)(40140700001)(6916009)(316002)(44832011)(8936002)(4744005)(2906002)(66556008)(66446008)(66946007)(8676002)(52536014)(64756008)(76116006)(66476007)(5660300002)(43043002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?BYU3TA7+ul50tUlZeA9dwu8k+Wil0mPt9uDwmCvj9xhnq4zFYJSNySwS+tRs?=
 =?us-ascii?Q?u6saV08ob6U1EODUVV116C5dMsx5VE7sEpeWLGQCZsPFft8aC8LFksU34sOb?=
 =?us-ascii?Q?7ov41wc/Ago/nMfGfVpSK9ttIbNGkEFtF1aXovEOG1D8k+Va2020MksMESzG?=
 =?us-ascii?Q?o9NUsuPTdYryAQuvyTqPPmZKPCPd30HY8W2Sdgmz9UE/grfBjtVgtxP+lofi?=
 =?us-ascii?Q?N/JX2sb+5p9Tf10Gb2958jgJELq8cZtnQWjTgfRjCow+DavITOM8yv2z3lP+?=
 =?us-ascii?Q?WfPSRd1AzCoq1LwGocuKJGf8I2vzpkubNxuaG/KhGJEnY8qUmuA91MlqrycZ?=
 =?us-ascii?Q?2KgWc3+9rNtd/h4o99U2rT2kXmkr/4ckalvaaqXpD5QDGjXyGy0h26AahyL4?=
 =?us-ascii?Q?hNEyZwt+6sILHtmz2AAPFMiBl9lQKC/v6+pG5JUWC2+fsxB6Msm66p6p7eYo?=
 =?us-ascii?Q?5FmgiO5XRmiNOQSMaDcCaQF9kw5xGp/p9BAbqXLo0HzJJqOHC0yCg89hLOIv?=
 =?us-ascii?Q?V6+a6gTm1dgo1BjtF3L8zPk5XUWrDCZ+CJC2Ecf61ppBqRev46By6Bt6U1Rs?=
 =?us-ascii?Q?8lHA+4DjXBj8nxrTBC0i2JYf14CNci2594FiQINQnqkzuAxm3BfjlXfama7p?=
 =?us-ascii?Q?ntxh8qHwQRGUNWa/dw1M7EG1GW5BeNOic5LgMSx8cMaG8L0mU9nn9M8Q5Feg?=
 =?us-ascii?Q?lWCh3XPr+ihZhDQzU1AQu27SEQbPgy1Kxhrp/pn/oLkpyNK+2qHbLHpjfd45?=
 =?us-ascii?Q?9O1Gn86EuOAvlkowDqkzUVHpL5A8rAm4GiD8sj/ImAKjGJ5xK0E/WK8ir53l?=
 =?us-ascii?Q?Wo/O2i01G3NQHzPsB7JoCZvrw8AQuC5Rd54IyIV7oQjaEemgVWoNWdnsj9Fn?=
 =?us-ascii?Q?tw5b5n6z9rtudcvCqlSrGQzn51Wg/IR9quTOqaXeL5OPPD5aBVcLnuHRo1PS?=
 =?us-ascii?Q?HxVlyiDl6bZS3HjvX/eQMDUoP6KQ9R0EO2958n9xu4i/CyGzQqRVVKiJLeXR?=
 =?us-ascii?Q?0dh9nbgU9BoZWqsNyn+NRsH9OB6SgFoH5Qxsp+zFlu6Ewm5Gseq+2xLpnmr0?=
 =?us-ascii?Q?86qpPwhx0aRaKzrKXuIczKhXodMgjT6z1a/uC3ck6/pU6A/bo9PDT6cw1PFX?=
 =?us-ascii?Q?6hwChjZHCKjaoU4DeKsL8XiD0TPMPNDDk15TDwBaYpoZVwtyA1TrnZN/I4OO?=
 =?us-ascii?Q?lS8qkbOhrsLlmCCyMgmFYD4ldTv5tapQKwXa+duoHSHFBnkY63XY/+W9lM+X?=
 =?us-ascii?Q?6a2ff6F9nvwQh+uEWBm9Nv40Ayl1JOsY8Z7vkXP4L1R1ios+mOZobPS/eNgi?=
 =?us-ascii?Q?yc8/1JdAqOMBOpFAkIystjjfPX84qVAvEopXRoK7JOVkoD2QP2+Rr8aQk/e+?=
 =?us-ascii?Q?0ZDaMW6zaqcp2AHJT+W4g6z1+biZ2qqQUbyqCh5BB5QG+UkfxstVVZZ74Scv?=
 =?us-ascii?Q?Ob1d/yDXnEVA38HfCuvNh+LcNLt9XGYOciGNCFba3jUQYsZIBh0zx8V4+Xe8?=
 =?us-ascii?Q?h4pAngimOjGaL1OfIg7iyRPbsFNOK1uL2XpuvLJTjMp/B8n8e1Ub6r8wDj4m?=
 =?us-ascii?Q?svtmzssEJVxImGOXsSCKVcJAHXvS+jLz+PYHcUPbI1vffXPCyx9PamNXQRpJ?=
 =?us-ascii?Q?7Q=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PA4P189MB11834FFADD9D4079A4AC8D09967E9PA4P189MB1183EURP_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4P189MB1183.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e2bf94c1-d42b-4e07-5ba7-08da901a4d2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 15:13:06.4426
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 41cde0b0-5383-4af5-89ba-5c7361af3a57
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 zKAjbHsaNOHBS4peDahOwYHMU7Rjtxw1A1AXvpcvqTv8QO8gSr8HIspyxSezWJaINmkG3g4sY+JEo6vbXajwFEAAxNz5QpC+d73KKnYWVdQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P18901MB0623
X-C2ProcessedOrg: 0aa505bc-c280-44a3-bf0b-cfdbed55e239
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 15:13:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57995

--_000_PA4P189MB11834FFADD9D4079A4AC8D09967E9PA4P189MB1183EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi team,

With respect to the feature "CVE_CHECK" provided by Yocto, what is the best=
 approach to deploy the patches reported by the CVE?

It's definitely not a good approach to patch using a blind approach but onc=
e we've defined the required CVE, does Yocto can do the updates based on a =
definition?

I've read the content of the cve-check.bbclass without founding the appropr=
iate way to do it.

If I forgot to read a section in the Mega-Manual per example, please let me=
 know and I will read it.

Thank you,


Martin Leduc
Superviseur logiciel platforme, Rail
Luminator Technology Group
T : 1 418 856-6896
martin.leduc@luminator.com<mailto:martin.leduc@axiontech.ca>
www.luminator.com<http://www.luminator.com/>


--_000_PA4P189MB11834FFADD9D4079A4AC8D09967E9PA4P189MB1183EURP_
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR-CA" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi team,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">With respect to the feature &#8=
220;CVE_CHECK&#8221; provided by Yocto, what is the best approach to deploy=
 the patches reported by the CVE?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">It&#8217;s definitely not a goo=
d approach to patch using a blind approach but once we&#8217;ve defined the=
 required CVE, does Yocto can do the updates based on a definition?<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">I&#8217;ve read the content of =
the cve-check.bbclass without founding the appropriate way to do it.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">If I forgot to read a section i=
n the Mega-Manual per example, please let me know and I will read it.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">Thank you,<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA">Martin Le=
duc<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA">Superviseur =
logiciel platforme, Rail<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-CA" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:F=
R-CA">Luminator Technology Group<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-C=
A">T&nbsp;: 1&nbsp;418 856-6896<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA"><a href=3D"m=
ailto:martin.leduc@axiontech.ca"><span lang=3D"EN-CA" style=3D"color:#0563C=
1">martin.leduc@luminator.com</span></a></span><span lang=3D"EN-CA" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#636466=
;mso-fareast-language:FR-CA"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-CA"><a href=3D"h=
ttp://www.luminator.com/"><span style=3D"color:#0563C1">www.luminator.com</=
span></a><b><o:p></o:p></b></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PA4P189MB11834FFADD9D4079A4AC8D09967E9PA4P189MB1183EURP_--

