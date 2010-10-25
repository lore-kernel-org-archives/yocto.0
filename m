Return-Path: <jiajun.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A67734C80B70
	for <yocto@yoctoproject.org>; Mon, 25 Oct 2010 10:32:36 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Oct 2010 08:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,236,1286175600"; 
	d="scan'208,217";a="620088150"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 25 Oct 2010 08:32:30 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 25 Oct 2010 23:32:26 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 25 Oct 2010 23:32:25 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 25 Oct 2010 23:32:22 +0800
Thread-Topic: Test Report for Yocto M4 20101024 Build
Thread-Index: Act0WdEmB5ZBPjxzS+6eNWC9nwlsYw==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A2FF9848B@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 27 Oct 2010 08:39:13 -0500
Cc: "Yan, Xiaofeng" <xiaofeng.yan@windriver.com>,
	wanglei <shuo.liu@windriver.com>, "McCombe,
	Kevin" <kevin.mccombe@windriver.com>, "Hohndel,
	Dirk" <dirk.hohndel@intel.com>, "'Ta,
	Lieu'" <Lieu.Ta@windriver.com>, "Anderson,
	Paul" <paul.anderson@windriver.com>, Harry Ciao <qingtao.cao@windriver.com>
Subject: Test Report for Yocto M4 20101024 Build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 25 Oct 2010 15:32:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D5AB6E638E5A3E4B8F4406B113A5A19A2FF9848Bshsmsx501ccrcor_"

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A2FF9848Bshsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

       This is the Partial Test Report for M4 build 20101024(RC4a). Thanks =
for Dexuan's help on testing. We finished most testing for IA targets. Ther=
e is no regression issue found. 2 new normal issues are found. For non-IA t=
argets, Changhui is still downloading images and will give full testing tom=
orrow. Then I gave a quick try for sato/sdk qemuarm/ppc/mips with RC4a buil=
ds. There is no new issue found on my side till now, no issue with booting/=
networking/basic system usage. So from QA's view, RC4a has the same quality=
 with RC3(with no regression and critical bugs).



Test Summary
---------------------------------------
Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

Completed Rate [%]

Pass rate of total [%]

Netbook SDK

76<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.php?form=
at=3D0&tplan_id=3D623>

19<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsByStatus.ph=
p?type=3Dn&format=3D0&tplan_id=3D623>

54

3 (bug 491, bug 502)<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/=
resultsByStatus.php?type=3Df&format=3D0&tplan_id=3D623>

0

75

71.05

eMenlow SDK

69<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.php?form=
at=3D0&tplan_id=3D622>

32<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsByStatus.ph=
p?type=3Dn&format=3D0&tplan_id=3D622>

34

3 (bug 503, bug 491, bug 160, bug 310)<http://otc-qa.sh.intel.com/testlink_=
yocto/lib/results/resultsByStatus.php?type=3Df&format=3D0&tplan_id=3D622>

2 (bug 503)<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsBy=
Status.php?type=3Db&format=3D0&tplan_id=3D622>

53.62

49.28

Qemux86-64 Sato

19<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.php?form=
at=3D0&tplan_id=3D620>

0

19

0

0

100

100

Qemux86-64 SDK

26<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.php?form=
at=3D0&tplan_id=3D621>

2<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsByStatus.php=
?type=3Dn&format=3D0&tplan_id=3D621>

24

0

0

92.31

92.31

Qemux86 Sato

19<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.php?form=
at=3D0&tplan_id=3D618>

0<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsByStatus.php=
?type=3Dn&format=3D0&tplan_id=3D618>

19

0

0

100

100

Qemux86 SDK

26<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.php?form=
at=3D0&tplan_id=3D619>

2<http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsByStatus.php=
?type=3Dn&format=3D0&tplan_id=3D619>

24

0

0

92.31

92.31


* To check detail test result, you can login testlink<http://otc-qa.sh.inte=
l.com/testlink_yocto/lib/results/resultsByStatus.php?type=3Df&format=3D0&tp=
lan_id=3D111> with username/password(guest/guest) first. Then click hyperli=
nks in above table.

** For Netbook/E-menlow, testing is focused on sdk image.

*** The failed/blocked case number is listed with failed cases' bug number.



