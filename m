Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F8C5E00BBF; Fri,  9 Nov 2018 01:24:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1FFCE00ABE
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 01:24:57 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Nov 2018 01:24:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,483,1534834800"; 
	d="scan'208,217";a="107220820"
Received: from kmsmsx152.gar.corp.intel.com ([172.21.73.87])
	by orsmga002.jf.intel.com with ESMTP; 09 Nov 2018 01:24:55 -0800
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.219]) by
	KMSMSX152.gar.corp.intel.com ([169.254.11.106]) with mapi id
	14.03.0415.000; Fri, 9 Nov 2018 17:24:54 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Eggleton, Paul"
	<paul.eggleton@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "Graydon, Tracy"
	<tracy.graydon@intel.com>, "Erway, Tracey M" <tracey.m.erway@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA cycle report for 2.6 M4 RC1
Thread-Index: AdR4BseSe6jjAhzQQT6ta1lqj3rQ/A==
Date: Fri, 9 Nov 2018 09:24:53 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
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
Subject: QA cycle report for 2.6 M4 RC1
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
X-List-Received-Date: Fri, 09 Nov 2018 09:24:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_015AB11D45F2C442929CB2765DAE738634CE695EPGSMSX110garcor_"

--_000_015AB11D45F2C442929CB2765DAE738634CE695EPGSMSX110garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



Hello All,



This is the full report for 2.6 M4 RC1:

https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_=
M4_RC1





Summary



All planned tests were executed.



Total Test Executed - 3339

Passed Test - 3322

Failed Test - 7

Blocked Test - 4



There were zero high priority defect.  Team had found 4 new defects.

ptest for 1 module failed in current release but passed in previous 2.6 M3 =
rc1.  For Openssl no test was executed in current release as well as previo=
us release. Present status of bugs for respective modules is as  follows:



ModuleName  -  BugId  -  Present Status



gstreamer        - 12990     - New



Note: For busybox, pass rate is lower than previous release, but no test ca=
ses which passes in previous release failed in current release. Lower pass =
rate is due to new test cases added in this release. No bug filed.



Performance test



 rootfs performance on ubuntu1604 upgraded by  13.04% in 2.6 M3 RC1 w.r.t. =
2.6 M2 RC1



QA-Hints



For performance test, in this release, QA team has performed analysis on re=
sults from "yocto-perf" mailing list, rather than on results from Linux fou=
ndation machines.
We observed two major difference between machines used to run Performance t=
est by "yocto-perf" mailing list and Linux Foundation machines:

1) Mailing List data points was not constant, sometime more, sometime less
2) Mailing List used machine with different spec



New Bugs



[1] Bug 12974 -  [2.6 M4 RC1] [OE-Core] Crosstap doesn't work on 2.6 M4 RC1

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12974



 [2] Bug 129<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12952>79 -=
 [2.6 M4 rc1] test_recipetool_create_cmake failed on Fedora 27

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12979


[3] Bug 129<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12946>91 - =
[2.6 M4 RC1][Build-Appliance] Bitbake build-appliance-image getting failed =
during building image due to webkitgtk package
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991

[4] Bug 129<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12954>92 - =
[2.6 M4 rc1] test_devtool_add_fetch_git failed on Fedora 27
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12992

Thanks & Regards,
Sangeeta Jain


--_000_015AB11D45F2C442929CB2765DAE738634CE695EPGSMSX110garcor_
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
<p class=3D"MsoNormal"><a name=3D"_____replyseparator"></a><o:p>&nbsp;</o:p=
></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Hello All,<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">This is the full report for 2.6 M4 RC1:&nbsp;
<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://wiki.yocto=
project.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1"><span lang=
=3D"EN-US">https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test=
_Cycle_2.6_M4_RC1</span></a><span lang=3D"EN-US" style=3D"color:black"><o:p=
></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black"><o:p>&nbsp;</o:p></span></p>
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
"color:black">Total Test Executed &#8211; 3339<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Passed Test &#8211; 3322<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Failed Test &#8211; 7<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">Blocked Test - 4<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif;color:black">There were z=
ero high priority defect.&nbsp; Team had found 4 new defects. <o:p></o:p></=
span></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif;color:black">ptest for 1<=
/span><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quo=
t;,serif"> module</span><span lang=3D"EN-US" style=3D"font-size:12.0pt;font=
-family:&quot;Times New Roman&quot;,serif;color:black"> failed in current r=
elease but passed in previous 2.6 M3 rc1.&nbsp;&nbsp;For Openssl no test wa=
s executed in current release as well as previous release. </span><span lan=
g=3D"EN-US" style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quo=
t;,serif">Present status of bugs for respective modules is as <span style=
=3D"color:black">&nbsp;</span>follows:<o:p></o:p></span></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p>&nbsp;</o:p></span>=
</pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif">ModuleName &nbsp;&#8211;=
 &nbsp;BugId &nbsp;&#8211; &nbsp;Present Status<o:p></o:p></span></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p>&nbsp;</o:p></span>=
