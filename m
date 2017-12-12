Return-Path: <prvs=151976fc47=jerome.haxhiaj@elektrobit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E5CEE00D07; Tue, 12 Dec 2017 09:00:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.95.163.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 904 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Dec 2017 09:00:44 PST
Received: from smtpgwcipde.elektrobit.com
	(smtpgwcipde.automotive.elektrobit.com [213.95.163.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E818E00C0F
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 09:00:44 -0800 (PST)
Received: from denue6es003.localdomain (denue6es003.automotive.elektrobit.com
	[213.95.163.136]) by smtpgwcipde.elektrobit.com with ESMTP id
	vBCGjcHG013255-vBCGjcHI013255
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 17:45:38 +0100
Received: from denue6es003.securemail.local (localhost [127.0.0.1])
	by denue6es003.localdomain (Postfix) with SMTP id 21AA22D482
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 17:45:42 +0100 (CET)
Received: from denue6es008.ebgroup.elektrobit.com
	(denue6es008.ebgroup.elektrobit.com [10.5.139.25])
	by denue6es003.localdomain (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 17:45:41 +0100 (CET)
Received: from denue6es007.ebgroup.elektrobit.com (10.5.139.21) by
	denue6es008.ebgroup.elektrobit.com (10.5.139.25) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Tue, 12 Dec 2017 17:45:38 +0100
Received: from denue6es007.ebgroup.elektrobit.com ([fe80::3df2:46b8:bd8:b87b])
	by denue6es007.ebgroup.elektrobit.com
	([fe80::3df2:46b8:bd8:b87b%12]) with
	mapi id 15.00.1320.000; Tue, 12 Dec 2017 17:45:38 +0100
From: <Jerome.Haxhiaj@elektrobit.com>
To: <yocto@yoctoproject.org>
Thread-Topic: Add optional dependancies to the recipe
Thread-Index: AdNzZa0dPBJEkFnVSfCMsvUbKcyM8A==
Date: Tue, 12 Dec 2017 16:45:38 +0000
Message-ID: <5d5b13deaf074612977477696f3e746d@denue6es007.ebgroup.elektrobit.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.5.137.27]
MIME-Version: 1.0
Subject: Add optional dependancies to the recipe
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
X-List-Received-Date: Tue, 12 Dec 2017 17:00:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5d5b13deaf074612977477696f3e746ddenue6es007ebgroupelekt_"

--_000_5d5b13deaf074612977477696f3e746ddenue6es007ebgroupelekt_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm building a recipe for a project where the final product will depends on
The fact that some dependencies are satisfied of not.
I would like to know I there is an environment variables that list all PROV=
IDES from all the layers,
in order to parse it and get the dependencies.

J=E9r=F4me Haxhiaj
Software Engineer

EB - Driving the Future of Automotive Software
Frankfurter Ring 117, 80807 M=FCnchen, Germany


--_000_5d5b13deaf074612977477696f3e746ddenue6es007ebgroupelekt_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi, <br>
I&#8217;m building a recipe for a project where the final product will depe=
nds on <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The fact that some dependencies=
 are satisfied of not.<br>
I would like to know I there is an environment variables that list all PROV=
IDES from all the layers,<br>
in order to parse it and get the dependencies.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">J=E9r=F4me Haxhiaj<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Software Engineer<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">EB</span></b><span lang=3D"E=
N-US"> &#8211; Driving the Future of Automotive Software<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Frankfurter Ring 117, 80807 M=
=FCnchen, Germany<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_5d5b13deaf074612977477696f3e746ddenue6es007ebgroupelekt_--
