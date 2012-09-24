Return-Path: <laurentiu.serban@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F1E2E0027E
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 11:51:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Sep 2012 11:51:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,477,1344236400"; 
	d="xml'?bin'?scan'208,217,72,48?xlsx'208,217,72,48,72,48?rels'208,217,72,48,72,48";
	a="226093487"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 24 Sep 2012 11:51:35 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 24 Sep 2012 19:51:34 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.34]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.142]) with mapi id
	14.01.0355.002; Mon, 24 Sep 2012 19:51:33 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Full pass test results for 1.3 M4 RC3
Thread-Index: Ac2ahZyh6OoFtbJWR9mcC8wpqWAaGg==
Date: Mon, 24 Sep 2012 18:51:33 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC19181495@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Full pass test results for 1.3 M4 RC3
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
X-List-Received-Date: Mon, 24 Sep 2012 18:51:54 -0000
X-Groupsio-MsgNum: 9612
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC19181495IRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC19181495IRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC19181495IRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC19181495IRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable



Hello,

Here are the results for 1.3 M4 RC3 full pass testing. The commit id is: e5=
c3513ca8abb21eb5e9b8c19d1b9199b14ae07c.
The following issue are encountered:

-          For the BSPs:

o   For e-menlow the X server is not starting (3091)

o   For FRI2 - connman does not provide a 3g configuration utility (2415), =
there is dmesg PowerButton error (2989) and the system cannot enter S3 stan=
dby mode (2037)

o   For qemu x86_64 images - the zypper refresh fails

o   For all the boards there is common issue with the Sudoku-savant applica=
tion (2878) and with the warnings at boot time (2399)

-          For core build system:

o   There are still errors with the do_rootfs for RPM incremental build (30=
47), with multilib builds with ipk (2590), the do_rootfs fails for lib64-co=
re-image-sato-sdk (2918) and there is a small issue with the sstate-cache-m=
anagement.sh

-          For ADT

o   There are issues with the lttng (3100) and meta-toolchain-support.

The build for core-image-sato with pre-fetched sources takes 85 minutes


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

Crownbay-emgd-sato-sdk

GOOD

Sudoku-savant issue (2878)

FRI2-sato

BUGGY

Live boot from USB fails (2399), standby issue (2037), Sudoku-savant build =
issue (2878), system dmesg log check issue (2989), 3G issues with connman (=
2415)

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

[HOB]toolchain arch in settings is not saved (2695)

ADT

=1B$B!!=1B(B

GOOD

autoreconf run failed on x86-64 gmae-toolchain (3100)
Segmentation fault on qemuarm from /usr/lib/libust.so.0 (2577)

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

one qemux86 sato build on a Core i7 machine costs 85 minutes with the packa=
ges previously fetched.

Compliance

GOOD

Tests on Huron River and BlackSand passed


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

1(2878)

0

Routerstationpro Sato-SDK

35

0

34

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

1(2873)

2(hardware issues to be solved)

FRI2 Sato-sdk

86

0

40

45(2646,2867)

1(no e-sata port available)

HuronRiver Sato-sdk

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

58

6 (2918,2590, 3116, 3047)

0

HOB

39

0

38

1(2695)

0

ADT

53

0

51

2(2577, 3100)

0

Total

990

0

880

107

3



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

Core build system

Bug 3047 do_rootfs: ERROR: tried running useradd command 10 times
Bug  3116 sstate-cache-management.sh prints some error message when running
Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome with ipk
Bug 2918  lib64-core-image-sato-sdk fails due to do_rootfs issue

ADT

Bug 3100 autoreconf run failed on x86-64 gmae-toolchain
Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0

HOB

Bug 2695  [HOB]toolchain arch in settings is not saved






Laurentiu Serban
QA Engineer
Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_E16513A01CAAFF40B65178C63CE45EEC19181495IRSMSX102gercor_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	{font-family:"\@MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@PMingLiU";
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;}
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are the results for 1.3 M4 RC3 full pass testin=
g. The commit id is: e5c3513ca8abb21eb5e9b8c19d1b9199b14ae07c.<o:p></o:p></=
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
3g configuration utility (2415), there is dmesg PowerButton error (2989) an=
d the system cannot enter S3 standby mode (2037)<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level2 lfo1">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">o<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]>For qemu x86_64 images &#8211; the zypper re=
fresh fails<o:p></o:p></p>
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
</span></span></span><![endif]>There are still errors with the do_rootfs fo=
r RPM incremental build (3047), with multilib builds with ipk (2590), the d=
o_rootfs fails for lib64-core-image-sato-sdk (2918) and there is a small is=
sue with the sstate-cache-management.sh<o:p></o:p></p>
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
</span></span></span><![endif]>There are issues with the lttng (3100) and m=
eta-toolchain-support.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The build for core-image-sato with pre-fetched sourc=
es takes
<b>85 minutes<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
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
<td width=3D"189" nowrap=3D"" rowspan=3D"9" style=3D"width:141.5pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:24.75pt=
">
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
;;color:black">Live boot from USB fails (2399), standby issue (2037), Sudok=
u-savant build issue (2878), system dmesg log check issue
 (2989), 3G issues with connman (2415)</span><span style=3D"font-size:10.0p=
