Return-Path: <Will.Frazer@eurotech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 370E8E00BAF; Thu,  9 Aug 2018 10:34:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.61 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0061.outbound.protection.outlook.com [104.47.2.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6923E00B58
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 10:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eurotech.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=kvyWRRHfeYqCAZYlH2HtP/IQLnoG39xpg+X/CO/noco=;
	b=eWx+f/SplMPwdJ5BE6gYuwKhS6DGvyUpoKzcNjF9domQp0oWH1blWg2S83tngWar1cKJkDrCiGyGM71McwufiXxp+68Y3f+PiUKmqyycW20R4CMW6yGbF6Za5wwc9vbknQ74ZOvmGHKiR23bYXxuc2H7JHCkL1K5D5VDNGYUlyA=
Received: from AM6PR05MB4357.eurprd05.prod.outlook.com (52.135.162.22) by
	AM6PR05MB4439.eurprd05.prod.outlook.com (52.135.162.148) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1038.19; Thu, 9 Aug 2018 17:19:52 +0000
Received: from AM6PR05MB4357.eurprd05.prod.outlook.com
	([fe80::391b:66ff:d9fd:9c06]) by
	AM6PR05MB4357.eurprd05.prod.outlook.com
	([fe80::391b:66ff:d9fd:9c06%4]) with mapi id 15.20.1038.023;
	Thu, 9 Aug 2018 17:19:52 +0000
From: "Frazer, Will" <Will.Frazer@eurotech.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto userbase in numbers?
Thread-Index: AdQwBE2AtNXGw6DYRH6TP9Fn3Wc4/g==
Date: Thu, 9 Aug 2018 17:19:51 +0000
Message-ID: <AM6PR05MB4357C177898C18D4D17E2CC38A250@AM6PR05MB4357.eurprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [164.40.222.35]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM6PR05MB4439;
	6:Cvjv6CUIkZ7g8GEWRAxyHrJzZUoGEGzS/Y0H0gd42T6QZJkSOOvFQUcRk/NL+bKqwuS5adqrrXtWc9e9/nveMm55xwk/WsPve3Mln37qmYuQdLzCYOWWpdlay0Gd19TjAFhRQTtqO0J6FHkE68avxRybF5tXtZ78HH/T8oNTkZxJkuI7BKj6z/2Je1cU4eW7FpqGtCA7kn9j/tLSPICYWknYxpx1jyM/WmboOEeXMHashpo0D+iaqgDML+BfQ4CWqhGaKKz1xMFvbC45fQ+irJgGraNIh2qo0u//IQQ+zxoJbvjDPgGVSQtdZ7PsmTvJ1kBCpQVu8k9qLBRBu8GSyA+9pQ7AXk6LBUAhvgCFS9sGegpmGuCvwxedlQfvUYB9x1sT20vBqlAVus5Qt/p0LYBGkF8hIKFlAyfu/lCNVUv5rTU1qH4WGJaEBbPHe9VTcxgqOxKTBABjl58FMyuCEQ==;
	5:7tUqy/0/6ULBFP9yLAp17yp//HuaGLFiQLG4yWhwNgxUe+J0/imBU+UMkpm6x86+J1d8NGucf8VOEZX7IS6nQtb68wmIwmCRk12Y5D96wBX9uaoZA2+b4I8LycppRItaWWmizBUsHrXn8bHWIZNw/vszIMpMFU3WucaWfTqRk7U=;
	7:8L2WGKZgkRqofH9YnS1EYP41gepOCp1yLPwLRLVbjJm8kka9/cw5gDtVNWv43MDJ0zfplj3tJosIyE4fH4DCQzrnrj8PNjMK6q8jGV0BoDv787xIyTZdOKAngK71riNaKopMOzC0kLoIBmRAVQATP+IkhfjR7d/ilXJMd/PWHCToo2Ltt+gU81vpBTiWJ6yL6ViB1xM65Mk86nmvCt0d5VZc6FS5RE+CBiCloPlkYLiOey4oeqKY3TEVkQOKqxXZ
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: ebe1ca50-3bd6-4cd9-1a83-08d5fe1c516d
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989117)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR05MB4439; 
x-ms-traffictypediagnostic: AM6PR05MB4439:
x-microsoft-antispam-prvs: <AM6PR05MB4439FFE540B59115D0FB4C198A250@AM6PR05MB4439.eurprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(3231311)(944501410)(52105095)(149027)(150027)(6041310)(20161123560045)(20161123562045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(6072148)(201708071742011)(7699016);
	SRVR:AM6PR05MB4439; BCL:0; PCL:0; RULEID:; SRVR:AM6PR05MB4439; 
x-forefront-prvs: 0759F7A50A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(136003)(366004)(376002)(39850400004)(396003)(199004)(189003)(8936002)(790700001)(72206003)(3846002)(5630700001)(97736004)(6306002)(6116002)(53936002)(68736007)(9686003)(54896002)(55016002)(6506007)(14454004)(478600001)(33656002)(6346003)(102836004)(7736002)(1730700003)(81166006)(8676002)(2906002)(316002)(2351001)(25786009)(6916009)(5250100002)(2501003)(81156014)(74316002)(5660300001)(2900100001)(5640700003)(6436002)(3480700004)(106356001)(66066001)(105586002)(256004)(99286004)(486006)(476003)(186003)(86362001)(26005)(7696005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB4439;
	H:AM6PR05MB4357.eurprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: eurotech.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Will.Frazer@eurotech.com; 
x-microsoft-antispam-message-info: U01FD4+fKx8JxNK16VUCA3PEmitUQ8lgtD3hS5+0Blkzudg08acZHCbLCjWk8Vs+DfBkq8mK+5rBcZphAFPXc3lsbFpXwIQKZxhD7CYyjKkZLyB0SDjNA0s4lCCBm6ubkqqvo4ELyvl/mGcb7pb3XY782t4Glyd/eWnAKMsIO0vve+I22R+Zm/wQsyXu9Rqjn4wsBsOjp5wvG6spWl8uVAJVE3uGYgzroW9wpPBMd+a15XvcpA6Kyc4rzEEos9SlLtlVcF8ySF6PDiX0O9RvWUc3O7aU+w9Cko9/fV/Jv2Yc2pNZ0vFK6Pggy1CTUflqdjOJJ0pXjkXMG/f4ES9zkOscxWRTwZ/F35XoFlnyf/0=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: eurotech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebe1ca50-3bd6-4cd9-1a83-08d5fe1c516d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2018 17:19:52.0596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fc01f1f7-7425-4de2-ba8a-a7cc0ded6b72
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB4439
Subject: Yocto userbase in numbers?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Aug 2018 17:34:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM6PR05MB4357C177898C18D4D17E2CC38A250AM6PR05MB4357eurp_"

--_000_AM6PR05MB4357C177898C18D4D17E2CC38A250AM6PR05MB4357eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I was asked recently what a ballpark figure for the number of systems runni=
ng distributions built with yocto might be and I could not find anything.

I realise it's almost impossible to tell since technically everyone builds =
a different distro, but I don't suppose anyone has come across any estimate=
s anywhere ?

Thanks,
Will



--_000_AM6PR05MB4357C177898C18D4D17E2CC38A250AM6PR05MB4357eurp_
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
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I was asked recently what a ballpark figure for the =
number of systems running distributions built with yocto might be and I cou=
ld not find anything.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I realise it&#8217;s almost impossible to tell since=
 technically everyone builds a different distro, but I don&#8217;t suppose =
anyone has come across any estimates anywhere ?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">Thanks,<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">Will<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM6PR05MB4357C177898C18D4D17E2CC38A250AM6PR05MB4357eurp_--
