Return-Path: <jiajun.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 299DF4C8120D
	for <yocto@yoctoproject.org>; Wed,  8 Dec 2010 07:43:21 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2010 05:43:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; 
	d="scan'208,217";a="634347216"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2010 05:43:19 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 21:42:20 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Wed, 8 Dec 2010
	21:42:19 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 8 Dec 2010 21:42:18 +0800
Thread-Topic: Weekly Test Report for Yocto Nightly 20101204 Build
Thread-Index: AcuW3btYstfxCt+NR4eHzLUQ9By2Ow==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A314F2BD1@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 08 Dec 2010 20:35:13 -0600
Subject: Weekly Test Report for Yocto Nightly 20101204 Build
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
X-List-Received-Date: Wed, 08 Dec 2010 13:43:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D5AB6E638E5A3E4B8F4406B113A5A19A314F2BD1shsmsx501ccrcor_"

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A314F2BD1shsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

       This is the Weekly Test Report for nightly build 20101204. Toolchain=
 and qemuppc sdk testing is blocked because build for them failed. Netbook =
testing is also blocked because of a new installation bug.

       Other failed cases are caused by known bugs in bugzilla. Zypper stil=
l has issue on ppc platform.



Test Summary
---------------------------------------
Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

Netbook Sato

24

24

0

0

24(bug 566)

eMenlow SDK

24

0

23

1(bug 310)

0

Qemux86-64 Sato

11

0

11

0

0

Qemux86-64 SDK

14

0

14

0

0

Qemux86 Sato

11

0

11

0

0

Qemux86 SDK

14

0

14

0

0

Qemumips Sato

11

0

11

0

0

Qemumips SDK

14

0

14

0

0

Qemuppc Sato

10

0

8

0

2(bug 443)

Qemuppc SDK

13

0

11

0

2(bug 443)

Qemuarm Sato

11

0

11

0

0

Qemuarm SDK

14

0

14

0

0

Total

171

24

142

1

28




Images
---------------------------------------

http://autobuilder.pokylinux.org/nightly/20101204-1/

commit info: 1d505f2e10cf40ae5f6bd111e023a3512fd93f30



Issue Summary
---------------------------------------

New Bugs: [1]

1.     [Netbook] Installer no response after loading from live image

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D566



Other Old bugs: [2]

1.     [eMenlow] i2c_transfer error on e-Menlow

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D310

2.     zypper encounter segfault when startup with qemuppc

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D443



Best Regards,

