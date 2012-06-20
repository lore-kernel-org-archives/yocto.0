Return-Path: <laurentiu.serban@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D5A5E01453
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 11:58:50 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 20 Jun 2012 11:58:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="xml'?ods'72,48?png'72,48,150?scan'72,48,150,208,217,48,150,72";
	a="114327664"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Jun 2012 11:58:48 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.176]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.231]) with mapi id
	14.01.0355.002; Wed, 20 Jun 2012 19:58:47 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Fullpass Test Report for Yocto 1.3 M1 RC1 20120613 Build on
	non-x86 platforms
Thread-Index: AQHNTrs7HKK523YvzUC5tk/6pH5af5cDj+6Q
Date: Wed, 20 Jun 2012 18:58:46 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC1914DA8E@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: FW: Fullpass Test Report for Yocto 1.3 M1 RC1 20120613 Build on non-x86 platforms
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
X-List-Received-Date: Wed, 20 Jun 2012 18:58:51 -0000
X-Groupsio-MsgNum: 7356
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC1914DA8EIRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC1914DA8EIRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC1914DA8EIRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC1914DA8EIRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable



From: Yi Zhao [mailto:yi.zhao@windriver.com]
Sent: Wednesday, June 20, 2012 11:04 AM
To: Serban, Laurentiu
Cc: Xu, Jiajun; liangli; Zhao, Zhenfeng1; Yocto Project Discussions; Xu, Ho=
ngnaX; Georgescu, Alexandru C
Subject: Fullpass Test Report for Yocto 1.3 M1 RC1 20120613 Build on non-x8=
6 platforms

Hi Laurentiu,

This is the fullpass test report for Yocto 1.3 20120613 build on non-x86 pl=
atforms.  There is no new bug found in this testing.


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

Syslogd can't startup

=1B$B!!=1B(B

Routerstationpro

GOOD

Syslogd can't startup

=1B$B!!=1B(B

Mpc8315e-rdb

GOOD

Syslogd can't startup

QEMU

qemuarm

GOOD

Syslogd can't startup

=1B$B!!=1B(B

qemuppc

GOOD

Syslogd can't startup

=1B$B!!=1B(B

qemumips

GOOD

Syslogd can't startup

Core Build System

BUGGY

Incremental RPM image generation doesn't work; Gtk-directfb image build fai=
led

ADT Toolchain

GOOD

Everything runs well

Compliance

GOOD

LTP result: https://wiki.pokylinux.org/wiki/LTP_result
POSIX result: https://wiki.pokylinux.org/wiki/Posix_result

Stress

Beagleboard

GOOD

Crashme and LTP stress could pass 24 hours testing


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

42

0

40

2 (bug 2535)

0

Routerstationpro Sato-SDK

35

0

33

2 (bug 2535)

0

Mpc8315e-rdb Sato-SDK

38

0

36

2 (bug 2535)

0

Qemuarm Sato

32

0

30

2 (bug 2535)

0

Qemuarm Sato-SDK

37

0

35

2 (bug 2535)

0

Qemumips Sato

32

0

30

2 (bug 2535)

0

Qemumips Sato-SDK

37

0

35

2 (bug 2535)

0

Qemuppc Sato

32

0

30

2 (bug 2535)

0

Qemuppc Sato-SDK

37

0

35

2 (bug 2535)

0

Core Build System

12

0

10

2 (bug 2580, 2617)

0

ADT Toolchain

16

0

16

0

0

Compliance

2

0

2

0

0

Stress

2

0

2

0

0

Total

354

0

334

20

0


* You can check the detailed test result in attachment for each target.
** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.


Commit information
--------------------------------
Tree/Branch: poky/1.3_M1
Poky Commit: 7f017cab0b3e4d5a4fc356eccd8eb8429b0531d0


Issue Summary
-----------------------------------
Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2508 Fotowall icons appear abnormal on qemumips sato-sdk images with ni=
ghtly build (20120523-2)
Bug 2509 The 'About' option with connman-properties doesn't display the pic=
ture.
Bug 2535 syslog is not started by default in background on bsps(Crownbay,N4=
50 etc)

1.3 M2
1.3 M2
1.3 M2

Others

Core Build System

Bug 2580 Build gtk-directfb image failed
Bug 2617 Incremental RPM image generation doesn't work with 1.3 M1 RC1

1.3 M2
1.3 M3

ADT Toolchain

Compliance

Compliance testing is finished.
LTP test result is on https://wiki.pokylinux.org/wiki/LTP_result
POSIX test result is on https://wiki.pokylinux.org/wiki/Posix_result

Stress

Crashme and LTP stress could pass 24 hours testing on beagleboard.






Thanks & Best Regards,
Yi



--_000_E16513A01CAAFF40B65178C63CE45EEC1914DA8EIRSMSX102gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;
	color:black;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> Yi Zhao [mailto:yi.zhao@windriver.com]
<br>
<b>Sent:</b> Wednesday, June 20, 2012 11:04 AM<br>
<b>To:</b> Serban, Laurentiu<br>
<b>Cc:</b> Xu, Jiajun; liangli; Zhao, Zhenfeng1; Yocto Project Discussions;=
 Xu, HongnaX; Georgescu, Alexandru C<br>
<b>Subject:</b> Fullpass Test Report for Yocto 1.3 M1 RC1 20120613 Build on=
 non-x86 platforms<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi Laurentiu,<br>
<br>
This is the fullpass test report for Yocto 1.3 20120613 build on non-x86 pl=
atforms.&nbsp; There is no new bug found in this testing.
<br>
<br>
<br>
<b>Test Summary<br>
-------------------------</b><o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellpadding=3D"0" width=3D"982=
" style=3D"width:736.5pt">
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
<p class=3D"MsoNormal">Syslogd can't startup<o:p></o:p></p>
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
<p class=3D"MsoNormal">Syslogd can't startup<o:p></o:p></p>
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
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD <o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Syslogd can't startup<o:p></o:p></p>
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
<p class=3D"MsoNormal">Syslogd can't startup<o:p></o:p></p>
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
<p class=3D"MsoNormal">Syslogd can't startup<o:p></o:p></p>
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
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Syslogd can't startup<o:p></o:p></p>
</td>
</tr>
<tr>
<td nowrap=3D"" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>Core Build System</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"background:orange;padding:.75pt .75pt .75pt .75=
pt">
<p class=3D"MsoNormal">BUGGY<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Incremental RPM image generation doesn't work; Gtk-d=
irectfb image build failed<o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>ADT Toolchain</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"background:green;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>Compliance</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td nowrap=3D"" valign=3D"top" style=3D"background:green;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">LTP result: <a href=3D"https://wiki.pokylinux.org/wi=
ki/LTP_result">
https://wiki.pokylinux.org/wiki/LTP_result</a><br>
POSIX result: <a href=3D"https://wiki.pokylinux.org/wiki/Posix_result">http=
s://wiki.pokylinux.org/wiki/Posix_result</a><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>Stress</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Beagleboard<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"background:green;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Crashme and LTP stress could pass 24 hours testing<o=
:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0">
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
<table class=3D"MsoNormalTable" border=3D"1" cellpadding=3D"0">
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">42<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">40</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 2535)</span><o:p></o:p></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">35<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">33</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 2535)</span><o:p></o:p></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">38<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">36</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 2535)</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
arm Sato</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">32<o:p>=
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">30</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 2535)</span><o:p></o:p></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">37<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">35</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 2535)</span><o:p></o:p></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">32<o:p>=
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">30</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 2535)</span><o:p></o:p></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">37<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">35</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 2535)</span><o:p></o:p></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">32<o:p>=
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">30</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 2535)</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
ppc Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">37<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">35</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 2535)</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Core=
 Build System</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">12<o:p>=
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">10</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 2580, 2617)</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>ADT =
Toolchain</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">16<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">16</span><o:p></o:p></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
liance</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">2</span><o:p></o:p></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">2</span><o:p></o:p></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">354<o:p=
></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:green">334</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">20</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
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
Tree/Branch: poky/1.3_M1<br>
Poky Commit: 7f017cab0b3e4d5a4fc356eccd8eb8429b0531d0<br>
<br>
<b><br>
Issue Summary<br>
-----------------------------------</b><o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellpadding=3D"0">
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
<p class=3D"MsoNormal"><b>System Usage</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Bug 2508 Fotowall icons appear abnormal on qemumips =
sato-sdk images with nightly build (20120523-2)<br>
Bug 2509 The 'About' option with connman-properties doesn't display the pic=
ture. <br>
Bug 2535 syslog is not started by default in background on bsps(Crownbay,N4=
50 etc)
<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">1.3 M2<br>
1.3 M2<br>
1.3 M2<o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Othe=
rs</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Core=
 Build System</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Bug 2580 Build gtk-directfb image failed<br>
