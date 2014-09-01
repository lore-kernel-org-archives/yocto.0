Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CA4FE0074B; Mon,  1 Sep 2014 08:18:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C407E006B3
	for <yocto@yoctoproject.org>; Mon,  1 Sep 2014 08:18:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Sep 2014 08:18:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,443,1406617200"; 
	d="gif'147?png'147,150?scan'147,150,208,217,147,150";a="566656619"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga001.jf.intel.com with ESMTP; 01 Sep 2014 08:18:19 -0700
Received: from irsmsx107.ger.corp.intel.com (163.33.3.99) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 1 Sep 2014 16:18:18 +0100
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.112]) by
	IRSMSX107.ger.corp.intel.com ([169.254.10.108]) with mapi id
	14.03.0195.001; Mon, 1 Sep 2014 16:18:18 +0100
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.7_M3 weekly report 2014-08-26
Thread-Index: Ac/F9+oeZCG+eKvmT1aUgtqD8Anpvw==
Date: Mon, 1 Sep 2014 15:18:18 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B23C4A8A1@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Yocto 1.7_M3 weekly report 2014-08-26
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
X-List-Received-Date: Mon, 01 Sep 2014 15:18:33 -0000
X-Groupsio-MsgNum: 21338
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_33115ABC4887814E8A92A08FBC93416B23C4A8A1IRSMSX103gercor_";
	type="multipart/alternative"

--_006_33115ABC4887814E8A92A08FBC93416B23C4A8A1IRSMSX103gercor_
Content-Type: multipart/alternative;
	boundary="_000_33115ABC4887814E8A92A08FBC93416B23C4A8A1IRSMSX103gercor_"

--_000_33115ABC4887814E8A92A08FBC93416B23C4A8A1IRSMSX103gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,



Here is the weekly report for Yocto 1.7_M3, 2014-08-26 build.

There are no new issues found during this build and the Distro testing is a=
ll green. Please note that, because AlexG is OOO, there is no updated build=
 performance chart, so to avoid confusion I left it out completely.

The full weekly report is available at: https://wiki.yoctoproject.org/wiki/=
WW35_-_2014-08-26_-_Weekly_-_1.7_M3



The summary report can be viewed below:





Testing data

 Test type: Weekly test

 Branch: master

 Build name: 1.7_M3 weekly

 poky commit: 52b788c6df9201764130ab744bf67b770b24b896

 Eclipse Plugin commit Kepler:  4a167fd662262ebdaa3cf0d332ac0debb52d7904

 Autobuilder images repository:  http://autobuilder.yoctoproject.org/pub/ni=
ghtly/20140826-2

 Distributions tested: Ubuntu 14.04 64bit, Fedora 20 64bit, Opensuse 13.1 6=
4bit, CentOS 6.5 64 bit

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

2793<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2793>

ADT: master branch

Fedora 20 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

2792<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2792>

ADT: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2801<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2801>

BSP/QEMU: master branch

Beaglebone Black

100.0%

none

0.0%

none

0.0%

none

100.0%

2799<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2799>

BSP/QEMU: master branch

EdgeRouter

100.0%

none

0.0%

none

0.0%

none

100.0%

2803<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2803>

BSP/QEMU: master branch

generic-x86 on Atom N2600

100.0%

none

0.0%

none

0.0%

none

100.0%

2802<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2802>

BSP/QEMU: master branch

genericx86-64 on NUC

97.7%

none

2.3%

6583<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6583>

0.0%

none

100.0%

2791<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2791>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

97.7%

none

2.3%

6583<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6583>

0.0%

none

100.0%

2800<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2800>

BSP/QEMU: master branch

MPC8315e-rdb

97.6%

none

2.4%

6489<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6489>

0.0%

none

100.0%

2795<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2795>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

2787<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2787>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

2796<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2796>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

2798<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2798>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

2797<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2797>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

2788<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2788>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

2794<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2794>

Meta-yocto: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2784<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784>

Toaster: master branch

Ubuntu 13.04 x86_64

92.9%

none

7.1%

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187> 5254<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5254> 5226<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5226> 5811<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5811> 5255<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D5255> 5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D584=
4>

0.0%

none

100.0%

2786<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2786>

OE-Core: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2785<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2785>

BitBake: master branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 18



Test Case Status Report

Status

Count

FAILED

6

PASSED

746

Total: 752


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:6,746&chco=3DFF9933|00FF00&chl=3DFAILED(6)+1%25|PASSED(746)+99%25]



Bug Status Report

[Bug Status]

ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-26_-_Wee=
kly_-_1.7_M3>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-26=
_-_Weekly_-_1.7_M3>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-26_-=
_Weekly_-_1.7_M3>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-=
26_-_Weekly_-_1.7_M3>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-2=
6_-_Weekly_-_1.7_M3>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2014-08=
-26_-_Weekly_-_1.7_M3>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-26_=
-_Weekly_-_1.7_M3>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_20=
14-08-26_-_Weekly_-_1.7_M3>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-=
26_-_Weekly_-_1.7_M3>

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

Medium

ACCEPTED

2784<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784>

same cooker log file name used for several builds

unspecified

1.7 M3

347

5226<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226>

Medium

NEW

2784<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784>

in 'variables' API, the 'changed' field seems to return always 'FALSE'

1.5

Future

342

5254<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5254>

Medium

RESOLVED

DUPLICATE

2784<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784>

[webhob-poky/master] line_number in tasks table is empty

unspecified

1.6 M1

337

5255<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5255>

Medium

ACCEPTED

2784<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784>

source_url in the tasks table is empty

unspecified

Future

337

5811<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811>

Medium

IN PROGRESS IMPLEMENTATION

2784<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784>

the orm_variablehistory table should collect the variable value for each fi=
le

unspecified

Future

196

5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844>

Medium

ACCEPTED

2784<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784>

Wrong script_type when task is not executed.

unspecified

1.7 M3

189

6489<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6489>

Medium+

RESOLVED

FIXED

2800<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2800>

SATA harddisk error on mpc8315e-rdb

1.7

1.7 M2

57

6583<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6583>

Medium

NEW

2802<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2802> 2791<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2791>

[Test Case 972] Xorg log: Failed to load module "present"

1.7

1.7

29

Total: 8





Bug Trend

An overview of this week's Yocto Bug Trend<https://wiki.yoctoproject.org/wi=
ki/Yocto_Bug_Trend> charts can be accessed on the following page<https://wi=
ki.yoctoproject.org/charts/combo.html>

Build Performance Test

Detailed description on how performance test are run can be found on Perfor=
mance Test<https://wiki.yoctoproject.org/wiki/Performance_Test> wiki. The b=
elow charts are displaying the build performance trend for 1.7 (since 25 Ma=
y, the release of 1.6) on Master. They can be accessed too at this link<htt=
ps://wiki.yoctoproject.org/charts/charts_17/performance_test.html> where yo=
u can view more detailed information.

Distro Testing

Distro Testing is intended to catch bugs that are distribution specific usi=
ng the yocto-autobuilder. The tests are all run on identical hardware and w=
ith all OS-es updated. The distributions used will be Fedora, Ubuntu, CentO=
S, OpenSuse with their latest update. More details on the coverage for the =
Distro testing is available here at Distribution_Support#Distro_Testing<htt=
ps://wiki.yoctoproject.org/wiki/Distribution_Support#Distro_Testing> wiki.

Summary

