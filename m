Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 317F7E01732
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 10:45:08 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 13 Nov 2013 10:45:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,693,1378882800"; 
	d="scan'208,217";a="427080346"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga001.fm.intel.com with ESMTP; 13 Nov 2013 10:44:51 -0800
Received: from irsmsx106.ger.corp.intel.com (163.33.3.31) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 13 Nov 2013 18:44:50 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.89]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.197]) with mapi id
	14.03.0123.003; Wed, 13 Nov 2013 18:44:32 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Dilip Kumar <008dilip@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] QA Tests in Yocto development environment block diagram
Thread-Index: AQHO4CjI2DYSlaVkwUOZhCqQQQ+nSZojf0hg
Date: Wed, 13 Nov 2013 18:44:28 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F95667@IRSMSX104.ger.corp.intel.com>
References: <CABmxB3MGuNu-AppvDGujjgQFU9X5NAu9J2W269DGEK36B8wAeg@mail.gmail.com>
In-Reply-To: <CABmxB3MGuNu-AppvDGujjgQFU9X5NAu9J2W269DGEK36B8wAeg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: QA Tests in Yocto development environment block diagram
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
X-List-Received-Date: Wed, 13 Nov 2013 18:45:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F95667IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F95667IRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Our overall testing plan is available here: https://wiki.yoctoproject.org/w=
iki/Yocto_1.6_Overall_Test_Plan. Since we are in the last phase of planning=
 for 1.6, this is not the final version yet.

Regarding the test cases, all you have to do is to have an account in our b=
ug tracking website https://bugzilla.yoctoproject.org/ and follow the instr=
uctions in the Testopia wiki, our test case platform management system: htt=
ps://wiki.yoctoproject.org/wiki/Testopia. There you can find the tests perf=
ormed against the Yocto Project components.

Regards,
--
Alexandru Georgescu

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Dilip Kumar
Sent: Wednesday, November 13, 2013 06:27
To: yocto@yoctoproject.org
Subject: [yocto] QA Tests in Yocto development environment block diagram


Dear all,

I need know what is QA tests and what all the tests it will do and need to =
know more information about QA please help me out in this.

regards
dilip kumar b

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F95667IRSMSX104gercor_
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Our overall testing plan =
is available here:
<a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.6_Overall_Test_Plan">=
https://wiki.yoctoproject.org/wiki/Yocto_1.6_Overall_Test_Plan</a>. Since w=
e are in the last phase of planning for 1.6, this is not the final version =
yet.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regarding the test cases,=
 all you have to do is to have an account in our bug tracking website
<a href=3D"https://bugzilla.yoctoproject.org/">https://bugzilla.yoctoprojec=
t.org/</a> and follow the instructions in the Testopia wiki, our test case =
platform management system:
<a href=3D"https://wiki.yoctoproject.org/wiki/Testopia">https://wiki.yoctop=
roject.org/wiki/Testopia</a>. There you can find the tests performed agains=
t the Yocto Project components.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#7F7F7F">--<o:p></o:p></span></b=
></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#7F7F7F">Alexandru Georgescu<o:p=
></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Dilip Kumar<br>
<b>Sent:</b> Wednesday, November 13, 2013 06:27<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] QA Tests in Yocto development environment block dia=
gram<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Dear all,<o:p></o:p></p>
<p>I need know what is QA tests and what all the tests it will do and need =
to know more information about QA please help me out in this.<o:p></o:p></p=
>
<p>regards <br>
dilip kumar b<o:p></o:p></p>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F95667IRSMSX104gercor_--
