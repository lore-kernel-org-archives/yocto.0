Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 908AFE00CEA; Fri, 14 Dec 2018 00:20:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1C13E003E1
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2018 00:20:56 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2018 00:20:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,352,1539673200"; 
	d="scan'208,217";a="283522059"
Received: from pgsmsx107.gar.corp.intel.com ([10.221.44.105])
	by orsmga005.jf.intel.com with ESMTP; 14 Dec 2018 00:20:54 -0800
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.185]) by
	PGSMSX107.gar.corp.intel.com ([169.254.7.139]) with mapi id
	14.03.0415.000; Fri, 14 Dec 2018 16:20:53 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Eggleton, Paul"
	<paul.eggleton@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "Graydon, Tracy"
	<tracy.graydon@intel.com>, "Erway, Tracey M" <tracey.m.erway@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA cycle report for 2.5.2  RC1
Thread-Index: AdSTheYCVqta2Pt/TmKcuVhClheHGQ==
Date: Fri, 14 Dec 2018 08:20:52 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634D13281@PGSMSX110.gar.corp.intel.com>
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
Subject: QA cycle report for 2.5.2 RC1
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
X-List-Received-Date: Fri, 14 Dec 2018 08:20:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_015AB11D45F2C442929CB2765DAE738634D13281PGSMSX110garcor_"

--_000_015AB11D45F2C442929CB2765DAE738634D13281PGSMSX110garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



Hello All,



This is the full report for 2.5.2 RC1:

https://wiki.yoctoproject.org/wiki/WW49_-_2018-12-06-_Full_Test_Cycle_-_2.5=
.2_rc1





Summary



All planned tests were executed.



Total Test Executed - 3389

Passed Test - 3374

Failed Test - 10

Blocked Test - 5



Team had found no new defects.

Test cases failing because of bugs which are not new.



ptest



ptest for 3 module failed in current release but passed in previous 2.5.1 r=
c1.  Present status of bugs for respective modules is as follows:



ModuleName  -  BugId  -  Present Status



perl        - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13075    =
  - New

python - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13076 - Resolv=
ed

tcl - https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13077 - New





Performance test



 rootfs performance on ubuntu1604 upgraded by 11.65% in 2.5.2 RC1 w.r.t. 2.=
5.1RC1.





QA-Hints



For Bug id 12914, https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12914

Regression on previous release and further investigation is in progress to =
confirm the issue





Bugs (Not New)



[1] Bug 12991 -  [2.6 M4 RC1][Build-Appliance] Bitbake build-appliance-imag=
e getting failed during building image due to webkitgtk package

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991



 [2] Bug 12<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12952>499 -=
 [2.5 M1 RC3] qemuarm: failed to shutdown

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12499


[3] Bug 12<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12946>666 - =
[2.5 M3 RC1] BSP-QEMU:core-image-sato-sdk-genericx86-64.hddimg unable to co=
nnect to console  with serial on Minnowboard Turbot
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12666

[4] Bug 129<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12954>14 - =
[2.6 M2 RC1][Meta-Intel 10.0][NUC7 & Mturbot][Test case 197] reboot command=
 missing while installing image
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12914

Thanks & Regards,
Sangeeta Jain


--_000_015AB11D45F2C442929CB2765DAE738634D13281PGSMSX110garcor_
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
"color:black">This is the full report for 2.</span><span lang=3D"EN-US">5.2=
 R<span style=3D"color:black">C1:&nbsp;
<o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><a href=
=3D"https://wiki.yoctoproject.org/wiki/WW49_-_2018-12-06-_Full_Test_Cycle_-=
_2.5.2_rc1">https://wiki.yoctoproject.org/wiki/WW49_-_2018-12-06-_Full_Test=
_Cycle_-_2.5.2_rc1</a><o:p></o:p></span></p>
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
"color:black">Total Test Executed &#8211; 33</span><span lang=3D"EN-US">89<=
span style=3D"color:black"><o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Passed Test &#8211; 33</span><span lang=3D"EN-US">74<span sty=
le=3D"color:black"><o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Failed Test &#8211;
</span><span lang=3D"EN-US">10<span style=3D"color:black"><o:p></o:p></span=
></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Blocked Test -
</span><span lang=3D"EN-US">5<span style=3D"color:black"><o:p></o:p></span>=
</span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif;color:black">Team had fou=
nd </span><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-family:&quot;=
Times New Roman&quot;,serif">no<span style=3D"color:black"> new defects. <o=
:p></o:p></span></span></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:11.=
0pt;font-family:&quot;Calibri&quot;,sans-serif">Test cases failing because =
of bugs which are not new.<o:p></o:p></span></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:11.=
0pt;font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p=
re>
<pre style=3D"background:white"><b><span lang=3D"EN-US" style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,sans-serif">ptest<o:p></o:p></span><=
/b></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:11.=
0pt;font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p=
re>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif;color:black">ptest for </=
span><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-family:&quot;Times=
 New Roman&quot;,serif">3</span><span style=3D"font-size:12.0pt;font-family=