All tests are green on all distributions excepting nightly-world on OpenSus=
e 13.1 which is giving constant timeouts. For the latter, we are currently =
investigating why the timeouts happen.

Distro Results
BRANCH

master

COMMIT

Poky: 52b788c6df9201764130ab744bf67b770b24b896

RELEASE

1.7 M3 weekly test

Ubuntu 14.04 LTS

* nighlty-world

PASS

* buildtools

PASS

* nightly-arm

PASS

* nightly-multilib

PASS

* nightly-qa-systemd

PASS

* nightly-x86

PASS

* nightly-x86-64

PASS

* nightly-x86-64-lsb

PASS



Fedora 20

* nighlty-world

PASS

* buildtools

PASS

* nightly-arm

PASS

* nightly-multilib

PASS

* nightly-qa-systemd

PASS

* nightly-x86

PASS

* nightly-x86-64

PASS

* nightly-x86-64-lsb

PASS



CentOS 6.5

* nighlty-world

PASS

* buildtools

PASS

* nightly-arm

PASS

* nightly-multilib

PASS

* nightly-qa-systemd

PASS

* nightly-x86

PASS

* nightly-x86-64

PASS

* nightly-x86-64-lsb

PASS



OpenSuse 13.1

* nighlty-world

PASS

* buildtools

PASS

* nightly-arm

PASS

* nightly-multilib

PASS

* nightly-qa-systemd

PASS

* nightly-x86

PASS

* nightly-x86-64

PASS

* nightly-x86-64-lsb

PASS




Regards,

Corneliu

Yocto QA

--_000_33115ABC4887814E8A92A08FBC93416B23C4A8A1IRSMSX103gercor_
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
	font-family:"Times New Roman","serif";
	font-weight:bold;}
h2
	{mso-style-priority:9;
	mso-style-link:"Heading 2 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:18.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
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
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Times New Roman","serif";
	font-weight:bold;}
span.Heading2Char
	{mso-style-name:"Heading 2 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 2";
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
<p class=3D"MsoPlainText">Hello,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Here is the weekly report for Yocto 1.7_M3, 2014-=
08-26 build.<o:p></o:p></p>
<p class=3D"MsoPlainText">There are no new issues found during this build a=
nd the Distro testing is all green. Please note that, because AlexG is OOO,=
 there is no updated build performance chart, so to avoid confusion I left =
it out completely.
<o:p></o:p></p>
<p class=3D"MsoPlainText">The full weekly report is available at: <a href=
=3D"https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3"=
>
https://wiki.yoctoproject.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3</a> =
<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">The summary report can be viewed below:<o:p></o:p=
></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p><=
/span></h1>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width: 0px=
;word-spacing:0px"><span style=3D"color:black"> Test type: Weekly test<o:p>=
</o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.7_M3 weekly<o:p></o:p></span><=
/pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 52b788c6df9201764130ab744bf67b7=
70b24b896<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler:&nbsp; 4a167fd6=
62262ebdaa3cf0d332ac0debb52d7904<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository:&nbsp; http://=
autobuilder.yoctoproject.org/pub/nightly/20140826-2<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 14.04 64bit, Fe=
dora 20 64bit, Opensuse 13.1 64bit, CentOS 6.5 64 bit <o:p></o:p></span></p=
re>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width=
: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Summa=
ry Report</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p=
></span></h1>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0" style=3D"bac=
kground:white;orphans: auto;text-align:start;widows: auto;-webkit-text-stro=
ke-width: 0px;word-spacing:0px">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Testing Summary Report<o:p></o:p></span></b></=
p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Test Run<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Test Plan<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Environment<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Passed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Other issues<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Failed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Failing bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Blocked<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Blocking bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Complete<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2793"><span style=3D"color:#5A3696">2793</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Fedora 20 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2792"><span style=3D"color:#5A3696">2792</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2801"><span style=3D"color:#5A3696">2801</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Beaglebone Black<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2799"><span style=3D"color:#5A3696">2799</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">EdgeRouter<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2803"><span style=3D"color:#5A3696">2803</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">generic-x86 on Atom N2600<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2802"><span style=3D"color:#5A3696">2802</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">genericx86-64 on NUC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">97.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">2.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6583"><span style=3D"color:#5A3696">6583</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2791"><span style=3D"color:#5A3696">2791</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">genericx86-64 on Sugarbay<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">97.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">2.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6583"><span style=3D"color:#5A3696">6583</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2800"><span style=3D"color:#5A3696">2800</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">97.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6489"><span style=3D"color:#5A3696">6489</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2795"><span style=3D"color:#5A3696">2795</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">P1022ds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2787"><span style=3D"color:#5A3696">2787</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2796"><span style=3D"color:#5A3696">2796</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2798"><span style=3D"color:#5A3696">2798</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2797"><span style=3D"color:#5A3696">2797</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2788"><span style=3D"color:#5A3696">2788</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2794"><span style=3D"color:#5A3696">2794</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Meta-yocto: master branch<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2784"><span style=3D"color:#5A3696">2784</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Toaster: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">92.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">7.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5187"><span style=3D"color:#5A3696">5187</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5254"><span style=3D"color:#5A3696">525=
4</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5226"><span style=3D"col=
or:#5A3696">5226</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5811"><sp=
an style=3D"color:#5A3696">5811</span></a><span class=3D"apple-converted-sp=
ace">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5255"><span style=3D"color:#5A3696">5255</span></a><span class=3D"app=
le-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5844"><span style=3D"color:#5A3696">5844</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2786"><span style=3D"color:#5A3696">2786</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">OE-Core: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D2785"><span style=3D"color:#5A3696">2785</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BitBake: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 14.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 18</span></b><span style=3D"font=
-size:10.0pt"><o:p></o:p></span></p>
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
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
<tbody>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Case Status Report<o:p></o:p></span></b><=
/p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Status<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:10.0pt">Count<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">6<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">746<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 752</span></b><span style=3D"fon=
t-size:10.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><img border=3D"0" w=
idth=3D"432" height=3D"120" id=3D"Picture_x0020_11" src=3D"cid:image001.png=
@01CFC611.19AFA980" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;=
chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:6,746&amp;chco=3DFF9933|00FF00&amp;c=
hl=3DFAILED(6)&#43;1%25|PASSED(746)&#43;99%25"></span><span style=3D"font-s=
ize:10.0pt"><o:p></o:p></span></p>
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
hans: auto;text-align:start;widows: auto;-webkit-text-stroke-width: 0px;wor=
d-spacing:0px">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:black">Bug Status Report<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<img border=3D"0" width=3D"372" height=3D"120" id=3D"Picture_x0020_10" src=
=3D"cid:image002.png@01CFC611.19AFA980" alt=3D"Bug Status"></span><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none" id=3D"sortable_table_id_0">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">ID</span></b><a href=3D"https://wiki.yoctoproj=
ect.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3"><b><span style=3D"font-si=
ze:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"12=
" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:image003.gif@01CFC611.19A=
FA980" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-size:10.0=
pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3"><b><span style=3D"f=
ont-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:image003.gif@01CFC6=
11.19AFA980" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-siz=
e:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3"><b><span style=3D"fon=
t-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"cid:image003.gif@01CFC6=
11.19AFA980" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-siz=
e:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3"><b><span style=3D=
"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" wid=
th=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"cid:image003.gif@01CF=
C611.19AFA980" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-s=
ize:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3"><b><span style=3D"=
font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" widt=
h=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D"cid:image003.gif@01CFC=
611.19AFA980" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-si=
ze:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description</span></b><a href=3D"https://wiki.=
yoctoproject.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3"><b><span style=
=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" =
width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=3D"cid:image003.gif@0=
1CFC611.19AFA980" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"fon=
t-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3"><b><span style=3D"fo=
nt-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"cid:image003.gif@01CFC6=
11.19AFA980" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-siz=
e:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone</span></b><a href=3D"https://=
wiki.yoctoproject.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3"><b><span st=
yle=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"=
0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2" src=3D"cid:image003.gi=
f@01CFC611.19AFA980" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"=
font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW35_-_2014-08-26_-_Weekly_-_1.7_M3"><b><span style=3D=
"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" wid=
th=3D"12" height=3D"14" id=3D"Picture_x0020_1" src=3D"cid:image003.gif@01CF=
C611.19AFA980" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-s=
ize:10.0pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5187"><span style=3D"color:#5A3696">5187</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784"><span style=3D"col=
or:#5A3696">2784</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">same cooker log fil=
e name used for several builds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">347<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5226"><span style=3D"color:#5A3696">5226</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784"><span style=3D"col=
or:#5A3696">2784</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">in 'variables' API,=
 the 'changed' field seems to return always 'FALSE'<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">342<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5254"><span style=3D"color:#5A3696">5254</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">DUPLICATE<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784"><span style=3D"col=
or:#5A3696">2784</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[webhob-poky/master=
] line_number in tasks table is empty<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">337<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5255"><span style=3D"color:#5A3696">5255</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784"><span style=3D"col=
or:#5A3696">2784</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">source_url in the t=
asks table is empty<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">337<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5811"><span style=3D"color:#5A3696">5811</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">IN PROGRESS IMPLEMENTATION<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784"><span style=3D"col=
or:#5A3696">2784</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">the orm_variablehis=
tory table should collect the variable value for each file<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">196<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5844"><span style=3D"color:#5A3696">5844</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2784"><span style=3D"col=
or:#5A3696">2784</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Wrong script_type w=
hen task is not executed.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">189<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6489"><span style=3D"color:#5A3696">6489</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2800"><span style=3D"col=
or:#5A3696">2800</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">SATA harddisk error=
 on mpc8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">57<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6583"><span style=3D"color:#5A3696">6583</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2802"><span style=3D"col=