t;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;col=
or:black"><o:p></o:p></span></p>
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
;;color:black">[HOB]toolchain arch in settings is not saved (2695)</span><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
;;color:black">autoreconf run failed on x86-64 gmae-toolchain (3100)</span>=
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Segmentation fault on qemuarm from /usr/lib/libust.so.0 (257=
7)</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
;;color:black">one qemux86 sato build on a Core i7 machine costs 85 minutes
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
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
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
<td width=3D"46" style=3D"width:34.25pt;background:white;padding:.75pt .75p=
t .75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">41</span><span style=3D"font-size:12.=
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">62</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(2873)</span><span style=3D"font-size:=
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">40</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">45(2646,2867)</span><span style=3D"font=
-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(no e-sata port available)</span><span=
 style=3D"font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></=
p>
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" style=3D"width:34.25pt;background:white;padding:.75pt .75p=
t .75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" style=3D"width:34.25pt;background:white;padding:.75pt .75p=
t .75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" style=3D"width:34.25pt;background:white;padding:.75pt .75p=
t .75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">58</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">6 (2918,2590, 3116, 3047)</span><span s=
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">38</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(2695)</span><span style=3D"font-size:=
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
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">51</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2(2577, 3100)</span><span style=3D"font=
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
ght:115%"><b>Total</b><b><span style=3D"font-size:10.5pt;line-height:115%">=
<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">990<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p><=
/span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"46" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">880</span><span style=3D"font-size:10=
.5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">107</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">3</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
per refresh fail<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:=
p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 3047 do_rootfs: ERROR=
: tried running useradd command 10 times<span style=3D"font-size:10.5pt;lin=
e-height:115%"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug&nbsp; 3116 sstate-cac=
he-management.sh prints some error message when running<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2590 [multilib]do_roo=
tfs failed for lib32-connman-gnome with ipk<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2918&nbsp; lib64-core=
-image-sato-sdk fails due to do_rootfs issue<span style=3D"font-size:10.0pt=
;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:=
p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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
;;color:black">Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.=
so.0</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
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
;;color:black">Bug 2695&nbsp; [HOB]toolchain arch in settings is not saved<=
/span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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

