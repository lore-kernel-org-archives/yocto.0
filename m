Return-Path: <kunwei.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD7264C80BD4
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 04:02:57 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Nov 2010 02:02:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,221,1288594800"; 
	d="scan'208,217";a="575456474"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 19 Nov 2010 02:02:56 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 19 Nov 2010 18:02:00 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 19 Nov 2010 18:01:59 +0800
From: "Tian, Kunwei" <kunwei.tian@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 19 Nov 2010 18:01:58 +0800
Thread-Topic: Sprint A Test Report  for nightly build 20101113
Thread-Index: AcuHyUEndx8ZuXQaTqWkS69c9yvFigAALazgAADV9EAAACa4sAAAiIdQAAADyTA=
Message-ID: <6D7A567890E70E4BA49B8A9B365980FA2F971DE1@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Sprint A Test Report for nightly build 20101113
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
X-List-Received-Date: Fri, 19 Nov 2010 10:02:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6D7A567890E70E4BA49B8A9B365980FA2F971DE1shsmsx501ccrcor_"

--_000_6D7A567890E70E4BA49B8A9B365980FA2F971DE1shsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,all

This is Sprint A Test Report for nightly build 20101113,QA have finished al=
l weekly and sanity test case, the following shows detailed results ,xianch=
ao and Changhui from Windriver are responsible for qemumips/qemuarm/qemuppc=
 test, jiajun and I are responsible for qemux86/qemux86-64/netbook/emenlow =