:&quot;Times New Roman&quot;,serif"> module</span><span lang=3D"EN-US" styl=
e=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;color:b=
lack"> failed in current release but passed in previous 2.</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot=
;,serif">5.1<span style=3D"color:black"> rc1.&nbsp;&nbsp;</span>Present sta=
tus of bugs for respective modules is as follows:<o:p></o:p></span></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p>&nbsp;</o:p></span>=
</pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif">ModuleName &nbsp;&#8211;=
 &nbsp;BugId &nbsp;&#8211; &nbsp;Present Status<o:p></o:p></span></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p>&nbsp;</o:p></span>=
</pre>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"font-size:12.0=
pt;font-family:&quot;Times New Roman&quot;,serif">perl<span style=3D"color:=
black"> &nbsp;&nbsp;&nbsp;&nbsp;</span>
<span style=3D"color:black">&nbsp;&nbsp;&#8211; </span></span><span style=
=3D"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;position:rela=
tive;top:-1.5pt;mso-text-raise:1.5pt"><a href=3D"https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D13075">https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D13075</a>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&qu=
ot;,serif;color:black">&nbsp;&nbsp;&nbsp; &nbsp;- New</span><span style=3D"=
font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p></o:p>=
</span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">python -=
 </span><span style=3D"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-=
serif;position:relative;top:-1.5pt;mso-text-raise:1.5pt"><a href=3D"https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D13076">https://bugzilla.yoctop=
roject.org/show_bug.cgi?id=3D13076</a>
 &#8211; Resolved<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"font-size:10.5=
pt;font-family:&quot;Arial&quot;,sans-serif;position:relative;top:-1.5pt;ms=
o-text-raise:1.5pt">tcl -
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13077">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13077</a> - New<o:p></o:p></=
span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"font-size:10.5=
pt;font-family:&quot;Arial&quot;,sans-serif;position:relative;top:-1.5pt;ms=
o-text-raise:1.5pt"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US">Perfo=
rmance test</span></b><span lang=3D"EN-US">
<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">&nbsp;ro=
otfs performance on ubuntu1604 upgraded by 11.65% in 2.5.2 RC1 w.r.t. 2.5.1=
RC1.
<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black">QA-Hints&nbsp;<o:p></o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US"><o:p>=
&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">For Bug =
id 12914, <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12=
914">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12914</a><o:p></o:p></s=
pan></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">Regressi=
on on previous release and further investigation is in progress to confirm =
the issue<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US"><o:p>=
&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black"><o:p>&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black">Bugs</span></b><b><span lang=3D"EN-US"> (Not New)<span sty=
le=3D"color:black"><o:p></o:p></span></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black"><o:p>&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">[1]
</span>Bug&nbsp;12991 - <span style=3D"color:black">&nbsp;</span>[2.6 M4 RC=
1][Build-Appliance] Bitbake build-appliance-image getting failed during bui=
lding image due to webkitgtk package<span lang=3D"EN-US" style=3D"color:bla=
ck"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991">https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D12991</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;[2]
</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12952=
"><span lang=3D"EN-US" style=3D"color:black;text-decoration:none">Bug&nbsp;=
12</span></a>499<span lang=3D"EN-US" style=3D"color:black">&nbsp;</span><sp=
an lang=3D"EN-US">&#8211;<span style=3D"color:black">&nbsp;</span>[2.5
 M1 RC3] qemuarm: failed to shutdown<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D12499">https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D12499</a><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US"><o:p>=
&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal">[3<span lang=3D"EN-US" style=3D"color:black">] </spa=
n><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12946"><sp=
an lang=3D"EN-US" style=3D"color:black;text-decoration:none">Bug&nbsp;12</s=
pan></a>666 - [2.5 M3 RC1] BSP-QEMU:core-image-sato-sdk-genericx86-64.hddim=
g
 unable to connect to console&nbsp; with serial on Minnowboard Turbot<span =
lang=3D"EN-US" style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D12666">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12666=
</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[4] <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D12954">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;129</span></=
a>14 - [2.6 M2 RC1][Meta-Intel 10.0][NUC7 &amp; Mturbot][Test case 197] reb=
oot command missing while installing image<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D12914">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12914=
</a><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks &amp; Regards,<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sangeeta Jain<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_015AB11D45F2C442929CB2765DAE738634D13281PGSMSX110garcor_--
