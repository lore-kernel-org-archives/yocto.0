Return-Path: <a.spin@datawatt.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 079BCE00AB3; Tue,  2 Oct 2018 00:16:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.2.87 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2124 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 Oct 2018 00:16:09 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0087.outbound.protection.outlook.com [104.47.2.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09474E0097C
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2018 00:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=datawatt.onmicrosoft.com; s=selector1-datawatt-nl;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=bN5Jg7ngPnzj2D83w2kRc+8x+kNjooG5d6wDCkMteSg=;
	b=kQson0SLDnzhSBaqeCAwzOwZ0vRoCzPmLeUMHf4t/JkW+N+cZKyoBjD5wtpYJ/oAM25bf3/JA5fnA78Wb5exqJcQCqtkV8zlkkbmJIJ+Q1gh5xY/L/wXhOlqnsCXacBKE+I4F2byAZBU0obcZNAPMFgV0huVj6lfSjyCxNClSZw=
Received: from AM0PR0102MB3570.eurprd01.prod.exchangelabs.com
	(2603:10a6:208:4::15) by AM0PR0102MB3570.eurprd01.prod.exchangelabs.com
	(2603:10a6:208:4::15) with TransportReplication id Version 15.20 (Build
	1143.19); Mon, 1 Oct 2018 21:44:01 +0000
Received: from VI1PR0102MB3359.eurprd01.prod.exchangelabs.com (52.134.7.15) by
	VI1PR0102MB3584.eurprd01.prod.exchangelabs.com (52.134.13.16) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1143.18; Mon, 1 Oct 2018 14:50:56 +0000
Received: from VI1PR0102MB3359.eurprd01.prod.exchangelabs.com
	([fe80::b4a4:ec81:fc6d:468]) by
	VI1PR0102MB3359.eurprd01.prod.exchangelabs.com
	([fe80::b4a4:ec81:fc6d:468%5])
	with mapi id 15.20.1185.024; Mon, 1 Oct 2018 14:50:56 +0000
From: Alberto Spin <a.spin@datawatt.nl>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [mono][msbuild][nuget] Building c# application for mono
Thread-Index: AdRZlYWObtD1BokhQfOjDkLL3kEPqg==
Date: Mon, 1 Oct 2018 14:50:55 +0000
Message-ID: <VI1PR0102MB3359BFFD10CD302A9AD7E03E9BEF0@VI1PR0102MB3359.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US, nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=a.spin@datawatt.nl; 
x-originating-ip: [213.126.127.90]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM0PR0102MB3570;
	6:dgb+EirafyFUE56UYs7R0kyoC7ATI5I42OmUt2Kkp1xFgpFlV0u1ZapgGW2S/YVSSGp93ZYBT2p5g1SKZYK8XTPlKdjdpdHqCGViU5UawAimnDBvoBjL0/xJDH4brBdlg9PP06xxMha1sCRC6XNg+LIeNDaJXATBgSQyShrP9kdHdDalwOO/KtJ6fVVd4YS1M2RRbfmEj33FOZ7wahLMqEt+QhQTgaIfzJv2nUbeT0w4E2GqidUwcbCMII6SFZ75v42vhleo5An6Xh7qbi0ZYMC5dAvUaZKUYYUFe9pyHAq8JmXKFrx9+gVmv8V5zw69F+GIs50iu7BY/nz37aWXC880qJZXvHtAkFv5DeuKnvvSFKY98M6uAL01/egegNjzwr5qAOofwIqUaQgDJawYt/uS9LlSZvlAu9+7Riy8KmuovRgzqdegHOjenEwsMVUtKTZd0RxiRVGXWYl9xzfbFg==;
	5:yBI3u0Ia3wJSIwuZyvkCzFYN7ZMgljJ32QEiYnJAaURXItsf6g1l5XmRxY8VRvVj/1PYu8I8C54+rS627uxOiOXZoVDWLZUXRAc+MAiTfrNPFQXH07RpNJ4GjH1zy4rdVOsQgrLhAGu1NJnreAhny/1bKwD8ToYg2lhL6Yzy8CU=;
	7:pgvlmi9O4Z+HmcAhjSY6vPWPd2kHDECMYVjQD4zLSNum4k2DzZMUEE/9ADg9DB4lqzX7qCq+V0OdHevBMNPDHffh9qCSPVRrYU49+iqaAq/E0p/7RbP7+Jcr64UyH4NdkO6JlZu0IqH5bw6RXJ06U268pW1oeSlBV6sTHKEMSSPrYAsSo1slSnavr22Ap72x/Gg2+bYFjSYXFrMbpbOO7o3RShr1D/VdEFfq0UOxJDWS73gabqGywT4HON72qfUQ
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 0b4b4a74-57a4-40b7-5171-08d627ad4afc
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(7021125)(8989299)(4534165)(7022125)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR0102MB3584; 
x-ms-traffictypediagnostic: AM0PR0102MB3570:
x-microsoft-antispam-prvs: <AM0PR0102MB357028010D66D2E41BE1B86A9BEF0@AM0PR0102MB3570.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(21748063052155)(28532068793085)(190501279198761)(227612066756510);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(3231355)(944501410)(52105095)(93006095)(93001095)(149066)(150057)(6041310)(20161123564045)(20161123560045)(20161123562045)(2016111802025)(20161123558120)(6043046)(201708071742011)(7699051);
	SRVR:AM0PR0102MB3570; BCL:0; PCL:0; RULEID:;
	SRVR:AM0PR0102MB3570; 
x-forefront-prvs: 0812095267
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(136003)(366004)(396003)(39830400003)(199004)(189003)(174874002)(6916009)(9686003)(8558605004)(53936002)(6436002)(7736002)(33656002)(6306002)(55016002)(74482002)(5640700003)(74316002)(66066001)(106356001)(105586002)(54896002)(14444005)(256004)(25786009)(486006)(5630700001)(5660300001)(68736007)(8936002)(6506007)(1857600001)(5250100002)(2900100001)(26005)(186003)(476003)(71190400001)(99286004)(316002)(2351001)(102836004)(14454004)(790700001)(3846002)(6116002)(86362001)(97736004)(508600001)(81166006)(1730700003)(8676002)(45080400002)(2501003)(7696005)(81156014)(2906002)(71200400001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0102MB3570;
	H:VI1PR0102MB3359.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: datawatt.nl does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 1AkQvj+G+lwXCak1lqC9CGZLqAkXA2U9vU7ihdM/KP8nXdPfipSMsirZu1VS5AQGcctDX6iN0gMqguKJWM2TazK0BStKn255Zb+G/8Dk3XoHAUgqjnTcV7ITBEMfzDkN7ro/xPoO8RdkWq4MdcY/3aw0//CEOU9PcR2t2zQjMBU3dXEZ6VqmfxFHILKt1Z/e6SKX1Toesf3v+zC5X0dBjG5DKzNcn82XOZ+am+8t4lc50pkXPkbdPKSLYpJD4oYioVJ3c6uSZuZPdYqkZ/xycSljbOY0GElsbk1j/1EcdP1poSZGSd9HspNcYzCGvXd23M4mS12LrmuWoMMFtz/d5soXq43eAHHTn397q+lzApc=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: datawatt.nl
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b4b4a74-57a4-40b7-5171-08d627ad4afc
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2018 14:50:55.9448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5afcf6a4-fc33-42be-9014-b6cf5e6ea885
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0102MB3570
Subject: [mono][msbuild][nuget] Building c# application for mono
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
X-List-Received-Date: Tue, 02 Oct 2018 07:16:13 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0102MB3359BFFD10CD302A9AD7E03E9BEF0VI1PR0102MB3359_"

--_000_VI1PR0102MB3359BFFD10CD302A9AD7E03E9BEF0VI1PR0102MB3359_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to build my c# application for mono with yocto, by using nuget a=
nd msbuild.

I encountered several problems:

MsBuild:

  *   During the build of msbuild the cibuild.sh script is invoked. This sc=
ript uses the tool 'curl' to download the msbuild.zip form Microsoft. This =
action failes with a certificate error because there are no certificates pr=
esent. I fixed this issue with a bbappend script for msbuild which contains=
:
                DEPENDS +=3D "ca-certificates"

Nuget:

  *   When trying to restore the packages for my c# application, the execut=
ion of Nuget fails because it has no certificates.
  *   Apparently NuGet is using the mono certificate store, because it fail=
s to detect the certificates present in:  /recipe-sysroot-native/etc/ssl/ce=
rts
  *   I also verified that the mono certificate store is empty by issuing t=
he command: certmgr -list -c Trust

I tried to extend the recipe that builds my c# application with a do_config=
ure task, in which I'm trying to synchronize the mono certificate store wit=
h the ca-certifates.crt.
                cert-sync ${sysconfdir}/ssl/certs/ca-certificates.crt

But the cert-sync tool somehow wants to use a path outside my build environ=
ment /usr/share/.mono, which fails with an access denied error.

Can anybody help me to get past this problem?

Kind Regards,

Alberto Spin

Branch: Rocko
Mono 5.4.1.6
Nuget 4.1
Msbuild 15.4




--_000_VI1PR0102MB3359BFFD10CD302A9AD7E03E9BEF0VI1PR0102MB3359_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
/* List Definitions */
@list l0
	{mso-list-id:1954362348;
	mso-list-type:hybrid;
	mso-list-template-ids:-1546115154 147490326 68354051 68354053 68354049 683=
54051 68354053 68354049 68354051 68354053;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
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
<body lang=3D"NL" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m trying to build my c#=
 application for mono with yocto, by using nuget and msbuild.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I encountered several problems:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">MsBuild:<o:p></o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">During the build of msbuild the cibuild.sh scrip=
t is invoked. This script uses the tool &#8216;curl&#8216; to download the =
msbuild.zip form Microsoft. This action failes with
 a certificate error because there are no certificates present. I fixed thi=
s issue with a bbappend script for msbuild which contains:<o:p></o:p></span=
></li></ul>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span st=
yle=3D"font-size:8.0pt;font-family:Consolas">DEPENDS &#43;=3D &quot;ca-cert=
ificates&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Nuget:<o:p></o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">When trying to restore the packages for my c# ap=
plication, the execution of Nuget fails because it has no certificates.<o:p=
></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-left:0cm;=
mso-list:l0 level1 lfo1"><span lang=3D"EN-US">Apparently NuGet is using the=
 mono certificate store, because it fails to detect the certificates presen=
t in: &nbsp;/recipe-sysroot-native/etc/ssl/certs<o:p></o:p></span></li><li =
class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 lfo1=
"><span lang=3D"EN-US">I also verified that the mono certificate store is e=
mpty by issuing the command: certmgr -list -c Trust<o:p></o:p></span></li><=
/ul>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tried to extend the recipe th=
at builds my c# application with a do_configure task, in which I&#8217;m tr=
ying to synchronize the mono certificate store with the ca-certifates.crt.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cert-sync ${sys=
confdir}/ssl/certs/ca-certificates.crt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But the cert-sync tool somehow =
wants to use a path outside my build environment /usr/share/.mono, which fa=
ils with an access denied error.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Can anybody help me to get past=
 this problem?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kind Regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Alberto Spin<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Branch: Rocko<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Mono 5.4.1.6<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Nuget 4.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Msbuild 15.4<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_VI1PR0102MB3359BFFD10CD302A9AD7E03E9BEF0VI1PR0102MB3359_--
