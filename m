Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6724EE00496
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 14:02:48 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jan 2013 14:02:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,541,1355126400"; 
	d="scan'208,217";a="276758289"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga002.jf.intel.com with ESMTP; 25 Jan 2013 14:02:47 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.214]) with mapi id
	14.01.0355.002; Fri, 25 Jan 2013 14:02:46 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "Palalau, AlexandruX" <alexandrux.palalau@intel.com>, "Flanagan,
	Elizabeth" <elizabeth.flanagan@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Thread-Topic: Fullpass Test Report for Yocto 1.4 20130115 Build 
Thread-Index: Ac36PWvC7865f9PSQVuOxElrTAxFMQBCfV2w
Date: Fri, 25 Jan 2013 22:02:46 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A598A8581@ORSMSX101.amr.corp.intel.com>
References: <A45D4FDC92525B4F8A75E1B55399F328C19B00@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <A45D4FDC92525B4F8A75E1B55399F328C19B00@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fullpass Test Report for Yocto 1.4 20130115 Build
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
X-List-Received-Date: Fri, 25 Jan 2013 22:02:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A598A8581ORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A598A8581ORSMSX101amrcor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi Saul/Beth,

What is the issue for the 3 =1B$B!F=1B(Bno image=1B$B!G=1B(B issue (marked =
red) in the report? Do we have a solution now?

Thanks!
Song

From: Palalau, AlexandruX
Sent: Thursday, January 24, 2013 7:23 AM
To: yocto@yoctoproject.org
Cc: Liu, Song
Subject: Fullpass Test Report for Yocto 1.4 20130115 Build

Hello,
Here is the fullpass test report for Yocto 1.4 20130115 build. The testings=
 for qemuppc, mpc8315e, and p1022ds are blocked since the images didn't bui=
ld out due to some known issues (oprofile and libxml failures).
We have some new bugs regarding CoreBuildSystem (Bug 3745. 3756, 3757). Als=
o, there are some problems regarding smart (Bug 3768, 3769). No problems un=
der qemu this time.
Attached you can find the full test result.



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

BLOCK

No image built out


P1022DS

BLOCK

No image built out

QEMU

qemuarm

GOOD

Everything runs well



qemux86

GOOD

Everything runs well



qemux86-64

GOOD

Everything runs well

=1B$B!!=1B(B

qemuppc

GOOD

Everything runs well

=1B$B!!=1B(B

qemumips

BLOCK

No image built out

Core Build System

BUGGY

gtk-directfb image build failed; disk space monitoring gives error ;Bitbake=
 remake/remake-native check; Compile and load kernel; Crosstap script check=
.

ADT Toolchain

BUGGY

gtk+-2.0 missing from the userbuilt toolchain; autoreconf run failed

Compliance

Not running

Stress

Beagleboard

Not running


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

0

0

45

P1022DS

42

0

0

0

42 (bug 3476)

Qemux86

82

0

82

0

0

Qemux86-64

82

0

82

0

0

Qemuarm Sato

42

0

42

0

0

Qemuarm Sato-SDK

47

0

47

0

0

Qemumips Sato

42

0

42

0

0

Qemumips Sato-SDK

47

0

47

0

0

Qemuppc Sato

42

0

0

0

42

Qemuppc Sato-SDK

47

0

0

0

47

Core Build System

78

2

72

4 (bug 3523,3745, 3642)

2

ADT Toolchain

22

0

20

2 (bug 3338, 3758)

0

HOB

38

0

37

1(3001)

0

Compliance

2

2

0

0

0

Stress

2

2

0

0

0

Total

769

6

580

7

178


* You can check the detailed test result in attachment for each target.
** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.


Commit information
--------------------------------
Location: http://autobuilder.yoctoproject.org/pub/nightly/20130115-2
Tree/Branch: poky/master
Commit: 9eb88ceb39b7d0b8ddc6487e61ce8edadef10ec4


Issue Summary
-----------------------------------
Component

Bug Number

Target Milestone

System & Core OS

System Usage

New! 3769 smart: some packages can not be reinstalled
New! 3768 smart: --yaml option doesn't work

1.4
1.4

Others

Bug 3476 Autobuilder failing on fsl-ppc

1.4 M2

Core Build System

Bug 3642 gtk-demo fails to run for gtk-directfb image
Bug 3523 Disk space monitoring gives error: Unknown event
New! Bug 3745 Bitbake remake/remake-native check fail
New! Bug 3757 Compile and load kernel fail
New! Bug 3756 Crosstap script fail

1.4
1.4
1.4
1.4 M3
----

ADT Toolchain

Bug 3338 iptables-1.4.15: autoreconf run failed on gmae-toolchain
Bug 3758 Package gtk+-2.0 missing from the userbuilt toolchain

1.4 M2
1.4 M3

Compliance

Not running

Stress

Not running





Verified Bugs
-----------------------------------
1. [Bug 3643]<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D3643>: smart =
config --help error: Invalid command 'config'
2. [Bug 3646]<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D3646>: non GP=
Lv3 build failure with core-image-basic


Br,
Alexandru Palalau
QA contractor Yocto Project

--_000_7E680CB2A76BB8438D08CF13C09FC53A598A8581ORSMSX101amrcor_
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Saul/Beth,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">What is the issue for the=
 3 =1B$B!F=1B(Bno image=1B$B!G=1B(B issue (marked red) in the report? Do we=
 have a solution now?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks!<o:p></o:p></span>=
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
<b>Sent:</b> Thursday, January 24, 2013 7:23 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Cc:</b> Liu, Song<br>
<b>Subject:</b> Fullpass Test Report for Yocto 1.4 20130115 Build <o:p></o:=
p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Hello,<br>
Here is the fullpass test report for Yocto 1.4 20130115 build. The testings=
 for qemuppc, mpc8315e, and p1022ds are blocked since the images didn't bui=
ld out due to some known issues (oprofile and libxml failures).</span><span=
 style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">We have some new bu=
gs regarding CoreBuildSystem (Bug 3745. 3756, 3757). Also, there are some p=
roblems regarding smart (Bug 3768, 3769). No problems under qemu this time.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Attached you can fi=
nd the full test result.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><br>
<br>
<b>Test Summary<br>
-------------------------</b><o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0" width=3D"786" style=3D"width:589.2pt">
<tbody>
<tr>
<td colspan=3D"4" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
 Result Summary</b><o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
onent</b> <o:p>
</o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Targ=
et</b> <o:p>
</o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Stat=
us</b> <o:p>
</o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comm=
ents</b> <o:p>
</o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>BSP</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Beagleboard<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"background:green;padding:.75pt .75pt .75pt .75p=
t">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN">=1B$B!!=1B(B</span><o:p></o:p><=
/p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Routerstationpro<o:p></o:p></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN">=1B$B!!=1B(B</span><o:p></o:p><=
/p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Mpc8315e-rdb<o:p></o:p></p>
</td>
<td style=3D"background:red;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BLOCK<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">No image built out<o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">P1022DS<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"background:red;padding:.75pt .75pt .75pt .75pt"=
>
<p class=3D"MsoNormal">BLOCK<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">No image built out<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>QEMU</b><o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">qemuarm<o:p></o:p></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">qemux86<o:p></o:p></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">qemux86-64<o:p></o:p></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN">=1B$B!!=1B(B</span><o:p></o:p><=
/p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">qemuppc<o:p></o:p></p>
</td>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Everything runs well<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"ZH-CN">=1B$B!!=1B(B</span><o:p></o:p><=
/p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">qemumips<o:p></o:p></p>
</td>
<td style=3D"background:red;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BLOCK<o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">No image built out<o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>Core Build System</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"background:orange;padding:.75pt .75pt .75pt .75=
pt">
<p class=3D"MsoNormal">BUGGY<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">gtk-directfb image build failed; disk space monitori=
ng gives error
<span style=3D"color:#1F497D">;Bitbake remake/remake-native check; Compile =
and load kernel; Crosstap script check.</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>ADT Toolchain</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"background:orange;padding:.75pt .75pt .75pt .75=
pt">
<p class=3D"MsoNormal">BUGGY<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">gtk&#43;-2.0 missing from the userbuilt toolchain; a=
utoreconf run failed
<o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:13.5pt">C</span>omplianc=
e</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Not running <o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>Stress</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Beagleboard<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Not running<o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td style=3D"background:red;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BLOCK <o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Critical bugs, more than 50% test cases are blocked =
<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD <o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Only Normal, Minor or Enhancement bugs, less than 10=
% test cases failed
<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"background:orange;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BUGGY <o:p></o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Normal, Major and Critical bugs, more than 10% test =
cases failed
<o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td colspan=3D"6" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Deta=
iled Test Result for each component</b><o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Targ=
et</b> <o:p>
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Tota=
l TCs</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Not =
Run</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Pass=
ed</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Fail=
ed</b><o:p></o:p></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt;background:=
rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Not =
testable (Blocked)</b><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Beag=
leboard Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">66<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">66<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Rout=
erstationpro Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">43<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">43<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Mpc8=
315e-rdb Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">45<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">45</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>P102=
2DS</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">42<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">42 (bug 3476)</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
x86<o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">82<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">82<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
x86-64<o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">82<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">82<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
arm Sato</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">42<o:p>=
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">42<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
arm Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">47<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">47<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
mips Sato</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">42<o:p>=
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">42<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
mips Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">47<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">47<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
ppc Sato</b><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">42<o:p>=
</o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">42</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Qemu=
ppc Sato-SDK</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">47<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">47</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Core=
 Build System</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:windowtext">78<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:windowtext">2<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">72<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">4 (bug 3523,3745, 3642)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>ADT =
Toolchain</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">22<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">20<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">2 (bug 3338, 3758)</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>HOB<=
o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">38<o:p>=
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">0<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">37<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">1(3001)<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
liance</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Stre=
ss</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">2<o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#00B050">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">0</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Tota=
l</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#1F497D">769</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#1F497D">6</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#1F497D">580</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">7</span><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:red">178</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><br>
* You can check the detailed test result in attachment for each target.<br>
** The failed/blocked case number is listed with failed cases<span lang=3D"=
ZH-CN">=1B$B!G=1B(B</span> bug number.<br>
<br>
<br>
<b>Commit information<br>
--------------------------------</b><br>
Location: <a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/201301=
15-2">http://autobuilder.yoctoproject.org/pub/nightly/20130115-2</a><br>
Tree/Branch: poky/master<br>
Commit: 9eb88ceb39b7d0b8ddc6487e61ce8edadef10ec4<br>
<br>
<b><br>
Issue Summary<br>
-----------------------------------</b><o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td colspan=3D"2" style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75=
pt;background-position-x:0%;background-position-y:0%;background-attachment:=
scroll">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
onent</b><o:p></o:p></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt;background-=
position-x:0%;background-position-y:0%;background-attachment:scroll">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Bug =
Number</b> <o:p>
</o:p></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt;background:rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Targ=
et Milestone</b><o:p></o:p></p>
</td>
</tr>
<tr>
<td rowspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>System &amp; Core OS</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Syst=
em Usage</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"color:red">New!</span> 3769 smart: so=
me packages can not be reinstalled<br>
<span style=3D"color:red">New!</span> 3768 smart: --yaml option doesn't wor=
k<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">1.4<br>
1.4 <o:p></o:p></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Othe=
rs</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Bug 3476 Autobuilder failing on fsl-ppc&nbsp; <o:p><=
/o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">1.4 M2<o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Core=
 Build System</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Bug 3642 gtk-demo fails to run for gtk-directfb imag=
e<br>
Bug 3523 Disk space monitoring gives error: Unknown event <span style=3D"co=
lor:#1F497D">
<br>
</span><span style=3D"color:red">New!</span><span style=3D"color:#1F497D"> =
</span><span style=3D"color:windowtext">Bug 3745 Bitbake remake/remake-nati=
ve check fail</span><span style=3D"color:#1F497D"><br>
</span><span style=3D"color:red">New!</span><span style=3D"color:#1F497D"> =
</span><span style=3D"color:windowtext">Bug 3757 Compile and load kernel fa=
il</span><span style=3D"color:#1F497D"><br>
</span><span style=3D"color:red">New!</span><span style=3D"color:#1F497D"> =
</span><span style=3D"color:windowtext">Bug 3756 Crosstap script fail</span=
><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">1.4<br>
1.4 <span style=3D"color:#1F497D"><br>
</span><span style=3D"color:windowtext">1.4<br>
1.4 M3<br>
</span><span style=3D"color:#1F497D">----</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>ADT =
Toolchain</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Bug 3338 iptables-1.4.15: autoreconf run failed on g=
mae-toolchain<br>
Bug 3758 Package gtk&#43;-2.0 missing from the userbuilt toolchain<o:p></o:=
p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">1.4 M2<br>
1.4 M3 <o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Comp=
liance</b><o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Not running<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt"></td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Stre=
ss</b> <o:p>
</o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Not running<o:p></o:p></p>
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
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
<br>
<br>
<b>Verified Bugs<br>
-----------------------------------<br>
</b>1. <a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D3643"><b>=
[Bug 3643]</b></a>: smart config --help error: Invalid command 'config'<br>
2. <a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D3646"><b>[Bug=
 3646]</b></a>: non GPLv3 build failure with core-image-basic<br>
<br>
<br>
<span style=3D"color:#1F497D">Br,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D">Alexandru Palalau<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D">QA contractor Yocto Project</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A598A8581ORSMSX101amrcor_--
