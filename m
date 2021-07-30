Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.139])
 by mx.groups.io with SMTP id smtpd.web10.21046.1627630995359886071
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Jul 2021 00:43:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cwareitservice.onmicrosoft.com header.s=selector2-cwareitservice-onmicrosoft-com header.b=ACtkatEU;
 spf=pass (domain: c-ware.de, ip: 40.107.22.139, mailfrom: christofer.dutz@c-ware.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IUs4I3caTVyBdk2u1TQdkNdE5nZFcoz5gH4/XopIUf+xb9UdnbOPXA5RBNnKyCSz4mH+8NT1mvnDJ+cUM6HhDzduuXwMHOZX2u2iyUsZuo8LAO/me4x5KzOTHjOnPEa8QVU8rx8GI703+vdu2A7oxi/OP9aExHX3RiQ7W0x+HnFdOaxlBegWDZpelEtubALYae6HFLi83zSRAjvNnyz95uhE4Fp7fC4d+/5Rppdf+y5BOeREbbSlkqL79HLSN/Jiuu5uojN9rP/hEtOFa6FRvxhx9I0qMz6ivKDXahH8XMF2iwW2bbEMEXyRbJ9XFLB9HQTkmh/dogp6w0iQcMDyWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGrKqpsl1Be3DVCX4YdbBHsJFKpQGLoenZEyDLSOu1Q=;
 b=XWsaS+R7yPFUsrRdgV9AC4kMukJFLwHc/ajc9XZVXjcw8SXEq3e1RwTszHdS0VPStcTayl5XVlXpOSLJoth2Ea908NkkZ5qWPGSZr/XGck1aSnu++AWWsivD/GytLVjsGMIeG6QdHNNMwAA7aVgBwyX+hoVh1TQm//hI7xGQ3jsj9QMVZixcbEyUHbfoZmaRs+hhbkpZkEBIRz79F6XofQWQqQqI7RQF1eXNeUM2ky6wdjK58wAW/4zU5vVJU0L4JCXheWvTzqv8BwWC6Kmoqn3aD6lSlxh81HSE4fTqM03sNptW4cHJbDaanzbsyWYA1OIRHZypRqThfD5+Ji8U0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=c-ware.de; dmarc=pass action=none header.from=c-ware.de;
 dkim=pass header.d=c-ware.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=CWareITService.onmicrosoft.com; s=selector2-CWareITService-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGrKqpsl1Be3DVCX4YdbBHsJFKpQGLoenZEyDLSOu1Q=;
 b=ACtkatEUs8xcwKmXoWHNyNAHTocdXOtguPpn02Cc7mf1cVxotyohoMtqvGQDnlPiFbbIBDgebvbO14RLO+MQbHFBUtwx6GSx+Ya+pshCI64ZgXkJALMWys5AZNjsuH4Dwt9v62vsUAdbcwbX+a6+IbAF4GELVhlJiSFSDpOktaQ=
Received: from AM7PR05MB6807.eurprd05.prod.outlook.com (2603:10a6:20b:137::22)
 by AS8PR05MB7831.eurprd05.prod.outlook.com (2603:10a6:20b:251::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.19; Fri, 30 Jul
 2021 07:43:13 +0000
Received: from AM7PR05MB6807.eurprd05.prod.outlook.com
 ([fe80::d58d:77ba:393a:2289]) by AM7PR05MB6807.eurprd05.prod.outlook.com
 ([fe80::d58d:77ba:393a:2289%8]) with mapi id 15.20.4373.025; Fri, 30 Jul 2021
 07:43:13 +0000
From: christofer.dutz@c-ware.de
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: (Go) Library for configuring Yocto based boxes?
Thread-Topic: (Go) Library for configuring Yocto based boxes?
Thread-Index: AdeFFoupQ2bOnA6sQuup4q7x7Xd86A==
Date: Fri, 30 Jul 2021 07:43:12 +0000
Message-ID: 
 <AM7PR05MB68079F0EE9AA57AAC765E903A2EC9@AM7PR05MB6807.eurprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=c-ware.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8e127778-9db7-4bb6-6e91-08d9532daf7b
x-ms-traffictypediagnostic: AS8PR05MB7831:
x-microsoft-antispam-prvs: 
 <AS8PR05MB783191D192C401565A0D6B87A2EC9@AS8PR05MB7831.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2TmImjSbBe7rKVrn9Ka7vsYoo0fnLn03QC0j53JbdNqFWm6Nunbd1qR3EyRFSZJL64gu6+1zH1Y8EeC4pfMmLn2qc1IdVnpQMHSR2A/z2krv/ROw+TAatjBnFcezQN4WyTZulJRyqbmcuTLXoB/+VrQj6r28lo0YWmh9WLnnI6bhsqhsLCJMRV60ShM9O2eb3MluK1FRgtAC2u4sob3AWyqQdkE0YiezQfTecJEgELe/e0Smm9gOE+wjx2ifY3ltolYZavO5YV7YqB2pWRitSyeHNGvA4lAOx1PqJjM3xTKUavguNQ9shR8alOIW1CCgCIjhHojxbXsokub6c9Ed3hndvaWVdOri26Jtk5Jq4BOrw06Rs3DDsnuAbktlAfZOmEXL/aS2qPuvEHiRiFJH0TnAC3YTHM2wfxDpd4N7Wh/sY7OqwNOtDx6DzSBPuwZtIDJXyeWjvA9ao43J9HovB4Qtwybfc9Vx5W0qFygMhid9SKyJbpoi1BjeSr0uq1ABCRw9vE4mYTqHmoyKW5YU2Q8p1ZUFkOxqf0hQDg6Uf1gZfW5FkR0H+YfJxZaqXM6HBRUdnDxkWwF/4A0coBvAT5KhSS2ufjcm8IU3FTlKP4h74C8Ju4i/OUVyLHX1Tx7TC1UrXjjYTqO06gbE7WVKfwvJwullc7h4Of8OVxmUdgW724VyaROhswUw46pGcDXNpgXVt909XalpZ9COcn5pLQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR05MB6807.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(39830400003)(376002)(396003)(366004)(136003)(508600001)(122000001)(33656002)(38100700002)(19627235002)(2906002)(83380400001)(44832011)(8936002)(86362001)(7696005)(55016002)(4744005)(6916009)(186003)(316002)(76116006)(5660300002)(9686003)(8676002)(66946007)(66556008)(66476007)(38070700005)(6506007)(66446008)(64756008)(52536014)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?W58o+cVKcdRbcuXhV5W3TCF8+mNUNI/18PzyAYHvWL4PTh3HyH0El0FTLbD4?=
 =?us-ascii?Q?JckPaB2+7DOpp2DbJrXy2SiwLCUpR5YxewiyKzBNFJ/KaGgbZ+c6Ha2mww6g?=
 =?us-ascii?Q?fp7JWiK22Yii1ooB62sIfZt1BZhrMAT/xPxqxsvYvPvXlAobi/sAVn8cbB91?=
 =?us-ascii?Q?LOz/ilSe1sk347fBGU06gzLRmy3MCk+RvDAUz6y08vuCYMl4XbjrtiBx+A16?=
 =?us-ascii?Q?sd8JdJm5WkMBhijqYnRN4pZ+u1ET7g5QnHpjqNsv8cmFcaGKLa/V8cTPPRyC?=
 =?us-ascii?Q?7/N8t6TD5AoQEet0lJTZKG8muVUNCuf06TpqD6AtZKAibbJTQd2G8QmkBG5L?=
 =?us-ascii?Q?zcrfoTtmFvNBYP8bYl4o7BAvf3ORL3rENyzJSJCodMb6tkMYGwa/g7rPSUZN?=
 =?us-ascii?Q?yTEAEM2R59Omw6eRum0KOyp2FevXFthog2nc/C96siXGCw8BQhGoSysK+gR9?=
 =?us-ascii?Q?MdqN+LbqoEJ6qdjJIKIEtwUdfBA10IsYAH1PZQpiw0HSnnc2lYxsvfF/nCDf?=
 =?us-ascii?Q?LJXaDzDCVUFT0D7m0nkphaBF4hgx65YlP+tNZRkSvXf4A9EATVyokY282XCK?=
 =?us-ascii?Q?DRHmbUQtqz689KVW/ArhoNSN1LnIL5iT9N+gXv6GH49iX1beY2gJqtCXwWT5?=
 =?us-ascii?Q?EhpS8G0q9iMeiI9RpSKXW/2a5bbjoQ+D54XscW1I+CAHeJjMN4OMlGQhf/Vg?=
 =?us-ascii?Q?PhJVU+rkN5oAsVME0giKoba3xj93H76aztWNdiNP/4LCEAKjWz1dQoHaeRLo?=
 =?us-ascii?Q?bOjsqsOkmwHJEs+6KHNaIwW1kxu3kqkPxQnSmKB95syUWcMoRxyvrGOO9q1N?=
 =?us-ascii?Q?k1TIvYaXrZcbF/MWFM2YQPiBwCJGbpPhJw0xTVoF0fALuoPXeSnWPgIisCQ3?=
 =?us-ascii?Q?EeAZxiu1QVMxeIsvE2KYyDXgXoiwei/qtwOnWFZ+MOAp68pF9/vhY25kRMzD?=
 =?us-ascii?Q?vQCctyt8MASrDa742uBBXzF0yzdTpV2tLg2+qRYIOXoLsMhjARv8RX0WSYdG?=
 =?us-ascii?Q?DkcyqggkGQYcW6W2B8/LU5svNn4xtoAFZTxKPz6DARGNbaN9oOd0PSvgYFAa?=
 =?us-ascii?Q?NwjsbKD2Sns66cds+WIaSLkFCYZLrsob9U5ogGC6XHrMhkdqlhU5c9Ae13RE?=
 =?us-ascii?Q?p0M8MAJnOGiQMKgn4/giDwx2bm1u12bJ3Pzf0kogKo4IByrAMtxrZ9K3lvbt?=
 =?us-ascii?Q?3WTGj8WeLMlgfZyQTtL5c1UhMd1hkSejdIhjKlLAb60CmAOkLO1oEULJTc0v?=
 =?us-ascii?Q?bLuScfkpvObqIVPN2O5I/HnX3JeJNAyEt6/ipSOP6HE8jK3uhLTAf9Wv0MXS?=
 =?us-ascii?Q?4jN7DdavB6ZsbNiWUcWT2bna10/HYzKSWTsipsNih0gZX4QV96MOH/h/lNhk?=
 =?us-ascii?Q?yo3bDLY=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: c-ware.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR05MB6807.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e127778-9db7-4bb6-6e91-08d9532daf7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2021 07:43:13.0469
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9d387546-1437-4b89-846c-691d64a7e74d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O8pXfbw1laz0pNPwlZY7vJFWSy1vzt2Vc3bb3ddLVOoQgIIOGfO1lMd0rpR7SxqEfqULJ1TSk9DuZLrMx+61QulpHxhXha6Y+tvCvE3I4Hs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR05MB7831
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM7PR05MB68079F0EE9AA57AAC765E903A2EC9AM7PR05MB6807eurp_"

--_000_AM7PR05MB68079F0EE9AA57AAC765E903A2EC9AM7PR05MB6807eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm very new to the Yocto world.

We are currently working on migrating away from OpenWRT based edge devices =
towards ones that we now have Yocto builds for.

All seems to be working nicely on the yocto side.

Our application uses a baseline configuration in order to connect to our cl=
oud service and there it fetches it's configuration (We've got a cellular f=
allback if connectivity doesn't work at all).

With OpenWRT there was a tool called UCI which even had a Go wrapper which =
we used to apply the configuration to the box (set IP addresses, connect to=
 WiFi neworks, configure the serial ports etc.)

Is there some equivalent in the Yocto world?

I would like to avoid generating the file content in the /etc directory by =
hand and firing "restart" commands to the corresponding services, if there =
isn't a better way.

Help greatly appreciated :-)

Chris


--_000_AM7PR05MB68079F0EE9AA57AAC765E903A2EC9AM7PR05MB6807eurp_
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
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m very new to the Yocto world.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are currently working on migrating away from Open=
WRT based edge devices towards ones that we now have Yocto builds for.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">All seems to be working nicely on the yocto side.<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Our application uses a baseline configuration in ord=
er to connect to our cloud service and there it fetches it&#8217;s configur=
ation (We&#8217;ve got a cellular fallback if connectivity doesn&#8217;t wo=
rk at all).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With OpenWRT there was a tool called UCI which even =
had a Go wrapper which we used to apply the configuration to the box (set I=
P addresses, connect to WiFi neworks, configure the serial ports etc.)<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there some equivalent in the Yocto world?<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would like to avoid generating the file content in=
 the /etc directory by hand and firing &#8222;restart&#8220; commands to th=
e corresponding services, if there isn&#8217;t a better way.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Help greatly appreciated :-)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chris<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM7PR05MB68079F0EE9AA57AAC765E903A2EC9AM7PR05MB6807eurp_--
