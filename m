Return-Path: <alexandrux.palalau@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC858E01454
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 20:06:42 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 19 Dec 2012 20:06:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,320,1355126400"; 
	d="xml'?bin'?vml'?scan'208,217,72,48?rels'208,217,72,48?xlsx'208,217,72,48,72,48";
	a="182632737"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Dec 2012 13:16:42 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.151]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.74]) with mapi id
	14.01.0355.002; Tue, 18 Dec 2012 21:16:41 +0000
From: "Palalau, AlexandruX" <alexandrux.palalau@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Fullpass Test Report for Yocto 1.2.2 denzil-next 20121206 Build
Thread-Index: Ac3dZOnzonBnQS5VS92epuzSKd3PhA==
Date: Tue, 18 Dec 2012 21:16:41 +0000
Message-ID: <A45D4FDC92525B4F8A75E1B55399F328C10137@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Fullpass Test Report for Yocto 1.2.2 denzil-next 20121206 Build
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
X-List-Received-Date: Thu, 20 Dec 2012 04:06:46 -0000
X-Groupsio-MsgNum: 11191
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_A45D4FDC92525B4F8A75E1B55399F328C10137IRSMSX104gercorpi_"

--_004_A45D4FDC92525B4F8A75E1B55399F328C10137IRSMSX104gercorpi_
Content-Type: multipart/alternative;
	boundary="_000_A45D4FDC92525B4F8A75E1B55399F328C10137IRSMSX104gercorpi_"

--_000_A45D4FDC92525B4F8A75E1B55399F328C10137IRSMSX104gercorpi_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the Fullpass Test Report for Yocto 1.2.2 denzil-next 20121206 build=
.
There are some issues regarding the following:

=E8 CoreBuildSystem: libowl fetch and build appliance build fail

=E8 HOB: toolchain settings are not saved and trying to build a recipe from=
 terminal using HOB conf fails

=E8 Jasperforest: syslog fails(fixed in master) and and also the iptables c=
ompilation is failing for this architecture.

=E8 Atom-PC: failure in starting the installed instance. Also, return from =
standby fails and we have some dmesg errors.

Attached you can find the full test report.

Test Summary
-------------------------
Test Result Summary

Component

Target

Status

Comments

QEMU

qemux86

GOOD

Everything runs well



qemux86-64

GOOD

Everything runs well

BSP

e-Menlow

GOOD

No USB notification



Hurronriver

GOOD

Everything runs well



Jasperforest

BUGGY

Syslog fails
iptables project compilation fail



Atom-PC

BUGGY

Install from USB fails
Cannot return from standby

Core Build System

BUGGY

libowl do_fetch fails
Build Appliance fails to build due to build_boot_dd

ADT Toolchain

GOOD

Everything runs well

HOB



BUGGY

toolchain arch in settings is not saved
Hob recipe build from terminal fails


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

Qemux86 Sato-SDK

37

0

37

0

0

Qemux86-64 Sato-SDK

37

0

37

0

0

Core Build System

48

6

36

6(2821,3339)

6

ADT Toolchain

53

2

51

0

2

HOB

38

0

36

2(2695,3001)

0

Stress

2

0

2

0

0

Compliance

2

0

2

0

0

Distro

14

0

14

0

0

e-Menlow

66

0

65

1(2643)

0

Hurronriver

68

0

68

0

0

Jasperforest

35

0

    32

3(3618,2053)

0

Atom-PC

66

3

     60

3(3591,3588,3590)

3

Total

466

11

440

15

11


* You can check the detailed test result in attachment for each target.
** The failed/blocked case number is listed with failed cases' bug number.


Commit information
--------------------------------
Location: http://autobuilder.pokylinux.org/nightly/20121206-1/
Tree/Branch: sgarman/denzil-next-pull4
Commit: d166ea7bb13eaf25b54e14f0bf9c5747ea950617
Issue Summary
-----------------------------------
Component

Bug Number

Target Milestone

Core Build System

Bug 2821 - libowl do_fetch error
Bug 3339 - Build Appliance fails to build

1.4 M1
1.2.2

HOB

Bug 2695 - [HOB]toolchain arch in settings is not saved
Bug 3001 - Hob recipe build from terminal fails

1.3 M4
---

Jasperforest

New! Bug 3618 syslog fails
Bug 2053 - iptables-1.4.12.2-r0: task do_compile

---
1.2 M4

Atom-PC

Bug 3591 - [ATOM-PC] cannot boot after install - stops at grub
Bug 3590 - [Atom-PC]Return from standby fails
Bug 3588 - [Atom-PC]dmesg errors

