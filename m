Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04B48E013DF
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 05:14:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Aug 2013 05:14:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,927,1367996400"; 
	d="gif'147?png'147,150?scan'147,150,208,217,147,150";a="390864200"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga002.jf.intel.com with ESMTP; 21 Aug 2013 05:14:22 -0700
Received: from irsmsx105.ger.corp.intel.com (163.33.3.28) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 21 Aug 2013 13:14:21 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.157]) by
	IRSMSX105.ger.corp.intel.com ([169.254.7.64]) with mapi id
	14.03.0123.003; Wed, 21 Aug 2013 13:14:21 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Weekly Test Report for 1.5_M4 - 2013-08-13-3 build
Thread-Index: Ac6eZ/OCqYuOqLd6QViXMzguZ8Zw5A==
Date: Wed, 21 Aug 2013 12:14:20 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F2C525@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Yocto Weekly Test Report for 1.5_M4 - 2013-08-13-3 build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Aug 2013 12:14:27 -0000
X-Groupsio-MsgNum: 15584
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_005_1FFB62CE8AEB0D4298B51122D8903E9619F2C525IRSMSX104gercor_";
	type="multipart/alternative"

--_005_1FFB62CE8AEB0D4298B51122D8903E9619F2C525IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F2C525IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F2C525IRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the Weekly Test report for 2013-08-13 build.
Issue summary:  No new issues. Bug 5019 was set to invalid.

Testing data

 Test type: Weekly Test

 Branch: Master

 Milestone: M4

 Build name: 2013-08-13-3

 poky commit: ff10f72abda52315b892c64f711096772d9a4c1c

 poky commit date:  Tue Aug 13 11:01:50 2013 -0700

 Eclipse Plugin commit (Kepler): 7d3dbe00328023b34339b34a6f0232474c9823e7

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20130813-3



 Distributions tested: Ubuntu 12.04 64bit, Ubuntu 13.10 64bit, Fedora 17 64=
bit, Fedora 19 32bit


Summary Report
Testing Summary Report

Test Run

Test Plan

Environment

Passed

Other issues

Failed

Failing bugs

Blocked

Blocking bugs

Complete

1031<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1031>

ADT: master branch

Fedora 19 i686

71.3%

none

15.0%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783> 4618<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618> 4973<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D4973>

13.8%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783> 4618<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618>

100.0%

1032<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1032>

ADT: master branch

Ubuntu 13.04 x86_64

82.5%

none

2.5%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783> 4618<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618>

15.0%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783> 4618<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618>

100.0%

1041<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1041>

BSP/QEMU: master branch

Beagleboard

92.1%

none

7.9%

4874<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4874> 3936<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936> 4985<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D4985>

0.0%

none

100.0%

1038<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1038>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

1030<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1030>

BSP/QEMU: master branch

P1022ds

100.0%

4910<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4910> 5019<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5019>

0.0%

none

0.0%

none

100.0%

1026<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1026>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

1029<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1029> 1033<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1033>

BSP/QEMU: master branch

qemuarm

97.1%

none

2.9%

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

0.0%

none

100.0%

1035<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1035> 1036<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1036>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

1034<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1034> 1037<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1037>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

1027<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1027>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

1039<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1039>

BSP/QEMU: master branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

1042<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1042>

Eclipse Plugin: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1040<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1040>

Meta-yocto: master branch

Ubuntu 13.04 x86-64

50.0%

none

50.0%

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

0.0%

none

100.0%

1043<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1043>

BitBake: master branch

Ubuntu 12.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 14



Test Case Status Report

Status

Count

BLOCKED

23

FAILED

20

PASSED

560

Total: 603


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:23,20,560&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(23)+4%25|FAILED(20)+3%=
25|PASSED(560)+93%25]



Bug Status Report


ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13-3_-_W=
eekly_Yocto_1.5_M4>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13=
-3_-_Weekly_Yocto_1.5_M4>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13-3=
_-_Weekly_Yocto_1.5_M4>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-=
13-3_-_Weekly_Yocto_1.5_M4>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-1=
3-3_-_Weekly_Yocto_1.5_M4>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW33_-_2013-08=
-13-3_-_Weekly_Yocto_1.5_M4>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13-=
3_-_Weekly_Yocto_1.5_M4>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW33_-_20=
13-08-13-3_-_Weekly_Yocto_1.5_M4>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-=
13-3_-_Weekly_Yocto_1.5_M4>

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

Medium+

IN PROGRESS REVIEW

1040<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1040>

Kernel panic on qemux86-64 when using runqemu kvm and cpu host

1.4