or:#5A3696">2802</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D27=
91"><span style=3D"color:#5A3696">2791</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Test Case 972] Xor=
g log: Failed to load module &quot;present&quot;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">29<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 8</span><=
/b><span style=3D"font-size:10.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width=
: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Bug T=
rend</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p></sp=
an></h1>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">An overview of this week's<span class=3D"apple-conve=
rted-space">&nbsp;</span><a href=3D"https://wiki.yoctoproject.org/wiki/Yoct=
o_Bug_Trend" title=3D"Yocto Bug Trend"><span style=3D"color:#5A3696">Yocto
 Bug Trend</span></a><span class=3D"apple-converted-space">&nbsp;</span>cha=
rts can be accessed on the following<span class=3D"apple-converted-space">&=
nbsp;</span><a href=3D"https://wiki.yoctoproject.org/charts/combo.html"><sp=
an style=3D"color:#3366BB">page</span></a><o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width=
: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Build=
 Performance Test</span></span><span style=3D"font-size:18.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o=
:p></o:p></span></h1>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Detailed description on how performance test are run=
 can be found on<span class=3D"apple-converted-space">&nbsp;</span><a href=
=3D"https://wiki.yoctoproject.org/wiki/Performance_Test" title=3D"Performan=
ce Test"><span style=3D"color:#5A3696">Performance
 Test</span></a><span class=3D"apple-converted-space">&nbsp;</span>wiki. Th=
e below charts are displaying the build performance trend for 1.7 (since 25=
 May, the release of 1.6) on Master. They can be accessed too at this<span =
class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://wiki.yoctop=
roject.org/charts/charts_17/performance_test.html"><span style=3D"color:#33=
66BB">link</span></a><span class=3D"apple-converted-space">&nbsp;</span>whe=
re
 you can view more detailed information.<o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width=
: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Distr=
o Testing</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p=
></span></h1>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Distro Testing is intended to catch bugs that are di=
stribution specific using the yocto-autobuilder. The tests are all run on i=
dentical hardware and with all OS-es updated. The distributions
 used will be Fedora, Ubuntu, CentOS, OpenSuse with their latest update. Mo=
re details on the coverage for the Distro testing is available here at<span=
 class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://wiki.yocto=
project.org/wiki/Distribution_Support#Distro_Testing" title=3D"Distribution=
 Support"><span style=3D"color:#5A3696">Distribution_Support#Distro_Testing=
</span></a><span class=3D"apple-converted-space">&nbsp;</span>wiki.<o:p></o=
:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width=
: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Summa=
ry</span></span><span style=3D"font-size:14.5pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p></span=
></h2>
</div>
<p style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;margin-bottom:6.0pt;m=
argin-left:0in;line-height:14.3pt;background:white;orphans: auto;text-align=
:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">All tests are green on all distributions excepting n=
ightly-world on OpenSuse 13.1 which is giving constant timeouts. For the la=
tter, we are currently investigating why the timeouts
 happen.<o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h2 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width=
: 0px;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:14.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Distr=
o Results</span></span><span style=3D"font-size:14.5pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p=
></span></h2>
</div>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#F9F9F9;border-collapse:collapse;border:none;orp=
hans: auto;text-align:start;widows: auto;-webkit-text-stroke-width: 0px;wor=
d-spacing:0px">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#F2F2F2;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:12.0pt;=
margin-right:0in;margin-bottom:12.0pt;margin-left:0in;text-align:center;lin=
e-height:14.3pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:black">BRANCH<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#F2F2F2=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:12.0pt;=
margin-right:0in;margin-bottom:12.0pt;margin-left:0in;text-align:center;lin=
e-height:14.3pt">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:black">master<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">COMMIT<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Poky: 52b788c6df9201764130ab744bf67b770b24b896<o:p><=
/o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">RELEASE<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">1.7 M3 weekly test<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:lightblu=
e;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Ubuntu 14.04 LTS<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lightblue;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:lightblu=
e;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Fedora 20<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lightblue;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:lightblu=
e;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">CentOS 6.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lightblue;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:lightblu=
e;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">OpenSuse 13.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lightblue;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nighlty-world<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; buildtools<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-multilib<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-qa-systemd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">&#8226; nightly-x86-64-lsb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:12.0pt;margin-left:0in;line-height:14.3pt">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Regards,<o:p></o:p></p>
<p class=3D"MsoPlainText">Corneliu<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto QA<o:p></o:p></p>
</div>
</body>
</html>

--_000_33115ABC4887814E8A92A08FBC93416B23C4A8A1IRSMSX103gercor_--

--_006_33115ABC4887814E8A92A08FBC93416B23C4A8A1IRSMSX103gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=7985;
	creation-date="Mon, 01 Sep 2014 15:18:17 GMT";
	modification-date="Mon, 01 Sep 2014 15:18:17 GMT"
