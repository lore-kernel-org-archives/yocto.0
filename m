Return-Path: <johann.obermayr@sigmatek.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCAB5E00CF4; Wed,  3 Apr 2019 21:18:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.7.92 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 14371 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Apr 2019 21:18:08 PDT
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr70092.outbound.protection.outlook.com [40.107.7.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 425F8E00CE5;
	Wed,  3 Apr 2019 21:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigmatek.at;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=K/OO3s3K7trDX1CoXzQvzrXxEzMQSPtrDdIw+uYoheY=;
	b=VgHgOdXWQ+TskiMwMrpCbFAnnd40dzhJx5a9Wbh31+aGWKhjxXne9ZZUQUAf8N8GYl6K5Z+jzgi4+ZkSCV5Egh/ysQ9qumpyEU5m/aQNhhgfaH3Tld45+wjjbmqXJdbFMfMPnezVvDpLC/WscYM/4iebJqP3MwHvLabA10l4r8w=
Received: from AM6PR08MB3366.eurprd08.prod.outlook.com (20.177.113.224) by
	AM6PR08MB4487.eurprd08.prod.outlook.com (20.179.18.20) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1771.13; Wed, 3 Apr 2019 18:44:25 +0000
Received: from AM6PR08MB3366.eurprd08.prod.outlook.com
	([fe80::501f:cd56:27ca:c6dc]) by
	AM6PR08MB3366.eurprd08.prod.outlook.com
	([fe80::501f:cd56:27ca:c6dc%5]) with mapi id 15.20.1750.014;
	Wed, 3 Apr 2019 18:44:25 +0000
From: Johann Obermayr <johann.obermayr@sigmatek.at>
To: "yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: wic / wks partition
Thread-Index: AdTqTG8pWixOZBxfROCoqqAlMhdNdw==
Date: Wed, 3 Apr 2019 18:44:24 +0000
Message-ID: <AM6PR08MB3366DF5FDA2B8E1703B080C8F5570@AM6PR08MB3366.eurprd08.prod.outlook.com>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=johann.obermayr@sigmatek.at; 
x-originating-ip: [83.215.235.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd8aeb9a-5603-43c3-eff9-08d6b8646510
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600139)(711020)(4605104)(2017052603328)(7193020);
	SRVR:AM6PR08MB4487; 
x-ms-traffictypediagnostic: AM6PR08MB4487:
x-microsoft-antispam-prvs: <AM6PR08MB448793458B046F2D7238061EF5570@AM6PR08MB4487.eurprd08.prod.outlook.com>
x-forefront-prvs: 0996D1900D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(39840400004)(366004)(346002)(376002)(396003)(199004)(189003)(256004)(5660300002)(74316002)(99286004)(7736002)(7696005)(186003)(14454004)(486006)(44832011)(476003)(102836004)(19627235002)(6506007)(478600001)(2501003)(26005)(6116002)(3846002)(790700001)(316002)(74482002)(110136005)(71200400001)(97736004)(66066001)(54896002)(558084003)(33656002)(71190400001)(9686003)(106356001)(81166006)(55016002)(6306002)(8676002)(2906002)(81156014)(105586002)(450100002)(8936002)(6436002)(52536014)(68736007)(25786009)(86362001)(53936002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR08MB4487;
	H:AM6PR08MB3366.eurprd08.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sigmatek.at does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0Jy7btbiDuoPQ3NIEuhG4NC6PDtV0sERM1ek7LhH6ts0HsBmuVdsemML3k4uO+YYLK7EHndVcs+U/z6qVPFGOwTds2fUu6hEYXhlJ7ym/YyOeVRcZYNQmz2DlyPPVirL+HWQtMI/WNR+aaXDgQf+A2mQi6YueeMAlwXsZm5XmChMEhwE1Ci16FCtGVB0AONDpxlfqehyp2zp2C0+/QVqVteFEbWv+/kOV4325XHhVosrRkv9uITSpQ5vlaC0dYCCvDHJjJVIZ5ZQY/3q5+cGDpXRPim0oHRpd6JNF727bhcd/GpvQj18d8ao7m4ZUPzANVfscC+x9Vc8f5EgCQ8iLHN7NzS/jh9r0QKNcwyA8nfPRR/e9fS0rdMwejE8I/gtpROl84zJzLJCu0HYqLRH78OWXEH6h1VDBqb9YWLl2/w=
MIME-Version: 1.0
X-OriginatorOrg: sigmatek.at
X-MS-Exchange-CrossTenant-Network-Message-Id: dd8aeb9a-5603-43c3-eff9-08d6b8646510
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2019 18:44:25.0502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bcb1d87a-d2bc-486e-a62b-9ac9c746bc1b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4487
Subject: wic / wks partition
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
X-List-Received-Date: Thu, 04 Apr 2019 04:18:09 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM6PR08MB3366DF5FDA2B8E1703B080C8F5570AM6PR08MB3366eurp_"

--_000_AM6PR08MB3366DF5FDA2B8E1703B080C8F5570AM6PR08MB3366eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

we need to add a raw partition Type=3D0xda . How can I do that, because "pa=
rt -fstype " has no raw or other value.



Mit freundlichen Gr=FC=DFen / Best regards
                Johann Obermayr

--_000_AM6PR08MB3366DF5FDA2B8E1703B080C8F5570AM6PR08MB3366eurp_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
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
/* List Definitions */
@list l0
	{mso-list-id:470945270;
	mso-list-type:hybrid;
	mso-list-template-ids:1337503344 67567639 67567641 67567643 67567631 67567=
641 67567643 67567631 67567641 67567643;}
@list l0:level1
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">we need to add a raw partition =
Type=3D0xda . How can I do that, because &#8220;part &#8211;fstype &#8220; =
has no raw or other value.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:DE">Mit freundli=
chen Gr=FC=DFen / Best regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:DE">&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; Johann Obermayr<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_AM6PR08MB3366DF5FDA2B8E1703B080C8F5570AM6PR08MB3366eurp_--
