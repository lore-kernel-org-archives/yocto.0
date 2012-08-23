Return-Path: <laurentiu.serban@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18A1FE002A6
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 12:14:22 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2012 12:13:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,301,1344236400"; 
	d="xml'?bin'?scan'208,217,72,48?xlsx'208,217,72,48,72,48?rels'208,217,72,48,72,48";
	a="213110419"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2012 12:13:34 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.34]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.35]) with mapi id
	14.01.0355.002; Thu, 23 Aug 2012 20:13:30 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 1.3 M3 Full Pass test results
Thread-Index: Ac2BY2ArS5dRmnanT+CdJRPDq9FOEg==
Date: Thu, 23 Aug 2012 19:13:25 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC1917553B@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "Purdie,
	Richard" <richard.purdie@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: 1.3 M3 Full Pass test results
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
X-List-Received-Date: Thu, 23 Aug 2012 19:14:22 -0000
X-Groupsio-MsgNum: 8918
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC1917553BIRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC1917553BIRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC1917553BIRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC1917553BIRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here are the results for the full pas tests on 1.3 M3 RC2. The commit used =
for testing is 8b8748c8f963900b83dc0fdd7757556f917fe4fd.
Some details about the encountered issues below:

BSP - Sudoku-savant project build issue (2878)
ADT - the relocatable sdk issue (2980) causes 13 test cases to be on faile/=
blocked state , also the Clutter C template issue is unsolved (2577)
Core Build System - x32 is still an issue (2888), cleaning sstate issue is =
still not solved (2897), incremental RPM image generation (2969), source ar=
chiving (2619), the kvm issue was reproduced by another colleague (2790) Yo=
cto BSP creation via JSON (2693) or for qemu (2991) fails, multilib issue (=
2918 - this requires a little more investigation from QA),
HOB - all seems ok for RC2
Self-hosted-image  - cannot start on Virtual Box (X issue), it is very slow=
 on qemu and it has a m4 package build (3005) issue on VMWare. If the self-=
hosted-image is used on machine with internet connectivity via proxy there =
will be an initial sanity check failure, but this is not a blocking issue.

A mention for the performance testing: on a Ubbuntu 12.04  i7 machine using=
 8 threads the build time was 83 minutes (with prior fetching).

Test Result Summary

Component

Target

Status

Comments

BSP

Beagleboard

GOOD

Sudoku-savant project issue

Routerstationpro

GOOD

Sudoku-savant project issue

Mpc8315e-rdb

GOOD

Sudoku-savant project issue

eMenlow-sato-sdk

GOOD

Sudoku-savant project issue

Blacksand-sato

GOOD

The sdk image was not available

Crownbay-emgd-sato-sdk

GOOD

Sudoku-savant project issue

FRI2-sato-sdk

BUGGY

X Server issue blocks many test cases
Suspend issue
Dmesg issue

HuronRiver-sato-sdk

GOOD

Sudoku-savant project issue

Jasperforest-lsb-sdk

GOOD

Sudoku-savant project issue

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

Everything runs well except for zypper bug 2694 for sato-sdk image

qemux86-64

GOOD

Everything runs well except for zypper bug 2694 for sato-sdk image

Core build system