Content-ID: <image001.png@01CFC611.19AFA980>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAbAAAAB4CAIAAAAc4DAQAAAABmJLR0QA/wD/AP+gvaeTAAAe5klE
QVR4nO3de3gU9b0/8Pd3Znazu9nN/U4Il4REIBEEgoFw00Ao1ArGIojk1Gu1aKscHzi2p2o5PR4p
p62Pv+opUMEi3h65iaJC06KkcgskRAiXBAkQAtnNfXeT7G0uvz92G2MIEELI7Caf18OTZ2Z3duaz
u+Sd78x35jtMURQQQggBOLULIIQQf0GBSAghPhSIhBDiQ4FICCE+FIiEEOJDgUgIIT4UiIQQ4kOB
SAghPhSIhBDiQ4FICCE+FIiEEOJDgUgIIT4UiIQQ4kOBSAghPhSIhBDiQ4FICCE+FIiEEOJDgUgI
IT6C2gWQfkiGXIOaRjTWo94CSw1qLuKiGeZa1NajXoYsQmxDGwAJkoLvbmIhQBAgiBB10HHgOHBh
CItCVDSi4xCXgIR4xIcjPAxhCUiIRrR6b5H0TxSI5KbUo74CFedw7ht8cwqnzuGcFVY33AoUCZIb
biecIsTe2hwPXg+9FloBAgPTQWeCKQlJaUgbiZFDMCQd6QlI6K3NkYGG0U2mSPc1ovEEThzF0X3Y
dwInmtEsQXLCaYddgqRubQKEUIRqoQUQgYgMZEzBlDtwxyiMCkOYurWRQEGBSK5Fhnwcx/dgz07s
PIZjChQRog22jvu5fosHH4pQDTRaaEdj9BzMmY7p6UjnwatdGvFTFIikMxHiARzYhV27sfsCLgBo
QpPqDcCbJ0AIRzgPPhKRd+Gu+Zg/FVO9LUpCvCgQic85nNuBHe/j/QpUyJDtsKtd0a1lgokDl4rU
h/DQfMwfgiFqV0TUR4E40B3DsTfx5k7sdMNtg80Nt9oV9bUgBJlg0kH3I/zoETySiUy1KyKqoUAc
oCpR+X/4v3fxbitaW9Cidjl+gYGFI1wL7SIsehyPj8ZotSsifY0CcWCpR/16rH8LbzWgwQqrDFnt
ivyRACECEQYYHsEjP8VP4xCndkWkj1AgDhSHcfg3+M0/8U8HHL14YmD/poVWC202sn+NX0/BFLXL
IbccBWI/54JrEzb9D/6nAQ022NQuJ1AZYQxD2At44Sf4iRFGtcshtwoFYr/VitbX8fpqrJYg0VHC
XmGAQYDwPJ7/d/w7xWK/RIHYD1lh/S/811t4q/2SYdKL9NBz4J7AEy/jZboGpp+hQOxXXHC9iTdf
xasuuPr9iYTqMsCghfaX+OVzeI7O7u43KBD7j13Y9TAetsHmgEPtWgaKYASHIWwDNuQiV+1aSC+g
QOwPTuHUo3i0DGV0rFAVJpgykLEe62/DbWrXQm4KDRAb2BQoq7E6E5klKKE0VIsd9iM4Mh7jV2EV
ndoZ0KiFGMDMMN+P+0tQ4oRT7VoIAOihvx23b8XWQRikdi2kJ6iFGKg+xIfJSC5CEaWh/3DAcRRH
U5H6Ht5TuxbSE9RCDDxuuJ/Dc2/jbYpCvxWEoCfwxOt4naM2R0ChQAwwdtjnYm4RigbgsDSBRQfd
TMzcjM066NSuhXQXBWIguYiLMzCjGtWUhgFBB10KUv6Bf8QgRu1aSLdQIAaMszg7AzNqUUtpGECC
EJSAhC/xJQ1AGxAoEAPDBVyYgAnNaKaBagKOACEWscUojkWs2rWQ66AjvgGgFrVTMdUKK6VhIBIh
er/BZjSrXQu5DgpEf9eGttmYbYbZA4/atZAe8sBThaof4ocuuNSuhVwLBaK/ewJPnMAJSsNA54Lr
CI78DD9TuxByLRSIfu0v+MuH+JDSsH9ww70RG9dhndqFkKuiThX/VYWqkRjpgCMg7gpPuikYwRWo
SECC2oWQLvRmC1H+lyufUhTlyuSVZdlm62JQe5vN1nEliqLIHbSvp9Nsp831+F34z1+Ip/G0Bx5K
w37GDTftOPut3mwhPvXUU+Hh4d7p+Pj4xx9/3GAweGdXrVplt9tfeeUV76wkSe++++7x48cTEhLq
6+vz8vImTJgA4ODBg9u3bw8PD3c4HMnJyUuWLOE47u233y4rK9NqfWNwGgyGF1988fjx4+vWrTMa
jQD0ev2kSZNmzZrlXaCpqamgoGDGjBnr16/vWN6KFSt4ngfgcDjWrVv37LPPeh+vqqr6+OOPQ0ND
77vvvpCQkK1bt+bl5THGOr7WarUWFhaazea77747OTkZQFtbW2Fh4fnz56dNmzZq1CgAra2txcXF
KSkpCQkJAGRZ3r59+/3339+zD/Nv+NtszO7Za4n/+zv+noMctasgnQm9u7rf/va3giDIsrxq1art
27c/9NBDACwWi81mMxgMZ8+e9aZJUVFRS0vLypUrg4ODrVbrypUr09PTGWNbtmxZtmzZoEGDZFle
u3btwYMHJ0+eDCAvLy87O7vTtlJTU3/+858DuHz58vr16wVBuOuuuwDs3Llz1qxZERERjz76qHfJ
CxcuHDx40JuGAN57772Kigrv9IkTJ3bv3r1o0aIvv/xy/fr1y5YtS09PLy0tveOOOzpua9u2bdHR
0fPmzXv//fezs7MzMzN3797tdrvz8vI++eST6urq3Nzcjz76KCUl5bPPPktPT580aVJhYWFaWlqP
P8n/xH/y4CVIPV4D8Vs8+BVYUYxitQshnd2SThWO43JyclpafMPzFRUVTZw4cfz48UVFRd5HHA6H
0+kMDg4GEBoa+tRTT8my7HK53G63tyXIcdyCBQuGDOnWyf0JCQnz588/dOgQAKfT2djYGBcXJwhC
bGxsbGxsTEzM3r17Fy9e7F1437594eHhHOd74ydPnpw3b15CQsLixYvnzZsHIC0t7fjx4x3Xb7fb
a2pq7rnnnpiYmLlz55aXl4uiWFJSsnDhwpiYmHnz5lVUVIii2NjYOHXq1NzcXIvF4nK5zpw5k56e
3rMPcA/2HMERSsP+SoJUgpIv8aXahZDOermFWFZWxvN8VVVVQUFBewOtqKjo6aef5nl+9erVCxcu
5DhuwoQJxcXFL730UkZGxsiRI0ePHu3dRZ0xY8aqVatGjRp12223jRkzJioqyruG4uJis9nsnY6O
jp42bVqn7Q4fPrympkZRlFOnTsXFfe+24nv27MnIyPCuqra29sCBA8uWLfvqq6+8z549ezY9PX3N
mjWJiYl3332390G3211VVZWUlOSdDQoKslgsFoslNjbWbrefPXtWEASPx1NRUZGammqz2SorK3me
T05O3rBhw6VLl5555pmCgoL2Xfh2O3fu3Llz5zU+PcZYfHx8amrqJ2mfGFONLcE04Gu/JUB4Da/d
hbvULoR8T+8HIsdxWq326aefHjFiBIBz586Jotjc3AyA5/mTJ0+mp6eHhIQsX768qqrq9OnTn376
6ZYtW1asWGEwGPLy8nJyck6dOlVWVrZly5ZHHnnk9ttvBxAZGdneWjSZTFduV6/Xew+G1tXVDRr0
vbE59+/f/8ILLwCQJOmdd97Jz89v33cGYLFYvv766x//+MfFxcV//OMff/3rXwOIioqqrq5uD0St
Vnvvvfdu2rTJZDJJkuTdUF5e3o4dO8LDw91ut7e9OX/+fO+Rgba2tsbGxqFDhx47dszpdGZmZnrj
/p577rnnnnuu/QFevny5tKK0oahhyoEpu5bu6sl3QAKBCPELfNGMZrpvn1/p5UBctGiRIHxvnYcO
HYqOji4pKQEQGxtbVFSUnp6+f//+kSNHJiUlJSUl5ebmrlmzZv/+/WlpaU1NTbfffntWVlZWVtaR
I0c+//xzbyAOHTrU2+tyNeXl5TExMYwxt9vt7WnxqqioGDZsmEajAfDtt9/W1tZ++OGHACRJev31
1x9++OHExMS8vLzIyMicnJyCgoLW1tbg4GCDwSBJ39tdzcnJyc7OttvtkiQVFBQAmDhx4rhx4+rq
6iIiItauXeuNvJCQEAC7du2aM2dOaWlpWVlZcnLym2+++cwzz3TzA0xISNiTsOdvM/7WzeVJ4BIh
fopP85GvdiHkO7f2xGxZlouLi5csWbJ48eLFixfn5+d/8803brfbarXu3r3b4/Gdb2y324cNG6bT
6bZu3drU1OR90GazDR06tDtbuXjx4rZt27y7qFFRUXV1de1PHTx4MCsryzudnJz8wgsv5Ofn5+fn
cxyXn59vMpmSk5NLS0u9m4uLi/Me1rRYLJGRkR038cYbb9TV1UVHRx88eHD48OEA3n777YqKivj4
+PZHvGprawFER0cfP348Jydn0qRJonhjFyDvxm6ht/9QET8kQNiDPWpXQb7n1v7inTx5MiIiIibG
NxhcVFRUfHz8N998M23atPXr1y9fvnz48OFWq3XIkCHe3udJkya9+OKLQ4YMkSRJo9Hk5/v+eG7Z
smXHjh3tq/3lL38JoLy8fMWKFYqixMbGTp8+/c477wRwxx13fPTRR97FPB7PiRMn2lciCEJERIR3
mjHmnc7Ozv74449Pnz5dXV3d3vFisVg69eeMHj36T3/6U2JiYlhY2A9+8AMAY8aMeeutt1JSUnie
f/DBB9uX/OKLL/Ly8gBMnjx527Ztbre7U4f1de3DPhrEYSAQIRaiUO0qyPeoeaWKzWaz2+0JCQkd
T/rzeDxmszk6Olqn6+E4w5988snMmTPbT4Hsjvr6+oiICO+hwKampu3bt7f3CHWstqWlxXuOoVdr
a2tjY+PgwYM7Lubte/FOy7Lc1tbWcRf+utrQZoSRTsYeIDhwDjjoPvf+ox9eutfY2FhaWtreZXyj
tm3blpmZ2Snm+swpnBqFUapsmqjiDM6kIEXtKohPPxzcISIiIjU1tccvnzBhglppCKARjWptmqjC
CqvaJZDv9M+D94mJiT1+bfvZNqrwwINzwDAVS1AHp4AD42VwCuMUhHj467/mSoGxt8M43zEiZWFB
uDS1HBHjVa6I/Ev/DMTApYEG1cCQftl2vxaZQYYi8hBkGD28zBDi5m9r0uVcMk2uDU5v0uvF/vaJ
SDIOVNonZt9Ynxu5pSgQ/Us4wsEDHiBI7VJUInJKc5AIwKL3nAl17hxiNXp4ncR0Ekuya6eYTTPM
xjEN+vg2jdqV3ixRljnGoL2BPjdyq1Eg+pehGAoecA7cQOxEYYpdK9oBABeN7n3xLX+QmcnN6ySm
F7lUq26G2ZhtNo6rNxgCrQnp8Cgcx2CMV7sQ8h0KRP9igCFICnK1uRCqdin+SuSUJp3vPM3KUFdB
os3k5rUyCxa5Edaguy6bJtcaxzToQ909OgrZh9pcssyCwN3Y72Cn8UbbhynxPtVxVlEU7wltnR7H
FeOTMsbal+w42+klVz7Y/1Ag+p0od9Tl+stKfGB0EKhO4pTmf+XjuRDX3wbb9B4uWOR4hZk8/Lg6
w5zqkIxGfUajXiv71+9zXYvo1kbf0EtkWV66dGn7qKMAFixYMG7cOAB79+794IMPli1b1j7o3MqV
Kx999NGkpKSlS5e+8cYbHa+pXb16dX19ffsjgwcPXrp06Z49e3bs2OE9gddoNObm5mZmZnoXOHfu
XEVFxezZsxVF2bt3b0lJyejRo2fPnt3a2lpYWDhnzpwrS3W5XJs3b16yZIl39uzZs2azeeLEid7r
aEtLSw0Gw82cDXKLUCD6nVEYdan5ktpVBDCHRnZoZAAWeL4NdW4f1mT08FqZhbj50Y36mZdCsuoM
6U36IEnNfFQUxdomssHDr7/oFV555ZVOLT4Ahw4dysjIOHz4cDdH4XziiSeuzKNJkyYtWrQIQEVF
xcaNG3U6XUZGBoDPPvvsscceA7Bx48aoqKjFixe/8cYbJpNp8uTJDofD4/F4Y65daWnp119/bbX6
zii6fPnyrl27srKyXnnllZdeeklRlIMHDz755JM9eO+3WoAddhkIxmEcnIBd7Tr6Cw+vNOlEi8Fz
Jsz58fCmZ6ZemHJv+aDFxxIfOjY279STUy58NLzpRLijjxvk/+9Myt620RWu2JqamptfW319fVNT
04MPPnj06NEbvXa+S6mpqTk5Od4BTM1ms8lk0uv1ACwWyw9/+MO4uLgVK1Z4h7MaN27cgQMHOr28
ra2t48m8x44dmzJlyvjx4xMTEx0Ox969e6dNm+afO+DUQvQ7nMThAhANjFW7lH7KKchOQQZwKdjz
TVTbxhGNwSIXJLNIpzCuzpB7KWR8g2GENYhXbuFv7CR9+VcN2iZH8l/+8hfvUJ7XWLjTwHHbt2/3
TphMptzcXABFRUWZmZkRERFxcXFlZWVjx17/v05hYWH7QMjDhg3z7nd3NGzYsK+//hrAsWPHvOlW
W1sbHBy8b9++o0ePTpkyxbuVxMTEd955p9MQpZMnT7ZYLGVlZd7ZCRMmvP/++wcOHAgPD+d5vrKy
sscXkt1qFIh+x9xihhloBlzU19wXXBrZpZEB1AR7yiIdm9IaTG4+WOQ0Motr1UypNc6oMWXWGeJ6
70QfUYajzeFprBuaJT305Es3+vKkpCRv86r9ev+ioqLp06efPn06Njb28OHD3QnE2NjY+HhfB3en
sZ28DAZD+xij3sH3LBZLeXn5qFGjHnnkkTfffLO+vn7WrFmCIDidTlEUO43711FUVNQvfvGLxsbG
iIiITz/9NDc312q1FhcXp6ent4/84icoEP1Ok7MJCtglppxX0PObspAeUhhsQZItSAJQZXIfjm1d
k1ankzi9zA1q0dxpCZ5pDhnboE9q6fmIDGfqHBea3JKiNDp6cqXm+PHjOx5DrKqqamtrq6mpqamp
4Xm+rKzM6XRed2yUtLS0a/dplJeXewefd7lc3s0lJiYmJSV5G3dz5szZu3evd8w9vV4vSdI1AtEr
IiLCZrM1NzcnJSWtWbNm3LhxmzdvnjVrll91rVAg+h27yw4Al4BEYBhoJBR1KQxtQXIbZACXjO6i
uNY/p9cZ3ZwGTCuxtGZd7qWQbItxbIPB6OnWEXmXqNRaxUtNHgBtnrabr/DQoUPZ2dneOwIBMJvN
R48enTRpUo9XqChKZWXlF1988fjjjwOIjo6ur68fMWJEeHi4zWazWq2hoaFms9nb36IoisPhCArq
1r7M559/PmfOHLvdLsvyxIkTdTpddXU1BSK5FkmRAMADdpYpJgWdj+0QlYm80qz3Dah+yej5alCL
0cUHySxY5IbbgrLNpumW4LEN+khn179cxy+1nTa7REkBIMg325ejKMqRI0fa76kLYMKECYcPH+4U
iL/61a+8EzzPv/rqqwDWrl3bfi+N9gcPHDhQUlKiKMqQIUMWLlzoHaU0Kytr//793iXnz5//17/+
1ePxOJ3O5cuXA6irq+vmYCgWi4Xnee/djcLDwzds2FBTU/P888/f3AfQy/rh8F+BbtamWX8//3fG
McYzZayijFdwYyerEZUFeTijh9MoLMTNj6nXT7eYxjTqJ9QZdBJ3uVksqWotrXYosqJASbnj7sUr
31W73uv76KOPFixY0H7ydkNDQ3S07z9lQUFBbGys91Yf12a1WnU6XXtb0m63G41Gf+trphai3wkL
+u6uQ1wFJwVLCAMC/srdAaS9l8Yc7KkId+4Y2hzi5gUwUyv/k00RQebv9qy1NzJ4sIrGjh17/Phx
b+pxHNeehpIknTlzZubMmd1ZSWjo966+6vJucaqj8xD9zvCIDifrOsGX8ygB5Ku/gPg3t0apDxbN
es+33zq3ClaX+N0+WfSgwBgaNjU1tf32Gx25XK6FCxf6WyvvZlAg+p3swdkdZ5mV8Rd4HFOrHNI7
WCnYGZZ84nudv4m3ZapVz43qcoxRg8HQ5Sk7gYt2mf3O7JTZDN/7k8tf5pVgRQ6R0ZMLvYj6uG8Z
O8+Uy2Adj9hzXPLYqarVRLpCLUS/E8QHRRs6d6NoKjXcGY5d6D/7JgMH9y1DOVDR+bsLCYvBFZck
E3XR9+GPcpNzOz+kQPutlivjcFqNgkhPcWUMZYyd7OIXLfXOK75lojYKRH/08vSXu3xce1ErVAoo
7+NySA9xxxmrYNwZroubvTA25YGfq1ATuSYKRH+UEp4yMmpkF08o0FZrNeUaVsIg9XlZpPsksGLG
neRYZde/YpGDhodEDurjosh1USD6qddmvXa1p7R1Wl25jh1kaO3Liki32cD2MaGYR/VVj/nO/dmq
vqyIdBMFop/KHZ47LOyqdyPlnbzhgoEr5mDuy6LI9fEXGXeY8cd4tFw1DUOjE4dmTO7Lqkg3USD6
rw/u/aDT+TcdcSJnvGjUHteyUgZPX9ZFrkIEV8xYCSeUaZjnql8cY9zi37zXl3WR7qNA9F+ZCZmP
3v7otZZQoK/XGyuN/CGeXX3vjPQBdp6xQiYc1XDn+S66UDoYM3NR5KDkvqqL3Bga3MGvKVAG/XlQ
g6vBO9aD72f7RIdZR7jDHeGWR8k0pmxfc4F9w7hqTqgRIEORFShQlO9++iZkKIrysG30+lfpqiP/
RS1Ev8bAPr//c45d/2sy2Awh1SGawxruNEcd0H1EAjvBuH9y2uNaTY3m2g1DABzjnly6rk8qIz1E
gejvxsaMXTNrzTUOJrbjZT60OTT0fKjmkIY7y9F4ELeQCJwEV8hpD2u1Z7TM1a3jFWvnrp04OOtW
l0ZuBl3LHAB+MuonldbK1SWru7OwoAjh9nC3091a3yrFS3KiTH/1epMMdoHhIrTVWs7OQYFy3ZYh
AOD5O5+/zhFh4gfoGGLAyN+dv7Vy69WOIXY56+bdLboWMUSUh9OxxZvmBqtgrIFpL2m5Vq7rA4VK
18cQ5ybP3ZG3Q+03QK6PAjGQPLT7oY8vfNz9QPROeDiPTbBJJkkcIiJY7fcQiBzgyjmugdNatMzJ
rpZ6VwvEB1IfeO9eOs8mMFAgBpjl+5f/+dSfbygQvdMyJ7egxalxitGiHC+DV/ud+D8JrJpxlzm+
mdc0apiHXbsZ2OVTz45/9vczfq/2OyHdRYEYeP5w7A8ri1eCxw0FYvtPl+KyKTZPkEdKkORw6nnp
Amtk3DmOs3HaBi3n4Lq5X9zpKaawldkrX7jzBbXfDbkBFIgB6bOLn/3b3n8TIfYgEDmeYxxTOMXu
sbfJbaJO9MR6lDClG/3Y/ZoC1shYNePsnKZZo2nVQET394s7PaVhmk1zN9034j613xW5MRSIgarW
UZu7O/e843zPArF9VuGUVmerTbSJWtET5ZHDBtjetAxWyzgzx9k5rVUrOAQmsxvdL+70VEpoylcP
fHXlKL/E/1EgBrZni57ddH4TOPQ4EL9LRqa0OltbXC1uuEWd6In0KKZ+2mxUABv4Gp5r4bgWTmvX
Ch4Bcuf2YA8CkSnswbQHN+RuUPsdkh6iQAx4hXWF+fvzW+SWmwzEjrOSLLW0ttgcNpETJa3kDnHL
JjmwT1qVwJoZX8ezVsa1cUGtQYJHYDLrGG03GYgmrWnjrI1zhs5R+62SnqNA7A9kyCtKV7xT9Y7C
Kb0SiB1nJUlqa2uz2+1OyemBR9JJokmUDX6fjxKYnXF1HNfKMTcTnILGoRFkgZO5q6VejwORKexn
GT/7/dTfd+eCIuLPKBD7jwttFx4rfuxYy7HeDUTvBOCLA7fT7WxxtjhaXKJLVEQRoqyVPUaPoleg
U+laUBlwgrUw3sozB2Mi4z087+YFjyAoAi/z7WMrXDv1ehaIaWFpm+dsTgkNjDssk2ujQOxvdll2
PX/y+Qap4RYF4pW54Ha5nQ6ny+1yuV2iIspMljhJZrIiKHKQLGklWSNDgO9fD5pQCiACHkAEczPO
xTEnYy7GJMaJHBMZJ3EaScNLvACBU7guou3WBGKULup/J//vAykP9PZ3SFRDgdg/vX/5/f8++9/N
UnMfBOLVhrqSJdkjemSP7JE8kiyJkijJkgRJhqywfyUUD1mWvxuHQgETmCIqDIwxBhmczEEBr/C8
wnMyx8H3jyldXzHSdbT1diBG66JXZ61ekLxAvW+Y3BIUiP3ZhksbXrv4WpPcpEog9sVTfR6IkdrI
X4371U9H/lTt75bcEhSI/d/nDZ+vvri60lNJgdjzQIQyOnT0y+NenjOYOpH7MwrEgaLCUfG7y78r
bCmUOIkCsfuBKDAhJz7ndxN+Nyzkqvf8Iv0GBeLAIkPe2LBxQ8OGGrmGAvEagcgUlmxMfmzEY0+m
PdmdEctJ/0CBOEDVirVrG9fuduyuU+ooEDs+FRMU86NBP/qPjP+IDqJr7wYcCsSBziya19nXFbgK
GpVG8BiYgQgFCfqEufFzn7vtuXh9vNrfCVENBSLxsSv2rY6t//D8o1wpd3LOgRCIQSwozZiWl5j3
8LCHjYJR7W+AqI8CkXShXC7f7Nl8SDlk5swSJ/WnQNRAM0g3KCsia8ngJRMjJ6r9SRP/QoFIrqMK
Vbux+4hy5CzONslNVzsA57eByBRmEkyp+tSsiKx5cfMyQjLU/kSJ/6JAJDdAgVKsFB+UD56ST1Wh
qk6qc8pOvwpEKNBxuighaoh+yBjTmLsi7poUPonGXCDdRIFIbooMuUwuKxKLzkhnLsuX6+X6ZrnZ
ITlERbzVgShAMDBDGB8Wr4lP0ieNMoyaGDJxtHE0R/ddJT1FgUhuCRFiuVheIVbUyXWNUmOT3GSV
rDbZZpfsrVKrR/FIsgTAo3h8I7NCgQzvRc0aaHjwiqJoodUyrR76MC4sUoiMEWJiNbHx2vjhQcNT
9CnU7iO9jgKREEJ8aOeCEEJ8KBAJIcSHApEQQnwoEAkhxIcCkRBCfP4/y84I2lro4WEAAAAASUVO
RK5CYII=

