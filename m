Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0D4DE00B3F; Mon, 21 Jan 2019 23:58:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAFB8E006F1
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 23:58:47 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Jan 2019 23:58:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,505,1539673200"; 
	d="scan'208,217";a="140229047"
Received: from pgsmsx113.gar.corp.intel.com ([10.108.55.202])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2019 23:58:45 -0800
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.7]) by
	pgsmsx113.gar.corp.intel.com ([169.254.6.94]) with mapi id
	14.03.0415.000; Tue, 22 Jan 2019 15:58:44 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"'richard.purdie@linuxfoundation.org'"
	<richard.purdie@linuxfoundation.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>
Thread-Topic: QA cycle report for 2.6.1 RC1
Thread-Index: AdSyKD5yjryHymWZQrOMYRg1X1ZxbA==
Date: Tue, 22 Jan 2019 07:58:43 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634D49B59@PGSMSX110.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTcwZjFmNDgtZmQ2Yy00MzNmLTk0M2EtYzY2N2UyNDQ1MGNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY216dEdDMjRGU3FGTVBBcGNqMlwvendnc25razYrRFAyaWhNMzhtNmdyNm9VZVwvUFwvVUF3THZodHNXMVZ3K0dHZSJ9
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: OTC Embedded Malaysia <otc.embedded.malaysia@intel.com>, "Kirkiris,
	Nectar" <nectar.kirkiris@intel.com>
Subject: QA cycle report for 2.6.1 RC1
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
X-List-Received-Date: Tue, 22 Jan 2019 07:58:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_015AB11D45F2C442929CB2765DAE738634D49B59PGSMSX110garcor_"

--_000_015AB11D45F2C442929CB2765DAE738634D49B59PGSMSX110garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



Hello All,



This is the full report for 2.6.1 RC1:



https://wiki.yoctoproject.org/wiki/WW02_-_2019-01-09_-_Full_Test_Cycle_2.6.=
1_RC1





=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



All planned tests were executed.

Total Test Executed - 3650

Passed Test - 3422

Failed Test - 210

Blocked Test - 12





There were zero high milestone defect.  Team had found 1 new defects coming=
 from missing package 'gpg' [1].



For ptest, team had confirmed that there were no tests which passed in 2.6 =
M4 while failed in current 2.6.1 rc1. Issues in qa-tools/ptest-parser scrip=
t used to generate comparison table is fixed and script is now working fine=
.





=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



No high milestone defect.
One of the SDK test cases "/poky/meta/lib/oeqa/sdk/cases/python.py", while =
executed, is giving a result "unknown". We are not sure about the reason of=
 this behavior and investigating more into it. This test case is a part of =
seven ADT test plans.



=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



New Bugs

[1] Bug 13143 - [Bug] [2.6.1 rc1] bitbake core-image-minimal failed because=
 no module named 'gpg' on CentOS 7 and OpenSuse 42.3

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13143



Previous Bugs observed in this release:



[2] Bug 13102 - [Bug][QA 2.7 M1 rc1][Toaster] All layers are not getting po=
pulated after clicking "View compatible layers" on project page

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13102



[3] Bug 13103 - [Bug][QA 2.7 M1 rc1][Toaster] "Recipes" table  and  "machin=
es" table are not getting populated after clicking on imported layer as wel=
l as after clicking Machines Tab on project page

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103



[4] Bug 13104 - [Bug][QA 2.7 M1 rc1][Toaster] All "Image Recipes" are not g=
etting populated after clicking  "Image Recipes"  on project page

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13104



[5] Bug 12991<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991> - =
[Bug] [2.6 M4 RC1][Build-Appliance] Bitbake build-appliance-image getting f=
ailed during building image due to webkitgtk package.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991



[6] Bug 12499<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991> - =
[Bug] [2.5 M1 RC3] qemuarm: failed to shutdown.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12499




Thanks & Regards,
Sangeeta Jain


