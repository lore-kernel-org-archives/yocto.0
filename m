Return-Path: <laurentiu.serban@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D3FFE0027E
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 13:13:05 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jul 2012 13:13:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="175694111"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jul 2012 13:13:01 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 10 Jul 2012 21:13:01 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.176]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.185]) with mapi id
	14.01.0355.002; Tue, 10 Jul 2012 21:13:00 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: 1.2.1 full pass results
Thread-Index: Ac1eOisMkr4ig+bsSoCD9lzeXba5ywAAJNIQACdjeYA=
Date: Tue, 10 Jul 2012 20:12:59 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC191539D4@IRSMSX102.ger.corp.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC191533BF@IRSMSX102.ger.corp.intel.com>
	<E16513A01CAAFF40B65178C63CE45EEC191533F2@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <E16513A01CAAFF40B65178C63CE45EEC191533F2@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: 1.2.1 full pass results
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
X-List-Received-Date: Tue, 10 Jul 2012 20:13:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC191539D4IRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC191539D4IRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
The page below was created
https://wiki.yoctoproject.org/wiki/Yocto_1.2.1_Test_Report

Br,
Laurentiu

From: Serban, Laurentiu
Sent: Tuesday, July 10, 2012 4:28 AM
To: yocto@yoctoproject.org
Subject: RE: 1.2.1 full pass results


Hello,

I corrected a mistake below and also added the xls with the test cases resu=
lts.
The test cases used are from 1.3 M1 test plan.

Best regards,
Laurentiu

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Serban, Laurentiu
Sent: Tuesday, July 10, 2012 4:20 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] 1.2.1 full pass results

Hello,

This is the full pass report for 1.2.1. Most of the issues were found in Co=
re Build System (7) and a two bugs for e-menlow and n450. The build perform=
ance of the system on a Core i7 for core-image-sato is 112 minutes. FRI2 co=
uld not be tested - no sato image was built.
There are 17 bugs related to 1.2.1 in bugzilla without resolution.
The commit is 73cdebf60df225ee10f2eb215935be3b61e1b831

