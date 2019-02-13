Return-Path: <johann.obermayr@sigmatek.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D322E00C46; Thu, 14 Feb 2019 10:46:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.1.98 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 57358 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Feb 2019 10:46:03 PST
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr10098.outbound.protection.outlook.com [40.107.1.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BC18E00A1A
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 10:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigmatek.at;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=WO4BzMnGPZO6DAJ/UXztv881w6KreIKEr1k4qY1zW8k=;
	b=DtvZN33BL47bjHkqJMOLjpHMHcptV4lenHFSLkUENKk2PKas3O2Iri/vwFixQTm0zeFSPDlBHInf24RrYT6IETtlzUZ4Melt+4PcopRjAb9sd/htPJhTI/UD5Rdbxj62CmF7wQXID4b0HjooZ58m22r5Qhb7LdEpxo8Y3EwWUAI=
Received: from VI1PR08MB3375.eurprd08.prod.outlook.com (20.177.58.217) by
	VI1PR08MB3694.eurprd08.prod.outlook.com (20.178.13.154) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1601.21; Wed, 13 Feb 2019 08:19:07 +0000
Received: from VI1PR08MB3375.eurprd08.prod.outlook.com
	([fe80::31e3:ff42:2886:d60c]) by
	VI1PR08MB3375.eurprd08.prod.outlook.com
	([fe80::31e3:ff42:2886:d60c%3]) with mapi id 15.20.1622.016;
	Wed, 13 Feb 2019 08:19:07 +0000
From: Johann Obermayr <johann.obermayr@sigmatek.at>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Toolchain , kernel-dev and xenomai
Thread-Index: AdTDc5sn1PhihaUeSiW7O2vXjMzdyw==
Date: Wed, 13 Feb 2019 08:19:07 +0000
Message-ID: <VI1PR08MB33752A08CB67460ED379B2C4F5660@VI1PR08MB3375.eurprd08.prod.outlook.com>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=johann.obermayr@sigmatek.at; 
x-originating-ip: [83.215.235.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e520967e-9081-4fe0-6764-08d6918bec74
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR08MB3694; 
x-ms-traffictypediagnostic: VI1PR08MB3694:
x-microsoft-exchange-diagnostics: =?us-ascii?Q?1; VI1PR08MB3694;
	23:LNgnjhSve26JStOBpmUulBNtkbkv9NjxDtq4o8wQS?=
	=?us-ascii?Q?VeVjYT3Qxrn022Si2n+H+MmToS4JbPebUGLA3BzeTPwiVpRFBXglrCmGhX+6?=
	=?us-ascii?Q?jnUE45dGpfGXqvBYB1XseSmEU17R5BOi0DE7lm/MynK0OKH+WYJjDZOIyXIF?=
	=?us-ascii?Q?DU2+CZWeTBOXta9A3gEzfGnV48PGIWGndBEyXz7KvEhrgjjN2NSbSKDY05Yk?=
	=?us-ascii?Q?vZyDu512EGK+ImvpzC2zuG5cfCAiCRmUGz2PHnK2QZjlio2sHxsqoDjmsjiV?=
	=?us-ascii?Q?ePfqEOvVUPGb42OvLA+iJhlbBVqFqIhlK7MNufnQN0NY+GQ77N6GifVyviNR?=
	=?us-ascii?Q?9+NeJj1kjSyFabuyaOn3/dFe0bvx0ghg9DhcBcV0CHZ4kKgWwdGMy9YMDOOw?=
	=?us-ascii?Q?jg4Qz3OydWaKeInWnJe+C6JsbSvn1HBUwxmDlA/wFmX3uCZvKJ37voEvXyuA?=
	=?us-ascii?Q?XD94/gj+jLgsTuFASJn174vQhprjyGUXQzf5j85r7krOEnSPPscaYoFb5bcM?=
	=?us-ascii?Q?x7/xGY7Oybb1jEow+J64RWsZprsEm034plBifG7rNH22gEzzs8CBELVebMIl?=
	=?us-ascii?Q?5yux1n81H8hT50bCY6U1vZQ0PvpBbgFvSKciWk3BVyPBEB31C1CGDo9NiEvP?=
	=?us-ascii?Q?CeqEqzJN9SGiJAy4jTgfIuJp0mTfK6uP7ufTKCAr5RuyQrPGOVL63438sYxb?=
	=?us-ascii?Q?S7bCIvmCrg45+3AZ1lCOnBDYE+t98dHvEQeNLuM9jFfioMlne6tQ440Zvyhp?=
	=?us-ascii?Q?MXnNuLDmXDzZWHaRAH0a2gr8mXdDD8SaAt+dE/keX1uF9T++qFIe35xNv2Y7?=
	=?us-ascii?Q?JdM0CjQ46sE2OiHDPOXrbr+WTaN+MmB9uPJLclLvC8prN6zChxl8iTPtJRWy?=
	=?us-ascii?Q?pmwxzKYmuV2a4xAiHm/JfSq924TcG/3FwNT4MPuLqC/peTzDmoJLSLAXLM8m?=
	=?us-ascii?Q?QzRsz66el0BJ5VWIqp0rMma3e1GdzOIQaAVfnabjuwEeS5SBM8kxMMNqKXzD?=
	=?us-ascii?Q?JAONaFFvW8WZ6KidctML+RS1lHOeh7nC0wagApVgfl3n2JknYb9riMRqLjW1?=
	=?us-ascii?Q?v5cqpdgDKzAJKr62W2SonOLBWgQEQqBuqyrbkVSEJtpio8sTa5apU/fRmZ4h?=
	=?us-ascii?Q?DDliShpMu2bm6n+Ck1mZzQnE5RYAbwyQ2FGCg9UTNMsaF5ePJOxGPwn7QHz1?=
	=?us-ascii?Q?EmnX65l4K1MKGENIjahE+B3jnDGSYnFW8tkvnaOtEt9Ooev3jIYKrbXLHUZm?=
	=?us-ascii?Q?66kfbzGBhfz1WuD+xU=3D?=
x-microsoft-antispam-prvs: <VI1PR08MB3694725AA4CE307917B1A4DCF5660@VI1PR08MB3694.eurprd08.prod.outlook.com>
x-forefront-prvs: 094700CA91
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(39840400004)(346002)(376002)(136003)(396003)(199004)(189003)(71200400001)(66066001)(256004)(97736004)(71190400001)(19627235002)(7696005)(74316002)(25786009)(44832011)(486006)(68736007)(476003)(2906002)(33656002)(1730700003)(81156014)(81166006)(8676002)(8936002)(7736002)(3846002)(5640700003)(105586002)(6916009)(478600001)(316002)(2501003)(55016002)(790700001)(6116002)(6306002)(54896002)(6436002)(86362001)(106356001)(2351001)(74482002)(53936002)(9686003)(186003)(26005)(102836004)(14454004)(4744005)(6506007)(99286004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR08MB3694;
	H:VI1PR08MB3375.eurprd08.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sigmatek.at does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: I32k6UP9x3spgR2YCaLFYT6XjfsMptI1Z/buB95pp672hvnhEp8JuTMN5ZBCUYD+5+Dxp9sJ5gjZSB8kjmz9RfxYpydOZUswXBH3RYbflyifXtv8L8t/EgrCmetwL+7iMb7QD+xwohh9aIcbKFp3xTtZoHiheRfuVvlzFvTscfI5dQOrsQBFOnil7OH8JsAFm77E2Dg+leXEAQBeVSioGDdeoQ6I8xMQPHJyEMEqaTjKBwZOxCPb5DwpL9hpO6AuMq5LG9a15vPAF4hswag3jbTDFfHE925yozEbr/n9IMSxw3Brhd8/34fkLHyg2DlZ0yc48i0MNjcKWjid/lIu3eOs/c2xkY4I/lvJj3I46WRo0ojsD8mAo/rjNuGw/pYrxcWk/VpC1K9LQm9OzFJ5HCGw62/wgWzguOHdrEIgVmk=
MIME-Version: 1.0
X-OriginatorOrg: sigmatek.at
X-MS-Exchange-CrossTenant-Network-Message-Id: e520967e-9081-4fe0-6764-08d6918bec74
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2019 08:19:07.1926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bcb1d87a-d2bc-486e-a62b-9ac9c746bc1b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3694
Subject: Toolchain , kernel-dev and xenomai
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
X-List-Received-Date: Thu, 14 Feb 2019 18:46:05 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_VI1PR08MB33752A08CB67460ED379B2C4F5660VI1PR08MB3375eurp_"

--_000_VI1PR08MB33752A08CB67460ED379B2C4F5660VI1PR08MB3375eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

At this time we work with 1.3.2 (yes, it's very old, but we are working to =
change to v2.5.x)

We have some trouble with your toolchain.

  1.  Kernel/scripts/basic/fixdep   is missing.

If I will compile in the toolchain kernel source directory "make scripts" I=
 get some other errors (see b) )


       b) Xenomai integrates its files as linked. And this links are instal=
led with the toolchain. So the files are not really available.


Thanks & Regards
  Johann

--_000_VI1PR08MB33752A08CB67460ED379B2C4F5660VI1PR08MB3375eurp_
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
span.tlid-translation
	{mso-style-name:tlid-translation;}
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
	{mso-list-id:1278223723;
	mso-list-type:hybrid;
	mso-list-template-ids:-1142499924 67567639 67567641 67567643 67567631 6756=
7641 67567643 67567631 67567641 67567643;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">At this time we work with 1.3.2=
 (yes, it&#8217;s very old, but we are working to change to v2.5.x)<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We have some trouble with your =
toolchain.<o:p></o:p></span></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"a">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">Kernel/scripts/basic/fixdep&nbsp;&nbsp; is missi=
ng.<o:p></o:p></span></li></ol>
<p class=3D"MsoListParagraph"><span lang=3D"EN-US">If I will compile in the=
 toolchain kernel source directory &#8220;make scripts&#8221; I get some ot=
her errors (see b) )<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span class=3D"tlid-translation"><span lang=3D"EN-US=
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Xenomai integrates its files as l=
inked. And this links are installed with the toolchain. So the files are no=
t really available.</span></span><span lang=3D"EN-US"><o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:DE"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal">Thanks &amp; Regards<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Johann<o:p></o:p></p>
</div>
</body>
</html>

--_000_VI1PR08MB33752A08CB67460ED379B2C4F5660VI1PR08MB3375eurp_--