Images
---------------------------------------
http://yoctobuild01.jf.intel.com/milestone/20101024/
http://autobuilder.pokylinux.org/milestone/20101024/



Issue Summary
---------------------------------------

New Bugs:

1.       Xorg and matchbox-window will SegFault when there are too many win=
dows

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D509

2.       "rpm -e libnss-mdns" gets error

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D510



Best Regards,

Jiajun

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A2FF9848Bshsmsx501ccrcor_
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
	{mso-list-id:1323660276;
	mso-list-type:hybrid;
	mso-list-template-ids:1042192876 -1359330290 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
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
"Arial","sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is the Part=
ial
Test Report for M4 build 20101024(RC4a). Thanks for Dexuan&#8217;s help on
testing. We finished most testing for IA targets. There is no regression is=
sue
found. 2 new normal issues are found. For non-IA targets, Changhui is still
downloading images and will give full testing tomorrow. Then I gave a quick=
 try
for sato/sdk qemuarm/ppc/mips with RC4a builds. There is no new issue found=
 on
my side till now, no issue with booting/networking/basic system usage. So f=
rom
QA&#8217;s view, RC4a has the same quality with RC3(with no regression and
critical bugs).<o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:
"Arial","sans-serif"'>Test Summary<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>---------------------------------------<o:p></o:p></s=
pan></b></p>

<table class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 wi=
dth=3D1027
 style=3D'width:770.0pt;margin-left:-1.15pt;border-collapse:collapse'>
 <tr style=3D'height:39.0pt'>
  <td width=3D205 nowrap style=3D'width:154.0pt;border:solid windowtext 1.0=
pt;
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
  <td width=3D69 style=3D'width:51.65pt;border:solid windowtext 1.0pt;borde=
r-left:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Passed</span></b><span lang=3DEN-US style=3D'font-size:10.0p=
t;
  font-family:"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span><=
/p>
  </td>
  <td width=3D353 style=3D'width:265.0pt;border:solid windowtext 1.0pt;bord=
er-left:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Failed</span></b><span lang=3DEN-US style=3D'font-size:10.0p=
t;
  font-family:"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span><=
/p>
  </td>
  <td width=3D108 style=3D'width:81.0pt;border:solid windowtext 1.0pt;borde=
r-left:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Not testable (Blocked)</span></b><span lang=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'> =
<b><o:p></o:p></b></span></p>
  </td>
  <td width=3D81 style=3D'width:61.05pt;border:solid windowtext 1.0pt;borde=
r-left:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Completed Rate</span></b><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;
  font-family:"Arial","sans-serif";color:black'> [%]<b><o:p></o:p></b></spa=
n></p>
  </td>
  <td width=3D66 style=3D'width:49.3pt;border:solid windowtext 1.0pt;border=
-left:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Pass rate of total</span></b><span lang=3DEN-US style=3D'fon=
t-size:
  10.0pt;font-family:"Arial","sans-serif";color:black'> [%]<b><o:p></o:p></=
b></span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D205 nowrap style=3D'width:154.0pt;border:solid windowtext 1.0=
pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Netbook SDK<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:blue'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.p=
hp?format=3D0&amp;tplan_id=3D623">76</a><o:p></o:p></span></u></p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:blue'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsBySt=
atus.php?type=3Dn&amp;format=3D0&amp;tplan_id=3D623">19</a><o:p></o:p></spa=
n></u></p>
  </td>
  <td width=3D69 style=3D'width:51.65pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#35A545'=
>54<o:p></o:p></span></p>
  </td>
  <td width=3D353 style=3D'width:265.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:red'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsBySt=
atus.php?type=3Df&amp;format=3D0&amp;tplan_id=3D623"><span
  style=3D'color:red'>3 (bug 491, bug 502)</span></a><o:p></o:p></span></u>=
</p>
  </td>
  <td width=3D108 nowrap style=3D'width:81.0pt;border-top:none;border-left:=
none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o=
:p></o:p></span></p>
  </td>
  <td width=3D81 style=3D'width:61.05pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>7=
5<o:p></o:p></span></p>
  </td>
  <td width=3D66 style=3D'width:49.3pt;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>7=
