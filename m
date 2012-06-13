Return-Path: <laurentiu.serban@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2401DE013A6
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 07:30:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2012 07:30:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="xml'?ods'72,48?scan'72,48,208,217,72,48";a="165164648"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2012 07:30:50 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.178]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.246]) with mapi id
	14.01.0355.002; Wed, 13 Jun 2012 15:30:32 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Fullpass Test Report for Yocto 1.3_M1 20120606 Build 
Thread-Index: AQHNSUPDqa1dfPXs/kyr2qZCJgKFuJb4Tupw
Date: Wed, 13 Jun 2012 14:30:32 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC1914508C@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 13 Jun 2012 08:23:09 -0700
Subject: Fullpass Test Report for Yocto 1.3_M1 20120606 Build
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
X-List-Received-Date: Wed, 13 Jun 2012 14:30:57 -0000
X-Groupsio-MsgNum: 7171
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_E16513A01CAAFF40B65178C63CE45EEC1914508CIRSMSX102gercor_"

--_005_E16513A01CAAFF40B65178C63CE45EEC1914508CIRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC1914508CIRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC1914508CIRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,


This is the Fullpass test report for Yocto 1.3 20120606 build ( https://wik=
i.pokylinux.org/wiki/Yocto_1.3_Milestone_Test_Report ). There are 15 bugs f=
ound in this test circle. We find some meta-intel BSPs failed to build with=
 "Weekly build 1.3_M1 Week 4", one is for connman-gnome and another is for =
gst-ffmpeg, Due to the issue, QA testing against Sugarbay/eMenlow/Crownbay/=
FRI2/Huron River is blocked. The 2 bugs we reported for these build error a=
re bug 2561 and 2562.

For Hob, a  minor issue is that Incorrect image shown when loading template=
 file, bug 2576.

For Core Build System, there are 9 issues, Mulitilb could not work with lsb=
 , sato build and lib32-connman-gnome build;  two bugs for Yocto-bsp tools,=
 X can't start in sato image built by yocto-bsp tool; fail to build core-im=
age-sato when add patch into the kernel; qemu-native build failed in self-h=
osted-image with vmdk; lib64-core-image-sato build failed due to sanity che=
ck.

For Distribution testing, we tested on three distributions, they are Fedora=
 16,OpenSuse 12.1 and Ubuntu 11.10, and no issue found with Yocto build.

For ADT, we found two issues that are Segmentation fault on qemuarm from /u=
sr/lib/libust.so.0 and  ADT-Installer failed if the folder /opt/poky/1.2+sn=
apshot exist. Other features perform well.

For Build performance, one qemux86 sato build on a Core i7 machine costs 10=
8 minutes, which is almost the same as the result in 1.2 M4 RC5 build(111 m=
inutes)

Test Summary:
---------------------------------------

Test Result Summary

Component

Target

Status

Comments

BSP

eMenlow

BLOCK

connman-gnome do_configure fail on autobuilder for several BSPs

Blacksand

GOOD

Everything runs well

Crownbay-emgd

BLOCK

connman-gnome do_configure fail on autobuilder for several BSPs

Sugarbay

BLOCK

connman-gnome do_configure fail on autobuilder for several BSPs

HuronRiver-sato-sdk

BLOCK

connman-gnome do_configure fail on autobuilder for several BSPs

Jasperforest-lsb

GOOD

Everything runs well

QEMU

qemux86

GOOD

Everything runs well

qemux86-64

GOOD

Glib-Gobject-warning when launch connman-properties

ADT

