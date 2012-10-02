Return-Path: <laurentiu.serban@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE313E011C0
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 09:05:10 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 02 Oct 2012 09:05:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,524,1344236400"; 
	d="xml'?xlsx'72,48?scan'72,48,72,48,208,217?bin'72,48,72,48,208,217?rels'72,48,72,48,208,217";
	a="151558997"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Oct 2012 09:05:06 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 2 Oct 2012 17:04:17 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.34]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.142]) with mapi id
	14.01.0355.002; Tue, 2 Oct 2012 17:04:16 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Full pass test results for 1.3 RC2
Thread-Index: Ac2gt5NJiQ76IouqRbuQ+LvoreU8EA==
Date: Tue, 2 Oct 2012 16:04:17 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC19184410@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Full pass test results for 1.3 RC2
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
X-List-Received-Date: Tue, 02 Oct 2012 16:05:18 -0000
X-Groupsio-MsgNum: 9748
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC19184410IRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC19184410IRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC19184410IRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC19184410IRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here are the results for 1.3 M4 RC3 full pass testing. The commit id is: 71=
8eb85806e080d0b165344b272e531ef19421eb.
The following issue are encountered:

-          For the BSPs:

o   For e-menlow the X server is not starting (3091)

o   For FRI2 - connman does not provide a 3g configuration utility (2415), =
system cannot enter S3 standby mode (2037), there is dmesg PowerButton erro=
r (2989) and the system cannot enter S3 standby mode (2037), Windows switch=
ing failure (2646), [FRI2]No WiFi section available in connman (3202)

o   For qemu x86_64 images - the zypper refresh fails (2694),

o   For all the boards there is common issue with the Sudoku-savant applica=
tion (2878) and with the warnings at boot time (2399)

-          For core build system:

o   There are still errors with the do_rootfs fails for lib64-core-image-sa=
to-sdk (2918), there is a small issue with the sstate-cache-management.sh (=
3116) and there is a problem related to meta-intel BSP creation using yocto=
-bsp.

-          For ADT

o   There are issues with the lttng (3203) and meta-toolchain-support (3100=
).

o   There is an issue using the standalone toolchain for ARM and x86 (3201)

-          For HOB:

o   Choosing another toolchain host than x86_64 produces an hob-toolchain e=
rror (3199)

o   Improve bblayers-hob.conf (3007)