1.5 M2

175

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

1041<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1041>

[beagleobard xM] Some error message with usbhs_omap in dmesg

1.4

1.5

168

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

Undecided

RESOLVED

FIXED

1033<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1033> 1029<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1029>

start qemuarm with "core-image-sato", use "dmesg | grep -i error" shows 2 e=
rrors

1.4

---

151

4618<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618>

Medium

IN PROGRESS REVIEW

1031<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1031> 1032<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1032>

[Autobuilder] Some toolchains are built twice with 20130604-5 build

1.5

1.5 M2

68

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783>

Medium+

ACCEPTED

1032<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1032> 1031<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1031>

[adt-installer] ARM: target arch change from armv5te to armv7a-vfp-neon in =
environment setting script.

1.5

1.5 M2

47

4874<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4874>

Medium+

ACCEPTED

1041<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1041>

Bootup beagleboard with run-level 3, it has "Internal error" sometimes.

1.5

1.5 M3

25

4910<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4910>

Medium

RESOLVED

FIXED

1030<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1030>

[p1022ds]urandom: segmentation fault

1.5

1.5

19

4973<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4973>

High

IN PROGRESS IMPLEMENTATION

1031<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1031>

runqemu: Could not initialize SDL(No available video device) for core-image=
-sato on Fedora 19

1.5

1.5

12

4985<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4985>

Medium

NEW

1041<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1041>

do smart --help command, sometimes causes a kernel panic

1.5

1.5

7 (Recent)

5019<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5019>

Undecided

RESOLVED

INVALID

1030<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1030>

[p1022ds] matchbox desktop can not startup

1.5

---

NEW

Total: 10




Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619F2C525IRSMSX104gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:24.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Times New Roman","serif";
	font-weight:bold;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:14.3pt;background:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Hel=
lo,<o:p></o:p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:14.3pt;background:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Her=
e is the Weekly Test report for 2013-08-13 build.
<o:p></o:p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:14.3pt;background:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:black">Issue summary:</span><=
/span><span class=3D"mw-headline"><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black;font-weight:norma=
l"> &nbsp;No
 new issues. Bug 5019 was set to invalid.<o:p></o:p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:14.3pt;background:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:=