--_006_33115ABC4887814E8A92A08FBC93416B23C4A8A1IRSMSX103gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=10850;
	creation-date="Mon, 01 Sep 2014 15:18:17 GMT";
	modification-date="Mon, 01 Sep 2014 15:18:17 GMT"
Content-ID: <image002.png@01CFC611.19AFA980>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAXQAAAB4CAIAAABttJ7LAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO2deUCTR/7/PzkJ4ZZwCyL3FVRAUFBAEBSqKAqirOvR9Vrar662uq1d3FrXs65ra6u1xVpr
RanFW1Es4oUKBOQM4b7CEU6BhCMJeX5/jL+nKZfWiijO66/nmWeeeSZPyJuZz8y8h0IQBGAwGMzL
hjrSFcBgMKMTLC4YDGZYwOKCwWCGBSwuGAxmWKC/4ueVlJTIZDJ0rKurq6+v/7JKJgiivLy8srLS
3Nx83LhxVCrWTQxmJKG84tGi4ODg9vZ2BoMBABKJxM7ObtWqVd7e3n+y2KysrM2bN3d0dDg5OQmF
QlVV1a+//trY2BhdUldXt7KyGuL2hIQEb29vNTW1P1kNDAZDMgL/3jdt2pScnJycnHzjxg17e/v9
+/crFIo/UyBBEJs2bZo5c+bly5djYmIuXbrE5XI3b96Mrp4+ffrWrVtDlxAdHS0Sif5MHTAYTB9G
su+go6OzdOnS2tra4uJiAODxeNXV1ehSb29vYmKiVCpFpw0NDbGxsbdu3eru7k5KSupTTnV1dXt7
e2hoqJ6eHgAwmcwVK1bQ6fSenp7c3NyGhobS0tKsrCyUua2tLT4+Pj4+vqSkBKX8+uuvAPDgwYPa
2tra2tq0tDSy5KysrKqqKnTM5/NPnTr1888/l5eXD9MLwWBGEyMpLgRBJCYmamtrW1paAsB33333
8OFDdKmrq2vr1q1isRgAYmNjlyxZUlxcHBcXt2XLlujo6D7ljB07VkdHZ+/evaQ2WVhYnDhxQkVF
paSkpLm5uaampqioCAAOHz68ZMkSPp//+PHjFStW5OTkAABSk5ycnKampvT09CNHjpAlnzhx4u7d
uwAQHx+/YsWKhw8fpqWlLV++HJWGwWCG4FUHdAHg2LFjv/zyCwDU1dV1dnbGxMTQ6YNWo6Gh4auv
vvryyy/d3NwIgti4cWP/PFQqdffu3fv37w8NDR03bpyHh4efn5+bmxsAhIaGPnr0yNLSctGiRQDw
+PHjXbt2TZw4EQB279597tw5Z2fnrVu3njt3bt26dRYWFoO1Si5fvrxq1ao1a9YAwKFDhwQCgY2N
zct4GRjMqGUExGXq1Knu7u4AoFAokpKSNm7cGBMTY25uPmDm/Px8TU1NpBQUCmXmzJnK3RYSNze3
M2fOFBUVpaamPnz4cN26dV5eXgcPHqRQKMrZvvvuOwCora3NyspKT093cnJ6zjqPGzfu5MmT+vr6
Hh4e//d///dHPi4G85YyAuLi4OAQGBiIjr29vRcuXHj8+PHt27cPmLm1tVV5uNrQ0LB/nvr6eolE
YmlpaWNjY2Nj89e//jU1NfW99967efMm+SDEsWPHYmNj9fX1nZ2dTUxMnr/On3zyiaWl5dmzZ3ft
2uXk5PTxxx9bW1s//+0YzFvICE8GYbPZ48eP19LS6pMuFArRgYeHB3msnK6MQCDYvHmz8pi6u7s7
h8PpMwhVUFBw/PjxI0eOnD59egh1UC6HfFxFRUVERMSpU6dQ9Pezzz57/s+IwbydjIC4tLa2CoVC
oVBYVlb2/fff83i8kJAQANDQ0Lh8+TJSBBSUAQATExNDQ8MzZ84AgFQqjYuL69PTAQB3d3eRSLR9
+/bc3FwA6OzsPH78uFQq9fPzQxnQtL3W1lZSOMrLy2/cuEGORqHCUR0KCgpQvJbH41VWVqKr27dv
P3HiBEEQLBbL0dGRyWQO08vBYEYNIzCJrqGhAR3TaDQvL6/58+ejSXTZ2dn79u2jUChUKnXx4sV7
9uy5cOHCmDFjUlJS/ve//1EolLa2tsDAwMTExMTExD7F5uXlbdmypaGhQVdXt6Ojw87ObvHixahP
9MUXX1y6dGnRokXLly9fs2ZNfX29gYFBR0dHcHDwjz/++PHHH7/zzjshISGqqqqbNm1ycnLau3dv
RkaGgYGBlZVVV1eXra3t0qVL79+/v23bNiaTiXTq888/d3FxeZXvDYN543jV4vJMsrOzjYyMyDiL
VCqtr683NTV9/Pixubn5tWvXrl27Fhsb2/9GgiCqq6vr6+sdHBzU1dXJdJlMlpOTo6WlZWVlJZPJ
BAIBANjb29Pp9MrKSiaTaWRk1NLSIhAI7OzsxowZAwC1tbUtLS19wr0KhYLP59PpdGtraxqNNoyv
AIMZFbx24tKHzs7OwMDAjRs3zp07Nz8///PPP/fx8Vm7du1I1wuDwTyD111cACAzM3P//v1VVVWm
pqbh4eFz5szBIQ8M5vXnDRAXhEKhwAudMZg3iDdGXDAYzJsFbgtgMJhhAYsLBoMZFrC4YDCYYQGL
CwaDGRZ+W7hYWFiYlJREpVK9vLy4XO4I1gmDwYwCnrZcWltbY2Nj/fz8ZsyYcfTo0ZaWlpGtFgaD
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
VVVVrCyjDywumOdCR0dnwB0LFQpFcHDwgHvaY95ycMzltWf4uzzPCdonoA/I6fbVVwbz+oNbLhgM
ZljA4oLBYIYFLC4YDGZYwOKCwWCGBSwuGAxmWMCjRa87btB3HVB/eMDrn0gQBJohSaFQlB3kBnSi
Q3R2dtJoNJV+0xqlUilBEMrp/V3p/pDxHZmo/PShwT54bxxYXEYt7733nqamJoVCkcvlampqwcHB
7u7uEomkvxPdjBkzqqurjx8/LpfLVVVV6XT62rVr0SS38vLye/fu1dTUtLS06Orqrly5EnkvfPDB
B59++ik5Ea66uvqrr77as2cP+fuPjo5evXp1bW3t6dOnlef1btiwgcPhvP/++2jPeRqNZmNjs2TJ
EjSJjiCImJiYVatWEQRx7dq1srIyBwcHLy8vVVXVCxcuhISEIOsysVh86dKllpYW5IZHpVKzsrIS
Ep5OIbexsVm4cKFEIsnIyLC2tka7vvb29l68eHHBggXD/+IxT8HiMprZvn07am4IBIKvvvqKy+XC
QE50ABAbGztr1iwPDw8ASExMjI+PX7lyZU1NzdGjR6OiopArXWZm5r59+7Zt26alpdXndlNTUzU1
teLiYhsbGwCoqqpCxg61tbXOzs6rVq1SziyXy6lUKqpDZ2dnbGzsd999FxUVBQDp6enW1tYUCuXq
1avV1dVhYWECgWDbtm179+6dNGlSenr6lClTAODYsWNmZmYRERFXr15NS0uLioqqrKycNGkSMohg
sVgAEBcXZ2Njc/ny5YkTJ7q7u9+5c8fOzm5Y3jJmEHDM5a3AxsZGU1NzCMfSrq4ustHh7e3t6ekJ
AFeuXJk2bRoy00VGDR4eHqQhbh88PDzS09PRcWZm5uTJk5+nYmw2e9myZfn5+d3d3QCQkpIydepU
ABAKhfPnzzc2Nvbz86NSqS0tLebm5kVFRQDQ29vb1tYWGhqqp6dHuuE1NjZaWFggvzstLS2ZTPbk
yZNp06YFBASIRKLu7m7UCHruF4Z5CeCWy2gmIyODTqfL5fK8vDxfX18mkymTyQZ0opszZ05cXNyj
R4/s7e2dnZ3RTH+hUNhnOaKlpWVeXh6Snj64u7vv2rVryZIlVCr18ePH69atQ+lCoVD5cf07Jkwm
09jYWCgUmpiYtLe3o6YWeXtBQYGKigqHwwEACoVSXFxsbW29bds2dDU1NRVJRlNT088//8xgMHR0
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
sVj82WefcblcDQ2Nn3766f333zc3NycI4ocffhhiwi6TyczLy0OudDKZDDvKavgAAAoLSURBVLlJ
ISwsLDZt2gQAjY2N//nPf6ytrQfcoxYA1q9f33+HSQqFIhAIkINMd3d3TU0NecnR0ZH0oEE0Njay
2ewzZ85ER0cr2w+vX78eAGpra7/99ttPP/1U+ZbU1FQul5ueno7EBX0LT5482bVrF2keWFtbiw4k
EsnBgwcjIiLQ4qni4uJvv/123bp1lpaWAMDn8/l8fh9/LJlMlpOTM2PGDADg8XgpKSlolTkA2Nra
njlzBomLTCZLSUm5ffs2uQK+oKDgzp074eHhlZWVX3zxxf79+zMyMgoLC83MzL788ssNGza0tbXV
19crKwvgmMvbgIaGBlq29zyZAwICJBJJn0QWi2VlZcVmswmCuHLlysKFC5FOsdns8PBwsVjc1tb2
+PFjhULh5+eHbrG1tV2/fn1/7zsmk2ljYzPENPzOzk5yBZC6uvratWupVKpMJpNKpaipQqFQ5s+f
T9rT9GfSpEk83tOZh3l5eQMa0Onp6U2YMEEsFj/zhQxWclZWFrINHQJdXd1JkyZduHDheQqvqamR
yWRhYWE8Ho94jj18k5OTzc3Nyd+/tbX1vHnzHj9+jE4XLlx4+vTpPuvgeTwe0lwA6Orq6qOeBgYG
1dXVACCTyRQKhfJaitbW1uDgYDMzM2RtIZFIcnJyAgMDp0+fjqqKfC361BC3XN4KgoKCdu7cWVhY
ONg/aoFAoKqqWldXd/369YiICJRYXV2dlpYGAM3NzSUlJWFhYU1NTTQaDf1fRVAoFAsLi+Li4tra
WkdHR5TY0NDQ0dGhvJFAbW0tKqq1tTUrK4tcJ52dnd3c3IyOdXV1fX19J0yY8OjRo+joaC6Xa29v
z+VyUTdk9uzZ//vf/2xtbe3t7SdMmDDEhF0LC4tr165JpVImk5mRkeHt7U36b0okktzcXABIT0/P
zs5GjawBSUpKIrs5NjY2SEfs7OzOnz+PzGIyMjICAgJycnLID6hsuDd//nx0EBIS8tlnn7m7u48f
P36wZyHS0tI8PDwMDAw0NDQEAoG9vf3Q+YVCYR91s7Kyunv3LjoeP348l8u9ePFieHg4mSE7O3v2
7NnoePr06VVVVeXl5eRVU1PT5OTkZcuWsdls9E8CuVgAgJeXF6ohj8dD/hjTpk2Li4vr7e2dNGkS
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
ZRux+wSC8d0AAAAASUVORK5CYII=

--_006_33115ABC4887814E8A92A08FBC93416B23C4A8A1IRSMSX103gercor_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=462;
	creation-date="Mon, 01 Sep 2014 15:18:17 GMT";
	modification-date="Mon, 01 Sep 2014 15:18:17 GMT"
Content-ID: <image003.gif@01CFC611.19AFA980>
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

--_006_33115ABC4887814E8A92A08FBC93416B23C4A8A1IRSMSX103gercor_--