More details below:
 =1B$B!!=1B(B

Critical bugs, more than 50% test cases are blocked

=1B$B!!=1B(B

Only Normal, Minor or Enhancement bugs, or less than 10% test cases failed

=1B$B!!=1B(B

Normal, Major and Critical bugs, and more than 10% test cases failed


Test Summary
Test Result Summary

Component

Target

Status

Comments

BSP

eMenlow

GOOD

1 bugs (2634) - 2 test cases failed

Blacksand

GOOD

1 bug (2646) - 1 test case failed

Crownbay-emgd

GOOD

connman-gnome do_configure fail on autobuilder for several BSPs

Sugarbay

GOOD

connman-gnome do_configure fail on autobuilder for several BSPs

Fish River Island

BLOCK

Autobuilder failed to deliver a sato image

HuronRiver-sato-sdk

GOOD

connman-gnome do_configure fail on autobuilder for several BSPs

Jasperforest-lsb

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

Everything runs well

QEMU

qemux86

GOOD

Everything runs well

qemux86-64

GOOD

1 zypper bug/3 test cases failed

qemuarm

GOOD

Everything runs well

qemuppc

GOOD

Everything runs well

qemumips

GOOD

Everything runs well

ADT

=1B$B!!=1B(B

GOOD

Everything runs well

Core Build System

=1B$B!!=1B(B

BUGGY

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2590
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2572
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2571
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2559
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2517
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2519

HOB



BUGGY

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2695 (2 test cases fail=
)
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2698

Distribution Support



GOOD

Everything runs well

Stress Testing



GOOD

Everything runs well

Compliance



GOOD

Everything runs well

Power and Performance



GOOD

Core-image-sato built in 112 minutes


Detailed Test Result for each component

Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

eMenlow Sato-SDK

66

0

65

1 (bug 2700)

0

n450 Sato-SDK

64

1

62

1(bug 2464)

0

FRI2

86

0

0

0

86 (2572)

Crownbay-Sato-SDK

66

0

66

0

0

Sugarbay Sato-SDK

70

0

70

0

0

HuronRiver Sato-SDK

61

0

61

0

0

Jasperforest lsb-SDK

32

0

32

0

0

Beagleboard Sato-SDK

40

0

40

0

0

Routerstationpro Sato-SDK

33

0

33

0

0

Mpc8315e-rdb Sato-SDK

36

0

36

0

0

Qemux86-64 Sato

37

0

34

3

0

Qemux86-64 Sato-SDK

37

0

34

3

0

Qemux86 Sato

37

0

37

0

0

Qemux86 Sato-SDK

37

0

37

0

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

ADT

49

0

49

0

0

Distribution Support

3

0

3

0

0

Stress Testing

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

Core Build System

58

0

50

7(2590, 2572, 2571, 2589, 2559, 2617, 2619)

1

Power and Performance

5

0

5

0

0

Total

1028

1

925

15

87


Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2700 cannot reconnect to x11vnc

Bug 2646 Windows switching failure

Bug 2527 grub-efi-native fails due to help2man script

Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome with ipk

Bug 2572 [multilib] failed dependency for util-linux with multilib build

Bug 2571 [multilib] failed dependency for util-linux with multilib build

Bug 2589  [yocto-kernel] fail to build core-image-sato when add patch into =
the kernel

Bug 2559 [yocto-bsp]X can't start in sato image built by yocto-bsp tool

Bug 2617 Incremental RPM image generation doesn't work with 1.3 M1 RC1

Bug 2519 mklibs: Does not work with compiler from sstate cache

HOB

New! Bug 2695 [HOB]Settings are not saved

New! Bug 2698 [Hob] pk-gtk-module fails to load on fedora 17

Core Build System

Bug 2474 eglibc do_package_write_deb fails



New! Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome with ipk



Bug 2572 [multilib] failed dependency for util-linux with multilib build



Bug 2571 [multilib] failed dependency for util-linux with multilib build



Bug 2589  [yocto-kernel] fail to build core-image-sato when add patch into =
the kernel



Bug 2559 [yocto-bsp]X can't start in sato image built by yocto-bsp tool



New! Bug 2617 Incremental RPM image generation doesn't work with 1.3 M1 RC1



Bug 2519 mklibs: Does not work with compiler from sstate cache





Best regards,
Laurentiu Serban
QA Engineer
Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_E16513A01CAAFF40B65178C63CE45EEC191539D4IRSMSX102gercor_
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
	{font-family:Tahoma;
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle21
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hello,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal">The page below was created<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_=
1.2.1_Test_Report">https://wiki.yoctoproject.org/wiki/Yocto_1.2.1_Test_Repo=
rt</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Br,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Laurentiu<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Serban, =
Laurentiu
<br>
<b>Sent:</b> Tuesday, July 10, 2012 4:28 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> RE: 1.2.1 full pass results<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hello,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I corrected a mistake =
below and also added the xls with the test cases results.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">The test cases used ar=
e from 1.3 M1 test plan.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Best regards,<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Laurentiu <o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-b=
ounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Serban, Laurentiu<br>
<b>Sent:</b> Tuesday, July 10, 2012 4:20 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> [yocto] 1.2.1 full pass results<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is the full pass report for 1.2.1. Most of the =
issues were found in Core Build System (7) and a two bugs for e-menlow and =
n450. The build performance of the system on a Core i7 for core-image-sato =
is 112 minutes. FRI2 could not be
 tested &#8211; no sato image was built.<o:p></o:p></p>
<p class=3D"MsoNormal">There are 17 bugs related to 1.2.1 in bugzilla witho=
ut resolution.<o:p></o:p></p>
<p class=3D"MsoNormal">The commit is 73cdebf60df225ee10f2eb215935be3b61e1b8=
31<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">More details below:<o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"671" style=3D"width:503.6pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:red;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">&nbsp;<span lang=3D"ZH-TW" style=3D"font-size:10.0pt;line-height:=
115%;font-family:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><spa=
n style=3D"font-size:10.0pt;line-height:115%;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Critical bugs, more than 50% test cases are blocked<o:p></o:=
p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#9BBB59;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span lang=3D"ZH-TW" style=3D"font-size:10.0pt;line-height:115%;f=
ont-family:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span styl=
e=3D"font-size:10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p=
></o:p></span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Only Normal, Minor or Enhancement bugs, or less than 10% tes=
t cases failed<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span lang=3D"ZH-TW" style=3D"font-size:10.0pt;line-height:115%;f=
ont-family:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span styl=
e=3D"font-size:10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p=
></o:p></span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Normal, Major and Critical bugs, and more than 10% test case=
s failed<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Test Summary<o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"932" style=3D"width:699.3pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"932" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"widt=
h:699.3pt;border:solid black 1.5pt;border-bottom:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b>Test Result Summary<o:p></o:p></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"132" nowrap=3D"" valign=3D"bottom" style=3D"width:99.0pt;borde=
r-top:none;border-left:solid black 1.5pt;border-bottom:solid black 1.0pt;bo=
rder-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b>Component<o:p></o:p></b></p>
</td>
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b>Target<o:p></o:p></b></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b>Status<o:p></o:p></b></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b>Comments<o:p></o:p></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"132" nowrap=3D"" rowspan=3D"10" style=3D"width:99.0pt;border-t=
op:none;border-left:solid black 1.5pt;border-bottom:solid black 1.0pt;borde=
r-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b>BSP<o:p></o:p></b></p>
</td>
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">eMenlow<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">1 bugs (2634) &#8211; 2 test cases failed<o:p></o:p>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Blacksand<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">1 bug (2646) &#8211; 1 test case failed<o:p></o:p></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Crownbay-emgd<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">connman-gnome do_configure fail on autobuilder for s=
everal BSPs<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Sugarbay<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">connman-gnome do_configure fail on autobuilder for s=
everal BSPs<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Fish River Island<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">BLOCK<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Autobuilder failed to deliver a sato image<o:p></o:p=
></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">HuronRiver-sato-sdk<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">connman-gnome do_configure fail on autobuilder for s=
everal BSPs<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Jasperforest-lsb<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Beagleboard<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Routerstationpro<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Mpc8315e-rdb<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"132" nowrap=3D"" rowspan=3D"5" style=3D"width:99.0pt;border-to=
p:none;border-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border=
-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b>QEMU<o:p></o:p></b></p>
</td>
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">qemux86<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">qemux86-64<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">1 zypper bug/3 test=
 cases failed</span><o:p></o:p></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">qemuarm<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">qemuppc<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">qemumips<o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"132" nowrap=3D"" style=3D"width:99.0pt;border-top:none;border-=
left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal"><b>ADT<o:p></o:p></b></p>
</td>
<td width=3D"216" nowrap=3D"" style=3D"width:162.3pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-TW" style=3D"font-family:&quot;MS G=
othic&quot;">=1B$B!!=1B(B</span><o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:74.85pt">
<td width=3D"132" nowrap=3D"" style=3D"width:99.0pt;border-top:none;border-=
left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:74.85pt">
<p class=3D"MsoNormal"><b>Core Build System<o:p></o:p></b></p>
</td>
<td width=3D"216" nowrap=3D"" style=3D"width:162.3pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:74.85pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-TW" style=3D"font-family:&quot;MS G=
othic&quot;">=1B$B!!=1B(B</span><o:p></o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:74.85pt=
">
<p class=3D"MsoNormal">BUGGY<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:74.85pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D2590">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2590</=
a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D2572">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2572</=
a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D2571">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2571</=
a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D2559">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2559</=
a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D2517">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2517</=
a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D2519">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2519</=
a><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:19.5pt">
<td width=3D"132" nowrap=3D"" style=3D"width:99.0pt;border-top:none;border-=
left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal"><b>HOB<o:p></o:p></b></p>
</td>
<td width=3D"216" nowrap=3D"" style=3D"width:162.3pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:19.5pt"=
>
<p class=3D"MsoNormal">BUGGY<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D2695">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2695</=
a> (2 test cases fail)<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D2698">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2698</=
a><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:19.5pt">
<td width=3D"132" nowrap=3D"" style=3D"width:99.0pt;border-top:none;border-=
left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal"><b>Distribution Support<o:p></o:p></b></p>
</td>
<td width=3D"216" nowrap=3D"" style=3D"width:162.3pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:19.5pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:19.5pt">
<td width=3D"132" nowrap=3D"" style=3D"width:99.0pt;border-top:none;border-=
left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal"><b>Stress Testing<o:p></o:p></b></p>
</td>
<td width=3D"216" nowrap=3D"" style=3D"width:162.3pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:19.5pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:19.5pt">
<td width=3D"132" nowrap=3D"" style=3D"width:99.0pt;border-top:none;border-=
left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal"><b>Compliance<o:p></o:p></b></p>
</td>
<td width=3D"216" nowrap=3D"" style=3D"width:162.3pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:19.5pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:19.5pt">
<td width=3D"132" nowrap=3D"" style=3D"width:99.0pt;border-top:none;border-=
left:solid black 1.5pt;border-bottom:solid black 1.5pt;border-right:solid b=
lack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal"><b>Power and Performance<o:p></o:p></b></p>
</td>
<td width=3D"216" nowrap=3D"" style=3D"width:162.3pt;border-top:none;border=
-left:none;border-bottom:solid black 1.5pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.5pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:19.5pt"=
>
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td width=3D"502" valign=3D"bottom" style=3D"width:376.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.5pt;border-right:solid black 1=
.5pt;padding:0in 5.4pt 0in 5.4pt;height:19.5pt">
<p class=3D"MsoNormal">Core-image-sato built in 112 minutes<o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"652" style=3D"width:489.0pt;border-collapse:=
collapse;margin-left:6.75pt;margin-right:6.75pt">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"652" nowrap=3D"" colspan=3D"6" valign=3D"bottom" style=3D"widt=
h:489.0pt;border:solid black 1.5pt;border-bottom:solid black 1.0pt;padding:=
0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Detailed Test Result for each co=
mponent<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Target<o:p></o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Total TCs</span></b><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Not Run<o:p></o:p></span></b></p=
>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Passed</span></b><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Failed</span></b><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Not testable (Blocked)</span></b=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">eMenlow Sato-SDK<o:p></o:p></spa=
n></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">66<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">65<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">1 (bug 2700)<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">n450 Sato-SDK<o:p></o:p></span><=
/b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">64<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">1<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">62<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">1(bug 2464)<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">FRI2<o:p></o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">86<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">0<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">86 (2572)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Crownbay-Sato-SDK<o:p></o:p></sp=
an></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">66<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">66<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Sugarbay Sato-SDK<o:p></o:p></sp=
an></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">70<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">70<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">HuronRiver Sato-SDK<o:p></o:p></=
span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">61<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">61<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Jasperforest lsb-SDK<o:p></o:p><=
/span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">32<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">32<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Beagleboard Sato-SDK<o:p></o:p><=
/span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">40<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">40<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"167" style=3D"width:125.0pt;border-top:none;border-left:solid =
black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;=
padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Routerstationpro Sato-SDK<o:p></=
o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">33<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">33<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" style=3D"width:125.0pt;border-top:none;border-left:solid =
black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;=
padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Mpc8315e-rdb Sato-SDK<o:p></o:p>=
</span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">36<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">36<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Qemux86-64 Sato<o:p></o:p></span=
></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">37<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:#1F497D">34</span></b><b><span style=3D=
"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:#00B050"><o:p></o:p></span></b></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:#1F497D">3</span></b><b><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:red"><o:p></o:p></span></b></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Qemux86-64 Sato-SDK<o:p></o:p></=
span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">37<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:#1F497D">34</span></b><b><span style=3D=
"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:#00B050"><o:p></o:p></span></b></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:#1F497D">3</span></b><b><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:red"><o:p></o:p></span></b></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Qemux86 Sato<o:p></o:p></span></=
b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">37<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">37<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Qemux86 Sato-SDK<o:p></o:p></spa=
n></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">37<o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" style=3D"width:45.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">37<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Qemuarm Sato<o:p></o:p></span></=
b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">32<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">32<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Qemuarm Sato-SDK<o:p></o:p></spa=
n></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">37<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">37<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Qemumips Sato<o:p></o:p></span><=
/b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">32<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">32<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Qemumips Sato-SDK<o:p></o:p></sp=
an></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">37<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">37<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Qemuppc Sato<o:p></o:p></span></=
b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">32<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">32<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Qemuppc Sato-SDK<o:p></o:p></spa=
n></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">37<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">37<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:16.35pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:16.35pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:16.35pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">49<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:16.35pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:16.35pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">49<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:16.35pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:16.35pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:17.25pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Distribution Support<o:p></o:p><=
/span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">3<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">3<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:17.25pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Stress Testing<o:p></o:p></span>=
</b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">2<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">2<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:17.25pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Compliance<o:p></o:p></span></b>=
</p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">2<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">2<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:17.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Core Build System<o:p></o:p></sp=
an></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">58<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:#00B050">50<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">7(2590, 2572, 2571, 2589, 2559, 2617,=
 2619)<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">1<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Power and Performance<o:p></o:p>=
</span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">5<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">5<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border-top:none;border=
-left:solid black 1.5pt;border-bottom:solid black 1.5pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">Total<o:p></o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.5pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">1028<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.5pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">1<o:p></o:p></span></p>
</td>
<td width=3D"61" nowrap=3D"" style=3D"width:45.85pt;border-top:none;border-=
left:none;border-bottom:solid black 1.5pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">9</span></b><b><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:#1F497D">25</span></b><b><span style=3D"font-size:10.0pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></b></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.5pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:#1F497D">15</span></b><b><span style=3D=
"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:red"><o:p></o:p></span></b></p>
</td>
<td width=3D"158" valign=3D"bottom" style=3D"width:118.15pt;border-top:none=
;border-left:none;border-bottom:solid black 1.5pt;border-right:solid black =
1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:red">87<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><br clear=3D"all">
<o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"1013" style=3D"width:760.0pt;margin-left:-6.15pt;border-col=
lapse:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" valign=3D"bottom" style=3D"widt=
h:166.0pt;border-top:1.5pt;border-left:1.5pt;border-bottom:1.0pt;border-rig=
ht:1.0pt;border-color:black;border-style:solid;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component<o:p></o:p></=
span></b></p>
</td>
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:solid=
 black 1.5pt;border-left:none;border-bottom:solid black 1.0pt;border-right:=
solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Bug Number<o:p></o:p><=
/span></b></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:solid black 1.5pt;border-left:none;border-bottom:solid black 1.0pt;bo=
rder-right:solid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target Milestone<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"125" nowrap=3D"" rowspan=3D"10" style=3D"width:93.45pt;border-=
top:none;border-left:solid black 1.5pt;border-bottom:solid black 1.0pt;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System &amp; Core OS<o=
:p></o:p></span></b></p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"10" style=3D"width:72.55pt;border-t=
op:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid=
 black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System Usage<o:p></o:p=
></span></b></p>
</td>
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2700 cannot reconnect to x11vnc<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2646 Windows switching failure<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2527 grub-efi-native fails due to help2man script<o:p></=
o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome =
with ipk<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2572
</span>[multilib] failed dependency for util-linux with multilib build<span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2571 [multilib] failed dependency for util-linux with mu=
ltilib build<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2589&nbsp; [yocto-kernel] fail to build core-image-sato =
when add patch into the kernel<b><o:p></o:p></b></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2559 [yocto-bsp]X can't start in sato image built by yoc=
to-bsp tool<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2617 Incremental RPM image generation doesn't work with =
1.3 M1 RC1<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2519 mklibs: Does not work with compiler from sstate cac=
he<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"2" style=3D"width:16=
6.0pt;border-top:none;border-left:solid black 1.5pt;border-bottom:solid bla=
ck 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:=
14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">HOB<o:p></o:p></span><=
/b></p>
</td>
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New!</span><span style=3D"font-size:10.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"> Bug 2695 [=
HOB]Settings
 are not saved<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New!</span><span style=3D"font-size:10.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"> Bug 2698 [=
Hob]
 pk-gtk-module fails to load on fedora 17<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td colspan=3D"2" rowspan=3D"8" style=3D"border-top:none;border-left:solid =
black 1.5pt;border-bottom:solid black 1.5pt;border-right:solid black 1.0pt;=
padding:0in 0in 0in 0in;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core Build System<o:p>=
</o:p></span></b></p>
</td>
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Bug 2474 eglibc do_package_write_deb fails<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New!
</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black">Bug 2590 [multilib]do_rootfs=
 failed for lib32-connman-gnome with ipk<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2572
</span>[multilib] failed dependency for util-linux with multilib build<span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2571 [multilib] failed dependency for util-linux with mu=
ltilib build<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2589&nbsp; [yocto-kernel] fail to build core-image-sato =
when add patch into the kernel<b><o:p></o:p></b></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2559 [yocto-bsp]X can't start in sato image built by yoc=
to-bsp tool<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New!</span><span style=3D"font-size:10.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"> Bug 2617 I=
ncremental
 RPM image generation doesn't work with 1.3 M1 RC1<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.5pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2519 mklibs: Does not work with compiler from sstate cac=
he<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.5pt;border-right:so=
lid black 1.5pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_E16513A01CAAFF40B65178C63CE45EEC191539D4IRSMSX102gercor_--