The build for core-image-sato with pre-fetched sources takes 84 minutes


 =1B$B!!=1B(B

Critical bugs, more than 50% test cases are blocked

=1B$B!!=1B(B

Only Normal, Minor or Enhancement bugs, or less than 10% test cases failed

=1B$B!!=1B(B

Normal, Major and Critical bugs, and more than 10% test cases failed


Test Result Summary

Component

Target

Status

Comments


p1022ds

GOOD

Sudoku-savant issue (2878)

BSP

Beagleboard

GOOD

Sudoku-savant issue (2878)

Routerstationpro

GOOD

Sudoku-savant issue (2878)

Mpc8315e-rdb

GOOD

Sudoku-savant issue (2878)

eMenlow-sato-sdk

BUGGY

Sudoku-savant issue (2878)
X does not start on E-Menlow bsp (3091)

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

BUGGY

Live boot from USB fails (2399),
standby issue (2037),
Sudoku-savant build issue (2878),
system dmesg log check issue (2989),
3G issues with connman (2415)
[FRI2]No WiFi section available in connman (3202)

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
[multilib]do_rootfs failed for lib32-connman-gnome with ipk (2590)
sstate-cache-management.sh prints some error message when running (3116)

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
kernel trace type not available in the lttng project (3023)

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

one qemux86 sato build on a Core i7 machine costs 84 minutes with the packa=
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

5(2878, 3186, 3159)

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

35

32(bug 2878,3091)

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

1(2878)

2(hardware issues to be solved)

FRI2 Sato-sdk

86

0

67

19(2646,2867)

0

HuronRiver Sato-sdk

68

0

67

1(2878)

0

Sugarbay sato-sdk

68

0

67

1(2878)

0

Jasperforest lsb-sdk

34

0

26

8(2878,3098)

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

59

5 (2918, 3116,3178)

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

30

23(3201, 3203, 3100)

0

Build Appliance

14

0

14

0

0

Total

1109

0

999

108

2


Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2878 pkgconfig is missing from sato-sdk image - installing and then try=
ing to removing it leads to rpm crashes/assertions

Bug 3091 X does not start on E-Menlow bsp

Bug 2037 [fri2] system cannot enter S3 standby mode
Bug 2399 gdk-pixbuf: hundreds of warnings on boot
Bug 2415 connman doesn't provide a 3g configuration utility
Bug 2989 [FRI2] dmesg PowerButton error
Bug 2694 [QEMU-X86_64]zypper refresh fail
Bug 2646 Windows switching failure
Bug 3202 No WiFi section available in connman

Core build system

Bug  3116 sstate-cache-management.sh prints some error message when running
Bug 3178 building a power pc image with a layer created using yocto-bsp fai=
ls due to cfg/vfat not available
Bug 2918  lib64-core-image-sato-sdk fails due to do_rootfs issue

ADT

Bug 3100 autoreconf run failed on x86-64 gmae-toolchain
Bug 3201 cannot build Hello World Ansi C project using standalone Toolchain=
 for ARM and X86
Bug 3203 kernel trace type not available in the lttng project

HOB

Bug 3199 Choosing another toolchain host than x86_64 produces an hob-toolch=
ain error
Bug 3007 Improve bblayers-hob.conf






Best regards,
Laurentiu Serban

Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_E16513A01CAAFF40B65178C63CE45EEC19184410IRSMSX102gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are the results for 1.3 M4 RC3 full pass testin=
g. The commit id is: 718eb85806e080d0b165344b272e531ef19421eb.<o:p></o:p></=
p>
<p class=3D"MsoNormal">The following issue are encountered:<o:p></o:p></p>
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
</span></span></span><![endif]>For e-menlow the X server is not starting (3=
091)<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>For FRI2 &#8211; connman does not provide a =
3g configuration utility (2415), system cannot enter S3 standby mode (2037)=
, there is dmesg PowerButton error (2989) and the system cannot enter S3 st=
andby mode (2037), Windows switching failure
 (2646), [FRI2]No WiFi section available in connman (3202)<o:p></o:p></p>
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
</span></span></span><![endif]>For all the boards there is common issue wit=
h the Sudoku-savant application (2878) and with the warnings at boot time (=
2399)<o:p></o:p></p>
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
el BSP creation using yocto-bsp.<o:p></o:p></p>
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
eta-toolchain-support (3100).<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>There is an issue using the standalone toolc=
hain for ARM and x86 (3201)<o:p></o:p></p>
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
<p class=3D"MsoNormal" style=3D"margin-left:.75in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The build for core-image-sato with pre-fetched sourc=
es takes
<b>84 minutes<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"671" style=3D"width:503.6pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:red;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">&nbsp;<span style=3D"font-size:10.0pt;line-height:115%;font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></=
span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Critical bugs, more than 50% test cases are blocked</span><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#9BBB59;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span><=
/p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Only Normal, Minor or Enhancement bugs, or less than 10% tes=
t cases failed</span><span style=3D"font-size:10.0pt;line-height:115%;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span><=
/p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Normal, Major and Critical bugs, and more than 10% test case=
s failed</span><span style=3D"font-size:10.0pt;line-height:115%;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></=
p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"965" style=3D"width:724.0pt;margin-left:-30.6pt;border-coll=
apse:collapse">
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
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border-top:none;border=
-left:solid black 1.0pt;border-bottom:none;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:24.75pt">
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
<td width=3D"189" nowrap=3D"" rowspan=3D"10" style=3D"width:141.5pt;border:=
solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-left:.05in;text-ali=
gn:center;line-height:115%">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">BSP</span></b><b><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black"><o:p></o:p></span></b></p>
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
<tr style=3D"height:17.9pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Mpc8315e-rdb<span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:17.9pt=
">
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
;;color:black">X does not start on E-Menlow bsp (3091)</span><span style=3D=
"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:black"><o:p></o:p></span></p>
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
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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
;;color:black">Live boot from USB fails (2399),
</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">standby issue (2037),
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sudoku-savant build issue (2878),
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">system dmesg log check issue (2989),
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">3G issues with connman (2415)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">[FRI2]No WiFi section available in connman (3202)</span><spa=
n style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
;;color:black">[multilib]do_rootfs failed for lib32-connman-gnome with ipk =
(2590)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">sstate-cache-management.sh prints some error message when ru=
nning (3116)</span><span style=3D"font-size:10.0pt;line-height:115%;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></spa=
n></p>
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
;;color:black">kernel trace type not available in the lttng project (3023)<=
/span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
;;color:black">one qemux86 sato build on a Core i7 machine costs 84 minutes
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
ght:115%"><span style=3D"color:red">5(2878, 3186, 3159)</span><span style=
=3D"font-size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p>=
</o:p></span></p>
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
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">32(bug 2878,3091)</span><span style=3D"=
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
ght:115%"><span style=3D"color:red">1(2878)</span><span style=3D"font-size:=
10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2(hardware issues to be solved)</span><=
span style=3D"font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></spa=
n></p>
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
ght:115%">86<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
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
ght:115%"><span style=3D"color:red">19(2646,2867)</span><span style=3D"font=
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
ght:115%"><span style=3D"color:red">1(2878)</span><span style=3D"font-size:=
10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%"><span style=3D"color:red">1(2878)</span><span style=3D"font-size:=
10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%"><span style=3D"color:red">8(2878,3098)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%"><span style=3D"color:green">59</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">5 (2918, 3116,3178)</span><span style=
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
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">23(3201, 3203, 3100)</span><span style=
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
ght:115%"><span style=3D"color:green">14</span><span style=3D"font-size:10.=
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
ght:115%"><b>Total</b><b><span style=3D"font-size:10.5pt;line-height:115%">=
<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">1109<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p>=
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
ght:115%"><span style=3D"color:green">999</span><span style=3D"font-size:10=
.5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">108</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
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
<td width=3D"125" nowrap=3D"" rowspan=3D"3" style=3D"width:93.45pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System &amp; Core OS</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"3" style=3D"width:72.55pt;border-to=
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
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3091 X does not start on E-Menlow bsp</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2037 [fri2] system ca=
nnot enter S3 standby mode<span style=3D"font-size:10.5pt;line-height:115%"=
><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2399 gdk-pixbuf: hund=
reds of warnings on boot<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2415 connman doesn't =
provide a 3g configuration utility<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2989 [FRI2] dmesg Pow=
erButton error<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2694 [QEMU-X86_64]zyp=
per refresh fail<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2646 Windows switchin=
g failure<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 3202 No WiFi section =
available in connman<span style=3D"font-size:10.5pt;line-height:115%"><o:p>=
</o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug&nbsp; 3116 sstate-cac=
he-management.sh prints some error message when running<span style=3D"font-=
size:10.5pt;line-height:115%"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 3178 building a power=
 pc image with a layer created using yocto-bsp fails due to cfg/vfat not av=
ailable<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2918&nbsp; lib64-core=
-image-sato-sdk fails due to do_rootfs issue<span style=3D"font-size:10.0pt=
;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:=
p></o:p></span></p>
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
;;color:black">Bug 3203 kernel trace type not available in the lttng projec=
t</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Verdana&quot;,&quot;sans-serif&quot;;color:#244061">Laurentiu Serban<o:p></=
o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Verdana&quot;,&quot;sans-serif&quot;;color:#244061"><o:p>&nbsp;</o:p></span=
></b></p>
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

--_000_E16513A01CAAFF40B65178C63CE45EEC19184410IRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC19184410IRSMSX102gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="1.3_RC2_FullPass_TR.xlsx"
Content-Description: 1.3_RC2_FullPass_TR.xlsx
Content-Disposition: attachment; filename="1.3_RC2_FullPass_TR.xlsx";
	size=69660; creation-date="Tue, 02 Oct 2012 09:00:27 GMT";
	modification-date="Tue, 02 Oct 2012 15:46:04 GMT"
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
aBLbtDuNT43E2LRpjXR4joiadmL7UZfHi2hs2hNEHqYtqCaxTbvTeBEBhWvUMDxXI6qJ7d2zMBov
IhC5iDA8R0Q1ie1HwmjgOvjaUMe77Qj+3+kion5M1ppOcU+dDFsx86ntNF5EY8+G0loOKagfUyKq
EdFQgA7JiLyQ3KYtqCFTJKpZEiJ/0xZu09bh+yGhRNS0l2Rq+5u2cJu2Ds8RUdNekonkb9pwnuGa
2jo8QzShie3F1ml85hGcbzmJqCGTUdMp7qlFZH/ZOpETyRyKmTOhS3qSv6f1Ka+aoJBHMI1oAXOx
Nqdg+rlVF/1X8IM31cLZ1u3XGQ4LJZwZRQtYq0el2tsPPHjrjx+3/wMAAP//AwBQSwMEFAAGAAgA
AAAhAExaKnrCAAAAQgEAACQAAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0MjQueG1sLnJlbHOE
j8FqwzAQRO+F/IPYeySnB1OK5VxKINcm/QBVXtui9kpoNyH+++hYm0KPw2PeMM3xMU/qjplDJAsH
XYFC8rELNFj4up72b6BYHHVuioQWFmQ4truX5hMnJ6XEY0isioXYwiiS3o1hP+LsWMeEVEgf8+yk
xDyY5PyPG9C8VlVt8m8HtCunOncW8rk7gLouqSz/7459Hzx+RH+bkeSPCZNyIMF8QZFykIva5QHF
gtZbts21/g4Epm3M6nn7BAAA//8DAFBLAwQUAAYACAAAACEAZPM0IsIAAABCAQAAJAAAAHhsL3dv
cmtzaGVldHMvX3JlbHMvc2hlZXQyMi54bWwucmVsc4SPwWrDMBBE74H8g9h7JCfQUoLlXEIg1zb9
AFVeyyL2Smi3pfn76libQo/DY94w7el7ntQXFo6JLOx1AwrJpz5SsPB+u+xeQLE46t2UCC08kOHU
bTftK05OaonHmFlVC7GFUSQfjWE/4uxYp4xUyZDK7KTGEkx2/u4CmkPTPJvy2wHdwqmuvYVy7feg
bo9cl/93p2GIHs/Jf85I8seEySWSYHlDkXqQq9qVgGJB6zVb5yf9EQlM15rF8+4HAAD//wMAUEsD
BBQABgAIAAAAIQBDlhGjwgAAAEIBAAAjAAAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDkueG1s
LnJlbHOEj8FqwzAQRO+B/IPYeyQnlFKC5VxCINc2/QBVXssi9kpot6X5++pYm0KPw2PeMO3pe57U
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
w75dxi9d93ozm7Xrl3q3aq+a13rvRp6aw27VuR8Pz7P29VCvHvuDdttZOp+Xs91qs4+9w83hezya
p6fNun5o1t929b7zJod6u+ocf/uyeW3ju9vHjRuTE4oO9dMy/pTcPJTX8ezutp/6r0393p58H8mZ
fGmarzLwy+MynjuLtt7Wa/GMVu7LW13V2+0yvk/cYvzTm7pvneFscDz9Xt0/9+f+2yF6rJ9W37bd
7837z/Xm+aVzC51fpYU4rJutk7vXaLeRDYij3erf/uv75rF7WcbZB1FGX+q2+7yRI+No/a3tmt3f
frznGI5Pw/Huazi+zK6yxaTBzHP0p/Ow6lZ3t4fmPXI7Imf8upL9TW7yOBL2vHALtJbBTzLqRj7E
kfu9LP3b3fx29uYWYx0kbp1AkpxLKi9J3aU3uORpdi568KJ+zWaObQB0Z2oBkyOgjLo1PHFeWECU
mKkrr3BnP+AtjORBTeSaOKVzMxM6GZ2gQ0l+vjCVV1A6NbF07iBCJ6MTdCgpDJ1XuNfLa6cmls5d
tIRORifoUFIaOq+gdGpi6UpKJ6MTdCMSQ+cVlE5NLN2C0snoBB1Krg2dV1A6NbF00ikmVE7uWRmd
oEPJB0PnFZROTSydSzNCJ6MTdChJTOhUXkLx1MXiJS4nCV8/PAE4okkglGUaF/bszh18gFHS+vIO
Jz7MXSwdU8Gs0P2IJknNJgcNZ9S5gFEymzBqpDNG1CSmGarEazij+gCjJDdh1GBnjKhJbIUkXsMZ
1QcY3WGMUYanrkfUJLZIEq9xr8drxqz1Q9Bk/aPZaQ27dKGMGvIn3nA9oiaxddJPM3XPqA+so2Q5
2WuNesaImmxh7xmv4euoPsAoiU4YNfAZI2oSYPQazqg+wCi5Thg19hkjahJbf4nXcEb1AUYJd8Ko
2c8YUZPYEpQH88kMVx/LKM/jhLEfnrivRzSpua+qoKHrOPgAI++ZVLOfrOOIJrVdGDScUecCRgn3
y3udavYzRtSktguDD2dUH2CUcCeMmv2METX2PVyVeg1nVB9gdIcxRhmeuh5Rk9ouTL3GJeCxZ4zm
IWgW/Rve9HpxzIazN3/yvp0RaxOczGTujvve4vysUtuMQeO4j8S2GQcfWFWJerLz2gQn3sCImtQ2
Y+o1nFF9gFGinjBqEzBG1KS2dVKv4YzqA4wS9YRRm4AxoiY9Xln9H1yq1Gs4o/oAo0Q9YdQmYIyo
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
SwcAABkAAAAAAAAAAAAAAAAAvB8AAHhsL3dvcmtzaGVldHMvc2hlZXQyNy54bWxQSwECLQAUAAYA
CAAAACEACOTRiEMCAAB+BQAAGQAAAAAAAAAAAAAAAABoIgAAeGwvd29ya3NoZWV0cy9zaGVldDI2
LnhtbFBLAQItABQABgAIAAAAIQAqbJ2T2wQAAF8XAAAYAAAAAAAAAAAAAAAAAOIkAAB4bC93b3Jr
c2hlZXRzL3NoZWV0MS54bWxQSwECLQAUAAYACAAAACEAv3BJrUoHAACYJgAAGQAAAAAAAAAAAAAA
AADzKQAAeGwvd29ya3NoZWV0cy9zaGVldDI0LnhtbFBLAQItABQABgAIAAAAIQBsFZS7UwcAAFg9
AAANAAAAAAAAAAAAAAAAAHQxAAB4bC9zdHlsZXMueG1sUEsBAi0AFAAGAAgAAAAhACryFEVxFQAA
g1MAABQAAAAAAAAAAAAAAAAA8jgAAHhsL3NoYXJlZFN0cmluZ3MueG1sUEsBAi0AFAAGAAgAAAAh
AH9vd+o4BAAAwxQAABgAAAAAAAAAAAAAAAAAlU4AAHhsL3dvcmtzaGVldHMvc2hlZXQzLnhtbFBL
AQItABQABgAIAAAAIQBMWip6wgAAAEIBAAAkAAAAAAAAAAAAAAAAAANTAAB4bC93b3Jrc2hlZXRz
L19yZWxzL3NoZWV0MjQueG1sLnJlbHNQSwECLQAUAAYACAAAACEAZPM0IsIAAABCAQAAJAAAAAAA
AAAAAAAAAAAHVAAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDIyLnhtbC5yZWxzUEsBAi0AFAAG
AAgAAAAhAEOWEaPCAAAAQgEAACMAAAAAAAAAAAAAAAAAC1UAAHhsL3dvcmtzaGVldHMvX3JlbHMv
c2hlZXQ5LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhADShCZLCAAAAQgEAACMAAAAAAAAAAAAAAAAA
DlYAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ4LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhABPE
LBPCAAAAQgEAACMAAAAAAAAAAAAAAAAAEVcAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ1Lnht
bC5yZWxzUEsBAi0AFAAGAAgAAAAhADttMkvBAAAAQgEAACMAAAAAAAAAAAAAAAAAFFgAAHhsL3dv
cmtzaGVldHMvX3JlbHMvc2hlZXQxLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAMPFaG6LBAAAEBgA
ABgAAAAAAAAAAAAAAAAAFlkAAHhsL3dvcmtzaGVldHMvc2hlZXQyLnhtbFBLAQItABQABgAIAAAA
IQALx/E5UwUAADEcAAAZAAAAAAAAAAAAAAAAANddAAB4bC93b3Jrc2hlZXRzL3NoZWV0MjMueG1s
UEsBAi0AFAAGAAgAAAAhAPA+T3jxAQAAVgQAABkAAAAAAAAAAAAAAAAAYWMAAHhsL3dvcmtzaGVl
dHMvc2hlZXQyNS54bWxQSwECLQAUAAYACAAAACEARS3Lst4EAABIGQAAGQAAAAAAAAAAAAAAAACJ
ZQAAeGwvd29ya3NoZWV0cy9zaGVldDIxLnhtbFBLAQItABQABgAIAAAAIQDDciFQRgcAANkvAAAZ
AAAAAAAAAAAAAAAAAJ5qAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTEueG1sUEsBAi0AFAAGAAgAAAAh
AKddzpZZBwAAIDAAABkAAAAAAAAAAAAAAAAAG3IAAHhsL3dvcmtzaGVldHMvc2hlZXQxMC54bWxQ
SwECLQAUAAYACAAAACEA1pYBadEFAAB/HAAAGAAAAAAAAAAAAAAAAACreQAAeGwvd29ya3NoZWV0
cy9zaGVldDkueG1sUEsBAi0AFAAGAAgAAAAhAPcMzhLIBgAAgikAABgAAAAAAAAAAAAAAAAAsn8A
AHhsL3dvcmtzaGVldHMvc2hlZXQ4LnhtbFBLAQItABQABgAIAAAAIQBPzxV+YAcAAJMtAAAYAAAA
AAAAAAAAAAAAALCGAAB4bC93b3Jrc2hlZXRzL3NoZWV0Ny54bWxQSwECLQAUAAYACAAAACEAsylt
U88NAAD3SwAAGAAAAAAAAAAAAAAAAABGjgAAeGwvd29ya3NoZWV0cy9zaGVldDYueG1sUEsBAi0A
FAAGAAgAAAAhAJR1CVzNBwAA0DAAABgAAAAAAAAAAAAAAAAAS5wAAHhsL3dvcmtzaGVldHMvc2hl
ZXQ1LnhtbFBLAQItABQABgAIAAAAIQBQQYgNYAUAAPIcAAAZAAAAAAAAAAAAAAAAAE6kAAB4bC93
b3Jrc2hlZXRzL3NoZWV0MTIueG1sUEsBAi0AFAAGAAgAAAAhACfnUGGeCAAAZC8AABkAAAAAAAAA
AAAAAAAA5akAAHhsL3dvcmtzaGVldHMvc2hlZXQyMi54bWxQSwECLQAUAAYACAAAACEA3HH/HasE
AAA+FwAAGQAAAAAAAAAAAAAAAAC6sgAAeGwvd29ya3NoZWV0cy9zaGVldDE1LnhtbFBLAQItABQA
BgAIAAAAIQDiJ4s4HwUAAMIaAAAZAAAAAAAAAAAAAAAAAJy3AAB4bC93b3Jrc2hlZXRzL3NoZWV0
MTQueG1sUEsBAi0AFAAGAAgAAAAhADOhyui/BQAA5R0AABkAAAAAAAAAAAAAAAAA8rwAAHhsL3dv
cmtzaGVldHMvc2hlZXQxMy54bWxQSwECLQAUAAYACAAAACEAby3RYjMEAADdFQAAGQAAAAAAAAAA
AAAAAADowgAAeGwvd29ya3NoZWV0cy9zaGVldDE2LnhtbFBLAQItABQABgAIAAAAIQDKkT/FfQQA
AMkYAAAZAAAAAAAAAAAAAAAAAFLHAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTcueG1sUEsBAi0AFAAG
AAgAAAAhAEUty7LeBAAASBkAABkAAAAAAAAAAAAAAAAABswAAHhsL3dvcmtzaGVldHMvc2hlZXQx
OS54bWxQSwECLQAUAAYACAAAACEA8hq7tWkEAABdFgAAGQAAAAAAAAAAAAAAAAAb0QAAeGwvd29y
a3NoZWV0cy9zaGVldDIwLnhtbFBLAQItABQABgAIAAAAIQBixaUugQQAALIWAAAZAAAAAAAAAAAA
AAAAALvVAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTgueG1sUEsBAi0AFAAGAAgAAAAhAHmynXs3BQAA
OCIAACcAAAAAAAAAAAAAAAAAc9oAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3My
LmJpblBLAQItABQABgAIAAAAIQB5sp17NwUAADgiAAAnAAAAAAAAAAAAAAAAAO/fAAB4bC9wcmlu
dGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMS5iaW5QSwECLQAUAAYACAAAACEAebKdezcFAAA4
IgAAJwAAAAAAAAAAAAAAAABr5QAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczUu
YmluUEsBAi0AFAAGAAgAAAAhAHmynXs3BQAAOCIAACcAAAAAAAAAAAAAAAAA5+oAAHhsL3ByaW50
ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3M0LmJpblBLAQItABQABgAIAAAAIQB5sp17NwUAADgi
AAAnAAAAAAAAAAAAAAAAAGPwAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMy5i
aW5QSwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAADf9QAAeGwvcHJpbnRl
clNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczYuYmluUEsBAi0AFAAGAAgAAAAhAFZRddCBAQAA4gIA
ABEAAAAAAAAAAAAAAAAAW/sAAGRvY1Byb3BzL2NvcmUueG1sUEsBAi0AFAAGAAgAAAAhAPEhb1eb
AgAApAcAABAAAAAAAAAAAAAAAAAAE/4AAGRvY1Byb3BzL2FwcC54bWxQSwUGAAAAADIAMgAiDgAA
5AEBAAAA

--_004_E16513A01CAAFF40B65178C63CE45EEC19184410IRSMSX102gercor_--