--_000_015AB11D45F2C442929CB2765DAE738634D49B59PGSMSX110garcor_
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle23
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
"color:black">This is the full report for 2.</span><span lang=3D"EN-US">6.1=
<span style=3D"color:black"> RC1:&nbsp;
<o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><a href=
=3D"https://wiki.yoctoproject.org/wiki/WW02_-_2019-01-09_-_Full_Test_Cycle_=
2.6.1_RC1">https://wiki.yoctoproject.org/wiki/WW02_-_2019-01-09_-_Full_Test=
_Cycle_2.6.1_RC1</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p></=
o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">All planned tests were executed.<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black">T=
otal Test Executed - 3</span>650<span style=3D"color:black"><o:p></o:p></sp=
an></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black">P=
assed Test - 3</span>422<span style=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black">F=
ailed Test -
</span>210<span style=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black">B=
locked Test
</span>&#8211;<span style=3D"color:black"> </span>12<span style=3D"color:bl=
ack"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">There were zero high milestone defect.&nbsp; Team had found
</span><span lang=3D"EN-US">1<span style=3D"color:black"> new defects </spa=
n>coming from missing package
<span style=3D"color:black">&#8216;</span>gpg&#8217; <span style=3D"color:b=
lack">[1]. <o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">For ptest, team had confirmed that there were no tests which =
passed in 2.6 M4 while failed in current 2.</span><span lang=3D"EN-US">6.1<=
span style=3D"color:black"> rc1</span>. Issues
 in<span style=3D"color:black"> qa-tools/ptest-parser script used to genera=
te comparison table
</span>is fixed and script is now working fine.<span style=3D"color:black">=
<o:p></o:p></span></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D<o:p></=
o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">No high milestone defect.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:12.0pt"><span lang=3D"EN-US">On=
e of the SDK test cases &#8220;</span><span style=3D"font-size:8.5pt;font-f=
amily:&quot;Arial&quot;,sans-serif">/</span><span lang=3D"EN-US" style=3D"c=
olor:black">poky/meta/lib/oeqa/sdk/cases/python.py&#8221;, while executed,
 is giving a result &#8220;unknown&#8221;. We are not sure about the reason=
 of this behavior and investigating more into it. This test case is a part =
of seven ADT test plans.</span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p=
></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">New Bugs<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">[1] Bug =
13143 &#8211; [Bug] [2.6.1 rc1] bitbake core-image-minimal failed because n=
o module named 'gpg' on CentOS 7 and OpenSuse 42.3<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13143">https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D13143</a><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><b><span lang=3D"EN-US"><o:p>=
&nbsp;</o:p></span></b></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US">Previous=
 Bugs observed in this release:<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US"><o:p>&nb=
sp;</o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">[</span><span lang=3D"EN-US">2<span style=3D"color:black">]
</span></span><span style=3D"color:black">Bug 13102 - [Bug][QA 2.7 M1 rc1][=
Toaster] All layers are not getting populated after clicking &quot;View com=
patible layers&quot; on project page
</span><span lang=3D"EN-US" style=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black"><=
a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13102">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D13102</a><o:p></o:p></span></=
p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">[</span><span lang=3D"EN-US">3<span style=3D"color:black">]
</span></span><span style=3D"color:black">Bug 13103 - [Bug][QA 2.7 M1 rc1][=
Toaster] &quot;Recipes&quot; table&nbsp; and&nbsp; &quot;machines&quot; tab=
le are not getting populated after clicking on imported layer as well as af=
ter clicking Machines Tab on project page</span><span lang=3D"EN-US" style=
=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black"><=
a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103</a><o:p></o:p></span></=
p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black">&=
nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">[</span><span lang=3D"EN-US">4<span style=3D"color:black">]
</span></span><span style=3D"color:black">Bug 13104 - [Bug][QA 2.7 M1 rc1][=
Toaster] All &quot;Image Recipes&quot; are not getting populated after clic=
king&nbsp; &quot;Image Recipes&quot;&nbsp; on project page
</span><span lang=3D"EN-US" style=3D"color:black"><o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"color:black"><=
a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13104">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D13104</a><o:p></o:p></span></=
p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt">[5] <span style=3D"color:blac=
k"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991"><s=
pan style=3D"color:black;text-decoration:none">Bug&nbsp;12991</span></a>&nb=
sp;-&nbsp;[Bug] [2.6 M4 RC1][Build-Appliance] Bitbake build-appliance-image
 getting failed during building image due to webkitgtk package.<o:p></o:p><=
/span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D12991">https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D12991</a><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt">[6] <span style=3D"color:blac=
k"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991"><s=
pan style=3D"color:black;text-decoration:none">Bug&nbsp;12499</span></a>&nb=
sp;-&nbsp;[Bug] [2.5 M1 RC3] qemuarm: failed to shutdown.<o:p></o:p></span>=
</p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D12499">https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D12499</a><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span lang=3D"EN-US" style=3D=
"color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks &amp; Regards,<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sangeeta Jain<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
</div>
</body>
</html>

--_000_015AB11D45F2C442929CB2765DAE738634D49B59PGSMSX110garcor_--