---
---
---


Best Regards,

--
Alexandru Palalau
QA Contractor @ Yocto Project
Open-source Technology Center Romania
System Software Division



--_000_A45D4FDC92525B4F8A75E1B55399F328C10137IRSMSX104gercorpi_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;
	color:black;
	mso-fareast-language:ZH-CN;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
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
/* List Definitions */
@list l0
	{mso-list-id:2070422040;
	mso-list-type:hybrid;
	mso-list-template-ids:-1010284380 -48356364 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0E8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:SimSun;
	mso-bidi-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Hello,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:windowtext">Here is the Fullpass
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1F497D">T</span><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">est
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1F497D">R</span><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">epo=
rt for Yocto 1.2.2 denzil-next 20121206 build.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">There are some issues =
regarding the following:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:windowtext"><span style=3D"mso-list:Ignore">=E8<span style=3D"font:7.=
0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">CoreBuildSyste=
m: libowl fetch and build appliance build fail<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:windowtext"><span style=3D"mso-list:Ignore">=E8<span style=3D"font:7.=
0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">HOB: toolchain=
 settings are not saved and trying to build a recipe from terminal using HO=
B conf fails<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:windowtext"><span style=3D"mso-list:Ignore">=E8<span style=3D"font:7.=
0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">Jasperforest: =
syslog fails(fixed in master) and and also the iptables compilation is fail=
ing for this architecture.<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Wingdings;=
color:windowtext"><span style=3D"mso-list:Ignore">=E8<span style=3D"font:7.=
0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">Atom-PC: failu=
re in starting the installed instance. Also, return from standby fails and =
we have some dmesg errors.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Attached you can find =
the full test report.<br>
<br>
<b>Test Summary<br>
</b></span><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quo=
t;,&quot;sans-serif&quot;">-------------------------</span></b><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0" width=3D"982" style=3D"width:589.2pt">
<tbody>
<tr>
<td colspan=3D"4" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Test Result Summary</span></b><b><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></=
b></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Component</span></b><b><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;">
<o:p></o:p></span></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Target</span></b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Status</span></b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Comments</span></b><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;">
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">QEMU<o:p></o:p></sp=
an></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">qemux86<o:p></o:p></sp=
an></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Everything runs well<o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></=
span></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">qemux86-64<o:p></o:p><=
/span></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Everything runs well<o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext;mso-fareast-language=
:EN-US">BSP<o:p></o:p></span></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">e-Menlow<o:p></o:p></s=
pan></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">No USB notification<o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Hurronriver<o:p></o:p>=
</span></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Everything runs well<o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Jasperforest<o:p></o:p=
></span></p>
</td>
<td style=3D"background:#FFC000;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">BUGGY<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Syslog fails<br>
iptables project compilation fail<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Atom-PC<o:p></o:p></sp=
an></p>
</td>
<td style=3D"background:#FFC000;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">BUGGY<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Install from USB fails=
<br>
Cannot return from standby<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">Core Build System</=
span></b><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;=
,&quot;sans-serif&quot;;color:windowtext"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"background:orange;padding:.75pt .75pt .75pt .75=
pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">BUGGY<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">libowl do_fetch fails<=
br>
Build Appliance fails to build due to build_boot_dd<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">ADT Toolchain</span></b><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td style=3D"background:#02841B;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Everything runs well<o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">HOB<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#FFC000;padding:.75pt .75pt .75pt .7=
5pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">BUGGY</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">toolchain arch in sett=
ings is not saved<br>
Hob recipe build from terminal fails<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td style=3D"background:red;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">BLOCK
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Critical bugs, more than 50% test cases=
 are blocked
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Only Normal, Minor or Enhancement bugs,=
 less than 10% test cases failed
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"background:orange;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">BUGGY
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Normal, Major and Critical bugs, more t=
han 10% test cases failed
<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td colspan=3D"6" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Detailed Test Result for each component</span></b><span style=3D"f=
ont-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Target</span></b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">
<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Total TCs</span></b><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Not Run</span></b><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Passed</span></b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Failed</span></b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt;background:=
rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Not testable (Blocked)</span></b><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></=
p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Qemux86 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">37<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">37<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Qemux86-64 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">37<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">37<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Core Build System</span></b><span style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">48<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">6<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">36<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">6(2821,3339)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">6<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">ADT Toolchain</span></b><span style=3D"font-size:11.0pt;font-famil=
y:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">53<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">51<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">2<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">HOB<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">38<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">36<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">2(2695,3001)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Stress<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Compliance<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Distro<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">14<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">14<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">e-Menlow<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">66<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">65<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">1(2643)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Hurronriver<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">68<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">68<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Jasperforest<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">35<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#00B050">&nbsp;&nbsp;&nbsp; 32<o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">3(3618,2053)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Atom-PC<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">66<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">3<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#00B050">&nbsp;&nbsp;&nbsp;&nbsp; =
60<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">3(3591,3588,3590)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">3<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Total</span></b><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#1F497D">466</span><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p></o:p></sp=
an></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#1F497D">11</span><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p></o:p></spa=
n></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#1F497D">440</span><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span>=
</p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">15<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">11<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><br>
* You can check the detailed test result in attachment for each target.<br>
** The failed/blocked case number is listed with failed cases&#8217; bug nu=
mber.<br>
<br>
<br>
<b>Commit information<br>
--------------------------------</b><br>
Location: <a href=3D"http://autobuilder.pokylinux.org/nightly/20121206-1/">=
http://autobuilder.pokylinux.org/nightly/20121206-1/</a><br>
Tree/Branch: sgarman/denzil-next-pull4<br>
Commit: d166ea7bb13eaf25b54e14f0bf9c5747ea950617<b><br>
Issue Summary<br>
-----------------------------------</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt;background-=
position-x:0%;background-position-y:0%;background-attachment:scroll">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Component</span></b><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt;background-=
position-x:0%;background-position-y:0%;background-attachment:scroll">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Bug Number</span></b><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,&quot;sans-serif&quot;">
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Target Milestone</span></b><span style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:windowtext">Core Build System</span></b><span style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:win=
dowtext"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Bug 2821 - libowl do_f=
etch error<br>
Bug 3339 - Build Appliance fails to build<b><o:p></o:p></b></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">1.4 M1<br>
1.2.2<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:windowtext">HOB</span></b><span style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Bug 2695 - [HOB]toolch=
ain arch in settings is not saved<br>
Bug 3001 &#8211; Hob recipe build from terminal fails<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">1.3 M4<br>
---<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:windowtext">Jasperforest<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:red">New!
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:windowtext">Bug 3618 syslog fails<br>
Bug 2053 - iptables-1.4.12.2-r0: task do_compile<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">---<br>
1.2 M4<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:windowtext">Atom-PC<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Bug 3591 - [ATOM-PC] c=
annot boot after install - stops at grub<br>
Bug 3590 - [Atom-PC]Return from standby fails<br>
Bug 3588 - [Atom-PC]dmesg errors<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">---<br>
---<br>
---<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F=
497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Best Regards,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><br>
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1F497D;mso-fareast-language:EN-US">--<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D;mso-fareast-language:EN-US=
">Alexandru Palalau<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D;mso-fareast-language:EN-US=
">QA Contractor @ Yocto Project<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D;mso-fareast-language:EN-US=
">Open-source Technology Center Romania<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D;mso-fareast-language:EN-US=
">System Software Division<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p>&nb=
sp;</o:p></span></p>
</div>
</body>
</html>

--_000_A45D4FDC92525B4F8A75E1B55399F328C10137IRSMSX104gercorpi_--

--_004_A45D4FDC92525B4F8A75E1B55399F328C10137IRSMSX104gercorpi_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="1.2.2 denzil-next Fullpass.xlsx"
Content-Description: 1.2.2 denzil-next Fullpass.xlsx
Content-Disposition: attachment; filename="1.2.2 denzil-next Fullpass.xlsx";
	size=44265; creation-date="Tue, 18 Dec 2012 20:10:26 GMT";
	modification-date="Tue, 18 Dec 2012 20:41:14 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQAd8Z8E4wEAAFoOAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
l89u2zAMxu8D9g6GrkOsuNu6bojTw7odtwLtHkCxmFiILQkimyZvP1pZirVI4hk1MF1s+A+/70fa
psXZ9bZtsg0ENM6WosinIgNbOW3sqhS/7r9PrkSGpKxWjbNQih2guJ6/fTO733nAjKMtlqIm8l+k
xKqGVmHuPFi+snShVcSHYSW9qtZqBfJiOr2UlbMElibUaYj57AaW6qGh7NuWT+9JFsaK7Ov+vs6q
FMr7xlSKGFRurH5hMnHLpalAu+qhZekcfQClsQagtsl9MOwY7oCIE0Mhj3oGaHCY6Z+sco6MYFgb
j+849RMO3ZXTWZ2O25yN668Gx98E9ci5d2A/+XkHoyG7VYF+qJaLK7eNfHRhvXBunZ+n7Hd7Xvv4
DPJWGXsozBn/eDPKuCtGBunyi8IDOS4S4XifCMeHRDg+JsJxmQjHp0Q4rhLh+JwIRzFNBSSVjlqk
0lKLVHpqkUpTLf5XVyVeOoKM29e/plGm5zePtGsAR/4096J9zrUKoO+IF6Wr0QH+1u7hILXgCsi4
e33Nn6/6ougA/7E7wr/4V67tZgUcO/eD7rn0eVC5Dc4jz0IBhr+Eh8Gji554FoJABp5Gj2Mr7CdH
HqSGG74Yr6Cb1DToI94yTobz3wAAAP//AwBQSwMEFAAGAAgAAAAhALVVMCP1AAAATAIAAAsACAJf
cmVscy8ucmVscyCiBAIooAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAACMks9OwzAMxu9IvEPk++puSAihpbtMSLshVB7AJO4ftY2jJED39oQD
gkpj29H2588/W97u5mlUHxxiL07DuihBsTNie9dqeK2fVg+gYiJnaRTHGo4cYVfd3mxfeKSUm2LX
+6iyi4saupT8I2I0HU8UC/HscqWRMFHKYWjRkxmoZdyU5T2Gvx5QLTzVwWoIB3sHqj76PPmytzRN
b3gv5n1il06MQJ4TO8t25UNmC6nP26iaQstJgxXznNMRyfsiYwOeJtpcT/T/tjhxIkuJ0Ejg8zzf
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
xmESL+6FRD0E2h4ym3lxHEfz6H7IfLjFMkqg34P+bsYGsQuCC+ULMSTbKHlCULIQDd0S+wDCdQRJ
oXbyyc6mGN4OhFHD7DELNv7RYnrF860ivFZsO8VqwlgsRokPx48ebMbfPSCXu7k3H93YdfAHwNHO
YjminOPnXgPNuya+1rjKSvFUMh8VV4YgM/80ZNf/Z6jXTE9bJONxzjQ8GMuZSv401BV/l7GWlOwz
USVvNKpZAfcMvBgj1VW76xvZulmoxZ00UMXDqII/F4PMBh6cWUhphoGtjfFfmP0GAAD//wMAUEsD
BBQABgAIAAAAIQBhnziT2gAAAMoBAAAjAAAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDMueG1s
LnJlbHOskcFqwzAMQO+D/YPRfXaawhijTi+l0OvafYDrKIlpIhtLLevfz6OXpRR22UlIQk8PabX+
mkZ1wcwhkoWFrkAh+dgG6i18HrYvb6BYHLVujIQWrsiwbp6fVh84OilDPITEqlCILQwi6d0Y9gNO
jnVMSKXTxTw5KWnuTXL+5Ho0dVW9mvybAc2MqXathbxra1CHayqb/2bHrgseN9GfJyR5sMKIO45Y
gC73KBa0vlX4FmpdZME89lj8p0fKgQTzHkXKoXlmdNczd/lSHwP9SJrZB5pvAAAA//8DAFBLAwQU
AAYACAAAACEAaRbmONkAAADKAQAAIwAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQyLnhtbC5y
ZWxzrJHBasMwDEDvg/6D0b12kkMZo04vo9Dr1n2A6yiJWSIbSx3r39ejl6UUdtlJSEJPD2m7+54n
9YWZQyQLta5AIfnYBRosfBz362dQLI46N0VCCxdk2LWrp+0bTk7KEI8hsSoUYgujSHoxhv2Is2Md
E1Lp9DHPTkqaB5Oc/3QDmqaqNib/ZkC7YKpDZyEfugbU8ZLK5r/Zse+Dx9fozzOSPFhhxJ0mLECX
BxQLWt8qfAu1LrJgHnvU/+mRciDB/I4i5dC8MLrrmbu80adAP5Jm8YH2CgAA//8DAFBLAwQUAAYA
CAAAACEAO20yS8EAAABCAQAAIwAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQxLnhtbC5yZWxz
hI/BisIwFEX3A/5DeHuT1oUMQ1M3IrhV5wNi+toG25eQ9xT9e7McZcDl5XDP5Tab+zypG2YOkSzU
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
c2hlZXRzL19yZWxzL3NoZWV0Ny54bWwucmVsc4SPwWrDMBBE74H8g9h7JCfQUoLlXEIg1zb9AFVe
yyL2Smi3pfn76libQo/DY94w7el7ntQXFo6JLOx1AwrJpz5SsPB+u+xeQLE46t2UCC08kOHUbTft
K05OaonHmFlVC7GFUSQfjWE/4uxYp4xUyZDK7KTGEkx2/u4CmkPTPJvy2wHdwqmuvYVy7fegbo9c
l/93p2GIHs/Jf85I8seEySWSYHlDkXqQq9qVgGJB6zVb5yf9EQlM15rF8+4HAAD//wMAUEsDBBQA
BgAIAAAAIQBMWip6wgAAAEIBAAAjAAAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDgueG1sLnJl
bHOEj8FqwzAQRO+F/IPYeySnB1OK5VxKINcm/QBVXtui9kpoNyH+++hYm0KPw2PeMM3xMU/qjplD
JAsHXYFC8rELNFj4up72b6BYHHVuioQWFmQ4truX5hMnJ6XEY0isioXYwiiS3o1hP+LsWMeEVEgf
8+ykxDyY5PyPG9C8VlVt8m8HtCunOncW8rk7gLouqSz/7459Hzx+RH+bkeSPCZNyIMF8QZFykIva
5QHFgtZbts21/g4Epm3M6nn7BAAA//8DAFBLAwQUAAYACAAAACEAbhJCuPEAAABeAgAAJAAAAHhs
L3dvcmtzaGVldHMvX3JlbHMvc2hlZXQxMy54bWwucmVsc6ySwUoDMRCG74LvEOZusqkgIs32UoRe
tT5AzM7uhm4mIRmrfXtTBHVLxUtvmfnJNx/DLFcfYRJ7zMVHMqBlAwLJxc7TYOBl+3hzD6Kwpc5O
kdDAAQus2uur5RNOluunMvpURKVQMTAypwelihsx2CJjQqpJH3OwXMs8qGTdzg6oFk1zp/JvBrQz
pth0BvKmuwWxPaQ6+X927HvvcB3dW0DiMyOUi+EYlcq0eUA2IOV3U8vqCuq8xuKSGvswrbN9rzue
iXRfvaJ+ci3r+y8nfUmnlD0x5mdkrl7zDZ1k6qTWjXz1dLRUs6toPwEAAP//AwBQSwMEFAAGAAgA
AAAhAIVRP5nDAAAAQgEAACQAAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0MTIueG1sLnJlbHOE
j8FqwzAQRO+B/IPYeyQnh9IGy7mEQK5t+gGqvJZF7JXQbkvz99WxNoUeh8e8YdrT9zypLywcE1nY
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
AwQUAAYACAAAACEAFI6MKE8BAACKAgAAFAAAAHhsL3RhYmxlcy90YWJsZTEueG1sbFLLTsMwELwj
8Q+W7zRJCwWqJhUUFVUCDrR8wFJvG0uOHXk3ffw9TkpKK3Lc8czseOzxZF8YsUVP2tlUJr1YCrQr
p7TdpPJrObt5kIIYrALjLKbygCQn2fXVmOHboAhqS6nMmctRFNEqxwKo50q04WTtfAEcRr+JqPQI
inJELkzUj+NhVIC2UmiVyr4UForgvqxNw6Q0lQYOHxegx3Uqn5LR6+BRCnYMhj7dbpG7XUgey2wM
FbuZNoxenHOj7Bh26kxVWBIrV1lO5X1QNJc44k2QpA1Sb5aXwoZw1xKWSCymQJ2sYctyXqHv8rlv
GbgPcS0YrbpoyamZLZiqc1cyaK0WDFxRp81ty3muNmL+UnOis7vTbxMLPhic27U7f44GfEelqyL0
TqHumfbEx9bq4hvsDf5B9eOw1yWGDxKKrZVH0QmN/4JkPwAAAP//AwBQSwMEFAAGAAgAAAAhAFDb
c7NMAAAA3AAAACcAAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMi5iaW5ioBAw
sjCw3QGa4fy/gZ2RgZPhFVc+RwoDIwM/QwQTEwMTkGQG8nwYUhlKgDCVoYhC+0DaGaFmgGgmIJYF
Mv4DAVQYTgEAAAD//wMAUEsDBBQABgAIAAAAIQBQ23OzTAAAANwAAAAnAAAAeGwvcHJpbnRlclNl
dHRpbmdzL3ByaW50ZXJTZXR0aW5nczQuYmluYqAQMLIwsN0BmuH8v4GdkYGT4RVXPkcKAyMDP0ME
ExMDE5BkBvJ8GFIZSoAwlaGIQvtA2hmhZoBoJiCWBTL+AwFUGE4BAAAA//8DAFBLAwQUAAYACAAA
ACEAUNtzs0wAAADcAAAAJwAAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3M1LmJp
bmKgEDCyMLDdAZrh/L+BnZGBk+EVVz5HCgMjAz9DBBMTAxOQZAbyfBhSGUqAMJWhiEL7QNoZoWaA
aCYglgUy/gMBVBhOAQAAAP//AwBQSwMEFAAGAAgAAAAhAFDbc7NMAAAA3AAAACcAAAB4bC9wcmlu
dGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzNi5iaW5ioBAwsjCw3QGa4fy/gZ2RgZPhFVc+RwoD
IwM/QwQTEwMTkGQG8nwYUhlKgDCVoYhC+0DaGaFmgGgmIJYFMv4DAVQYTgEAAAD//wMAUEsDBBQA
BgAIAAAAIQBQ23OzTAAAANwAAAAoAAAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5n
czEwLmJpbmKgEDCyMLDdAZrh/L+BnZGBk+EVVz5HCgMjAz9DBBMTAxOQZAbyfBhSGUqAMJWhiEL7
QNoZoWaAaCYglgUy/gMBVBhOAQAAAP//AwBQSwMEFAAGAAgAAAAhAMZevJFKAAAA3AAAACcAAAB4
bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzOS5iaW5ioBAwsjCw3QGa4fy/gZ2RgZHh
FVc+RwqQ5meIYGIC0hFMzEDShyGVoQQIUxmKKLQPpJ0RagaIZgJiWSDjPxBAheEUAAAA//8DAFBL
AwQUAAYACAAAACEAK21eYksAAADcAAAAJwAAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0
dGluZ3M4LmJpbmKgEDCyMLDdAZrh/L+BnZGBkeEVVz5HCpDmZ4hgYmJgApLMQJ4PQypDCRCmMhRR
aB9IOyPUDBDNBMSyQMZ/IIAKwykAAAAA//8DAFBLAwQUAAYACAAAACEAUNtzs0wAAADcAAAAJwAA
AHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3M3LmJpbmKgEDCyMLDdAZrh/L+BnZGB
k+EVVz5HCgMjAz9DBBMTAxOQZAbyfBhSGUqAMJWhiEL7QNoZoWaAaCYglgUy/gMBVBhOAQAAAP//
AwBQSwMEFAAGAAgAAAAhAIz78tQTAgAAAAUAABAACAFkb2NQcm9wcy9hcHAueG1sIKIEASigAAEA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAnFTRbtpAEHyv1H+w/G5sCEEROhwRaISqRqDipI/V
9byGE/ade7tQ6Nd3jQuY1o2ivu3tjOfG6x2L+32ReztwqK0Z+d1O5HtglE21WY385+QxuPM9JGlS
mVsDI/8A6N/H79+JhbMlONKAHksYHPlronIYhqjWUEjsMGwYyawrJPHRrUKbZVrB1KptAYbCXhQN
QtgTmBTSoDwL+rXicEf/K5paVfnDl+RQsuFYjMsy10oSv2X8pJWzaDPyPuwV5CJsgoLdLUFtnaZD
HImweRRLJXOYsHCcyRxBhJeGmIGshraQ2mEsdjTcgSLrPNQ/eWw93/smESo7I38nnZaG2FZFqw/H
Oi+RXPzFug2uAQhFyIS6eSyb3Gat+3H39sjg6ppZKdROGLj2mGjKAefZQjpqsdy9bXo+uqgd14Ym
1sHDVufp8oAERdPq2fRs/tDaH0+T1v6SHCB6CSDxKFspE1vwl5RG8fTP91RzrF1NNU/QvqqwAHfc
SZZ4lfcdiu3+buApftFAF3IFAUqyAaab1qt/878O+sFbH4GAc5DbH2++Y7Z1zprPmgPb6uGjRA7l
IztGaiWMk/lTsJi0Ystq53r/hm6a0NVe/bFJ1TeS5sALd64+abPB5zKxU0lwSs91UyzX0kHKgTvh
l4aYcXBcXolM1tKsID1x/gaqrL/UP7S42+9ENxHHuNET4eXXFf8CAAD//wMAUEsBAi0AFAAGAAgA
AAAhAB3xnwTjAQAAWg4AABMAAAAAAAAAAAAAAAAAAAAAAFtDb250ZW50X1R5cGVzXS54bWxQSwEC
LQAUAAYACAAAACEAtVUwI/UAAABMAgAACwAAAAAAAAAAAAAAAAAcBAAAX3JlbHMvLnJlbHNQSwEC
LQAUAAYACAAAACEAtw5dbFgBAAB/CgAAGgAAAAAAAAAAAAAAAABCBwAAeGwvX3JlbHMvd29ya2Jv
b2sueG1sLnJlbHNQSwECLQAUAAYACAAAACEA9oLP6ZUCAADiBQAADwAAAAAAAAAAAAAAAADaCQAA
eGwvd29ya2Jvb2sueG1sUEsBAi0AFAAGAAgAAAAhAAPVZItPAgAAUAUAABgAAAAAAAAAAAAAAAAA
nAwAAHhsL3dvcmtzaGVldHMvc2hlZXQ0LnhtbFBLAQItABQABgAIAAAAIQBhnziT2gAAAMoBAAAj
AAAAAAAAAAAAAAAAACEPAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0My54bWwucmVsc1BLAQIt
ABQABgAIAAAAIQBpFuY42QAAAMoBAAAjAAAAAAAAAAAAAAAAADwQAAB4bC93b3Jrc2hlZXRzL19y
ZWxzL3NoZWV0Mi54bWwucmVsc1BLAQItABQABgAIAAAAIQA7bTJLwQAAAEIBAAAjAAAAAAAAAAAA
AAAAAFYRAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0MS54bWwucmVsc1BLAQItABQABgAIAAAA
IQC96CwtVwgAAHApAAAYAAAAAAAAAAAAAAAAAFgSAAB4bC93b3Jrc2hlZXRzL3NoZWV0Mi54bWxQ
SwECLQAUAAYACAAAACEABk3+Se0KAAAdOgAAGAAAAAAAAAAAAAAAAADlGgAAeGwvd29ya3NoZWV0
cy9zaGVldDMueG1sUEsBAi0AFAAGAAgAAAAhAEOWEaPCAAAAQgEAACMAAAAAAAAAAAAAAAAACCYA
AHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ2LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAGTzNCLC
AAAAQgEAACMAAAAAAAAAAAAAAAAACycAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ3LnhtbC5y
ZWxzUEsBAi0AFAAGAAgAAAAhAExaKnrCAAAAQgEAACMAAAAAAAAAAAAAAAAADigAAHhsL3dvcmtz
aGVldHMvX3JlbHMvc2hlZXQ4LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAG4SQrjxAAAAXgIAACQA
AAAAAAAAAAAAAAAAESkAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQxMy54bWwucmVsc1BLAQIt
ABQABgAIAAAAIQCFUT+ZwwAAAEIBAAAkAAAAAAAAAAAAAAAAAEQqAAB4bC93b3Jrc2hlZXRzL19y
ZWxzL3NoZWV0MTIueG1sLnJlbHNQSwECLQAUAAYACAAAACEAojQaGMIAAABCAQAAJAAAAAAAAAAA
AAAAAABJKwAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDEwLnhtbC5yZWxzUEsBAi0AFAAGAAgA
AAAhAGs/D/vDAAAAQgEAACMAAAAAAAAAAAAAAAAATSwAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hl
ZXQ5LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhALemYhpkAgAAhAQAABsAAAAAAAAAAAAAAAAAUS0A
AHhsL2RyYXdpbmdzL3ZtbERyYXdpbmcxLnZtbFBLAQItABQABgAIAAAAIQAwFXl+9QYAAOgiAAAY
AAAAAAAAAAAAAAAAAO4vAAB4bC93b3Jrc2hlZXRzL3NoZWV0MS54bWxQSwECLQAUAAYACAAAACEA
+2KlbZQGAACnGwAAEwAAAAAAAAAAAAAAAAAZNwAAeGwvdGhlbWUvdGhlbWUxLnhtbFBLAQItABQA
BgAIAAAAIQBCoBXg3gUAAHMcAAAZAAAAAAAAAAAAAAAAAN49AAB4bC93b3Jrc2hlZXRzL3NoZWV0
MTIueG1sUEsBAi0AFAAGAAgAAAAhAO5TxxtkCAAAeisAABkAAAAAAAAAAAAAAAAA80MAAHhsL3dv
cmtzaGVldHMvc2hlZXQxMy54bWxQSwECLQAUAAYACAAAACEAk4Aot1IBAABfAgAAGQAAAAAAAAAA
AAAAAACOTAAAeGwvd29ya3NoZWV0cy9zaGVldDE0LnhtbFBLAQItABQABgAIAAAAIQCTgCi3UgEA
AF8CAAAZAAAAAAAAAAAAAAAAABdOAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTUueG1sUEsBAi0AFAAG
AAgAAAAhAIcXtbAACQAACEMAAA0AAAAAAAAAAAAAAAAAoE8AAHhsL3N0eWxlcy54bWxQSwECLQAU
AAYACAAAACEABH3l5McQAAAMQAAAFAAAAAAAAAAAAAAAAADLWAAAeGwvc2hhcmVkU3RyaW5ncy54
bWxQSwECLQAUAAYACAAAACEAXE7DRZoHAABwLwAAGQAAAAAAAAAAAAAAAADEaQAAeGwvd29ya3No
ZWV0cy9zaGVldDExLnhtbFBLAQItABQABgAIAAAAIQDYaJFq/gQAAKMaAAAYAAAAAAAAAAAAAAAA
AJVxAAB4bC93b3Jrc2hlZXRzL3NoZWV0OS54bWxQSwECLQAUAAYACAAAACEAVXv+UYQCAAAqBgAA
GAAAAAAAAAAAAAAAAADJdgAAeGwvd29ya3NoZWV0cy9zaGVldDUueG1sUEsBAi0AFAAGAAgAAAAh
APFZAeUeCAAAhDEAABkAAAAAAAAAAAAAAAAAg3kAAHhsL3dvcmtzaGVldHMvc2hlZXQxMC54bWxQ
SwECLQAUAAYACAAAACEAuKJSpoUEAABPEwAAGAAAAAAAAAAAAAAAAADYgQAAeGwvd29ya3NoZWV0
cy9zaGVldDYueG1sUEsBAi0AFAAGAAgAAAAhAPglbkn8BAAAoxoAABgAAAAAAAAAAAAAAAAAk4YA
AHhsL3dvcmtzaGVldHMvc2hlZXQ4LnhtbFBLAQItABQABgAIAAAAIQDpG7MViQIAAIsFAAAYAAAA
AAAAAAAAAAAAAMWLAAB4bC93b3Jrc2hlZXRzL3NoZWV0Ny54bWxQSwECLQAUAAYACAAAACEAUNtz
s0wAAADcAAAAJwAAAAAAAAAAAAAAAACEjgAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0
aW5nczEuYmluUEsBAi0AFAAGAAgAAAAhAL/2XPk+AQAAUQIAABEAAAAAAAAAAAAAAAAAFY8AAGRv
Y1Byb3BzL2NvcmUueG1sUEsBAi0AFAAGAAgAAAAhAAy8BB/LAQAA2gMAABAAAAAAAAAAAAAAAAAA
ipEAAHhsL2NvbW1lbnRzMS54bWxQSwECLQAUAAYACAAAACEAobvENlkBAACwAgAAFAAAAAAAAAAA
AAAAAACDkwAAeGwvdGFibGVzL3RhYmxlMi54bWxQSwECLQAUAAYACAAAACEAK21eYksAAADcAAAA
JwAAAAAAAAAAAAAAAAAOlQAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczMuYmlu
UEsBAi0AFAAGAAgAAAAhABSOjChPAQAAigIAABQAAAAAAAAAAAAAAAAAnpUAAHhsL3RhYmxlcy90
YWJsZTEueG1sUEsBAi0AFAAGAAgAAAAhAFDbc7NMAAAA3AAAACcAAAAAAAAAAAAAAAAAH5cAAHhs
L3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3MyLmJpblBLAQItABQABgAIAAAAIQBQ23Oz
TAAAANwAAAAnAAAAAAAAAAAAAAAAALCXAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRp
bmdzNC5iaW5QSwECLQAUAAYACAAAACEAUNtzs0wAAADcAAAAJwAAAAAAAAAAAAAAAABBmAAAeGwv
cHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczUuYmluUEsBAi0AFAAGAAgAAAAhAFDbc7NM
AAAA3AAAACcAAAAAAAAAAAAAAAAA0pgAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGlu
Z3M2LmJpblBLAQItABQABgAIAAAAIQBQ23OzTAAAANwAAAAoAAAAAAAAAAAAAAAAAGOZAAB4bC9w
cmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMTAuYmluUEsBAi0AFAAGAAgAAAAhAMZevJFK
AAAA3AAAACcAAAAAAAAAAAAAAAAA9ZkAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGlu
Z3M5LmJpblBLAQItABQABgAIAAAAIQArbV5iSwAAANwAAAAnAAAAAAAAAAAAAAAAAISaAAB4bC9w
cmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzOC5iaW5QSwECLQAUAAYACAAAACEAUNtzs0wA
AADcAAAAJwAAAAAAAAAAAAAAAAAUmwAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5n
czcuYmluUEsBAi0AFAAGAAgAAAAhAIz78tQTAgAAAAUAABAAAAAAAAAAAAAAAAAApZsAAGRvY1By
b3BzL2FwcC54bWxQSwUGAAAAADAAMADlDQAA7p4AAAAA

--_004_A45D4FDC92525B4F8A75E1B55399F328C10137IRSMSX104gercorpi_--