1.05<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D205 nowrap style=3D'width:154.0pt;border:solid windowtext 1.0=
pt;
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
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:blue'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.p=
hp?format=3D0&amp;tplan_id=3D622">69</a><o:p></o:p></span></u></p>
  </td>
  <td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:blue'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsBySt=
atus.php?type=3Dn&amp;format=3D0&amp;tplan_id=3D622">32</a><o:p></o:p></spa=
n></u></p>
  </td>
  <td width=3D69 style=3D'width:51.65pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#35A545'=
>34<o:p></o:p></span></p>
  </td>
  <td width=3D353 style=3D'width:265.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:red'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsBySt=
atus.php?type=3Df&amp;format=3D0&amp;tplan_id=3D622"><span
  style=3D'color:red'>3 (bug 503, bug 491, bug 160, bug 310)</span></a><o:p=
></o:p></span></u></p>
  </td>
  <td width=3D108 nowrap style=3D'width:81.0pt;border-top:none;border-left:=
none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:red'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsBySt=
atus.php?type=3Db&amp;format=3D0&amp;tplan_id=3D622"><span
  style=3D'color:red'>2 (bug 503)</span></a><o:p></o:p></span></u></p>
  </td>
  <td width=3D81 style=3D'width:61.05pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>5=
3.62<o:p></o:p></span></p>
  </td>
  <td width=3D66 style=3D'width:49.3pt;border-top:none;border-left:none;bor=
der-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>4=
9.28<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D205 nowrap style=3D'width:154.0pt;border:solid windowtext 1.0=
pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemux86-64 Sato<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:blue'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.p=
hp?format=3D0&amp;tplan_id=3D620">19</a><o:p></o:p></span></u></p>
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
  <td width=3D69 valign=3Dtop style=3D'width:51.65pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#35A545'=
>19<o:p></o:p></span></p>
  </td>
  <td width=3D353 nowrap style=3D'width:265.0pt;border-top:none;border-left=
:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o=
:p></o:p></span></p>
  </td>
  <td width=3D108 nowrap style=3D'width:81.0pt;border-top:none;border-left:=
none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o=
:p></o:p></span></p>
  </td>
  <td width=3D81 valign=3Dtop style=3D'width:61.05pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
00<o:p></o:p></span></p>
  </td>
  <td width=3D66 valign=3Dtop style=3D'width:49.3pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
00<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D205 nowrap style=3D'width:154.0pt;border:solid windowtext 1.0=
pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemux86-64 SDK<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:blue'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.p=
hp?format=3D0&amp;tplan_id=3D621">26</a><o:p></o:p></span></u></p>
  </td>
  <td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:blue'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsBySt=
atus.php?type=3Dn&amp;format=3D0&amp;tplan_id=3D621">2</a><o:p></o:p></span=
></u></p>
  </td>
  <td width=3D69 valign=3Dtop style=3D'width:51.65pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>24<o:p></o:p></span></p>
  </td>
  <td width=3D353 nowrap style=3D'width:265.0pt;border-top:none;border-left=
:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o=
:p></o:p></span></p>
  </td>
  <td width=3D108 nowrap style=3D'width:81.0pt;border-top:none;border-left:=
none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o=
:p></o:p></span></p>
  </td>
  <td width=3D81 valign=3Dtop style=3D'width:61.05pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>9=
2.31<o:p></o:p></span></p>
  </td>
  <td width=3D66 valign=3Dtop style=3D'width:49.3pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>9=
2.31<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D205 nowrap style=3D'width:154.0pt;border:solid windowtext 1.0=
pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemux86 Sato<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:blue'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.p=
hp?format=3D0&amp;tplan_id=3D618">19</a><o:p></o:p></span></u></p>
  </td>
  <td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:blue'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsBySt=
atus.php?type=3Dn&amp;format=3D0&amp;tplan_id=3D618">0</a><o:p></o:p></span=
></u></p>
  </td>
  <td width=3D69 valign=3Dtop style=3D'width:51.65pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>19<o:p></o:p></span></p>
  </td>
  <td width=3D353 nowrap style=3D'width:265.0pt;border-top:none;border-left=
:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o=
:p></o:p></span></p>
  </td>
  <td width=3D108 valign=3Dtop style=3D'width:81.0pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o=
