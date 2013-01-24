Return-Path: <alexandrux.palalau@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE7FCE01248
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:26:22 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Jan 2013 07:25:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,530,1355126400"; 
	d="xml'?xlsx'72,48?scan'72,48,208,217,72,48?bin'72,48,208,217,72,48?rels'72,48,208,217,72,48";
	a="247943887"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 24 Jan 2013 07:25:13 -0800
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 24 Jan 2013 15:23:24 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.20]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.144]) with mapi id
	14.01.0355.002; Thu, 24 Jan 2013 15:23:24 +0000
From: "Palalau, AlexandruX" <alexandrux.palalau@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Fullpass Test Report for Yocto 1.4 20130115 Build 
Thread-Index: Ac36PWvC7865f9PSQVuOxElrTAxFMQ==
Date: Thu, 24 Jan 2013 15:23:24 +0000
Message-ID: <A45D4FDC92525B4F8A75E1B55399F328C19B00@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Fullpass Test Report for Yocto 1.4 20130115 Build
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
X-List-Received-Date: Thu, 24 Jan 2013 15:26:27 -0000
X-Groupsio-MsgNum: 11708
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_A45D4FDC92525B4F8A75E1B55399F328C19B00IRSMSX104gercorpi_"

--_004_A45D4FDC92525B4F8A75E1B55399F328C19B00IRSMSX104gercorpi_
Content-Type: multipart/alternative;
	boundary="_000_A45D4FDC92525B4F8A75E1B55399F328C19B00IRSMSX104gercorpi_"

--_000_A45D4FDC92525B4F8A75E1B55399F328C19B00IRSMSX104gercorpi_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the fullpass test report for Yocto 1.4 20130115 build. The testings=
 for qemuppc, mpc8315e, and p1022ds are blocked since the images didn't bui=
ld out due to some known issues (oprofile and libxml failures).
We have some new bugs regarding CoreBuildSystem (Bug 3745. 3756, 3757). Als=
o, there are some problems regarding smart (Bug 3768, 3769). No problems un=
der qemu this time.
Attached you can find the full test result.



Test Summary
-------------------------
Test Result Summary

Component

Target

Status

Comments

BSP

Beagleboard

GOOD

Everything runs well

