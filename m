Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94C0DE00C1F; Thu, 22 Nov 2018 19:23:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73298E00A85
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 19:23:04 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Nov 2018 19:23:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,268,1539673200"; 
	d="scan'208,217";a="251927916"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by orsmga004.jf.intel.com with ESMTP; 22 Nov 2018 19:23:02 -0800
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.219]) by
	PGSMSX101.gar.corp.intel.com ([169.254.1.244]) with mapi id
	14.03.0415.000; Fri, 23 Nov 2018 11:23:01 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Eggleton, Paul"
	<paul.eggleton@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "Graydon, Tracy"
	<tracy.graydon@intel.com>, "Erway, Tracey M" <tracey.m.erway@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA cycle report for 2.4.4 RC1
Thread-Index: AdSC29L4uuuUDBxeT+i5N9NtPzn21A==
Date: Fri, 23 Nov 2018 03:23:00 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634CEF595@PGSMSX110.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTk0YjQxZGYtYWRiNC00OTM5LWI5MWItNzEzYmY2YTMxMGVhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVG5HYm9JaFlWcGowWlUzZjVPdE95b1dWaitlNEJXeWZUZDYwclwvYURUQXFrbU1MbHpyeDdjWFlmbGsxajNWTVYifQ==
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: QA cycle report for 2.4.4 RC1
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
X-List-Received-Date: Fri, 23 Nov 2018 03:23:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_015AB11D45F2C442929CB2765DAE738634CEF595PGSMSX110garcor_"

--_000_015AB11D45F2C442929CB2765DAE738634CEF595PGSMSX110garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



Hello All,



This is the full report for 2.4.4 RC1:

https://wiki.yoctoproject.org/wiki/WW46_-_2018-11-14_-_Full_Test_Cycle_2.4.=
4_RC1





Summary



All planned tests were executed.



Total Test Executed - 3330

Passed Test - 3318

Failed Test - 8

Blocked Test - 4



There were zero high priority defect.  Team had found 2 new defects.



New Bugs



[1] Bug 13033 -  [2.4.4RC1] [Bitbake] [Case 142] PR number is not getting i=
ncreased with remote server/local client mode

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13033



 [2]Bug 13038 - [2.4.4RC1][Package Management][Getting Error Message "Faile=
d to synchronize cache for repo 'repository'"]

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13038



Thanks & Regards,
Sangeeta Jain


--_000_015AB11D45F2C442929CB2765DAE738634CEF595PGSMSX110garcor_
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
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";
	mso-fareast-language:EN-MY;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle24
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle25
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle26
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle27
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle28
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle30
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-MY" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Hello All,<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">This is the full report for 2.</span><span lang=3D"EN-US">4.4=
 R<span style=3D"color:black">C1:&nbsp;
<o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://wiki.yocto=
project.org/wiki/WW46_-_2018-11-14_-_Full_Test_Cycle_2.4.4_RC1">https://wik=
i.yoctoproject.org/wiki/WW46_-_2018-11-14_-_Full_Test_Cycle_2.4.4_RC1</a><o=
:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black">Summary<o:p></o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">All planned tests were executed.<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Total Test Executed &#8211; 333</span><span lang=3D"EN-US">0<=
span style=3D"color:black"><o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Passed Test &#8211; 33</span><span lang=3D"EN-US">18<span sty=
le=3D"color:black"><o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Failed Test &#8211;
</span><span lang=3D"EN-US">8<span style=3D"color:black"><o:p></o:p></span>=
</span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Blocked Test - 4<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif;color:black">There were z=
ero high priority defect.&nbsp; Team had found </span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif">2<=
span style=3D"color:black"> new defects. <o:p></o:p></span></span></pre>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black">New Bugs<o:p></o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black"><o:p>&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">[1]
</span>Bug&nbsp;13033 - <span style=3D"color:black">&nbsp;</span>[<span lan=
g=3D"EN-US" style=3D"color:black">2.4.4RC1] [Bitbake] [Case 142] PR number =
is not getting increased with remote server/local client mode</span><span l=
ang=3D"EN-US">
</span><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13033">https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D13033</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;[2]</span>Bug 13038<span lang=3D"EN-US" style=3D"color:=
black">&nbsp;</span><span lang=3D"EN-US">- [2.4.4RC1][Package Management][G=
etting Error Message &quot;Failed to synchronize cache for
 repo 'repository'&quot;]<span style=3D"color:black"><o:p></o:p></span></sp=
an></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13038">https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D13038</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"font-family:&quot;Verdana&quot;,sans-serif;color:black"><o:p>&nbsp;</o:=
p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks &amp; Regards,<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sangeeta Jain<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_015AB11D45F2C442929CB2765DAE738634CEF595PGSMSX110garcor_--
