Return-Path: <laurentiu.serban@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E21D6E00292
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 13:12:32 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Oct 2012 13:12:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,565,1344236400"; 
	d="xml'?bin'?scan'72,217,208,48?xlsx'72,217,208,48,72,48?rels'72,217,208,48,72,48";
	a="202946175"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 10 Oct 2012 13:12:27 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.34]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.173]) with mapi id
	14.01.0355.002; Wed, 10 Oct 2012 21:12:27 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 1.3 RC3 full pass test reports
Thread-Index: Ac2nI4/9kg5O4+VeTIqMtam4GxpYaw==
Date: Wed, 10 Oct 2012 20:12:26 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC19188B43@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: 1.3 RC3 full pass test reports
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
X-List-Received-Date: Wed, 10 Oct 2012 20:12:39 -0000
X-Groupsio-MsgNum: 10015
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC19188B43IRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC19188B43IRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC19188B43IRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC19188B43IRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello guys,

Here are the test results for the 1.3 RC3 full pass.
The commit id is: 86c9aa8081f107420cd3763d0566d779daddc2b1

For the performance tests: the build for sato x86 took 88 minutes (a slight=
 decrease in perfomance)

The following issue are encountered. I also updated with comments from Jess=
ica and Saul:

-          For the BSPs:

o   For qemu x86_64 images - the zypper refresh fails (2694),

o   For all the boards there is commos n issue with the Sudoku-savant appli=
cation (2878)

o   Dmesg errors on e-menlow sato image (2866)

o   An old problem shutting down and arm qemu machine (684)

-          For core build system:

o   There are still errors with the do_rootfs fails for lib64-core-image-sa=
to-sdk (2918), there is a small issue with the sstate-cache-management.sh (=
3116) and there is a problem related to meta-intel BSP creation using yocto=
-bsp (3142).

o   Also there is an issue with dash vs. x32 on Ubuntu (3080) [SW] bash vs =
dash issue on Ubuntu

-          For ADT

o   There are issues with the lttng (3203) and meta-toolchain-support (3100=
). [JZ] This one is the only one that remains as an issue

o   There is an issue using the standalone toolchain for ARM and x86 (3201)=
 [JZ] resolved

o   An error occurs when selecting kernel 3.4 in Yocto-bsp tool (3233) [JZ]=
 need confirmation for AlexG, maybe a sighting? since both Tom and I can=1B=
