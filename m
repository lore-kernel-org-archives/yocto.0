Return-Path: <laurentiu.serban@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ABDDE01408
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 11:58:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jun 2012 11:58:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="xml'?ods'72,48?scan'72,48,208,217,72,48";a="168137605"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2012 11:58:41 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 20 Jun 2012 19:58:31 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.176]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.240]) with mapi id
	14.01.0355.002; Wed, 20 Jun 2012 19:58:31 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Fullpass Test Report for Yocto 1.3_M1 20120613 Build on
	meta-intel Platform
Thread-Index: AQHNTsoi7e6X+8I9/kSnKauEfVzNRJcDj7xA
Date: Wed, 20 Jun 2012 18:58:30 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC1914DA7B@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: FW: Fullpass Test Report for Yocto 1.3_M1 20120613 Build on meta-intel Platform
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
X-List-Received-Date: Wed, 20 Jun 2012 18:58:44 -0000
X-Groupsio-MsgNum: 7355
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC1914DA7BIRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC1914DA7BIRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC1914DA7BIRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC1914DA7BIRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable



From: Xu, HongnaX
Sent: Wednesday, June 20, 2012 12:49 PM
To: Xu, HongnaX; Serban, Laurentiu; Georgescu, Alexandru C
Cc: 'Zhao Yi'; Sun, YilongX Y; Ma, NingX; Xu, Jiajun; Wang, Shane; Liu, Son=
g
Subject: Fullpass Test Report for Yocto 1.3_M1 20120613 Build on meta-intel=
 Platform

Hello  Laurentiu
This is the Fullpass test report for Yocto 1.3 M1 20120613 build on meta-in=
tel platform. QA found one critical issue that is grub-efi-native fails due=
 to help2man script which blocked all cases on FRI2, reported as bug 2527. =