test.
Because of our test machine(netbook) is broken, we don't execute netbook te=
st plan.
For this test, there is no new bug found, and one previous bug is fixed, Sp=
rint A has the same quality with RC4a.
Bug 160 - [emenlow] command reboot cannot make system reboot entirely.
(http://bugzilla.pokylinux.org/show_bug.cgi?id=3D160)



Test Summary

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Target

weekly and sanity case

Passed

Failed

Blocked

Completion Rate

Pass
rate

Netbook SDK

\

\

\

\

\

\

eMenlow SDK

26

25

1

0

100.00%

96.15%

Qemux86 Sato

9

9

0

0

100.00%

100.00%

Qemux86 LSB

9

9

0

0

100.00%

100.00%

Qemux86 SDK

13

13

0

0

100.00%

100.00%

Qemux86-64 Sato

11

11

0

0

100.00%

100.00%

Qemux86-64 LSB

11

11

0

0

100.00%

100.00%

Qemux86-64 SDK

13

13

0

0

100.00%

100.00%




Images

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
http://autobuilder.pokylinux.org/nightly/20101113-1/


Thanks,
kunwei

--_000_6D7A567890E70E4BA49B8A9B365980FA2F971DE1shsmsx501ccrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle24
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DZH-CN link=3Dblue vlink=3Dpurple style=3D'text-justify-trim:pu=
nctuation'>

<div class=3DWordSection1>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt'>Hi,all<o=
:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt'><o:p>&nb=
sp;</o:p></span></p>

<p class=3DMsoNormal style=3D'text-indent:16.5pt'><span lang=3DEN-US
style=3D'font-size:11.0pt'>This is Sprint A Test Report for nightly build
20101113,QA have finished all weekly and sanity test case, the following sh=
ows
detailed results ,xianchao and Changhui from Windriver are responsible for
qemumips/qemuarm/qemuppc test, jiajun and I are responsible for
qemux86/qemux86-64/netbook/emenlow test.<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-indent:16.5pt'><span lang=3DEN-US
style=3D'font-size:11.0pt'>Because of our test machine(netbook) is broken, =
we
don&#8217;t execute netbook test plan.<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-indent:16.5pt'><span lang=3DEN-US
style=3D'font-size:11.0pt'>For this test, there is no new bug found, and on=
e
previous bug is fixed,</span><span lang=3DEN-US> </span><span lang=3DEN-US
style=3D'font-size:11.0pt'>Sprint A </span><span lang=3DEN-US style=3D'font=
-size:
10.0pt;font-family:"Arial","sans-serif"'>has the same quality with RC4a.</s=
pan><span
lang=3DEN-US style=3D'font-size:11.0pt'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-indent:16.5pt'><span lang=3DEN-US
style=3D'font-size:11.0pt'>Bug 160 - [emenlow] command reboot cannot make s=
ystem
reboot entirely.<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-indent:16.5pt'><span lang=3DEN-US
style=3D'font-size:11.0pt'>(http://bugzilla.pokylinux.org/show_bug.cgi?id=
=3D160)<o:p></o:p></span></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:
"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:11.0pt'>Te=
st Summary<o:p></o:p></span></b></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:11.0pt'>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p><=
/span></b></p>

<table class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 wi=
dth=3D852
 style=3D'width:511.0pt;margin-left:-.9pt;border-collapse:collapse'>
 <tr style=3D'height:17.65pt'>
  <td width=3D155 nowrap valign=3Dbottom style=3D'width:93.0pt;border:solid=
 windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:17.65pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Target<o:p></o:p></span></p>
  </td>
  <td width=3D140 valign=3Dbottom style=3D'width:84.0pt;border:solid window=
text 1.0pt;
  border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:17.65pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt'>weekly and sanity case<o:p></o:p></span></p>
  </td>
  <td width=3D142 valign=3Dbottom style=3D'width:85.0pt;border:solid window=
text 1.0pt;
  border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:17.65pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Passed<o:p></o:p></span></p>
  </td>
  <td width=3D133 valign=3Dbottom style=3D'width:80.0pt;border:solid window=
text 1.0pt;
  border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:17.65pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Failed<o:p></o:p></span></p>
  </td>
  <td width=3D118 valign=3Dbottom style=3D'width:71.0pt;border:solid window=
text 1.0pt;
  border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:17.65pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Blocked<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border:solid windowt=
ext 1.0pt;
  border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:17.65pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Completion Rate<o:p></o:p></span><=
/p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border:solid windowt=
ext 1.0pt;
  border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:17.65pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Pass <o:p></o:p></span></p>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>rate<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:13.95pt'>
  <td width=3D155 nowrap valign=3Dbottom style=3D'width:93.0pt;border:solid=
 windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Netbook SDK<o:p></o:p></span></p>
  </td>
  <td width=3D140 valign=3Dbottom style=3D'width:84.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>\<o:p></o:p></span></p>
  </td>
  <td width=3D142 valign=3Dbottom style=3D'width:85.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:#00B050'>\<o:p></o:p></span></p>
  </td>
  <td width=3D133 valign=3Dbottom style=3D'width:80.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>\<o:p></o:p></span></p>
  </td>
  <td width=3D118 valign=3Dbottom style=3D'width:71.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>\<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>\<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>\<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:13.95pt'>
  <td width=3D155 nowrap valign=3Dbottom style=3D'width:93.0pt;border:solid=
 windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>eMenlow SDK<o:p></o:p></span></p>
  </td>
  <td width=3D140 valign=3Dbottom style=3D'width:84.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>26<o:p></o:p></span></p>
  </td>
  <td width=3D142 valign=3Dbottom style=3D'width:85.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:#00B050'>25<o:p></o:p></span></p>
  </td>
  <td width=3D133 valign=3Dbottom style=3D'width:80.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>1<o:p></o:p></span></p>
  </td>
  <td width=3D118 valign=3Dbottom style=3D'width:71.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>96.15%<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:13.95pt'>
  <td width=3D155 nowrap valign=3Dbottom style=3D'width:93.0pt;border:solid=
 windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Qemux86 Sato<o:p></o:p></span></p>
  </td>
  <td width=3D140 valign=3Dbottom style=3D'width:84.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>9<o:p></o:p></span></p>
  </td>
  <td width=3D142 valign=3Dbottom style=3D'width:85.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:#00B050'>9<o:p></o:p></span></p>
  </td>
  <td width=3D133 valign=3Dbottom style=3D'width:80.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D118 valign=3Dbottom style=3D'width:71.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:13.95pt'>
  <td width=3D155 nowrap valign=3Dbottom style=3D'width:93.0pt;border:solid=
 windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Qemux86 LSB<o:p></o:p></span></p>
  </td>
  <td width=3D140 valign=3Dbottom style=3D'width:84.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>9<o:p></o:p></span></p>
  </td>
  <td width=3D142 valign=3Dbottom style=3D'width:85.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:#00B050'>9<o:p></o:p></span></p>
  </td>
  <td width=3D133 valign=3Dbottom style=3D'width:80.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D118 valign=3Dbottom style=3D'width:71.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:13.95pt'>
  <td width=3D155 nowrap valign=3Dbottom style=3D'width:93.0pt;border:solid=
 windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Qemux86 SDK<o:p></o:p></span></p>
  </td>
  <td width=3D140 valign=3Dbottom style=3D'width:84.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>13<o:p></o:p></span></p>
  </td>
  <td width=3D142 valign=3Dbottom style=3D'width:85.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:#00B050'>13<o:p></o:p></span></p>
  </td>
  <td width=3D133 valign=3Dbottom style=3D'width:80.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D118 valign=3Dbottom style=3D'width:71.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:13.95pt'>
  <td width=3D155 nowrap valign=3Dbottom style=3D'width:93.0pt;border:solid=
 windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Qemux86-64 Sato<o:p></o:p></span><=
/p>
  </td>
  <td width=3D140 nowrap valign=3Dbottom style=3D'width:84.0pt;border-top:n=
one;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid =
windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>11<o:p></o:p></span></p>
  </td>
  <td width=3D142 valign=3Dtop style=3D'width:85.0pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:#00B050'>11<o:p></o:p></span></p>
  </td>
  <td width=3D133 valign=3Dbottom style=3D'width:80.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D118 valign=3Dbottom style=3D'width:71.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:13.95pt'>
  <td width=3D155 nowrap valign=3Dbottom style=3D'width:93.0pt;border:solid=
 windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Qemux86-64 LSB<o:p></o:p></span></=
p>
  </td>
  <td width=3D140 nowrap valign=3Dbottom style=3D'width:84.0pt;border-top:n=
one;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid =
windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>11<o:p></o:p></span></p>
  </td>
  <td width=3D142 valign=3Dtop style=3D'width:85.0pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:#00B050'>11<o:p></o:p></span></p>
  </td>
  <td width=3D133 valign=3Dbottom style=3D'width:80.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D118 valign=3Dbottom style=3D'width:71.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:13.95pt'>
  <td width=3D155 nowrap valign=3Dbottom style=3D'width:93.0pt;border:solid=
 windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>Qemux86-64 SDK<o:p></o:p></span></=
p>
  </td>
  <td width=3D140 valign=3Dbottom style=3D'width:84.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>13<o:p></o:p></span></p>
  </td>
  <td width=3D142 valign=3Dbottom style=3D'width:85.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:#00B050'>13<o:p></o:p></span></p>
  </td>
  <td width=3D133 valign=3Dbottom style=3D'width:80.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D118 valign=3Dbottom style=3D'width:71.0pt;border-top:none;bor=
der-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:red'>0<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
  <td width=3D82 valign=3Dbottom style=3D'width:49.0pt;border-top:none;bord=
er-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.95pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;color:black'>100.00%<o:p></o:p></span></p>
  </td>
 </tr>
</table>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:11.0pt;fon=
t-family:
"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></b></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:11.0pt'>Im=
ages<o:p></o:p></span></b></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:11.0pt'>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p><=
/span></b></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt'><a
href=3D"http://autobuilder.pokylinux.org/nightly/20101113-1/">http://autobu=
ilder.pokylinux.org/nightly/20101113-1/</a><o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Thanks,<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>kunwei<o:p></o:p></span></p>

</div>

</body>

</html>

--_000_6D7A567890E70E4BA49B8A9B365980FA2F971DE1shsmsx501ccrcor_--