p>&nbsp;</o:p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:14.3pt;background:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Tes=
ting data</span></span><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o=
:p></span></h1>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width: 0px=
;word-spacing:0px"><span style=3D"font-size:11.0pt;font-family:&quot;Calibr=
i&quot;,&quot;sans-serif&quot;;color:black"> Test type: Weekly Test<o:p></o=
:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;san=
s-serif&quot;;color:black"> Branch: Master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;san=
s-serif&quot;;color:black"> Milestone: M4<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;san=
s-serif&quot;;color:black"> Build name: 2013-08-13-3<o:p></o:p></span></pre=
>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;san=
s-serif&quot;;color:black"> poky commit: ff10f72abda52315b892c64f711096772d=
9a4c1c<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;san=
s-serif&quot;;color:black"> poky commit date:&nbsp; Tue Aug 13 11:01:50 201=
3 -0700<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;san=
s-serif&quot;;color:black"> Eclipse Plugin commit (Kepler): 7d3dbe00328023b=
34339b34a6f0232474c9823e7<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;san=
s-serif&quot;;color:black"> Autobuilder images repository: http://autobuild=
er.yoctoproject.org/pub/nightly/20130813-3<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;san=
s-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;san=
s-serif&quot;;color:black"> Distributions tested: Ubuntu 12.04 64bit, Ubunt=
u 13.10 64bit, Fedora 17 64bit, Fedora 19 32bit<o:p></o:p></span></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:14.3pt;background:white;border:none;padding:0in;or=
phans: auto;text-align:start;widows: auto;-webkit-text-stroke-width: 0px;ba=
ckground-position:initial initial;background-repeat:initial initial;overflo=
w:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:=
p>&nbsp;</o:p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;line-height:14.3pt;background:white;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Sum=
mary Report</span></span><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p><=
/o:p></span></h1>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0" style=3D"bac=
kground:white;orphans: auto;text-align:start;widows: auto;-webkit-text-stro=
ke-width: 0px;word-spacing:0px">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
ing Summary Report<o:p></o:p></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none;background-position:initial initial;background-repeat:initia=
l initial">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Test Run<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Test Plan<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Environment<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Passed<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Other issues<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Failed<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Failing bugs<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Blocked<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Blocking bugs<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Complete<o:p></o:p></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1031"=
><span style=3D"color:#5A3696">1031</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
ADT: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
Fedora 19 i686<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"color:black">71.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
15.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783"><span =
style=3D"color:#5A3696">4783</span></a><span class=3D"apple-converted-space=
">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4618"><span style=3D"color:#5A3696">4618</span></a><span class=3D"apple-=
converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D4973"><span style=3D"color:#5A3696">4973</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
13.8%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783"><span =
style=3D"color:#5A3696">4783</span></a><span class=3D"apple-converted-space=
">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4618"><span style=3D"color:#5A3696">4618</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1032"=
><span style=3D"color:#5A3696">1032</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
ADT: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
Ubuntu 13.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"color:black">82.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
2.5%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783"><span =
style=3D"color:#5A3696">4783</span></a><span class=3D"apple-converted-space=
">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4618"><span style=3D"color:#5A3696">4618</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
15.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783"><span =
style=3D"color:#5A3696">4783</span></a><span class=3D"apple-converted-space=
">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4618"><span style=3D"color:#5A3696">4618</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1041"=
><span style=3D"color:#5A3696">1041</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
Beagleboard<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
92.1%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
7.9%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4874"><span =
style=3D"color:#5A3696">4874</span></a><span class=3D"apple-converted-space=
">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3936"><span style=3D"color:#5A3696">3936</span></a><span class=3D"apple-=
converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D4985"><span style=3D"color:#5A3696">4985</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1038"=
><span style=3D"color:#5A3696">1038</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
MPC8315e-rdb<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1030"=
><span style=3D"color:#5A3696">1030</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
P1022ds<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4910"><span =
style=3D"color:#5A3696">4910</span></a><span class=3D"apple-converted-space=
">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D5019"><span style=3D"color:#5A3696">5019</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1026"=
><span style=3D"color:#5A3696">1026</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
qemu-x86<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1029"=
><span style=3D"color:#5A3696">1029</span></a><span class=3D"apple-converte=
d-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D1033"><span style=3D"color:#5A3696">1033</span></a><o:p></=
o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
qemuarm<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
97.1%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
2.9%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024"><span =
style=3D"color:#5A3696">4024</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1035"=
><span style=3D"color:#5A3696">1035</span></a><span class=3D"apple-converte=
d-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D1036"><span style=3D"color:#5A3696">1036</span></a><o:p></=
o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
qemumips<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1034"=
><span style=3D"color:#5A3696">1034</span></a><span class=3D"apple-converte=
d-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D1037"><span style=3D"color:#5A3696">1037</span></a><o:p></=
o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
qemuppc<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1027"=
><span style=3D"color:#5A3696">1027</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
qemux86-64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1039"=
><span style=3D"color:#5A3696">1039</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
BSP/QEMU: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
Routerstationpro<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1042"=
><span style=3D"color:#5A3696">1042</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
Eclipse Plugin: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
Ubuntu 13.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1040"=
><span style=3D"color:#5A3696">1040</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
Meta-yocto: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
Ubuntu 13.04 x86-64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"color:black">50.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"color:black">50.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908"><span =
style=3D"color:#5A3696">3908</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1043"=
><span style=3D"color:#5A3696">1043</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
BitBake: master branch<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
Ubuntu 12.04 x86_64<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
0.0%<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
none<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
100.0%<o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b>Total: 14</b><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
 Case Status Report<o:p></o:p></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none;background-position:initial initial;background-repeat:initia=
