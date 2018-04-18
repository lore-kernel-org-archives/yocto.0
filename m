Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E929E00C4B; Wed, 18 Apr 2018 09:39:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.105 listed in list.dnswl.org]
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
	(mail-db5eur01on0105.outbound.protection.outlook.com [104.47.2.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 070A7E00A26
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 09:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=QRdoHPnLmsE8pAxtnLr7TRM+XiJXImpV5rzgmRKJ6yg=;
	b=Iy+dOBXSCa86eHitE8yJ/1aNlDKQzTG3wVWVMFVrQapvS4++Tdtzb22V5z2zvfNKBgH1dA4njnmN7omf2mmhSywo03X6Qc2Xo3+Aan8WQ8Se38YX+ODp6QYy49F+EkNPnlKlonQEjkAiqkoN3P2aaX08TgJWxpvK1ZA0x4SebvI=
Received: from AM5P192MB0132.EURP192.PROD.OUTLOOK.COM (10.175.13.8) by
	AM5P192MB0241.EURP192.PROD.OUTLOOK.COM (10.175.13.144) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.696.13; Wed, 18 Apr 2018 16:24:40 +0000
Received: from AM5P192MB0132.EURP192.PROD.OUTLOOK.COM
	([fe80::b4ee:25f2:cbab:ef9f]) by AM5P192MB0132.EURP192.PROD.OUTLOOK.COM
	([fe80::b4ee:25f2:cbab:ef9f%9]) with mapi id 15.20.0696.013;
	Wed, 18 Apr 2018 16:24:40 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Need Help for meta-qt5
Thread-Index: AdPXMSoo9SxZEbMeR1ywwmCXBMK9hQ==
Date: Wed, 18 Apr 2018 16:24:40 +0000
Message-ID: <AM5P192MB0132AEBDAFE4E6411791DF658DB60@AM5P192MB0132.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=orthotaxy.com;
x-originating-ip: [46.193.170.126]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5P192MB0241;
	7:ngxMpi8QD95o7l2xgW02wOY6gfxmJ8O0PcBPqghy0rdh1zqVli5STrKx/l34018Xve73wDC7TaypcbBcO2+yhToybvIUu9MvxoFr5E3ugMtbPpDXJKDvyy7QILdDo2YsrANnVK5KYrXP/whh3cS8ev/TZELv+psS5cPBU976PysZUrbcrF0kpg5cOZGg8IR1p0cGHCY7sSwzB/JPBQnaWEH6ryRmbnCHe4VgL8kBv9/OfckooS9srwQo5vQOdpIv
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM5P192MB0241; 
x-ms-traffictypediagnostic: AM5P192MB0241:
x-microsoft-antispam-prvs: <AM5P192MB02416003695E14202E8ED7B38DB60@AM5P192MB0241.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3231232)(944501327)(52105095)(10201501046)(3002001)(6041310)(20161123562045)(20161123560045)(2016111802025)(20161123558120)(20161123564045)(6043046)(6072148)(201708071742011);
	SRVR:AM5P192MB0241; BCL:0; PCL:0; RULEID:; SRVR:AM5P192MB0241; 
x-forefront-prvs: 06469BCC91
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(39830400003)(376002)(346002)(366004)(396003)(33656002)(53936002)(316002)(186003)(68736007)(790700001)(25786009)(3846002)(6116002)(2900100001)(6916009)(5660300001)(5630700001)(6436002)(558084003)(8936002)(2906002)(9326002)(7736002)(2351001)(14454004)(8676002)(81166006)(1730700003)(3660700001)(3280700002)(478600001)(66066001)(106356001)(74316002)(6506007)(7696005)(5250100002)(2501003)(55016002)(102836004)(6306002)(86362001)(26005)(54896002)(99286004)(5640700003)(9686003)(476003)(44832011);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5P192MB0241;
	H:AM5P192MB0132.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; MLV:ovrnspm; PTR:InfoNoRecords; 
x-microsoft-antispam-message-info: WZ5GrDIALtS6HCe6nG1y+cJjp3h7+ibaa5hn2j7t9MUcEhwCOshFqfnSLS6wFdfOX+rr3X4UNhDSf376ypX/tICBVabWZyyU5I3Sspju/uhXilwdFsGADJXdj4r/TInOfUS8paYsY27Q6wsLXOCtIpTTnjjQu3WZoCTIbn7s0fPSwyuKTMr3ejkriotR1+9o
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 3acab219-93d8-4e60-ba4a-08d5a548e31d
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3acab219-93d8-4e60-ba4a-08d5a548e31d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2018 16:24:40.8557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P192MB0241
Subject: Need Help for meta-qt5
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
X-List-Received-Date: Wed, 18 Apr 2018 16:39:25 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AM5P192MB0132AEBDAFE4E6411791DF658DB60AM5P192MB0132EURP_"

--_000_AM5P192MB0132AEBDAFE4E6411791DF658DB60AM5P192MB0132EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have to add Qt5 QtCore libs to my image. I know I must use meta-qt5 but a=
s I'm not familiar with qt configuration, I simply do not know how to start=
 !
So can someone help me to configure meta-qt5 to simply build and add QtCore=
 to my image ?
Thank you

Vincent



--_000_AM5P192MB0132AEBDAFE4E6411791DF658DB60AM5P192MB0132EURP_
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
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
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have to add Qt5 QtCore libs to my image. I know I =
must use meta-qt5 but as I&#8217;m not familiar with qt configuration, I si=
mply do not know how to start !<o:p></o:p></p>
<p class=3D"MsoNormal">So can someone help me to configure meta-qt5 to simp=
ly build and add QtCore to my image ?<o:p></o:p></p>
<p class=3D"MsoNormal">Thank you<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Vincent<span style=3D"font-family:&quot;Arial&quot;,=
sans-serif;color:#222222;background:white;mso-fareast-language:EN-GB"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR" style=3D"mso-fareast-language:EN-G=
B"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM5P192MB0132AEBDAFE4E6411791DF658DB60AM5P192MB0132EURP_--
