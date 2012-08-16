Return-Path: <laurentiu.serban@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40674E00769
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 15:21:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Aug 2012 15:21:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,781,1336374000"; 
	d="xml'?bin'?scan'208,217,72,48?xlsx'208,217,72,48,72,48?rels'208,217,72,48,72,48";
	a="181966084"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 16 Aug 2012 15:21:04 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 16 Aug 2012 23:21:03 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.34]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.51]) with mapi id
	14.01.0355.002; Thu, 16 Aug 2012 23:21:03 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.3 20120810 - weekly report
Thread-Index: Ac17/Wpxn+cqUZQhSv6qxpXur1hLNg==
Date: Thu, 16 Aug 2012 22:21:02 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC19172FE0@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Yocto 1.3 20120810 - weekly report
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
X-List-Received-Date: Thu, 16 Aug 2012 22:21:10 -0000
X-Groupsio-MsgNum: 8729
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC19172FE0IRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC19172FE0IRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC19172FE0IRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC19172FE0IRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

This is the weekly test report for Yocto 1.3 20120810 build. All qemu testi=
ng and some of ADT testing are blocked since there is no qemu images, no ec=
lipse plugin and rootfs found in autobuilder. For ADT toolchain testing, th=
e i586 toolchain tarball didn't build out due to bug 2936.
The multilib, rpm incrementation and x32 issues still occur. Many thanks to=
 Yi and the WindRiver team for the help.


BLOCK

Critical bugs, more than 50% test cases are blocked

GOOD

Only Normal, Minor or Enhancement bugs, less than 10% test cases failed

BUGGY

Normal, Major and Critical bugs, more than 10% test cases failed



Test Result Summary

Component

Target

Status

Comments

BSP

Beagleboard

GOOD

Sudoku-savant project building issue

Routerstationpro

GOOD

Sudoku-savant project building issue

Mpc8315e-rdb

GOOD

Sudoku-savant project building issue

Crownbay-emgd

GOOD

Sudoku-savant project building issue

HuronRiver-sato-sdk

GOOD

Sudoku-savant project building issue

Jasperforest-lsb

GOOD

Sudoku-savant project building issue

e-menlow-sato-sdk

GOOD

Sudoku-savant project building issue

Core build system