=1B$B!!=1B(B

BUGGY

Glxgears failed on qemux86/x86-64/arm/mips/ppc on Ubuntu 11.10 64bit,ADT-In=
staller failed if the folder /opt/poky/1.2+snapshot exist;Segmentation faul=
t on qemuarm from /usr/lib/libust.so.0; 32bit kernel generated oprofile dat=
a file can not be read by remote 64bit opreport

Distribution Support

=1B$B!!=1B(B

GOOD

yocto build on Fedora 16,OpenSuse 12.1 and Ubuntu 11.10 without issue

Compliance

=1B$B!!=1B(B

BLOCK

LTP and POSIX on Blacksand could pass; Crownbay,Sugarbay and HuronRiver ima=
ge blocked by connman-gnome do_configure fail

Core build system

=1B$B!!=1B(B

BLOCK

Mulitilb could not work with lsb and sato build; X can't start in sato imag=
e built by yocto-bsp tool; fail to build core-image-sato when add patch int=
o the kernel;qemu-native build failed in self-hosted-image with vmdk;do_roo=
tfs failed for lib32-connman-gnome with ipk;lib64-core-image-sato build fai=
led due to sanity check

Power/Performance

=1B$B!!=1B(B

BLOCK

connman-gnome do_configure fail on autobuilder for several BSPs

Stress

=1B$B!!=1B(B

GOOD

Both Crashme and Helltest on Jasperforest could pass 24 hours stress testin=
g

HOB

=1B$B!!=1B(B

GOOD

Incorrect image shown when loading template file


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

66

0

0

0

66(bug 2561)

n450 Sato-SDK

64

0

63

1(bug 2535)

0

Crownbay-Sato-SDK

66

0

0

0

66(bug 2561)

Sugarbay Sato-SDK

69

0

0

0

69(bug 2561)

HuronRiver Sato-SDK

70

0

0

0

70(bug 2561)

Jasperforest lsb-SDK

32

0

32

0

0

Qemux86-64 Sato

30

0

30

0

0

Qemux86-64 Sato-SDK

35

0

35

0

0

Qemux86 Sato

30

0

30

0

0

Qemux86 Sato-SDK

35

0

35

0

0

ADT

49

0

42

7(bug 1452 2068 2069)

0

Core build system

55

0

43

11(bug 2571 2572 2559 2589 2586 2590 2560 )

1(bug 2589)

Power & Performance

4

0

0

0

4(bug 2561)

Compliance

2

0

0

0

2(bug 2561)

Stress

2

0

2

0

0

HOB

38

0

38

0

0

Total

647

0

350

19

278


* You can check the detailed test result in attachment for each target.
** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.


Commit Information
---------------------------------------
Tree/Branch: poky/master
Commit id: 348da93e283b2b8454fd9cde80d4b17378e2a168

Meta branch: master

Commit id: 8bc2fa135060e941bcbb4dcfb664e175a3eb871d

Issue summary
--------------------------------------
Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2508 Fotowall icons appear abnormal on qemumips sato-sdk images with ni=
ghtly build (20120523-2)

1.3 M2

Bug 2509 The 'About' option with connman-properties doesn't display the pic=
ture.

1.3 M2

Other

Bug 2535 syslog is not started by default in background on bsps(Crownbay,N4=
50 etc)

1.3 M2

New! Bug 2561 connman-gnome do_configure fail on autobuilder for several BS=
Ps

=1B$B!!=1B(B

New! Bug 2562 gst-ffmpeg do_configure failed on autobuilder for lsb build

=1B$B!!=1B(B

Core build system

New! Bug 2559 [yocto-bsp]X can't start in sato image built by yocto-bsp too=
l

=1B$B!!=1B(B

New! Bug 2560 [multilib]lib64-core-image-sato build failed due to sanity ch=
eck

=1B$B!!=1B(B

New! Bug 2571 [multilib] no provider for lib32/lib64-lsbinitscripts

=1B$B!!=1B(B

New! Bug 2572 [multilib] failed dependency for util-linux with multilib bui=
ld

=1B$B!!=1B(B

New! Bug 2585 [wiki]The wiki using yocto-bsp create qemu BSP should sync wi=
th our source code

=1B$B!!=1B(B

New! Bug 2586 qemu-native build failed in self-hosted-image with vmdk

=1B$B!!=1B(B

New! Bug 2587 [yocto-bsp]the default branch is not in remote branch

=1B$B!!=1B(B

New! Bug 2589 [yocto-kernel] fail to build core-image-sato when add patch i=
nto the kernel

=1B$B!!=1B(B

New! Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome with ipk

=1B$B!!=1B(B

ADT

Bug 1452 32bit kernel generated oprofile data file can not be read by remot=
e 64bit operation

1.3

Bug 2534 [Regression]Glxgears failed on qemux86/x86-64/arm/mips/ppc on Ubun=
tu 11.10 64bit

1.3 M3

New! Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0

=1B$B!!=1B(B

New! Bug 2592 Yocto-bsp tool fail to create Yocto BSP with the same build&o=
utput location

=1B$B!!=1B(B

New! Bug 2553 ADT-Installer failed if the folder /opt/poky/1.2+snapshot exi=
st

1.3

Power & Performance

Power consumption of crownbay is block by bug 2561.

=1B$B!!=1B(B

Build time for a sato image on Core i7 860 machine is 109 minutes. Detailed=
 result on

=1B$B!!=1B(B

https://wiki.yoctoproject.org/wiki/Performance_Test

=1B$B!!=1B(B

Compliance

LTP&POSIX only perform on Blacksand. Sugarbay and HuronRiver are blocked by=
 bug 2561

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

yocto build on Fedora 16,OpenSuse 12.1 and Ubuntu 11.10 without issue

=1B$B!!=1B(B

HOB

New! Bug 2371 [Hob]Handle out of memory exception in HOB

=1B$B!!=1B(B


Best Regards,
Hongna


--_000_E16513A01CAAFF40B65178C63CE45EEC1914508CIRSMSX102gercor_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; <o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"text-indent:10.5pt">This is the Fullpass=
 test report for Yocto 1.3 20120606 build (
<a href=3D"https://wiki.pokylinux.org/wiki/Yocto_1.3_Milestone_Test_Report"=
><span style=3D"color:windowtext">https://wiki.pokylinux.org/wiki/Yocto_1.3=
_Milestone_Test_Report</span></a> ). There are 15 bugs found in this test c=
ircle. We find some meta-intel BSPs
 failed to build with &quot;Weekly build 1.3_M1 Week 4&quot;, one is for co=
nnman-gnome and another is for gst-ffmpeg, Due to the issue, QA testing aga=
inst Sugarbay/eMenlow/Crownbay/FRI2/Huron River is blocked. The 2 bugs we r=
eported for these build error are bug 2561
 and 2562.<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"text-indent:10.5pt">For Hob, a &nbsp;min=
or issue is that Incorrect image shown when loading template file, bug 2576=
.
<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"text-indent:10.5pt">For Core Build Syste=
m, there are 9 issues, Mulitilb could not work with lsb , sato build and li=
b32-connman-gnome build; &nbsp;two bugs for Yocto-bsp tools, X can't start =
in sato image built by yocto-bsp tool; fail
 to build core-image-sato when add patch into the kernel; qemu-native build=
 failed in self-hosted-image with vmdk; lib64-core-image-sato build failed =
due to sanity check.<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"text-indent:10.0pt"><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">For Distr=
ibution testing, we tested on three distributions, they are Fedora 16,OpenS=
use 12.1 and Ubuntu 11.10, and no issue found with Yocto build.</span><o:p>=
</o:p></p>
<p class=3D"MsoPlainText" style=3D"text-indent:10.5pt">For ADT, we found tw=
o issues that are Segmentation fault on qemuarm from /usr/lib/libust.so.0 a=
nd&nbsp; ADT-Installer failed if the folder /opt/poky/1.2&#43;snapshot exis=
t. Other features perform well.<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"text-indent:10.0pt"><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">For Build=
 performance, one qemux86 sato build on a Core i7 machine costs 108 minutes=
, which is almost the same as the result in 1.2 M4 RC5 build(111
 minutes)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:10.5pt"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Test Summary:<o:p></o:p></span></b></p=
>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
-<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
quot;">Test Result Summary<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"198" nowrap=3D"" valign=3D"bottom" style=3D"width:148.7pt;bord=
er:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Component<o:p></o:p></span></b></p>
</td>
<td width=3D"187" nowrap=3D"" valign=3D"bottom" style=3D"width:140.25pt;bor=
der-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:=
solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Target<o:p></o:p></span></b></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Status<o:p></o:p></span></b></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Comments<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"198" nowrap=3D"" rowspan=3D"6" style=3D"width:148.7pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">BSP<o:p></o:p></span></b></p>
</td>
<td width=3D"187" nowrap=3D"" valign=3D"bottom" style=3D"width:140.25pt;bor=
der-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:=
solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
eMenlow<o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
BLOCK<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
connman-gnome do_configure fail on autobuilder for several BSPs<o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"187" nowrap=3D"" valign=3D"bottom" style=3D"width:140.25pt;bor=
der-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:=
solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Blacksand<o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
GOOD<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"187" nowrap=3D"" valign=3D"bottom" style=3D"width:140.25pt;bor=
der-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:=
solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Crownbay-emgd<o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
BLOCK<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
connman-gnome do_configure fail on autobuilder for several BSPs<o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"187" nowrap=3D"" valign=3D"bottom" style=3D"width:140.25pt;bor=
der-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:=
solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Sugarbay<o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
BLOCK<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
connman-gnome do_configure fail on autobuilder for several BSPs<o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"187" nowrap=3D"" valign=3D"bottom" style=3D"width:140.25pt;bor=
der-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:=
solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
HuronRiver-sato-sdk<o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
BLOCK<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
connman-gnome do_configure fail on autobuilder for several BSPs<o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"187" nowrap=3D"" valign=3D"bottom" style=3D"width:140.25pt;bor=
der-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:=
solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Jasperforest-lsb<o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
GOOD<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"198" nowrap=3D"" rowspan=3D"2" style=3D"width:148.7pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">QEMU<o:p></o:p></span></b></p>
</td>
<td width=3D"187" nowrap=3D"" valign=3D"bottom" style=3D"width:140.25pt;bor=
der-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:=
solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
qemux86<o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
GOOD<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"187" nowrap=3D"" valign=3D"bottom" style=3D"width:140.25pt;bor=
der-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:=
solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
qemux86-64<o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
GOOD<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Glib-Gobject-warning when launch connman-properties<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:51.75pt">
<td width=3D"198" nowrap=3D"" style=3D"width:148.7pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"187" nowrap=3D"" style=3D"width:140.25pt;border-top:none;borde=
r-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;=
padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&q=
uot;serif&quot;"><o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" style=3D"width:56.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Glxgears failed on qemux86/x86-64/arm/mips/ppc on Ubuntu 11.10 64bit,ADT-In=
staller failed if the folder /opt/poky/1.2&#43;snapshot exist;Segmentation
 fault on qemuarm from /usr/lib/libust.so.0; 32bit kernel generated oprofil=
e data file can not be read by remote 64bit opreport<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:16.5pt">
<td width=3D"198" nowrap=3D"" style=3D"width:148.7pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:16.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Distribution Support<o:p></o:p></span></b></p>
</td>
<td width=3D"187" nowrap=3D"" style=3D"width:140.25pt;border-top:none;borde=
r-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;=
padding:0in 5.4pt 0in 5.4pt;height:16.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&q=
uot;serif&quot;"><o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:16.5pt=
">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
GOOD<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:16.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
yocto build on Fedora 16,OpenSuse 12.1 and Ubuntu 11.10 without issue<o:p><=
/o:p></span></p>
</td>
</tr>
<tr style=3D"height:31.5pt">
<td width=3D"198" nowrap=3D"" style=3D"width:148.7pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:31.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Compliance<o:p></o:p></span></b></p>
</td>
<td width=3D"187" nowrap=3D"" style=3D"width:140.25pt;border-top:none;borde=
r-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;=
padding:0in 5.4pt 0in 5.4pt;height:31.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&q=
uot;serif&quot;"><o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:31.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
BLOCK<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:31.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
LTP and POSIX on Blacksand could pass; Crownbay,Sugarbay and HuronRiver ima=
ge blocked by connman-gnome do_configure fail
<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:63.75pt">
<td width=3D"198" nowrap=3D"" style=3D"width:148.7pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:63.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Core build system<o:p></o:p></span></b></p>
</td>
<td width=3D"187" nowrap=3D"" style=3D"width:140.25pt;border-top:none;borde=
r-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;=
padding:0in 5.4pt 0in 5.4pt;height:63.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&q=
uot;serif&quot;"><o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:63.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
BLOCK<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:63.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Mulitilb could not work with lsb and sato build; X can't start in sato imag=
e built by yocto-bsp tool; fail to build core-image-sato when
 add patch into the kernel;qemu-native build failed in self-hosted-image wi=
th vmdk;do_rootfs failed for lib32-connman-gnome with ipk;lib64-core-image-=
sato build failed due to sanity check<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"198" nowrap=3D"" style=3D"width:148.7pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Power/Performance<o:p></o:p></span></b></p>
</td>
<td width=3D"187" nowrap=3D"" style=3D"width:140.25pt;border-top:none;borde=
r-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;=
padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&q=
uot;serif&quot;"><o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" valign=3D"bottom" style=3D"width:56.2pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
BLOCK<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
connman-gnome do_configure fail on autobuilder for several BSPs<o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:25.5pt">
<td width=3D"198" nowrap=3D"" style=3D"width:148.7pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:25.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Stress<o:p></o:p></span></b></p>
</td>
<td width=3D"187" nowrap=3D"" style=3D"width:140.25pt;border-top:none;borde=
r-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;=
padding:0in 5.4pt 0in 5.4pt;height:25.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&q=
uot;serif&quot;"><o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" style=3D"width:56.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:25.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
GOOD<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:25.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Both Crashme and Helltest on Jasperforest could pass 24 hours stress testin=
g<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"198" nowrap=3D"" style=3D"width:148.7pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">HOB<o:p></o:p></span></b></p>
</td>
<td width=3D"187" nowrap=3D"" style=3D"width:140.25pt;border-top:none;borde=
r-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;=
padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&q=
uot;serif&quot;"><o:p></o:p></span></p>
</td>
<td width=3D"75" nowrap=3D"" style=3D"width:56.2pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
GOOD<o:p></o:p></span></p>
</td>
<td width=3D"478" valign=3D"bottom" style=3D"width:358.85pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Incorrect image shown when loading template file<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"671" style=3D"width:503.6pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:red;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">&nbsp;<=
span lang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=
=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun"><o:p></o:p>=
</span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Critical bugs, more than 50% test cases are blocked<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#9BBB59;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</s=
pan><span style=3D"font-size:10.0pt;font-family:SimSun"><o:p></o:p></span><=
/p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Only Normal, Minor or Enhancement bugs, or less than 10% test cases failed<=
o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</s=
pan><span style=3D"font-size:10.0pt;font-family:SimSun"><o:p></o:p></span><=
/p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Normal, Major and Critical bugs, and more than 10% test cases failed<o:p></=
o:p></span></p>
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
quot;">Detailed Test Result for each component<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Target<o:p></o:p></span></b></p>
</td>
<td width=3D"67" style=3D"width:50.6pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Total TCs</span></b><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"60" style=3D"width:45.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Not Run<o:p></o:p></span></b></p>
</td>
<td width=3D"69" style=3D"width:52.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Passed</span></b><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Failed</span></b><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Not testable (Blocked)</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;">
<b><o:p></o:p></b></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">eMenlow Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"67" style=3D"width:50.6pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">66<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" style=3D"width:52.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">66(bug 2561)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">n450 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"67" style=3D"width:50.6pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">64<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" style=3D"width:52.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">63<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">1(bug 2535)<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Crownbay-Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"67" style=3D"width:50.6pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">66<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" style=3D"width:52.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">66(bug 2561)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Sugarbay Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"67" style=3D"width:50.6pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">69<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" style=3D"width:52.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">69(bug 2561)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">HuronRiver Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"67" style=3D"width:50.6pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">70<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" style=3D"width:52.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">70(bug 2561)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Jasperforest lsb-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"67" style=3D"width:50.6pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">32<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" style=3D"width:52.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">32<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86-64 Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"67" nowrap=3D"" style=3D"width:50.6pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">30<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" style=3D"width:52.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">30<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86-64 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"67" nowrap=3D"" style=3D"width:50.6pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">35<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" style=3D"width:52.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">35<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86 Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"67" nowrap=3D"" style=3D"width:50.6pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">30<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" style=3D"width:52.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">30<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Qemux86 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"67" nowrap=3D"" style=3D"width:50.6pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">35<o:p></o:p></span></p>
</td>
<td width=3D"60" style=3D"width:45.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" style=3D"width:52.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">35<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"67" nowrap=3D"" style=3D"width:50.6pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">49<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">42<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">7(bug 1452 2068 2069)<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:39.0pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:39.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Core build system<o:p></o:p></span></b></p>
</td>
<td width=3D"67" nowrap=3D"" style=3D"width:50.6pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:39.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">55<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:39.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:39.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">43<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:39.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">11(bug 2571 2572 2559 2589 2586 2590 2560 )<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:39.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">1(bug 2589)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Power &amp; Performance<o:p></o:p></span></b></p>
</td>
<td width=3D"67" nowrap=3D"" style=3D"width:50.6pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">4<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">4(bug 2561)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Compliance<o:p></o:p></span></b></p>
</td>
<td width=3D"67" nowrap=3D"" style=3D"width:50.6pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">2<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">2(bug 2561)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Stress<o:p></o:p></span></b></p>
</td>
<td width=3D"67" nowrap=3D"" style=3D"width:50.6pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">2<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">2<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">HOB<o:p></o:p></span></b></p>
</td>
<td width=3D"67" nowrap=3D"" style=3D"width:50.6pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">38<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">38<o:p></o:p></span></p>
</td>
<td width=3D"116" valign=3D"bottom" style=3D"width:87.0pt;border-top:none;b=
order-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.=
0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"192" nowrap=3D"" style=3D"width:2.0in;border:solid black 1.0pt=
;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Total<o:p></o:p></span></b></p>
</td>
<td width=3D"67" nowrap=3D"" style=3D"width:50.6pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">647<o:p></o:p></span></p>
</td>
<td width=3D"60" nowrap=3D"" style=3D"width:45.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">0<o:p></o:p></span></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.05pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">350<o:p></o:p></span></p>
</td>
<td width=3D"116" style=3D"width:87.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.=
4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">19<o:p></o:p></span></p>
</td>
<td width=3D"147" valign=3D"bottom" style=3D"width:110.3pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;">278<o:p></o:p></span></p>
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
Commit id: 348da93e283b2b8454fd9cde80d4b17378e2a168<o:p></o:p></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;">Meta branch: master<o:p></o:p></span></p>
<pre><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;">Commit id: 8bc2fa135060e941bcbb4dcfb664e175a3eb871d<o:p></o=
:p></span></pre>
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
quot;">Component<o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:solid bla=
ck 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Bug Number<o:p></o:p></span></b></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:solid black 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Target Milestone<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"125" nowrap=3D"" rowspan=3D"5" style=3D"width:93.45pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">System &amp; Core OS<o:p></o:p></span></b></p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"2" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">System Usage<o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Bug 2508 Fotowall icons appear abnormal on qemumips sato-sdk images with ni=
ghtly build (20120523-2)<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Bug 2509 The 'About' option with connman-properties doesn't display the pic=
ture.<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"97" nowrap=3D"" rowspan=3D"3" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Other<o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Bug 2535 syslog is not started by default in background on bsps(Crownbay,N4=
50 etc)<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
1.3 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2561 connman-gnome do_configure fail on autobuilder for several BS=
Ps<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2562 gst-ffmpeg do_configure failed on autobuilder for lsb build<o=
:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"9" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Core build system<o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2559 [yocto-bsp]X can't start in sato image built by yocto-bsp too=
l<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2560 [multilib]lib64-core-image-sato build failed due to sanity ch=
eck<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2571 [multilib] no provider for lib32/lib64-lsbinitscripts
<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2572 [multilib] failed dependency for util-linux with multilib bui=
ld<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2585 [wiki]The wiki using yocto-bsp create qemu BSP should sync wi=
th our source code<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2586 qemu-native build failed in self-hosted-image with vmdk<o:p><=
/o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2587 [yocto-bsp]the default branch is not in remote branch<o:p></o=
:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2589 [yocto-kernel] fail to build core-image-sato when add patch i=
nto the kernel<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome with ipk<o=
:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"5" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Bug 1452 32bit kernel generated oprofile data file can not be read by remot=
e 64bit operation<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
1.3<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Bug 2534 [Regression]Glxgears failed on qemux86/x86-64/arm/mips/ppc on Ubun=
tu 11.10 64bit
<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
1.3 M3<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0<o:p><=
/o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2592 Yocto-bsp tool fail to create Yocto BSP with the same build&a=
mp;output location<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2553 ADT-Installer failed if the folder /opt/poky/1.2&#43;snapshot=
 exist<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
1.3<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"3" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Power &amp; Performance<o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0in 5.4p=
t 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Power consumption of crownbay is block by bug 2561.<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:SimSun"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0in 5.4p=
t 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Build time for a sato image on Core i7 860 machine is 109 minutes. Detailed=
 result on<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:SimSun"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0in 5.4p=
t 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><u><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif=
&quot;"><a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test"><sp=
an style=3D"color:windowtext">https://wiki.yoctoproject.org/wiki/Performanc=
e_Test</span></a><o:p></o:p></span></u></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"3" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Compliance<o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
LTP&amp;POSIX only perform on Blacksand. Sugarbay and HuronRiver are blocke=
d by bug 2561<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0in 5.4p=
t 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><u><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif=
&quot;"><a href=3D"https://wiki.pokylinux.org/wiki/LTP_result"><span style=
=3D"color:windowtext">LTP result: https://wiki.pokylinux.org/wiki/LTP_resul=
t</span></a><o:p></o:p></span></u></p>
</td>
<td width=3D"113" nowrap=3D"" rowspan=3D"2" style=3D"width:85.0pt;border-to=
p:none;border-left:solid black 1.0pt;border-bottom:none;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:11.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&q=
uot;serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0in 5.4p=
t 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><u><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif=
&quot;"><a href=3D"https://wiki.pokylinux.org/wiki/Posix_result"><span styl=
e=3D"color:windowtext">POSIX result: https://wiki.pokylinux.org/wiki/Posix_=
result</span></a><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" style=3D"width:166.0pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Stress<o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Both Crashme and Helltest on Jasperforest could pass 24 hours stress testin=
g.<o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:SimSun"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" style=3D"width:166.0pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Distribution Support<o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;bord=
er:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:1=
5.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
yocto build on Fedora 16,OpenSuse 12.1 and Ubuntu 11.10 without issue<o:p><=
/o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" style=3D"width:166.0pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">HOB<o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
New! Bug 2371 [Hob]Handle out of memory exception in HOB<o:p></o:p></span><=
/p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Best Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Hongna<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_E16513A01CAAFF40B65178C63CE45EEC1914508CIRSMSX102gercor_--

--_005_E16513A01CAAFF40B65178C63CE45EEC1914508CIRSMSX102gercor_
Content-Type: application/oleobject;
	name="Yocto 20120606 Build_ detail_testreport_Fullpass.ods"
Content-Description: Yocto 20120606 Build_ detail_testreport_Fullpass.ods
Content-Disposition: attachment;
	filename="Yocto 20120606 Build_ detail_testreport_Fullpass.ods"; size=30832;
	creation-date="Thu, 24 May 2012 07:57:55 GMT";
	modification-date="Wed, 13 Jun 2012 08:02:50 GMT"
Content-Transfer-Encoding: base64

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

--_005_E16513A01CAAFF40B65178C63CE45EEC1914508CIRSMSX102gercor_
Content-Type: message/rfc822
Content-Disposition: attachment;
	creation-date="Wed, 13 Jun 2012 09:05:56 GMT";
	modification-date="Wed, 13 Jun 2012 09:05:56 GMT"

Received: from shsmsx102.ccr.corp.intel.com (10.239.4.154) by
 SHSMSX151.ccr.corp.intel.com (10.239.6.50) with Microsoft SMTP Server (TLS)
 id 14.1.355.2; Fri, 27 Apr 2012 23:34:43 +0800
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.213]) by
 SHSMSX102.ccr.corp.intel.com ([169.254.2.253]) with mapi id 14.01.0355.002;
 Fri, 27 Apr 2012 23:34:43 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
CC: "Ma, NingX" <ningx.ma@intel.com>, "Sun, YilongX Y"
	<yilongx.y.sun@intel.com>, Zhao Yi <yi.zhao@windriver.com>, "Xu, HongnaX"
	<hongnax.xu@intel.com>
Subject: Fullpass Test Report for Yocto 1.2 M4 RC5 Build
Thread-Topic: Fullpass Test Report for Yocto 1.2 M4 RC5 Build
Thread-Index: Ac0ki0RNTvVFai+pRJarj2AL/pQNHQ==
Date: Fri, 27 Apr 2012 15:34:42 +0000
Message-ID: <90741FE9B50D654690EB940EDB456C8E0DCC01@SHSMSX101.ccr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 04
X-MS-Exchange-Organization-AuthSource: SHSMSX102.ccr.corp.intel.com
X-MS-Has-Attach: yes
X-Message-Flag: Follow up
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
Content-Type: multipart/mixed;
	boundary="_004_90741FE9B50D654690EB940EDB456C8E0DCC01SHSMSX101ccrcorpi_"
MIME-Version: 1.0

--_004_90741FE9B50D654690EB940EDB456C8E0DCC01SHSMSX101ccrcorpi_
Content-Type: multipart/alternative;
	boundary="_000_90741FE9B50D654690EB940EDB456C8E0DCC01SHSMSX101ccrcorpi_"

--_000_90741FE9B50D654690EB940EDB456C8E0DCC01SHSMSX101ccrcorpi_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgYWxsDQoNClRoaXMgaXMgdGhlIEZ1bGxwYXNzIHRlc3QgcmVzdWx0IGZvciAxLjIgTTQgUkM1
LiBJbiBsYXN0IHRlc3QgY2lyY2xlLCB0aGUgMiBjcml0aWNhbCBidWdzKHBzZXVkby1uYXRpdmVz
ZGsgaXNzdWUgYW5kIEhvYiBjYW6hr3QgbGF1bmNoIHdoZW4gc2FuaXR5IG5ldHdvcmsgY2hlY2sg
ZmFpbCkgaW4gUkM0IGFyZSBnb3QgZml4ZWQuIFRoZXJlIGFyZSBvbmx5IDMgbmV3IG1pbm9yIGlz
c3VlcyByZXBvcnRlZCwgb25lIGZvciBIb2IoYnVnIDIzNzEpLCB3aGljaCBpcyBleGNlcHRpb25h
bCBzaXR1YXRpb24gc3VjaCBhcyBvdXQgb2YgbWVtb3J5LCB3ZSBzaG91bGQgaGFuZGxlIHRoZSBp
bnRlcm5hbCBzdGF0ZSBmb3IgaG9iLCBvbmUgaXMgZm9yIEFEVCB0aGF0IHVzZXJzIGNhbid0IGlt
cG9ydCBvciBjcmVhdGUgQml0YmFrZSBDb21tYW5kZXIgUHJvamVjdCBpZiBzYW5pdHkgbmV0d29y
ayBjaGVjayBmYWlsKGJ1ZyAyMzcyKSwgYW5vdGhlciBpcyBmb3IgQnVpbGQgQXBwbGlhbmNlIHRo
YXQgbm8geGRnLW9wZW4gaW4gc2VsZi1ob3N0ZWQgaW1hZ2UoYnVnIDIzNzApLg0KDQpBbGwgZmVh
dHVyZXMgb24gQlBTcyBhbmQgUUVNVXMgd29yayB3ZWxsLCB3aXRoIDQgb2xkIG9wZW4gYnVncywg
dGhleSBhcmUgaTJjX3RyYW5zZmVyIGVycm9yIG9uIGUtTWVubG93OyBYb3JnIGVhdHMgbG90cyBv
ZiBDUFUgdGltZSBhZnRlciBzdGFuZGJ5IG9uIENyb3duYmF5LWVtZ2Q7IEZvdG93YWxsIGRvZXNu
J3QgcnVuIG9uIHFlbXVtaXBzIGFuZCBHbGliLUdvYmplY3Qtd2FybmluZyB3aGVuIGxhdW5jaCBj
b25ubWFuLXByb3BlcnRpZXMgb24gcWVtdXg4Ni02NC4NCg0KRm9yIEFEVCwgbW9zdCBmZWF0dXJl
cyBwZXJmb3JtIHdlbGwsIGV4Y2VwdCB0aGF0IGNsdXR0ZXIgcnVuIGZhaWxlZCBvbiBxZW11eDg2
L3g4Ni02NCwgMzJiaXQga2VybmVsIGdlbmVyYXRlZCBvcHJvZmlsZSBkYXRhIGZpbGUgY2Fuoa90
IGJlIHJlYWQgYnkgcmVtb3RlIDY0Yml0IG9wZXJhdGlvbiBhbmQgY2FuJ3QgaW1wb3J0IG9yIGNy
ZWF0ZSBCQyBQcm9qZWN0IGlmIHNhbml0eSBuZXR3b3JrIGNoZWNrIGZhaWwuDQoNCkZvciBIb2Is
IFFBIHRlc3QgaXQgYWdhaW5zdCBsYXRlc3QgcG9reS9kZW56aWwgYnJhbmNoIHdpdGggY29tbWl0
IGQyMGEyNDMxMGViNDNmZWQ5YTNmM2U3NTc1MmM5YWQ0NWExOGNiZTQsIHdpdGggb25seSBvbmUg
bWlub3IgaXNzdWUgZm91bmQgdGhhdCB3ZSBzaG91bGQgaGFuZGxlIHRoZSBleGNlcHRpb24gb3V0
IG9mIG1lbW9yeS4NCg0KRm9yIENvcmUgYnVpbGQgZmVhdHVyZXMsIHRoZSBvbmx5IG5ldyBpc3N1
ZSByZXBvcnRlZCBpcyB0aGF0IG5vIHhkZy1vcGVuIGluIEJ1aWxkIEFwcGxpYW5jZS4gRm9yIHRo
ZSBvdGhlciBmZWF0dXJlcyhpbmNsdWRpbmcgeDMyLCBub24tR1BMdjMsIG11bHRpbGliLCB5b2N0
by1ic3Ava2VybmVsIHRvb2xzLCBldGMpLCB0aGVpciBzdGF0dXMgYXJlIHNhbWUgYXMgUkM0IHRl
c3QgcmVzdWx0IC0gdGhlIG1ham9yIGlzc3VlIGlzIHRoYXQgbXVsdGlsaWIgY291bGQgbm90IHdv
cmsgd2l0aCAtc2RrIGFuZCBpcGsgYnVpbGQuDQoNCkZvciBEaXN0cmlidXRpb24gdGVzdGluZywg
TisxIHRlc3RpbmcgaXMgcGVyZm9ybWVkIGFnYWluc3QgQ2VudE9TL1VidW50dS9PcGVuc3VzZS9G
ZWRvcmEuIFRoZSBidWlsZCBpc3N1ZXMgb24gT3BlbnN1c2UgMTIuMiBNaWxlc3RvbmUgMiBhbmQg
RmVkb3JhIDE3IEFscGhhIHN0aWxsIGV4aXN0LCB3b3JsZCBidWlsZCBvbiBhbGwgZGlzdHJpYnV0
aW9ucyBpcyBzdGlsbCBvbi1nb2luZy4gV2Ugd2lsbCBkb3VibGUgY2hlY2sgYnVnIDIzNjMgYWdh
aW5zdCBGZWRvcmEgMTcgQmV0YS4NCg0KRm9yIEJ1aWxkIHBlcmZvcm1hbmNlLCBvbmUgcWVtdXg4
NiBzYXRvIGJ1aWxkIG9uIGEgQ29yZSBpNyBtYWNoaW5lIGNvc3RzIDExMSBtaW51dGVzLCB3aGlj
aCBpcyBhbG1vc3QgdGhlIHNhbWUgYXMgdGhlIHJlc3VsdCBpbiAxLjIgTTQgUkM0IGJ1aWxkKDEx
MCBtaW51dGVzKQ0KDQpOb3RlOiBUaGUgdGVzdCByZXBvcnQgaXMgYXJjaGl2ZWQgQCBodHRwczov
L3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL1lvY3RvXzEuMl9NaWxlc3RvbmVfVGVzdF9SZXBv
cnQuDQoNCg0KDQpUZXN0IFN1bW1hcnk6DQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQ0KDQpUZXN0IFJlc3VsdCBTdW1tYXJ5DQoNCkNvbXBvbmVudA0KDQpUYXJnZXQN
Cg0KU3RhdHVzDQoNCkNvbW1lbnRzDQoNCkJTUA0KDQplTWVubG93DQoNCkdPT0QNCg0KSTJDX3Ry
YW5zZmVyIGVycm9yDQoNCkJsYWNrc2FuZA0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxs
DQoNCkNyb3duYmF5LWVtZ2QNCg0KR09PRA0KDQpYb3JnIGVhdCBsb3RzIG9mIGN1cCdzIHJlc291
cmNlIGFmdGVyIHN0YW5kYnk7DQoNClN1Z2FyYmF5DQoNCkdPT0QNCg0KRXZlcnl0aGluZyBydW5z
IHdlbGwNCg0KSmFzcGVyZm9yZXN0LWxzYg0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxs
DQoNCkJlYWdsZWJvYXJkDQoNCkdPT0QNCg0KRXZlcnl0aGluZyBydW5zIHdlbGwNCg0KUm91dGVy
c3RhdGlvbnBybw0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNCk1wYzgzMTVlLXJk
Yg0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNClFFTVUNCg0KcWVtdXg4Ng0KDQpH
T09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNCnFlbXV4ODYtNjQNCg0KR09PRA0KDQpHbGli
LUdvYmplY3Qtd2FybmluZyB3aGVuIGxhdW5jaCBjb25ubWFuLXByb3BlcnRpZXMNCg0KcWVtdWFy
bQ0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNCnFlbXVwcGMNCg0KR09PRA0KDQpF
dmVyeXRoaW5nIHJ1bnMgd2VsbA0KDQpxZW11bWlwcw0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVu
cyB3ZWxsDQoNCkFEVA0KDQqhoQ0KDQpCVUdHWQ0KDQpDbHV0dGVyIGZhaWxlZCBvbiBxZW11eDg2
L3g4Ni02NCwzMmJpdCBrZXJuZWwgZ2VuZXJhdGVkIG9wcm9maWxlIGRhdGEgZmlsZSBjYW4gbm90
IGJlIHJlYWQgYnkgcmVtb3RlIDY0Yml0IG9wcmVwb3J0DQoNCkRpc3RyaWJ1dGlvbiBTdXBwb3J0
DQoNCqGhDQoNCk9uIGdvaW5nDQoNCm00LW5hdGl2ZSBkb19jb21waWxlIHRhc2sgZmFpbGVkIG9u
IE9wZW5zdXNlIDEyLjIgTWlsZXN0b25lIDI7ZG9fcm9vdGZzIGZhaWwgb24gZmVkb3JhMTcgNjRi
aXQ7IHdvcmxkIGJ1aWxkaW5nIGlzIHJ1bm5pbmcuDQoNCkNvbXBsaWFuY2UNCg0KoaENCg0KR09P
RA0KDQpObyByZWdyZXNzaW9uIGlzc3VlIHdpdGggTFRQIGFuZCBQT1NJWA0KDQpDb3JlIGJ1aWxk
IHN5c3RlbQ0KDQqhoQ0KDQpHT09EDQoNCmxpYjY0IGNvcmUtc2F0by1zZGsgYnVpbGQgYWdhaW5z
dCBxZW11eDg2IGZhaWxzIGF0IHF0NC14MTEtZnJlZTsgZmFpbCB0byBmaW5kIGJibGF5ZXJzIGlm
IFRPUERJUiBpcyBub3QgImJ1aWxkIjtmb250cyBjb3JydXB0ZWQgd2l0aCBpcGsgYnVpbGQgZm9y
IDMyYml0IGNvbm5tYW4gYWdhaW5zdCBxZW11eDg2LTY0O25vIHhkZy1vcGVuIGZvciAiVmlldyBG
aWxlcyINCg0KUG93ZXIvUGVyZm9ybWFuY2UNCg0KoaENCg0KR09PRA0KDQpQb3dlciBjb25zdW1w
dGlvbiBvZiBjcm93bmJheSBpcyAyMy44MzdXDQoNClN0cmVzcw0KDQqhoQ0KDQpHT09EDQoNCkJv
dGggQ3Jhc2htZSBhbmQgSGVsbHRlc3Qgb24gSmFzcGVyZm9yZXN0OyBMVFAgb24gQmVhZ2xlYm9h
cmQgY291bGQgcGFzcyAyNCBob3VycyBzdHJlc3MgdGVzdGluZy4NCg0KSE9CDQoNCqGhDQoNCkdP
T0QNCg0KSGFuZGxlIG91dCBvZiBtZW1vcnkgZXhjZXB0aW9uDQoNCg0KDQqhoQ0KDQpDcml0aWNh
bCBidWdzLCBtb3JlIHRoYW4gNTAlIHRlc3QgY2FzZXMgYXJlIGJsb2NrZWQNCg0KoaENCg0KT25s
eSBOb3JtYWwsIE1pbm9yIG9yIEVuaGFuY2VtZW50IGJ1Z3MsIG9yIGxlc3MgdGhhbiAxMCUgdGVz
dCBjYXNlcyBmYWlsZWQNCg0KoaENCg0KTm9ybWFsLCBNYWpvciBhbmQgQ3JpdGljYWwgYnVncywg
YW5kIG1vcmUgdGhhbiAxMCUgdGVzdCBjYXNlcyBmYWlsZWQNCg0KDQoNCkRldGFpbGVkIFRlc3Qg
UmVzdWx0IGZvciBlYWNoIGNvbXBvbmVudA0KDQpUYXJnZXQNCg0KVG90YWwgVENzDQoNCk5vdCBS
dW4NCg0KUGFzc2VkDQoNCkZhaWxlZA0KDQpOb3QgdGVzdGFibGUgKEJsb2NrZWQpDQoNCmVNZW5s
b3cgU2F0by1TREsNCg0KNjUNCg0KMA0KDQo2NA0KDQoxKGJ1ZyAzMTApDQoNCjANCg0KbjQ1MCBT
YXRvLVNESw0KDQo2NA0KDQowDQoNCjY0DQoNCjANCg0KMA0KDQpDcm93bmJheS1TYXRvLVNESw0K
DQo2NQ0KDQowDQoNCjY0DQoNCjEoYnVnIDEyNTgpDQoNCjANCg0KU3VnYXJiYXkgU2F0by1TREsN
Cg0KNjkNCg0KMA0KDQo2OQ0KDQowDQoNCjANCg0KSmFzcGVyZm9yZXN0IGxzYi1TREsNCg0KMzIN
Cg0KMA0KDQozMg0KDQowDQoNCjANCg0KQmVhZ2xlYm9hcmQgU2F0by1TREsNCg0KNDANCg0KMA0K
DQo0MA0KDQowDQoNCjANCg0KUm91dGVyc3RhdGlvbnBybyBTYXRvLVNESw0KDQozMw0KDQowDQoN
CjMzDQoNCjANCg0KMA0KDQpNcGM4MzE1ZS1yZGIgU2F0by1TREsNCg0KMzYNCg0KMA0KDQozNg0K
DQowDQoNCjANCg0KUWVtdXg4Ni02NCBTYXRvDQoNCjMwDQoNCjANCg0KMjkNCg0KMShidWcgMjI4
MikNCg0KMA0KDQpRZW11eDg2LTY0IFNhdG8tU0RLDQoNCjM1DQoNCjANCg0KMzQNCg0KMShidWcg
MjI4MikNCg0KMA0KDQpRZW11eDg2IFNhdG8NCg0KMzANCg0KMA0KDQozMA0KDQowDQoNCjANCg0K
UWVtdXg4NiBTYXRvLVNESw0KDQozNQ0KDQowDQoNCjM1DQoNCjANCg0KMA0KDQpRZW11YXJtIFNh
dG8NCg0KMzANCg0KMA0KDQozMA0KDQowDQoNCjANCg0KUWVtdWFybSBTYXRvLVNESw0KDQozNQ0K
DQowDQoNCjM1DQoNCjANCg0KMA0KDQpRZW11bWlwcyBTYXRvDQoNCjMwDQoNCjANCg0KMzANCg0K
MA0KDQowDQoNClFlbXVtaXBzIFNhdG8tU0RLDQoNCjM1DQoNCjANCg0KMzUNCg0KMA0KDQowDQoN
ClFlbXVwcGMgU2F0bw0KDQozMA0KDQowDQoNCjMwDQoNCjANCg0KMA0KDQpRZW11cHBjIFNhdG8t
U0RLDQoNCjM1DQoNCjANCg0KMzUNCg0KMA0KDQowDQoNCkFEVA0KDQo0OQ0KDQowDQoNCjQyDQoN
CjcoYnVnIDE0NTIgMjA2OCAyMDY5KQ0KDQowDQoNCkNvcmUgYnVpbGQgc3lzdGVtDQoNCjY4DQoN
CjANCg0KNjYNCg0KMihidWcgMjM1NSApDQoNCjANCg0KUG93ZXIgJiBQZXJmb3JtYW5jZQ0KDQo0
DQoNCjANCg0KNA0KDQowDQoNCjANCg0KQ29tcGxpYW5jZQ0KDQoyDQoNCjANCg0KMg0KDQowDQoN
CjANCg0KU3RyZXNzDQoNCjMNCg0KMA0KDQozDQoNCjANCg0KMA0KDQpIT0INCg0KMzgNCg0KMA0K
DQozOA0KDQowDQoNCjANCg0KVG90YWwNCg0KODkzDQoNCjANCg0KODgwDQoNCjEzDQoNCjYNCg0K
DQoNCiogWW91IGNhbiBjaGVjayB0aGUgZGV0YWlsZWQgdGVzdCByZXN1bHQgaW4gYXR0YWNobWVu
dCBmb3IgZWFjaCB0YXJnZXQuDQoqKiBUaGUgZmFpbGVkL2Jsb2NrZWQgY2FzZSBudW1iZXIgaXMg
bGlzdGVkIHdpdGggZmFpbGVkIGNhc2Vzoa8gYnVnIG51bWJlci4NCg0KDQoNCkRpc3RyaWJ1dGlv
biB0ZXN0DQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCkRpc3Ry
aWJ1dGlvbg0KDQpIb3N0IEFyY2gNCg0KVGFyZ2V0IE1hY2hpbmUNCg0Kd29ybGQgYnVpbGQNCg0K
Y29yZS1zYXRvLXNkayBidWlsZA0KDQpGZWRvcmEgMTYNCg0KeDg2XzY0DQoNCnFlbXVwcGMNCg0K
UnVubmluZw0KDQqhoVBBU1MNCg0KRmVkb3JhIDE3IEFscGhhDQoNCng4Nl82NA0KDQpxZW11YXJt
DQoNClJ1bm5pbmcNCg0KRmFpbGVkKGJ1ZzIzNjMpDQoNClVidW50dSAxMS4xMA0KDQp4ODZfNjQN
Cg0KcWVtdW1pcHMNCg0KUnVubmluZw0KDQqhoVBBU1MNCg0KVWJ1bnR1IDEyLjA0IEJldGEgMQ0K
DQp4ODZfNjQNCg0KcWVtdXBwYw0KDQpSdW5uaW5nDQoNCqGhUEFTUw0KDQpPcGVuc3VzZSAxMi4x
DQoNCng4Nl82NA0KDQpxZW11bWlwcw0KDQpSdW5uaW5nDQoNCqGhUEFTUw0KDQpPcGVuc3VzZSAx
Mi4yIE1pbGVzdG9uZSAyDQoNCng4Nl82NA0KDQpxZW11eDg2LTY0DQoNClJ1bm5pbmcNCg0KRmFp
bGVkKGJ1ZzIyMDEpDQoNCkNlbnRvcyA1LjYNCg0KeDg2DQoNCnFlbXV4ODYNCg0KUnVubmluZw0K
DQqhoVBBU1MNCg0KQ2VudG9zIDYuMg0KDQp4ODZfNjQNCg0KcWVtdXBwYw0KDQpSdW5uaW5nDQoN
CqGhUEFTUw0KDQoNCg0KQ29tbWl0IEluZm9ybWF0aW9uDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQpUcmVlL0JyYW5jaDogZGVuemlsDQoNCkNvbW1pdCBpZDog
MzUxOTZmZjcwMzcyNmFkZGY3ZjQwNTFlZTA5ZDcwYmY5ZWUwYzVkMA0KDQpNZXRhIGJyYW5jaCA6
bWFzdGVyDQoNCkNvbW1pdCBpZDogODAyNGQ1NzE5MDBmYjEyNDQzMTZlYzk2ZGQ4NjdmY2I0Y2Vk
ZmM4OQ0KDQoNCg0KRm9yIEhvYg0KDQpUcmVlL0JyYW5jaDogZGVuemlsDQoNCkNvbW1pdCBpZDog
ZDIwYTI0MzEwZWI0M2ZlZDlhM2YzZTc1NzUyYzlhZDQ1YTE4Y2JlNA0KDQoNCg0KSXNzdWUgc3Vt
bWFyeQ0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQpDb21wb25l
bnQNCg0KQnVnIE51bWJlcg0KDQpUYXJnZXQgTWlsZXN0b25lDQoNClN5c3RlbSAmIENvcmUgT1MN
Cg0KU3lzdGVtIFVzYWdlDQoNCkJ1ZyAzMTAgLSBbZU1lbmxvd10gaTJjX3RyYW5zZmVyIGVycm9y
IG9uIGUtTWVubG93DQoNCjEuMQ0KDQpCdWcgMTI1OCAtW2Nyb3duYmF5XSBYb3JnIGVhdHMgbG90
cyBvZiBDUFUgdGltZSBhZnRlciBzdGFuZGJ5DQoNCjEuMSBNNA0KDQpPdGhlcg0KDQpCdWcgMTQ3
NyBGb3Rvd2FsbCBkb2Vzbid0IHJ1biBvbiBxZW11bWlwcw0KDQoxLjMNCg0KQnVnIDIyODIgLSBH
bGliLUdvYmplY3Qtd2FybmluZyB3aGVuIGxhdW5jaCBjb25ubWFuLXByb3BlcnRpZXMgb24gcWVt
dXg4Ni02NCBzYXRvL3NhdG8tc2RrIGltYWdlDQoNCjEuMiBNNA0KDQpDb3JlIGJ1aWxkIHN5c3Rl
bQ0KDQpCdWcgMjIxOSAtIFt5b2N0by1rZXJuZWxdIGZhaWwgdG8gZmluZCBiYmxheWVycyBpZiBU
T1BESVIgaXMgbm90ICJidWlsZCINCg0KMS4zDQoNCkJ1ZyAyMzU1IFttdWx0aWxpYl0gbGliNjQg
Y29yZS1zYXRvLXNkayBidWlsZCBhZ2FpbnN0IHFlbXV4ODYgZmFpbHMgYXQgcXQ0LXgxMS1mcmVl
DQoNCjEuMi4xDQoNCkJ1ZyAyMzU2IFttdWx0aWxpYl0gZm9udHMgY29ycnVwdGVkIHdpdGggaXBr
IGJ1aWxkIGZvciAzMmJpdCBjb25ubWFuIGFnYWluc3QgcWVtdXg4Ni02NA0KDQoxLjIuMQ0KDQpC
dWcgMjM2MCBQQUNLQUdFX0FSQ0hTIGNhdXNlIHdyb25nIHBhY2thZ2VzIGluc3RhbGxlZCBpbnRv
IGltYWdlDQoNCjEuMi4xDQoNCk5ldyEgQnVnIDIzNzAgLSBbQnVpbGQgQXBwbGlhbmNlXSBubyB4
ZGctb3BlbiBmb3IgIlZpZXcgRmlsZXMiDQoNCqGhDQoNCkFEVA0KDQpCdWcgMTQ1MiAzMmJpdCBr
ZXJuZWwgZ2VuZXJhdGVkIG9wcm9maWxlIGRhdGEgZmlsZSBjYW4gbm90IGJlIHJlYWQgYnkgcmVt
b3RlIDY0Yml0IG9wZXJhdGlvbg0KDQoxLjMNCg0KQnVnIDIwNjggQ2x1dHRlciBydW4gZmFpbGVk
IGluIHFlbXV4ODYveDg2LTY0IHVzaW5nIHRvb2xjaGFpbg0KDQoxLjMNCg0KQnVnIDIwNjkgQ2x1
dHRlciBydW4gZmFpbGVkIGluIHFlbXV4ODYvcWVtdXg4Nl82NCBvbiB1YnVudHUvb3BlbnN1c2Uv
ZmVkb3JhLg0KDQoxLjIuMQ0KDQpOZXchIEJ1ZyAyMzcyIFtlY2xpcHNlXUNhbid0IGltcG9ydCBv
ciBjcmVhdGUgQml0YmFrZSBDb21tYW5kZXIgUHJvamVjdCBpZiBzYW5pdHkgbmV0d29yayBjaGVj
ayBmYWlsDQoNCqGhDQoNClBvd2VyICYgUGVyZm9ybWFuY2UNCg0KUG93ZXIgY29uc3VtcHRpb24g
b2YgY3Jvd25iYXkgaXMgMjQuMDE1Vy4NCg0KoaENCg0KQnVpbGQgdGltZSBmb3IgYSBzYXRvIGlt
YWdlIG9uIENvcmUgaTcgODYwIG1hY2hpbmUgaXMgMTExIG1pbnV0ZXMuIERldGFpbGVkIHJlc3Vs
dCBvbg0KDQqhoQ0KDQpodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL1BlcmZvcm1h
bmNlX1Rlc3QNCg0KoaENCg0KQ29tcGxpYW5jZQ0KDQpMVFAgcmVzdWx0OiBodHRwczovL3dpa2ku
cG9reWxpbnV4Lm9yZy93aWtpL0xUUF9yZXN1bHQ8aHR0cHM6Ly93aWtpLnBva3lsaW51eC5vcmcv
d2lraS9MVFBfcmVzdWx0Pg0KDQqhoQ0KDQpQT1NJWCByZXN1bHQ6IGh0dHBzOi8vd2lraS5wb2t5
bGludXgub3JnL3dpa2kvUG9zaXhfcmVzdWx0PGh0dHBzOi8vd2lraS5wb2t5bGludXgub3JnL3dp
a2kvUG9zaXhfcmVzdWx0Pg0KDQpTdHJlc3MNCg0KQm90aCBDcmFzaG1lIGFuZCBIZWxsdGVzdCBv
biBKYXNwZXJmb3Jlc3QgY291bGQgcGFzcyAyNCBob3VycyBzdHJlc3MgdGVzdGluZy5MVFAgc3Ry
ZXNzIGNvdWxkIHBhc3MgMjQgaG91cnMgdGVzdGluZztDcnVzaG1lIG9uIEJlYWdsZWJvYXJkIGlz
IG5vdCB0ZXN0Lg0KDQqhoQ0KDQpEaXN0cmlidXRpb24gU3VwcG9ydA0KDQpCdWcgMjIwMSBtNC1u
YXRpdmUgZG9fY29tcGlsZSB0YXNrIGZhaWxlZCB3aGVuIGJ1aWxkaW5nIGltYWdlIG9uIG9wZW5z
dXNlMTIuMiBNaWxlc3RvbmUyDQoNCi0tDQoNCkJ1ZyAyMzYzIGNvcmUtaW1hZ2Utc2F0by1zZGsg
ZmFpbGVkIHRvIGRvIGRvX3Jvb3RmcyBvbiBmZWRvcmExNyA2NGJpdA0KDQoxLjIuMQ0KDQpIT0IN
Cg0KTmV3ISBCdWcgMjM3MSBbSG9iXUhhbmRsZSBvdXQgb2YgbWVtb3J5IGV4Y2VwdGlvbiBpbiBI
T0INCg0KoaENCg0KDQoNClZlcmlmaWVkIEJ1Z3MNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQoNCjEuIEJ1ZyAyMjIxPGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MjIyMT4gR2x4Z2VhcnMgZmFpbGVkIGluIHFlbXV4ODYtNjQgb24g
aG9zdCBGQzE2IHg4Ni4NCg0KMi4gQnVnIDIyOTk8aHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2pl
Y3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0yMjk5PiBwc2V1ZG8tbmF0aXZlc2RrOiBsaWJwc2V1ZG8u
c28gY2FuIG5vdCBmaW5kIEdMSUJDXzIuMTQgLg0KDQozLiBCdWcgMjMwOTxodHRwczovL2J1Z3pp
bGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTIzMDk+IFtSZWdyZXNzaW9uXUds
eGdlYXJzIGZhaWxlZCBpbiBxZW11eDg2L3g4Ni02NCBvbiBGZWRvcmEvb3BlbnN1c2UvdWJ1bnR1
DQoNCjQuIEJ1ZyAyMzUxPGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MjM1MT4gcHNldWRvLW5hdGl2ZXNkayBub3Qgd29ya2luZyBjb3JyZWN0bHkgb24g
RkMxNiAzMmJpdCBvciBPcGVuU3VzZSAxMi4xIDY0Yml0DQoNCjUuIEJ1ZyAyMzYxPGh0dHBzOi8v
YnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjM2MT4gVXNlciBjb3Vs
ZCBub3QgbGF1bmNoIEhvYiBvciBydW4gYml0YmFrZSBpZiBzYW5pdHkgbmV0d29yayBjaGVjayBm
YWlsDQoNCjYuIEJ1ZyAyMzYyPGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MjM2Mj4gcHNldWRvLW5hdGl2ZSBmYWlsZWQgdG8gY29tcGlsZSBvbiBvcGVu
c3VzZTEyLjEgNjRiaXQNCg0KDQoNCg0KDQpCZXN0IFJlZ2FyZHMsDQoNCkppYWp1bg0KDQoNCg0K

--_000_90741FE9B50D654690EB940EDB456C8E0DCC01SHSMSX101ccrcorpi_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:=CB=CE=CC=E5;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@=CB=CE=CC=E5";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple" style=3D"text-justify-t=
rim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Hi all<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Th=
is is the Fullpass test result for 1.2 M4 RC5. In last test circle, the 2 c=
ritical bugs(pseudo-nativesdk issue and Hob can=A1=AFt launch when sanity n=
etwork check fail) in RC4 are got fixed. There
 are only 3 new minor issues reported, one for Hob(bug 2371), which is exce=
ptional situation such as out of memory, we should handle the internal stat=
e for hob, one is for ADT that users can't import or create Bitbake Command=
er Project if sanity network check
 fail(bug 2372), another is for Build Appliance that no xdg-open in self-ho=
sted image(bug 2370).</span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"=
>All features on BPSs and QEMUs work well, with 4 old open bugs, they are
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black">i2c_transfer error on e-Menlow=
;</span><span lang=3D"EN-US">
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black">Xorg eats lots of CPU time aft=
er standby on Crownbay-emgd</span><span lang=3D"EN-US">; Fotowall doesn't r=
un on qemumips and Glib-Gobject-warning when launch connman-properties
 on qemux86-64.<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"=
>For ADT, most features perform well, except that clutter run failed on qem=
ux86/x86-64,
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black">32bit kernel generated oprofil=
e data file can=A1=AFt be read by remote 64bit operation and
</span><span lang=3D"EN-US">can't import or create BC Project if sanity net=
work check fail.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Fo=
r Hob, QA test it against latest poky/denzil branch with commit d20a24310eb=
43fed9a3f3e75752c9ad45a18cbe4, with only one minor issue found that we shou=
ld handle the exception out of memory.<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"=
>For Core build features, the only new issue reported is that no xdg-open i=
n Build Appliance. For the other features(including x32, non-GPLv3, multili=
b, yocto-bsp/kernel tools, etc), their
 status are same as RC4 test result - the major issue is that multilib coul=
d not work with -sdk and ipk build.
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">For Distribution testing, N&#43;1 testing is performed against CentOS/Ub=
untu/Opensuse/Fedora.<span style=3D"color:black"> The build issues
 on Opensuse 12.2 Milestone 2 and Fedora 17 Alpha still exist</span>, world=
 build on all distributions is still on-going. We will double check bug 236=
3 against Fedora 17 Beta.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">For Build performance, one qemux86 sato build on a Core i7 machine costs=
 111 minutes, which is almost the same as the result in 1.2
 M4 RC4 build(110 minutes)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Note: The test report is archived @
<a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.2_Milestone_Test_Repo=
rt">https://wiki.yoctoproject.org/wiki/Yocto_1.2_Milestone_Test_Report</a>.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Test Summary:<o:p></o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;">-----------------------=
----------------<o:p></o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"939" style=3D"width:704.0pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"939" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"widt=
h:704.0pt;border:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Test Result Summary</span></b><b><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"213" nowrap=3D"" valign=3D"bottom" style=3D"width:159.85pt;bor=
der:solid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black">Component</span></b><b><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black">Target</span></b><b><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black">Status</span></b><b><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black">Comments</span></b><b><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"213" nowrap=3D"" rowspan=3D"8" style=3D"width:159.85pt;border:=
solid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">BSP</span></b><b><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">eMenlow</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">I2C_transfer error</span><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Blacksand</span><span lang=3D"EN-US" style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Everything runs well</span><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Crownbay-emgd</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Xorg eat lots of cup's resource after standby;<=
/span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Sugarbay</span><span lang=3D"EN-US" style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Everything runs well</span><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Jasperforest-lsb</span><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Everything runs well</span><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Beagleboard</span><span lang=3D"EN-US" style=3D=
"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Everything runs well</span><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Routerstationpro</span><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Everything runs well</span><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Mpc8315e-rdb</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Everything runs well</span><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"213" nowrap=3D"" rowspan=3D"5" style=3D"width:159.85pt;border:=
solid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">QEMU</span></b><b><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">qemux86</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Everything runs well</span><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">qemux86-64</span><span lang=3D"EN-US" style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color=
:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Glib-Gobject-warning when launch connman-proper=
ties</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">qemuarm</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Everything runs well</span><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">qemuppc</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Everything runs well</span><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"163" nowrap=3D"" valign=3D"bottom" style=3D"width:121.9pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">qemumips</span><span lang=3D"EN-US" style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" valign=3D"bottom" style=3D"width:67.65pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Everything runs well</span><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"213" nowrap=3D"" style=3D"width:159.85pt;border:solid black 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">ADT</span></b><b><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"163" nowrap=3D"" style=3D"width:121.9pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:11.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" style=3D"width:67.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#FFC000;padding:0cm 5.4pt 0cm 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">BUGGY</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Clutter failed on qemux86/x86-64,32bit kernel g=
enerated oprofile data file can not be read by remote 64bit opreport</span>=
<span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"213" nowrap=3D"" style=3D"width:159.85pt;border:solid black 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Distribution Support</span></b><b><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"163" nowrap=3D"" style=3D"width:121.9pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:11.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" style=3D"width:67.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">On going</span><span lang=3D"EN-US" style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">m4-native do_compile task failed on Opensuse 12=
.2 Milestone 2;do_rootfs fail on fedora17 64bit; world building
 is running.</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"213" nowrap=3D"" style=3D"width:159.85pt;border:solid black 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Compliance</span></b><b><span lang=3D"EN-=
US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"163" nowrap=3D"" style=3D"width:121.9pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:11.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" style=3D"width:67.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">No regression issue with LTP and POSIX</span><s=
pan lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:43.5pt">
<td width=3D"213" nowrap=3D"" style=3D"width:159.85pt;border:solid black 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:43.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Core build system</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"163" nowrap=3D"" style=3D"width:121.9pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:43.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:11.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" style=3D"width:67.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:43.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:43.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">lib64 core-sato-sdk build against qemux86 fails=
 at qt4-x11-free; fail to find bblayers if TOPDIR is not &quot;build&quot;;=
fonts
 corrupted with ipk build for 32bit connman against qemux86-64;no xdg-open =
for &quot;View Files&quot;</span><span lang=3D"EN-US" style=3D"font-size:10=
.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"213" nowrap=3D"" style=3D"width:159.85pt;border:solid black 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Power/Performance</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"163" nowrap=3D"" style=3D"width:121.9pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:11.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" style=3D"width:67.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Power consumption of crownbay is 23.837W</span>=
<span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"213" nowrap=3D"" style=3D"width:159.85pt;border:solid black 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Stress</span></b><b><span lang=3D"EN-US" =
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&qu=
ot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"163" nowrap=3D"" style=3D"width:121.9pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:11.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" style=3D"width:67.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Both Crashme and Helltest on Jasperforest; LTP =
on Beagleboard could pass 24 hours stress testing.</span><span lang=3D"EN-U=
S" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif=
&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"213" nowrap=3D"" style=3D"width:159.85pt;border:solid black 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">HOB</span></b><b><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"163" nowrap=3D"" style=3D"width:121.9pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:11.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"90" nowrap=3D"" style=3D"width:67.65pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">GOOD</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"473" valign=3D"bottom" style=3D"width:354.6pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Handle out of memory exception</span><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"674" style=3D"width:505.6pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:red;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"506" nowrap=3D"" valign=3D"bottom" style=3D"width:379.8pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Critical bugs, more than 50% test cases are blo=
cked</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#9BBB59;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"506" nowrap=3D"" valign=3D"bottom" style=3D"width:379.8pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Only Normal, Minor or Enhancement bugs, or less=
 than 10% test cases failed</span><span lang=3D"EN-US" style=3D"font-size:1=
0.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:=
p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#FFC000;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"506" nowrap=3D"" valign=3D"bottom" style=3D"width:379.8pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Normal, Major and Critical bugs, and more than =
10% test cases failed</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"652" style=3D"width:489.0pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"652" nowrap=3D"" colspan=3D"6" valign=3D"bottom" style=3D"widt=
h:489.0pt;border:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Detailed Test Result for each component</=
span></b><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p=
>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Target</span></b><b><span lang=3D"EN-US" =
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&qu=
ot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" style=3D"width:52.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Total TCs</span></b><span lang=3D"EN-US" =
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&qu=
ot;;color:black">
</span><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Not Run</span></b><b><span lang=3D"EN-US"=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Passed</span></b><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black">
</span><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Failed</span></b><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black">
</span><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Not testable (Blocked)</span></b><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black">
</span><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">eMenlow Sato-SDK</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" style=3D"width:52.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">65</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">64</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">1(bug 310)</span><span lang=3D"EN-US" style=3D=
"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">n450 Sato-SDK</span></b><b><span lang=3D"=
EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" style=3D"width:52.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">64</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">64</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Crownbay-Sato-SDK</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" style=3D"width:52.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">65</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">64</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">1(bug 1258)</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Sugarbay Sato-SDK</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" style=3D"width:52.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">69</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">69</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Jasperforest lsb-SDK</span></b><b><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" style=3D"width:52.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">32</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">32</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Beagleboard Sato-SDK</span></b><b><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" style=3D"width:52.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">40</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">40</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"167" style=3D"width:125.0pt;border:solid black 1.0pt;border-to=
p:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Routerstationpro Sato-SDK</span></b><b><s=
pan lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" style=3D"width:52.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">33</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">33</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" style=3D"width:125.0pt;border:solid black 1.0pt;border-to=
p:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Mpc8315e-rdb Sato-SDK</span></b><b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" style=3D"width:52.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">36</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">36</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Qemux86-64 Sato</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">30</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">29</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">1(bug 2282)</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Qemux86-64 Sato-SDK</span></b><b><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">35</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">34</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">1(bug 2282)</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Qemux86 Sato</span></b><b><span lang=3D"E=
N-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">30</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">30</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Qemux86 Sato-SDK</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">35</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" style=3D"width:48.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">35</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Qemuarm Sato</span></b><b><span lang=3D"E=
N-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">30</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">30</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Qemuarm Sato-SDK</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">35</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">35</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Qemumips Sato</span></b><b><span lang=3D"=
EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">30</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">30</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Qemumips Sato-SDK</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">35</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">35</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Qemuppc Sato</span></b><b><span lang=3D"E=
N-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">30</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">30</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Qemuppc Sato-SDK</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">35</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">35</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">ADT</span></b><b><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">49</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">42</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">7(bug 1452 2068 2069)</span><span lang=3D"EN-U=
S" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif=
&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Core build system</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">68</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">66</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">2(bug 2355 )</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Power &amp; Performance</span></b><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">4</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">4</span><span lang=3D"EN-US" style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#00=
B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Compliance</span></b><b><span lang=3D"EN-=
US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">2</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">2</span><span lang=3D"EN-US" style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#00=
B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Stress</span></b><b><span lang=3D"EN-US" =
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&qu=
ot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">3</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">3</span><span lang=3D"EN-US" style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#00=
B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">HOB</span></b><b><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">38</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:#00B050">38</span><span lang=3D"EN-US" style=3D"fon=
t-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0=
0B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" valign=3D"bottom" style=3D"width:100.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">0</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Total</span></b><b><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"69" nowrap=3D"" style=3D"width:52.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">893</span><span lang=3D"EN-US" style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
<td width=3D"64" nowrap=3D"" style=3D"width:48.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">0</span><span lang=3D"EN-US" style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">880</span><span lang=3D"EN-US" style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">13</span><span lang=3D"EN-US" style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><=
o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">6</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o=
:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoPlainText"><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span=
></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;">* You can check the det=
ailed test result in attachment for each target.<br>
** The failed/blocked case number is listed with failed cases=A1=AF bug num=
ber.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span=
></p>
<p class=3D"MsoPlainText"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Distribu=
tion test<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;">-----------------------=
---------------<o:p></o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"547" style=3D"width:410.0pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"139" nowrap=3D"" valign=3D"bottom" style=3D"width:104.0pt;bord=
er:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Distribution</span></b><b><span lang=3D"E=
N-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" valign=3D"bottom" style=3D"width:54.0pt;border=
:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height=
:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black">Host Arch</span></b><b><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"115" nowrap=3D"" valign=3D"bottom" style=3D"width:86.0pt;borde=
r:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Target Machine</span></b><b><span lang=3D=
"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"84" nowrap=3D"" valign=3D"bottom" style=3D"width:63.0pt;border=
:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height=
:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">world build</span></b><b><span lang=3D"EN=
-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"137" nowrap=3D"" valign=3D"bottom" style=3D"width:103.0pt;bord=
er:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">core-sato-sdk build</span></b><b><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"139" nowrap=3D"" valign=3D"bottom" style=3D"width:104.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">Fedora 16</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" valign=3D"bottom" style=3D"width:54.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">x86_64</span><span lang=3D"EN-US" style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"115" nowrap=3D"" valign=3D"bottom" style=3D"width:86.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">qemuppc</span><span lang=3D"EN-US" style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color=
:black"><o:p></o:p></span></p>
</td>
<td width=3D"84" nowrap=3D"" valign=3D"bottom" style=3D"width:63.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">Running</span><span lang=3D"EN-US" style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:r=
ed"><o:p></o:p></span></p>
</td>
<td width=3D"137" nowrap=3D"" valign=3D"bottom" style=3D"width:103.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black">PASS</span><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"139" nowrap=3D"" valign=3D"bottom" style=3D"width:104.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">Fedora 17 Alpha</span><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" valign=3D"bottom" style=3D"width:54.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">x86_64</span><span lang=3D"EN-US" style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"115" nowrap=3D"" valign=3D"bottom" style=3D"width:86.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">qemuarm</span><span lang=3D"EN-US" style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color=
:black"><o:p></o:p></span></p>
</td>
<td width=3D"84" nowrap=3D"" valign=3D"bottom" style=3D"width:63.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">Running</span><span lang=3D"EN-US" style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:r=
ed"><o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">Failed(bug2363)</span><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"139" style=3D"width:104.0pt;border:solid black 1.0pt;border-to=
p:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">Ubuntu 11.10</span><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" valign=3D"bottom" style=3D"width:54.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">x86_64</span><span lang=3D"EN-US" style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"115" nowrap=3D"" valign=3D"bottom" style=3D"width:86.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">qemumips</span><span lang=3D"EN-US" style=3D=
"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:black"><o:p></o:p></span></p>
</td>
<td width=3D"84" nowrap=3D"" valign=3D"bottom" style=3D"width:63.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">Running</span><span lang=3D"EN-US" style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:r=
ed"><o:p></o:p></span></p>
</td>
<td width=3D"137" nowrap=3D"" valign=3D"bottom" style=3D"width:103.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black">PASS</span><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"139" style=3D"width:104.0pt;border:solid black 1.0pt;border-to=
p:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">Ubuntu 12.04 Beta 1</span><span lang=3D"EN-U=
S" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif=
&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" valign=3D"bottom" style=3D"width:54.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">x86_64</span><span lang=3D"EN-US" style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"115" nowrap=3D"" valign=3D"bottom" style=3D"width:86.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">qemuppc</span><span lang=3D"EN-US" style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color=
:black"><o:p></o:p></span></p>
</td>
<td width=3D"84" nowrap=3D"" valign=3D"bottom" style=3D"width:63.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">Running</span><span lang=3D"EN-US" style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:r=
ed"><o:p></o:p></span></p>
</td>
<td width=3D"137" nowrap=3D"" valign=3D"bottom" style=3D"width:103.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black">PASS</span><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"139" nowrap=3D"" valign=3D"bottom" style=3D"width:104.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">Opensuse 12.1</span><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" valign=3D"bottom" style=3D"width:54.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">x86_64</span><span lang=3D"EN-US" style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"115" nowrap=3D"" valign=3D"bottom" style=3D"width:86.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">qemumips</span><span lang=3D"EN-US" style=3D=
"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:black"><o:p></o:p></span></p>
</td>
<td width=3D"84" nowrap=3D"" valign=3D"bottom" style=3D"width:63.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">Running</span><span lang=3D"EN-US" style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:r=
ed"><o:p></o:p></span></p>
</td>
<td width=3D"137" nowrap=3D"" valign=3D"bottom" style=3D"width:103.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black">PASS</span><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"139" style=3D"width:104.0pt;border:solid black 1.0pt;border-to=
p:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">Opensuse 12.2 Milestone 2</span><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" valign=3D"bottom" style=3D"width:54.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">x86_64</span><span lang=3D"EN-US" style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"115" nowrap=3D"" valign=3D"bottom" style=3D"width:86.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">qemux86-64</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td width=3D"84" nowrap=3D"" valign=3D"bottom" style=3D"width:63.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">Running</span><span lang=3D"EN-US" style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:r=
ed"><o:p></o:p></span></p>
</td>
<td width=3D"137" style=3D"width:103.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">Failed(bug2201)</span><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"139" style=3D"width:104.0pt;border:solid black 1.0pt;border-to=
p:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">Centos 5.6</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" valign=3D"bottom" style=3D"width:54.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">x86</span><span lang=3D"EN-US" style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
<td width=3D"115" nowrap=3D"" valign=3D"bottom" style=3D"width:86.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">qemux86</span><span lang=3D"EN-US" style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color=
:black"><o:p></o:p></span></p>
</td>
<td width=3D"84" nowrap=3D"" valign=3D"bottom" style=3D"width:63.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">Running</span><span lang=3D"EN-US" style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:r=
ed"><o:p></o:p></span></p>
</td>
<td width=3D"137" nowrap=3D"" valign=3D"bottom" style=3D"width:103.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black">PASS</span><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black"><o:p></o:p></sp=
an></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"139" style=3D"width:104.0pt;border:solid black 1.0pt;border-to=
p:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">Centos 6.2</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" valign=3D"bottom" style=3D"width:54.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">x86_64</span><span lang=3D"EN-US" style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"115" nowrap=3D"" valign=3D"bottom" style=3D"width:86.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black">qemuppc</span><span lang=3D"EN-US" style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color=
:black"><o:p></o:p></span></p>
</td>
<td width=3D"84" nowrap=3D"" valign=3D"bottom" style=3D"width:63.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:red">Running</span><span lang=3D"EN-US" style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:r=
ed"><o:p></o:p></span></p>
</td>
<td width=3D"137" nowrap=3D"" valign=3D"bottom" style=3D"width:103.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black">PASS</span><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black"><o:p></o:p></sp=
an></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoPlainText"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Commit Information<o=
:p></o:p></span></b></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;">---------------------------------------&nbsp;<o:p></o:p><=
/span></b></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US">Tree/Branch: denzil</span><span lang=3D"EN-US=
"><o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US">Commit id: 35196ff703726addf7f4051ee09d70bf9e=
e0c5d0<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US">Meta branch :master<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US">Commit id: 8024d571900fb1244316ec96dd867fcb4c=
edfc89<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US">For Hob<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US">Tree/Branch: denzil<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Commit id: d20a24310eb43fed9a3f=
3e75752c9ad45a18cbe4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Issue summary<o:p></o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;">-----------------------=
---------------<o:p></o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"979" style=3D"width:734.0pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" valign=3D"bottom" style=3D"widt=
h:166.0pt;border:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Component</span></b><b><span lang=3D"EN-U=
S" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif=
&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:solid bla=
ck 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Bug Number</span></b><b><span lang=3D"EN-=
US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:solid black 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.=
0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span la=
ng=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black">Target Milestone</span></b><b><span lang=3D"E=
N-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"125" nowrap=3D"" rowspan=3D"4" style=3D"width:93.45pt;border:s=
olid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">System &amp; Core OS</span></b><b><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"2" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">System Usage</span></b><b><span lang=3D"E=
N-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 310 - [eMenlow] i2c_transfer error on e-Men=
low</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.1</span><span lang=3D"EN-US" style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 1258 -[crownbay] Xorg eats lots of CPU time=
 after standby</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></spa=
n></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.1 M4</span><span lang=3D"EN-US" style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"97" nowrap=3D"" rowspan=3D"2" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Other</span></b><b><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 1477 Fotowall doesn't run on qemumips</span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.3</span><span lang=3D"EN-US" style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 2282 - Glib-Gobject-warning when launch con=
nman-properties on qemux86-64 sato/sato-sdk image</span><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.2 M4</span><span lang=3D"EN-US" style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"5" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Core build system</span></b><b><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 2219 - [yocto-kernel] fail to find bblayers=
 if TOPDIR is not &quot;build&quot;
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.3</span><span lang=3D"EN-US" style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug</span><span lang=3D"EN-US" style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red">
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black">2355 [multilib] lib64 core-sat=
o-sdk build against qemux86 fails at qt4-x11-free</span><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.2.1</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 2356 [multilib] fonts corrupted with ipk bu=
ild for 32bit connman against qemux86-64</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.2.1</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 2360 PACKAGE_ARCHS cause wrong packages ins=
talled into image</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.2.1</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:red">New!
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black">Bug 2370 - [Build Appliance] n=
o xdg-open for &quot;View Files&quot;</span><span lang=3D"EN-US" style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
red"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"4" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">ADT</span></b><b><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 1452 32bit kernel generated oprofile data f=
ile can not be read by remote 64bit operation</span><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.3</span><span lang=3D"EN-US" style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 2068 Clutter run failed in qemux86/x86-64 u=
sing toolchain</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></spa=
n></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.3</span><span lang=3D"EN-US" style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 2069 Clutter run failed in qemux86/qemux86_=
64 on ubuntu/opensuse/fedora.
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.2.1</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:red">New!</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
 Bug 2372 [eclipse]Can't
 import or create Bitbake Commander Project if sanity network check fail</s=
pan><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"3" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Power &amp; Performance</span></b><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Power consumption of crownbay is 24.015W.</span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Build time for a sato image on Core i7 860 mach=
ine is 111 minutes. Detailed result on</span><span lang=3D"EN-US" style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color=
:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><u><span la=
ng=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:blue"><a href=3D"https://wiki.yoctoproject.org/wiki/=
Performance_Test">https://wiki.yoctoproject.org/wiki/Performance_Test</a></=
span></u><u><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:blue"><o:p></o:p></span></u></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"2" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Compliance</span></b><b><span lang=3D"EN-=
US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><u><span la=
ng=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:blue"><a href=3D"https://wiki.pokylinux.org/wiki/LTP=
_result">LTP result: https://wiki.pokylinux.org/wiki/LTP_result</a></span><=
/u><u><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:blue"><o:p></o:p></span></u></p>
</td>
<td width=3D"113" nowrap=3D"" rowspan=3D"2" style=3D"width:85.0pt;border-to=
p:none;border-left:solid black 1.0pt;border-bottom:none;border-right:solid =
black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:11.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><u><span la=
ng=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:blue"><a href=3D"https://wiki.pokylinux.org/wiki/Pos=
ix_result">POSIX result: https://wiki.pokylinux.org/wiki/Posix_result</a></=
span></u><u><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:blue"><o:p></o:p></span></u></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" style=3D"width:166.0pt;border:s=
olid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Stress</span></b><b><span lang=3D"EN-US" =
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&qu=
ot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"644" valign=3D"bottom" style=3D"width:483.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Both Crashme and Helltest on Jasperforest could=
 pass 24 hours stress testing.LTP stress could pass 24 hours testing;Crushm=
e
 on Beagleboard is not test.</span><span lang=3D"EN-US" style=3D"font-size:=
10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o=
:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26=
.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"2" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">Distribution Support</span></b><b><span l=
ang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;bord=
er:none;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
5.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 2201 m4-native do_compile task failed when =
building image on opensuse12.2 Milestone2</span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">--</span><span lang=3D"EN-US" style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;bord=
er:none;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
5.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">Bug 2363 core-image-sato-sdk failed to do do_ro=
otfs on fedora17 64bit</span><span lang=3D"EN-US" style=3D"font-size:10.0pt=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:black">1.2.1</span><span lang=3D"EN-US" style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" style=3D"width:166.0pt;border:s=
olid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:black">HOB</span></b><b><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"644" nowrap=3D"" valign=3D"bottom" style=3D"width:483.0pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:red">New!
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black">Bug 2371 [Hob]Handle out of me=
mory exception in HOB</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black">=A1=A1</span><sp=
an lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span=
></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Verified Bugs<br>
-----------------------------------<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1. <a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D2221">
Bug 2221</a> Glxgears failed in qemux86-64 on host FC16 x86.</span><span la=
ng=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">2. <a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D2299">
Bug 2299</a> pseudo-nativesdk: libpseudo.so can not find GLIBC_2.14 .<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">3. <a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D2309">
Bug 2309</a> [Regression]Glxgears failed in qemux86/x86-64 on Fedora/opensu=
se/ubuntu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">4. <a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D2351">
Bug 2351</a> pseudo-nativesdk not working correctly on FC16 32bit or OpenSu=
se 12.1 64bit<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">5. <a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D2361">
Bug 2361</a> User could not launch Hob or run bitbake if sanity network che=
ck fail<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">6. <a href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D2362">
Bug 2362</a> pseudo-native failed to compile on opensuse12.1 64bit<o:p></o:=
p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Best Regards,<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Jiajun<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_90741FE9B50D654690EB940EDB456C8E0DCC01SHSMSX101ccrcorpi_--

--_004_90741FE9B50D654690EB940EDB456C8E0DCC01SHSMSX101ccrcorpi_
Content-Type: application/oleobject;
	name="Yocto 1.2M4  RC5 detail_testreport_Fullpass.ods"
Content-Description: Yocto 1.2M4  RC5 detail_testreport_Fullpass.ods
Content-Disposition: attachment;
	filename="Yocto 1.2M4  RC5 detail_testreport_Fullpass.ods"; size=28049;
	creation-date="Fri, 27 Apr 2012 15:33:54 GMT";
	modification-date="Fri, 27 Apr 2012 15:33:54 GMT"
Content-Transfer-Encoding: base64

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
bAAAAAA=

--_004_90741FE9B50D654690EB940EDB456C8E0DCC01SHSMSX101ccrcorpi_--

--_005_E16513A01CAAFF40B65178C63CE45EEC1914508CIRSMSX102gercor_--