Bug 2617 Incremental RPM image generation doesn't work with 1.3 M1 RC1<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">1.3 M2<br>
1.3 M3<o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>ADT =
Toolchain</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
liance</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Compliance testing is finished.<br>
LTP test result is on <a href=3D"https://wiki.pokylinux.org/wiki/LTP_result=
">https://wiki.pokylinux.org/wiki/LTP_result</a><br>
POSIX test result is on <a href=3D"https://wiki.pokylinux.org/wiki/Posix_re=
sult">https://wiki.pokylinux.org/wiki/Posix_result</a><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Stre=
ss</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Crashme and LTP stress could pass 24 hours testing o=
n beagleboard.
<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
<br>
<br>
<br>
<br>
Thanks &amp; Best Regards,<br>
Yi<br>
<br>
<br>
<o:p></o:p></p>
</div>
</body>
</html>

--_000_E16513A01CAAFF40B65178C63CE45EEC1914DA8EIRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC1914DA8EIRSMSX102gercor_
Content-Type: application/vnd.oasis.opendocument.spreadsheet;
	name="M1_20120613_detail_testreport_fullpass.ods"
Content-Description: M1_20120613_detail_testreport_fullpass.ods
Content-Disposition: attachment;
	filename="M1_20120613_detail_testreport_fullpass.ods"; size=18755;
	creation-date="Wed, 20 Jun 2012 08:03:51 GMT";
	modification-date="Wed, 20 Jun 2012 08:03:51 GMT"
Content-ID: <0D1DBB40746BA040A24D8FAF959B39EB@intel.com>
Content-Transfer-Encoding: base64

