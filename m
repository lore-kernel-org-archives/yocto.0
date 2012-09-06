Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34BF0E014FB
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 09:32:17 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Sep 2012 09:32:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,380,1344236400"; 
	d="scan'208,217";a="189704051"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 06 Sep 2012 09:32:16 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 6 Sep 2012 09:32:16 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.204]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.146]) with mapi id
	14.01.0355.002; Thu, 6 Sep 2012 09:32:16 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Chris Conlon <chris@yassl.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: CyaSSL Yocto Recipe
Thread-Index: AQHNjEmaxXQiIBePs0u63Ibmqcm8cZd9gPRA
Date: Thu, 6 Sep 2012 16:32:16 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C0CCBAAD9@ORSMSX106.amr.corp.intel.com>
References: <AA149620-AFAF-4670-8666-A34E500ADA75@yassl.com>
In-Reply-To: <AA149620-AFAF-4670-8666-A34E500ADA75@yassl.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: CyaSSL Yocto Recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Sep 2012 16:32:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ADD6A3980E8C39419A432FF422031B4C0CCBAAD9ORSMSX106amrcor_"

--_000_ADD6A3980E8C39419A432FF422031B4C0CCBAAD9ORSMSX106amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

And here is bit of information about CyaSSL from their website. http://www.=
yassl.com/yaSSL/Products-cyassl.html

The CyaSSL embedded SSL library is a lightweight SSL library written in ANS=
I C and targeted for embedded and RTOS environments - primarily because of =
its small size, speed, and feature set.  It is commonly used in standard op=
erating environments as well because of its royalty-free pricing and excell=
ent cross platform support.  CyaSSL supports industry standards up to the c=
urrent TLS 1.2 level, is up to 20 times smaller than OpenSSL, and offers pr=
ogressive ciphers such as HC-128, RABBIT, and NTRU.  User benchmarking and =
feedback reports dramatically better performance when using CyaSSL over Ope=
nSSL.

Thanks,
Nitin

From: Chris Conlon [mailto:chris@yassl.com]
Sent: Thursday, September 06, 2012 9:07 AM
To: yocto@yoctoproject.org
Cc: Kamble, Nitin A
Subject: CyaSSL Yocto Recipe

Hi,

As per discussions with a few of the Yocto members, we have put together a =
Yocto Project recipe for the CyaSSL embedded SSL library.  I have attached =
the recipe here for review and comments.

Thanks,

Chris Conlon
www.yassl.com<http://www.yassl.com>
chris@yassl.com<mailto:chris@yassl.com>
Skype: chris_conlon_07
+1 406 209 0601


--_000_ADD6A3980E8C39419A432FF422031B4C0CCBAAD9ORSMSX106amrcor_
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
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.style7
	{mso-style-name:style_7;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">And here is bit of inform=
ation about CyaSSL from their website.
<a href=3D"http://www.yassl.com/yaSSL/Products-cyassl.html">http://www.yass=
l.com/yaSSL/Products-cyassl.html</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal">The CyaSSL embedded SSL library is a lightweight SSL=
 library written in ANSI C and targeted for embedded and RTOS environments =
- primarily because of its small size, speed, and feature set. &nbsp;It is =
commonly used in standard operating environments
 as well because of its royalty-free pricing and excellent cross platform s=
upport.&nbsp; CyaSSL supports industry standards up to the current TLS 1.2 =
level, is up to<span class=3D"style7"> 20 times smaller than OpenSSL</span>=
, and offers progressive ciphers such as
 HC-128, RABBIT, and NTRU.&nbsp; User benchmarking and feedback reports dra=
matically better performance when using CyaSSL over OpenSSL.<span style=3D"=
font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;col=
or:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Nitin<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Chris Co=
nlon [mailto:chris@yassl.com]
<br>
<b>Sent:</b> Thursday, September 06, 2012 9:07 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Cc:</b> Kamble, Nitin A<br>
<b>Subject:</b> CyaSSL Yocto Recipe<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.0pt">Hi,<br>
<br>
As per discussions with a few of the Yocto members, we have put together a =
Yocto Project recipe for the CyaSSL embedded SSL library.&nbsp; I have atta=
ched the recipe here for review and comments.<br>
<br>
Thanks,<br>
<br>
Chris Conlon<br>
<a href=3D"http://www.yassl.com">www.yassl.com</a><br>
<a href=3D"mailto:chris@yassl.com">chris@yassl.com</a><br>
Skype: chris_conlon_07<br>
&#43;1 406 209 0601<o:p></o:p></span></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_ADD6A3980E8C39419A432FF422031B4C0CCBAAD9ORSMSX106amrcor_--
