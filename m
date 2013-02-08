Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 309ECE00502
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 07:14:07 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Feb 2013 07:13:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,629,1355126400"; 
	d="xml'?bin'?scan'72,217,208,48?xlsx'72,217,208,48,72,48?rels'72,217,208,48,72,48";
	a="254327844"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by azsmga001.ch.intel.com with ESMTP; 08 Feb 2013 07:12:54 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.20]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.82]) with mapi id
	14.01.0355.002; Fri, 8 Feb 2013 15:12:53 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "Liu, Song" <song.liu@intel.com>, "Palalau, AlexandruX"
	<alexandrux.palalau@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Fullpass Test Report for Yocto 1.4 M3 RC2 20130131 Build
Thread-Index: Ac4FWk2nwCR0HYESQJCDOk8eUCSvdgAE2AmQACf09zA=
Date: Fri, 8 Feb 2013 15:12:52 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9616772044@IRSMSX104.ger.corp.intel.com>
References: <A45D4FDC92525B4F8A75E1B55399F328C1B75C@IRSMSX104.ger.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A598B0D4F@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A598B0D4F@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
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
X-List-Received-Date: Fri, 08 Feb 2013 15:14:13 -0000
X-Groupsio-MsgNum: 12013
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_1FFB62CE8AEB0D4298B51122D8903E9616772044IRSMSX104gercor_"

--_004_1FFB62CE8AEB0D4298B51122D8903E9616772044IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9616772044IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9616772044IRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi Song,
I have updated the report with the performance data.
As for the distro used to test ADT, we have used  Fedora 17 64 bit, 32bit, =
Ubuntu 12.10 64bit, Ubuntu 12.04 64bit, Opensuse 12.1 64bit, Opensuse 12.2 =
64bit, CentOS 6.3 64bit.

Regards,
--
Alexandru Georgescu

From: Liu, Song
Sent: Thursday, February 07, 2013 22:02
To: Palalau, AlexandruX; yocto@yoctoproject.org
Cc: Georgescu, Alexandru C; Serban, Laurentiu
Subject: RE: Fullpass Test Report for Yocto 1.4 M3 RC2 20130131 Build

Hi Alex,

Thanks for sending out the report. Would you please let me know which distr=
os have been tested and the build performance number? We should always have=
 those in the report.

Thanks,
Song

From: Palalau, AlexandruX
Sent: Thursday, February 07, 2013 9:42 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
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


--_000_1FFB62CE8AEB0D4298B51122D8903E9616772044IRSMSX104gercor_
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
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
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";
	color:black;
	mso-fareast-language:ZH-CN;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Song,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I have updated the report=
 with the performance data.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">As for the distro used to=
 test ADT, we have used &nbsp;Fedora 17 64 bit, 32bit, Ubuntu 12.10 64bit, =
Ubuntu 12.04 64bit, Opensuse 12.1 64bit, Opensuse 12.2 64bit,
 CentOS 6.3 64bit.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<o:p></o:p></span=
></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#7F7F7F;mso-fareast-language:EN-=
US">--<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#7F7F7F;mso-fareast-language:EN-=
US">Alexandru Georgescu<o:p></o:p></span></b></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext;mso-fareast-language:=
JA">From:</span></b><span style=3D"font-size:10.0pt;font-family:&quot;Tahom=
a&quot;,&quot;sans-serif&quot;;color:windowtext;mso-fareast-language:JA"> L=
iu,
 Song <br>
<b>Sent:</b> Thursday, February 07, 2013 22:02<br>
<b>To:</b> Palalau, AlexandruX; yocto@yoctoproject.org<br>
<b>Cc:</b> Georgescu, Alexandru C; Serban, Laurentiu<br>
<b>Subject:</b> RE: Fullpass Test Report for Yocto 1.4 M3 RC2 20130131 Buil=
d<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
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
ize:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p>&nb=
sp;</o:p></span></p>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E9616772044IRSMSX104gercor_--

--_004_1FFB62CE8AEB0D4298B51122D8903E9616772044IRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="1 4_20130131_detail_testreport_fullpass.xlsx"
Content-Description: 1 4_20130131_detail_testreport_fullpass.xlsx
Content-Disposition: attachment;
	filename="1 4_20130131_detail_testreport_fullpass.xlsx"; size=102049;
	creation-date="Fri, 08 Feb 2013 15:02:29 GMT";
	modification-date="Fri, 08 Feb 2013 15:12:32 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQDyNoPN8AEAAHgUAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