UEsDBBQAAAgAABIw1ECFbDmKLgAAAC4AAAAIAAAAbWltZXR5cGVhcHBsaWNhdGlvbi92bmQub2Fz
aXMub3BlbmRvY3VtZW50LnNwcmVhZHNoZWV0UEsDBBQAAAgAABIw1EB+oszNuQMAALkDAAAIAAAA
bWV0YS54bWw8P3htbCB2ZXJzaW9uPSIxLjAiIGVuY29kaW5nPSJVVEYtOCI/Pgo8b2ZmaWNlOmRv
Y3VtZW50LW1ldGEgeG1sbnM6b2ZmaWNlPSJ1cm46b2FzaXM6bmFtZXM6dGM6b3BlbmRvY3VtZW50
OnhtbG5zOm9mZmljZToxLjAiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hs
aW5rIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOm1l
dGE9InVybjpvYXNpczpuYW1lczp0YzpvcGVuZG9jdW1lbnQ6eG1sbnM6bWV0YToxLjAiIHhtbG5z
Om9vbz0iaHR0cDovL29wZW5vZmZpY2Uub3JnLzIwMDQvb2ZmaWNlIiB4bWxuczpncmRkbD0iaHR0
cDovL3d3dy53My5vcmcvMjAwMy9nL2RhdGEtdmlldyMiIG9mZmljZTp2ZXJzaW9uPSIxLjIiPjxv
ZmZpY2U6bWV0YT48bWV0YTpjcmVhdGlvbi1kYXRlPjIwMTEtMDMtMDJUMTM6MTM6MTYuODI8L21l
dGE6Y3JlYXRpb24tZGF0ZT48ZGM6dGl0bGU+VGVzdExpbms8L2RjOnRpdGxlPjxkYzpkYXRlPjIw
MTItMDYtMjBUMTQ6MDA6MzY8L2RjOmRhdGU+PG1ldGE6ZWRpdGluZy1kdXJhdGlvbj5QMjFEVDEx
SDU1TTQ5UzwvbWV0YTplZGl0aW5nLWR1cmF0aW9uPjxtZXRhOmVkaXRpbmctY3ljbGVzPjQwMTwv
bWV0YTplZGl0aW5nLWN5Y2xlcz48bWV0YTpnZW5lcmF0b3I+TGlicmVPZmZpY2UvMy41JExpbnV4
X1g4Nl82NCBMaWJyZU9mZmljZV9wcm9qZWN0LzM1MG0xJEJ1aWxkLTI8L21ldGE6Z2VuZXJhdG9y
PjxtZXRhOnByaW50LWRhdGU+MjAxMS0wMy0xNlQxMzozNTo1Ni41ODwvbWV0YTpwcmludC1kYXRl
PjxkYzpjcmVhdG9yPlpoYW9ZaSA8L2RjOmNyZWF0b3I+PG1ldGE6ZG9jdW1lbnQtc3RhdGlzdGlj
IG1ldGE6dGFibGUtY291bnQ9IjEzIiBtZXRhOmNlbGwtY291bnQ9IjExMTQiIG1ldGE6b2JqZWN0
LWNvdW50PSIwIi8+PC9vZmZpY2U6bWV0YT48L29mZmljZTpkb2N1bWVudC1tZXRhPlBLAwQUAAgI
CAASMNRAAAAAAAAAAAAAAAAADAAAAHNldHRpbmdzLnhtbO2dW1fiOhTH38+ncPF6FkMLjiMsZVZB
8MJlKIWCvKVthIxp0klSK376k3JxKYJigVngiQ860OS/t7n8srNnuTn7+ejjowfIOKLkPKV/01JH
kLjUQ2R4nup2qunT1M/iP2f07g65sOBRN/QhEWkOhZBN+JHsTnhh+vg8FTJSoIAjXiDAh7wg3AIN
IJl3K7xsXZgYm77ziBG5P0+NhAgKmUwURd+i3DfKhhk9n89nJk/nTV1K7tBwXVPT1i9NUUqfDcUd
ps5MjGU17TgzfZ06mjn5YmiyqeJ8HOa/fvFsZmD6I40E9OOxOZq9Hbt2npImCw8IRs+jllrW73Uf
G3HkYGgwCDo0SM0finEgHyIiUsWsnjs+y7zV+ZR2Hd6JZeLaxso95InRUr+13BYcv4JoOFrqun6a
Pf6+rn7aB0EaEQ8+Qm/RFoyWT9Skj1xibLyOxzC69hbc5ILJVZAqxmtC/5SnseiCnx0gR+QjR193
MS46Rx1KsTsCiKyxFssh45S1KEdCboX+0klNNqGvlW+XKZ8kU76iDD1RIgC2AoxEg3pwcRZGlG2w
0iETyN2V+oL38wHa5k596f8O9A1XoAc4UW8DMlwxPAmXzdzfLdNrLttehZYNdVeAfEPVEhWC+lsU
HlDqd6TKVld0LGoDHC6qTpGtJR0DMIQxYt9VP0kobo1odMnQIr0dSU4IJDcFC+Fy5SVvvn9orCJ1
mfpyBwEiAxKFaYVphWmFaYXpfcQ0g0elEGHvyBpz2XDfaa2vfe1QuFa4VrhWuP5KuLYEg3ydJJyK
qBWiFaIVohWi/zaiHQiGGDoUMC/NgaBp7t3vO7BzPxSxFbEVsZMQO6+IfeDE9gP3NKd/h2nmOQeD
7GOVB1HIVshOhOyE91OF7L1B9h/oh4D5E1rvO6lzp4rUitSK1IrU/3dSH0RcnVO0VrRWtE5Caz3h
8Cpc7xWufRRwFVkrVitWK1YrVh8Iq1VsrXiteK14rXi917wOAleF1grVCtVfGNUqaf2VSK0Ca0Vr
ReuvS+uEW0fRem9ozWgoIOMCxBMdMHo42N4O+BS2FbYVthW29wLbqx7HZr11t9akMtTiFM1KT735
i/WNKeQyirED2Mq6X6c/1J9lbbzaYgMlBsF9i8G4fNiqlXcHMF+x9NYxM4CMTvznn1/a6+g3qdiV
dLL9+JFyrFqmmLIFaUzj3aRnT3LZ7PeEKYtX87qDUbkCXLoe+qRNoysIPBnl7cSINYJQSOjsQP2a
/woFRgRaY9+hmFtw8fTdihGLgKBD20ACcXGit7GzpsLXfFbGcGcW2pDL+V4Ziku6JSTQovzy2iIb
yluh46EHxFe6vyXx5c4nXTpTeeMRcWtM3BGjBD3BvxcYzEpYLm/AoVh6E1xaqHT6Rsgm98DPVCzd
9blRp8BrS3xRgsc72DrdwAMCVpmMNaAfYPnvwzpFDIzlMSKjO3FDnXJcMg4fLCIPAwGra8dWKXOQ
50FSHgEG3DivsnEl2bq8I4fg7TV5GtBn1kil0DC2lLi/DRgCZPHcXb9/CQ4RqcszPLFChXjv9t8g
F7bp+BchSZjgem9Wil0rYe7m0Ofqw3PuQxyGgpYBdsPdkHwCWskSKMLFjI0DODw5LiEC5LQWiXn1
b0YbmfXu48jN2mPLt7W6bYwbFxXd2MMvU7fN7lNw3S3rjdt+E7v3AfbKutn4bTw2zVdNe4bRMKLo
+XXFMEZW/NOT3yw/j9qXVe3WMh7LpDQGve/aoH+dt6qG6FxWnwb9m9qgb4ruxXXU6HRrTu4mGMg2
t/124GSP893L/Ni7uhmBvlm7zeYj0LOfWp1KzelVx4MsDgeX1T9ev6k5PTv0LrSofmHwRjmKyn7z
wZF9B5d25F0O843fZs29avJBf4Ad2U76cj/w29jz8e9BR3vZPgt6TdzqGLVutVQxs/nQu7SPJ7+D
GZi3PQ93s/hk0AlKTaN045CS7lWb3MmZJ2bf1pyoVPH6JWlneNLx8+FAjlVlWLroaLpp2u27dtU2
OxX7tq/prXalWzMqbbtbeaz2qvlW+/72fO/u0tf8YlZK35KH2OpQdoPDfrd3xtkWbcoXK+h61UrX
5WZlN1CkW1lNX7tq/MLJgMj9NHpcneVPmGi95jXIiMElzFshcUUIliTht5L0AQ/Qnn7UwS9SxpTv
7na6y/uvEQR43JVTegEE2P6SOuzr9V9Jouw6mbW7FN9zrB4X3Y4LBMb/H7PttPP2EgVrwHXzrN/K
bELmzQehZFZ9REzxP1BLBwhv1NlumQYAAGRmAABQSwMEFAAICAgAEjDUQAAAAAAAAAAAAAAAAAsA
AABjb250ZW50LnhtbO2d25LjNn7G7/MUqN6qrU1NdCIlSuJ6Zms8s05NZcZ2TbezztUWREISVzyZ
hz74FXKZ98gb5G2S9whASmpK3dSQapItEp8vbDcJAn/i+3AgCfz03V/uHZvcsiC0PPft1ag/vCLM
NTzTcldvr365+aE3u/rLu3/6zlsuLYPppmfEDnOjnuG5Ef8v4Ve7oZ6efXsVB67u0dAKdZc6LNQj
Q/d85u6u0rOp9aSs9EgYPdiFL08SZ6+O2H1U9GKR9uBauihecpI4e7UZ0LuiF4u0vFKzly+9ohff
h3Zv6fFad3waWUdR3NuWu3l7tY4iXx8M7u7u+ndq3wtWg9F8Ph8kZ/cBG/t0fhzYSSrTGDCbicLC
wag/GuzSOiyiReMTabMhubGzYEHhqqERfaKqH7CQJ+G3K4xZLKPsNQf+ul0VdtftKqeajTUNCvss
SXxoFdUsbhXVzF7r0Gido+9s8IWfTP715fOjrwKnaFki7UFVGYHlF77NNHX2es/z9qGKC9LGnoSr
DIfjQfp3JvXdyeR3gRWxIJPcOJncoLaxr3HPea7SeLrRgKfosVth+X0jEhUR5lygDNLT+8ShmZv1
r18+Xxtr5tDHxNa3E/csN4yo+1gzgRAh904ng4D5XhDtK2ZZvPPlain72NaRY+d3HeLsLukqMM1n
k/Jw1AHvRngj7t1a7O4PB33raT/MB0mivXEtZu9ayT7t9nbYvc8CS9wJtYURek7IK42bw/P1zNWH
/Wvg3BfLThjCM5fHOR41DiMM1ei5Orj5OhDnemJ44R3otqTMsKpcvduNoWmbCQf7A0s+lvaW1GA9
kxl2+O67tC/cHybp3yLut1fvA4vaoyvC+6ldCseyH/YnBkUuz7/+mxl8ZP+g/x6Ta+qGz2TyR+p7
4Z8zadID38r0y3Xsrshna7WOyPWH3HwPk22zJpmMfSsyeE95S/m9CFsVvBduhOU3b0YkeqbINHFv
xVyegHdOgedQ9yVB3XBThuRHdke+brN6Pq6jdE2E9t41qc0SXckvn3IjO0yWHvsXsj0nXEZ+cS0+
xWTky3WBsMM7KwxfFLYoM8/x9RadaQlKieZSf3VkJMjX8QytHsKIORXV2HO91Fk19uKgvlB39ayF
9ifqLP2Grj0xnXhS+v5EnaX/33//5//+z389U/r+xEtLH+SNg9vjNI74bUaW0Uvy2Q+Qyb8PYjU8
ZbYvbRtmMsHgU3o7dtyr3aXZgz2fD/gsiCzenS49fREwuuktGB/7eY6i7F2O2+R3limm45P+ZDw3
nOQGMvGcDG7eXHDarGRw6rCp4JT+bFqy4qZNxab1J6pSsuLGTQU37U81tWRwk6aCG436o9GoZHRN
Baf2x/NZydi05tqDopVsEI11JNP+bFSy4kaNdSTz/nhYsj0kjz4N9SSqVrbmlAZ7krLjw6ixxjoa
9oeTkp3wqLFOWO1PFK1kcI11wtP+XCnZlYwa6+fmfNwvOUCMGhv4Vd5cy3qusbkmb67Dsn1JY0PE
vK+NSwanNDZE8NZatitRGhsipv2xVrJBKI0NEfP+vGyDUJqcz5XtSpQGRwhlWvbJsMERYjYtK2uD
I8RkPi45TW+stap9bVhybFUba638GWJS9gGnsdY640+GZWuusYF/1p+Oyr4qaXDgn43LNogGB/7R
sGRXMm5w4FdnJRvEuLGuhM+ExyWHr3FjXYnaL9tYx431JFpfm5d6+Aq8HFED7+4oMH4kG1V6Shxc
M/HF8e3VsD9OHq5OBxyHrOf5keVQu5e9OgpiVibuHL3Pi3usNRZ3jhfOijttJc3EnTM9vHCfRPR5
f+8OOjSMWNDz6Yr1dh/YljS2o6ObytxQusrNtELfpg/beLa5idU4lrvqOZ7Jc7KDXrQo0U+wvP6V
2ftPaD4NxPLC5I+TAYuLjjqRu4D6SZWKJRfij8dPW2JdxlPRhAR3lmvy2k++PfG+xgsO7zi50Isj
23J5KEtqh4enxPFetA68eLVOo3575XruYSLfC600qoNPYTnf+/mdJKdD63cmXob5UXLMpu4q5jK+
vWJpIsOL3SjgtfjLdeaiXQiBI75L8sNJBOGammKl1ZPQYtdkQXITB8HvsrvbmnKX37NXpm4QK0It
N/bi8LDuboukOqjGvJT7WunR0KLurm7Sk7vq2Z37ff04giT1tDvx4cfD/BKnbc8d3mamBk4kSAIS
KwZtdp8T0v7s2joOan/q03Nh7c/mB5aTJKlV5vhrmtooK3xyecBsiy2fccResDw37xNsm8tj0ynT
F+RNZ6roCzLBUttaub3QiwOxPnlp3e8yD5jP6H4d875pn+5GeER0xY+sj3qex6LErYklZOh6qup6
Fp5touNBx1NVx5P3GrBkx/Nsq66uyZ0YfU+68aXWOaVwiUrOe0FyWZVcrF87oYIoblfNRwvXyncc
zM3pOEQwZdRNotqLdzqugv3H09j2p56P7gXeyXsVflneOdMaSoWt+Hmdt4uZL1/n3HUixYTepki2
HWTP/zis3ANlbuplz7gN3lSeWR93COQ5LbNToHC1nDfd/zEx1d+V4d/HhaqmhqeBBTU2Kz49dM3H
OTpvx2mwOc8L20xvRQAGtXdPBo5lmtn1ttU9TdTUrWWn3jk+Obc7ez7rI4u9ZM6SFFDGoXnvsBtw
6LdtVsxQdXcNh3t/Ckw4ygiQ95H5dYb9Ms6paMLSpteabXuJgPeXeI3wJMGLXiPkLpvEC0xZOxm8
qUQXU2kXk7cGChOLi2nzlzOxeJV3kS/uGl71XWX3e5A638PL91Ujd0/FhVYn3kF/S9HcjSg1K1om
RAlXTWEWUMUs4BlAw8U9Ghz2H8/gNPDscNbIn7tP7GUdW9KukrD+sFwO+T8vaLEtnwzkbnZ7pckA
FjNc5ASjzuVGF+SSYnPKhl3SkmnozdMZHpcbT1+HlfR0QKulks6dR5ZpN09wh2dM0O7vc5rOk6lI
ycbzBPJXucSDXK7X9sTCMx8ecZl+wKgZrhmL3n2X7k1J/r3dp5Kq+xtzYho4vZCKDTbpmWx/mmyT
SQ/7gfX4ueQgx+3WtGcuT4A7230xac+cPkk912UPCucpFkBVnqlaR6D7yku5ztu0YS/9BsVMYQZl
dG7JgXf3TLHJzr2DUnm6bJGTY/V4cQXCHCeGPCq/WEBKfokHFZYsCdgxYKkd82e3B5+fCCPuvZXI
RFDI/Xc3LIw+W+6G8HjSI4eBifzPukf1/HtUC9+jVvgeyXVsReycmzy/yA80bK7E//CMyCOjvkq+
jIgyHClDbaSS72PLNquWdnQ59j246x9i2/ZpGJKk9gfkOkE/kj9Sx/8z+eAFjPx0XYEeBRvWh56i
zYb67w8+nxAQPiLxId8kCWPbtplJxF93XrARRTQW1c+8emCHV7PDaGeHNbN9EjIaGOuXhyCGPWh/
6dorO+1T2YlPjQ2fTUN+OeRXd/IHzPFuGeSXS/7xTv7tBAD6y6X/5Fh/k4kfRmGu8QAryGUF7dgK
ffQH0plgqge+Q36LWYD2L5n0s0R6zAOkFH9+ID4mAZL6YD5MfIBnwa5oPy2h/UgnxpoZG5LpCgaJ
FahNbG9Flpb48mz9Dke02BHFe4PpcKyH6zgyvTuXpL9XBeHlEH6m37pGyIJb/ji49AKeYbBiEdSX
Qv3RUE9bOzEdFq6Srj8ZGPA5UA79J3oy0hue/0AWDyQ0fCgvh/Kabniu61CX2DR2jTWhy4gPAQvP
q6DzhwXaYIGpzqI1C1wWEeaKzMTiELK1BUwghwlmuufaD8Rz2U75xAWPKCYYQQ4jzHXxAiBihBoG
45GJ6UBYwdogqN8C9RVlPx3gl4idd0TssMyMB72V6zlYJiiJHVT9V7J9KWBwT4QRDSIS++TOitYk
iF2b3TKbTCqaLuJdQRs8MRc/h7IhoU8NVtVbAijfAuXVoW7YlrEh/AHRsVxqE4sPCnzKSH4lJgs3
kVfBWwM4oQ1OUHbvC/dfC5IR4Zcff6ggEligDRZQddc7nBTuuwN0BlI5YaxT3+cDAxXYHGGJiBoR
7xm82E43FsEI7TXCrIQRJjq5H41uXSPtCdLJQpUfEwtGAxtUboN5CRtMd6tKFjRci1cHllPJmiKo
3wb1ZzpJD4SDd3/8LfaiP3/aLiz6mq4xu/aW0R0NWHoy7Sq2g8WCbReiVfG2GW55HbcIjGBBt8wm
3C38ScL2VlVuQRa8rwIR/EAtm/xpEa+IMlEn/wwXvJILtPl05wIxe1xaqziAEVgB6sdoOJ5NVC3f
LTWxP0aVlpg9cpDvLsuk1CzVpheam1rINuKnmdLjVRJjasHQjMG2AdsGbBuwbTo5fQDbBnY41w5g
28irPdg2UssPto3U8oNtI7f+YNvACmDbwARg20gvPdg2EosPtg18ALZN97QH2waOOKfiU0do+urN
G/GNwBfKWy4JzU1Va9PggDaMBzN9ZRhwgMQO4DPD2N1/J3ToBjaQzwbToar7LOCPhYG3CqiTfCGu
cKEyPNAGDwB1J6nwQN1JrD5Qd5LrD9SdrMoDdSe9BYC6gwmAuoMRgLqTXn2g7mCHrB2AuoMnjj0B
1J2kygN1BycAdQcLAHUHJ2SdANRdh40A1B1swNufWsIGmk6+3nz++PnT9Q3xKZ8WpEtOhRFs09yt
M4IbWusGgA+hPsCHcEuhkQPgQ7gA4MPmwIfVYgiLhVVlidkjB/nuskxKFeBDx/LDhHxYD/VwUgdL
UKsj0ymoh6AegnoI6mEn5w6gHsIO59oB1EN5tQf1UGr5QT2UWn5QD+XWH9RDWAHUQ5gA1EPppQf1
UGLxQT2ED0A97J72oB7CEWcvWQbmSFbhgTmSWH1gjiTXH5gjWZUH5kh6CwBzBBMAcwQjAHMkvfrA
HMEOWTsAcwRPHHsCmCNJlQfmCE4A5ggWAOYITsg6AZijDhsBmCPYAGAbqA+wDdxScKwG2AYuANim
ObCNlu+WroJteqG5qQduM6sDGTOvIVPRwKqPFHCbWjpgwG1KTt4At5F8/gC4Dexwrh0At5FXe8Bt
pJYfcBup5QfcRm79AbeBFQC3gQkAt5FeesBtJBYfcBv4AHCb7mkPuA0ccU7Fp47Q9NWbN+IbgS+U
t1wSmpuqFqfBAW0YD2b6yjDgAIkdwGeGsbv/TujQDWwgnw2mQ1X3WcAfCwNvFVAn+UJc4UpleKAN
HgDrTlLhwbqTWH2w7iTXH6w7WZUH6056C4B1BxOAdQcjgHUnvfpg3cEOWTuAdQdPHHsCrDtJlQfr
Dk4A6w4WAOsOTsg6Aay7DhsBrDvYgLc/tYQNNJ18vfn88fOn6xviUz4tSJecCiPYprlbZwQ3tNYN
IB9CfZAP4ZZCIwfIh3AByIfNkQ+r5RAWC6vKErNHDvLdZZmUKsiHvm8k4MNaoIfnA/1OZarUkakK
6CGgh4AeAnrYyakDoIeww7l2APRQXu0BPZRafkAPpZYf0EO59Qf0EFYA9BAmAPRQeukBPZRYfEAP
4QNAD7unPaCHcMTZK5ZBOZJV+LooR/gc1AL1QTmSXH9QjmRVHpQj6S0AyhFMAMoRjFAv5QiPgS1Q
H5Qj2CFrh2YpR9iK1gZP1EE5gvItUL4RyhGc0AYn1Eo5ggXaYIEmKEdwQhuc0ADlCEZ4LSOAcgQb
gGsD9cG1gVsKvugF1wYuANemOa6Nlu+WjnJteqG5qYVtIwaN9HiVxBitDrbNGGwbsG3AtgHbppPT
B7BtYIdz7QC2jbzag20jtfxg20gtP9g2cusPtg2sALYNTAC2jfTSg20jsfhg28AHYNt0T3uwbeCI
cyo+dYSmr968Ed8IfKG85ZLQ3FS1Ng0OaMN4MNNXhgEHSOwAPjOM3f13QoduYAP5bDAdqrrPAv5Y
GHirgDrJF+IKFyrDA23wAFB3kgoP1J3E6gN1J7n+QN3JqjxQd9JbAKg7mACoOxgBqDvp1QfqDnbI
2gGoO3ji2BNA3UmqPFB3cAJQd7AAUHdwQtYJQN112AhA3cEGBlPUEjbQdPL15vPHz5+ub4hP+bQg
XXIqjGCb5m6dEdzQWjcAfAj1AT6EWwqNHAAfwgUAHzYHPqwWQ1gsrCpLzB45yHeXZVLqgtGVzRYe
Dcx64YfKpA5OYR3wQ7UNCMIXsPnawR9UAB9sBXzwMjx42a/2amJFVPXpHxK+IvMBIjYpYv3sBujZ
oJ41MRigYTNrFOvfOQ8lm2yNde6Ah5JNKln7TnbI2eDKguFQN25DsSH9H8yI0EA7oOhIt/wkE8ja
JVkVPYxNbxP3QnpL3QjadkjberEg0LJJLSd6wMRejcrgHpCvSfk0nZr/iHk0JhUb9PgUN7IuaTMW
VCyiovi+fWdFYq+947kr4sR2ZJHMGtowkba6VdRQt0F153oK0eRPoHyADCBfq+RrAQkHOhbRcaTH
4YI4XuxeEMcE0hWRTkmkCxg1k570rAWZ0O/19FMT/WK0vRZqN060uwss/nyBxtc+AZsmNkDbBrUd
6+S3KPugSH6LLWPzAB1bpaM61EkDIAVI2qCkI528N830VY5vb8dO8ZrciUPLIL5NH/AuoG2iNoI4
gKINKtoEqgCCvqwCO73XXFpVO7VnHCrKuPdbWtU7uYcbanZsL3YLBP0S25ZYsWFatNmJ70ThOgqK
N392GfCLMM1thWqqTmhsWl7y/oD8yfHVs3AEUK5x5caHynmrFZRrh3KTnXJh5PlQrkXKaYdt7o7e
Qrl2KDc9bHNQrjXK8ae9W8tkjzMUhu6yJdLND6XDQNcW5bThTjlMUc5S7vvrn0noM8Pi2TQq3Uwd
619vPkCsdog10f9GI2Ntequ2K1aEHKho+bLWwXM7BxuYU1z2yEGmu/y2RcYRC8Io+fjrB1694EBV
rYPxN60h09EY4MBSnQPAgSX6PYADO/LdqBSwbKj//uD7YhHylsWyZZcxM9nbWN2XQYlmQhcg62gn
65rZPgkZDYwKfhoUGjapobLTMJUP+Ll2yqjuZARFsM0yjncygtDaah0nxzoC0tp2SbVjSfton60V
EyTz1ksIknkHRATJvFN6gmR+mRqCZN4VJUu1RpDMu6IkSOYdkhMk8+4pCpJ5J2UFyby72oJk3h0t
QTJvtXwgmXdARcCSO6IjYMmtlQ6w5HbrB1hye7UDLLnlAk705Kc6DM9/IIsHEhoAOrZMQU3f8jmJ
TWNX/KTOMmIB6NYtlHKqs2jNApdFhLkiM7FpYIdfhZjtEnOme679QDyX7RRM1FxQY7MKBIgKgrZL
0Lku1niIdzWGwXhkYrgMsffj9VW8TFwuVH1hBV4ELhcqvrBtApwqp5oAp1YrKCAgFShWBAKinmAJ
dAIC4vjGTB1N+DXmomYAyKwOAMi8hkzHwxoyVaZX3xJyNFRGLUCP8DDHXaeP8Ht8QSsGgOSMEs8F
kJwh7ehy7HvZ7zlaCC6BHeq0w2UDT6B9ndpfPCgF8tcp/8UDViB/nfJfPpgF+tepf6uALrBCnVao
GQRTcK82TACADKQHeAbiNyp+e4A18EGNPrhw0A20r2fS1R5ADhxQZ+tvA1gHDqjTAa0B8sAG9dmg
XSAfOKFOJ7QOAAQ71GmHdoKD4Ik6PdEO4BA8UKcHxnq4jiPTu3MvDlUE4esU/mIJVZC9TtkvnWwF
9WtUvwVELOhfp/4XSdKC5HVKfrkELuhep+6XSe6C5nVqfsHELwhfp/CXTAqD8nUq3wrCGCxQpwVa
QiaDCeo0QYuIZjBCnUa4dBIa1C9Z8Z0mqMENZSu+S+Q1qF+2L+gisQ0uqM8FrSK9ddgIr0iIG+tf
bz6gz++2yJp+/f7mPVTutspT/ZPyYfDXv/789acvsmpdCBM5zDdETRy9c0iR+SVmjxzku8syKfU6
CvgTfi10SKUOOqRSBx1SPZsO2SCj8QXwwuJ92yvyGZUG4IzF5ptVshlLlFgNmrFYgeeSGS/Cf6cf
l5IO7eX1OCvxjmSuEyOg4dphyVuysKIQxq+JUu64ZuORTuzI745eReY0mtbsuNM4+vqD5/i2RV2D
1TOjmWJGgxkNZjSY0VTsv/S/oU95a07+L5PHDe9FT42e27sTF5/Oh8f82D8eXPViiUp8XNb4wPv5
5mcSxouQRTxMfg9hNc7s0nyp7Y4oMRXTFJ38/NP1p1875wnMyZI5WcDSfnj7KauWqdmojpdN47N/
u+NUpkodmar4KRL8FMnxPeKnSF48PTxD2rZ8hHrSMVcwVS823KbD/lgnn1yLj/RGYPlRFftMik06
LuxjVOs1L7G2UJvo5HpNeQyCNZfAQkwrYDzgwKpkpxEccOkO0HRiGNRYM0JD4tLIuuXTRc+zIb4E
4k/5k977L/zZzve9oIrNRZD8NSQvvnZwqs108q/R5g356ZYF5GPS2f/wfQUxlF86OBtKu3SwBhOU
2VCizXWysKIF3fD6iN2IhlXQQtD2L1z26UjnLT7ckNCnBiOOx2f7nkgH8SUQXxGPd0bAHMYbvE2+
/vwl3TpCVsxlAZ/4eRVsLC0/DGijKYaBV7IEf+L/YDPqEm8RejaLGAnDSDDE0geCqnAT6Bsu3QgT
nfw12WZODOGH2OeXkr/99PXfPn76CgNIYABNJ+9tm9eE7a0CL+kDeLBxyAglprVcsoCPGkmHUB1b
Eq64dFdMuSsCYy1eCR28G3xIIJPsXrw0IKEXB0aVv0/TSl8U+bQ8OefTcvu2MLz/eENuPM821tRy
a/m4rI6/+eHUYFqZ5XmTqjOsOj+tmu/Jz5Ra/bfko/Y8/Gbo6pOauKB+vNyKxQr6v9GJ2nhStY1X
XPGv3c0vhSxTZBvWQl5qkyj2ieHk1OZgkKhA+eKvwCdzVRelb39fkQXkU/p/Fb0CKVg7FzZ/kUb8
sf4h8MKwty+f3NBgIX5oEzaQyAYT/ZeQHybfW9H34ofVeJSL5EErWqffv6sKCja4ZBtoyY8sLgPP
IYdjgkHdrSGM3Y/pwAwdN8M0+c1VmAFm4GaYHU0SDS/m+m9d8Ph7jPBBx30wP+GD419jhBk6bQZt
ODxhhmd/ixGO6LgjRo8TSIdFtLd/dMCkQUI3KI8zSLhBejeo+rEJMIeU0gjjU0bAJFIyN0xOuQGz
SBktoemf01/6+Y05sfh5h0OHQP+O6z871j+NdPtFImBVfBuHAy7XATNtqD95YkhGhe3WvN3OTBpH
nmC+JwvwxB8O3UhrjkJr7k44qKY1d+Pa19yJksweu/cFJ9Hy3FBcudUv9MXvwoZrxqLHgwvPfHj8
y/SMWOwC4XG4Ef/vu/8HUEsHCBvVU6/zGgAAFWEDAFBLAwQUAAAIAAASMNRAEqSlwM8NAADPDQAA
GAAAAFRodW1ibmFpbHMvdGh1bWJuYWlsLnBuZ4lQTkcNChoKAAAADUlIRFIAAACiAAABAAgCAAAA
vzM6HQAADZZJREFUeJztnHdYU1cDh28WwRCkTGVIkSHgwFUUECpWsIgTcYEDB+KgRevC1VKp+jmf
Yt22tiriVhQtarVOhvqUVtsHB1ZBGQERoWDBkPUluUFIbbX9bj6bcH7vH5cTbu7JvfeVPPDCkatQ
KCjQ3OH+2ycA3gTQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQ
TATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQTATQ
TATQTATQTATQTATQTATQTATQTATQTATQTATQTAT/o2bxvSPHZQNGehhrHsurMhI/vD5qx2xPI52d
GtAdXEpanL7lVLX87PqbfWb2qDMbEtffltPkCbLH57ZeajvB75cZI86MPJgU6sBnKT/Ldwsf2XQa
ttDewRj/ZbPewqW49qEfRtfl5B8S9x42zbX8wpHdaYUiXjcf6S/llpxyp6Htz6df6R4c6Ohg29bZ
Ru2YoiSF+2KWWy2bmD1zv10I/3J5xPZ5ZpSivujMxgucfuND2pmy/+XLAtpov2nLK67synHdtGqM
XFSQeW3vXpF3vNDB0c61o5PwWcNzFDKpgmfe2pQtNbayMW8bEN4ld4FITJnJn15MOjlx+yY41kPU
mhX1FQUPSx4+qpS5evs/mjwuLiQy6p078sDhnkWFtS0sFbmZNx+YFhTkfHfyxK3Ke9U9po2zFIlK
xKUlRaLC4rJWpaU1T6vNi+s9x/ucmfaJ+daEfg6ar3qgJ6g1s4wcwvdkh6uGraL3XYymd3VveM5X
21TblJwRTY6LPHRM9eFkgHLz3nHVcOnJnsrt6DdwzuAfgx+oiACaiQCaiQCaiQCaiQCaiQCaiQCa
iQCaiQCaiQCaiQCaicDwNUuLDi1JfmZ9ec4yxeKk3o/5Y5aPdvzDVT3PS1lxvuviae35lKQgZeF2
SVAA+4ef3GYt8hW+mKVw19g5kpVfv5u5WvPMZoXha+baDf0svv6Hgo9NFL7D472NpKIDs1Y8bK2o
emf5Mp/b80btFjoXnjpww/aTkOHuflay6rvnvkx9ZLQgdng7ec4Cz0jx6lnXow7P/zkxJyfXrDhr
w8dfPorrINty8Xd79QxBls3it+eGr5li83iUhB6y2Dxu5aXNx8rHrQt4LqqUGrV2Nz67OKuHv5m5
R0A3Kw5FyayGHbzkfzppycjIvNP7bYTsEqGNGY/F4ltYm3AkAluHtyxM2tccTGqYgbJsFn/c1gw0
q/4s4klBybNn7MKKekUbC9/Irmv3XXh31gwbrvjnEo/YybKM4ify29fyqjt5tRTfTU66+W54eEyU
tbWNFdejxcXL10V1NY8rnpTX1NRX8QMdFdn3LAd2/lUzw799aTqiWVwHy8gx4kRVhOaRy9TUG1M1
Y/9Pl/tT1NzGp5r2Wbe5j2rQ933VNvnHAcptgnrX/XzVts8t1V9GxIbNeyNn/qZoFprB64BmIoBm
ItBbzfUPk6essF23SDRnhe2GbUEt/0+v8iD9PDsoxKlZfDv9CriUovbegdgRuwPS0qI4qfO38WYs
GOIi+OPf36rXXjjHjHDmaX1aIkqPX1Q556sx9vRCDdnTnNR9J06dl09LTvQWKMT5e0cPOhB2OnW8
A6fuZmJgVM3a8ysDLORNjlKIH+4fG5E5NHEo79Z99+ipnQWaqY0sHcw4Unr7t6/mNStIXroQcdEd
jkeQkbT4+KqDzzu/XZkj8psf69XipXn/4vL/iDh3/UfHhK6KVhELB2peWFJ0csOhKo+uLi0rMq46
TJ/bU/jKGSjxg9RNp2ReHcyqcm/Kg6f2uv3FK0/s78KlWAK3URt3PBi/Itm6d6sPFoe2eZy24ajA
tfrcTctO1nxr7vWrbeYu7nr7fPqV3/p0/Pn7HKFy162uC2f7mrEonrm9Ffdp42wci26DwsVPyh9a
qe4Hi2/TIXSS85HPrwxZ6X4928jFyaVNS+XVc5ocxeJbO9kJMqVVd0VdI4Oz54zInbzKavkyyy1f
93oxq7zq4vyodLfg+tO33tu8ut3Jddda8rJL+01pkZFvzil3Hu2fk3JXNZg4vWvTFSSeRpSk+MKR
7/NeWkTyW3B/p3ZCNiUuvsv16Kv6Sq4vvHTWeOrcSQNtfs9KCN/puytB8k1m+xjPC7tVM2uOCvTK
z732a6GI69VFtO2EzQCz767YjvJ7eKp20tY45Ysp6orvl91OyQo8PnNH7Mb+q2Z0N2NXnV3wBZXw
bagbj5J3bv+cW5i24ZJAfQMXRLPWR33F93M1bWXHfSLi9ZoywceCVZEev4W3Oj2oLVfmkh8am+o6
puHEWr/6X9hrNavutUn3WfP2Dkl1TRvElxWdS77jvHOGc8F/uid6p99YN6RPnZTNVa298DS+mqDe
Vbhnw+06Xx/Bn8zH4god3Kiknb+ELe2mWkdn7Bk99f6Szw8N7tLL2+rsvT89B46Zu//AcQKxwKTE
3vSukbmdFb++6X52CytLc9eg6EGCCSvzpL6dujlU33+aVWMeWrs9WeQdz7N5u3ajavDSxK9YRKJq
W2rLQUrLMhOfz3a+c3PnZzGpA7/ZPHfJmbgvUt+PmOQirHlAz6w+qr3pT6s0s91OaengG9ZPlJUX
MNzj4iel9ZSnUc3lxZ/WzPomfvaY5dkJK+KUjpU/0Et+fyZh0W+NbIEFv+h4csMNvMOaYW/t6TPa
fu0mR9Wc5XUK5d2jFHK5XEHfSD6XwxEqT6yH5sS2DGvNeekS/4lm5XtL1ePKZxVlVRLKtlWfMMHW
fad7SsdunHJ52QcLA0LGTxvubmKpyL1WGTtEsFe1Kziyo/oNRFpdUlJWWFqrsBeUn9uW4Tq+8497
Mjj27mGDnJV3TyEuv3/nrl3czP77v3Sa7lO8U5RfWC1zslC8OMqUpRA/zn9UfL+gRtDXmiuvdzPO
3H2wuqSydUVdtaikpL6iwki5rZLInt66lmFVETh2YP31+TsyunnLym9dzaDXhZTfy6EHNfIOAvaL
FSQSz1Y8yz9fRJJ1p9rNq6WkOI/n3lf1RSIpSP5ot0V47wC/+re4bNMek4LTM33bCajnN643Oepq
eYDfo4+Us0VE+ZWWlYjKRaKyopIycamI95uUErKMjMqObj8XPnBIi6Obl9aVTZ4e2cPSesCK8Qlb
k3b16uRoZd66o1fDvQ2O7ECVnSrKd+QP9n80RXWGsXHh1hTLMnRlzPoTqd93s67Nq568ZlxtygeJ
DSfGZCGLRjPPbvDX2YPpsVPkmpWavTEvlj2ajKDXXnT30jrapv/GtP7qoU3QjGGqg6e5NO7mO4Uv
n6X86Lt7jerhsSzN5xuPUr5pO0UevhpJP2BbD9qcMkg5UNeNtofVCzsOH5M/PTdbah7cI2z0e6pL
3XZ0QMNTNIQsahw3WUGivCyXv1xEojw755AgemTcZdGeLqpBGKWoylqfmGETEav69YfQb/EiP62j
9l2MUT8a8e27ym2/NNWZHDmk/pTQd+WZI+pR5ITG0xG0n7hmbZNTbby3FLX0VE96zujG/cZuI+Nn
qkcBgartixNjht5+p90EtkVQ0smgN/NarLf8Zib6vf55BoYhaAaMgWYi0FvNyCO6BHkEeQR5BHkE
eQR5BHkEeQR5hAZ5RAvkEcYYgmbAGGgmAmgmAr3VjAqmS1DBUMFQwVDBUMFQwVDBUMFQwWhQwbRA
BWOMIWgGjIFmItBbzcgjugR5BHkEeQR5BHkEeQR5BHkEeYQGeUQL5BHGGIJmwBhoJgK91Yw8okuQ
R5BHkEeQR5BHkEeQR5BHkEdokEe0QB5hjCFoBoyBZiLQW83II7oEeQR5BHkEeQR5BHkEeQR5BHmE
BnlEC+QRxhiCZsAYaCYCvdWMPKJLkEeQR5BHkEeQR5BHkEeQR5BHaJBHtEAeYYwhaAaMgWYi0FvN
yCO6BHkEeQR5BHkEeQR5BHkEeQR5hAZ5RAvkEcYYgmbAGGgmAmgmAr3VjAqmS1DBUMFQwVDBUMFQ
wVDBUMFQwWhQwbRABWOMIWgGjIFmItBbzcgjugR5BHkEeQR5BHkEeQR5BHkEeYQGeUQL5BHGGIJm
wBhoJgK91Yw8okuQR5BHkEeQR5BHkEeQR5BHkEdokEe0QB5hjCFoBoyBZiLQW83II7oEeQR5BHkE
eQR5BHkEeQR5BHmEBnlEC+QRxhiCZsAYaCYCvdWMPKJLkEeQR5BHkEeQR5BHkEeQR5BHaJBHtEAe
YYwhaAaMgWYigGYi0FvNqGC6BBUMFQwVDBUMFQwVDBUMFQwVjAYVTAtUMMYYgmbAGGgmAr3VjDyi
S5BHkEeQR5BHkEeQR5BHkEeQR2iQR7RAHmGMIWgGjIFmItBbzcgjugR5BHkEeQR5BHkEeQR5BHkE
eYQGeUQL5BHGGIJmwBhoJgK91Yw8okuQR5BHkEeQR5BHkEeQR5BHkEdokEe0QB5hjCFoBoyBZiLQ
W83II7oEeQR5BHkEeQR5BHkEeQR5BHmEBnlEC+QRxhiCZsAYaCYCaCYCvdWMCqZLUMFQwVDBUMFQ
wVDBUMFQwVDBaFDBtEAFY4whaAaMgWYi0FvNyCO6BHkEeQR5BHkEeQR5BHkEeQR5hAZ5RAvkEcYY
gmbAGGgmgv8CIQ9Esv75fJQAAAAASUVORK5CYIJQSwMEFAAACAAAEjDUQAAAAAAAAAAAAAAAAB8A
AABDb25maWd1cmF0aW9uczIvaW1hZ2VzL0JpdG1hcHMvUEsDBBQAAAgAABIw1EAAAAAAAAAAAAAA
AAAaAAAAQ29uZmlndXJhdGlvbnMyL3BvcHVwbWVudS9QSwMEFAAACAAAEjDUQAAAAAAAAAAAAAAA
ABoAAABDb25maWd1cmF0aW9uczIvdG9vbHBhbmVsL1BLAwQUAAAIAAASMNRAAAAAAAAAAAAAAAAA
GgAAAENvbmZpZ3VyYXRpb25zMi9zdGF0dXNiYXIvUEsDBBQAAAgAABIw1EAAAAAAAAAAAAAAAAAc
AAAAQ29uZmlndXJhdGlvbnMyL3Byb2dyZXNzYmFyL1BLAwQUAAAIAAASMNRAAAAAAAAAAAAAAAAA
GAAAAENvbmZpZ3VyYXRpb25zMi90b29sYmFyL1BLAwQUAAAIAAASMNRAAAAAAAAAAAAAAAAAGAAA
AENvbmZpZ3VyYXRpb25zMi9tZW51YmFyL1BLAwQUAAAIAAASMNRAAAAAAAAAAAAAAAAAGAAAAENv
bmZpZ3VyYXRpb25zMi9mbG9hdGVyL1BLAwQUAAgICAASMNRAAAAAAAAAAAAAAAAAJwAAAENvbmZp
Z3VyYXRpb25zMi9hY2NlbGVyYXRvci9jdXJyZW50LnhtbAMAUEsHCAAAAAACAAAAAAAAAFBLAwQU
AAgICAASMNRAAAAAAAAAAAAAAAAACgAAAHN0eWxlcy54bWzlXUuP48YRvudXENzA2AXMISmJ0kie
0cKwYdiAZ2Ls7BrIyeghWxRtkk2Q1GjGxxwCAz4YiA/5BUEugY85xQjgnxJ4k6P/QrqbD/GtFh8S
qbWNXYtdXV2Pr6qrm2Tz6uWjZXIP0PUMZF/z8oXEc9BWkWbY+jX/5vUnwiX/cvm7K7RaGSpcaEjd
WND2Bc9/MqHH4c62twgar/mNay8Q8AxvYQMLegtfXSAH2lGnRZJ6QYcKrlBmrN0pcbK3Dx991s6E
NtUX3LOPTImTvTUXbFk7E1ps02T3FWLt/OiZwgoJKrIc4BsZKR5Nw/7mml/7vrMQxe12e7EdXyBX
F+X5fC7S1lhgNaZzNq5JqTRVhCYkg3mifCGLEa0FfcAqH6FNimRvrHvoMpsG+CDnVceFHibB6hJc
sjFK9knh60FnRteDXmJmdQ1cZpxR4jRUxho7VMZasq8F/HWJfy/FG9xI/7j5fIcr12Idi9CmTKW6
hsOsZkCd7I8QikUlHYJgp+KOJGkiBr8T1NtK8q1r+NBNkKuV5Cow1djiyCoyGqaTRUwhwAcC+Yja
JUqXclZEFzrI9WNBVuzJDltnFIfq2rfM8lAlrRGp7mpaISkWZyzisMVBIzwYcPsslcuq7T8XKVEM
ac8b+0VjvH4lkjaBpEucEMKMnZglRvwymhJWCE8HK6BCQYOq6S2vglCOL3PBb2Kka/5D1wCmzHM4
zCIKyzCf4gaRpXt5/70MPoZfgy833B2wvQIm7wEHeR8kaIIL+5je3G1snfvc0Nc+d/dRKd80Wcia
SzB2DF/Fgf4AsC7ES4y6QNdY7VWGEBUMGRALOrQxAY4tF1nAbiLUawPHAncLt9yrkFWxXBm6Y4j2
oa0BE1K/cm8+K5UsTRZce58L2wjKuDe2gQskyN3cMYjtbQ3PayQ2GbMM8d0OnYiE0QHh0r05Ei4o
92MNXz15PrRaslhRlqplscZC3QBbL4RQ3NDl6K/BGkduwehxQ5ejv/3p+19//rFg9Lih6ehi2TwY
Xg9WSpGUGlyBjRmunyLOoUh0bhZUaJp8RL67JDguns9d38BpM2KlGhbADSYe1LvmRztbOMAFuguc
db4X5ogHR46gGZ4PbLJsw9O5olq73mTWz3ek+qVS0gotTIygDdDxNWjTCyra2L6LlXlzx2c7Crha
AnZhCFPCiFlE9+06agm5Rg0f3eZ5k6LdhI9ZWMU84/a1keUaN312Sx1a4KnlVbCkCVc2KfcFNrmV
+AwRF/6yDFswbB/quJ9m6IaPfUULFbGAZ8xD3bguXog/FQ0lS5MvpEiLB2TixQpZxfruBvIFDJ6s
e2RG0uw8Rswb0UZew5Zd/vbvv8WiZZiUaJhHYrXuUavuoo1DNxqo6AmTpLVnNQpfhmAKTBPhFemz
1UrC/5CxQp6EdinEI9Ofg7ZhYAILODHMbc0IltEPwNzA5y/e0/0PrmMAAccxQ4sKKYDt90d5NMjy
5X6IVltAaoyiwsCqlJlngkVXcrfhOWr3JjaYD9Bv89Yjv9cunjdz8Uhq6uLmCf5wmdsIzdMmVWr3
JjaQB+g3+ciheWIXywwu9g1crxYaa7RzJJZ+42MrhT8p4TVvIlvPmmlRbCYPEgXKGIg5WRjEG8fW
wzazVeBDAdkCeoDuyiQbuStgegksrtHG9diE7aO2k+M4owzI8h7Bq4JO2YnuqQa0fQMvRYXqwJEr
A2ecaoWPDrLJbUD29UyVuLP9eY1aM1lVH2W2rq9RXvIBFhrUMU3MwLAGGJhjL+tPZwPFQMP1xJih
2GyCgeOXNONsKVrXsactVcYNq9ExQzU6MMc2qFUHigGWcrXKYmNGDPz+uIkvORaXGbq+rhmdnp9Q
qReZoVsBw7ghGBg2pc8GDA32ms8ON5OGuJl2iZv6CbYT3ExbSSLtKNUJGKYNwcC6FjwHMMyOnUR6
jJuGS81J473Rfk0wWB+ZKQ64I68pO1J2xKjsQUPSqCoeMM1YwJD1oe3v0Y8N6JU4n4QVNwMrcz8r
mY1VdehR6yf3GmOrMflOYUzY3NE3eTqBqsIal8ff7ulIX8bQJPq2FJ3KyaJTaS86lZaiU2kUnY3v
5verZML6dDkt9k5Z1mmx/USTqzhbiu35yWJ73l5sz1uK7XmT2FZYN9/qzrz9igasbsczb+/0PWDm
HUwCUManSgDKuLUEQLHYQgKgPq6fAFhL718GcndVUXKCD/COqaI028pQWPdDB+PWaf19rmEioOEm
qML63EQ9BBz/zqqSfbC6pltPe7dUafgohMKwGBuWWxs8dz1MBDR88nrKXLIfO7d3UcFOmSv2o2f5
jtRlLNh/aWunbHqyYnraXjE9bamYnjYqpqesNx5rhma/FpdY225Ds3fqsofmYJbS09nJon/WXvTP
Wor+WaPoZy3N/gi9tjDJupXd5pAZ1reoA2y0t886DfdZ6+o7Y31E9TW+1JKNZ6w37lsdM8P7E/Ii
TvuunbV383omN3QtayX9B7stI7NWsy2OmOW8WnXg1PYqudmYwamV7/DPGLY0s+/T/+dP/4hHLHvX
vnAi7EEhU+ecg5nS4LGxYhMM0aRdPIU2y2zd1nIPw0Ji77kS5DSViDZxokriqcchncwxa/CgY92T
OfpnwVYAOmMCqEZezS3whCLLMz5vq7JTTCJ2TxDE9qD8it99LXGVhVclazZSDTwllNtpwaLYZQ3F
gvFYdeASLRtgFqelEgbEhLVVm59OtVoCj6QaAh/BxGXveivkmILDJe7k/faSGRVYgmPVe5NdIecK
9ES7Wm/vd26e8SnNU0/kyaA9WqFzRVZR+j91MUC1deAUJLrgrxIzltenh5uXijv89/mIVepqf2av
8ylNT31Qqo59eJcRdlCBWnd9f3ZgbPbMhVJ1/sQxwdir+2HEKsdNd73d8lGanoOhVB2E8S4j7KAV
1VHTXZ/ByHIgR3mJPK6z0GtU5HawFh+3tRz771//2XR18/a7P5cExEHLtXFby7VOVIr6MC/C//f3
v7RilToLumilPwy/TwekYbcwqJwrWl8wDOXMKaJ7XR2FoyvZzhTHUtFX3U7CLOpsiA/yLPea93lk
qXgPvuymWFUpILKWAiWEFTtwNW4uEM2KKst9mg3hTg/RraiAO5JuNSUuqtaYcHaaez1E5KJqbJ/I
A7nZQ9QrKqtOol4P7/YQ+xQVZUezT02Zi7anh+PTGvd7iNJFpVHPpjAGtJ72hg+240FboPvsW13p
9GrPnapeQ8Vga+msNtIjFDR44lY6bKPzzHB0UM1Zdzfz7CDX8HhhqeqA4bYh16v9c6r6UVNXbzfF
IxQ0w1H52cRnj6ODVjvHTF29hhzLocbVnyOsOtj4cNBldp7EXkyktT7TWLwr3iSzndQ2HeFv2vxN
BKnqNOV3G4EHLafbzYnnCFa2txL2OaX8HdyjgbV/b3tJxXc7TpAuez1dz9tA4KTNjZIzQuDkoF2U
XqTLPoN1IrUC1jq3wQb42lyZlQJ75G3zcfDd9vgL8cAyTKyED+6xE1RomqUQDTtkP1f/9qfvf/35
x4ovzt9g6wGTypoQqlzCV9CrFjBscYBLvrGYhE+kXEWUUQHDnWPDB6ahRvwo8cbWoGsaNoxoPGQa
WgnJ1tD89TUPNj4qoQhjmg5K/5+PZdhCQ1/71zwGiXaocUa1rJM2rAZ8kI29ye4xhvzQn0KgGeSL
nG04Ju6URxg1IXaMbgse2rgq7r4yHiPmLnQgiM9yiT6qGouNxwa6C5x1xu07pte8ijtCd9enFCXG
t3hseer4fBlymjkztKhcy6SRO1hM6iIfkDws4FAk4s8ldiFvkYsz1Vcj6atJDB3Dw4nrSUgScJNG
wCgFpbRHQeyBe6B+QxKjrUXx5rvA9oLR4oKF0Ks45YYgsAxNM2E5CDLpjEj6Nfhyw91hzvlkF+bC
Spo4ISapcm4Q0WplqOFPb3kV/iQ5xsI+VIWoITKpDgXsC7TxU167cazd5/oSRHkVty6eom1dsJBG
bqa5gn+/s8oag2y3r5O6tkIIR1HGFWT2WoexIF3MFFm1aJBYwNVxkwlXpCF90Q3J01fvkY81JlxG
Cm7Z2alIpFCWE4jpI6dAxrQ8Ys4LDN4bnZP3aJQiFw+MS52LydzB6pJ5lXsm0X8ogQM0jZY20oUk
X0a9crH9TJXIv7F5EhS4pNJhDik5VQcApZ4abD+uxdJ8FTZYwItZeLslA71IOFUVq8lIKEhzgfjL
K5LKF074t7eGMKBevnz58krMXgyvOBkjZFxP3Jie/HKVR2CbePQviC7hDyJ2UKYv5Wi8xLWcCBGr
lNErRRBzdtxn2lfQQW61ZUc5y0YlmE5qCSLQgcbmngd0vuGbSZLg94ucIVIjpS7REMqMTh78KK0j
cMkcEwl0NYojS5JHgjQVRjg4SFT99q8fwj9CSQjx8n0uEhprIEkL+l8seBGE0jKeDFecmCSk69Xl
fJ4kDK51hD+xOOKjyxpSN1ZcDnrL/wNQSwcIG4uI/RcNAABrmwAAUEsDBBQACAgIABIw1EAAAAAA
AAAAAAAAAAAVAAAATUVUQS1JTkYvbWFuaWZlc3QueG1srVPBbsMgDL33KyLuga2nCTXtYdK+oPsA
RpwUCQzCpmr+fkmkpt3WSevUmx/Y7z1js9mdgq+OkMlFbMSzfBIVoI2tw74R7/u3+kXstqtNMOg6
INbnoBrrkBbYiJJRR0OONJoApNnqmADbaEsAZP01X89KC7oysBbbVXXR65yHeqzPwyU7QOtMzUOC
RpiUvLOGx2p1xFbOFuS1sqSUwbR0AODfJC/HXfG+ToYPjVBC3WWF4cRqbPM2WwA2crp9JCkB8zgp
ejixjcjT293P64LpQSXsbxPvDyV8oHGeFJ9DOWXfp3Kb/DVi5/qS53WgtTLWgocRxqxsyfl/HX1f
MSo4scjipL0W/Junx86fBw/L9DfqxzfdfgJQSwcIG6XEihYBAADhAwAAUEsBAhQAFAAACAAAEjDU
QIVsOYouAAAALgAAAAgAAAAAAAAAAAAAAAAAAAAAAG1pbWV0eXBlUEsBAhQAFAAACAAAEjDUQH6i
zM25AwAAuQMAAAgAAAAAAAAAAAAAAAAAVAAAAG1ldGEueG1sUEsBAhQAFAAICAgAEjDUQG/U2W6Z
BgAAZGYAAAwAAAAAAAAAAAAAAAAAMwQAAHNldHRpbmdzLnhtbFBLAQIUABQACAgIABIw1EAb1VOv
8xoAABVhAwALAAAAAAAAAAAAAAAAAAYLAABjb250ZW50LnhtbFBLAQIUABQAAAgAABIw1EASpKXA
zw0AAM8NAAAYAAAAAAAAAAAAAAAAADImAABUaHVtYm5haWxzL3RodW1ibmFpbC5wbmdQSwECFAAU
AAAIAAASMNRAAAAAAAAAAAAAAAAAHwAAAAAAAAAAAAAAAAA3NAAAQ29uZmlndXJhdGlvbnMyL2lt
YWdlcy9CaXRtYXBzL1BLAQIUABQAAAgAABIw1EAAAAAAAAAAAAAAAAAaAAAAAAAAAAAAAAAAAHQ0
AABDb25maWd1cmF0aW9uczIvcG9wdXBtZW51L1BLAQIUABQAAAgAABIw1EAAAAAAAAAAAAAAAAAa
AAAAAAAAAAAAAAAAAKw0AABDb25maWd1cmF0aW9uczIvdG9vbHBhbmVsL1BLAQIUABQAAAgAABIw
1EAAAAAAAAAAAAAAAAAaAAAAAAAAAAAAAAAAAOQ0AABDb25maWd1cmF0aW9uczIvc3RhdHVzYmFy
L1BLAQIUABQAAAgAABIw1EAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAABw1AABDb25maWd1cmF0
aW9uczIvcHJvZ3Jlc3NiYXIvUEsBAhQAFAAACAAAEjDUQAAAAAAAAAAAAAAAABgAAAAAAAAAAAAA
AAAAVjUAAENvbmZpZ3VyYXRpb25zMi90b29sYmFyL1BLAQIUABQAAAgAABIw1EAAAAAAAAAAAAAA
AAAYAAAAAAAAAAAAAAAAAIw1AABDb25maWd1cmF0aW9uczIvbWVudWJhci9QSwECFAAUAAAIAAAS
MNRAAAAAAAAAAAAAAAAAGAAAAAAAAAAAAAAAAADCNQAAQ29uZmlndXJhdGlvbnMyL2Zsb2F0ZXIv
UEsBAhQAFAAICAgAEjDUQAAAAAACAAAAAAAAACcAAAAAAAAAAAAAAAAA+DUAAENvbmZpZ3VyYXRp
b25zMi9hY2NlbGVyYXRvci9jdXJyZW50LnhtbFBLAQIUABQACAgIABIw1EAbi4j9Fw0AAGubAAAK
AAAAAAAAAAAAAAAAAE82AABzdHlsZXMueG1sUEsBAhQAFAAICAgAEjDUQBulxIoWAQAA4QMAABUA
AAAAAAAAAAAAAAAAnkMAAE1FVEEtSU5GL21hbmlmZXN0LnhtbFBLBQYAAAAAEAAQADYEAAD3RAAA
AAA=

--_004_E16513A01CAAFF40B65178C63CE45EEC1914DA8EIRSMSX102gercor_--
