Return-Path: <laurentiu.serban@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAD77E0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 12:48:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Oct 2012 12:47:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,602,1344236400"; 
	d="xml'?xlsx'72,48?scan'72,48,208,217,72,48?bin'72,48,208,217,72,48?rels'72,48,208,217,72,48";
	a="235203224"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2012 12:47:55 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.248]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.16]) with mapi id
	14.01.0355.002; Wed, 17 Oct 2012 20:47:54 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 1.3 RC4 full pass results
Thread-Index: Ac2soEuHDQMR4Oo+TvufLH6xba7QEQ==
Date: Wed, 17 Oct 2012 19:47:54 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC191988ED@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: 1.3 RC4 full pass results
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
X-List-Received-Date: Wed, 17 Oct 2012 19:48:08 -0000
X-Groupsio-MsgNum: 10131
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC191988EDIRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC191988EDIRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC191988EDIRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC191988EDIRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable


Hello guys,

Here are the test results for the 1.3 RC4 full pass.
The commit id is:  1b1b83651af33ffcb204031e2790719e3b0b45bb

For the performance tests: the build for sato x86 took 88 minutes (same as =
for RC3)

The following issue are encountered. I also updated with comments from Jess=
ica and Saul:

-          For the BSPs:

o   For qemu x86_64 images - the zypper refresh fails (2694),

-          For core build system:

o   There are still errors with the do_rootfs fails for lib64-core-image-sa=
to-sdk (2918)

-          For ADT

o   ADT couldn't be installed properly for RC4 because sato sdk for qemuarm=
 does not exist (3290)

o   GL support still available on qemuarm (3287)



Test Result Summary

Component

Target

Status

Comments

Boards

p1022ds

GOOD

Everything runs well

Beagleboard

GOOD

Everything runs well

Routerstationpro

GOOD

Everything runs well

Mpc8315e-rdb

GOOD

Sudoku-savant issue (2878)

eMenlow-sato-sdk

BUGGY

Usb mount fails (2643)

Blacksand-sato-sdk

GOOD

Everything runs well

Sugarbay sato-sdk

GOOD

Everything runs well

Crownbay-emgd-sato-sdk

GOOD

Standby fails (2792), Xorg issue (1258),

FRI2-sato

BUGGY

Blocked (3294)

HuronRiver-sato

GOOD

Everything runs well

Jasperforest-lsb

BUGGY

zypper is not installed in core-image-lsb-sdk (3098)

QEMU




Qemuarm

GOOD

Everything runs well

Qemuppc

GOOD

Everything runs well

Qemumips

GOOD

Everything runs well

qemux86

GOOD

Everything runs well

qemux86-64

BUGGY

Zypper issue (2694)

Core build system