Jiajun

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A314F2BD1shsmsx501ccrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

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
.MsoChpDefault
	{mso-style-type:export-only;}
 /* Page Definitions */
 @page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
 /* List Definitions */
 @list l0
	{mso-list-id:650252689;
	mso-list-type:hybrid;
	mso-list-template-ids:506200260 -1836055010 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l1
	{mso-list-id:654798985;
	mso-list-type:hybrid;
	mso-list-template-ids:559698152 -912609270 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l2
	{mso-list-id:712535645;
	mso-list-type:hybrid;
	mso-list-template-ids:-1971411750 -1188891600 67698713 67698715 67698703 6=
7698713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l2:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3
	{mso-list-id:993994927;
	mso-list-type:hybrid;
	mso-list-template-ids:1542482642 1649414852 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l3:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l3:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4
	{mso-list-id:1137602466;
	mso-list-type:hybrid;
	mso-list-template-ids:-1975739938 -857568762 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l4:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
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

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>Hi all,<o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is the Week=
ly Test
Report for nightly build 20101204. Toolchain and qemuppc sdk testing is blo=
cked
because build for them failed. Netbook testing is also blocked because of a=
 new
installation bug.<o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Other failed cas=
es
are caused by known bugs in bugzilla. Zypper still has issue on ppc platfor=
m.<o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:
"Arial","sans-serif"'>Test Summary<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>---------------------------------------<o:p></o:p></s=
pan></b></p>

<table class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 wi=
dth=3D738
 style=3D'width:553.6pt;margin-left:-1.15pt;border-collapse:collapse'>
 <tr style=3D'height:39.0pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Target<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border:solid windowtext 1.0pt;border=
-left:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Total TCs</span></b><span lang=3DEN-US style=3D'font-size:10=
.0pt;
  font-family:"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span><=
/p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border:solid windowtext 1.0pt;border=
-left:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Not Run<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border:solid windowtext 1.0pt;border=
-left:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Passed</span></b><span lang=3DEN-US style=3D'font-size:10.0p=
t;
  font-family:"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span><=
/p>
  </td>
  <td width=3D202 style=3D'width:151.85pt;border:solid windowtext 1.0pt;bor=
der-left:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Failed</span></b><span lang=3DEN-US style=3D'font-size:10.0p=
t;
  font-family:"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span><=
/p>
  </td>
  <td width=3D189 style=3D'width:5.0cm;border:solid windowtext 1.0pt;border=
-left:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Not testable (Blocked)</span></b><span lang=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'> =
<b><o:p></o:p></b></span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Netbook Sato<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>2=
4<o:p></o:p></span></p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>2=
4<o:p></o:p></span></p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#35A545'=
>0<o:p></o:p></span></p>
  </td>
  <td width=3D202 style=3D'width:151.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
  <td width=3D189 style=3D'width:5.0cm;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>24(=
bug
  566)<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>eMenlow SDK<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>2=
4<o:p></o:p></span></p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0=
<o:p></o:p></span></p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#35A545'=
>23<o:p></o:p></span></p>
  </td>
  <td width=3D202 style=3D'width:151.85pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>1(b=
ug 310)<o:p></o:p></span></p>
  </td>
  <td width=3D189 style=3D'width:5.0cm;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemux86-64 Sato<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
1<o:p></o:p></span></p>
  </td>
  <td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0=
<o:p></o:p></span></p>
  </td>
  <td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#35A545'=
>11<o:p></o:p></span></p>
  </td>
  <td width=3D202 nowrap style=3D'width:151.85pt;border-top:none;border-lef=
t:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
  <td width=3D189 nowrap style=3D'width:5.0cm;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemux86-64 SDK<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
4<o:p></o:p></span></p>
  </td>
  <td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0=
<o:p></o:p></span></p>
  </td>
  <td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>14<o:p></o:p></span></p>
  </td>
  <td width=3D202 nowrap style=3D'width:151.85pt;border-top:none;border-lef=
t:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
  <td width=3D189 nowrap style=3D'width:5.0cm;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemux86 Sato<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
1<o:p></o:p></span></p>
  </td>
  <td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0=
<o:p></o:p></span></p>
  </td>
  <td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>11<o:p></o:p></span></p>
  </td>
  <td width=3D202 nowrap style=3D'width:151.85pt;border-top:none;border-lef=
t:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
  <td width=3D189 valign=3Dtop style=3D'width:5.0cm;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemux86 SDK<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
4<o:p></o:p></span></p>
  </td>
  <td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0=
<o:p></o:p></span></p>
  </td>
  <td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>14<o:p></o:p></span></p>
  </td>
  <td width=3D202 nowrap style=3D'width:151.85pt;border-top:none;border-lef=
t:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
  <td width=3D189 valign=3Dtop style=3D'width:5.0cm;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemumips Sato<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
1<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0=
<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>11<o:p></o:p></span></p>
  </td>
  <td width=3D202 nowrap style=3D'width:151.85pt;border-top:none;border-lef=
t:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
  <td width=3D189 nowrap style=3D'width:5.0cm;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemumips SDK<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
4<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0=
<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>14<o:p></o:p></span></p>
  </td>
  <td width=3D202 nowrap style=3D'width:151.85pt;border-top:none;border-lef=
t:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
  <td width=3D189 nowrap style=3D'width:5.0cm;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemuppc Sato<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
0<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0=
<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>8<o:p></o:p></span></p>
  </td>
  <td width=3D202 nowrap style=3D'width:151.85pt;border-top:none;border-lef=
t:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
  <td width=3D189 nowrap style=3D'width:5.0cm;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>2(b=
ug 443)<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemuppc SDK<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
3<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0=
<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>11<o:p></o:p></span></p>
  </td>
  <td width=3D202 nowrap style=3D'width:151.85pt;border-top:none;border-lef=
t:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
  <td width=3D189 nowrap style=3D'width:5.0cm;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>2(b=
ug 443)<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemuarm Sato<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
1<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0=
<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>11<o:p></o:p></span></p>
  </td>
  <td width=3D202 nowrap style=3D'width:151.85pt;border-top:none;border-lef=
t:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
  <td width=3D189 nowrap style=3D'width:5.0cm;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemuarm SDK<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
4<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0=
<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>14<o:p></o:p></span></p>
  </td>
  <td width=3D202 nowrap style=3D'width:151.85pt;border-top:none;border-lef=
t:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
  <td width=3D189 nowrap style=3D'width:5.0cm;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p></o:p><=
/span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0p=
t;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Total<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
71</span><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'><o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>2=
4<o:p></o:p></span></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
42</span><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'><o:p></o:p></span></p>
  </td>
  <td width=3D202 nowrap style=3D'width:151.85pt;border-top:none;border-lef=
t:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
<o:p></o:p></span></p>
  </td>
  <td width=3D189 nowrap style=3D'width:5.0cm;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>2=
8<o:p></o:p></span></p>
  </td>
 </tr>
</table>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:
"Arial","sans-serif"'>Images<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>---------------------------------------<o:p></o:p></s=
pan></b></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'><a
href=3D"http://autobuilder.pokylinux.org/nightly/20101204-1/">http://autobu=
ilder.pokylinux.org/nightly/20101204-1/</a><o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>commit info: 1d505f2e10cf40ae5f6bd111e023a3512fd93f30=
<o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:
"Arial","sans-serif"'>Issue Summary<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>---------------------------------------<o:p></o:p></s=
pan></b></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:
"Arial","sans-serif"'>New Bugs: [1]<o:p></o:p></span></b></p>

<p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso=
-list:
l4 level1 lfo4'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:=
10.0pt;
font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>1.<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></sp=
an></span><![endif]><span
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[N=
etbook]
Installer no response after loading from live image<o:p></o:p></span></p>

<p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>http://bugzilla=
.pokylinux.org/show_bug.cgi?id=3D566<o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:
"Arial","sans-serif"'>Other Old bugs: [2]<o:p></o:p></span></b></p>

<p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso=
-list:
l0 level1 lfo5'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:=
10.0pt;
font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>1.<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></sp=
an></span><![endif]><span
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[e=
Menlow]
i2c_transfer error on e-Menlow<o:p></o:p></span></p>

<p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>http://bugzilla=
.pokylinux.org/show_bug.cgi?id=3D310<o:p></o:p></span></p>

<p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso=
-list:
l0 level1 lfo5'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:=
10.0pt;
font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>2.<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></sp=
an></span><![endif]><span
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>zy=
pper
encounter segfault when startup with qemuppc<o:p></o:p></span></p>

<p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>http://bugzilla=
.pokylinux.org/show_bug.cgi?id=3D443<o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>Best Regards,<o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>Jiajun<o:p></o:p></span></p>

</div>

</body>

</html>

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A314F2BD1shsmsx501ccrcor_--