=1B$B!!=1B(B

BUGGY

x32 is still an issue (2888), cleaning sstate issue is still not solved (28=
97), incremental RPM image generation (2969), source archiving (2619), the =
kvm issue was reproduced by another colleague (2790), Yocto BSP creation vi=
a JSON (2693) or for qemu (2991) fails, multilib issue (2918)

HOB

=1B$B!!=1B(B

GOOD

Everything runs well except for HOB recipe building from command line and a=
nd cross toolchain build (2695 and3001).

Compliance

GOOD

Sugarbay: Board unavailable; HuronRiver: Pass; Blacksand: Blocked

Stress

GOOD

Both Crashme and Helltest on Jasperforest could pass 24 hours stress testin=
g

Distribution Support

GOOD

Everything runs well for Ubuntu 12.04, Ubuntu 12.10 - nightly, OpenSuse 12.=
1, OpenSuse 12.2 RC2, Fedora 17, CentOs 6.3, Fedora 16

Power and Performance

GOOD

one qemux86 sato build on a Core i7 machine costs 83 minutes with the packa=
ges previously fetched.

ADT

=1B$B!!=1B(B

BUGGY

the relocatable sdk issue (2980) causes 13 test cases to be on faile/blocke=
d state , also the Clutter C template issue is unsolved (2577) Also 2768 bu=
g affects native autoconf



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

37

0

36

1 (2878)

0

eMenlow Sato-SDK

67

0

66

1 (2878)

0

n450 Sato

56

0

42

1(bug 2646)

13

Crownbay-noemgdSato-SDK

67

2

64

1 (2878)

0

FRI2 Sato-SDK

86

1

42

4 (bugs 3004, 2989, 2415)

39  (3004, 2037, 2415)

HuronRiver Sato-SDK

70

0

69

1(bug 2791)

0

Jasperforest lsb-SDK

34

0

33

1 (2878)

0

Qemuarm Sato

32

0

32

0

0

Qemuarm Sato-SDK

37

0

37

0

0

Qemumips Sato

32

0

32

0

0

Qemumips Sato-SDK

37

0

37

0

0

Qemuppc Sato

32

0

32

0

0

Qemuppc Sato-SDK

37

0

37

0

0

Qemux86-64 Sato

32

0

32

0

0

Qemux86-64 Sato-SDK

37

0

37

0

0

Qemux86 Sato

32

0

32

0

0

Qemux86 Sato-SDK

37

0

37

0

0

Core build system

64

0

43

12 (2969, 2619, 2897, 2790, 2888, 2693, 2918, 3005, 2991)

9 (bugs 2888 and 2684, 2996)

HOB

38

0

36

2 (bugs 2695 and 3001)

0

ADT

53

0

23

14 (2980, 2577, 2768)

16(2980)

Compliance

3

0

2

0

1 (n-450 image not available)

Stress

2

0

2

0

0

Distribution Support

8

0

8

0

0

Total

1007

3

886

40

78


Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2878 pkgconfig is missing from sato-sdk image

Bug 2989 [FRI2] dmesg PowerButton error

1.3

Bug 2415 connman doesn't provide a 3g configuration utility

1.3

Bug 2037 [fri2] system cannot enter S3 standby mode

1.2

Bug 3004 [FRI2]X server fails to start

Core build system

Bug 2969 Incremental RPM image generation is not working as expected.

Bug 2619 do_package_write_rpm fails - fakeroot issue

Bug 2897 sstate-cache-management.sh doesn't work with new sstate-cache layo=
ut

Bug 2790 eglibc-initial installs to /usr

Bug 2888 x32 build fails at gcc cross-initial do_compile

Bug 2693 Yocto BSP create via JSON file fails

Bug 2918 lib64-core-image-sato-sdk fails due to do_rootfs issue.

Bug 3005 1.3 M3 build-appliance comes with old poky tree and m4-native comp=
ile fails

Bug 2991  the image created with yocto-bsp tool fails to start - "unsupport=
ed machine type"

ADT

Bug 2980 toolchain issue - segmentation fault while configuring packages

1.3 M4

Bug 2768 iptables 1.4.13 configure fail using "autoreconf -fi"

1.3 M4

Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0

1.3 M4

HOB

Bug 2695 [HOB]toolchain arch in settings is not saved

1.3 M4

Bug 3001 bblayers-hob.conf does not correspond with bblayers.conf





Laurentiu Serban
QA Engineer
Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_E16513A01CAAFF40B65178C63CE45EEC1917553BIRSMSX102gercor_
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are the results for the full pas tests on 1.3 M=
3 RC2. The commit used for testing is
<b>8b8748c8f963900b83dc0fdd7757556f917fe4fd.</b><o:p></o:p></p>
<p class=3D"MsoNormal">Some details about the encountered issues below:<o:p=
></o:p></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>BSP</b> &#8211; Sudoku-savant project build issue=
 (<b>2878</b>)<o:p></o:p></p>
<p class=3D"MsoNormal"><b>ADT</b> &#8211; the relocatable sdk issue (<b>298=
0</b>)<b> </b>
causes 13 test cases to be on faile/blocked state<b> , </b>also the Clutter=
 C template issue is unsolved (<b>2577</b>)<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Core Build System</b> &#8211; x32 is still an iss=
ue (<b>2888</b>), cleaning sstate issue is still not solved (<b>2897</b>), =
incremental RPM image generation (<b>2969</b>), source archiving (<b>2619</=
b>), the kvm issue was reproduced by another
 colleague (<b>2790)</b> Yocto BSP creation via JSON (<b>2693</b>) or for q=
emu (<b>2991</b>) fails, multilib issue (<b>2918</b> &#8211; this requires =
a little more investigation from QA),
<o:p></o:p></p>
<p class=3D"MsoNormal"><b>HOB</b> - all seems ok for RC2<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Self-hosted-image </b>&nbsp;- cannot start on Vir=
tual Box (X issue), it is very slow on qemu and it has a m4 package build (=
<b>3005</b>) issue on VMWare. If the self-hosted-image is used on machine w=
ith internet connectivity via proxy there
 will be an initial sanity check failure, but this is not a blocking issue.=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A mention for the performance testing: on a Ubbuntu =
12.04 &nbsp;i7 machine using 8 threads the build time was 83 minutes (with =
prior fetching).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"965" style=3D"width:724.0pt;margin-left:-5.8pt;border-colla=
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
;;color:black">Sudoku-savant project issue</span><span style=3D"font-size:1=
0.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant project issue</span><span style=3D"font-size:1=
0.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:17.9pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;">Mpc8315e-rdb</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant project issue</span><span style=3D"font-size:1=
0.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant project issue</span><span style=3D"font-size:1=
0.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Blacksand-sato</span><span style=3D"font-size:10.0pt;line-he=
ight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></p>
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
;;color:black">The sdk image was not available</span><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant project issue</span><span style=3D"font-size:1=
0.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">FRI2-sato-sdk</span><span style=3D"font-size:10.0pt;line-hei=
ght:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></p>
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
;;color:black">X Server issue blocks many test cases</span><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Suspend issue<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Dmesg issue</span><span style=3D"font-size:10.0pt;line-heigh=
t:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o=
:p></o:p></span></p>
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
;;color:black">Sudoku-savant project issue</span><span style=3D"font-size:1=
0.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Jasperforest-lsb-sdk</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
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
;;color:black">Sudoku-savant project issue</span><span style=3D"font-size:1=
0.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
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
;;color:black">Everything runs well except for zypper bug 2694 for sato-sdk=
 image</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
;;color:black">Everything runs well except for zypper bug 2694 for sato-sdk=
 image</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
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
<p class=3D"MsoNormal" style=3D"text-align:justify;line-height:115%"><span =
style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">x32 is still=
 an issue (<b>2888</b>), cleaning sstate issue is still not solved (<b>2897=
</b>), incremental RPM image generation (<b>2969</b>), source
 archiving (<b>2619</b>), the kvm issue was reproduced by another colleague=
 (<b>2790</b>), Yocto BSP creation via JSON (<b>2693</b>) or for qemu (<b>2=
991</b>) fails, multilib issue (<b>2918</b>)</span><span style=3D"font-size=
:10.5pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;"><o:p></o:p></span></p>
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
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
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
;;color:black">Everything runs well except for HOB recipe building from com=
mand line and and cross toolchain build (2695 and3001).</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Compliance</span></b><=
b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">Sugarbay: Board unavailable; HuronRiver: Pass; Blacksand: Bl=
ocked</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Stress</span></b><b><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">Both Crashme and Helltest on Jasperforest could pass 24 hour=
s stress testing</span><span style=3D"font-size:10.0pt;line-height:115%;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Distribution Support</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"text-align:justify;line-height:115%"><span =
style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">GOOD</span><=
span style=3D"font-size:10.5pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">one qemux86 sato build on a Core i7 machine costs 83 minutes
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
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
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
<p class=3D"MsoNormal" style=3D"text-align:justify;line-height:115%">the re=
locatable sdk issue (<b>2980</b>)<b>
</b>causes 13 test cases to be on faile/blocked state<b> , </b>also the Clu=
tter C template issue is unsolved (<b>2577</b>) Also 2768 bug affects nativ=
e autoconf<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellpadding=3D"0">
<tbody>
<tr>
<td colspan=3D"6" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Detailed Test Result for each component</span></b><span style=3D"fon=
t-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Target</span></b><span style=3D"font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;">
</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Total TCs</span></b><span style=3D"font-size:12.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Not Run</span></b><span style=3D"font-size:12.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Passed</span></b><span style=3D"font-size:12.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p>=
</span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Failed</span></b><span style=3D"font-size:12.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p>=
</span></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Not testable (Blocked)</span></b><span style=3D"font-size:12.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Beagleboard Sato-SDK</span></b><span style=3D"font-size:12.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">42</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">41</span><span style=3D"font-size:12.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (2878)</span><span style=3D"font-size:12.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Routerstationpro Sato-SDK</span></b><span style=3D"font-size:12.0pt;=
line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color=
:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">35</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">34</span><span style=3D"font-size:12.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (2878)</span><span style=3D"font-size:12.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Mpc8315e-rdb Sato-SDK</span></b><span style=3D"font-size:12.0pt;line=
-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">37</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">36</span><span style=3D"font-size:12.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (2878)</span><span style=3D"font-size:12.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">eMenlow Sato-SDK</span></b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p=
></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">67</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">66</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (2878)</span><span style=3D"font-size:10.5pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">n450 Sato</span></b><b><span style=3D"font-size:10.5pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span=
></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">56</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">42</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1(bug 2646)</span><span style=3D"font-size:10.5pt;line-height=
:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">13</span><span style=3D"font-size:10.5pt;line-height:115%;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></s=
pan></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Crownbay-noemgdSato-SDK</span></b><b><span style=3D"font-size:10.5pt=
;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:=
p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">67</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">2</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">64</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (2878)</span><span style=3D"font-size:10.5pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">FRI2 Sato-SDK</span></b><b><span style=3D"font-size:10.5pt;line-heig=
ht:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></=
span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">86</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">1</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">42</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">4 (bugs 3004, 2989, 2415)</span><span style=3D"font-size:10.5=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;co=
lor:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">39&nbsp; (3004, 2037, 2415)</span><span style=3D"font-size:10=
.5pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">HuronRiver Sato-SDK</span></b><b><span style=3D"font-size:10.5pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></=
o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">70</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">69</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1(bug 2791)</span><span style=3D"font-size:10.5pt;line-height=
:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Jasperforest lsb-SDK</span></b><b><span style=3D"font-size:10.5pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p><=
/o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">34</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">33</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (2878)</span><span style=3D"font-size:10.5pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o=
:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemuarm Sato</span></b><span style=3D"font-size:12.0pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>=
</o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">32</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">32</span><span style=3D"font-size:12.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemuarm Sato-SDK</span></b><span style=3D"font-size:12.0pt;line-heig=
ht:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">37</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">37</span><span style=3D"font-size:12.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemumips Sato</span></b><span style=3D"font-size:12.0pt;line-height:=
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">32</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">32</span><span style=3D"font-size:12.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemumips Sato-SDK</span></b><span style=3D"font-size:12.0pt;line-hei=
ght:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">37</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">37</span><span style=3D"font-size:12.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemuppc Sato</span></b><span style=3D"font-size:12.0pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>=
</o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">32</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">32</span><span style=3D"font-size:12.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemuppc Sato-SDK</span></b><span style=3D"font-size:12.0pt;line-heig=
ht:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><=
o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">37</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:12.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">37</span><span style=3D"font-size:12.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86-64 Sato</span></b><b><span style=3D"font-size:10.5pt;line-he=
ight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p>=
</span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">32</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">32</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86-64 Sato-SDK</span></b><b><span style=3D"font-size:10.5pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></=
o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">37</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">37</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86 Sato</span></b><b><span style=3D"font-size:10.5pt;line-heigh=
t:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></s=
pan></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">32</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">32</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86 Sato-SDK</span></b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p=
></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">37</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">37</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:12.0pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Core build system</span></b><b><span style=3D"font-size:10.5pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:=
p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">64</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">43</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">12 (2969, 2619, 2897, 2790, 2888, 2693, 2918, 3005, 2991)</sp=
an><span style=3D"font-size:10.5pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">9 (bugs 2888 and 2684, 2996)</span><span style=3D"font-size:1=
0.5pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">HOB</span></b><b><span style=3D"font-size:10.5pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></b><=
/p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">38</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">36</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bugs 2695 and 3001)</span><span style=3D"font-size:10.5pt;=
line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color=
:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">ADT</span></b><b><span style=3D"font-size:10.5pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></b><=
/p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">53</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">23</span><span style=3D"font-size:10.5pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p=
></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">14 (2980, 2577, 2768)</span><span style=3D"font-size:10.5pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">16(2980)</span><span style=3D"font-size:10.5pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o=
:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Compliance</span></b><b><span style=3D"font-size:10.5pt;line-height:=
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></spa=
n></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">3</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">2</span><span style=3D"font-size:10.5pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p>=
</span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (n-450 image not available)</span><span style=3D"font-size:=
10.5pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Stress</span></b><b><span style=3D"font-size:10.5pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></=
b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">2</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">2</span><span style=3D"font-size:10.5pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p>=
</span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Distribution Support</span></b><b><span style=3D"font-size:10.5pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p><=
/o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">8</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">8</span><span style=3D"font-size:10.5pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:p>=
</span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.5pt;line-height:115%;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Total</span></b><b><span style=3D"font-size:10.5pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></b=
></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">1007</span><span style=3D"font-size:10.5pt;line-height:115%;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">3</span><span style=3D"font-size:10.5pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:green">886</span><span style=3D"font-size:10.5pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:green"><o:p></o:=
p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">40</span><span style=3D"font-size:10.5pt;line-height:115%;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">78</span><span style=3D"font-size:10.5pt;line-height:115%;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></s=
pan></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ar=
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
<tr style=3D"height:15.75pt">
<td width=3D"125" nowrap=3D"" rowspan=3D"5" style=3D"width:93.45pt;border-t=
op:none;border-left:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;=
border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System &amp; Core OS</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"5" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">Bug 2878 pkgconfig is missing from sato-sdk image</span><spa=
n style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
;">Bug 2989 [FRI2] dmesg PowerButton error</span><span style=3D"font-size:1=
0.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3</span><span style=3D"font-size:10.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Bug 2415 connman doesn't provide a 3g configuration utility</span><span =
style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3</span><span style=3D"font-size:10.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2037 [fri2] system cannot enter S3 standby mode</span><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.2</span><span style=3D"font-size:10.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3004 [FRI2]X server fails to start</span><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"9" style=3D"width:16=
6.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5=
.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system</spa=
n></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;hei=
ght:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2969 Incremental RPM image generation is not working as =
expected.</span><span style=3D"font-size:10.0pt;line-height:115%;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span><=
/p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;hei=
ght:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2619 do_package_write_rpm fails - fakeroot issue</span><=
span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;hei=
ght:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2897 sstate-cache-management.sh doesn't work with new ss=
tate-cache layout</span><span style=3D"font-size:10.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p>=
</span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;hei=
ght:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2790 eglibc-initial installs to /usr</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;hei=
ght:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2888 x32 build fails at gcc cross-initial do_compile</sp=
an><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;hei=
ght:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2693 Yocto BSP create via JSON file fails</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.75pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;hei=
ght:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2918 lib64-core-image-sato-sdk fails due to do_rootfs is=
sue.</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.75pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;hei=
ght:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3005 1.3 M3 build-appliance comes with old poky tree and=
 m4-native compile fails</span><span style=3D"font-size:10.0pt;line-height:=
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.75pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2991&nbsp; the image created with yocto-bsp tool fails t=
o start - &quot;unsupported machine type&quot;</span><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"3" style=3D"width:16=
6.0pt;border-top:none;border-left:solid black 1.0pt;border-bottom:solid win=
dowtext 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
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
;;color:black">Bug 2980 toolchain issue - segmentation fault while configur=
ing packages</span><span style=3D"font-size:10.0pt;line-height:115%;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></spa=
n></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M4</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2768 iptables 1.4.13 configure fail using &quot;autoreco=
nf -fi&quot;</span><span style=3D"font-size:10.0pt;line-height:115%;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></spa=
n></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M4</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
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
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M4</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"2" style=3D"width:16=
6.0pt;border-top:none;border-left:solid black 1.0pt;border-bottom:solid win=
dowtext 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
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
;;color:black">Bug 2695 [HOB]toolchain arch in settings is not saved</span>=
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M4</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid bl=
ack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3001 bblayers-hob.conf does not correspond with bblayers=
.conf</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
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

--_000_E16513A01CAAFF40B65178C63CE45EEC1917553BIRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC1917553BIRSMSX102gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="1.3_M3_RC2_FullPass_TR.xlsx"
Content-Description: 1.3_M3_RC2_FullPass_TR.xlsx
Content-Disposition: attachment; filename="1.3_M3_RC2_FullPass_TR.xlsx";
	size=60435; creation-date="Thu, 16 Aug 2012 21:39:55 GMT";
	modification-date="Thu, 23 Aug 2012 19:12:31 GMT"
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
ZXRzL3NoZWV0MTEueG1sUEsBAi0AFAAGAAgAAAAhAKzSv5UrCAAAdy0AABkAAAAAAAAAAAAAAAAA
q5IAAHhsL3dvcmtzaGVldHMvc2hlZXQyMC54bWxQSwECLQAUAAYACAAAACEAVXRqUkQEAAB1FgAA
GQAAAAAAAAAAAAAAAAANmwAAeGwvd29ya3NoZWV0cy9zaGVldDE0LnhtbFBLAQItABQABgAIAAAA
IQAl8181LAUAAMIaAAAZAAAAAAAAAAAAAAAAAIifAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTMueG1s
UEsBAi0AFAAGAAgAAAAhAP/We4KvBQAA5R0AABkAAAAAAAAAAAAAAAAA66QAAHhsL3dvcmtzaGVl
dHMvc2hlZXQxMi54bWxQSwECLQAUAAYACAAAACEAudAUZV8EAADMFgAAGQAAAAAAAAAAAAAAAADR
qgAAeGwvd29ya3NoZWV0cy9zaGVldDE2LnhtbFBLAQItABQABgAIAAAAIQA4AvAUlgQAAGAZAAAZ
AAAAAAAAAAAAAAAAAGevAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTcueG1sUEsBAi0AFAAGAAgAAAAh
ALY65w9CBAAAdxYAABkAAAAAAAAAAAAAAAAANLQAAHhsL3dvcmtzaGVldHMvc2hlZXQxOC54bWxQ
SwECLQAUAAYACAAAACEAdEw3wZoEAABjGQAAGQAAAAAAAAAAAAAAAACtuAAAeGwvd29ya3NoZWV0
cy9zaGVldDE1LnhtbFBLAQItABQABgAIAAAAIQB5sp17NwUAADgiAAAnAAAAAAAAAAAAAAAAAH69
AAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMi5iaW5QSwECLQAUAAYACAAAACEA
ebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAAD6wgAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJT
ZXR0aW5nczEuYmluUEsBAi0AFAAGAAgAAAAhAHmynXs3BQAAOCIAACcAAAAAAAAAAAAAAAAAdsgA
AHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3M0LmJpblBLAQItABQABgAIAAAAIQB5
sp17NwUAADgiAAAnAAAAAAAAAAAAAAAAAPLNAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNl
dHRpbmdzMy5iaW5QSwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAABu0wAA
eGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczUuYmluUEsBAi0AFAAGAAgAAAAhAGDF
GPeCAQAA4gIAABEAAAAAAAAAAAAAAAAA6tgAAGRvY1Byb3BzL2NvcmUueG1sUEsBAi0AFAAGAAgA
AAAhACJk5lx9AgAADgcAABAAAAAAAAAAAAAAAAAAo9sAAGRvY1Byb3BzL2FwcC54bWxQSwUGAAAA
AC0ALQCnDAAAVt8AAAAA

--_004_E16513A01CAAFF40B65178C63CE45EEC1917553BIRSMSX102gercor_--