For Hob, we found two minor issues, they are Incorrect total image size in =
"View Package" page and can=1B$B!G=1B(Bt delete layer in special situation.=
 For core build system, self-hosted-image are still running, no new issue f=
ound till now, For Distribution Support, Yocto build on OpenSuse 12.1 64 bi=
t and  Ubuntu 12.04 64 bit could pass, but beecrypt-native failed to compil=
e on Fedora17(final) 64bit report as 2631.
Other features perform well and no new issue found except the syslog daemon=
 can't startup on qemux86/x86-64 and meta-intel platforms.
For Build performance, one qemux86 sato build on a Core i7 machine costs 11=
5 minutes.

Test Summary:
---------------------------------------

Test Result Summary

Component

Target

Status

Comments

BSP

eMenlow

BUGGY

X server could not successful start up to the Desktop; syslog is not starte=
d by default in background on bsps

Blacksand

GOOD

syslog is not started by default in background on bsps

Crownbay-emgd

GOOD

syslog is not started by default in background on bsps

Sugarbay

GOOD

syslog is not started by default in background on bsps

FRI2

BLOCK

grub-efi-native fails due to help2man script

HuronRiver

GOOD

syslog is not started by default in background on bsps

Jasperforest-lsb

GOOD

Everything runs well

QEMU

qemux86

GOOD

syslog is not started by default in background on bsps

qemux86-64

GOOD

syslog is not started by default in background on bsps

Distribution Support

=1B$B!!=1B(B

BUGGY

beecrypt-native failed to compile on Fedora17(final) 64bit

Power/Performance

=1B$B!!=1B(B

GOOD

one qemux86 sato build on a Core i7 machine costs 115 minutes

Core build system

=1B$B!!=1B(B

BUGGY

three issues for multilib, do_rootfs failed for lib32-connman-gnome with ip=
k;no provider for lib32/lib64-lsbinitscripts;  failed dependency for util-l=
inux with multilib build;  For yocto-bsp/kernel tools, fail to build core-i=
mage-sato when add patch into the kernel; X can't start in sato image built=
 by yocto-bsp tool

Compliance

=1B$B!!=1B(B

GOOD

No regression issue with LTP and POSIX on sugarbay and n450

Stress

=1B$B!!=1B(B

GOOD

Both Crashme and Helltest on Jasperforest could pass 24 hours stress testin=
g

ADT

=1B$B!!=1B(B

BUGGY

32bit kernel generated oprofile data file can not be read by remote 64bit o=
preport;Segmentation fault on qemuarm from /usr/lib/libust.so.0; glxgears b=
locked all clutter template cases.

HOB

=1B$B!!=1B(B

GOOD

Everything runs well


 =1B$B!!=1B(B

Critical bugs, more than 50% test cases are blocked

=1B$B!!=1B(B

Only Normal, Minor or Enhancement bugs, or less than 10% test cases failed

=1B$B!!=1B(B

Normal, Major and Critical bugs, and more than 10% test cases failed


Detailed Test Result for each component

Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

eMenlow Sato-SDK

67

0

41

6 (bug 2507)

20 (bug 2507)

n450 Sato-SDK

66

0

64

2 (bug 2535)

0

Crownbay-Sato-SDK

67

0

65

2 (bug 2535)

0

Sugarbay Sato-SDK

70

0

68

2 (bug 2535)

0

FRI2 Sato-SDK

86

0

0

0

86 (bug 2527)

HuronRiver Sato-SDK

70

0

68

2 (bug 2535)

0

Jasperforest lsb-SDK

34

0

34

0

0

Qemux86-64 Sato

32

0

30

2 (bug 2535)

0

Qemux86-64 Sato-SDK

37

0

35

2 (bug 2535)

0

Qemux86 Sato

32

0

30

2 (bug 2535)

0

Qemux86 Sato-SDK

37

0

35

2 (bug 2535)

0

Distribution Support

3

0

2

1 (bug 2631)

0

Power & Performance

4

0

4

0

0

Core build system

51

3

36

11 (2590 2572 2571 2589 2559)

1 (bug 2589)

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

ADT

51

0

43

2 (bug 1452  2577)

6 (bug 2543)

HOB

38

0

38

0

0

Total

749

3

597

36

113


* You can check the detailed test result in attachment for each target.
** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.


Commit Information
---------------------------------------
Tree/Branch: poky/master
Commit id: 7f017cab0b3e4d5a4fc356eccd8eb8429b0531d0

Meta branch: master

Commit id: bd00e28dd54b06a1f01f186be168d3af872f96d4

Issue summary
--------------------------------------
Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2535 syslog is not started by default in background on bsps

1.3 M2

Bug 2507 X server could not successful start up to the Desktop

1.3 M2

Other

New! Bug 2527 grub-efi-native fails due to help2man script

=1B$B!!=1B(B

Core build system

Bug 2559 [yocto-bsp]X can't start in sato image built by yocto-bsp tool

1.3 M2

Bug 2571 [multilib] no provider for lib32/lib64-lsbinitscripts

1.3 M2

Bug 2572 [multilib] failed dependency for util-linux with multilib build

1.3 M3

Bug 2585 [wiki]The wiki using yocto-bsp create qemu BSP should sync with ou=
r source code

1.3 M3

Bug 2587 [yocto-bsp]the default branch is not in remote branch

1.3 M2

Bug 2589 [yocto-kernel] fail to build core-image-sato when add patch into t=
he kernel

1.3 M2

Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome with ipk

1.3 M2

ADT

Bug 1452 32bit kernel generated oprofile data file can not be read by remot=
e 64bit operation

1.3

Bug 2534 [Regression]Glxgears failed on qemux86/x86-64/arm/mips/ppc on Ubun=
tu 11.10 64bit

1.3 M3

Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0

=1B$B!!=1B(B

Power & Performance

Power consumption of crownbay is 24.064w.

=1B$B!!=1B(B

Build time for a sato image on Core i7 860 machine is 115 minutes. Detailed=
 result on

=1B$B!!=1B(B

https://wiki.yoctoproject.org/wiki/Performance_Test

=1B$B!!=1B(B

Compliance

LTP&POSIX perform on Blacksand, Sugarbay and HuronRive

=1B$B!!=1B(B

LTP result: https://wiki.pokylinux.org/wiki/LTP_result<https://wiki.pokylin=
ux.org/wiki/LTP_result>

=1B$B!!=1B(B

POSIX result: https://wiki.pokylinux.org/wiki/Posix_result<https://wiki.pok=
ylinux.org/wiki/Posix_result>

Stress

Both Crashme and Helltest on Jasperforest could pass 24 hours stress testin=
g.

=1B$B!!=1B(B

Distribution Support

New! Bug 2631 beecrypt-native failed to compile on Fedora17(final) 64bit

=1B$B!!=1B(B

HOB

Bug 2576 [Hob2] wrong image profile selected after template load

1.3 M2

Bug 2581[Hob2] 'HobNotebook' no attribute 'tabbar' when build failure

1.3 M2

New! Bug 2618[Hob2] Incorrect total image size in "View Package" page

=1B$B!!=1B(B

New! Bug 2613[Hob2] Delete layer failed

=1B$B!!=1B(B


Best Regards,
Hongna

--_000_E16513A01CAAFF40B65178C63CE45EEC1914DA7BIRSMSX102gercor_
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
	{font-family:SimSun;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:SimSun;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle24
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle25
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle26
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle27
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle28
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"text-justify-t=
rim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D"><o:p>=
&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quo=
t;">From:</span></b><span style=3D"font-size:10.0pt;font-family:&quot;Tahom=
a&quot;,&quot;sans-serif&quot;"> Xu, HongnaX
<br>
<b>Sent:</b> Wednesday, June 20, 2012 12:49 PM<br>
<b>To:</b> Xu, HongnaX; Serban, Laurentiu; Georgescu, Alexandru C<br>
<b>Cc:</b> 'Zhao Yi'; Sun, YilongX Y; Ma, NingX; Xu, Jiajun; Wang, Shane; L=
iu, Song<br>
<b>Subject:</b> Fullpass Test Report for Yocto 1.3_M1 20120613 Build on met=
a-intel Platform<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><o:p>&nbsp;=
</o:p></p>
<p class=3D"MsoNormal">Hello&nbsp; Laurentiu<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:10.5pt">This is the Fullpass te=
st report for Yocto 1.3 M1 20120613 build on meta-intel platform<span style=
=3D"color:#1F497D">.
</span>QA found one critical issue that is grub-efi-native fails due to hel=
p2man script which blocked all cases on FRI2, reported as bug 2527. For Hob=
, we found two minor issues, they are Incorrect total image size in &quot;V=
iew Package&quot; page and can=1B$B!G=1B(Bt delete layer
 in special situation. For core build system, self-hosted-image are still r=
unning, no new issue found till now, For Distribution Support, Yocto build =
on OpenSuse 12.1 64 bit and &nbsp;Ubuntu 12.04 64 bit could pass, but beecr=
ypt-native failed to compile on Fedora17(final)
 64bit report as 2631.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:10.5pt">Other features perform =
well and no new issue found except the syslog daemon can't startup on qemux=
86/x86-64 and meta-intel platforms.<span style=3D"color:#1F497D"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:10.0pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">For Build pe=
rformance, one qemux86 sato build on a Core i7 machine costs 115 minutes.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:5.25pt"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Test Summary:<o:p></o:p></span></b></p=
>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
-<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"939" style=3D"width:704.0pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"939" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"widt=
h:704.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Test Result Summary<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"214" nowrap=3D"" valign=3D"bottom" style=3D"width:160.45pt;bor=
der:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Component<o:p></o:p></span></b></p>
</td>
<td width=3D"162" nowrap=3D"" valign=3D"bottom" style=3D"width:121.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Target<o:p></o:p></span></b></p>
</td>
<td width=3D"81" nowrap=3D"" valign=3D"bottom" style=3D"width:60.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Status<o:p></o:p></span></b></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Comments<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:27.75pt">
<td width=3D"214" nowrap=3D"" rowspan=3D"7" style=3D"width:160.45pt;border:=
solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:27.75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">BSP<o:p></o:p></span></b></p>
</td>
<td width=3D"162" nowrap=3D"" valign=3D"bottom" style=3D"width:121.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:27.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">eMenlow<o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" style=3D"width:60.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:27.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:27.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">X server could not successful start up to the Desktop; syslog i=
s not started by default in background on bsps<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"162" nowrap=3D"" valign=3D"bottom" style=3D"width:121.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Blacksand<o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" valign=3D"bottom" style=3D"width:60.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">syslog is not started by default in background on bsps<o:p></o:=
p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"162" nowrap=3D"" valign=3D"bottom" style=3D"width:121.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Crownbay-emgd<o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" valign=3D"bottom" style=3D"width:60.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">syslog is not started by default in background on bsps<o:p></o:=
p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"162" nowrap=3D"" valign=3D"bottom" style=3D"width:121.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Sugarbay<o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" valign=3D"bottom" style=3D"width:60.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">syslog is not started by default in background on bsps<o:p></o:=
p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"162" nowrap=3D"" valign=3D"bottom" style=3D"width:121.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">FRI2<o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" valign=3D"bottom" style=3D"width:60.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">BLOCK<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">grub-efi-native fails due to help2man script
<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"162" nowrap=3D"" valign=3D"bottom" style=3D"width:121.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">HuronRiver<o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" valign=3D"bottom" style=3D"width:60.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">syslog is not started by default in background on bsps<o:p></o:=
p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"162" nowrap=3D"" valign=3D"bottom" style=3D"width:121.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Jasperforest-lsb<o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" valign=3D"bottom" style=3D"width:60.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"214" nowrap=3D"" rowspan=3D"2" style=3D"width:160.45pt;border:=
solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">QEMU<o:p></o:p></span></b></p>
</td>
<td width=3D"162" nowrap=3D"" valign=3D"bottom" style=3D"width:121.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemux86<o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" valign=3D"bottom" style=3D"width:60.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">syslog is not started by default in background on bsps<o:p></o:=
p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"162" nowrap=3D"" valign=3D"bottom" style=3D"width:121.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemux86-64<o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" valign=3D"bottom" style=3D"width:60.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">syslog is not started by default in background on bsps<o:p></o:=
p></span></p>
</td>
</tr>
<tr style=3D"height:16.5pt">
<td width=3D"214" nowrap=3D"" style=3D"width:160.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:16.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Distribution Support<o:p></o:p></span></b></p>
</td>
<td width=3D"162" nowrap=3D"" style=3D"width:121.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:16.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Times New Ro=
man&quot;,&quot;serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" style=3D"width:60.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:16.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:16.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">beecrypt-native failed to compile on Fedora17(final) 64bit<o:p>=
</o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"214" nowrap=3D"" style=3D"width:160.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Power/Performance<o:p></o:p></span></b></p>
</td>
<td width=3D"162" nowrap=3D"" style=3D"width:121.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Times New Ro=
man&quot;,&quot;serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" style=3D"width:60.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">one qemux86 sato build on a Core i7 machine costs 115 minutes<o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:63.75pt">
<td width=3D"214" nowrap=3D"" style=3D"width:160.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:63.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Core build system<o:p></o:p></span></b></p>
</td>
<td width=3D"162" nowrap=3D"" style=3D"width:121.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:63.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Times New Ro=
man&quot;,&quot;serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" style=3D"width:60.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:63.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:63.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">three issues for multilib, do_rootfs failed for lib32-connman-g=
nome with ipk;no provider for lib32/lib64-lsbinitscripts;&nbsp; failed
 dependency for util-linux with multilib build;&nbsp; For yocto-bsp/kernel =
tools, fail to build core-image-sato when add patch into the kernel; X can'=
t start in sato image built by yocto-bsp tool<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"214" nowrap=3D"" style=3D"width:160.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Compliance<o:p></o:p></span></b></p>
</td>
<td width=3D"162" nowrap=3D"" style=3D"width:121.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Times New Ro=
man&quot;,&quot;serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" style=3D"width:60.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">No regression issue with LTP and POSIX on sugarbay and n450<o:p=
></o:p></span></p>
</td>
</tr>
<tr style=3D"height:25.5pt">
<td width=3D"214" nowrap=3D"" style=3D"width:160.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:25.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Stress<o:p></o:p></span></b></p>
</td>
<td width=3D"162" nowrap=3D"" style=3D"width:121.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:25.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Times New Ro=
man&quot;,&quot;serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" style=3D"width:60.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:25.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:25.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Both Crashme and Helltest on Jasperforest could pass 24 hours s=
tress testing<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:41.25pt">
<td width=3D"214" nowrap=3D"" style=3D"width:160.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:41.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"162" nowrap=3D"" style=3D"width:121.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:41.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Times New Ro=
man&quot;,&quot;serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" style=3D"width:60.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:41.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:41.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">32bit kernel generated oprofile data file can not be read by re=
mote 64bit opreport;Segmentation fault on qemuarm from /usr/lib/libust.so.0=
;
 glxgears blocked all clutter template cases.<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"214" nowrap=3D"" style=3D"width:160.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">HOB<o:p></o:p></span></b></p>
</td>
<td width=3D"162" nowrap=3D"" style=3D"width:121.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Times New Ro=
man&quot;,&quot;serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"81" nowrap=3D"" style=3D"width:60.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"482" valign=3D"bottom" style=3D"width:361.4pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"671" style=3D"width:503.6pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:red;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">&nbsp;<=
span lang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:blac=
k">=1B$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;co=
lor:black"><o:p></o:p></span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Critical bugs, more than 50% test cases are blocked<o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#9BBB59;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B=
$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Only Normal, Minor or Enhancement bugs, or less than 10% test c=
ases failed<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B=
$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Normal, Major and Critical bugs, and more than 10% test cases f=
ailed<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"652" style=3D"width:489.0pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"652" nowrap=3D"" colspan=3D"6" valign=3D"bottom" style=3D"widt=
h:489.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Detailed Test Result for each component<o:p></o:p></span=
></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Target<o:p></o:p></span></b></p>
</td>
<td width=3D"68" style=3D"width:50.75pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Total TCs</span></b><span style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Not Run<o:p></o:p></span></b></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Passed</span></b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Failed</span></b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Not testable (Blocked)</span></b><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">eMenlow Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"68" style=3D"width:50.75pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">67<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">41<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">6 (bug 2507)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">20 (bug 2507)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">n450 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"68" style=3D"width:50.75pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">66<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">64<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 2535)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Crownbay-Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"68" style=3D"width:50.75pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">67<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">65<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 2535)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Sugarbay Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"68" style=3D"width:50.75pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">70<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">68<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 2535)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">FRI2 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"68" style=3D"width:50.75pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">86<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">0<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">86 (bug 2527)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">HuronRiver Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"68" style=3D"width:50.75pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">70<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">68<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 2535)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Jasperforest lsb-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"68" style=3D"width:50.75pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">34<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">34<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86-64 Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">32<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">30<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 2535)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86-64 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">37<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">35<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 2535)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86 Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">32<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">30<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 2535)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">37<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" style=3D"width:52.2pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">35<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 2535)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Distribution Support<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">3<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" nowrap=3D"" style=3D"width:52.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">2<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 2631)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Power &amp; Performance<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">4<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" nowrap=3D"" style=3D"width:52.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">4<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Core build system<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">51<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">3<o:p></o:p></span></p>
</td>
<td width=3D"70" nowrap=3D"" style=3D"width:52.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">36<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">11 (2590 2572 2571 2589 2559)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 2589)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Compliance<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">2<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" nowrap=3D"" style=3D"width:52.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">2<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Stress<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">2<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" nowrap=3D"" style=3D"width:52.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">2<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">51<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" nowrap=3D"" style=3D"width:52.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">43<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 1452&nbsp; 2577)<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">6 (bug 2543)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">HOB<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">38<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"70" nowrap=3D"" style=3D"width:52.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">38<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"193" nowrap=3D"" style=3D"width:144.45pt;border:solid black 1.=
0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Total<o:p></o:p></span></b></p>
</td>
<td width=3D"68" nowrap=3D"" style=3D"width:50.75pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">749<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">3<o:p></o:p></span></p>
</td>
<td width=3D"70" nowrap=3D"" style=3D"width:52.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">597<o:p></o:p></span></p>
</td>
<td width=3D"114" style=3D"width:85.75pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">36<o:p></o:p></span></p>
</td>
<td width=3D"148" valign=3D"bottom" style=3D"width:110.65pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">113<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">* You can check the detailed test result in attachme=
nt for each target.<br>
** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><b>Commit Information<o:p></o:p></b></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b>--------=
-------------------------------&nbsp;<o:p></o:p></b></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none">Tree/Branch: poky/master<br>
Commit id: 7f017cab0b3e4d5a4fc356eccd8eb8429b0531d0<o:p></o:p></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;">Meta branch: master<o:p></o:p></span></p>
<pre><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">Commit id: bd00e28dd54b06a1f01f186be168d3af872f96d4<o:p><=
/o:p></span></pre>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><o:p>&nb=
sp;</o:p></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Issue summary</span></b><b><span style=
=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span=
></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
<o:p></o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"979" style=3D"width:734.0pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" valign=3D"bottom" style=3D"widt=
h:166.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Component<o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:solid bla=
ck 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Bug Number<o:p></o:p></span></b></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:solid black 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Target Milestone<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"125" nowrap=3D"" rowspan=3D"3" style=3D"width:93.45pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">System &amp; Core OS<o:p></o:p></span></b></p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"2" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">System Usage<o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2535 syslog is not started by default in background on bsps=
<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2507 X server could not successful start up to the Desktop<=
o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"97" nowrap=3D"" style=3D"width:72.55pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Other<o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:red">New!</span><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black"> Bug 2527 grub-efi-native fails=
 due to
 help2man script <o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"7" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Core build system<o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2559 [yocto-bsp]X can't start in sato image built by yocto-=
bsp tool<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2571 [multilib] no provider for lib32/lib64-lsbinitscripts
<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2572 [multilib] failed dependency for util-linux with multi=
lib build<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M3<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2585 [wiki]The wiki using yocto-bsp create qemu BSP should =
sync with our source code<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M3<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2587 [yocto-bsp]the default branch is not in remote branch<=
o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2589 [yocto-kernel] fail to build core-image-sato when add =
patch into the kernel<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome wit=
h ipk<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"3" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 1452 32bit kernel generated oprofile data file can not be r=
ead by remote 64bit operation<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2534 [Regression]Glxgears failed on qemux86/x86-64/arm/mips=
/ppc on Ubuntu 11.10 64bit
<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M3<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.=
0<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"3" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Power &amp; Performance<o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0in 5.4p=
t 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Power consumption of crownbay is 24.064w.<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0in 5.4p=
t 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Build time for a sato image on Core i7 860 machine is 115 minut=
es. Detailed result on<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0in 5.4p=
t 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><u><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif=
&quot;;color:blue"><a href=3D"https://wiki.yoctoproject.org/wiki/Performanc=
e_Test">https://wiki.yoctoproject.org/wiki/Performance_Test</a><o:p></o:p><=
/span></u></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"3" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Compliance<o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">LTP&amp;POSIX perform on Blacksand, Sugarbay and HuronRive<o:p>=
</o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0in 5.4p=
t 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><u><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif=
&quot;;color:blue"><a href=3D"https://wiki.pokylinux.org/wiki/LTP_result">L=
TP result: https://wiki.pokylinux.org/wiki/LTP_result</a><o:p></o:p></span>=
</u></p>
</td>
<td width=3D"113" nowrap=3D"" rowspan=3D"2" style=3D"width:85.0pt;border-to=
p:none;border-left:solid black 1.0pt;border-bottom:none;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:11.0pt;font-family:&quot;Times New Ro=
man&quot;,&quot;serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0in 5.4p=
t 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><u><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif=
&quot;;color:blue"><a href=3D"https://wiki.pokylinux.org/wiki/Posix_result"=
>POSIX result: https://wiki.pokylinux.org/wiki/Posix_result</a><o:p></o:p><=
/span></u></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" style=3D"width:166.0pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Stress<o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Both Crashme and Helltest on Jasperforest could pass 24 hours s=
tress testing.<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" style=3D"width:166.0pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Distribution Support<o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;bord=
er:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:1=
5.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:red">New!</span><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black"> Bug 2631 beecrypt-native faile=
d to compile
 on Fedora17(final) 64bit<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"4" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">HOB<o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2576 [Hob2] wrong image profile selected after template loa=
d
<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 2581[Hob2] 'HobNotebook' no attribute 'tabbar' when build f=
ailure<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:red">New!</span><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black"> Bug 2618[Hob2] Incorrect total=
 image
 size in &quot;View Package&quot; page<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:red">New!</span><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black"> Bug 2613[Hob2] Delete layer fa=
iled
<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"text-indent:5.25pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Best Regards,<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hongna<o:p></o:p></spa=
n></p>
</div>
</div>
</body>
</html>

--_000_E16513A01CAAFF40B65178C63CE45EEC1914DA7BIRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC1914DA7BIRSMSX102gercor_
Content-Type: application/oleobject;
	name="Yocto 1.3 M1 20120613 Build detail_testreport_Fullpasso.ods"
Content-Description: Yocto 1.3 M1 20120613 Build
 detail_testreport_Fullpasso.ods
Content-Disposition: attachment;
	filename="Yocto 1.3 M1 20120613 Build detail_testreport_Fullpasso.ods";
	size=26802; creation-date="Thu, 14 Jun 2012 07:48:46 GMT";
	modification-date="Wed, 20 Jun 2012 09:44:22 GMT"
Content-Transfer-Encoding: base64

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
BQAgAQAAfGcAAAAA

--_004_E16513A01CAAFF40B65178C63CE45EEC1914DA7BIRSMSX102gercor_--
