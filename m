Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA9D6E002AB
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2013 12:01:55 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2013 12:00:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,623,1355126400"; 
	d="scan'208,217";a="259253933"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga001.jf.intel.com with ESMTP; 07 Feb 2013 12:01:54 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 7 Feb 2013 12:01:53 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.45]) with mapi id
	14.01.0355.002; Thu, 7 Feb 2013 12:01:53 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "Palalau, AlexandruX" <alexandrux.palalau@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Fullpass Test Report for Yocto 1.4 M3 RC2 20130131 Build
Thread-Index: Ac4FWk2nwCR0HYESQJCDOk8eUCSvdgAE2AmQ
Date: Thu, 7 Feb 2013 20:01:52 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A598B0D4F@ORSMSX101.amr.corp.intel.com>
References: <A45D4FDC92525B4F8A75E1B55399F328C1B75C@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <A45D4FDC92525B4F8A75E1B55399F328C1B75C@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Fullpass Test Report for Yocto 1.4 M3 RC2 20130131 Build
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
X-List-Received-Date: Thu, 07 Feb 2013 20:01:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A598B0D4FORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A598B0D4FORSMSX101amrcor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Thanks for sending out the report. Would you please let me know which distr=
os have been tested and the build performance number? We should always have=
 those in the report.

Thanks,
Song

From: Palalau, AlexandruX
Sent: Thursday, February 07, 2013 9:42 AM
To: yocto@yoctoproject.org
Cc: Liu, Song
Subject: Fullpass Test Report for Yocto 1.4 M3 RC2 20130131 Build

Hello,

Here is the fullpass test report for Yocto 1.4 M3 RC2 20130131 build. Altho=
ugh the image for p1022ds built out, the system can't boot up, so the testi=
ngs is blocked.
For other qemu and BSPs, there is no new bug found in this testing.
There was a problem with qemux86 starting up, but the bug (3850) was set to=
 invalid. Tomorrow we will provide the results for this platform.

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

GOOD

Everything runs well


P1022DS

BLOCK

The system can not boot up



FRI2

GOOD

Standby and 3G connectivity issues



Jasperforest

BUGGY