=1B$B!!=1B(B

BUGGY

three issues for multilib, do_rootfs failed for lib32-connman-gnome with ip=
k/rpm;
For yocto-bsp/kernel tools,  fail to build core-image-sato when add patch i=
nto the kernel;
 x32 images build issues.
Failure to create BSP via JSON files

HOB

=1B$B!!=1B(B

BUGGY

Deb package build issue
Toolchain building issue
Building an image after a package is added fails.

ADT

=1B$B!!=1B(B

BLOCKED

Sudoku-savant issue,
Yocto-BSP tool
LTTng-user space bug.
No eclipse plugin built for this build


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

41

1 (2878)

0

Routerstationpro Sato-SDK

35

0

34

1 (2878)

0

Mpc8315e-rdb Sato-SDK

38

0

37

1 (2878)

0

eMenlow Sato-SDK

67

0

66

1 (2878)

0

n450 Sato-SDK

66

66



0

0

Crownbay-Sato-SDK

     67

2

64

1 (bug 2878)

0

FRI2 Sato-SDK

86

86

0

0

0

HuronRiver Sato-SDK

70

0

69

1 (bug 2878)

0

Sugarbay Sato-SDK

70

70

0

0

0

Jasperforest lsb-SDK

34

0

33

1 (bug 2878)

0

Qemuarm Sato

32

0

0

0

32(bug 2942)

Qemuarm Sato-SDK

37

0

0

0

37(bug 2942)

Qemumips Sato

32

0

0

0

32(bug 2942)

Qemumips Sato-SDK

37

0

0

0

37(bug 2942)

Qemuppc Sato

32

0

0

0

32(bug 2942)

Qemuppc Sato-SDK

37

0

0

0

37(bug 2942)

Qemux86-64 Sato

32

0

0

0

32(bug 2942)

Qemux86-64 Sato-SDK

37

0

0

0

37(bug 2942)

Qemux86 Sato

32

0

0

0

32(bug 2942)

Qemux86 Sato-SDK

37

0

0

0

37(bug 2942)

Core build system

37

0

29

7 (2571, 2848, 2888, 2693, 2690)

1 (bug 2888)

HOB

36

0

33

3 (bug 2678, 2895, 2695)

0

ADT

31

0

4

10 (bug 2911,  2577, 2957, 2958, 2956)

17

Total

1024

224

410

27

363



Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2878 sudoku-savant does not build on the BSPs
Bug 2878 pkgconfig is missing from sato-sdk image - installing and then try=
ing to removing it leads to rpm crashes/assertions
Bug 2855 [mpc8315e-rdb] udevadm settle - timeout of 180 seconds reached
Bug 2508 Fotowall icons appear abnormal on qemumips sato-sdk images with ni=
ghtly build (20120523-2)
Bug 2509 The 'About' option with connman-properties doesn't display the pic=
ture.

Others

New! Bug 2942 [autobuilder]No qemu images in public directory for 1.3 M3
New! Bug 2936 rpm-native: db3New: Assertion `dbOpts !=3D ((void *)0) && *db=
Opts !=3D '\0'' failed.
Bug 2766 coreutils build error with long TMPDIR: Argument list too long
Bug 2759 qt4-native-4.8.1-r14.1 build error with long TMPDIR: initializer-s=
tring for array of chars is too long [-fpermissive]

Core build system

Bug 2559 [yocto-bsp]X can't start in sato image built by yocto-bsp tool

Bug 2589 [yocto-kernel] fail to build core-image-sato when add patch into t=
he kernel

Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome with ipk

Bug 2571 [multilib] no provider for lib32/lib64-lsbinitscripts

Bug 2617 Incremental RPM image generation fails

ADT

Bug 2911 meta-toolchain cannot build Sudoku-savant project

Bug 2957 gcc from ADT installer cannot build application

Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0
Bug 2956 toolchain installation error -inconsistent behavior
Bug 2958 sudoku-savant configuration failure using ppc toolchain
Bug 2768 iptables 1.4.13 configure fail using "autoreconf -fi"

HOB

Bug 2678 deb packaging fails

Bug 2895 Building an image after adding a recipe fails

Bug 2695 Toolchain is not built with correct customization

=1B$B!!=1B(B



Best regards,

Laurentiu Serban
QA Engineer
Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_E16513A01CAAFF40B65178C63CE45EEC19172FE0IRSMSX102gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
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
	{font-family:"MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
@font-face
	{font-family:"\@MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
This is the weekly test report for Yocto 1.3 20120810 build. All qemu testi=
ng and some of ADT testing are blocked since there is no qemu images, no ec=
lipse plugin and rootfs found in autobuilder. For ADT toolchain testing, th=
e i586 toolchain tarball didn't
 build out due to bug 2936.<o:p></o:p></p>
<p class=3D"MsoNormal">The multilib, rpm incrementation and x32 issues stil=
l occur. Many thanks to Yi and the WindRiver team for the help.<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td style=3D"background:red;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BLOCK <span style=3D"font-size:12.0pt;font-family:Si=
mSun;color:black">
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Critical bugs, more than 50% test cases are blocked =
<span style=3D"font-size:12.0pt;font-family:SimSun;color:black">
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD <span style=3D"font-size:12.0pt;font-family:Sim=
Sun;color:black">
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Only Normal, Minor or Enhancement bugs, less than 10=
% test cases failed
<span style=3D"font-size:12.0pt;font-family:SimSun;color:black"><o:p></o:p>=
</span></p>
</td>
</tr>
<tr>
<td style=3D"background:orange;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BUGGY <span style=3D"font-size:12.0pt;font-family:Si=
mSun;color:black">
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Normal, Major and Critical bugs, more than 10% test =
cases failed
<span style=3D"font-size:12.0pt;font-family:SimSun;color:black"><o:p></o:p>=
</span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"965" style=3D"width:724.0pt;margin-left:-.4pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"965" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"widt=
h:724.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Test Result Summary</s=
pan></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></=
p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" valign=3D"bottom" style=3D"width:141.5pt;bord=
er:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component</span></b><b=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></b></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Status</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></b></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Comments</span></b><b><span style=3D"font-size:10.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"189" nowrap=3D"" rowspan=3D"7" style=3D"width:141.5pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:24.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">BSP</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Beagleboard</span><span style=3D"font-size:10.0pt;line-heigh=
t:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o=
:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sudoku-savant project building issue</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Routerstationpro</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sudoku-savant project building issue</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:17.9pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Mpc8315e-rdb</span><span style=3D"font-size:10.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sudoku-savant project building issue</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Crownbay-emgd</span><span style=3D"font-size:10.0pt;line-hei=
ght:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sudoku-savant project building issue</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">HuronRiver-sato-sdk</span><span style=3D"font-size:10.0pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sudoku-savant project building issue</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Jasperforest-lsb</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sudoku-savant project building issue</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">e-menlow-sato-sdk<span style=3D"color:black"><o:p></o:p></span></span></=
p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sudoku-savant project building issue</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:51.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system</spa=
n></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span lang=3D"JA" style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;MS Gothic&quot;;col=
or:black">=1B$B!!=1B(B</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">three issues for multilib, do_rootfs failed for lib32-connma=
n-gnome with ipk/rpm;</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">For yocto-bsp/kernel tools,&nbsp; fail to build core-image-s=
ato when add patch into the kernel;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">&nbsp;x32 images build issues.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Failure to create BSP via JSON files</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">HOB</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span lang=3D"JA" style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;MS Gothic&quot;;col=
or:black">=1B$B!!=1B(B</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Deb package build issue</span><span style=3D"font-size:10.0p=
t;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;col=
or:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Toolchain building issue<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Building an image after a package is added fails.</span><spa=
n style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span lang=3D"JA" style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;MS Gothic&quot;;col=
or:black">=1B$B!!=1B(B</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BLOCKED</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sudoku-savant issue,</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Yocto-BSP tool<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">LTTng-user space bug.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">No eclipse plugin built for this build</span><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellpadding=3D"0">
<tbody>
<tr>
<td colspan=3D"6" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Detailed Test Result for each comp=
onent</span></b><span style=3D"font-size:10.0pt;line-height:115%;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Target</span></b><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">
</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Total TCs</span></b><span style=3D=
"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Not Run</span></b><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Passed</span></b><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Failed</span></b><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Not testable (Blocked)</span></b><=
span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Beagleboard Sato-SDK</span></b><sp=
an style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">42</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">41</span><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">1 (2878)</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Routerstationpro Sato-SDK</span></=
b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">35</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">34</span><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">1 (2878)</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Mpc8315e-rdb Sato-SDK</span></b><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">38</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">37</span><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">1 (2878)</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">eMenlow Sato-SDK</span></b><b><spa=
n style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">67</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">66</span><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">1 (2878)</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">n450 Sato-SDK</span></b><b><span s=
tyle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">66</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">66</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p>&nbsp;</o:p></span><=
/p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Crownbay-Sato-SDK</span></b><b><sp=
an style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp; 67</span><span style=3D"font-size:10.0pt;line-h=
eight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">2</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">64</span><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">1 (bug 2878)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">FRI2 Sato-SDK</span></b><b><span s=
tyle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">86</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">86</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">HuronRiver Sato-SDK</span></b><b><=
span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">70</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">69</span><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">1 (bug 2878)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Sugarbay Sato-SDK</span></b><b><sp=
an style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">70</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">70</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Jasperforest lsb-SDK</span></b><b>=
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">34</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">33</span><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">1 (bug 2878)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Qemuarm Sato</span></b><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">32</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:white;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">32(bug 2942)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Qemuarm Sato-SDK</span></b><span s=
tyle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">37</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">37(bug 2942)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Qemumips Sato</span></b><span styl=
e=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">32</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:white;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:white;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:white;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">32(bug 2942)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Qemumips Sato-SDK</span></b><span =
style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">37</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">37(bug 2942)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Qemuppc Sato</span></b><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">32</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:white;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:white;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:white;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">32(bug 2942)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Qemuppc Sato-SDK</span></b><span s=
tyle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">37</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">37(bug 2942)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Qemux86-64 Sato</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">32</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">32(bug 2942)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Qemux86-64 Sato-SDK</span></b><b><=
span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">37</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">37(bug 2942)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Qemux86 Sato</span></b><b><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">32</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">32(bug 2942)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Qemux86 Sato-SDK</span></b><b><spa=
n style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">37</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">0</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">37(bug 2942)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Core build system</span></b><b><sp=
an style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">37</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">29</span><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">7 (2571, 2848, 2888, 2693, =
2690)</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">1 (bug 2888)</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">HOB</span></b><b><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">36</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">33</span><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">3 (bug 2678, 2895, 2695)</s=
pan><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">0</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">ADT</span></b><b><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">31</span><span style=3D"font-size:10.=
0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">0</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">4</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">10 (bug 2911,&nbsp; 2577, 2=
957, 2958, 2956)</span><span style=3D"font-size:10.0pt;line-height:115%;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">17</span><span style=3D"fon=
t-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;">Total</span></b><b><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">1024</span><span style=3D"font-size:1=
0.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">224</span><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"=
><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:green">410</span><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">27</span><span style=3D"fon=
t-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:red">363</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"930" style=3D"width:697.8pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" valign=3D"bottom" style=3D"widt=
h:166.0pt;border:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component</span></b><b=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:solid=
 black 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Bug Number</span></b><=
b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:solid black 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.7=
5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target Milestone</span></b><b><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:37.9pt">
<td width=3D"125" nowrap=3D"" rowspan=3D"2" style=3D"width:93.45pt;border-t=
op:none;border-left:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;=
border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:37.9pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System &amp; Core OS</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"97" nowrap=3D"" style=3D"width:72.55pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid black 1.0=
pt;padding:0in 5.4pt 0in 5.4pt;height:37.9pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System Usage</span></b=
><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:37.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2878 sudoku-savant does not build on the BSPs</span><spa=
n style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Bug 2878 pkgconfig is missing from sato-sdk image - installing and then =
trying to removing it leads to rpm crashes/assertions<br>
Bug 2855 [mpc8315e-rdb] udevadm settle - timeout of 180 seconds reached <br=
>
Bug 2508 Fotowall icons appear abnormal on qemumips sato-sdk images with ni=
ghtly build (20120523-2)<br>
Bug 2509 The 'About' option with connman-properties doesn't display the pic=
ture.</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" rowspan=3D"2" valign=3D"bottom" style=3D"width=
:57.0pt;border-top:none;border-left:solid black 1.0pt;border-bottom:none;bo=
rder-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:37.9pt">
</td>
</tr>
<tr style=3D"height:37.85pt">
<td width=3D"97" nowrap=3D"" style=3D"width:72.55pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid black 1.0=
pt;padding:0in 5.4pt 0in 5.4pt;height:37.85pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Others</span></b><b><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:37.85pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New!</span><span style=3D"font-size:10.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Bug 2942 [autobuilder]=
No qemu
 images in public directory for 1.3 M3<br>
<span style=3D"color:red">New!</span> Bug 2936 rpm-native: db3New: Assertio=
n `dbOpts !=3D ((void *)0) &amp;&amp; *dbOpts !=3D '\0'' failed.
<br>
Bug 2766 coreutils build error with long TMPDIR: Argument list too long&nbs=
p; <br>
Bug 2759 qt4-native-4.8.1-r14.1 build error with long TMPDIR: initializer-s=
tring for array of chars is too long [-fpermissive]</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"5" style=3D"width:16=
6.0pt;border-top:none;border-left:solid black 1.0pt;border-bottom:solid win=
dowtext 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system</spa=
n></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2559 [yocto-bsp]X can't start in sato image built by yoc=
to-bsp tool</span><span style=3D"font-size:10.0pt;line-height:115%;font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span=
></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2589 [yocto-kernel] fail to build core-image-sato when a=
dd patch into the kernel</span><span style=3D"font-size:10.0pt;line-height:=
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome =
with ipk</span><span style=3D"font-size:10.0pt;line-height:115%;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></=
p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2571 [multilib] no provider for lib32/lib64-lsbinitscrip=
ts
</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2617 Incremental RPM image generation fails</span><span =
style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"3" style=3D"width:16=
6.0pt;border-top:none;border-left:solid black 1.0pt;border-bottom:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2911 meta-toolchain cannot build Sudoku-savant project</=
span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2957 gcc from ADT installer cannot build application</sp=
an><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid bl=
ack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.=
so.0</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2956 toolchain installation error -inconsistent behavior=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2958 sudoku-savant configuration failure using ppc toolc=
hain<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Bug 2768 iptables 1.4.13 configure fail using &quot;autoreconf -fi&quot;=
</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"3" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;padding=
:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">HOB</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2678 deb packaging fails</span><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2895 Building an image after adding a recipe fails</span=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid bl=
ack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2695 Toolchain is not built with correct customization</=
span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span lang=3D"JA" style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;MS Gothic&quot;;col=
or:black">=1B$B!!=1B(B</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><br>
Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Verdana&quot;,&quot;sans-serif&quot;;color:#244061">Laurentiu Serban<o:p></=
o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">QA Engineer
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">Open Source Technology Cen=
ter<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#1F497D">System Software Division R=
omania</span><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">Desk: &#43;40 31 8604742</=
span><b><span style=3D"color:#244061"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">iNET: 88451042<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_E16513A01CAAFF40B65178C63CE45EEC19172FE0IRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC19172FE0IRSMSX102gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="weekly_test_ww32_33.xlsx"
Content-Description: weekly_test_ww32_33.xlsx
Content-Disposition: attachment; filename="weekly_test_ww32_33.xlsx";
	size=40861; creation-date="Thu, 16 Aug 2012 21:39:55 GMT";
	modification-date="Thu, 16 Aug 2012 22:11:02 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQCxYuU1zgEAAPELAAATANgBW0NvbnRlbnRfVHlwZXNdLnhtbCCi1AEooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAADMVstu2zAQvBfoPwi8FhattHWcwHIOfRzbAE4+gBbXFmGJJLib1P77rmRbaArDLymw
LxL02Nnhcji7o4dlWUSvENA4m4ok7osIbOa0sfNUPD/97A1FhKSsVoWzkIoVoHgYf/wwelp5wIij
LaYiJ/L3UmKWQ6kwdh4sf5m5UCrixzCXXmULNQd50+8PZOYsgaUeVRhiPPoOM/VSUPRjya/XTKbG
iujb+r8qVSqU94XJFDFR+Wr1f0l6bjYzGWiXvZQMHaMPoDTmAFQWsQ+GM4YJEPHCUMjx6DcvOhgN
0aMK9EuVnEEuC/nHhUUdhbK+3cW8kA6ZNPifKtzjeSSfr4XIlwsRIdYWyPqatKZQwxzYAqRVAdg6
1VslrkEPZG5EshHhoGMSDf6JPG6vhMfwSngk7YX4Vh3nbkxy894V2WHRAQo8zRk3TSDmyNrHMTce
txrckWG/9R420Klzi44LUzeFuFTGbnkf2UguZZuNpDZe8rXjgjT4J9Yj6V+CCM8Hj8F5lDxNtM4P
1biiQfc8Q0IgA42YjxTFux/bI3lczXDRek/O81PMVQA9IR4T5513/H+x9x2SRpuZC3B6IbbmWkXv
UKSsB/bxXwAAAP//AwBQSwMEFAAGAAgAAAAhALVVMCP1AAAATAIAAAsAzgFfcmVscy8ucmVscyCi
ygEooAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAIySz07DMAzG70i8Q+T76m5ICKGlu0xIuyFUHsAk7h+1jaMkQPf2hAOCSmPb0fbnzz9b3u7m
aVQfHGIvTsO6KEGxM2J712p4rZ9WD6BiImdpFMcajhxhV93ebF94pJSbYtf7qLKLixq6lPwjYjQd
TxQL8exypZEwUcphaNGTGahl3JTlPYa/HlAtPNXBaggHeweqPvo8+bK3NE1veC/mfWKXToxAnhM7
y3blQ2YLqc/bqJpCy0mDFfOc0xHJ+yJjA54m2lxP9P+2OHEiS4nQSODzPN+Kc0Dr64Eun2ip+L3O
POKnhOFNZPhhwcUPVF8AAAD//wMAUEsDBBQABgAIAAAAIQB10CvPVQEAAPAJAAAaAAgBeGwvX3Jl
bHMvd29ya2Jvb2sueG1sLnJlbHMgogQBKKAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
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
Mi54bWxQSwECLQAUAAYACAAAACEAO20yS8EAAABCAQAAIwAAAAAAAAAAAAAAAABQLgAAeGwvd29y
a3NoZWV0cy9fcmVscy9zaGVldDUueG1sLnJlbHNQSwECLQAUAAYACAAAACEAE8QsE8IAAABCAQAA
IwAAAAAAAAAAAAAAAABSLwAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDYueG1sLnJlbHNQSwEC
LQAUAAYACAAAACEANKEJksIAAABCAQAAIwAAAAAAAAAAAAAAAABVMAAAeGwvd29ya3NoZWV0cy9f
cmVscy9zaGVldDcueG1sLnJlbHNQSwECLQAUAAYACAAAACEAQ5YRo8IAAABCAQAAIwAAAAAAAAAA
AAAAAABYMQAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDkueG1sLnJlbHNQSwECLQAUAAYACAAA
ACEA6aYluIIGAABTGwAAEwAAAAAAAAAAAAAAAABbMgAAeGwvdGhlbWUvdGhlbWUxLnhtbFBLAQIt
ABQABgAIAAAAIQCeKO8kEwYAAFQsAAANAAAAAAAAAAAAAAAAAA45AAB4bC9zdHlsZXMueG1sUEsB
Ai0AFAAGAAgAAAAhAMZt9fmfBQAA0xwAABkAAAAAAAAAAAAAAAAATD8AAHhsL3dvcmtzaGVldHMv
c2hlZXQxMy54bWxQSwECLQAUAAYACAAAACEAnxQyN/4FAADtGwAAGAAAAAAAAAAAAAAAAAAiRQAA
eGwvd29ya3NoZWV0cy9zaGVldDkueG1sUEsBAi0AFAAGAAgAAAAhALUO3P6WBgAA3ysAABgAAAAA
AAAAAAAAAAAAVksAAHhsL3dvcmtzaGVldHMvc2hlZXQ4LnhtbFBLAQItABQABgAIAAAAIQBajZqt
BAUAAEcYAAAYAAAAAAAAAAAAAAAAACJSAAB4bC93b3Jrc2hlZXRzL3NoZWV0Ny54bWxQSwECLQAU
AAYACAAAACEAU8HlQd4GAAD5KgAAGAAAAAAAAAAAAAAAAABcVwAAeGwvd29ya3NoZWV0cy9zaGVl
dDYueG1sUEsBAi0AFAAGAAgAAAAhAHB86TL7BgAA8SoAABgAAAAAAAAAAAAAAAAAcF4AAHhsL3dv
cmtzaGVldHMvc2hlZXQ1LnhtbFBLAQItABQABgAIAAAAIQCuM7H4DAUAAKMbAAAZAAAAAAAAAAAA
AAAAAKFlAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTAueG1sUEsBAi0AFAAGAAgAAAAhAJHJmVExBQAA
lRkAABkAAAAAAAAAAAAAAAAA5GoAAHhsL3dvcmtzaGVldHMvc2hlZXQxNC54bWxQSwECLQAUAAYA
CAAAACEABbQ3rAAFAAAwGwAAGQAAAAAAAAAAAAAAAABMcAAAeGwvd29ya3NoZWV0cy9zaGVldDEy
LnhtbFBLAQItABQABgAIAAAAIQAH8UTjJAUAAMcbAAAZAAAAAAAAAAAAAAAAAIN1AAB4bC93b3Jr
c2hlZXRzL3NoZWV0MTEueG1sUEsBAi0AFAAGAAgAAAAhAHmynXs3BQAAOCIAACcAAAAAAAAAAAAA
AAAA3noAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3MzLmJpblBLAQItABQABgAI
AAAAIQB5sp17NwUAADgiAAAnAAAAAAAAAAAAAAAAAFqAAAB4bC9wcmludGVyU2V0dGluZ3MvcHJp
bnRlclNldHRpbmdzMS5iaW5QSwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAA
AADWhQAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczIuYmluUEsBAi0AFAAGAAgA
AAAhAHmynXs3BQAAOCIAACcAAAAAAAAAAAAAAAAAUosAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmlu
dGVyU2V0dGluZ3M0LmJpblBLAQItABQABgAIAAAAIQB0qDUugAEAAOICAAARAAAAAAAAAAAAAAAA
AM6QAABkb2NQcm9wcy9jb3JlLnhtbFBLAQItABQABgAIAAAAIQA99WNlIQIAAFoFAAAQAAAAAAAA
AAAAAAAAAIWTAABkb2NQcm9wcy9hcHAueG1sUEsFBgAAAAAfAB8AqwgAANyWAAAAAA==

--_004_E16513A01CAAFF40B65178C63CE45EEC19172FE0IRSMSX102gercor_--