--_000_E16513A01CAAFF40B65178C63CE45EEC19181495IRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC19181495IRSMSX102gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="1.3_M4_RC3_FullPass_TR.xlsx"
Content-Description: 1.3_M4_RC3_FullPass_TR.xlsx
Content-Disposition: attachment; filename="1.3_M4_RC3_FullPass_TR.xlsx";
	size=64557; creation-date="Mon, 17 Sep 2012 20:54:26 GMT";
	modification-date="Mon, 24 Sep 2012 18:50:58 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQCh0ykn+QEAAF0SAAATANsBW0NvbnRlbnRfVHlwZXNdLnhtbCCi1wEooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAADMWE1v2zAMvQ/YfzB0HWJF3tZ1Q5we9nHcCrT7AarFxEJsSRDZLvn3k53GWIdg
iWcH1iWGEYh8IZ8eH7O42dZV8gQetTU5E+mcJWAKq7RZ5+zn/bfZNUuQpFGysgZytgNkN8vXrxb3
OweYhNMGc1YSuU+cY1FCLTG1Dkz4ZmV9LSm8+jV3stjINfBsPr/ihTUEhmbUxGDLxY8AwGsFya30
9F3WIQ/fVvyX9RssAQh5+xDv0xCVJZ/3xxsEOZPOVbqQFPDzJ6P+yj2zq5UuQNnisQ4ZU3QepGqj
1VXaJXjTxOXnA7mKBEj2LhYgF2/NF1jJx4qSr9tAnT1bH7QZkQzO68BKfwdEgfzYgw4fI2mCeBsL
kGhomUVSkWyq1lBQZODtpxhcizbMCa1E2lWAg1O9FOp90BOZOzV/HhexiPSHkYvR/c6e9biOBIcY
TsSX7Pjfgoho1GEeSWuyi7fmyBj3UGG/Of5sJtNwsjV+WGqHh9twJMO/XeNp7/dg7WbkDrUWNK2l
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
yYQh2fZ2IAXYW2BGXO7OTJeusLcgDI8q1fDUxMkS44zgd5WmTliXKOVDksPjw8HyFpgR/K7SZMKQ
/PYWaGZEwozgd5WmThiS394CzYxImBH85sTUCUPy21ugmREJMzm/OTF1wpD89pZ/A5tcS5jJ+YZi
6oQh+e0t0MzYJczkfEMxdYKQcr+91fDEFefI5HxDMZkwJL+9czQzdMmRybm9TSYMyW/vHM2MSJjJ
ub1NnTAkv73ldyFTy9uRybkqTSYMiVIee+dyeGotYSbnqjR1wpD89s7RzDhxmLH+SKG3XVMnDMlv
7xzNvGTOeXBkcm5vkwlD8ts7RzMvmXMeHJmC29tkwpD89s7RzIiEmYJ1cm3qhCH57Z2jmREJMwXr
5NrUCUIq/PZWw+yKY4d7cGQKbm+TCUPy27tw2BuQMFNwe5s6YUh+exdoZpg4R6bg9jaZMCS/vQuH
vaFLmCn4vbepE4ZEKY+9Czk8tZYwU/ANxdQJQ/Lbu0Az48RhpuAbiqkThuS3d+GwN0wcZgpub1Mn
DMlr7zU91Ccnzl9KP6Knnxs7l0/Vb2X7VJ+66FDt6AuuxYxqtPrZO/W+b87qX6m5X5uenqF7+21P
jy5W9BjZYkarc9c0/dsv9ISarPtn1T+fo6at6bFE9TTiKj43bd+WdU9HuK23q7j9slWP4s2HZyfv
/wcAAP//AwBQSwMEFAAGAAgAAAAhAPG2MiBkBwAAky0AABgAAAB4bC93b3Jrc2hlZXRzL3NoZWV0
Ny54bWyMmktv40YQhO8B8h8I3mOZT3kNy4s1hUVyCBAEeZy5Mm0LK4mOyLWTf59pzrQeXVRxL/Jj
ijWfema6KJt3H//dbqK3Zt+t290iTq6u46jZrdrH9e55Ef/5x+efbuKo6+vdY71pd80i/q/p4o/3
P/5w997uv3YvTdNHzmHXLeKXvn+9nc261Uuzrbur9rXZuZGndr+te/fj/nnWve6b+nG4aLuZpdfX
5Wxbr3exd7jdf49H+/S0XjXLdvVt2+x6b7JvNnXv+LuX9WsX3989rt2YvKFo3zwt4k/J7bK8iWf3
d8PUf62b9+7k+0jeyZe2/SoDvzwu4mtn0TWbZiWeUe2+vDVVs9ks4ip1xfhnMHXfOsPZwfH0e3X/
PLz33/bRY/NUf9v0v7fvPzfr55feFTq/SgtxWLUbJ3ev0XYtCxBH2/rf4ev7+rF/WcTZB1FGX5qu
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
VBiOBAAAEBgAABgAAAAAAAAAAAAAAAAASkcAAHhsL3dvcmtzaGVldHMvc2hlZXQyLnhtbFBLAQIt
ABQABgAIAAAAIQBMWip6wgAAAEIBAAAkAAAAAAAAAAAAAAAAAA5MAAB4bC93b3Jrc2hlZXRzL19y
ZWxzL3NoZWV0MjIueG1sLnJlbHNQSwECLQAUAAYACAAAACEAZPM0IsIAAABCAQAAJAAAAAAAAAAA
AAAAAAASTQAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDIwLnhtbC5yZWxzUEsBAi0AFAAGAAgA
AAAhAEOWEaPCAAAAQgEAACMAAAAAAAAAAAAAAAAAFk4AAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hl
ZXQ5LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhADShCZLCAAAAQgEAACMAAAAAAAAAAAAAAAAAGU8A
AHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ4LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhABPELBPC
AAAAQgEAACMAAAAAAAAAAAAAAAAAHFAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ1LnhtbC5y
ZWxzUEsBAi0AFAAGAAgAAAAhADttMkvBAAAAQgEAACMAAAAAAAAAAAAAAAAAH1EAAHhsL3dvcmtz
aGVldHMvX3JlbHMvc2hlZXQxLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAOJ4QhAvBwAAFiUAABkA
AAAAAAAAAAAAAAAAIVIAAHhsL3dvcmtzaGVldHMvc2hlZXQyMi54bWxQSwECLQAUAAYACAAAACEA
sAU7nkICAAB+BQAAGQAAAAAAAAAAAAAAAACHWQAAeGwvd29ya3NoZWV0cy9zaGVldDI0LnhtbFBL
AQItABQABgAIAAAAIQCqp8H4oggAAF4vAAAZAAAAAAAAAAAAAAAAAABcAAB4bC93b3Jrc2hlZXRz
L3NoZWV0MjAueG1sUEsBAi0AFAAGAAgAAAAhAGEu8bcrBQAAIBwAABkAAAAAAAAAAAAAAAAA2WQA
AHhsL3dvcmtzaGVldHMvc2hlZXQxMS54bWxQSwECLQAUAAYACAAAACEAkbJ5H18HAAAgMAAAGQAA
AAAAAAAAAAAAAAA7agAAeGwvd29ya3NoZWV0cy9zaGVldDEwLnhtbFBLAQItABQABgAIAAAAIQBd
7HcSsgUAAIEcAAAYAAAAAAAAAAAAAAAAANFxAAB4bC93b3Jrc2hlZXRzL3NoZWV0OS54bWxQSwEC
LQAUAAYACAAAACEAU+4kTMoGAACAKQAAGAAAAAAAAAAAAAAAAAC5dwAAeGwvd29ya3NoZWV0cy9z
aGVldDgueG1sUEsBAi0AFAAGAAgAAAAhAPG2MiBkBwAAky0AABgAAAAAAAAAAAAAAAAAuX4AAHhs
L3dvcmtzaGVldHMvc2hlZXQ3LnhtbFBLAQItABQABgAIAAAAIQAp7NLkOQsAAKBBAAAYAAAAAAAA
AAAAAAAAAFOGAAB4bC93b3Jrc2hlZXRzL3NoZWV0Ni54bWxQSwECLQAUAAYACAAAACEAhqxFptcH
AADbMAAAGAAAAAAAAAAAAAAAAADCkQAAeGwvd29ya3NoZWV0cy9zaGVldDUueG1sUEsBAi0AFAAG
AAgAAAAhAKZmwOLBBQAA5R0AABkAAAAAAAAAAAAAAAAAz5kAAHhsL3dvcmtzaGVldHMvc2hlZXQx
Mi54bWxQSwECLQAUAAYACAAAACEAxoF3w1cFAAAhHAAAGQAAAAAAAAAAAAAAAADHnwAAeGwvd29y
a3NoZWV0cy9zaGVldDIxLnhtbFBLAQItABQABgAIAAAAIQARkQmJOgQAANsVAAAZAAAAAAAAAAAA
AAAAAFWlAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTQueG1sUEsBAi0AFAAGAAgAAAAhACXwClwpBQAA
wBoAABkAAAAAAAAAAAAAAAAAxqkAAHhsL3dvcmtzaGVldHMvc2hlZXQxMy54bWxQSwECLQAUAAYA
CAAAACEAIp/gp4MEAACyFgAAGQAAAAAAAAAAAAAAAAAmrwAAeGwvd29ya3NoZWV0cy9zaGVldDE2
LnhtbFBLAQItABQABgAIAAAAIQAZ/90X5AQAAEgZAAAZAAAAAAAAAAAAAAAAAOCzAAB4bC93b3Jr
c2hlZXRzL3NoZWV0MTcueG1sUEsBAi0AFAAGAAgAAAAhACj/zxlsBAAAWxYAABkAAAAAAAAAAAAA
AAAA+7gAAHhsL3dvcmtzaGVldHMvc2hlZXQxOC54bWxQSwECLQAUAAYACAAAACEAGf/dF+QEAABI
GQAAGQAAAAAAAAAAAAAAAACevQAAeGwvd29ya3NoZWV0cy9zaGVldDE5LnhtbFBLAQItABQABgAI
AAAAIQB4lMmlgwQAAMkYAAAZAAAAAAAAAAAAAAAAALnCAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTUu
eG1sUEsBAi0AFAAGAAgAAAAhAHmynXs3BQAAOCIAACcAAAAAAAAAAAAAAAAAc8cAAHhsL3ByaW50
ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3MzLmJpblBLAQItABQABgAIAAAAIQB5sp17NwUAADgi
AAAnAAAAAAAAAAAAAAAAAO/MAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMi5i
aW5QSwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAABr0gAAeGwvcHJpbnRl
clNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczYuYmluUEsBAi0AFAAGAAgAAAAhAHmynXs3BQAAOCIA
ACcAAAAAAAAAAAAAAAAA59cAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3M1LmJp
blBLAQItABQABgAIAAAAIQB5sp17NwUAADgiAAAnAAAAAAAAAAAAAAAAAGPdAAB4bC9wcmludGVy
U2V0dGluZ3MvcHJpbnRlclNldHRpbmdzNC5iaW5QSwECLQAUAAYACAAAACEAebKdezcFAAA4IgAA
JwAAAAAAAAAAAAAAAADf4gAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczEuYmlu
UEsBAi0AFAAGAAgAAAAhAG3+T8iHAQAA4gIAABEAAAAAAAAAAAAAAAAAW+gAAGRvY1Byb3BzL2Nv
cmUueG1sUEsBAi0AFAAGAAgAAAAhAJWJ/Tp7AgAAEgcAABAAAAAAAAAAAAAAAAAAGesAAGRvY1By
b3BzL2FwcC54bWxQSwUGAAAAAC8ALwBNDQAAyu4AAAAA

--_004_E16513A01CAAFF40B65178C63CE45EEC19181495IRSMSX102gercor_--