Smart command isn=1B$B!G=1B(Bt available


emenlow

GOOD

Everything runs well



Sugarbay

GOOD

Everything runs well

QEMU

qemuarm

GOOD

connman offline mode doesn't work



qemux86-64

GOOD

connman offline mode doesn't work

=1B$B!!=1B(B

qemuppc

GOOD

connman offline mode doesn't work

=1B$B!!=1B(B

qemumips

GOOD

connman offline mode doesn't work

HOB



BUGGY

Toolchain build issue, package size is incorrect, hob recipe build from com=
mand line fails.

Core Build System

BUGGY

missing pam_systemd.so;Bitbake remake/remake-native check; Crosstap script =
check fails, do_rootfs fails for lib64 core-image-sato and core-image-sato-=
sdk

ADT Toolchain

BUGGY

gtk+-2.0 missing from the userbuilt toolchain; autoreconf run failed

Compliance

GOOD

LTP result: https://wiki.pokylinux.org/wiki/LTP_result
POSIX result: https://wiki.pokylinux.org/wiki/Posix_result

Build Appliance



GOOD

Everything runs well

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

45

0

0

P1022DS

42

42

0

0

42 (bug 3837)

Crownbay - noemgd

77

1

74

2(2792)

1

Beagleboard

66

0

66

0

0

Jasperforest

47

16

30

1(3098)

16

FRI2

87

6

78

3(2037,2415,2646)

6

Emenlow

77

0

77

0

0

Sugarbay

77

0

77

0

0

Qemuarm Sato

42

0

41

1 (bug 3804)

0

Qemux86-64

39

0

38

1(bug 3804)

0

Qemuarm Sato-SDK

47

0

46

1 (bug 3804)

0

Qemumips Sato

42

0

41

1 (bug 3804)

0

Qemumips Sato-SDK

47

0

46

1 (bug 3804)

0

Qemuppc Sato

42

0

41

1 (bug 3804)

0

Qemuppc Sato-SDK

47

0

46

1 (bug 3804)

0

Core Build System

81

2

75

4 (bug 3756,2918,3745)

2

ADT Toolchain

389

0

355

34 (bug 3338, 3758, 2938)

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

BuildAppliance

4

0

4

0

0

HOB

38

0

35

3(2618,3001,3199)

0

Total

1449

67

1328

54

67


* You can check the detailed test result in attachment for each target.
** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.


Commit information
--------------------------------
Location: http://autobuilder.yoctoproject.org/pub/nightly/20130131-4/
Tree/Branch: 1.4_M3
Commit: 3ae1a4ba972cfc17ff3f2fda632da8ecc3414885


Issue Summary
-----------------------------------
Component

Bug Number

Target Milestone

System & Core OS

System Usage

3805 PAM support: missing pam_systemd.so
3804 connman offline mode doesn't work on qemu images
3768 smart: --yaml option doesn't work
3656 rpm2cpio: Segmentation fault
3098 smart command doesn=1B$B!G=1B(Bt exist for jasperforest image

1.4 M4
1.4 M4
1.4 M4
1.4
1.4

Others

New! 3837 [p1022ds] System can not boot via nfs

---

Core Build System

Bug 3745 Bitbake remake/remake-native check error
Bug 2918 lib64 sato and sato-sdk do_rootfs fails
Bug 3756 Crosstap script fails

1.4
1.4
1.4 M4

ADT Toolchain

Bug 3338 iptables-1.4.15: autoreconf run failed on gmae-toolchain
Bug 3758 Package gtk+-2.0 missing from the userbuilt toolchain

1.4 M5
1.4 M4

Compliance

Compliance testing is finished.
LTP test result is on https://wiki.pokylinux.org/wiki/LTP_result
POSIX test result is on https://wiki.pokylinux.org/wiki/Posix_result

Stress

Crashme and LTP stress could pass 24 hours testing on beagleboard.





Verified Bugs
-----------------------------------

Br,
--
Alexandru Palalau
QA Contractor @ Yocto Project
Open-source Technology Center Romania
System Software Division



--_000_7E680CB2A76BB8438D08CF13C09FC53A598B0D4FORSMSX101amrcor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle18
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Alex,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks for sending out th=
e report. Would you please let me know which distros have been tested and t=
he build performance number? We should always have those
 in the report.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Song<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext;mso-fareast-language:=
JA">From:</span></b><span style=3D"font-size:10.0pt;font-family:&quot;Tahom=
a&quot;,&quot;sans-serif&quot;;color:windowtext;mso-fareast-language:JA"> P=
alalau,
 AlexandruX <br>
<b>Sent:</b> Thursday, February 07, 2013 9:42 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Cc:</b> Liu, Song<br>
<b>Subject:</b> Fullpass Test Report for Yocto 1.4 M3 RC2 20130131 Build<o:=
p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:windowtext">Hello,<br>
<br>
Here is the fullpass test report for Yocto 1.4 M3 RC2 20130131 build. Altho=
ugh the image for p1022ds built out, the system can't boot up, so the testi=
ngs is blocked.</span><span style=3D"font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:windowtext">For other qemu and BSPs, there is no ne=
w bug found in this testing.</span><span style=3D"font-family:&quot;Calibri=
&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:windowtext">There was a problem with qemux86 starti=
ng up, but the bug (3850) was set to invalid. Tomorrow we will provide the =
results for this platform.<br>
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;"><br>
<b>Test Summary<br>
-------------------------</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0" width=3D"786" style=3D"width:589.2pt">
<tbody>
<tr>
<td colspan=3D"4" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Test Result Summary</span></b><span style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Component</span></b><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;">
<o:p></o:p></span></p>
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
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">BSP</span></b><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:=
p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Beagleboard<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:green;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Everything runs well<o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN" style=3D"font-size:11.0pt">=1B$=
B!!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Routerstationpro<o:p></o:p></span></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Everything runs well<o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN" style=3D"font-size:11.0pt">=1B$=
B!!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Mpc8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Everything runs well<o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">P1022DS<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:red;padding:.75pt .75pt .75pt .75pt"=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">BLOCK<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">The system can not boot up<o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">FRI2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:green;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Standby and 3G connectivity issues<o:p>=
</o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Jasperforest<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:#FECE00;padding:.75pt .75pt .75pt .7=
5pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">BUGGY<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Smart command isn=1B$B!G=1B(Bt availabl=
e<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">emenlow<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:green;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Everything runs well<o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Sugarbay<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:green;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Everything runs well<o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">QEMU</span></b><span style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o=
:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">connman offline mode doesn't work<o:p><=
/o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">connman offline mode doesn't work<o:p><=
/o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN" style=3D"font-size:11.0pt">=1B$=
B!!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">connman offline mode doesn't work<o:p><=
/o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN" style=3D"font-size:11.0pt">=1B$=
B!!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">connman offline mode doesn't work<o:p><=
/o:p></span></p>
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
<td valign=3D"top" style=3D"background:orange;padding:.75pt .75pt .75pt .75=
pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">BUGGY<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Toolchain build issue, package size is =
incorrect, hob recipe build from command line fails.<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">Core Build System</span></b><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"background:orange;padding:.75pt .75pt .75pt .75=
pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">BUGGY<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">missing pam_systemd.so</span><span styl=
e=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot=
;;color:#1F497D">;</span><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">Bitbake
 remake/remake-native check; Crosstap script check fails, do_rootfs fails f=
or lib64 core-image-sato and core-image-sato-sdk</span><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></=
o:p></span></p>
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
<td valign=3D"top" style=3D"background:orange;padding:.75pt .75pt .75pt .75=
pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">BUGGY<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">gtk&#43;-2.0 missing from the userbuilt=
 toolchain; autoreconf run failed
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">Compliance</span></b><span style=3D"=
font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"background:green;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">LTP result:
<a href=3D"https://wiki.pokylinux.org/wiki/LTP_result">https://wiki.pokylin=
ux.org/wiki/LTP_result</a><br>
POSIX result: <a href=3D"https://wiki.pokylinux.org/wiki/Posix_result">http=
s://wiki.pokylinux.org/wiki/Posix_result</a><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">Build Appliance<o:p></o:p></span></b=
></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:green;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Everything runs well<o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">Stress</span></b><span style=3D"font=
-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p><=
/o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Beagleboard<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"background:green;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">GOOD<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Crashme and LTP stress could pass 24 ho=
urs testing
<o:p></o:p></span></p>
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
f&quot;">Beagleboard Sato-SDK</span></b><span style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;">66<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:green">66</span><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Routerstationpro Sato-SDK</span></b><span style=3D"font-size:11.0p=
t;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span=
></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;">43<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:green">43</span><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Mpc8315e-rdb Sato-SDK</span></b><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p=
>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">45<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">45<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">P1022DS</span></b><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">42<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">42<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">42 (bug 3837)</span><span style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Crownbay &#8211; noemgd<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">77<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">1<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">74<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">2(2792)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">1<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Beagleboard<o:p></o:p></span></b></p>
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
uot;;color:#00B050">66<o:p></o:p></span></p>
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
uot;;color:windowtext">47<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">16<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">30<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">1(3098)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">16<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">FRI2<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">87<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">6<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">78<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">3(2037,2415,2646)<o:p></o:p></span></p>
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
f&quot;">Emenlow<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">77<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">77<o:p></o:p></span></p>
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
f&quot;">Sugarbay<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">77<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">77<o:p></o:p></span></p>
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
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Qemuarm Sato</span></b><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">42<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">41<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">1 (bug 3804)</span><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Qemux86-64<o:p></o:p></span></b></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">39<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">38<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">1(bug 3804)<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Qemuarm Sato-SDK</span></b><span style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">47<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">46<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">1 (bug 3804)</span><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Qemumips Sato</span></b><span style=3D"font-size:11.0pt;font-famil=
y:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">42<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">41<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">1 (bug 3804)</span><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Qemumips Sato-SDK</span></b><span style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">47<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">46<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">1 (bug 3804)</span><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Qemuppc Sato</span></b><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">42<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">41<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">1 (bug 3804)</span><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Qemuppc Sato-SDK</span></b><span style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">47<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">46<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">1 (bug 3804)</span><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
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
uot;;color:windowtext">81<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">75<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">4 (bug 3756,2918,3745)<o:p></o:p></span></p>
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
f&quot;">ADT Toolchain</span></b><span style=3D"font-size:11.0pt;font-famil=
y:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">389<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:windowtext">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">355<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">34 (bug 3338, 3758, 2938)</span><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Compliance</span></b><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
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
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Stress</span></b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
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
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">0</span><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">BuildAppliance<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;">4<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">4<o:p></o:p></span></p>
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
f&quot;">HOB<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;">38<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#00B050">35<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">3(2618,3001,3199)<o:p></o:p></span></p>
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
f&quot;">Total</span></b><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#1F497D">1449</span><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#1F497D">67</span><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#1F497D">1328<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">54<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:red">67<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><br>
* You can check the detailed test result in attachment for each target.<br>
** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.<br>
<br>
<br>
<b>Commit information<br>
--------------------------------</b><br>
Location: <a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/201301=
31-4/">http://autobuilder.yoctoproject.org/pub/nightly/20130131-4/</a><br>
Tree/Branch: 1.4_M3<br>
Commit: 3ae1a4ba972cfc17ff3f2fda632da8ecc3414885<br>
<br>
<b><br>
Issue Summary<br>
-----------------------------------</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td colspan=3D"2" style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75=
pt;background-position-x:0%;background-position-y:0%;background-attachment:=
scroll">
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
<td rowspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">System &amp; Core OS</span></b><span=
 style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif=
&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">System Usage</span></b><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">3805 PAM support: missing pam_systemd.s=
o<br>
3804 connman offline mode doesn't work on qemu images<br>
3768 smart: --yaml option doesn't work<br>
3656 rpm2cpio: Segmentation fault<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">3098 smart command doe=
sn=1B$B!G=1B(Bt exist for jasperforest image</span><span style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497=
D"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">1.4 M4<br>
1.4 M4<br>
1.4 M4<br>
1.4<br>
1.4<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Others</span></b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:red">New!
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;">3837 [p1022ds] System can not boot via nfs
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">---<o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Core Build System</span></b><span style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Bug 3745 Bitbake remak=
e/remake-native check error<br>
Bug 2918 lib64 sato and sato-sdk do_rootfs fails<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Bug 3756 Crosstap script =
fails<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">1.4<br>
1.4<br>
1.4 M4<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">ADT Toolchain</span></b><span style=3D"font-size:11.0pt;font-famil=
y:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Bug 3338 iptables-1.4.15: autoreconf ru=
n failed on gmae-toolchain<br>
Bug 3758 Package gtk&#43;-2.0 missing from the userbuilt toolchain<o:p></o:=
p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">1.4 M5<br>
1.4 M4 <o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Compliance</span></b><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Compliance testing is finished.<br>
LTP test result is on <a href=3D"https://wiki.pokylinux.org/wiki/LTP_result=
">https://wiki.pokylinux.org/wiki/LTP_result</a><br>
POSIX test result is on <a href=3D"https://wiki.pokylinux.org/wiki/Posix_re=
sult">https://wiki.pokylinux.org/wiki/Posix_result</a><o:p></o:p></span></p=
>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;">Stress</span></b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Crashme and LTP stress could pass 24 ho=
urs testing on beagleboard.
<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;"><br>
<br>
<br>
<b>Verified Bugs<br>
-----------------------------------<br>
</b><br>
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1F497D">Br,</span><span style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
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
ize:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A598B0D4FORSMSX101amrcor_--