$B!G=1B(Bt reproduce from commandline and eclipse plugin

o   iptables 1.4.15 compile failed on qemux86,qemuarm i686 gmae-toolchain (=
3125)

-          For HOB:

o   Choosing another toolchain host than x86_64 produces an hob-toolchain e=
rror (3199)

o   Improve bblayers-hob.conf (3007)


Test Result Summary

Component

Target

Status

Comments

Boards

p1022ds

GOOD

Sudoku-savant issue (2878)

Beagleboard

GOOD

Sudoku-savant issue (2878, 3186)

Routerstationpro

GOOD

Sudoku-savant issue (2878)

Mpc8315e-rdb

GOOD

Sudoku-savant issue (2878)

eMenlow-sato-sdk

BUGGY

Sudoku-savant issue (2878)
dmesg errors on emenlow sato image (2866)

Blacksand-sato-sdk

GOOD

Sudoku-savant issue (2878)

Sugarbay sato-sdk

GOOD

Sudoku-savant issue (2878)

Crownbay-emgd-sato-sdk

GOOD

Sudoku-savant issue (2878)

FRI2-sato

GOOD

Sudoku-savant build issue (2878)

HuronRiver-sato

GOOD

Sudoku-savant issue (2878)

Jasperforest-lsb

GOOD

Sudoku-savant issue (2878), zypper is not installed in core-image-lsb-sdk (=
3098)

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

incremental RPM generation (3047),
lib64-core-image-sato-sdk fails due to do_rootfs issue (2918)
sstate-cache-management.sh prints some error message when running (3116)
[meta-x32] x32 image fails to build due to no recipes available for eglib_2=
.15 (3080)

HOB

=1B$B!!=1B(B

GOOD

[HOB]toolchain arch in settings is not saved (3199)
Improve bblayers-hob.conf (3007)

ADT

=1B$B!!=1B(B

BUGGY

autoreconf run failed on x86-64 gmae-toolchain (3100)
cannot build Hello World Ansi C project using standalone Toolchain for ARM =
and X86 (3201)
kernel trace type not available in the lttng project (3203)
error when selecting kernel version 3.4 in yocto bsp tool (3233)
iptables 1.4.15 compile failed on qemux86,qemuarm i686 gmae-toolchain (3125=
)

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

37

5(2878, 3186)

0

Routerstationpro Sato-SDK

35

0

34

1(2878)

0

p1022ds-sato-sdk

37

0

36

1(2878)

0

Mpc8315e-rdb Sato-SDK

37

0

36

1(2878)

0

eMenlow Sato-sdk

67

0

64

3 (bug 2878,3091)

0

n450 Sato-sdk

67

0

66

1 (bug 2878)

0

Crownbay-Sato-sdk

65

0

62

3 (2878, 2792, 2386, 1258)

0

FRI2 Sato-sdk

85

0

84

1 (2878)

0

HuronRiver Sato-sdk

68

0

67

1 (2878)

0

Sugarbay sato-sdk

68

0

67

1 (2878)

0

Jasperforest lsb-sdk

34

0

26

8 (2878,3098)

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

64

0

57

7 (3142, 2918, 3116,3080)

0

HOB

39

0

37

2(3199,3007 )

0

ADT

53

0

40

13(3201, 3203, 3100)

0

Build Appliance

14

0

13

1 (3243)

0

Total

1108

0

1052

56

0



Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2878 pkgconfig is missing from sato-sdk image - installing and then try=
ing to removing it leads to rpm crashes/assertions

Bug 2694 [QEMU-X86_64]zypper refresh fail
Bug 3186 BeagleBoard: rpm query package failed due to glibc realloc() error

Core build system

Bug 3142 [yocto-bsp] kernel panic message for yocto-bsp based images.

Bug  3116 sstate-cache-management.sh prints some error message when running
Bug 3080 [meta-x32] x32 image fails to build due to no recipes available fo=
r eglib_2.15
Bug 2918  lib64-core-image-sato-sdk fails due to do_rootfs issue.

ADT

Bug 3100 autoreconf run failed on x86-64 gmae-toolchain
Bug 3201 cannot build Hello World Ansi C project using standalone Toolchain=
 for ARM and X86
Bug 3203  kernel trace type not available in the lttng project
Bug 3233 error when selecting kernel version 3.4 in yocto bsp tool
Bug 3125 iptable 1.4.15 compile failed on qemux86,qemuarm i686 gmae-toolcha=
in

HOB

Bug 3199 Choosing another toolchain host than x86_64 produces an hob-toolch=
ain error
Bug 3007 Improve bblayers-hob.conf





Best regards,
Laurentiu Serban
QA Engineer
Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_E16513A01CAAFF40B65178C63CE45EEC19188B43IRSMSX102gercor_
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
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
@font-face
	{font-family:"\@MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
@font-face
	{font-family:"\@MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@PMingLiU";
	panose-1:2 2 5 0 0 0 0 0 0 0;}
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
<p class=3D"MsoNormal">Hello guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are the test results for the 1.3 RC3 full pass.=
<o:p></o:p></p>
<p class=3D"MsoNormal">The commit id is: <b>86c9aa8081f107420cd3763d0566d77=
9daddc2b1<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For the performance tests: the build for sato x86 to=
ok 88 minutes (a slight decrease in perfomance)<o:p></o:p></p>
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
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>For all the boards there is commos n issue w=
ith the Sudoku-savant application (2878)
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>Dmesg errors on e-menlow sato image (2866)<o=
:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>An old problem shutting down and arm qemu ma=
chine (684)<o:p></o:p></p>
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
ils for lib64-core-image-sato-sdk (2918), there is a small issue with the s=
state-cache-management.sh (3116) and there is a problem related to meta-int=
el BSP creation using yocto-bsp
 (3142).<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>Also there is an issue with dash vs. x32 on =
Ubuntu (3080)
<b>[SW] bash vs dash issue on Ubuntu</b><o:p></o:p></p>
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
</span></span></span><![endif]>There are issues with the lttng (3203) and m=
eta-toolchain-support (3100).
<b>[JZ] This one is the only one that remains as an issue<o:p></o:p></b></p=
>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>There is an issue using the standalone toolc=
hain for ARM and x86 (3201)
<b>[JZ] resolved</b><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>An error occurs when selecting kernel 3.4 in=
 Yocto-bsp tool (3233)
<b><span style=3D"color:#1F497D">[</span>JZ] need confirmation for AlexG, m=
aybe a sighting? since both Tom and I can=1B$B!G=1B(Bt reproduce from comma=
ndline and eclipse plugin<o:p></o:p></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">iptables 1.4.15 compi=
le failed on qemux86,qemuarm i686 gmae-toolchain
</span>(3125)<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>For HOB:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>Choosing another toolchain host than x86_64 =
produces an hob-toolchain error (3199)<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>Improve bblayers-hob.conf (3007)<o:p></o:p><=
/p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in"><o:p>&nbsp;</o:p>=
</p>
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
;;color:black">Sudoku-savant issue (2878, 3186)</span><span style=3D"font-s=
ize:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant issue (2878)</span><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant issue (2878)</span><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">dmesg errors on emenlow sato image (2866)</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant issue (2878)</span><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant issue (2878)</span><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant issue (2878)</span><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
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
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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
;;color:black">Sudoku-savant build issue (2878)</span><span style=3D"font-s=
ize:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant issue (2878)</span><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant issue (2878), zypper is not installed in core-=
image-lsb-sdk (3098)</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
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
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o=
:p></span></p>
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
;;color:black">incremental RPM generation (3047),</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">lib64-core-image-sato-sdk fails due to do_rootfs issue (2918=
)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">sstate-cache-management.sh prints some error message when ru=
nning (3116)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">[meta-x32] x32 image fails to build due to no recipes availa=
ble for eglib_2.15 (3080)</span><span style=3D"font-size:10.0pt;line-height=
:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:=
p></o:p></span></p>
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
;;color:black">[HOB]toolchain arch in settings is not saved (3199)</span><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Improve bblayers-hob.conf (3007)</span><span style=3D"font-s=
ize:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
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
;;color:black">autoreconf run failed on x86-64 gmae-toolchain (3100)</span>=
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">cannot build Hello World Ansi C project using standalone Too=
lchain for ARM and X86 (3201)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">kernel trace type not available in the lttng project (3203)<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">error when selecting kernel version 3.4 in yocto bsp tool (3=
233)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">iptables 1.4.15 compile failed on qemux86,qemuarm i686 gmae-=
toolchain (3125)</span><span style=3D"font-size:10.0pt;line-height:115%;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p><=
/span></p>
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
ght:115%"><span style=3D"color:green">37</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">5(2878, 3186)</span><span style=3D"font=
-size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></=
span></p>
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
ght:115%"><span style=3D"color:green">34</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(2878)</span><span style=3D"font-size:=
12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span><=
/p>
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
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(2878)</span><span style=3D"font-size:=
12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span><=
/p>
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
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(2878)</span><span style=3D"font-size:=
12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span><=
/p>
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
ght:115%"><span style=3D"color:green">64</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">3 (bug 2878,3091)</span><span style=3D"=
font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%"><span style=3D"color:green">66</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (bug 2878)</span><span style=3D"font-=
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
ght:115%"><span style=3D"color:red">3 (2878, 2792, 2386, 1258)</span><span =
style=3D"font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p=
>
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
ght:115%"><span style=3D"color:green">84</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (2878)</span><span style=3D"font-size=
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
ght:115%"><span style=3D"color:green">67</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (2878)</span><span style=3D"font-size=
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
ght:115%"><span style=3D"color:green">67</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (2878)</span><span style=3D"font-size=
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
ght:115%"><span style=3D"color:green">26</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">8 (2878,3098)</span><span style=3D"font=
-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%">64<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
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
ght:115%"><span style=3D"color:red">7 (3142, 2918, 3116,3080)</span><span s=
tyle=3D"font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%">39<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
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
ght:115%"><span style=3D"color:green">37</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2(3199,3007 )</span><span style=3D"font=
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
ght:115%"><b>ADT</b><b><span style=3D"font-size:10.5pt;line-height:115%"><o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">53<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
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
ght:115%"><span style=3D"color:green">40</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">13(3201, 3203, 3100)</span><span style=
=3D"font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%">14<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
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
ght:115%"><span style=3D"color:green">13</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (3243)</span><span style=3D"font-size=
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
ght:115%"><b>Total</b><b><span style=3D"font-size:10.5pt;line-height:115%">=
<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">1108<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p>=
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
ght:115%"><span style=3D"color:green">1052</span><span style=3D"font-size:1=
0.5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">56</span><span style=3D"font-size:10.5p=
t;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2878 pkgconfig is missing from sato-sdk image - installi=
ng and then trying to removing it leads to rpm crashes/assertions</span><sp=
an style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 3186 BeagleBoard: rpm=
 query package failed due to glibc realloc() error<span style=3D"font-size:=
10.5pt;line-height:115%"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3142 [yocto-bsp] kernel panic message for yocto-bsp base=
d images.</span><span style=3D"font-size:10.0pt;line-height:115%;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span><=
/p>
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
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug&nbsp; 3116 sstate-cac=
he-management.sh prints some error message when running<span style=3D"font-=
size:10.5pt;line-height:115%"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 3080 [meta-x32] x32 i=
mage fails to build due to no recipes available for eglib_2.15<o:p></o:p></=
p>
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
;;color:black">Bug 3100 autoreconf run failed on x86-64 gmae-toolchain</spa=
n><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3201 cannot build Hello World Ansi C project using stand=
alone Toolchain for ARM and X86<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3203&nbsp; kernel trace type not available in the lttng =
project<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3233 error when selecting kernel version 3.4 in yocto bs=
p tool<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3125 iptable 1.4.15 compile failed on qemux86,qemuarm i6=
86 gmae-toolchain</span><span style=3D"font-size:10.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p>=
</span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" style=3D"width:166.0pt;border-t=
op:none;border-left:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;=
border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">HOB</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid bl=
ack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3199 Choosing another toolchain host than x86_64 produce=
s an hob-toolchain error</span><span style=3D"font-size:10.0pt;line-height:=
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3007 Improve bblayers-hob.conf</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
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

--_000_E16513A01CAAFF40B65178C63CE45EEC19188B43IRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC19188B43IRSMSX102gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="1.3_RC3_FullPass_TR_updated.xlsx"
Content-Description: 1.3_RC3_FullPass_TR_updated.xlsx
Content-Disposition: attachment;
	filename="1.3_RC3_FullPass_TR_updated.xlsx"; size=71678;
	creation-date="Wed, 10 Oct 2012 11:13:19 GMT";
	modification-date="Wed, 10 Oct 2012 20:11:21 GMT"
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
jn0fPH5Ef5uR5I8Jk3IgwXxBkXKQi9rlAcWC1lu2zbX+DgSmbczqefsEAAD//wMAUEsDBBQABgAI
AAAAIQBk8zQiwgAAAEIBAAAkAAAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDEyLnhtbC5yZWxz
hI/BasMwEETvgfyD2HskJ9BSguVcQiDXNv0AVV7LIvZKaLel+fvqWJtCj8Nj3jDt6Xue1BcWjoks
7HUDCsmnPlKw8H677F5AsTjq3ZQILTyQ4dRtN+0rTk5qiceYWVULsYVRJB+NYT/i7FinjFTJkMrs
pMYSTHb+7gKaQ9M8m/LbAd3Cqa69hXLt96Buj1yX/3enYYgez8l/zkjyx4TJJZJgeUORepCr2pWA
YkHrNVvnJ/0RCUzXmsXz7gcAAP//AwBQSwMEFAAGAAgAAAAhAEOWEaPCAAAAQgEAACMAAAB4bC93
b3Jrc2hlZXRzL19yZWxzL3NoZWV0OS54bWwucmVsc4SPwWrDMBBE74H8g9h7JCeUUoLlXEIg1zb9
AFVeyyL2Smi3pfn76libQo/DY94w7el7ntQXFo6JLOx1AwrJpz5SsPB+u+xeQLE46t2UCC08kOHU
bTftK05OaonHmFlVC7GFUSQfjWE/4uxYp4xUyZDK7KTGEkx2/u4CmkPTPJvy2wHdwqmuvYVy7feg
bo9cl/93p2GIHs/Jf85I8seEySWSYHlDkXqQq9qVgGJB6zVb5yf9EQlM15rF8+4HAAD//wMAUEsD
BBQABgAIAAAAIQA0oQmSwgAAAEIBAAAjAAAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDgueG1s
LnJlbHOEj8FqwzAQRO+B/IPYeyQnhVKC5VxCINc2/QBVXssi9kpot6X5++pYm0KPw2PeMO3pe57U
FxaOiSzsdQMKyac+UrDwfrvsXkCxOOrdlAgtPJDh1G037StOTmqJx5hZVQuxhVEkH41hP+LsWKeM
VMmQyuykxhJMdv7uAppD0zyb8tsB3cKprr2Fcu33oG6PXJf/d6dhiB7PyX/OSPLHhMklkmB5Q5F6
kKvalYBiQes1W+cn/REJTNeaxfPuBwAA//8DAFBLAwQUAAYACAAAACEAE8QsE8IAAABCAQAAIwAA
AHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ1LnhtbC5yZWxzhI/BasMwEETvhfyD2HskO4dQiiVf
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
AAgAAAAhAPms7eMUAwAAqQgAABkAAAAAAAAAAAAAAAAAKSQAAHhsL3dvcmtzaGVldHMvc2hlZXQy
OC54bWxQSwECLQAUAAYACAAAACEA+YtvMHkCAABFBwAAGQAAAAAAAAAAAAAAAAB0JwAAeGwvd29y
a3NoZWV0cy9zaGVldDI3LnhtbFBLAQItABQABgAIAAAAIQAlle2Q6wQAAIEXAAAYAAAAAAAAAAAA
AAAAACQqAAB4bC93b3Jrc2hlZXRzL3NoZWV0MS54bWxQSwECLQAUAAYACAAAACEAqXS/9vQBAABU
BAAAGQAAAAAAAAAAAAAAAABFLwAAeGwvd29ya3NoZWV0cy9zaGVldDI1LnhtbFBLAQItABQABgAI
AAAAIQAcL/8VQxUAADpTAAAUAAAAAAAAAAAAAAAAAHAxAAB4bC9zaGFyZWRTdHJpbmdzLnhtbFBL
AQItABQABgAIAAAAIQA8FxcLOAQAAMMUAAAYAAAAAAAAAAAAAAAAAOVGAAB4bC93b3Jrc2hlZXRz
L3NoZWV0My54bWxQSwECLQAUAAYACAAAACEA/Y9Zwo4EAAAQGAAAGAAAAAAAAAAAAAAAAABTSwAA
eGwvd29ya3NoZWV0cy9zaGVldDIueG1sUEsBAi0AFAAGAAgAAAAhAGs/D/vDAAAAQgEAACQAAAAA
AAAAAAAAAAAAF1AAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQyNC54bWwucmVsc1BLAQItABQA
BgAIAAAAIQBMWip6wgAAAEIBAAAkAAAAAAAAAAAAAAAAABxRAAB4bC93b3Jrc2hlZXRzL19yZWxz
L3NoZWV0MjIueG1sLnJlbHNQSwECLQAUAAYACAAAACEAZPM0IsIAAABCAQAAJAAAAAAAAAAAAAAA
AAAgUgAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDEyLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAh
AEOWEaPCAAAAQgEAACMAAAAAAAAAAAAAAAAAJFMAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ5
LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhADShCZLCAAAAQgEAACMAAAAAAAAAAAAAAAAAJ1QAAHhs
L3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ4LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhABPELBPCAAAA
QgEAACMAAAAAAAAAAAAAAAAAKlUAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ1LnhtbC5yZWxz
UEsBAi0AFAAGAAgAAAAhADttMkvBAAAAQgEAACMAAAAAAAAAAAAAAAAALVYAAHhsL3dvcmtzaGVl
dHMvX3JlbHMvc2hlZXQxLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAJj50ltmBwAAtyYAABkAAAAA
AAAAAAAAAAAAL1cAAHhsL3dvcmtzaGVldHMvc2hlZXQyNC54bWxQSwECLQAUAAYACAAAACEA01kW
bkECAAB8BQAAGQAAAAAAAAAAAAAAAADMXgAAeGwvd29ya3NoZWV0cy9zaGVldDI2LnhtbFBLAQIt
ABQABgAIAAAAIQC4U+ybjggAAFAvAAAZAAAAAAAAAAAAAAAAAERhAAB4bC93b3Jrc2hlZXRzL3No
ZWV0MjIueG1sUEsBAi0AFAAGAAgAAAAhAHXq2kJ6BQAAHR0AABkAAAAAAAAAAAAAAAAACWoAAHhs
L3dvcmtzaGVldHMvc2hlZXQxMi54bWxQSwECLQAUAAYACAAAACEAejE5BUcHAADZLwAAGQAAAAAA
AAAAAAAAAAC6bwAAeGwvd29ya3NoZWV0cy9zaGVldDExLnhtbFBLAQItABQABgAIAAAAIQDkBFnU
SAcAAB4wAAAZAAAAAAAAAAAAAAAAADh3AAB4bC93b3Jrc2hlZXRzL3NoZWV0MTAueG1sUEsBAi0A
FAAGAAgAAAAhAG8+d03MBQAAfBwAABgAAAAAAAAAAAAAAAAAt34AAHhsL3dvcmtzaGVldHMvc2hl
ZXQ5LnhtbFBLAQItABQABgAIAAAAIQCfVL1W9AYAAOopAAAYAAAAAAAAAAAAAAAAALmEAAB4bC93
b3Jrc2hlZXRzL3NoZWV0OC54bWxQSwECLQAUAAYACAAAACEAX+0sA2QHAACTLQAAGAAAAAAAAAAA
AAAAAADjiwAAeGwvd29ya3NoZWV0cy9zaGVldDcueG1sUEsBAi0AFAAGAAgAAAAhAP6ANPizDQAA
40sAABgAAAAAAAAAAAAAAAAAfZMAAHhsL3dvcmtzaGVldHMvc2hlZXQ2LnhtbFBLAQItABQABgAI
AAAAIQC+7x+BqQcAADsvAAAYAAAAAAAAAAAAAAAAAGahAAB4bC93b3Jrc2hlZXRzL3NoZWV0NS54
bWxQSwECLQAUAAYACAAAACEA5JGWscYFAADjHQAAGQAAAAAAAAAAAAAAAABFqQAAeGwvd29ya3No
ZWV0cy9zaGVldDEzLnhtbFBLAQItABQABgAIAAAAIQB+lYlIUAUAAC8cAAAZAAAAAAAAAAAAAAAA
AEKvAAB4bC93b3Jrc2hlZXRzL3NoZWV0MjMueG1sUEsBAi0AFAAGAAgAAAAhAGRsYiGvBAAAPBcA
ABkAAAAAAAAAAAAAAAAAybQAAHhsL3dvcmtzaGVldHMvc2hlZXQxNS54bWxQSwECLQAUAAYACAAA
ACEA+4PBNykFAADAGgAAGQAAAAAAAAAAAAAAAACvuQAAeGwvd29ya3NoZWV0cy9zaGVldDE0Lnht
bFBLAQItABQABgAIAAAAIQCmlauswQQAAOoYAAAZAAAAAAAAAAAAAAAAAA+/AAB4bC93b3Jrc2hl
ZXRzL3NoZWV0MTcueG1sUEsBAi0AFAAGAAgAAAAhANFWtOZiBAAA/BUAABkAAAAAAAAAAAAAAAAA
B8QAAHhsL3dvcmtzaGVldHMvc2hlZXQxNi54bWxQSwECLQAUAAYACAAAACEAJq+TmIMEAACyFgAA
GQAAAAAAAAAAAAAAAACgyAAAeGwvd29ya3NoZWV0cy9zaGVldDE4LnhtbFBLAQItABQABgAIAAAA
IQDSRD/XbAQAAFsWAAAZAAAAAAAAAAAAAAAAAFrNAAB4bC93b3Jrc2hlZXRzL3NoZWV0MjAueG1s
UEsBAi0AFAAGAAgAAAAhAFUKVE3kBAAASBkAABkAAAAAAAAAAAAAAAAA/dEAAHhsL3dvcmtzaGVl
dHMvc2hlZXQyMS54bWxQSwECLQAUAAYACAAAACEAVQpUTeQEAABIGQAAGQAAAAAAAAAAAAAAAAAY
1wAAeGwvd29ya3NoZWV0cy9zaGVldDE5LnhtbFBLAQItABQABgAIAAAAIQB5sp17NwUAADgiAAAn
AAAAAAAAAAAAAAAAADPcAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMy5iaW5Q
SwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAACv4QAAeGwvcHJpbnRlclNl
dHRpbmdzL3ByaW50ZXJTZXR0aW5nczIuYmluUEsBAi0AFAAGAAgAAAAhAHmynXs3BQAAOCIAACcA
AAAAAAAAAAAAAAAAK+cAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3M3LmJpblBL
AQItABQABgAIAAAAIQB5sp17NwUAADgiAAAnAAAAAAAAAAAAAAAAAKfsAAB4bC9wcmludGVyU2V0
dGluZ3MvcHJpbnRlclNldHRpbmdzNi5iaW5QSwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAA
AAAAAAAAAAAAAAAj8gAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczUuYmluUEsB
Ai0AFAAGAAgAAAAhAHmynXs3BQAAOCIAACcAAAAAAAAAAAAAAAAAn/cAAHhsL3ByaW50ZXJTZXR0
aW5ncy9wcmludGVyU2V0dGluZ3M0LmJpblBLAQItABQABgAIAAAAIQB5sp17NwUAADgiAAAnAAAA
AAAAAAAAAAAAABv9AAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMS5iaW5QSwEC
LQAUAAYACAAAACEAGXlKaYABAADiAgAAEQAAAAAAAAAAAAAAAACXAgEAZG9jUHJvcHMvY29yZS54
bWxQSwECLQAUAAYACAAAACEA8SFvV5sCAACkBwAAEAAAAAAAAAAAAAAAAABOBQEAZG9jUHJvcHMv
YXBwLnhtbFBLBQYAAAAANAA0AMkOAAAfCQEAAAA=

--_004_E16513A01CAAFF40B65178C63CE45EEC19188B43IRSMSX102gercor_--