=1B$B!!=1B(B

BUGGY

lib64-core-image-sato-sdk fails due to do_rootfs issue (2918)

HOB

=1B$B!!=1B(B

GOOD

Everything runs well

ADT

=1B$B!!=1B(B

BUGGY

ADT couldn't be installed properly for RC4 because sato sdk for qemuarm doe=
s not exist (3290)
GL support still available on qemuarm (3287)

Stress Testing

GOOD

Both Crashme and Helltest on Jasperforest could pass 24 hours stress testin=
g

Distribution Support

GOOD

Everything runs well for Ubuntu 12.04, Ubuntu 12.10 - nightly, OpenSuse 12.=
1, OpenSuse 12.2 RC2, Fedora 17, CentOs 6.3, Fedora 16

Power and Performance

GOOD

one qemux86 sato build on a Core i7 machine costs 88 minutes with the packa=
ges previously fetched.

Compliance

GOOD

Tests on Huron River and BlackSand passed

Build Appliance

GOOD

Everything runs well on VMWare Player (on Ubuntu). The relevant tests were =
performed also for qemu-kvm on Fedora 17 libvirt and
VMWare Workstation.(Ubuntu)



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

42

0

0

Routerstationpro Sato-SDK

35

0

35

0

0

p1022ds-sato-sdk

37

0

37

0

0

Mpc8315e-rdb Sato-SDK

37

0

37

0

0

eMenlow Sato-sdk

67

0

66

1 (bug 2643)

0

n450 Sato-sdk

67

0

67

0

0

Crownbay-Sato-sdk

65

0

62

2 (1258, 2792)

1 (2792)

FRI2 Sato-sdk

85

0

0

0

            85 (3294)

HuronRiver Sato-sdk

68

0

68

0

0

Sugarbay sato-sdk

68

0

68

0

0

Jasperforest lsb-sdk

34

0

27

7 (3098)

0

Qemuarm Sato

31

0

31

0

0

Qemuarm Sato-SDK

36

0

36

0

0

Qemumips Sato

31

0

31

0

0

Qemumips Sato-SDK

36

0

36

0

0

Qemuppc Sato

31

0

31

0

0

Qemuppc Sato-SDK

36

0

36

0

0

Qemux86-64 Sato

30

0

27

3 (bug 2694)

0

Qemux86-64 Sato-SDK

36

0

32

4 (bug 2694)

0

Qemux86 Sato

30

0

30

0

0

Qemux86 Sato-SDK

36

0

36

0

0

Core build system

59

0

57

2 (2918)

0

HOB

38

0

38

0

0

ADT

52

0

45

7(3290, 3287)

0

Build Appliance

42

0

34

7 (3290)

1 (centos gtk issue)

Total

1129

0

1009

33

87



Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2694 [QEMU-X86_64]zypper refresh fail

Core build system

Bug 2918  lib64-core-image-sato-sdk fails due to do_rootfs issue.

ADT

Bug 3287  GL support still available on qemuarm
Bug 3290 ADT couldn't be installed properly for RC4 because sato sdk for qe=
muarm does not exist





Laurentiu Serban
QA Engineer
Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_E16513A01CAAFF40B65178C63CE45EEC191988EDIRSMSX102gercor_
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
	{font-family:PMingLiU;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
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
	{font-family:"\@PMingLiU";
	panose-1:2 2 5 0 0 0 0 0 0 0;}
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
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:836502403;
	mso-list-type:hybrid;
	mso-list-template-ids:1284695232 388163400 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:4;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are the test results for the 1.3 RC4 full pass.=
<o:p></o:p></p>
<p class=3D"MsoNormal">The commit id is: &nbsp;<b>1b1b83651af33ffcb204031e2=
790719e3b0b45bb<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For the performance tests: the build for sato x86 to=
ok 88 minutes (same as for RC3)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The following issue are encountered. I also updated =
with comments from Jessica and Saul:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>For the BSPs: <o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>For qemu x86_64 images &#8211; the zypper re=
fresh fails (2694),<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>For core build system:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>There are still errors with the do_rootfs fa=
ils for lib64-core-image-sato-sdk (2918)<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>For ADT <o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:black">ADT couldn't be =
installed properly for RC4 because sato sdk for qemuarm does not exist (329=
0)</span><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;line-height:115%;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;;col=
or:black"><span style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;=
Times New Roman&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:black">GL support still=
 available on qemuarm (3287)</span><span style=3D"color:black"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.75in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"965" style=3D"width:724.0pt;margin-left:30.2pt;border-colla=
pse:collapse">
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
<td width=3D"189" nowrap=3D"" rowspan=3D"11" style=3D"width:141.5pt;border:=
solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Boards</span></b><b><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">p1022ds</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Beagleboard</span><span style=3D"font-size:10.0pt;line-heigh=
t:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o=
:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
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
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Mpc8315e-rdb<span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
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
;;color:black">Sudoku-savant issue (2878)</span><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">eMenlow-sato-sdk</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Usb mount fails (2643)</span><span style=3D"font-size:10.0pt=
;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Blacksand-sato-sdk</span><span style=3D"font-size:10.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></p>
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sugarbay sato-sdk</span><span style=3D"font-size:10.0pt;line=
-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Crownbay-emgd-sato-sdk</span><span style=3D"font-size:10.0pt=
;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">Standby fails (2792), Xorg issue (1258),
</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">FRI2-sato</span><span style=3D"font-size:10.0pt;line-height:=
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Blocked (3294)</span><span style=3D"font-size:10.0pt;line-he=
ight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">HuronRiver-sato</span><span style=3D"font-size:10.0pt;line-h=
eight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
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
id black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">zypper is not installed in core-image-lsb-sdk (3098)</span><=
span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" rowspan=3D"5" style=3D"width:141.5pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">QEMU</span></b><b><spa=
n style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;line-height:115%"><span =
style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemuarm</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemuppc</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemumips</span><span style=3D"font-size:10.0pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>=
</o:p></span></p>
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86-64</span><span style=3D"font-size:10.0pt;line-height=
:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:=
p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Zypper issue (2694)</span><span style=3D"font-size:10.0pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:20.6pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system</spa=
n></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">lib64-core-image-sato-sdk fails due to do_rootfs issue (2918=
)</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">ADT couldn't be installed properly for RC4 because sato sdk =
for qemuarm does not exist (3290)</span><span style=3D"font-size:10.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GL support still available on qemuarm (3287)</span><span sty=
le=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Stress Testing</span><=
/b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Both Crashme and Helltest on Jasperforest could pass 24 hour=
s stress testing</span><span style=3D"font-size:10.0pt;line-height:115%;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Distribution Support</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well for Ubuntu 12.04, Ubuntu 12.10 &#8211; =
nightly, OpenSuse 12.1, OpenSuse 12.2 RC2, Fedora 17, CentOs 6.3,
 Fedora 16</span><span style=3D"font-size:10.0pt;line-height:115%;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Power and Performance<=
/span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b>=
</p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">one qemux86 sato build on a Core i7 machine costs 88 minutes
<b>with the packages previously fetched.</b></span><span style=3D"font-size=
:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Compliance</span></b><=
b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Tests on Huron River and BlackSand passed</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Build Appliance</span>=
</b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well on VMWare Player (on Ubuntu). The relev=
ant tests were performed also for qemu-kvm on Fedora 17 libvirt
 and </span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">VMWare Workstation.=
(Ubuntu)</span><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellpadding=3D"0">
<tbody>
<tr style=3D"height:4.35pt">
<td colspan=3D"6" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt;h=
eight:4.35pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Detailed Test Result for each component</b><span style=3D"font=
-size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Target</b>
<span style=3D"font-size:12.0pt;line-height:115%;font-family:SimSun;color:b=
lack"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Total TCs</b><span style=3D"font-size:12.0pt;line-height:115%;=
font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not Run</b><span style=3D"font-size:12.0pt;line-height:115%;fo=
nt-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" style=3D"width:33.1pt;background:white;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Passed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" style=3D"width:114.85pt;background:white;padding:.75pt .7=
5pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Failed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not testable (Blocked)</b><span style=3D"font-size:12.0pt;line=
-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Beagleboard Sato-SDK</b><span style=3D"font-size:12.0pt;line-h=
eight:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">42<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">42</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Routerstationpro Sato-SDK</b><span style=3D"font-size:12.0pt;l=
ine-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">35<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>p1022ds-sato-sdk</b><b><span style=3D"font-size:10.5pt;line-he=
ight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">37<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">37</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Mpc8315e-rdb Sato-SDK</b><span style=3D"font-size:12.0pt;line-=
height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">37<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">37</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>eMenlow Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-he=
ight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">67<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">66</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (bug 2643)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>n450 Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-heigh=
t:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">67<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">67</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Crownbay-Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">65<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">62</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (1258, 2792)</span><span style=3D"fon=
t-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (2792)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>FRI2 Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-heigh=
t:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">85<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">0</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"color:red"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 85 (329=
4)</span><span style=3D"font-size:10.5pt;line-height:115%;color:red"><o:p><=
/o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>HuronRiver Sato-sdk</b><b><span style=3D"font-size:10.5pt;line=
-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">68<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">68</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Sugarbay sato-sdk</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">68<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">68</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Jasperforest lsb-sdk</b><b><span style=3D"font-size:10.5pt;lin=
e-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">34<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">27</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">7 (3098)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuarm Sato</b><span style=3D"font-size:12.0pt;line-height:11=
5%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">31<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" style=3D"width:33.1pt;background:white;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" style=3D"width:114.85pt;background:white;padding:.75pt .7=
5pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuarm Sato-SDK</b><span style=3D"font-size:12.0pt;line-heigh=
t:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">36<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemumips Sato</b><span style=3D"font-size:12.0pt;line-height:1=
15%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">31<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" style=3D"width:33.1pt;background:white;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" style=3D"width:114.85pt;background:white;padding:.75pt .7=
5pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemumips Sato-SDK</b><span style=3D"font-size:12.0pt;line-heig=
ht:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">36<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuppc Sato</b><span style=3D"font-size:12.0pt;line-height:11=
5%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">31<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" style=3D"width:33.1pt;background:white;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" style=3D"width:114.85pt;background:white;padding:.75pt .7=
5pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuppc Sato-SDK</b><span style=3D"font-size:12.0pt;line-heigh=
t:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">36<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86-64 Sato</b><b><span style=3D"font-size:10.5pt;line-hei=
ght:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">30<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">27</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">3 (bug 2694)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86-64 Sato-SDK</b><b><span style=3D"font-size:10.5pt;line=
-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">36<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">32</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">4 (bug 2694)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86 Sato</b><b><span style=3D"font-size:10.5pt;line-height=
:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">30<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86 Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-he=
ight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">36<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Core build system</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">59<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">57</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (2918)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>HOB</b><b><span style=3D"font-size:10.5pt;line-height:115%"><o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">38<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">38</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>ADT</b><b><span style=3D"font-size:10.5pt;line-height:115%"><o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">52<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">45</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">7(3290, 3287)</span><span style=3D"font=
-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Build Appliance</b><b><span style=3D"font-size:10.5pt;line-hei=
ght:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">42<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">34</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">7 (3290)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (centos gtk issue)</span><span style=
=3D"font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Total</b><b><span style=3D"font-size:10.5pt;line-height:115%">=
<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">1129<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p>=
</span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">1009</span><span style=3D"font-size:1=
0.5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">33</span><span style=3D"font-size:10.5p=
t;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">87</span><span style=3D"font-size:10.5p=
t;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"930" style=3D"width:697.75pt;margin-left:-.9pt;border-colla=
pse:collapse">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:solid black 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target Milestone</span></b><b><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"125" nowrap=3D"" rowspan=3D"2" style=3D"width:93.45pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System &amp; Core OS</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"2" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System Usage</span></b=
><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2694 [QEMU-X86_64]zyp=
per refresh fail<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:=
p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"2" style=3D"width:16=
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
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2918&nbsp; lib64-core=
-image-sato-sdk fails due to do_rootfs issue.<span style=3D"font-size:10.5p=
t;line-height:115%"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" style=3D"width:166.0pt;border-t=
op:none;border-left:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;=
border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid bl=
ack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3287&nbsp; GL support still available on qemuarm</span><=
span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3290 ADT couldn't be installed properly for RC4 because =
sato sdk for qemuarm does not exist</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_E16513A01CAAFF40B65178C63CE45EEC191988EDIRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC191988EDIRSMSX102gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="1.3_RC4_FullPass_TR.xlsx"
Content-Description: 1.3_RC4_FullPass_TR.xlsx
Content-Disposition: attachment; filename="1.3_RC4_FullPass_TR.xlsx";
	size=73929; creation-date="Wed, 10 Oct 2012 11:13:19 GMT";
	modification-date="Wed, 17 Oct 2012 19:40:53 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQD1vq31AwIAAPgTAAATANoBW0NvbnRlbnRfVHlwZXNdLnhtbCCi1gEooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAMxYTW/bMAy9D9h/MHQdYkXe1nVDnB72cdwKtPsBqsXEQmxJENku+feTncZYh2CJ
ZwfWxYYRiHwhn/kevbjZ1lXyBB61NTkT6ZwlYAqrtFnn7Of9t9k1S5CkUbKyBnK2A2Q3y9evFvc7
B5iE0wZzVhK5T5xjUUItMbUOTPhlZX0tKTz6NXey2Mg18Gw+v+KFNQSGZtTEYMvFjwDAawXJrfT0
XdYhD99W/Jf1GywBCHl7E+/TEJUln/fHGwQ5k85VupAU8PMno/7KPbOrlS5A2eKxDhlTdB6kaqPV
VdoleNPE5ecDuYoESPYuFiAXb80XWMnHipKv20CdPVsftBmRDM7rwEp/B0SB/NiDDh8jaYJ4GwuQ
aGiZRVKRbKrWUJjIwNurGFyLNsyJWYm0qwAHp3o5qPdBT2TupvmzXMQypD+MXIzuf/asx3UkOMRw
Ir5kx/8WREQzHeaRtCa7eGuOyLiHCvvp+LOZTMPJ1vhhqR0e3oYjGf7tGk97vwdrNyN3qLWgaS21
OeA+0wTHIq0XN3xn1kNM8u6EheLWW4c8rB+DmQGNpVWgZi6EBE8aOjKfWYRYBtlULqdTgMOmOLgn
IylMLKtBFov4Z1NVBEvpQd1R2PLWo9vTP2P3nOciFnsooqFILMY9m6Q1nbQU1kP/OXbwRs3pI4LC
2+92y98AAAD//wMAUEsDBBQABgAIAAAAIQC1VTAj9QAAAEwCAAALAM4BX3JlbHMvLnJlbHMgosoB
KKAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AACMks9OwzAMxu9IvEPk++puSAihpbtMSLshVB7AJO4ftY2jJED39oQDgkpj29H2588/W97u5mlU
HxxiL07DuihBsTNie9dqeK2fVg+gYiJnaRTHGo4cYVfd3mxfeKSUm2LX+6iyi4saupT8I2I0HU8U
C/HscqWRMFHKYWjRkxmoZdyU5T2Gvx5QLTzVwWoIB3sHqj76PPmytzRNb3gv5n1il06MQJ4TO8t2
5UNmC6nP26iaQstJgxXznNMRyfsiYwOeJtpcT/T/tjhxIkuJ0Ejg8zzfinNA6+uBLp9oqfi9zjzi
p4ThTWT4YcHFD1RfAAAA//8DAFBLAwQUAAYACAAAACEAUKutyrIBAABREgAAGgAIAXhsL19yZWxz
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
1LoCheRjF2iw8HvaLb9BsTjq3BQJLTyQYdMuvpoDTk5KiceQWBULsYVRJP0Yw37E2bGOCamQPubZ
SYl5MMn5ixvQrKpqbfJfB7QvTrXvLOR9V4M6PVJZ/uyOfR88bqO/zkjyz4RJOZBgPqJIOchF7fKA
YkHrd/aea30OBKZtzMvz9gkAAP//AwBQSwMEFAAGAAgAAAAhAKI0GhjCAAAAQgEAACQAAAB4bC93
b3Jrc2hlZXRzL19yZWxzL3NoZWV0MjQueG1sLnJlbHOEj8GKwjAURfeC/xDefpLqYhBp6kYGunX0
A2L62gbbl5D3Zpj+/WSpIri8HO653PrwN0/qFzOHSBY2ugKF5GMXaLBwOX997ECxOOrcFAktLMhw
aNar+oSTk1LiMSRWxUJsYRRJe2PYjzg71jEhFdLHPDspMQ8mOX9zA5ptVX2afO+A5sGp2s5CbrsN
qPOSyvJ7d+z74PEY/c+MJC8mTMqBBPM3ipSDXNQuDygWtH5mz3mnr4HANLV5eN78AwAA//8DAFBL
AwQUAAYACAAAACEAaz8P+8MAAABCAQAAJAAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQyMi54
bWwucmVsc4SPwWrDMBBE74H8g9h7JCeHtgTLuYRArm36Aaq8lkXsldBuS/P31bE2hR6Hx7xh2tP3
PKkvLBwTWdjrBhSST32kYOH9dtm9gGJx1LspEVp4IMOp227aV5yc1BKPMbOqFmILo0g+GsN+xNmx
ThmpkiGV2UmNJZjs/N0FNIemeTLltwO6hVNdewvl2u9B3R65Lv/vTsMQPZ6T/5yR5I8Jk0skwfKG
IvUgV7UrAcWC1mu2zs/6IxKYrjWL590PAAAA//8DAFBLAwQUAAYACAAAACEATFoqesIAAABCAQAA
JAAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQxMi54bWwucmVsc4SPwWrDMBBE74X8g9h7JKcH
U4rlXEog1yb9AFVe26L2Smg3If776FibQo/DY94wzfExT+qOmUMkCwddgULysQs0WPi6nvZvoFgc
dW6KhBYWZDi2u5fmEycnpcRjSKyKhdjCKJLejWE/4uxYx4RUSB/z7KTEPJjk/I8b0LxWVW3ybwe0
K6c6dxbyuTuAui6pLP/vjn0fPH5Ef5uR5I8Jk3IgwXxBkXKQi9rlAcWC1lu2zbX+DgSmbczqefsE
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
BgAIAAAAIQBrPw/7wwAAAEIBAAAkAAAAAAAAAAAAAAAAAH1TAAB4bC93b3Jrc2hlZXRzL19yZWxz
L3NoZWV0MjIueG1sLnJlbHNQSwECLQAUAAYACAAAACEATFoqesIAAABCAQAAJAAAAAAAAAAAAAAA
AACCVAAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDEyLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAh
AGTzNCLCAAAAQgEAACMAAAAAAAAAAAAAAAAAhlUAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ5
LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAEOWEaPCAAAAQgEAACMAAAAAAAAAAAAAAAAAiVYAAHhs
L3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ4LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhADShCZLCAAAA
QgEAACMAAAAAAAAAAAAAAAAAjFcAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ3LnhtbC5yZWxz
UEsBAi0AFAAGAAgAAAAhABPELBPCAAAAQgEAACMAAAAAAAAAAAAAAAAAj1gAAHhsL3dvcmtzaGVl
dHMvX3JlbHMvc2hlZXQ1LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhALaQFqVaBwAAOCUAABkAAAAA
AAAAAAAAAAAAklkAAHhsL3dvcmtzaGVldHMvc2hlZXQyNC54bWxQSwECLQAUAAYACAAAACEA6C0x
lyUFAAD2GgAAGQAAAAAAAAAAAAAAAAAjYQAAeGwvd29ya3NoZWV0cy9zaGVldDI3LnhtbFBLAQIt
ABQABgAIAAAAIQBFeyi79gcAAOgrAAAZAAAAAAAAAAAAAAAAAH9mAAB4bC93b3Jrc2hlZXRzL3No
ZWV0MjIueG1sUEsBAi0AFAAGAAgAAAAhABDL2lOoBQAA1R0AABkAAAAAAAAAAAAAAAAArG4AAHhs
L3dvcmtzaGVldHMvc2hlZXQxMy54bWxQSwECLQAUAAYACAAAACEAY1RQWnYFAADnHAAAGQAAAAAA
AAAAAAAAAACLdAAAeGwvd29ya3NoZWV0cy9zaGVldDEyLnhtbFBLAQItABQABgAIAAAAIQCt207j
PAcAAFUvAAAZAAAAAAAAAAAAAAAAADh6AAB4bC93b3Jrc2hlZXRzL3NoZWV0MTEueG1sUEsBAi0A
FAAGAAgAAAAhAONsi85RBwAAiC8AABkAAAAAAAAAAAAAAAAAq4EAAHhsL3dvcmtzaGVldHMvc2hl
ZXQxMC54bWxQSwECLQAUAAYACAAAACEAtamcZroFAABVHAAAGAAAAAAAAAAAAAAAAAAziQAAeGwv
d29ya3NoZWV0cy9zaGVldDkueG1sUEsBAi0AFAAGAAgAAAAhAPv20JrKBgAAtCkAABgAAAAAAAAA
AAAAAAAAI48AAHhsL3dvcmtzaGVldHMvc2hlZXQ4LnhtbFBLAQItABQABgAIAAAAIQAP2HiBig0A
ALZPAAAYAAAAAAAAAAAAAAAAACOWAAB4bC93b3Jrc2hlZXRzL3NoZWV0Ny54bWxQSwECLQAUAAYA
CAAAACEAsEX34CoGAAA3KQAAGAAAAAAAAAAAAAAAAADjowAAeGwvd29ya3NoZWV0cy9zaGVldDYu
eG1sUEsBAi0AFAAGAAgAAAAhAGuQcx2EBwAAIS8AABgAAAAAAAAAAAAAAAAAQ6oAAHhsL3dvcmtz
aGVldHMvc2hlZXQ1LnhtbFBLAQItABQABgAIAAAAIQCdVHKPGwUAALQaAAAZAAAAAAAAAAAAAAAA
AP2xAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTQueG1sUEsBAi0AFAAGAAgAAAAhAAjrQXE/BQAAhRsA
ABkAAAAAAAAAAAAAAAAAT7cAAHhsL3dvcmtzaGVldHMvc2hlZXQyMy54bWxQSwECLQAUAAYACAAA
ACEAJL9EyVsEAADvFQAAGQAAAAAAAAAAAAAAAADFvAAAeGwvd29ya3NoZWV0cy9zaGVldDE2Lnht
bFBLAQItABQABgAIAAAAIQDISJNUwwQAAN0YAAAZAAAAAAAAAAAAAAAAAFfBAAB4bC93b3Jrc2hl
ZXRzL3NoZWV0MTcueG1sUEsBAi0AFAAGAAgAAAAhACTIygiIBAAAshYAABkAAAAAAAAAAAAAAAAA
UcYAAHhsL3dvcmtzaGVldHMvc2hlZXQxOC54bWxQSwECLQAUAAYACAAAACEANm0yCucEAABIGQAA
GQAAAAAAAAAAAAAAAAAQywAAeGwvd29ya3NoZWV0cy9zaGVldDE5LnhtbFBLAQItABQABgAIAAAA
IQDI+XbgcAQAAFsWAAAZAAAAAAAAAAAAAAAAAC7QAAB4bC93b3Jrc2hlZXRzL3NoZWV0MjAueG1s
UEsBAi0AFAAGAAgAAAAhADZtMgrnBAAASBkAABkAAAAAAAAAAAAAAAAA1dQAAHhsL3dvcmtzaGVl
dHMvc2hlZXQyMS54bWxQSwECLQAUAAYACAAAACEAc4sB5aoEAAAwFwAAGQAAAAAAAAAAAAAAAADz
2QAAeGwvd29ya3NoZWV0cy9zaGVldDE1LnhtbFBLAQItABQABgAIAAAAIQB5sp17NwUAADgiAAAn
AAAAAAAAAAAAAAAAANTeAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzNS5iaW5Q
SwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAABQ5AAAeGwvcHJpbnRlclNl
dHRpbmdzL3ByaW50ZXJTZXR0aW5nczQuYmluUEsBAi0AFAAGAAgAAAAhAHmynXs3BQAAOCIAACcA
AAAAAAAAAAAAAAAAzOkAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3MyLmJpblBL
AQItABQABgAIAAAAIQB5sp17NwUAADgiAAAnAAAAAAAAAAAAAAAAAEjvAAB4bC9wcmludGVyU2V0
dGluZ3MvcHJpbnRlclNldHRpbmdzNi5iaW5QSwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAA
AAAAAAAAAAAAAADE9AAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczcuYmluUEsB
Ai0AFAAGAAgAAAAhAHmynXs3BQAAOCIAACcAAAAAAAAAAAAAAAAAQPoAAHhsL3ByaW50ZXJTZXR0
aW5ncy9wcmludGVyU2V0dGluZ3M4LmJpblBLAQItABQABgAIAAAAIQB5sp17NwUAADgiAAAnAAAA
AAAAAAAAAAAAALz/AAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMy5iaW5QSwEC
LQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAAA4BQEAeGwvcHJpbnRlclNldHRp
bmdzL3ByaW50ZXJTZXR0aW5nczEuYmluUEsBAi0AFAAGAAgAAAAhADFf2yGGAQAA4gIAABEAAAAA
AAAAAAAAAAAAtAoBAGRvY1Byb3BzL2NvcmUueG1sUEsBAi0AFAAGAAgAAAAhAJBhdL6dAgAAjgcA
ABAAAAAAAAAAAAAAAAAAcQ0BAGRvY1Byb3BzL2FwcC54bWxQSwUGAAAAADYANgBvDwAARBEBAAAA

--_004_E16513A01CAAFF40B65178C63CE45EEC191988EDIRSMSX102gercor_--