mM1u2zAQhO8F+g4Cr4VFk22TtLCcQ3+ObYCkD0BLa4uwRBLkJrXfvis6CdLAsSHEQPZiwZI4M0sB
H6SZXW76rriDmKx3lVDlVBTgat9Yt6rEn5ufkwtRJDSuMZ13UIktJHE5f/9udrMNkApa7VIlWsTw
VcpUt9CbVPoAjq4sfewN0t+4ksHUa7MCqafTM1l7h+BwgoOGmM++w9Lcdlj82NDpXZKFdaL4trtv
sKqECaGztUEKKu9c88xk4pdLW0Pj69uepMsUIpgmtQDYd2WIlhzjNSDSYEnIvZ4RujTO9H6qklbm
YKm1IX2g0V9wGK68PNX9ut/0OKJtoLgyEX+ZnmaXm07+9XG98H5dHhYZuzV5i8reWPeQ+4B/vjnJ
fFAnDjLMl4VH5tBMcnxkkuMTkxyfmeQ4Y5LjnEmOCyY5vjDJoaZcgnAhquKCVMWFqYoLVBUXqiou
WFVcuKq4gFVxIavmQlbNhayaC1k1F7JqLmTVXMiquZBVcyGr5kJW/VZkRepVQObf16Msyxz5yE64
7SCd+MV4J3rMuTURmmukxmZ18gBPtY/kQLOgHZD58Po9/7+OyqKH/KnGuoo+JGrKIox/Cg+11LB6
EkgIIlp4LKb2FTyPjlSzjTd8Vr7B0OM10Ozxlrk3nP8DAAD//wMAUEsDBBQABgAIAAAAIQC1VTAj
9QAAAEwCAAALAAgCX3JlbHMvLnJlbHMgogQCKKAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjJLPTsMwDMbvSLxD5PvqbkgIoaW7TEi7IVQe
wCTuH7WNoyRA9/aEA4JKY9vR9ufPP1ve7uZpVB8cYi9Ow7ooQbEzYnvXanitn1YPoGIiZ2kUxxqO
HGFX3d5sX3iklJti1/uosouLGrqU/CNiNB1PFAvx7HKlkTBRymFo0ZMZqGXclOU9hr8eUC081cFq
CAd7B6o++jz5src0TW94L+Z9YpdOjECeEzvLduVDZgupz9uomkLLSYMV85zTEcn7ImMDnibaXE/0
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
3EmUDutJZ7DRgeX9AvIn7HN2oN+z+lBUjXeie7hYhGHU8vYA2GrZGd6B37LJdEHIfB7O54tZysPp
ibVwn4DlwyPcAkLht21w2DPWyk24k0C+/yDe2qzYbvdVCDe/ZeX59614vFsFw/tc0qml5BFwPbH5
KHQXq0B1DvobVzY/AAAA//8DAFBLAwQUAAYACAAAACEAwEUCStILAAA4VwAAGQAAAHhsL3dvcmtz
aGVldHMvc2hlZXQxNi54bWycnFtz2lgWRt+nav4DxXsbdARCctnuasdJdapmqqam5/JMsGxTAYsB
cptfP+dIBsNe3wZPXtqJenlrSTqwkJPo6tfvy0Xva73ezJvn6352Mez36udZcz9/frzu//MfH34p
+73Ndvp8P100z/V1/0e96f968+c/XX1r1p83T3W97cUJz5vr/tN2u7ocDDazp3o53Vw0q/o5/p+H
Zr2cbuNv14+DzWpdT+/bb1ouBmE4LAbL6fy53024XL9lRvPwMJ/Vd83sy7J+3nZD1vViuo3+m6f5
arObtpy9Zdxyuv78ZfXLrFmu4ohP88V8+6Md2u8tZ5cfH5+b9fTTIh7392w0ne1mt7/B+OV8tm42
zcP2Io4bdKI85mpQDeKkm6v7eTyCdNp76/rhuv9bdvk+yyb9wc1Ve4b+Na+/bQ5+3ds2q7/UD9t3
9WIR6dDvpSvwqWk+J/Lj/XV/GIdu6kU9S+eiN41fvtYd/Xs+iVfxP+1+0q/jPgb7nRz+erfDD+1V
+9u6d18/TL8stu+axb/n99un6355MRn3d5v/3nz7vZ4/Pm3jyhmnqbNmEUfE//aW87Sc4lmcfm+/
fuu+PRsWFyEO2Gx/pLMatT7Vm+2HeZrQ782+bLbN8mVP2cvAblQ83nZUOu5u1Ci/yH5qVP4yKn7d
WZUXxU+NGr2Mil9fRhUXZTpB//fxxe9pjy9+3R3fTzoVL5OyIi9fvbrrttdKK6C7WO06uJtupzdX
6+ZbL74I44XYrKbpJZ1djuOamqWNv6Wt7QWLl2oTt369qbKrwdc05wW5FUg4Rt4RySaGuSNT5cdj
3gtktEcG8Tj2BxPXiziYtPX4YLKJ2cctmarY76M9J++IhLI6Zu7IZPnrnCPXuCCFa9pqXV8PthW5
JQNXInQl47rGlSVc01brOj4+Ibdk4EqErmRc1/R65IJOW63r64XpzisZuBKhKxnXNb56hWvaal0n
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
nFtv29gVRt8L9D8Ieh+LPJQo0rA9GOeCBmiBotPLsyLTsRDJVCXlNr++55CWLO1vbcvNS52cLm8u
UkdaZjLh1a/fV8vB12azXbSP18P8IhsOmsd5e7d4/HQ9/Nc/3/9SDQfb3ezxbrZsH5vr4Y9mO/z1
5s9/uvrWbj5vH5pmN4gTHrfXw4fdbn05Gm3nD81qtr1o181j/H/u281qtou/3XwabdebZnbXfdNq
OQpZVo5Ws8XjsJ9wuXnNjPb+fjFv3rbzL6vmcdcP2TTL2S76bx8W6+1+2mr+mnGr2ebzl/Uv83a1
jiM+LpaL3Y9u6HCwml9++PTYbmYfl/G8v+fj2Xw/u/uNjF8t5pt2297vLuK4US+q51yP6lGcdHN1
t4hnkC77YNPcXw9/yy/f5fl0OLq56q7QvxfNt+3Rrwe7dv3X5n73plkuI12H4SC9BB/b9nNCP9xd
D7M4ddssm3m6GINZ/PK16fE3kd7+tztO/GU8xOhwjONf74/3vnvR/r4Z3DX3sy/L3Zt2+Z/F3e7h
elhdTCfD/fI/2m9/aRafHnZx40zS1Hm7jCPi/w5Wi7Sb4kWcfe++fuu/Pc/KixAHbHc/0kWdDgcf
m+3u/SJNGA7mX7a7dvV0pPxpYD8q+nej0ln3o8bFRf5To4qnUfHr3mp6UaTT+r+txk+j4tenUeVF
9VOT4tG784tf9+d3Uf7U6ZVPk/KyqJ69+tftcIJpB/QvVrcP3s52s5urTfttEN+D8YXYrmfpHZ1f
TuKOmqfF39Jq94LFl2obV7/e1PnV6Gua84TcAhJOkTeK5FPDvFWmLk7HvANkfEBG8TwOJ5P2vZ5M
Wj09mXxqjnGrTF0ejtFdk+5NZcaM7dnomLx4nnPiGjckuKZVc5Dp88l2IrfKiKsiubgC47nGnQWu
adW6Tk4v2q0y4qqIugLjuaZ3tu6BtGpdn1+Y/roqI66KqCswnmt894JrWrWuU3NdlRFXRdQVGM81
fnqDa1q1rpVxVUZcFVFXYDzX9FOM7oG0al1r46qMuCqirsB4rjW6plXjWmXGVRlxVURdgfFc8/jz
IlzYbtnaSi/S955CokuD5HOLIFc4tUN3Qq5JySvzWX4LkArDIBUGyBXmhOUQlso2DCAVhkEqDJAr
nDICVxjqUtmQ5QqpsDK6hWGQ2908tQSEITGVrVn3vef2MAzSKwyQe4VTUEAYOlPZpMUf1M+/6ZSB
KwyQK5yqAsIQm8p2LVdIt4QyIAyQK5zSAsJQnMrGLd7Dnb/CyoAwQK5w6gsIQ3YqW7hcIb3CyoAw
QK5wigwIQ3tqm7lcIRVWBoQB8oQDl65bPv0AyOXOCCARBkaFCXKFuXQB2lPb0gGkwjBIPtaeBqWP
ycONY16Y9/i7w+HSfWVRFM9vqZMbpMAp7JbtS2BTCJCeEVROzwgg9yXgFAYoWG1TCJAKwyAVBsgV
ThXSd2WAONU2hQCpMAxSYYBc4VQhEIY4WZnb7o9XTveNZd4AA+/K/mjnNvneqdvk04m3yVOm4Iyg
XrV5H90GhfSMlIEzAsh9CVKmQBjqVT+fc3+DHRRSYWVAGCBXOGUKhKFetW1lUEiFlQFhgFzhlCkQ
1nrFP1M3t4RBIRVWBoQB8oQLbmW3fPqGC5m9KwRIhIFRYYJcYW5loYkLmW0lQCqsg0AYIFeYU1ho
nEJmUwiQCusgEAbIFeYUFhqnkNkUAqTCOgiEAXKFOYWFxilkNoUAqbAOAuEeOlOWw+Fe/vGp4FZ2
y/ZdaW8bAdIz2gfu6Ec9iTsMcm/Mi1Qh/dzrlq2wTSFAKgyVU2GA3D2TKgTCGqeQ2RQWCqmwMrBn
AHKFU4VAWOMUMpvCQiEVVgaEe+jcJt+PevnHpyJlCs5I6xVy28rue083lp6RDoIzAsh7Ccbcym75
1CXktpUAiTAwKkyQK8ytHGu9Qm5bCZAK6yAQBsgV5laOtV4ht60ESIV1EAgD5ApzK8dar5DbVgKk
wjoIhAFyhbmVY01cyG0rAVJhHQTCALnCnMKxFizkNoUAqbAOAmGAXGFO4VjjFHKbQoBUWAeBMECu
cKqQfg6PNU4htykESIV1EAgD5AqnvoDwPjvPP9SE3KZwrJAKKwPCALnCXLqxticEWzqAVFgHgTBA
nvCES9ctm9IFWzqARBgYFSbIFebSTbQ9IdjSAaTCOgiEAXKFuXQTbU8ItnQAqbAOAmGAXGEu3UTb
E4ItHUAqrINAGCBXmEs30faEYEsHkArrIBAGyBXm0k20PSHY0gGkwjoIhAFyhbl0E21PCLZ0AKmw
DgLhHjpzS3I43Mv33RNOYbdsP/dsCgHSM4LKyW0sDHLvuyepQprCbtkK2xQCpMJQORUGyN0znMKJ
xikUNoUAqbAOgj0DkCdccgq7ZXOFC5tCgEQYGBV+gs5s8sOol++7S25lt2zPyLYSID0jyKDsGRjk
bvKSW9ktW2HbSoBUGDKowgC5e4ZbWWq9QmFbCZAK6yDYMwC5wtzKUusVCttKgFRYB4EwQK4wt7LU
eoWjEf3fZAGkwjoIhAE6OtrJX4iX3Mpu2e5h20qAVPg1rYRB/puOU1hqwcLRfwTwdIUVUmFl4AoD
5F5hTmGpcQqFTSFAKqyDQBggV5hTWGqcwtimECAV1kEgDJAnPOUUdstmD49tCgESYWBUmCBXmEs3
1UAF+3l/C5AK6yAQBsgV5tJNtT1hbEsHkArrIBAGyBXm0k21PWFsSweQCusgEAbIFebSTbU9YWxL
B5AK6yAQBsgV5tJ1/3TJvunsXSFAKgwRs2+GtzDIDceUS9ctW2FbOoBU+DWlg0G+cIqM3kNNtT1h
bG/6AFJhHQRbAiB3S3DpptqeMLalA0iFdRAI99CZW5LD4V6+755yCrtls2cmNoUA6RlB5XSTA+S9
BBWnsFu2wjaFAIkwMPoSEOQKcworjVOY2Js+gFRYB4EwQK4wp7DSOIWJTSFAKqyDQLiHzmzyw+Fe
vu+uuJXdst0ztpUA6RlBBmWTwyD3gzH9o1T4YOyWrbBtJUAqDBlUYYDcPcOtrDRxYWJbCZAK6yDY
MwC5wtzKShMXJraVAKmwDgJhgFxhbmWl9QpH/9Vsf1cIkArrIBAGyBXmVlaauDCxrQRIhXUQCAPk
CnMKK41TKG0KAVJhHQTCAHnCNaewWzafEqVNIUAiDIwKE+QKcwprjVMobQoBUmEdBMIAucKcwvRc
CfOPMkNpUwiQCusgEAbIFebS1RqoUNrSAaTCOgiEAXKFuXS1tieUtnQAqbAOAmGAXGEuXa3tCaUt
HUAqrINAGCBXmEtXa3tCaUsHkArrIBAGyBXm0tXanlDau0KAVFgHgTBArjCXrtb2hNKWDiAV1kEg
DJArzKWrtT1haksHkArrIBAGyBPOM05dv25aN7WtI0qcCVJppHxr7l2eaYKCfcTLLVFgraPIGijf
mqOXZ9qhIE+EIQqsdRRZA+Vbc/nyTGMU5NkwRIG1jiLrnjpz5/p8xJf/fCbPOJD9ut35tpBEwXlB
/uRukEa59695xpXs1621zSRRYA0NBGug/D3EqYwP5NKf96a2lUSBtY6iPQSUb829zDNNWJjaYBIF
1jqKrHvq7M7fD3v5D23yjLPar9s9ZLtKFJwXRBP2EFD+q8FtzTPNXZBn0xAF1jqKXg2gXGvvETXw
1JhQSV+BUmuAwJoo39rpKzyDJsCDajSKYK0QWQPlWzt9hQfRBH1aDVBgDeXUfQ2j/E/07mEx+7+r
GT8/8g4eIhP0kTVAgfWr+gqjXrA+ruextSYv6HNr0ieZuc8Ha4VohwDl75Djeh5ba8yCPrzmVU+v
AYis9YAvXOvjeh5ba8yCPsHmVY+wAYis9YAvWKca0b7eV+ro3zToY2xe9RwbgMhaD6jW/SNJ+0dR
rmefmr/NNp8Wj9vBMj70ND7b9CLO2PQPG+1+HR+H2q3Gl/Fju4vPDd3/7iE+Y7aJj6zMLuJ77r5t
d/vfxIdeprm/N7sv68F6tm42vy/+iE8hjTFpN4v4NNnuIbLXw3W72W1mi1083uXi7nq4+XDXPYx0
dHjk7c3/AAAA//8DAFBLAwQUAAYACAAAACEAJT9U+DQHAAAwHwAAJwAAAHhsL3ByaW50ZXJTZXR0
aW5ncy9wcmludGVyU2V0dGluZ3M0LmJpbuxWfXAU5Rl/E6IERyc4CI5DlBgqVbROEhIJtRO5j727
Pe9ul9s9Popys7l7725xb99lPyBn+DpstS1VCJESqdjQdAbUdNRQSAY/EEfUcVooY0ulkNhCaSkf
ERLUSaTQZ/dyZ0JamGn/8A9vL7fv+3w/z+99nvfiQSwqQyEkIxEtRRipSEMCkoDHwl4Evm694xbH
gXyw1qCvnoIidP1RxN/huLx6bAEah07dQIqjqACVoPmFhagQ3mOA8oFnHT6m////KRhyYa6F8L0d
NpfhudKzkw6EylFFsXTDyQllJTtTV8qH087hhOXVZGQjmJWM/iB0k2VVYOmNcJAjsrnmGLmNKRmb
o/Kbrx+B4WdVUYwQ5+e9ZlbjUVnx/zontKwYul2UkYsJ+jkmFHRQKEhxTp8PhWRRxZq587BOEgnR
XIhGvGpgRHFskOY5Q1GIquNohhnEGpEMXSQyeqCiIqqIiFVFWZ9jCJKop9wqMRTEzrHWcBVyCZoO
FqiyXlEQo4pY1gXLlmWCfNBG8xA0ww4SkODK2gqwkTSMnIYi4QY0lwrytMNmJucgElG5pKDqyGbo
JAmOIiPYYUuDUcwAWpiKxrGDyLpKJBQgjmTU1GV8TDBImVHhzXpHuh1pH3TbLX9fGefij1T0CFJM
JzL+T4o8btDDAWzoqiC5VSGl/Vela3q5Wj7gWkmIEe2aoXKKVwuXU7paSDZBdHLNeBmtqwXLaIyK
ZDUVI9uJnuDEKNb8ggwdJqWGuoMVFKxy4uMY2aqtHpA1I4lVh6FBY1jCTLf6cVQU+JQCeiGeQXCg
EnQZYgJgxBh6ZiiG96XL5qBCLGINOZIQ5TgcFxwspwuKlKM8bJZmYDI0GIxMx1IRIpMkieIh2jx7
m2aXhMhjQ5wssH5TycO6fVV+xkkhm6RjVYa8fFiHnQcLWZcQyux3j1GPaBnrYY52hqsemBG2w1pT
WR32WHQNypViTQa4hkFmVaKYw2qoEewUdAEllEhCqqyYeX9EqAeVHDS8ivFSES9jiQKza03+0LBZ
eVozE7YStebBYlZVmwPN81CfqCcFReMgdRMhnjflkA/gZdbIOn0W/LCGWYevxgwsNAy7RFinPwwX
iZOlTW2vj5IjJGp6CvGuWmB5Sb0tEiGGbLkHmrHbHA4+bK0BPuwOMiE2YPNTOd15hIWLbqgOO1Fl
Rob6zWTsjBPeVhWsJFj5OdiMnT0FgZilWFWh25DX7mWAP9/vc4kSDplnDOgZAF7N/Q1JCUTWuWTu
KA6ylTArxDG4yMY1RWIEwgIvICRxzjU3zzUPUXJCkCM4aiJCyUK9hLN2GSpom8cphFg9ZxVyxXx4
g3CzaXCpwM2rIaA8TpchSbDzOGkQwKRAyibFxGLWGiD6aIGHDUBtTjEWc4mqppslOBJEjEA2wZAJ
qMmhGiI4c6WaWADTwVIAxCgpLUPvxgQw5hJk2UjLUco+soySzRt5pF6GPReroyQwunA4UAJWrd8P
OEys6W6JaBpyUi5byMcjlrNJYlxOwo9MNlUfZ6b6zXlOTkCIDrGe2+B/wYbnz272k49mj38y/ODE
8unB9AutZQOF75e+/dLq8vX00ZL0D+imx1tL7WdXerb+ePPPfjWztuzd8Mn0FLSq3C17fnTvsTXO
fU8vbCzoMZIXm5wFRS3T+uc3H37uzHsvn+ltjzd3L2mNPrhjW6ttK/eb2XY1XXfutDLw0sHJh0KD
k74n9fW9ml70t9dmLL7jurf2sWfXXZDO9yfu6V77yhvb0o3z3U8f++ulKV2dStf681Pk+97bXsOz
v9s91T6t5ZZv3/3Ul9Tr3YGTtQOtLxw5v//46X/1buxZp39X/b665yebPnlm+8CsMZM753z+2fI9
C4vHvB/an/5Onf+P59YvWdx8cPG4P3X0Pnuu5OCqHY+6Hzm4odLzMP185YcLfr2jfdmLE06Vbtj+
j8a71oyv2ptSd4frpxW/8/ube6dObK+Y/ErlDG53k9FZJLSyR0jTLGrqB9NvjL196pboll17S/v/
cmHu4Xs7Bq9/Npwq0p4YPL/g2OAJ96Xb9qRD+9ue/DT8+fFd6bVdq8e2b10+8Q+pcWuUluf+7l3U
98VPb5K0Rzd1DW765xH7xp7LkW0fty2fNenwlHt++NoHPfGyxiXlHZ9s71/b3PSmv3FVdcdDd4ov
95d8thC3LUoe2twc2/tY6sNf1D08MHlDHaFP18aP7apb8+o66pG95ZMu1vaq3/p5aSfl3RL5+MJZ
uuVuJbrw3O5V+96ZXbbgkNK2kpke7x53p9b30KXOqTfO1J4J3bfxVm//jEPdvzzxW7/vzc0rY71/
ZnpWdFWvjJ+KuZ/YueUL5sCnhw8cWPHWxb6G0zuPH23ZeabjoxNt19nGF2X/Bvtu//LFFe3fnGnK
V5pHII9AHoE8AnkE8gjkEcgjkEcgj0AegTwCeQTyCOQR+PoQ+DcAAAD//wMAUEsDBBQABgAIAAAA
IQAlP1T4NAcAADAfAAAnAAAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczEuYmlu
7FZ9cBTlGX8TogRHJzgIjkOUGCpVtE4SEgm1E7mPvbs9726X2z0+inKzuXvvbnFv32U/IGf4Omy1
LVUIkRKp2NB0BtR01FBIBj8QR9RxWihjS6WQ2EJpKR8REtRJpNBn93JnQlqYaf/wD28vt+/7fD/P
732e9+JBLCpDISQjES1FGKlIQwKSgMfCXgS+br3jFseBfLDWoK+egiJ0/VHE3+G4vHpsARqHTt1A
iqOoAJWg+YWFqBDeY4DygWcdPqb///8pGHJhroXwvR02l+G50rOTDoTKUUWxdMPJCWUlO1NXyofT
zuGE5dVkZCOYlYz+IHSTZVVg6Y1wkCOyueYYuY0pGZuj8puvH4HhZ1VRjBDn571mVuNRWfH/Oie0
rBi6XZSRiwn6OSYUdFAoSHFOnw+FZFHFmrnzsE4SCdFciEa8amBEcWyQ5jlDUYiq42iGGcQakQxd
JDJ6oKIiqoiIVUVZn2MIkqin3CoxFMTOsdZwFXIJmg4WqLJeURCjiljWBcuWZYJ80EbzEDTDDhKQ
4MraCrCRNIychiLhBjSXCvK0w2Ym5yASUbmkoOrIZugkCY4iI9hhS4NRzABamIrGsYPIukokFCCO
ZNTUZXxMMEiZUeHNeke6HWkfdNstf18Z5+KPVPQIUkwnMv5Pijxu0MMBbOiqILlVIaX9V6Vrerla
PuBaSYgR7ZqhcopXC5dTulpINkF0cs14Ga2rBctojIpkNRUj24me4MQo1vyCDB0mpYa6gxUUrHLi
4xjZqq0ekDUjiVWHoUFjWMJMt/pxVBT4lAJ6IZ5BcKASdBliAmDEGHpmKIb3pcvmoEIsYg05khDl
OBwXHCynC4qUozxslmZgMjQYjEzHUhEikySJ4iHaPHubZpeEyGNDnCywflPJw7p9VX7GSSGbpGNV
hrx8WIedBwtZlxDK7HePUY9oGethjnaGqx6YEbbDWlNZHfZYdA3KlWJNBriGQWZVopjDaqgR7BR0
ASWUSEKqrJh5f0SoB5UcNLyK8VIRL2OJArNrTf7QsFl5WjMTthK15sFiVlWbA83zUJ+oJwVF4yB1
EyGeN+WQD+Bl1sg6fRb8sIZZh6/GDCw0DLtEWKc/DBeJk6VNba+PkiMkanoK8a5aYHlJvS0SIYZs
uQeasdscDj5srQE+7A4yITZg81M53XmEhYtuqA47UWVGhvrNZOyME95WFawkWPk52IydPQWBmKVY
VaHbkNfuZYA/3+9ziRIOmWcM6BkAXs39DUkJRNa5ZO4oDrKVMCvEMbjIxjVFYgTCAi8gJHHONTfP
NQ9RckKQIzhqIkLJQr2Es3YZKmibxymEWD1nFXLFfHiDcLNpcKnAzashoDxOlyFJsPM4aRDApEDK
JsXEYtYaIPpogYcNQG1OMRZziaqmmyU4EkSMQDbBkAmoyaEaIjhzpZpYANPBUgDEKCktQ+/GBDDm
EmTZSMtRyj6yjJLNG3mkXoY9F6ujJDC6cDhQAlat3w84TKzpboloGnJSLlvIxyOWs0liXE7Cj0w2
VR9npvrNeU5OQIgOsZ7b4H/BhufPbvaTj2aPfzL84MTy6cH0C61lA4Xvl7790ury9fTRkvQP6KbH
W0vtZ1d6tv54889+NbO27N3wyfQUtKrcLXt+dO+xNc59Ty9sLOgxkhebnAVFLdP65zcffu7Mey+f
6W2PN3cvaY0+uGNbq20r95vZdjVdd+60MvDSwcmHQoOTvif19b2aXvS312YsvuO6t/axZ9ddkM73
J+7pXvvKG9vSjfPdTx/766UpXZ1K1/rzU+T73ttew7O/2z3VPq3llm/f/dSX1OvdgZO1A60vHDm/
//jpf/Vu7Fmnf1f9vrrnJ5s+eWb7wKwxkzvnfP7Z8j0Li8e8H9qf/k6d/4/n1i9Z3Hxw8bg/dfQ+
e67k4Kodj7ofObih0vMw/Xzlhwt+vaN92YsTTpVu2P6PxrvWjK/am1J3h+unFb/z+5t7p05sr5j8
SuUMbneT0VkktLJHSNMsauoH02+MvX3qluiWXXtL+/9yYe7hezsGr382nCrSnhg8v+DY4An3pdv2
pEP72578NPz58V3ptV2rx7ZvXT7xD6lxa5SW5/7uXdT3xU9vkrRHN3UNbvrnEfvGnsuRbR+3LZ81
6fCUe3742gc98bLGJeUdn2zvX9vc9Ka/cVV1x0N3ii/3l3y2ELctSh7a3Bzb+1jqw1/UPTwweUMd
oU/Xxo/tqlvz6jrqkb3lky7W9qrf+nlpJ+XdEvn4wlm65W4luvDc7lX73pldtuCQ0raSmR7vHnen
1vfQpc6pN87Ungndt/FWb/+MQ92/PPFbv+/NzStjvX9melZ0Va+Mn4q5n9i55QvmwKeHDxxY8dbF
vobTO48fbdl5puOjE23X2cYXZf8G+27/8sUV7d+cacpXmkcgj0AegTwCeQTyCOQRyCOQRyCPQB6B
PAJ5BPII5BH4+hD4NwAAAP//AwBQSwMEFAAGAAgAAAAhAFDbc7NMAAAA3AAAACcAAAB4bC9wcmlu
dGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMi5iaW5ioBAwsjCw3QGa4fy/gZ2RgZPhFVc+RwoD
IwM/QwQTEwMTkGQG8nwYUhlKgDCVoYhC+0DaGaFmgGgmIJYFMv4DAVQYTgEAAAD//wMAUEsDBBQA
BgAIAAAAIQBlctHeTgEAAIoCAAAUAAAAeGwvdGFibGVzL3RhYmxlMS54bWxsUstOwzAQvCPxD5bv
NEkLBaomFRQVVQIOtHzAUm8bS44deTd9/D1OQ0orcvR4ZnY86/FkXxixRU/a2VQmvVgKtCuntN2k
8ms5u3mQghisAuMspvKAJCfZ9dWY4dugCGpLqcyZy1EU0SrHAqjnSrThZu18ARyOfhNR6REU5Yhc
mKgfx8OoAG2l0CqMlcJCEdyXtWlfCqWpNHD4uAA9rlP5lIxeB49SsGMw9Ol2i9ztQvJYZmOo2M20
YfTinBtlTdipM1VhSaxcZTmV90FxfESDXwapJ8tL4ZFwd0qKxGIK1MkatiznFfoun/uWgfsQ14LR
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
AE4yAAB4bC90aGVtZS90aGVtZTEueG1sUEsBAi0AFAAGAAgAAAAhAL59Dk2dBgAAEiMAABgAAAAA
AAAAAAAAAAAAEzkAAHhsL3dvcmtzaGVldHMvc2hlZXQxLnhtbFBLAQItABQABgAIAAAAIQDb5R76
yQsAAA9MAAAZAAAAAAAAAAAAAAAAAOY/AAB4bC93b3Jrc2hlZXRzL3NoZWV0MjgueG1sUEsBAi0A
FAAGAAgAAAAhADrzLqKjBwAAOzcAABkAAAAAAAAAAAAAAAAA5ksAAHhsL3dvcmtzaGVldHMvc2hl
ZXQyNy54bWxQSwECLQAUAAYACAAAACEAcb/yi2YIAABlOgAAGQAAAAAAAAAAAAAAAADAUwAAeGwv
d29ya3NoZWV0cy9zaGVldDI2LnhtbFBLAQItABQABgAIAAAAIQCWZNncXgYAAO8qAAAZAAAAAAAA
AAAAAAAAAF1cAAB4bC93b3Jrc2hlZXRzL3NoZWV0MjUueG1sUEsBAi0AFAAGAAgAAAAhABFVOVmE
BQAAUiIAABgAAAAAAAAAAAAAAAAA8mIAAHhsL3dvcmtzaGVldHMvc2hlZXQzLnhtbFBLAQItABQA
BgAIAAAAIQAZl1MyGwYAAGEeAAAYAAAAAAAAAAAAAAAAAKxoAAB4bC93b3Jrc2hlZXRzL3NoZWV0
Mi54bWxQSwECLQAUAAYACAAAACEAO20yS8EAAABCAQAAJAAAAAAAAAAAAAAAAAD9bgAAeGwvd29y
a3NoZWV0cy9fcmVscy9zaGVldDEyLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAKI0GhjCAAAAQgEA
ACQAAAAAAAAAAAAAAAAAAHAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQyOS54bWwucmVsc1BL
AQItABQABgAIAAAAIQBrPw/7wwAAAEIBAAAkAAAAAAAAAAAAAAAAAARxAAB4bC93b3Jrc2hlZXRz
L19yZWxzL3NoZWV0MTgueG1sLnJlbHNQSwECLQAUAAYACAAAACEATFoqesIAAABCAQAAJAAAAAAA
AAAAAAAAAAAJcgAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDE3LnhtbC5yZWxzUEsBAi0AFAAG
AAgAAAAhAGTzNCLCAAAAQgEAACQAAAAAAAAAAAAAAAAADXMAAHhsL3dvcmtzaGVldHMvX3JlbHMv
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
aW5nczQuYmluUEsBAi0AFAAGAAgAAAAhACU/VPg0BwAAMB8AACcAAAAAAAAAAAAAAAAAQ0kBAHhs
L3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3MxLmJpblBLAQItABQABgAIAAAAIQBQ23Oz
TAAAANwAAAAnAAAAAAAAAAAAAAAAALxQAQB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRp
bmdzMi5iaW5QSwECLQAUAAYACAAAACEAZXLR3k4BAACKAgAAFAAAAAAAAAAAAAAAAABNUQEAeGwv
dGFibGVzL3RhYmxlMS54bWxQSwECLQAUAAYACAAAACEAJT9U+DQHAAAwHwAAJwAAAAAAAAAAAAAA
AADNUgEAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczUuYmluUEsBAi0AFAAGAAgA
AAAhACU/VPg0BwAAMB8AACcAAAAAAAAAAAAAAAAARloBAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmlu
dGVyU2V0dGluZ3M2LmJpblBLAQItABQABgAIAAAAIQAlP1T4NAcAADAfAAAnAAAAAAAAAAAAAAAA
AL9hAQB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzNy5iaW5QSwECLQAUAAYACAAA
ACEAJT9U+DQHAAAwHwAAJwAAAAAAAAAAAAAAAAA4aQEAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50
ZXJTZXR0aW5nczguYmluUEsBAi0AFAAGAAgAAAAhAP9kuU+KAQAA6gIAABEAAAAAAAAAAAAAAAAA
sXABAGRvY1Byb3BzL2NvcmUueG1sUEsBAi0AFAAGAAgAAAAhAMIUsP6eAgAAGwcAABAAAAAAAAAA
AAAAAAAAcnMBAGRvY1Byb3BzL2FwcC54bWxQSwECLQAUAAYACAAAACEAA/f2I0oHAAAwHwAAJwAA
AAAAAAAAAAAAAABGdwEAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczMuYmluUEsF
BgAAAAA3ADcAtg8AANV+AQAAAA==

--_004_1FFB62CE8AEB0D4298B51122D8903E9616772044IRSMSX104gercor_--