l initial">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Status<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b>Count<o:p></o:p></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
BLOCKED<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
23<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
FAILED<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
20<o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
PASSED<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
560<o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b>Total: 603</b><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><img border=3D"0" width=3D"432" height=3D"120" id=3D=
"Picture_x0020_10" src=3D"cid:image001.png@01CE9E81.1B7C3DE0" alt=3D"http:/=
/chart.apis.google.com/chart?cht=3Dp3&amp;chs=3D432x120&amp;chd=3Dt:&amp;ch=
d=3Dt:23,20,560&amp;chco=3DFFFF66|FF9933|00FF00&amp;chl=3DBLOCKED(23)&#43;4=
%25|FAILED(20)&#43;3%25|PASSED(560)&#43;93%25"><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"display:none"><o:p>&nbsp;</o:p></span=
></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;orp=
hans: auto;text-align:start;widows: auto;-webkit-text-stroke-width: 0px;bac=
kground-position:initial initial;background-repeat:initial initial;word-spa=
cing:0px">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"color:black">Bug Status Report<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none;background-position:initial initial;background-repeat:initia=
l initial" id=3D"sortable_table_id_0">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>ID</=
b><a href=3D"https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13-3_-_Weekl=
y_Yocto_1.5_M4"><b><span style=3D"color:#5A3696;text-decoration:none"><img =
border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:i=
mage002.gif@01CE9E81.1B7C3DE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><o:p>=
</o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Prio=
rity</b><a href=3D"https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13-3_-=
_Weekly_Yocto_1.5_M4"><b><span style=3D"color:#5A3696;text-decoration:none"=
><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D=
"cid:image002.gif@01CE9E81.1B7C3DE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b=
><o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Stat=
us</b><a href=3D"https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13-3_-_W=
eekly_Yocto_1.5_M4"><b><span style=3D"color:#5A3696;text-decoration:none"><=
img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"c=
id:image002.gif@01CE9E81.1B7C3DE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><=
o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Reso=
lution</b><a href=3D"https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13-3=
_-_Weekly_Yocto_1.5_M4"><b><span style=3D"color:#5A3696;text-decoration:non=
e"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=
=3D"cid:image002.gif@01CE9E81.1B7C3DE0" alt=3D"=1B$B"-=1B(B"></span></b></a=
><b><o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Test=
 Runs</b><a href=3D"https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13-3_=
-_Weekly_Yocto_1.5_M4"><b><span style=3D"color:#5A3696;text-decoration:none=
"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=
=3D"cid:image002.gif@01CE9E81.1B7C3DE0" alt=3D"=1B$B"-=1B(B"></span></b></a=
><b><o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Desc=
ription</b><a href=3D"https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13-=
3_-_Weekly_Yocto_1.5_M4"><b><span style=3D"color:#5A3696;text-decoration:no=
ne"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=
=3D"cid:image002.gif@01CE9E81.1B7C3DE0" alt=3D"=1B$B"-=1B(B"></span></b></a=
><b><o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Vers=
ion</b><a href=3D"https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13-3_-_=
Weekly_Yocto_1.5_M4"><b><span style=3D"color:#5A3696;text-decoration:none">=
<img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"=
cid:image002.gif@01CE9E81.1B7C3DE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b>=
<o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Targ=
et Milestone</b><a href=3D"https://wiki.yoctoproject.org/wiki/WW33_-_2013-0=
8-13-3_-_Weekly_Yocto_1.5_M4"><b><span style=3D"color:#5A3696;text-decorati=
on:none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2=
" src=3D"cid:image002.gif@01CE9E81.1B7C3DE0" alt=3D"=1B$B"-=1B(B"></span></=
b></a><b><o:p></o:p></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b>Age =
(days)</b><a href=3D"https://wiki.yoctoproject.org/wiki/WW33_-_2013-08-13-3=
_-_Weekly_Yocto_1.5_M4"><b><span style=3D"color:#5A3696;text-decoration:non=
e"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_1" src=
=3D"cid:image002.gif@01CE9E81.1B7C3DE0" alt=3D"=1B$B"-=1B(B"></span></b></a=
><b><o:p></o:p></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908"><span style=
=3D"color:#5A3696">3908</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">Medium&=
#43;<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">IN PROG=
RESS REVIEW<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1040"><span style=3D"color:#5A3696">1040</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">Kernel panic on qemux86-64 when using runqemu kvm an=
d cpu host<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.4<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5 M2<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">175<o:p=
></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936"><span style=
=3D"color:#5A3696">3936</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">Medium<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">ACCEPTE=
D<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1041"><span style=3D"color:#5A3696">1041</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">[beagleobard xM] Some error message with usbhs_omap =
in dmesg<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.4<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">168<o:p=
></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024"><span style=
=3D"color:#5A3696">4024</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">Undecid=
ed<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">RESOLVE=
D<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">FIXED<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1033"><span style=3D"color:#5A3696">1033</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D1029"><span style=3D"color:#5A3696"=
>1029</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">start qemuarm with &quot;core-image-sato&quot;, use =
&quot;dmesg | grep -i error&quot; shows 2 errors<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.4<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">---<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">151<o:p=
></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618"><span style=
=3D"color:#5A3696">4618</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">Medium<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">IN PROG=
RESS REVIEW<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1031"><span style=3D"color:#5A3696">1031</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D1032"><span style=3D"color:#5A3696"=
>1032</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">[Autobuilder] Some toolchains are built twice with 2=
0130604-5 build<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5 M2<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">68<o:p>=
</o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783"><span style=
=3D"color:#5A3696">4783</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">Medium&=
#43;<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">ACCEPTE=
D<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1032"><span style=3D"color:#5A3696">1032</span></a><span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yo=
ctoproject.org/tr_show_run.cgi?run_id=3D1031"><span style=3D"color:#5A3696"=
>1031</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">[adt-installer] ARM: target arch change from armv5te=
 to armv7a-vfp-neon in environment setting script.<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5 M2<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">47<o:p>=
</o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4874"><span style=
=3D"color:#5A3696">4874</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">Medium&=
#43;<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">ACCEPTE=
D<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1041"><span style=3D"color:#5A3696">1041</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">Bootup beagleboard with run-level 3, it has &quot;In=
ternal error&quot; sometimes.<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5 M3<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">25<o:p>=
</o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4910"><span style=
=3D"color:#5A3696">4910</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">Medium<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">RESOLVE=
D<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">FIXED<o=
:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1030"><span style=3D"color:#5A3696">1030</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">[p1022ds]urandom: segmentation fault<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">19<o:p>=
</o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4973"><span style=
=3D"color:#5A3696">4973</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">High<o:=
p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">IN PROG=
RESS IMPLEMENTATION<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1031"><span style=3D"color:#5A3696">1031</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">runqemu: Could not initialize SDL(No available video=
 device) for core-image-sato on Fedora 19<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">12<o:p>=
</o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4985"><span style=
=3D"color:#5A3696">4985</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">Medium<=
o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">NEW<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1041"><span style=3D"color:#5A3696">1041</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal">do smart --help command, sometimes causes a kernel p=
anic<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">7<span =
class=3D"apple-converted-space"><span style=3D"color:#236EDE">&nbsp;</span>=
</span><span style=3D"color:#236EDE">(Recent)</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5019"><span style=
=3D"color:#5A3696">5019</span></a><o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">Undecid=
ed<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">RESOLVE=
D<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">INVALID=
<o:p></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1030"><span style=3D"color:#5A3696">1030</span></a><o:p><=
/o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal">[p1022ds] matchbox desktop can not startup<o:p></o:p=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">1.5<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">---<o:p=
></o:p></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"color:#FF4000">NEW</span><o:p></o:p></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b>Total: 10</b><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#7F7F7F">--<o:p></o:p></span=
></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#7F7F7F">Alexandru Georgescu=
<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#7F7F7F">Yocto QA Engineer<o=
:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#7F7F7F">SSG/SSD Open Source=
 Technology Center Romania</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F2C525IRSMSX104gercor_--

--_005_1FFB62CE8AEB0D4298B51122D8903E9619F2C525IRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=10554;
	creation-date="Wed, 21 Aug 2013 12:14:20 GMT";
	modification-date="Wed, 21 Aug 2013 12:14:20 GMT"
Content-ID: <image001.png@01CE9E81.1B7C3DE0>
Content-Transfer-Encoding: base64

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
AElFTkSuQmCC

--_005_1FFB62CE8AEB0D4298B51122D8903E9619F2C525IRSMSX104gercor_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=462;
	creation-date="Wed, 21 Aug 2013 12:14:20 GMT";
	modification-date="Wed, 21 Aug 2013 12:14:20 GMT"
Content-ID: <image002.gif@01CE9E81.1B7C3DE0>
Content-Transfer-Encoding: base64

R0lGODlhDAAOAMZxAAAAAAEBAQICAgMDAwQEBAUFBQYGBgcHBwgICAkJCQoKCgsLCwwMDA0NDQ4O
Dg8PDxAQEBERERISEhMTExQUFBUVFRYWFhcXFxgYGBkZGRoaGhsbGxwcHB0dHR4eHh8fHyAgICEh
ISIiIiMjIyQkJCUlJSYmJicnJygoKCkpKSoqKisrKywsLC0tLS4uLi8vLzAwMDExMTIyMjMzMzQ0
NDU1NTY2Njc3Nzg4ODk5OTo6Ojs7Ozw8PD09PT4+Pj8/P0BAQEFBQUJCQkNDQ0REREVFRUZGRkdH
R0hISElJSUpKSktLS0xMTE1NTU5OTk9PT1BQUFFRUVJSUlNTU1RUVFVVVVZWVldXV1hYWFlZWVpa
WltbW1xcXF1dXV5eXl9fX2BgYGFhYWJiYmNjY2RkZGVlZWZmZmdnZ2hoaGlpaWpqamtra2xsbG1t
bW5ubm9vb3BwcP///////////////////////////////////////////////////////////yH5
BAEKAH8ALAAAAAAMAAwAAAcrgHCCg4SDf4eIiYKJin+LcIyPkIuHhpKTlpiXjpqIkpyRoJCMlaOk
pYWpgQA7

--_005_1FFB62CE8AEB0D4298B51122D8903E9619F2C525IRSMSX104gercor_--