</pre>
<pre style=3D"background:white"><span style=3D"font-size:12.0pt;font-family=
:&quot;Times New Roman&quot;,serif;color:black">gstreamer &nbsp;&nbsp;&nbsp=
;&nbsp;</span><span style=3D"font-size:12.0pt;font-family:&quot;Times New R=
oman&quot;,serif"> <span style=3D"color:black">&nbsp;&nbsp;&#8211; 12990&nb=
sp;&nbsp;&nbsp; &nbsp;- New</span></span><span lang=3D"EN-US" style=3D"font=
-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p></o:p></sp=
an></pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p>&nbsp;</o:p></span>=
</pre>
<pre style=3D"background:white"><span lang=3D"EN-US" style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,serif">Note: For busybox, pass =
rate is lower than previous release, but no test cases which passes in prev=
ious release failed in current release. Lower pass rate is due to new test =
cases added in this release. No bug filed.<o:p></o:p></span></pre>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US">Perfo=
rmance test</span></b><span lang=3D"EN-US">
<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">&nbsp;ro=
otfs performance on ubuntu1604 upgraded by &nbsp;13.04% in 2.6 M3 RC1 w.r.t=
. 2.6 M2 RC1<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black">QA-Hints&nbsp;<o:p></o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black"><o:p>&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">For performance test, in this release, QA team has performed =
analysis on results from &#8220;yocto-perf&#8221; mailing list, rather than=
 on results from Linux foundation machines.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0cm;m=
argin-bottom:2.0pt;margin-left:0cm;text-autospace:none">
<span lang=3D"EN-US" style=3D"color:black">We</span><span style=3D"color:bl=
ack"> observed two major difference between machines used to run Performanc=
e test by
</span><span lang=3D"EN-US" style=3D"color:black">&#8220;yocto-perf&#8221; =
mailing list and </span>
<span style=3D"color:black">Linux Foundation machines:<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0cm;m=
argin-bottom:2.0pt;margin-left:0cm;text-autospace:none">
<span style=3D"color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0cm;m=
argin-bottom:2.0pt;margin-left:0cm;text-autospace:none">
<span style=3D"color:black">1) Mailing List data points was not constant, s=
ometime more, sometime less</span><span lang=3D"EN-US"><o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0cm;m=
argin-bottom:2.0pt;margin-left:0cm;text-autospace:none">
<span style=3D"color:black">2) Mailing List used machine with different spe=
c</span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black"><o:p>&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black">New Bugs<o:p></o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"color:black"><o:p>&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">[1]
</span>Bug&nbsp;12974 - <span style=3D"color:black">&nbsp;[2.6 M4 RC1] [OE-=
Core] Crosstap doesn't work on 2.6 M4 RC1</span><span lang=3D"EN-US" style=
=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D12974"><span lang=3D"EN-US">https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D12974</span></a><span lang=3D"EN-US"=
><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;[2]
</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12952=
"><span lang=3D"EN-US" style=3D"color:black;text-decoration:none">Bug&nbsp;=
129</span></a>79<span lang=3D"EN-US" style=3D"color:black">&nbsp;-&nbsp;[2.=
6 M4 rc1] test_recipetool_create_cmake failed on Fedora 27<o:p></o:p></span=
></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D12979"><span lang=3D"EN-US">https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D12979</span></a><span lang=3D"EN-US"=
><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US" style=
=3D"font-family:&quot;Verdana&quot;,sans-serif;color:black"><o:p>&nbsp;</o:=
p></span></b></p>
<p class=3D"MsoNormal">[3<span lang=3D"EN-US" style=3D"color:black">] </spa=
n><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12946"><sp=
an lang=3D"EN-US" style=3D"color:black;text-decoration:none">Bug&nbsp;129</=
span></a>91 - [2.6 M4 RC1][Build-Appliance] Bitbake
 build-appliance-image getting failed during building image due to webkitgt=
k package<span lang=3D"EN-US" style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D12991">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991=
</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[4] <a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D12954">
<span style=3D"color:windowtext;text-decoration:none">Bug&nbsp;129</span></=
a>92 - [2.6 M4 rc1] test_devtool_add_fetch_git failed on Fedora 27<o:p></o:=
p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D12992">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12992=
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

--_000_015AB11D45F2C442929CB2765DAE738634CE695EPGSMSX110garcor_--