=1B$B!!=1B(B

Routerstationpro

GOOD

Everything runs well

=1B$B!!=1B(B

Mpc8315e-rdb

BLOCK

No image built out


P1022DS

BLOCK

No image built out

QEMU

qemuarm

GOOD

Everything runs well



qemux86

GOOD

Everything runs well



qemux86-64

GOOD

Everything runs well

=1B$B!!=1B(B

qemuppc

GOOD

Everything runs well

=1B$B!!=1B(B

qemumips

BLOCK

No image built out

Core Build System

BUGGY

gtk-directfb image build failed; disk space monitoring gives error ;Bitbake=
 remake/remake-native check; Compile and load kernel; Crosstap script check=
.

ADT Toolchain

BUGGY

gtk+-2.0 missing from the userbuilt toolchain; autoreconf run failed

Compliance

Not running

Stress

Beagleboard

Not running


BLOCK

Critical bugs, more than 50% test cases are blocked

GOOD

Only Normal, Minor or Enhancement bugs, less than 10% test cases failed

BUGGY

Normal, Major and Critical bugs, more than 10% test cases failed


Detailed Test Result for each component

Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

Beagleboard Sato-SDK

66

0

66

0

0

Routerstationpro Sato-SDK

43

0

43

0

0

Mpc8315e-rdb Sato-SDK

45

0

0

0

45

P1022DS

42

0

0

0

42 (bug 3476)

Qemux86

82

0

82

0

0

Qemux86-64

82

0

82

0

0

Qemuarm Sato

42

0

42

0

0

Qemuarm Sato-SDK

47

0

47

0

0

Qemumips Sato

42

0

42

0

0

Qemumips Sato-SDK

47

0

47

0

0

Qemuppc Sato

42

0

0

0

42

Qemuppc Sato-SDK

47

0

0

0

47

Core Build System

78

2

72

4 (bug 3523,3745, 3642)

2

ADT Toolchain

22

0

20

2 (bug 3338, 3758)

0

HOB

38

0

37

1(3001)

0

Compliance

2

2

0

0

0

Stress

2

2

0

0

0

Total

769

6

580

7

178


* You can check the detailed test result in attachment for each target.
** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.


Commit information
--------------------------------
Location: http://autobuilder.yoctoproject.org/pub/nightly/20130115-2
Tree/Branch: poky/master
Commit: 9eb88ceb39b7d0b8ddc6487e61ce8edadef10ec4


Issue Summary
-----------------------------------
Component

Bug Number

Target Milestone

System & Core OS

System Usage

New! 3769 smart: some packages can not be reinstalled
New! 3768 smart: --yaml option doesn't work

1.4
1.4

Others

Bug 3476 Autobuilder failing on fsl-ppc

1.4 M2

Core Build System

Bug 3642 gtk-demo fails to run for gtk-directfb image
Bug 3523 Disk space monitoring gives error: Unknown event
New! Bug 3745 Bitbake remake/remake-native check fail
New! Bug 3757 Compile and load kernel fail
New! Bug 3756 Crosstap script fail

1.4
1.4
1.4
1.4 M3
----

ADT Toolchain

Bug 3338 iptables-1.4.15: autoreconf run failed on gmae-toolchain
Bug 3758 Package gtk+-2.0 missing from the userbuilt toolchain

1.4 M2
1.4 M3

Compliance

Not running

Stress

Not running





Verified Bugs
-----------------------------------
1. [Bug 3643]<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D3643>: smart =
config --help error: Invalid command 'config'
2. [Bug 3646]<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D3646>: non GP=
Lv3 build failure with core-image-basic


Br,
Alexandru Palalau
QA contractor Yocto Project


--_000_A45D4FDC92525B4F8A75E1B55399F328C19B00IRSMSX104gercorpi_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;
	color:black;
	mso-fareast-language:ZH-CN;}
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Hello,<br>
Here is the fullpass test report for Yocto 1.4 20130115 build. The testings=
 for qemuppc, mpc8315e, and p1022ds are blocked since the images didn't bui=
ld out due to some known issues (oprofile and libxml failures).</span><span=
 style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">We have some new bu=
gs regarding CoreBuildSystem (Bug 3745. 3756, 3757). Also, there are some p=
roblems regarding smart (Bug 3768, 3769). No problems under qemu this time.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Attached you can fi=
nd the full test result.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><br>
<br>
<b>Test Summary<br>
-------------------------</b><o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0" width=3D"982" style=3D"width:589.2pt">
<tbody>
<tr>
<td colspan=3D"4" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
 Result Summary</b><o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
onent</b> <o:p>
</o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Targ=
et</b> <o:p>
</o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Stat=
us</b> <o:p>
</o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comm=
ents</b> <o:p>
</o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>BSP</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Beagleboard<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"background:green;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN">=1B$B!!=1B(B</span><o:p></o:p><=
/p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Routerstationpro<o:p></o:p></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN">=1B$B!!=1B(B</span><o:p></o:p><=
/p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Mpc8315e-rdb<o:p></o:p></p>
</td>
<td style=3D"background:red;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BLOCK<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">No image built out<o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">P1022DS<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"background:red;padding:.75pt .75pt .75pt .75pt"=
>
<p class=3D"MsoNormal">BLOCK<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">No image built out<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>QEMU</b><o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">qemuarm<o:p></o:p></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">qemux86<o:p></o:p></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">qemux86-64<o:p></o:p></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN">=1B$B!!=1B(B</span><o:p></o:p><=
/p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">qemuppc<o:p></o:p></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN">=1B$B!!=1B(B</span><o:p></o:p><=
/p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">qemumips<o:p></o:p></p>
</td>
<td style=3D"background:red;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BLOCK<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">No image built out<o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>Core Build System</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"background:orange;padding:.75pt .75pt .75pt .75=
pt">
<p class=3D"MsoNormal">BUGGY<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">gtk-directfb image build failed; disk space monitori=
ng gives error
<span style=3D"color:#1F497D">;Bitbake remake/remake-native check; Compile =
and load kernel; Crosstap script check.</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>ADT Toolchain</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"background:orange;padding:.75pt .75pt .75pt .75=
pt">
<p class=3D"MsoNormal">BUGGY<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">gtk&#43;-2.0 missing from the userbuilt toolchain; a=
utoreconf run failed
<o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:13.5pt">C</span>omplianc=
e</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Not running <o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>Stress</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Beagleboard<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Not running<o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td style=3D"background:red;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BLOCK <o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Critical bugs, more than 50% test cases are blocked =
<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD <o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Only Normal, Minor or Enhancement bugs, less than 10=
% test cases failed
<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"background:orange;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BUGGY <o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Normal, Major and Critical bugs, more than 10% test =
cases failed
<o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td colspan=3D"6" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Deta=
iled Test Result for each component</b><o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Targ=
et</b> <o:p>
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Tota=
l TCs</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Not =
Run</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Pass=
ed</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Fail=
ed</b><o:p></o:p></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt;background:=
rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Not =
testable (Blocked)</b><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Beag=
leboard Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">66<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">66<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Rout=
erstationpro Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">43<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">43<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Mpc8=
315e-rdb Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">45<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">45</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>P102=
2DS</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">42<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">42 (bug 3476)</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
x86<o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">82<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">82<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
x86-64<o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">82<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">82<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
arm Sato</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">42<o:p>=
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">42<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
arm Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">47<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">47<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
mips Sato</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">42<o:p>=
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">42<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
mips Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">47<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">47<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
ppc Sato</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">42<o:p>=
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">42</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
ppc Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">47<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">47</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Core=
 Build System</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:windowtext">78<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:windowtext">2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">72<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">4 (bug 3523,3745, 3642)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>ADT =
Toolchain</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">22<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">20<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 3338, 3758)</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>HOB<=
o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">38<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">37<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">1(3001)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
liance</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Stre=
ss</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Tota=
l</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#1F497D">769</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#1F497D">6</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#1F497D">580</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">7</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">178</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><br>
* You can check the detailed test result in attachment for each target.<br>
** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.<br>
<br>
<br>
<b>Commit information<br>
--------------------------------</b><br>
Location: <a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/201301=
15-2">http://autobuilder.yoctoproject.org/pub/nightly/20130115-2</a><br>
Tree/Branch: poky/master<br>
Commit: 9eb88ceb39b7d0b8ddc6487e61ce8edadef10ec4<br>
<br>
<b><br>
Issue Summary<br>
-----------------------------------</b><o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td colspan=3D"2" style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75=
pt;background-attachment:scroll;background-position-x:0%;background-positio=
n-y:0%">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
onent</b><o:p></o:p></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt;background-=
attachment:scroll;background-position-x:0%;background-position-y:0%">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Bug =
Number</b> <o:p>
</o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Targ=
et Milestone</b><o:p></o:p></p>
</td>
</tr>
<tr>
<td rowspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>System &amp; Core OS</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Syst=
em Usage</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"color:red">New!</span> 3769 smart: so=
me packages can not be reinstalled<br>
<span style=3D"color:red">New!</span> 3768 smart: --yaml option doesn't wor=
k<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">1.4<br>
1.4 <o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Othe=
rs</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Bug 3476 Autobuilder failing on fsl-ppc&nbsp; <o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">1.4 M2<o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Core=
 Build System</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Bug 3642 gtk-demo fails to run for gtk-directfb imag=
e<br>
Bug 3523 Disk space monitoring gives error: Unknown event <span style=3D"co=
lor:#1F497D">
<br>
</span><span style=3D"color:red">New!</span><span style=3D"color:#1F497D"> =
</span><span style=3D"color:windowtext">Bug 3745 Bitbake remake/remake-nati=
ve check fail</span><span style=3D"color:#1F497D"><br>
</span><span style=3D"color:red">New!</span><span style=3D"color:#1F497D"> =
</span><span style=3D"color:windowtext">Bug 3757 Compile and load kernel fa=
il</span><span style=3D"color:#1F497D"><br>
</span><span style=3D"color:red">New!</span><span style=3D"color:#1F497D"> =
</span><span style=3D"color:windowtext">Bug 3756 Crosstap script fail</span=
><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">1.4<br>
1.4 <span style=3D"color:#1F497D"><br>
</span><span style=3D"color:windowtext">1.4<br>
1.4 M3<br>
</span><span style=3D"color:#1F497D">----</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>ADT =
Toolchain</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Bug 3338 iptables-1.4.15: autoreconf run failed on g=
mae-toolchain<br>
Bug 3758 Package gtk&#43;-2.0 missing from the userbuilt toolchain<o:p></o:=
p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">1.4 M2<br>
1.4 M3 <o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
liance</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Not running<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Stre=
ss</b> <o:p>
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Not running<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td style=3D"border:none;padding:.75pt .75pt .75pt .75pt"></td>
<td style=3D"border:none;padding:.75pt .75pt .75pt .75pt"></td>
<td style=3D"border:none;padding:.75pt .75pt .75pt .75pt"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
<br>
<br>
<b>Verified Bugs<br>
-----------------------------------<br>
</b>1. <a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D3643"><b>=
[Bug 3643]</b></a>: smart config --help error: Invalid command 'config'<br>
2. <a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D3646"><b>[Bug=
 3646]</b></a>: non GPLv3 build failure with core-image-basic<br>
<br>
<br>
<span style=3D"color:#1F497D">Br,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D">Alexandru Palalau<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D">QA contractor Yocto Project</span><br>
<br>
<o:p></o:p></p>
</div>
</body>
</html>

--_000_A45D4FDC92525B4F8A75E1B55399F328C19B00IRSMSX104gercorpi_--

--_004_A45D4FDC92525B4F8A75E1B55399F328C19B00IRSMSX104gercorpi_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="1.4_20130115_fullpass.xlsx"
Content-Description: 1.4_20130115_fullpass.xlsx
Content-Disposition: attachment; filename="1.4_20130115_fullpass.xlsx";
	size=44675; creation-date="Thu, 24 Jan 2013 14:31:40 GMT";
	modification-date="Thu, 24 Jan 2013 15:21:56 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQBy0mg5zAEAAB4PAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
l19P2zAUxd+R9h0iv06NawYMUFMetvG4IcE+gBvfNlYT27Iv0H57blxADJVWEZV2XxLlj8/5XUc6
yplcrbq2eICYrHeVUOVYFOBqb6xbVOLv3fXoXBQJtTO69Q4qsYYkrqZfjiZ36wCpoNUuVaJBDJdS
prqBTqfSB3D0ZO5jp5Eu40IGXS/1AuTxeHwma+8QHI6w1xDTyU+Y6/sWi18rur0hmVknih+b93qr
SugQWltrJFD54Mw7k5Gfz20Nxtf3HUmXKUTQJjUA2LVliJYc4y0g0mBJyK2eEdo0zPR5qpJWZrDU
2JC+0ugfOPRPPp7qed0f+hzRGihudMTfuqPZ5aqVjz4uZ94vy90iQ7cmb1HZaeteuHf455eTzCd1
YJB+viw8kOOYCcc3JhwnTDhOmXCcMeH4zoTjnAnHBRMONeYCwiVRFZdIVVwyVXEJVcUlVRWXWFVc
clVxCVb1v5IV6e8fZD5+PsqyzJ5fwYTrFtKB43sjus+50RHMLVKvWBwc4K32Hg7UM9oBmU+f3/N/
S1MW3eVPZesm+pCoz0UY/hVeylO/ehRICCJaeK1P22rIqyOVweGG7yoi9G3TgNniLXO7nT4BAAD/
/wMAUEsDBBQABgAIAAAAIQC1VTAj9QAAAEwCAAALAAgCX3JlbHMvLnJlbHMgogQCKKAAAgAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjJLPTsMw
DMbvSLxD5PvqbkgIoaW7TEi7IVQewCTuH7WNoyRA9/aEA4JKY9vR9ufPP1ve7uZpVB8cYi9Ow7oo
QbEzYnvXanitn1YPoGIiZ2kUxxqOHGFX3d5sX3iklJti1/uosouLGrqU/CNiNB1PFAvx7HKlkTBR
ymFo0ZMZqGXclOU9hr8eUC081cFqCAd7B6o++jz5src0TW94L+Z9YpdOjECeEzvLduVDZgupz9uo
mkLLSYMV85zTEcn7ImMDnibaXE/0/7Y4cSJLidBI4PM834pzQOvrgS6faKn4vc484qeE4U1k+GHB
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
BkCseMfNi4NiJKr53bqXiq46yPs5Smi1Z7uHI7zglZJaNiYAHPFGj3POSEaAVOY1hwxs2ZFiTYGv
p/M/y5sMkzJ3FfrF2Vb/M0a24CspH+3CXV3g0ErJkXbpCv6gUM0auunMd7m9ZXzdGtjdWTDDqNpo
I8U4ZymV7OBVcEWC2y6A5Omzu295bdoCx64LXmwhYNETfvulaAfwofEuFO770CSYZLPpZBpPbCed
wLjcMeC+Y0RxEJ7HSPYphDEMd5g0+MAC8YVwNb2hhpa5klsEfTkF6wO1XR7NwZYrZhrA6G0xoYpW
f20DoGwYQdk1bPZTGebkCfargh9ARzJsyFtynAUTMPoe2kYUGN49oqMR7V7+7VgRHyoWx4rLUXFg
z+77WYnbANcko7s0G9HenpfAtoyS7LU4TrLwEijCKElnI+XAYHauQRvwgUEvOTD4psQLL/mvQX80
fRsNdM3uqVrzXqOONZAVfGeVP5UwMnKAmeAyS8IsSdI0SlNo9wSO2koaOKzvLLbwNWXQbUBopDR+
CMfZzy/dVJnLur51wvILFcPXhbte5+R13kp2ai95ALvIDR+cbo8ih2Qy/geUfwEAAP//AwBQSwME
FAAGAAgAAAAhANDurUX8CQAAOzgAABkAAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTkueG1snJtbb+PI
EYXfA+Q/CHrI20rinXJsL6bbMHaBBBgk2U1eaZm2hZFEReLc/n2q2LTYdcpeTOVh1x4d1uGn6mYd
Spauf/62382+tKfztjvczJPFaj5rD5vucXt4vpn/9q/7n+r57Nw3h8dm1x3am/n39jz/+fbPf7r+
2p0+nV/atp+Rw+F8M3/p++PVcnnevLT75rzoju2BlKfutG96+ufpeXk+ntrmcSja75bpalUu9832
MA8OV6cf8eienrab9q7bfN63hz6YnNpd0xP/+WV7PL+67Tc/YrdvTp8+H3/adPsjWTxsd9v++2A6
n+03V78+H7pT87Cj5/0tyZvNq/fwD2W/325O3bl76hdktwyg+jmvl+slOd1eP27pGXDbZ6f26Wb+
obz6z/1dssrroqjny9vroU+/b9uv5+j3Wd88/LPdtZu+faTlms/67vi39qn37W5HHjk9wgvz0HWf
uPRXOmhF5zoPJXyuZtNvv7ThcF9VtLj/HU7Pv9NJl5ezxr+/EtwPi/nxNHtsn5rPu/4f3ddf2u3z
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

--_004_A45D4FDC92525B4F8A75E1B55399F328C19B00IRSMSX104gercorpi_--
