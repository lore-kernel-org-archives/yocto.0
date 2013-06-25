Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EF0FE014E2
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 07:01:51 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Jun 2013 07:01:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,937,1363158000"; 
	d="gif'147?png'147,150?scan'147,150,208,217,147,150";a="259887590"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Jun 2013 07:01:44 -0700
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.35]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.204]) with mapi id
	14.03.0123.003; Tue, 25 Jun 2013 15:01:43 +0100
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Weekly Test Report for Yocto 1.5 M2 20130618-2 Build
Thread-Index: Ac5xqvZTSw1voF/mQlaWv3InYDMolQ==
Date: Tue, 25 Jun 2013 14:01:42 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B0A15544D@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Weekly Test Report for Yocto 1.5 M2 20130618-2 Build
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
X-List-Received-Date: Tue, 25 Jun 2013 14:01:57 -0000
X-Groupsio-MsgNum: 14625
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_33115ABC4887814E8A92A08FBC93416B0A15544DIRSMSX103gercor_";
	type="multipart/alternative"

--_006_33115ABC4887814E8A92A08FBC93416B0A15544DIRSMSX103gercor_
Content-Type: multipart/alternative;
	boundary="_000_33115ABC4887814E8A92A08FBC93416B0A15544DIRSMSX103gercor_"

--_000_33115ABC4887814E8A92A08FBC93416B0A15544DIRSMSX103gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the Weekly Test Report for Yocto 1.5 M2 2013-06-18-2 Build: https:/=
/wiki.yoctoproject.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M2_2013-06-18-=
2_Build

Issues summary:

-          =1B$B!F=1B(Bdmesg=1B$B!G=1B(B errors for beagleboard and atom-pc=
 platforms (not yet solved)

-          =1B$B!F=1B(Bbitbake-prserv-tool=1B$B!G=1B(B was not working but =
Richard already sent a patch for it.

-          qemuarm =1B$B!F=1B(Bdmesg=1B$B!G=1B(B errors avoided using a wor=
karound. Proper fix still pending.

-          x32 build fails at  =1B$B!F=1B(Bgmp_5.1.1 do_configure=1B$B!G=1B=
(B

-          routerstation pro still cannot boot with NFS

For performance data, please follow the performance wiki page at: https://w=
iki.yoctoproject.org/wiki/Performance_Test

Here is the complete summary report. Click on the link given above for the =
full report.

Testing data

 Test type: Weekly Test

 Branch: master

 Milestone: 1.5 M2

 Build name: weekly

 poky commit: 590010a6525b0e1bc1de73e794764e23404591df

 poky commit date: Tue Jun 18 10:16:10 2013 +0100

 Eclipse Plugin commit: 60e99763dc9b77307d46eae4f43343948fa49757

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20130618-2



 Distributions tested: Ubuntu 12.04 x86_64, Ubuntu 13.04 x86_64, OpenSUSE 1=
2.3, Fedora 18 i686, CentOS 6.4 x86_64

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

785<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D785>

ADT: master branch

Fedora 18 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

786<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D786>

ADT: master branch

openSUSE 12.3 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

788<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D788>

ADT: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

777<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D777>

BSP/QEMU: master branch

Atom PC

97.3%

none

2.7%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

795<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D795>

BSP/QEMU: master branch

Beagleboard

97.4%

none

2.6%

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

0.0%

none

100.0%

797<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D797>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

796<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D796>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

780<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D780>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

782<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D782> 787<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D787>

BSP/QEMU: master branch

qemuarm

97.1%

none

2.9%

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

0.0%

none

100.0%

790<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D790> 792<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D792>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

789<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D789> 791<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D791>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

781<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D781>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

798<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D798>

BSP/QEMU: master branch

Routerstationpro

0.0%

none

2.6%

4566<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4566>

97.4%

4566<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4566>

100.0%

774<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D774>

Eclipse Plugin: master branch

user-preference (any supported environment)

100.0%

none

0.0%

none

0.0%

none

100.0%

784<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D784>

Meta-yocto: master branch

Ubuntu 12.04 x86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

783<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D783>

Hob: master branch

Ubuntu 12.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

775<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D775>

OE-Core: master branch

Multiple environments

94.1%

none

5.9%

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>

0.0%

none

100.0%

776<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D776>

BitBake: master branch

Fedora 18 X86_64

66.7%

none

33.3%

4754<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4754>

0.0%

none

100.0%

Total: 18



Test Case Status Report

Status

Count

BLOCKED

37

FAILED

7

PASSED

724

Total: 768


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:37,7,724&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(37)+5%25|FAILED(7)+1%25=
|PASSED(724)+94%25]



Bug Status Report

[Bug Status]

ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Weekly_Test_Report_for_=
Yocto_1.5_M2_2013-06-18-2_Build>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Weekly_Test_Repor=
t_for_Yocto_1.5_M2_2013-06-18-2_Build>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Weekly_Test_Report_=
for_Yocto_1.5_M2_2013-06-18-2_Build>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Weekly_Test_Rep=
ort_for_Yocto_1.5_M2_2013-06-18-2_Build>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Weekly_Test_Repo=
rt_for_Yocto_1.5_M2_2013-06-18-2_Build>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Weekly_Test_Re=
port_for_Yocto_1.5_M2_2013-06-18-2_Build>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Weekly_Test_Report=
_for_Yocto_1.5_M2_2013-06-18-2_Build>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Weekly_Te=
st_Report_for_Yocto_1.5_M2_2013-06-18-2_Build>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Weekly_Test_Rep=
ort_for_Yocto_1.5_M2_2013-06-18-2_Build>

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

795<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D795>

[beagleobard xM] Some error message with usbhs_omap in dmesg

1.4

1.5

112

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

777<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D777>

dmesg log errors in Atom-PC

1.3.1

1.5

99

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

Undecided

RESOLVED

FIXED

787<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D787> 782<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D782>

start qemuarm with "core-image-sato", use "dmesg | grep -i error" shows 2 e=
rrors

1.4

---

95

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>

Medium

NEW

775<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D775>

x32 build fails with gmp_5.1.1 do_configure

1.5

1.5

27

4566<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4566>

Medium+

ACCEPTED

798<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D798>

routerstation pro cannot bootup with NFS in yocto 1.5 20130521-1 build

1.5

1.5 M2

21

4754<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4754>

Undecided

RESOLVED

FIXED

776<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D776>

bitbake-prserv-tool export gives ParseError

1.5

---

NEW

Total: 6



If you have any issues or concerns, please contact us by replying to this e=
-mail.

Regards,
Stoicescu Corneliu
Romania Yocto QA


--_000_33115ABC4887814E8A92A08FBC93416B0A15544DIRSMSX103gercor_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
/* List Definitions */
@list l0
	{mso-list-id:2084794829;
	mso-list-type:hybrid;
	mso-list-template-ids:1969549658 -284496248 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
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
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the Weekly Test Report for Yocto 1.5 M2 2013=
-06-18-2 Build:
<a href=3D"https://wiki.yoctoproject.org/wiki/Weekly_Test_Report_for_Yocto_=
1.5_M2_2013-06-18-2_Build">
https://wiki.yoctoproject.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M2_2013=
-06-18-2_Build</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issues summary:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>=1B$B!F=1B(Bdmesg=1B$B!G=1B(B errors for beagleboar=
d and atom-pc platforms (not yet solved)<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>=1B$B!F=1B(Bbitbake-prserv-tool=1B$B!G=1B(B was not=
 working but Richard already sent a patch for it.
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>qemuarm =1B$B!F=1B(Bdmesg=1B$B!G=1B(B errors avoide=
d using a workaround. Proper fix still pending.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>x32 build fails at &nbsp;=1B$B!F=1B(Bgmp_5.1.1 do_c=
onfigure=1B$B!G=1B(B<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>routerstation pro still cannot boot with NFS <o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For performance data, please follow the performance =
wiki page at:
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test">https://wik=
i.yoctoproject.org/wiki/Performance_Test</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the complete summary report. Click on the li=
nk given above for the full report.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in">
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:17.5pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p><=
/span></h1>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width: 0px=
;word-spacing:0px"><span style=3D"color:black"> Test type: Weekly Test<o:p>=
</o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: 1.5 M2<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: weekly<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 590010a6525b0e1bc1de73e794764e2=
3404591df<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit date: Tue Jun 18 10:16:10 2013 &=
#43;0100<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit: 60e99763dc9b77307d46e=
ae4f43343948fa49757<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/nightly/20130618-2<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 12.04 x86_64, U=
buntu 13.04 x86_64, OpenSUSE 12.3, Fedora 18 i686, CentOS 6.4 x86_64&nbsp;&=
nbsp; <o:p></o:p></span></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width=
: 0px;background-position:initial initial;background-repeat:initial initial=
;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Summa=
ry Report</span></span><span style=3D"font-size:17.5pt;font-family:&quot;Ar=
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
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Testing Summary Report<o:p></o:p></span></b></p=
>
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
<b><span style=3D"font-size:9.5pt">Test Run<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Test Plan<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Environment<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Passed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Other issues<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Failed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Failing bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Blocked<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Blocking bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Complete<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D785"><span style=3D"color:#5A3696">785</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 18 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D786"><span style=3D"color:#5A3696">786</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">openSUSE 12.3 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D788"><span style=3D"color:#5A3696">788</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D777"><span style=3D"color:#5A3696">777</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Atom PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D795"><span style=3D"color:#5A3696">795</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D797"><span style=3D"color:#5A3696">797</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D796"><span style=3D"color:#5A3696">796</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">P1022ds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D780"><span style=3D"color:#5A3696">780</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D782"><span style=3D"color:#5A3696">782</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D787"><span style=3D"color:#5=
A3696">787</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D790"><span style=3D"color:#5A3696">790</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D792"><span style=3D"color:#5=
A3696">792</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D789"><span style=3D"color:#5A3696">789</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D791"><span style=3D"color:#5=
A3696">791</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D781"><span style=3D"color:#5A3696">781</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D798"><span style=3D"color:#5A3696">798</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Routerstationpro<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4566"><span style=3D"color:#5A3696">4566</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4566"><span style=3D"color:#5A3696">4566</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D774"><span style=3D"color:#5A3696">774</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Eclipse Plugin: master branch<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">user-preference (any supported environment)=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D784"><span style=3D"color:#5A3696">784</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Meta-yocto: master branch<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 12.04 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D783"><span style=3D"color:#5A3696">783</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Hob: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 12.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D775"><span style=3D"color:#5A3696">775</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">OE-Core: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Multiple environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">94.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">5.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D776"><span style=3D"color:#5A3696">776</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BitBake: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 18 X86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">66.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">33.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4754"><span style=3D"color:#5A3696">4754</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 18</span></b><span style=3D"font-=
size:9.5pt"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Case Status Report<o:p></o:p></span></b></=
p>
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
<b><span style=3D"font-size:9.5pt">Status<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Count<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BLOCKED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">37<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">7<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">724<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 768</span></b><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><img border=3D"0" wi=
dth=3D"432" height=3D"120" id=3D"Picture_x0020_11" src=3D"cid:image001.png@=
01CE71C5.A9B39E20" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;c=
hs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:37,7,724&amp;chco=3DFFFF66|FF9933|00F=
F00&amp;chl=3DBLOCKED(37)&#43;5%25|FAILED(7)&#43;1%25|PASSED(724)&#43;94%25=
"></span><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
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
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black">Bug Status Report<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><=
img border=3D"0" width=3D"372" height=3D"120" id=3D"Picture_x0020_10" src=
=3D"cid:image002.png@01CE71C5.A9B39E20" alt=3D"Bug Status"></span><span sty=
le=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">ID</span></b><a href=3D"https://wiki.yoctoproje=
ct.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M2_2013-06-18-2_Build"><b><spa=
n style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:image00=
3.gif@01CE71C5.A9B39E20" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M2_2013-06-18-2_Build"><=
b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img b=
order=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:im=
age003.gif@01CE71C5.A9B39E20" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span =
style=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M2_2013-06-18-2_Build"><b>=
<span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"cid:imag=
e003.gif@01CE71C5.A9B39E20" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span st=
yle=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M2_2013-06-18-2_Build"=
><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img=
 border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"cid:=
image003.gif@01CE71C5.A9B39E20" alt=3D"=1B$B"-=1B(B"></span></b></a><b><spa=
n style=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M2_2013-06-18-2_Build">=
<b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img =
border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D"cid:i=
mage003.gif@01CE71C5.A9B39E20" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span=
 style=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M2_2013-06-18-2_Build=
"><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><im=
g border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=3D"cid=
:image003.gif@01CE71C5.A9B39E20" alt=3D"=1B$B"-=1B(B"></span></b></a><b><sp=
an style=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M2_2013-06-18-2_Build"><b=
><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img bo=
rder=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"cid:ima=
ge003.gif@01CE71C5.A9B39E20" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span s=
tyle=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M2_2013-06-18-2_=
Build"><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none=
"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2" src=
=3D"cid:image003.gif@01CE71C5.A9B39E20" alt=3D"=1B$B"-=1B(B"></span></b></a=
><b><span style=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M2_2013-06-18-2_Build"=
><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img=
 border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_1" src=3D"cid:=
image003.gif@01CE71C5.A9B39E20" alt=3D"=1B$B"-=1B(B"></span></b></a><b><spa=
n style=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D795"><span style=3D"color=
:#5A3696">795</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[beagleobard xM] Som=
e error message with usbhs_omap in dmesg<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">112<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Low<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D777"><span style=3D"color=
:#5A3696">777</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">dmesg log errors in =
Atom-PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.3.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">99<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D787"><span style=3D"color=
:#5A3696">787</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D782">=
<span style=3D"color:#5A3696">782</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">start qemuarm with &=
quot;core-image-sato&quot;, use &quot;dmesg | grep -i error&quot; shows 2 e=
rrors<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">95<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D775"><span style=3D"color=
:#5A3696">775</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">x32 build fails with=
 gmp_5.1.1 do_configure<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">27<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4566"><span style=3D"color:#5A3696">4566</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D798"><span style=3D"color=
:#5A3696">798</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">routerstation pro ca=
nnot bootup with NFS in yocto 1.5 20130521-1 build<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">21<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4754"><span style=3D"color:#5A3696">4754</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D776"><span style=3D"color=
:#5A3696">776</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">bitbake-prserv-tool =
export gives ParseError<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 6</span></=
b><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If you have any issues or concerns, please contact u=
s by replying to this e-mail.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Stoicescu Corneliu<o:p></o:p></p>
<p class=3D"MsoNormal">Romania Yocto QA<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_33115ABC4887814E8A92A08FBC93416B0A15544DIRSMSX103gercor_--

--_006_33115ABC4887814E8A92A08FBC93416B0A15544DIRSMSX103gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=9894;
	creation-date="Tue, 25 Jun 2013 14:01:41 GMT";
	modification-date="Tue, 25 Jun 2013 14:01:41 GMT"
Content-ID: <image001.png@01CE71C5.A9B39E20>
Content-Transfer-Encoding: base64

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

--_006_33115ABC4887814E8A92A08FBC93416B0A15544DIRSMSX103gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=8012;
	creation-date="Tue, 25 Jun 2013 14:01:41 GMT";
	modification-date="Tue, 25 Jun 2013 14:01:41 GMT"
Content-ID: <image002.png@01CE71C5.A9B39E20>
Content-Transfer-Encoding: base64

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
mzcnJyczmcxr164tXbqUlIvFYt3D6Q1MAMDExMTR0VEsFjs5OXV1dZGuFv3xyspKNpvN5/MBgMFg
VFdXe3h4LFiwoKur6+zZs9XV1XPnzgWAV199Va1WZ2dnC4VCMixyc3Pbv39/Y2PjihUrcnJy9P4Q
4n/BRS6Xnzx50tjYODY2Vq9jduTIkaqqKvI6Li7O39//fqccoeeDWCwmvZW6ujoyYIF7ZKILCgry
9fWtqqoSCoXbtm2bOHFiYmKiqampubm57g77+/v7+voGPJa1tbWjo2NFRYW1tTWLxSIzHQDA4/F0
DzfgpCxpQ1tbm26+O7VaffTo0dra2lWrVpESPp8vEok8PDzIfszMzPTmns3MzExNTckhZsyYIZfL
eTyeQqGQy+UuLi4lJSUajSYoKIhuw6/BRaPRpKSkTJo0ic1mp6SkbN68WbeVQqEwKSmJnAjduy0R
ep5NnTqVfP0EAkFGRkZ4eDj8NsDRrdbb23vx4sWoqCg/Pz8/P7+YmJgNGzbExsaOHj361q1bpNdA
lJWV3eeXm4yM+Hy+7pjI2tpa73B6enp6RCKRvb29RCKhLx61t7d/8cUXY8eOnT17Nl3I5XI1Go1C
oejs7HRycoqLi/P29k5PT1+3bl1TU5Obm1tsbGxISMiGDRt27twJAKQLcvr06bi4uOLi4qqqKjc3
tz179pD5HaDnXMrLy4cMGRIeHj5u3DhXV1eSqZwml8vd3d2trKzs7Oww9RxCenx9feVy+d2PGSE4
HE5ubm5tbS3Z7O7utrOz43A4AQEBR44ckUgkpLympkYoFPr4+NzrKAEBARUVFUVFRYOccAGAzs7O
b7/99sUXXyRppeh8d6dPn37ppZeioqJ0r1WTfHdqtXrPnj3kYjbJbkdR1BdffEFmbSQSiW5vSyKR
sFgsPp9fXl4eFRU1fvx4lUpFv/trz6WtrY3uaDk6OlZVVb3wwgtkU6FQKJXKlJQUIyMjNze3uLg4
vb4cQsjW1ra2ttbV1XXATHRz5879/PPPzc3NLSwsent7SX41Ozu7WbNmbdu2jc/nm5iYcLncV199
lR6J/Otf/6JHD5s2bTI2NuZwOAKBgFy0pvd//fp13cPNnj179OjRWq2WFHK53ICAgEmTJgGAlZWV
ra0tWc9SXl5eWFj41VdfkU+tX7+ez+eTlFRWVlYhISGbNm3i8XgSieSNN95gs9lxcXFbtmwZMmTI
rVu3Fi5cSB/uzJkzs2bNAoDQ0NDvvvtOrVbrdqN+zUSXnZ2t1WoTExMBIC8vr6OjY/r06aSGQqG4
du3a2LFjWSzWzp073dzcpk6devPmTTK33N7eTucox0x0zxLMRAcAj7GI7mFptdqWlhYOh6O7CgYA
KIqSSCQWFhYDpqF7ssgDPAbsHHV3dx88eHDJkl//+yqVSiaT0R0OAOjr62tpaXFwcNCdMGlpaaHz
VGm1WqVSqftX/NopMjc3l0ql5HVHRwdZyUPweLwJEyawWCwAiImJIWl+BQJBQkJCQkKCbhBFCN0L
k8m0t7fXiywAwGAwHBwcnkJkAQAfH5/KysoB38rLy4uOjqY32Wy2bmQBABaL5ejoqDdhrJsBj8lk
6v0VvwYXPz+/xsZGMmgsLS0leWva29v7+vpqamp2794NABRFVVdXBwcHP86fhxD6HYWGhg6YNtvP
z8/d3f3JHuvXORdra+vAwMCtW7eyWCx/f3+ysGfTpk2rVq1yd3e3sLDYvn27UqnkcDh0Om6E/gSe
yJDnGaJ7NVoX+co/Wf9b5zJlypTIyEjdNOI7duwgL+bPn69SqRQKhV5mYIQQupf/t0KXx+Pda+zH
ZrPvvpsTIYTuBe8tQggZBAYXhJBBYHBBCBkEBheEkEFgcEEIGQQGF4SQQWBwQQgZBAYXhJBBYHBB
CBkEBheEkEFgcEEIGcSgsv/fJ3c3QggN6ME9F5K729HR0dnZOSUlZcBkEAghpOfBPRc6dzcAlJSU
1NfX0+l1EULoXh7cc7k7d7eBm4QQ+jNgPHCYM2Dubt0E3ZhGF/2RCQQC+oll6Gl68LDI3NycxBHQ
yd2N/zCE0P09eFg0YO5uhBC6vwcPiwDgxIkTJSUlLBZr5MiRU6dOfQrNQgg96wYVXABAoVDo5u5G
CKH7G2xwQQihh/J/vMbuQD4jP+gAAAAASUVORK5CYII=

--_006_33115ABC4887814E8A92A08FBC93416B0A15544DIRSMSX103gercor_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=462;
	creation-date="Tue, 25 Jun 2013 14:01:41 GMT";
	modification-date="Tue, 25 Jun 2013 14:01:41 GMT"
Content-ID: <image003.gif@01CE71C5.A9B39E20>
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

--_006_33115ABC4887814E8A92A08FBC93416B0A15544DIRSMSX103gercor_--
