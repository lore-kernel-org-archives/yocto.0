Return-Path: <johann.obermayr@sigmatek.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2E1AE00D11; Wed, 27 Mar 2019 11:44:53 -0700 (PDT)
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
	*      [40.107.1.125 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1957 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Mar 2019 11:44:51 PDT
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr10125.outbound.protection.outlook.com [40.107.1.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79E7CE00872
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 11:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigmatek.at;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=RL6Nd+lMQryQ3NsciVm1/WTAbCVbv2hFZpO+RjnYU/Y=;
	b=EZJemB9K+6+Tm8TDWYikL/WJLTQK/g1z3A+qXEx6/lI7QjPm6ixrSClRhYVxQDhEwhFDWiwvYmtkcPOFVNOmAn8R0oGKsyENfn41GeJKFLUpyCrnsFnmkuBdDE9Z5Jqopb6wkTbJpVPfOPfHFjH6F4wvqiyLBiVDT8w2PzAu1Cc=
Received: from VI1PR08MB3375.eurprd08.prod.outlook.com (20.177.58.217) by
	VI1PR08MB3232.eurprd08.prod.outlook.com (52.134.30.138) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1730.18; Tue, 26 Mar 2019 13:34:24 +0000
Received: from VI1PR08MB3375.eurprd08.prod.outlook.com
	([fe80::1daa:be95:adf8:e530]) by
	VI1PR08MB3375.eurprd08.prod.outlook.com
	([fe80::1daa:be95:adf8:e530%3]) with mapi id 15.20.1730.019;
	Tue, 26 Mar 2019 13:34:24 +0000
From: Johann Obermayr <johann.obermayr@sigmatek.at>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: build SYSLINUX module
Thread-Index: AdTj2A7pEvtjEshGTXuK2ZzSucDp3w==
Date: Tue, 26 Mar 2019 13:34:24 +0000
Message-ID: <VI1PR08MB3375FA5161FAE7944EE689DAF55F0@VI1PR08MB3375.eurprd08.prod.outlook.com>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=johann.obermayr@sigmatek.at; 
x-originating-ip: [83.215.235.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff87a169-a7f2-4a87-1f4f-08d6b1efc331
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600127)(711020)(4605104)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR08MB3232; 
X-MS-TrafficTypeDiagnostic: VI1PR08MB3232:|VI1PR08MB3232:|VI1PR08MB3232:|VI1PR08MB3232:
x-microsoft-antispam-prvs: <VI1PR08MB323259747C3676943A121BC6F55F0@VI1PR08MB3232.eurprd08.prod.outlook.com>
x-forefront-prvs: 09888BC01D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(396003)(39840400004)(366004)(346002)(376002)(189003)(199004)(1730700003)(6916009)(14454004)(53936002)(55016002)(25786009)(7116003)(9686003)(97736004)(5640700003)(6306002)(54896002)(8676002)(19627235002)(486006)(3480700005)(5660300002)(476003)(99286004)(71200400001)(86362001)(71190400001)(4744005)(256004)(316002)(26005)(2351001)(102836004)(2906002)(44832011)(186003)(74482002)(6436002)(2501003)(8936002)(66066001)(52536014)(790700001)(7696005)(6116002)(3846002)(81156014)(33656002)(478600001)(81166006)(105586002)(74316002)(7736002)(106356001)(6506007)(68736007);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR08MB3232;
	H:VI1PR08MB3375.eurprd08.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sigmatek.at does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Js1xnKD4Iro4KMRhlHrnAB65JYpSawF7c+1s2bmQDhjnGU3QSkysX3GEy5j7aDqnYn5ktgXzpAM+UV3DrGXf4Q/b5zDYdxFN84qVbO+FqMA1/nlQvXd9C58n8pFEEfbVNCz8g0j0+9sc3J5Pyt7SMQppcbwoWQaUTzhtcdds0l/NRYUvkkMr9aA8YM/iRENI6+w8h0CmIxiSmlXcjcFriFKX+wv2CY9c8yKezZ1678mSGQBPWzRg6gxbZoSujmAcX19U2Ooy7thVVbKG6nifn2KHX96raE+J7hujWXA9muKfPkUesRkUb6zJJsiA+AL7CTtVZrb4cbArmyiUfWHZFxW6vdgPb23CpZ2+aUE0/R658gqfKqBLnfSl3ryOMw4fmICtyi8uK0P2aLTORSn7+7MEMYC/Tv8uVZCT3lBcUIg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ff87a169-a7f2-4a87-1f4f-08d6b1efc331
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2019 13:34:24.9260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bcb1d87a-d2bc-486e-a62b-9ac9c746bc1b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3232
X-OriginatorOrg: sigmatek.at
Subject: build SYSLINUX module
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
X-List-Received-Date: Wed, 27 Mar 2019 18:44:53 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_VI1PR08MB3375FA5161FAE7944EE689DAF55F0VI1PR08MB3375eurp_"

--_000_VI1PR08MB3375FA5161FAE7944EE689DAF55F0VI1PR08MB3375eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hallo,

We have changed your system from yocto 1.6.2 to V2.5.2.
On old system we use syslinux 4.07 with a own module.

Now I see, that all modules in syslinux are compile, and the syslinux.bb cr=
eate only new installer files.

But how can i compile our own module ?

It's in a subfolder of com32/our_own/*.c + Makefile

Thanks
  Johann



--_000_VI1PR08MB3375FA5161FAE7944EE689DAF55F0VI1PR08MB3375eurp_
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hallo,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We have changed your system fro=
m yocto 1.6.2 to V2.5.2.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On old system we use syslinux 4=
.07 with a own module.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Now I see, that all modules in =
syslinux are compile, and the syslinux.bb create only new installer files.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But how can i compile our own m=
odule ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">It&#8217;s in a subfolder of co=
m32/our_own/*.c &#43; Makefile<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Johann<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_VI1PR08MB3375FA5161FAE7944EE689DAF55F0VI1PR08MB3375eurp_--