:p></o:p></span></p>
  </td>
  <td width=3D81 valign=3Dtop style=3D'width:61.05pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
00<o:p></o:p></span></p>
  </td>
  <td width=3D66 valign=3Dtop style=3D'width:49.3pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
00<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style=3D'height:14.25pt'>
  <td width=3D205 nowrap style=3D'width:154.0pt;border:solid windowtext 1.0=
pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:black'>Qemux86 SDK<o:p></o:p></span></b></p>
  </td>
  <td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:blue'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsTC.p=
hp?format=3D0&amp;tplan_id=3D619">26</a><o:p></o:p></span></u></p>
  </td>
  <td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><u><span
  lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
  color:blue'><a
  href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsBySt=
atus.php?type=3Dn&amp;format=3D0&amp;tplan_id=3D619">2</a><o:p></o:p></span=
></u></p>
  </td>
  <td width=3D69 valign=3Dtop style=3D'width:51.65pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>24<o:p></o:p></span></p>
  </td>
  <td width=3D353 nowrap style=3D'width:265.0pt;border-top:none;border-left=
:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o=
:p></o:p></span></p>
  </td>
  <td width=3D108 valign=3Dtop style=3D'width:81.0pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o=
:p></o:p></span></p>
  </td>
  <td width=3D81 valign=3Dtop style=3D'width:61.05pt;border-top:none;border=
-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>9=
2.31<o:p></o:p></span></p>
  </td>
  <td width=3D66 valign=3Dtop style=3D'width:49.3pt;border-top:none;border-=
left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>
  <p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US
  style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>9=
2.31<o:p></o:p></span></p>
  </td>
 </tr>
</table>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>* To check detail test result, you can login <a
href=3D"http://otc-qa.sh.intel.com/testlink_yocto/lib/results/resultsByStat=
us.php?type=3Df&amp;format=3D0&amp;tplan_id=3D111">testlink</a>
with username/password(guest/guest) first. Then click hyperlinks in above
table.</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif"'><o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>** For Netbook/E-menlow, testing is focused on sdk im=
age.<o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>*** The failed/blocked case number is listed with fai=
led
cases&#8217; bug number.<o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:
"Arial","sans-serif"'>Images<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>---------------------------------------<o:p></o:p></s=
pan></b></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'><a
href=3D"http://yoctobuild01.jf.intel.com/milestone/20101024/">http://yoctob=
uild01.jf.intel.com/milestone/20101024/</a><o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'><a
href=3D"http://autobuilder.pokylinux.org/milestone/20101024/">http://autobu=
ilder.pokylinux.org/milestone/20101024/</a><o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:
"Arial","sans-serif"'>Issue Summary<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Arial","sans-serif"'>---------------------------------------<o:p></o:p></s=
pan></b></p>

<p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:
"Arial","sans-serif"'>New Bugs:<o:p></o:p></span></b></p>

<p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso=
-list:
l0 level1 lfo1'><![if !supportLists]><span lang=3DEN-US><span style=3D'mso-=
list:
Ignore'>1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3DEN-US>Xorg and matchbox-window =
will
SegFault when there are too many windows </span><span lang=3DEN-US><o:p></o=
:p></span></p>

<p class=3DMsoPlainText style=3D'text-indent:18.0pt'><span lang=3DEN-US><a
href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D509">http://bugzill=
a.pokylinux.org/show_bug.cgi?id=3D509</a><o:p></o:p></span></p>

<p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso=
-list:
l0 level1 lfo1'><![if !supportLists]><span lang=3DEN-US><span style=3D'mso-=
list:
Ignore'>2.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3DEN-US>&quot;rpm -e libnss-mdns&=
quot;
gets error <o:p></o:p></span></p>

<p class=3DMsoPlainText style=3D'text-indent:18.0pt'><span lang=3DEN-US><a
href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D510">http://bugzill=
a.pokylinux.org/show_bug.cgi?id=3D510</a><o:p></o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoPlainText><span lang=3DEN-US>Best Regards,<o:p></o:p></span><=
/p>

<p class=3DMsoPlainText><span lang=3DEN-US>Jiajun<o:p></o:p></span></p>

</div>

</body>

</html>

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A2FF9848Bshsmsx501ccrcor_--
