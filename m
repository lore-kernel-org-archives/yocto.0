Return-Path: <MANIMEHALAI.SELVARAJ@lnttechservices.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [203.199.60.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC28DE008C3
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 02:27:48 -0800 (PST)
Received: from unknown (HELO POCITMSEXHUB02.LntUniverse.com) ([10.2.1.59])
	by mailout2.ltindia.com with ESMTP; 25 Feb 2014 15:57:45 +0530
Received: from POCITMSEXMB06.LntUniverse.com ([fe80::7871:7933:7aa5:96ea]) by
	POCITMSEXHUB02.LntUniverse.com ([::1]) with mapi id 14.03.0169.001;
	Tue, 25 Feb 2014 15:57:44 +0530
From: Manimehalai S <MANIMEHALAI.SELVARAJ@LNTTECHSERVICES.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Basic query regarding porting
Thread-Index: Ac8yE5J5oeWfb3u4S827dbfnDd+gtw==
Date: Tue, 25 Feb 2014 10:27:44 +0000
Message-ID: <921B4CADE3939E41A17374DDCEBA12813A3FF7@POCITMSEXMB06.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.1.199]
MIME-Version: 1.0
Subject: Basic query regarding porting
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
X-List-Received-Date: Tue, 25 Feb 2014 10:27:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_921B4CADE3939E41A17374DDCEBA12813A3FF7POCITMSEXMB06LntU_"

--_000_921B4CADE3939E41A17374DDCEBA12813A3FF7POCITMSEXMB06LntU_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am new to yocto. Consider that we are developing a new board based on TI'=
s beagle board. How should I start porting to the new board in Yocto.

Thanks

Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s). If you are not the intended recipient, please do not use=
 or disseminate the information, notify the sender and delete it from your =
system.

--_000_921B4CADE3939E41A17374DDCEBA12813A3FF7POCITMSEXMB06LntU_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	margin-bottom:12.0pt;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Trebuchet MS","sans-serif";
	color:windowtext;}
span.vote-count-post4
	{mso-style-name:vote-count-post4;
	color:#808185;
	font-weight:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
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
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">Hi all,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">I am new to yocto. Consider that w=
e are developing a new board based on TI&#8217;s beagle board. How should I=
 start porting to the new board in Yocto.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">Thanks<o:p></o:p></span></p>
</div>
<p><span style=3D"color: #000000"><strong>Larsen &amp; Toubro Limited </str=
ong></span><br>
<br>
<strong><a href=3D"www.larsentoubro.com" target=3D"_blank">www.larsentoubro=
.com</a></strong></p>
<p><span style=3D"color: #000000">This Email may contain confidential or pr=
ivileged information for the intended recipient (s). If you are not the int=
ended recipient, please do not use or disseminate the information, notify t=
he sender and delete it from your
 system.</span></p>
</body>
</html>

--_000_921B4CADE3939E41A17374DDCEBA12813A3FF7POCITMSEXMB06LntU_--
