Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 699D7E006BC
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2013 01:50:45 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 03 Dec 2013 01:50:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,816,1378882800"; 
	d="xml'?xlsx'72,48?scan'72,48,208,72,48,145,147,150,217?rels'72,48,208,72,48,145,147,150,217?jpg'72,48,208,72,48,145,147,150,217,145?gif'72,48,208,72,48,145,147,150,217,145,147?bin'72,48,208,72,48,145,147,150,217,145,147?png'72,48,208,72,48,145,147,150,217,145,147,150";
	a="437642559"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga001.fm.intel.com with ESMTP; 03 Dec 2013 01:50:39 -0800
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 3 Dec 2013 09:49:56 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.135]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.169]) with mapi id
	14.03.0123.003; Tue, 3 Dec 2013 09:49:56 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.6 M1 QA Weekly report - WW48
Thread-Index: Ac7wDOUjkVR4lbB3Quax8eSzgKN9mw==
Date: Tue, 3 Dec 2013 09:49:55 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619FA850E@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Yocto 1.6 M1 QA Weekly report - WW48
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
X-List-Received-Date: Tue, 03 Dec 2013 09:50:50 -0000
X-Groupsio-MsgNum: 17416
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_"

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_007_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_";
	type="multipart/alternative"

--_007_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the Weekly test result for the 1.5_M1 WW48 weekly build: http://aut=
obuilder.yoctoproject.org/pub/nightly/20131127-4/

Issue summary:

-          5606<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5606> -=
 ADT installer not working in 20131127-4 build (autogen.sh file missing) - =
already fixed in master

The detailed report is available on the wiki: https://wiki.yoctoproject.org=
/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1


Testing data

 Test type: Weekly

 Branch: master

 Milestone: M1

 Build name: 1.6_M1

 poky commit: 32adaac34a614d106e6dd3e9f1130f4e94ff39ae

 Eclipse Plugin commit Kepler:  3dd620d9f89e297ee9e22d5ba9fe741a5f40ac82

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20131127-4/

 Distributions tested: Ubuntu 13.10 64bit, Fedora 19 64bit, Fedora 19 32bit=
, Fedora 19 64bit

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

1563<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1563>

ADT: master branch

Fedora 19 i686

62.5%

none

0.0%

none

37.5%

5606<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5606>

100.0%

1564<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1564>

ADT: master branch

Ubuntu 13.10 x86_64

62.5%

none

0.0%

none

37.5%

5606<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5606>

100.0%

1559<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1559>

BSP/QEMU: master branch

Beagleboard

92.1%

none

7.9%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182> 3936<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

0.0%

none

100.0%

1549<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1549>

BSP/QEMU: master branch

generic-x86 on AtomPC

97.4%

none

2.6%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

1548<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1548>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

100.0%

none

0.0%

none

0.0%

none

100.0%

1557<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1557>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

1558<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1558>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

1553<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1553>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

1560<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1560>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

1562<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1562>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

1561<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1561>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

1554<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1554>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

1556<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1556>

BSP/QEMU: master branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

1565<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1565>1566<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1566>

Eclipse Plugin: master branch

Fedora 19 x86_64

58.8%

none

5.9%

5473<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5473>

35.3%

5606<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5606> 5473<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5473>

100.0%

1555<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1555>

Meta-yocto: master branch

Ubuntu 13.04 x86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

1552<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1552>

Hob: master branch

Multiple environments

85.7%

none

14.3%

5579<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5579> 5581<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5581>5577<https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D5577>

0.0%

none

100.0%

1550<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1550>

OE-Core: master branch

Multiple environments

92.9%

none

7.1%

5146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146>

0.0%

none

100.0%

1551<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1551>

BitBake: master branch

Ubuntu 13.04 x86_64

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

BLOCKED

36

FAILED

9

PASSED

503

Total: 548


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:36,9,503&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(36)+7%25|FAILED(9)+2%25=
|PASSED(503)+92%25]



Bug Status Report


ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW48_-_2013-11-27_-_Wee=
kly_1.6_M1>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW48_-_2013-11-27=
_-_Weekly_1.6_M1>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW48_-_2013-11-27_-=
_Weekly_1.6_M1>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW48_-_2013-11-=
27_-_Weekly_1.6_M1>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW48_-_2013-11-2=
7_-_Weekly_1.6_M1>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW48_-_2013-11=
-27_-_Weekly_1.6_M1>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW48_-_2013-11-27_=
-_Weekly_1.6_M1>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW48_-_20=
13-11-27_-_Weekly_1.6_M1>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW48_-_2013-11-=
27_-_Weekly_1.6_M1>

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

NEW

1559<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1559>

[beagleboard xM] Some error message with usbhs_omap in dmesg

1.4

1.6

274

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

1549<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1549>

dmesg log errors in Atom-PC

1.3.1

1.5

261

5146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146>

Medium

REOPENED

1550<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1550>

btrfs image build fails at do_rootfs

1.5

1.5.1

79

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

Medium+

ACCEPTED

1559<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1559>

[Beagleboard xM]X can not startup with 3.10 kernel

1.5

1.5.1

75

5473<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5473>

Medium

NEW

1566<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1566>

unable to create new bitbake commander project

1.5

1.5.1

22

5577<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5577>

Medium+

VERIFIED

FIXED

1552<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1552>

Layer can not be removed

1.6

1.6

6 (Recent)

5579<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5579>

Medium

NEW

1552<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1552>

Recipes parsing stop.

1.6

1.6

6 (Recent)

5581<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5581>

Medium+

VERIFIED

FIXED

1552<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1552>

Kernel file is not generated under tmp/deploy/images/machine

1.6

1.6 M1

6 (Recent)

5606<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5606>

Medium+

RESOLVED

FIXED

1563<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1563> 1566<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1566> 1565<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1565>

ADT installer not working in 20131127-4 build (autogen.sh file missing)

1.6

1.6

NEW

Total: 9




Performance Test

Here is the performance test results chart cointaining the current weekly b=
uild and the 1.5 release. From the charts we can easily see that build perf=
ormance has  no degradations. It can be noted that the disk size has been i=
mproved. The full spreadsheet containing the charts is attached.


[cid:image003.jpg@01CEF01D.C74811B0]

--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_
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
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
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
	{mso-list-id:1487358848;
	mso-list-type:hybrid;
	mso-list-template-ids:-296593252 1400554918 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
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
<p class=3D"MsoNormal">Here is the Weekly test result for the 1.5_M1 WW48 w=
eekly build:
<a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20131127-4/">htt=
p://autobuilder.yoctoproject.org/pub/nightly/20131127-4/</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issue summary:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5606"><b>5606</b></a> - ADT installer not working in 20131127-4=
 build (autogen.sh file missing) &#8211; already fixed in master<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The detailed report is available on the wiki: <a hre=
f=3D"https://wiki.yoctoproject.org/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1">
https://wiki.yoctoproject.org/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1</a><o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
;word-spacing:0px"><span style=3D"color:black"> Test type: Weekly<o:p></o:p=
></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: M1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.6_M1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 32adaac34a614d106e6dd3e9f1130f4=
e94ff39ae<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler:&nbsp; 3dd620d9=
f89e297ee9e22d5ba9fe741a5f40ac82<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/nightly/20131127-4/<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 13.10 64bit, Fe=
dora 19 64bit, Fedora 19 32bit, Fedora 19 64bit <o:p></o:p></span></pre>
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
g/tr_show_run.cgi?run_id=3D1563"><span style=3D"color:#5A3696">1563</span><=
/a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Fedora 19 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">62.5%<o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">37.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5606"><span style=3D"color:#5A3696">5606</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1564"><span style=3D"color:#5A3696">1564</span><=
/a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">62.5%<o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">37.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5606"><span style=3D"color:#5A3696">5606</span></a><o:p=
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1559"><span style=3D"color:#5A3696">1559</span><=
/a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">92.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">7.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936=
</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1549"><span style=3D"color:#5A3696">1549</span><=
/a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">generic-x86 on AtomPC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.4%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">2.6%<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1548"><span style=3D"color:#5A3696">1548</span><=
/a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">genericx86-64 on Sugarbay<o:p></o:p></span>=
</p>
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
g/tr_show_run.cgi?run_id=3D1557"><span style=3D"color:#5A3696">1557</span><=
/a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1558"><span style=3D"color:#5A3696">1558</span><=
/a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1553"><span style=3D"color:#5A3696">1553</span><=
/a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1560"><span style=3D"color:#5A3696">1560</span><=
/a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1562"><span style=3D"color:#5A3696">1562</span><=
/a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1561"><span style=3D"color:#5A3696">1561</span><=
/a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1554"><span style=3D"color:#5A3696">1554</span><=
/a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1556"><span style=3D"color:#5A3696">1556</span><=
/a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1565"><span style=3D"color:#5A3696">1565</span><=
/a><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D15=
66"><span style=3D"color:#5A3696">1566</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Fedora 19 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">58.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">5.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5473"><span style=3D"color:#5A3696">5473</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">35.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5606"><span style=3D"color:#5A3696">5606</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5473"><span style=3D"color:#5A3696">5473=
</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1555"><span style=3D"color:#5A3696">1555</span><=
/a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86-64<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1552"><span style=3D"color:#5A3696">1552</span><=
/a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Multiple environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">85.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">14.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5579"><span style=3D"color:#5A3696">5579</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5581"><span style=3D"color:#5A3696">5581=
</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5=
577"><span style=3D"color:#5A3696">5577</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1550"><span style=3D"color:#5A3696">1550</span><=
/a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">92.9%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">7.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5146"><span style=3D"color:#5A3696">5146</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1551"><span style=3D"color:#5A3696">1551</span><=
/a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">36<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">9<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">503<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 548</span></b><span style=3D"font=
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
01CEF01D.C74811B0" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;c=
hs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:36,9,503&amp;chco=3DFFFF66|FF9933|00F=
F00&amp;chl=3DBLOCKED(36)&#43;7%25|FAILED(9)&#43;2%25|PASSED(503)&#43;92%25=
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
ct.org/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1"><b><span style=3D"font-size:=
9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"12" he=
ight=3D"14" id=3D"Picture_x0020_10" src=3D"cid:image002.gif@01CEF01D.C74811=
B0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-size:9.5pt">=
<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1"><b><span style=3D"font=
-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"=
12" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:image002.gif@01CEF01D.C=
74811B0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-size:9.=
5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1"><b><span style=3D"font-s=
ize:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"12=
" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:image002.gif@01CEF01D.C74=
811B0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-size:9.5p=
t"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1"><b><span style=3D"fo=
nt-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"cid:image002.gif@01CEF0=
1D.C74811B0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-siz=
e:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1"><b><span style=3D"fon=
t-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D=
"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"cid:image002.gif@01CEF01D.=
C74811B0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1"><b><span style=3D"f=
ont-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D"cid:image002.gif@01CEF0=
1D.C74811B0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-siz=
e:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1"><b><span style=3D"font-=
size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"1=
2" height=3D"14" id=3D"Picture_x0020_4" src=3D"cid:image002.gif@01CEF01D.C7=
4811B0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-size:9.5=
pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1"><b><span style=
=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" w=
idth=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"cid:image002.gif@01=
CEF01D.C74811B0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW48_-_2013-11-27_-_Weekly_1.6_M1"><b><span style=3D"fo=
nt-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"12" height=3D"14" id=3D"Picture_x0020_2" src=3D"cid:image002.gif@01CEF0=
1D.C74811B0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-siz=
e:9.5pt"><o:p></o:p></span></b></p>
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
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1559"><span style=3D"colo=
r:#5A3696">1559</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[beagleboard xM] Som=
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
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">274<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1549"><span style=3D"colo=
r:#5A3696">1549</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">261<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5146"><span style=3D"color:#5A3696">5146</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1550"><span style=3D"colo=
r:#5A3696">1550</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">btrfs image build fa=
ils at do_rootfs<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">79<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1559"><span style=3D"colo=
r:#5A3696">1559</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Beagleboard xM]X ca=
n not startup with 3.10 kernel<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">75<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5473"><span style=3D"color:#5A3696">5473</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1566"><span style=3D"colo=
r:#5A3696">1566</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">unable to create new=
 bitbake commander project<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">22<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5577"><span style=3D"color:#5A3696">5577</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">VERIFIED<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1552"><span style=3D"colo=
r:#5A3696">1552</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Layer can not be rem=
oved<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">6<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5579"><span style=3D"color:#5A3696">5579</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1552"><span style=3D"colo=
r:#5A3696">1552</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Recipes parsing stop=
.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">6<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5581"><span style=3D"color:#5A3696">5581</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">VERIFIED<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1552"><span style=3D"colo=
r:#5A3696">1552</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Kernel file is not g=
enerated under tmp/deploy/images/machine<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">6<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5606"><span style=3D"color:#5A3696">5606</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1563"><span style=3D"colo=
r:#5A3696">1563</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D156=
6"><span style=3D"color:#5A3696">1566</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D1565"><span style=3D"color:#5A3696">1565</span></a><o:p>=
</o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">ADT installer not wo=
rking in 20131127-4 build (autogen.sh file missing)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 9</span></=
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
Performance Test<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
Here is the performance test results chart cointaining the current weekly b=
uild and the 1.5 release. From the charts we can easily see
 that build performance has &nbsp;no degradations. It can be noted that the=
 disk size has been improved. The full spreadsheet containing the charts is=
 attached.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"963" height=3D"556" id=3D=
"Picture_x0020_1" src=3D"cid:image003.jpg@01CEF01D.C74811B0"><o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">--<=
o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Ale=
xandru Georgescu<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Yoc=
to QA Engineer<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">SSG=
/SSD Open Source Technology Center Romania</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_--

--_007_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=10204;
	creation-date="Tue, 03 Dec 2013 09:49:54 GMT";
	modification-date="Tue, 03 Dec 2013 09:49:54 GMT"
Content-ID: <image001.png@01CEF01D.C74811B0>
Content-Transfer-Encoding: base64

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
gg==

--_007_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=462;
	creation-date="Tue, 03 Dec 2013 09:49:54 GMT";
	modification-date="Tue, 03 Dec 2013 09:49:54 GMT"
Content-ID: <image002.gif@01CEF01D.C74811B0>
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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_
Content-Type: image/jpeg; name="image003.jpg"
Content-Description: image003.jpg
Content-Disposition: inline; filename="image003.jpg"; size=60161;
	creation-date="Tue, 03 Dec 2013 09:49:54 GMT";
	modification-date="Tue, 03 Dec 2013 09:49:54 GMT"
Content-ID: <image003.jpg@01CEF01D.C74811B0>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCAIsA8MDASIA
AhEBAxEB/8QAGwABAQADAQEBAAAAAAAAAAAAAAQCAwUGAQf/xABSEAABAwIBBwYJBwoGAQQCAwEB
AAIDBBEFEhMUITFUk0FRU5HR0gYVIjRSYXGSsSQyM3OBorIWIzVCZHKhwcLhB1VigpSj8ENEY4NF
lXSE8eL/xAAXAQEBAQEAAAAAAAAAAAAAAAAAAQID/8QAKxEBAQABAwQBAgYCAwAAAAAAAAERAhJR
ITFBYRORoSIyUoHR8HGxQsHh/9oADAMBAAIRAxEAPwD9Ze2SasewTSRtbG1wDLayS7nHqCz0R+9V
HW3sWTP0jL9Uz4uVCCXRH71UdbexNEfvVR1t7FUiCXRH71UdbexNEfvVR1t7FUiCXRH71UdbexNE
fvVR1t7FUiCXRH71UdbexNEfvVR1t7FUiCXRH71UdbexNEfvVR1t7FUiCXRH71UdbexNEfvVR1t7
FUiCXRH71UdbexNEfvVR1t7FSF5Xwr8KKvA8Sw+jpI6G9XHNIZa2cxMbmwDa4B1m6ZJMvQ6I/eqj
rb2Joj96qOtvYvJjw9LKCnrqikbDDNhj690LnuMwLSAGgBvzTceV67rCT/ESnL/B+qFosPxGOZ05
fE8vY5rWkNaALnWbXAN+RB6/RH71UdbexNEfvVR1t7Fyajw0wOnoaesfiDDT1LC+J7GPfdo2khoJ
AB1Em1lJN4Yw0nhFUQVc1OzC46CKqZOASXue8tAFr3BsLAC6D0OiP3qo629iaI/eqjrb2KBvhVgz
sWGGiuZpZdkBha4DLtfIyrWyrfq3v6llUeEmF0uLswuara2tfa0Qa42vsyiBZt+S5F0FuiP3qo62
9iaI/eqjrb2LmUfhhgeIV7qKlxGOScBxADXAPyfnZLiLOt/pJWuLw2wCXD3VceJNkga5rMtsbzlO
dezWi13HUdQuRbWg6+iP3qo629iaI/eqjrb2LXhuJ0mLULKugnbPA/Y9t+TUQQdYI5jrXApPDrDm
YXT1GMVVPTy1BlMbIC+UOax5aSLNuSOUW5+QIPR6I/eqjrb2Joj96qOtvYuZQ+GGBYlO6KjxOGV0
cJnJFw3IG0hxFjblsdXKsYPDLA6qmqp469ojpWCSYyMfGWtOw2cASDsFtqDq6I/eqjrb2Joj96qO
tvYuLF4c+D81LPUMr/zcMjYn3gkDss3s0NLbk6ibAFdfDsTpcWoY6ugnZPBILte09Y9RHMUGeiP3
qo629iaI/eqjrb2LmQ+GGBzxVUsVe10dLrleGOta+T5Jt5evV5N9a5mI/wCJGC0cNFLDI+oZUVYp
n5Mb2uh1XJc0tvcavJtc31IPTaI/eqjrb2Joj96qOtvYuZVeGGB0WINoqnEI46g5ILS11mF3zQ51
rNJ5nELVVeEEkPhZ4taIm0lNQOraqVwJcBlWaBb2OJ1HYg7GiP3qo629iaI/eqjrb2Lijw68HtFZ
UjEWmGR5jjeIn2kcBezfJ8o25uXVtW2g8M8BxOrhpaHEo5ppwTG1rXDKsLkXItlAfq7fUg6uiP3q
o629iaI/eqjrb2L5iFfT4ZQTVlZJmqeBpfI+xOSOew1qCbwpwelNUJq6MGlgbUTaicmN3zXahrvq
2c4QdDRH71UdbexNEfvVR1t7Fy5vC/A4MUbh8mIRtqnOazJLXZLXO2NLrZIceYkFc/wj8N6OiwrF
vFU8U+I4ewl0To3lrCHBpDjqHLsvrQek0R+9VHW3sTRH71Udbexeexfwvjo8xLRSwzxQ10VLXjJc
c3nNXku2XBLbjX9i9Wgl0R+9VHW3sTRH71UdbexVIgl0R+9VHW3sTRH71UdbexVIgl0R+9VHW3sT
RH71UdbexVIgl0R+9VHW3sTRH71UdbexVIgl0R+9VHW3sTRH71UdbexVIgl0R+9VHW3sTRH71Udb
exVIgl0R+9VHW3sTRH71UdbexVIgloy/88x8jn5EmSC617WB5PaqlNSfSVX139LVSglrnFtI8tcW
m4F2mx1kL7oUfSVHGf2r5iPmT/a38QVSCbQo+kqOM/tTQo+kqOM/tVKIJtCj6So4z+1NCj6So4z+
1Uogm0KPpKjjP7U0KPpKjjP7VSiCbQo+kqOM/tTQo+kqOM/tVKIJtCj6So4z+1NCj6So4z+1Uogm
0KPpKjjP7U0KPpKjjP7VSiCbQo+kqOM/tTQo+kqOM/tVKIJtCj6So4z+1NCj6So4z+1UrB5yWOI2
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
fxBVKXEfMn+1v4gqkBc3FMNOJRRtE7oXMLgXNaDdrgWuGv1HaukiDhz4Bnpnu0hubcL5p0LXMyrF
oJB2jJNrcp1ofByOTDoqOWpnDYgMh8Ts24GxB2bRr1DkC7iIOThWCR4VPUyRyF2fde2SBbWTrt84
3cdZ9Sokjz9c9hkka1sTSAx5brJPYFcpWfpKT6lnxcgaC3p6jilNBb09RxSqkQS6C3p6jilNBb09
RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilN
Bb09RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6
jilNBb09RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilNBb09RxSqkQS6
C3p6jilNBb09RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilNBb09RxSq
kQS6C3p6jilNBb09RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilNBb09
RxSqkQS6C3p6jilNBb09RxSqkQS6C3p6jilG0TWkHPVBsb2MpVSICIiAiIgIiICnqPp6X60/gcqF
PUfT0v1p/A5BQiIgnZ+kZfqmfFyoU7P0jL9Uz4uVCAiLntxWJxqBmp8qB5jLcjW85OVq9VueyDoI
uWzGoXPphmZ2x1MWdjkLQRsBsbEm9jzW9anl8JaaKR7NHqnEZRbktb5bW3DnjXsGSduvZYG6DqVv
mNR9U74FbWfRt9gWmscHYfO5puDE4g/YtzPo2+wIM0REBERB8Rc047QB7mNmMjmktIjjc/WPYF8O
NRn6Kjr5PZTuH4rK7bwzunLp2RczxpVPH5rCqt377mM+Ll80nFpRaKhghv8ArTT5VvsaNfWm03R0
9SmqsRpKEfKaiOMnYHO1n2DapBhdTUD5diEzhyx04zTeseUetUUuGUVGb09PGx3K+13H7TrV6TvT
rU/jaao8woJ5QdkkozTP46z1LLScWZ86hppP3Kgj4tXT1JqTM4MXlzPGVaz6XCaj2xyMd/ML546a
D5dDXs9ZgJH8LromRrdr2j2la3VlMz588Tfa8BTM8xdurxUX5QUA+fJJGeZ8L2/yWTcewxxsK+AH
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
7eS231XQehRcCkxeqqp6bNaPLE+Fz5GhpY9pByeUkfOuPsOtTV3hJUUNVPC6GMlsgyHNGVaOzi5x
GVr+ZbaD6tWsPQVvmNR9U74FbWfRt9gWmscHYfO4bDE4/wAFgzEKbNt/OjYP1SgsRSeMabpfulPG
NN0v3SgpIXm/DImSlpKRt8qoqANXV8SF2/GNN0v8CvO4nVw1nhdhkYkBiga6VxsdR19gVnldP5p/
ez1TGhjA1osALALNSeMabpfulPGNN0v3SoitFJ4xpul+6U8Y03S/dKCtFJ4xpul+6U8Y03S/dKCt
FJ4xpul+6U8Y03S/dKCtFJ4xpul+6U8Y03S/dKCtFJ4xpul+6U8Y03S/dKCtFJ4xpul+6U8Y03S/
dKCtFJ4xpul+6U8Y03S/dKCtFJ4xpul+6U8Y03S/dKCtFJ4xpul+6U8Y03S/dKCtFJ4xpul+6U8Y
03S/dKCtFJ4xpul+6U8Y03S/dKCtFJ4xpul+6U8Y03S/dKCtFJ4xpul+6U8Y03S/dKCtFJ4xpul+
6U8Y03S/dKCtFJ4xpul+6U8Y03S/dKCtFJ4xpul+6U8Y03S/dKCtFJ4xpul+6U8Y03S/dKCtFqhn
jqGkxuygDYragIiICIiAiIgmpPpKr67+lqpU1J9JVfXf0tVKCXEfMn+1v4gqlLiPmT/a38QVSAtM
sEU7A2aJsjWkOAe0GxGw6+VbkQTtpoGziVsLBIARlhovYm5F/brXyaipp2ls0EUjSQbPYCLjYqUQ
aYqeKDKzUTGZbsp2Q0DKPOfWtbP0lJ9Sz4uVSlZ+kpPqWfFyCpERAXxfV85EHJh/P+EtS/kp6dkf
2uJcf4ALpZ6MOLc43KHJlC65eEyNDcSrX/NfUPN/9LAG/wBJWrCsHo6jDYp6ykikmmvM9z2guu43
2/arpkxmrrtl2x3A4HYQfYvt1yz4PYW7/wBnGPZcIPB7Dh82FzfZK8fzTGnljOrh1F8JAFyQBzlc
zxBSj5slU392qkH80/J+gJBljfORyyyuf8SmJyZvDfNi9BTm0tZA08xkF+paBjtM8fmI6qo+qgcR
1kAKyGipacfmKeKL9xgHwW+ydD8TmeMa+X6DC5AOeeVrP4C5X3ScX3Gl/wCQe6umiZnBtvLmaXiv
+XQ/8n//AJXzTsT/AMqb/wAlvYuoibpwbby5XjDE+XCD/wAhi++MMQG3CZfsnZ2rqWSybpx/sxeX
M8Z1g24TUfZIw/zTxrUjbhNb9hYf6l00TM4MXly/HEo+dhWID15DD8HJ+UFGwfnxUQfWwPb/ACXU
RMzgxeUUOLUE5tFWU7jzCQX6lWHhwuCCOcLTNQU1QLTU8Mn78YKk/J/DxcxwGF3PE9zD/Ap0PxOm
i5nid7D+ZxKuZ6jIHj7wKaBiLT5GLPI5nwMPwsmJyZvDpouZmMYYPJq6OT96Bzfg5fA7GmfOioZB
/pke34gpj2bvTqXRcs1mKjV4sjPrbVD+bV907EgBfCiT6qhqbL/bF3R00XM8YV424TL9k7D/ADTx
lWjbhFT9ksZ/qTZf7Ym6Omi5RrMUn8mDDRCeV9RK2w+xtyf4J4sq6gXrsRlLejphmm9etx61duO9
N3EVVWJUtCPlNRHGeRpdrPsG0qU4tPU6qCgnkHJJN+aZ/HWepU0mF0VEcqnpo2PO19ruP2nWq9Sd
J2MWuZfGgLkYefVd4t9q+5/GW/Oo6N/7lQ4fFq6aKZ9G325ZrsTb87Cr+tlQ3+dl98aVTPpMJq/9
jmO/qXTRN04MXly/G83+U4h7sfeX3xrU/wCU1nWzvLpomZwYvLmeMq3/ACmo4jO1BX4gSAcJkHrz
7O1dNE3TgxeX1ERRoREQEREBERAU9R9PS/Wn8DlQp6j6el+tP4HIKEREE7P0jL9Uz4uVCnZ+kZfq
mfFyoQFK6gpXCQOpoTnHZTwYx5Zta55zZaMOxqgxcONBUNmydZs0jlIvrHO09S6KCdtJTtjzbYYw
zJDMkMFskbBbmWPi+kc14dSwEPfnHXjHlO9I859aqRBPW+Y1H1TvgVtZ9G32Baq3zGo+qd8CtrPo
2+wIM0REGJ5V5vDflfhric+1tPG2Eeonb8CvRkgAk6gF5zwOvLTV1a696mqe7XzD/wAKq6fNemRE
UQREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERBNSfS
VX139LVSpqT6Sq+u/paqUEuI+ZP9rfxBVKXEfMn+1v4gqkBcTwgnq4KeLRHzMynOBMMeW4uySWC1
jqLrAn+IWOP+E9J4OGkFa2U6Q5zWlgFgQL21nadQAFzrXbabtBsRcbCg81U11fpsgz07QGHVHAc2
G5Lruvkk5QcANV/YUlrMR/J+FwlnbWAN2QHLcde3ySNduYeuy9OiDhYHV11TVVwrWSDJk8m4Ia0X
cA0AtGuwBuCRr2q98j48SfkQvkvC35paLa3c5CuUrP0lJ9Sz4uQfdJl3Ob3md5NJl3Ob3md5Uogm
0iXdJveZ3lqnrnQQSyvpJg1jS4nKZsAv6StXL8IXEYNNG0+VNkwttzuIb/NS3EXTM6pHKypYvBKG
nzEokqmtjyrt1mQ3PLflK78cskbA1tHMGgWAymd5R1TBLi+H0rR5EIdO4c1hkt/i49S6y12kiW51
Wp9Jl3Ob3md5NJl3Ob3md5UooJtJl3Ob3md5NJl3Ob3md5Uogm0iXc5veZ3k0iXc5veZ3lSiCbSZ
dzm95neTSZdzm95neVKIJtJl3Ob3md5NJl3Ob3md5Uogm0mXc5veZ3k0mXc5veZ3lSiCbSZdzm95
neTSZdzm95neVKIJtJl3Ob3md5NJl3Ob3md5Uogm0iXc5veZ3k0iXc5veZ3lSiCbSJdzm95neTSJ
dzm95neVKIJtJl3Ob3md5NJl3Ob3md5Uogm0iXc5veZ3k0iXc5veZ3lSiCbSJdzm95neTSJdzm95
neVKIJtIl3Ob3md5NJl3Ob3md5Uogm0iXc5veZ3k0iXc5veZ3lSiCbSZdzm95neTSZdzm95neVKI
JtJl3Ob3md5NJl3Ob3md5Uogm0mXc5veZ3k0mXc5veZ3lSiCbSZdzm95neTSZdzm95neVKIJtJl3
Ob3md5BUSkgaJMAeUlmr7ypRAREQEREBERAU9R9PS/Wn8DlQp6j6el+tP4HIKEREEzP0jL9Uz4uW
9xDWkkgAc60M/SMv1TPi5Y10UU1DNHUGIMcw3MrQWj1kHUbJR4n/AAyzhdi7pIRE+SRr3DMZu5OV
f/02/F3b+gLy3gbgUeDNqnMxCirJJQwPNJSxwgEX1nI2k32nmWynqsVa6sLW1Ez9YbHLFktD7v1M
cbDJyQ03JIOy9ylPb0yLy9FU4mKqk0g1bfk5EzZIsoA31OOSLEnmBvr2WStrappromS4gHCqYIHs
pnFrbt13szWwEG/Pz60HoK3zGo+qd8CtrPo2+wLTW+YVH1TvgsGVE+bb8jl2D9dnagsRS6RPucvv
s7U0ifc5ffZ2oNOM1OiYNWT3tkQuI9ttSn8F6bRPBuijIsTGHn2u1/zUHhdUzOwJ0GjvjNTKyEEu
ab3OzUfUuzFJLDG2NtHJksaGjymcn2q1Z+W/3suRS6RPucvvs7U0ifc5ffZ2qIqRS6RPucvvs7U0
ifc5ffZ2oKkUukT7nL77O1NIn3OX32dqCpFLpE+5y++ztTSJ9zl99nagqRS6RPucvvs7U0ifc5ff
Z2oKkUukT7nL77O1NIn3OX32dqCpFLpE+5y++ztTSJ9zl99nagqRS6RPucvvs7U0ifc5ffZ2oKkU
ukT7nL77O1NIn3OX32dqCpFLpE+5y++ztTSJ9zl99nagqRS6RPucvvs7U0ifc5ffZ2oKkUukT7nL
77O1NIn3OX32dqCpFLpE+5y++ztTSJ9zl99nagqRS6RPucvvs7U0ifc5ffZ2oKkUukT7nL77O1NI
n3OX32dqCpFLpE+5y++ztTSJ9zl99nagqRS6RPucvvs7U0ifc5ffZ2oKkUukT7nL77O1NIn3OX32
dqCpFqje+RpLonRkcjiDfqK2oCIiAiIgIiIJqT6Sq+u/paqVNSfSVX139LVSglxHzJ/tb+IKpS4j
5k/2t/EFUg/OP8TK7JqcOhiqiwse4yMbKWEE5OTqD2X5eUr9Fb8wexeP8K6vAPGkMWL4viNFMyIn
M08szGPYTrLsgWOznXX8IKKeupYWU0RlaCbsEmRYlpDXX/0mxSdi93bReWqsNrtPlnFI+p8ggF04
bltyXAx2vqBcQ72etZTYXVOwOmp2QVDp4SxzGSPjcwOAI13J8kX5LnZbYg9OpWfpKT6lnxcoMIo5
6fEK+WZhjZM8OaC8G5F7kW5Nm3Xz7Aq5M/4xfmM19C2+XfndzILkUvy79m+8ny79m+8go5FysVGe
xDDKfnnzp9jGk/EhVnTv2f7y5jn1DvCEveYLUtKXE+VZuW7sYnprR3t4iqh/P4ziFQbFseRTsPsG
U7+Lv4LqLi4G2sGGxy2hDqgundlXvdxv8CF0Pl37N95XV3w56eytFL8u/ZvvJ8u/ZvvKNKkUvy79
m+8ny79m+8gqRS/Lv2b7yfLv2b7yCpFL8u/ZvvJ8u/ZvvIKkUvy79m+8ny79m+8gqRS/Lv2b7yfL
v2b7yCpFL8u/ZvvJ8u/ZvvIKkUvy79m+8ny79m+8gqRS/Lv2b7yfLv2b7yCpFL8u/ZvvJ8u/ZvvI
KkUvy79m+8ny79m+8gqRS/Lv2b7yfLv2b7yCpFL8u/ZvvJ8u/ZvvIKkUvy79m+8ny79m+8gqRS/L
v2b7yfLv2b7yCpFL8u/ZvvJ8u/ZvvIKkUvy79m+8ny79m+8gqRS/Lv2b7yfLv2b7yCpFL8u/ZvvJ
8u/ZvvIKkUvy79m+8jdNuMrR7X12ykFSIiAiIgIiICnqPp6X60/gcqFPUfT0v1p/A5BQiIgmZ+kJ
fqmfFy0YxDLNhFVDBDHNI+MtbHLGHscTztJAI9Vwt7P0hL9Uz4uX2rklhpZZKeA1EzWksiDw3LPN
c6gpexH53/hNTx00mMtjljkIMYsxkbckAvsLMc7V7dftX6WvF+AWD4rhb8RfitA2mM5Y5hzuccfn
XbfLdqFxbZtK9otU819REUE9b5jUfVO+BW1n0bfYFqrfMaj6p3wK2s+jb7AgzREQedx75T4QYJRj
WBK6dw9TRq/ivQheej+VeHUzjrbR0jWD1Oeb/BehRb2kfUREQREQEREBERAREQEREBERAREQEREB
ERAREQEREBERAREQEREBERAREQEREBERAREQEREBERBNSfSVX139LVSpqT6Sq+u/paqUEuI+ZP8A
a38QVSlxHzJ/tb+IKpB+X/4pUny2iqameTRzcRxtlcA21so2A2m4572X6az5g9i8l4W+DmMY/W0z
qKso6enp/KZlxuMmWeW4NiNQ1da9W6RkLAZXtaNQu42uUnYvdtRaXzxRuLXyMa4NLiC4A2HL7Fln
mZDX5bch1rOvqN9iDYpWfpKT6lnxctrJWSFwY9riw2cAb5J5itTP0lJ9Sz4uQVIiIMbLzM7nPgxi
Rps+pnbSR9Qb/U7qXpHvDGOcdQAuV5vDWmdmExuGuR0ldJ9pOT/F46k0959VvTRfeI9JHG2KJkbB
ZrQGgeoLYiIgiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgI
iICIiAiIgIiICnqPp6X60/gcqFPUfT0v1p/A5BQiIgnZ+kZfqmfFyoU7P0jL9Uz4uVCAsbjXrGrb
6lkvNQYRV02mv0SnldIHANMxDag3eQ6TV/qAsb/wCD0YcCbAjWLoSBtIC8pQ4DV0+I09QYWMZHBm
8kSgEHXqBAuNZ1AHJtyX1rHE/BrEqp9Qc7TziaZsl8nIdqDgAcrKFgCBqAOq4IKD09b5jUfVO+BW
1n0bfYFprARh84Nr5p2z2LBkFTkN+WHZ0bUFi+KbMVO+HhtWqobUQU0szqw5MbC4/m28gug5ng4M
/X4xWXuJaoxtPqYLL0PIvPeC9JOzwfpXictMoMxGQDrcSf5rr5ip3w8Nqd+rWvpqxx0VopcxU74e
G1MxU74eG1GVSKXMVO+HhtTMVO+HhtQVIpcxU74eG1MxU74eG1BUilzFTvh4bUzFTvh4bUFSKXMV
O+HhtTMVO+HhtQVIpcxU74eG1MxU74eG1BUilzFTvh4bUzFTvh4bUFSKXMVO+HhtTMVO+HhtQVIp
cxU74eG1MxU74eG1BUilzFTvh4bUzFTvh4bUFSKXMVO+HhtTMVO+HhtQVIpcxU74eG1MxU74eG1B
UilzFTvh4bUzFTvh4bUFSKXMVO+HhtTMVO+HhtQVIpcxU74eG1MxU74eG1BUilzFTvh4bUzFTvh4
bUFSKXMVO+HhtTMVO+HhtQVIpcxU74eG1MxU74eG1BUsSQ1pLiABrJPItcLJGNIllMhJ1HJAt1LY
5oe0tcAQRYg7Cgm8Z0W90/Fb2o3EaVzg1lTA5x1BokbcnrXzxVQblS8JvYjcMoWuDmUlM1zTcERN
BB6lejPVDFj7Mhzq2nkpgJHRC5EhcRqNg252my+flXg/5sOrAwyODWh8bmk35bEbOS+xXHDKV7mu
dFrbIZR5R1OJuT1haTgVDn45mRPZLGAA9kjmmw5Dr1j1KNNU3hBTMq5aOJj5KtjyzNAgXszKvc6g
LK+jqW1tFDUsY5jZWB4a8WIuOVaKrB6StgkimjfkSvy3ZEjmkuta9webUqoYhBAyNpeQ0WBe4uP2
k6ygwpPpKr67+lqpU1J9JVfXf0tVKCXEfMn+1v4gqlLiPmT/AGt/EFUgLj45hkuKU8TYmwvLS4Fs
18nymluUNR1i9x8QuwiDzc2CVZrHzwx0chDSWGd7nEnJc3JOr5pvlH16rcqzfg07cHipY6emzsb4
nDLmcWgtdckeTqPNYDb6l6FEHGwfC5qGqqZJRCM55IMd7v8AKc7KdqGvyrcuzaq3xvkxJ+RM+O0L
fmhpvrdzgq5Ss/SUn1LPi5B90ebfJvdZ3U0ebfJvdZ3VSiDjY4JYMGqnCqlLjGWAZLNZOocnrWnD
KN/jKpyaiQNpo46VhDW8gyiNnrCoxw5bqGn5Jalhd+6y7z+ELPAWk4YJ3iz6l7pz/uNx/Cyunzf2
XV+WT/N/6V6PNvk3us7qaPNvk3us7qpRRE2jzb5N7rO6mjzb5N7rO6qUQTaPNvk3us7qaPNvk3us
7qpRBNo82+Te6zupo82+Te6zuqlEE2jzb5N7rO6mjzb5N7rO6qUQTaPNvk3us7qaPNvk3us7qpRB
No82+Te6zupo82+Te6zuqlEE2jzb5N7rO6mjzb5N7rO6qUQTaPNvk3us7qaPNvk3us7qpRBNo82+
Te6zupo82+Te6zuqlEE2jzb5N7rO6mjzb5N7rO6qUQTaPNvk3us7qaPNvk3us7qpRBNo82+Te6zu
po82+Te6zuqlEE2jzb5N7rO6mjzb5N7rO6qUQTaPNvk3us7qaPNvk3us7qpRBNo82+Te6zupo82+
Te6zuqlEE2jzb5N7rO6mjzb5N7rO6qUQTaPNvk3us7qaPNvk3us7qpRBNo82+Te6zupo82+Te6zu
qlEE2jzb5N7rO6mjzb5N7rO6qUQTaPNvk3us7qCnluL1cpA5C1mv7qpRB8UVTi1BRy5qpq4YpLXy
XvANlavhaDtAP2JMeUufDnflDhP+Y03EC1yYw4z0uhsgqaafKvMJiMnJFzYBpv1rqZDeYdSwfTxS
Oa57GksvkkjZcWKXGOhM+XGPhZRMAdNFUMjAynS5olgGwm+21yBs5Vsj8JKaakgqooKoxyzGEtzL
stpyS6+SASRq5OdXeK6IxhhpYSwasktFtoPxAKygoKenijZFEA2N2UwEk5Jta4v6iUVJhmKy18pa
6mzcZhZMx4flancjhYZJ5ba9XMrqj6el+tP4HLTSYVRUE0stLTsifL88tv5X2LdUfT0v1p/A5BQi
IgnZ+kZfqmfFyoU7P0jL9Uz4uVCAiIgIiIJ63zGo+qd8CtrPo2+wLVW+Y1H1TvgVtZ9G32BBkuP4
UTGHwcrMg2fI0RN9riG/zXYXE8Ivz1RhdGNeeq2vcP8ASwFx+ARdEzZl1aWAU9JFA3ZGwMH2Cy3I
iJbnq+oiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgLW9+bjc4gk
NBNmi5PsC2Ig5Hj+PccR/wCI/sX2PG2SytjFHXtLjYOfTPAHtPMuoimGs6eHnm4vXUotPmqqR9Q+
BjWMzQ1EAXJJ51oHhfLn4YHYY7Oy5Js2dtg0m202ub31cwXqMkcw6li6KN9spjXWNxcXsVWXn6/H
aynfVsZBFGyKR7G1ErhkaosuxF73v9i7lHOKmjgnBa4SMa67TcG45FtdGx7SHNa4HaCL3X1rQ1oa
0AAbAORBopPpKr67+lqpU1J9JVfXf0tVKCXEfMn+1v4gqlLiPmT/AGt/EFUgKKsr6egjbJUyZDCb
CzS47L7ADqsL35FaubieG+MY2NE74SwkFzQDdrgQ4a/UdqD7JjNDDO6KSoBe1peclpcABc7QLX1H
Vt1LKXFaSClFS+a8LgHZTWl1gRcEgC4FtdypTgjtLdNHVuZqJawRtsH5JaHfY02ty7Ufg05wyGjb
XFojyGudmWnONaLZLhzHV1etBfT1kFW6RsDy7NuyXOySG39RIsfsRn6Sk+pZ8XKTCsGjwuoqpY35
WedewYG21k67bTdx1nkst0lPHNiT840m0LbWcRyu5kF6KXxdTeg733dq+eLqb0He+7tQcXwhkc+u
Ecfz46Zwb+/K4Rt/qXfhibDDHEz5rGho9gFl5fRYarwpdGGksZKL+UdjGX5/SeOpeiGH0/oO993a
r/xjWv8ANjiT+ViKTxdTeg733dq++Lqb0He+7tUZVIpfF1N6Dvfd2p4upvQd77u1BUil8XU3oO99
3ani6m9B3vu7UFSKXxdTeg733dqeLqb0He+7tQVIpfF1N6Dvfd2p4upvQd77u1BUil8XU3oO993a
ni6m9B3vu7UFSKXxdTeg733dqeLqb0He+7tQVIpfF1N6Dvfd2p4upvQd77u1BUil8XU3oO993ani
6m9B3vu7UFSKXxdTeg733dqeLqb0He+7tQVIpfF1N6Dvfd2p4upvQd77u1BUil8XU3oO993ani6m
9B3vu7UFSKXxdTeg733dqeLqb0He+7tQVIpfF1N6Dvfd2p4upvQd77u1BUil8XU3oO993ani6m9B
3vu7UFSKXxdTeg733dqeLqb0He+7tQVIpfF1N6Dvfd2p4upvQd77u1BUil8XU3oO993ani6m9B3v
u7UFSKXxdTeg733dqeLqb0He+7tQVIpfF1N6Dvfd2p4upvQd77u1BUil8XU3oO993ajaCnaQQ11w
bjy3dqClc+qr5qabIZh9VO218uPIt7NbgV0EQlk7xyvHFT/k9d1xd9aZxV1dTR1DG1tO0Zechym2
NgS3KtfafWu1ZfVMe2rZ4jzBr/CGOISspo5Bk3EJicHE3DbF1/Xe9uRbaeqxqpw6mkyYG1JnIfeK
RrMjIPzg4AjXb1bF6NFWXCwOeskqJ4611Q5wiid+chLWh1jlBpsAdduddWo+npfrT+ByoU9R9PS/
Wn8DkFCIiCdn6Rl+qZ8XKhTs/SMv1TPi5UICgZi9E8zBtQ28F85cEWtfZfbsOy+wq9cenwV9LLM+
OqJc4FsWVEDm2kuNvXrdt5hZBWzFKR74WtqGXmizzL6rs1a/VtG1a34vQxumD5w0wOa192uFi42F
tWu5B1jmKjpfBxtM+CbS5nzRRCI3+jeAAASzZsHXrXyp8HjWvqHVVdO4vky43Rfm3RjWA24OsAHl
5yeVB1q3zGo+qd8CtrPo2+wLTWi1BUD/AOJ3wWDMPp823yX7B/6ru1BVylcWb5R4YUzdraWmfJ7C
8ho/gCujoEHNJxXdq5OF0cVRjWKzFr8lkjIG+W79VtzrvzuStaPN9PQopfF8HNJxXdqeL4OaTiu7
UZVIpfF8HNJxXdqeL4OaTiu7UFSKXxfBzScV3ani+Dmk4ru1BUil8Xwc0nFd2p4vg5pOK7tQVIpf
F8HNJxXdqeL4OaTiu7UFSKXxfBzScV3ani+Dmk4ru1BUil8Xwc0nFd2p4vg5pOK7tQVIpfF8HNJx
XdqeL4OaTiu7UFSKXxfBzScV3ani+Dmk4ru1BUil8Xwc0nFd2p4vg5pOK7tQVIpfF8HNJxXdqeL4
OaTiu7UFSKXxfBzScV3ani+Dmk4ru1BUil8Xwc0nFd2p4vg5pOK7tQVIpfF8HNJxXdqeL4OaTiu7
UFSKXxfBzScV3ani+Dmk4ru1BUil8Xwc0nFd2p4vg5pOK7tQVIpfF8HNJxXdqeL4OaTiu7UFSKXx
fBzScV3ani+Dmk4ru1BUil8Xwc0nFd2p4vg5pOK7tQVItUMLIWkRh1ib63E/FbUBERAREQEREE1J
9JVfXf0tVKmpPpKr67+lqpQS4j5k/wBrfxBVKXEfMn+1v4gqkBEXOxTExhsTHZl8pdc5LSBYNBLj
r5gEHRRcSq8Io6eYtbTTyM1MD9TbyEXa2x167bdiykx2GGgFTJDKxxdkZrVfKuQ4A7DaxJIPIg7K
lZ+kpPqWfFy00OJNraqrhETmOpnhpJIIdfl1exZunihxJ+dlYy8LbZTgL63ILEK0adTbzDxApMTx
Onp8MqZWVMRcyJxFngm9tSLJm4cvwX+VVtbWchcQ3/c4uP8ADJXpbayvP+Cj6ek8H4BJPC18l3uB
eNV9n8AF2tOpt4h4gS9OnBett5UIp9Opt5h4gTTqbeYeIERQin06m3mHiBNOpt5h4gQUIp9Opt5h
4gTTqbeYeIEFCKfTqbeYeIE06m3mHiBBQin06m3mHiBNOpt5h4gQUIp9Opt5h4gTTqbeYeIEFCKf
TqbeYeIE06m3mHiBBQin06m3mHiBNOpt5h4gQUIp9Opt5h4gTTqbeYeIEFCKfTqbeYeIE06m3mHi
BBQin06m3mHiBNOpt5h4gQUIp9Opt5h4gTTqbeYeIEFCKfTqbeYeIE06m3mHiBBQin06m3mHiBNO
pt5h4gQUIp9Opt5h4gTTqbeYeIEFCKfTqbeYeIE06m3mHiBBQin06m3mHiBNOpt5h4gQUIp9Opt5
h4gTTqbeYeIEFCKfTqbeYeIE06m3mHiBBQin06m3mHiBNOpt5h4gQUIp9Opt5h4gQVtM4gCohJOo
APGtBQiIgIiICIiAp6j6el+tP4HKhT1H09L9afwOQUIiIJ2fpGX6pnxcqFOz9Iy/VM+LlQgIiICI
iCet8xqPqnfAraz6NvsC1VvmNR9U74FbWfRt9gQfTqBJXH8GBlYTpBvlVMsk5v8A6nG38LKnG6jR
MErZhtbC63ttYfxWzDaYUeG09PYfmo2t1c4CnlqdNNWoiKsiIiAiIgIiICIiAiIgIiICIiAiIgIi
ICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiCak+kqvrv6WqlTUn0lV9d/S1UoJcR8yf
7W/iCqUuI+ZP9rfxBVIChrcOp8Qja2qY5wYbjJeWnZYi4I1EEgjYVciDly4HRTyuklie9zhY3kdb
lsQL6iL2B2gbFk7BaGSlFNNTMmhA1Mmu/Xz676zc3O0rpIgjpqGCmmlkia4PktlFz3O1C9gLnUBc
6hq1r60A4lJcA/mWbfa5VqVn6Sk+pZ8XIN+Q30R1LgeGL7YE6CMDOVMrIW2263f2XoVwcXbpfhBh
FLyMe+peP3RYfxKNae+XYgp46enjha0ZMbQ0auYLbkN9EdSyRGWOQ30R1JkN9EdSyRBjkN9EdSZD
fRHUskQY5DfRHUmQ30R1LJEGOQ30R1JkN9EdSyRBjkN9EdSZDfRHUskQY5DfRHUmQ30R1LJEGOQ3
0R1JkN9EdSyRBjkN9EdSZDfRHUskQY5DfRHUmQ30R1LJEGOQ30R1JkN9EdSyRBjkN9EdSZDfRHUs
kQY5DfRHUmQ30R1LJEGOQ30R1JkN9EdSyRBjkN9EdSZDfRHUskQY5DfRHUmQ30R1LJEGOQ30R1Jk
N9EdSyRBjkN9EdSZDfRHUskQY5DfRHUmQ30R1LJEGOQ30R1JkN9EdSyRBjkN9EdSZDfRHUskQY5D
fRHUmQ30R1LJEBERAREQEREBT1H09L9afwOVCnqPp6X60/gcgoREQTs/SMv1TPi5UKdn6Rl+qZ8X
KhAXAHhBLm6h5pAQwZUWTJtGU5gy9Xk628l9q76h8VUN5vkkP55xdJ5A8skEG/PtPWg59Jj89RVC
F9G3yZHQPyJbnOAEnJBAu2w2kg+paJfCWeOV7GUkbvJfJGTMReNhcHX8nU7ydQ17dupdePCMPjc1
zKOBrmx5oEMAIbzLF+DYfIXl9FA4ySCV14x5Thyn16z1lBuq3B+HTOF7OhcR1L4yvpc235TDsH/q
BVr5YcyDgeEFVT1FJDTsnjInqY2vs4GzQ7KJPq1LrCupQPOYeIFRbWlhzItvSRo0+l3qHiBNPpd6
h4gVFhzLTU1ENLTvmncGRM1ucdgHOfUiMdPpd6h4gTT6XeoeIFvFnAEWIOsEL7YcyCfT6XeoeIE0
+l3qHiBUWHMtEFZTVMs0cE0cj4XZMjWm5afWg+afS71DxAmn0u9Q8QKiw5ksOZBPp9LvUPECafS7
1DxAspaiGB0bZZY4zI7IYHOAyjzDnK3WHMgn0+l3qHiBNPpd6h4gVFhzJYcyCfT6XeoeIE0+l3qH
iBKatpqxr3Us0cwY4scWOBs4ciosOZBPp9LvUPECafS71DxAqLDmWieqipjGJnhmcfkMJ2Fx2C6D
5p9LvUPECafS71DxAqLDmSw5kE+n0u9Q8QJp9LvUPECo1epaoZYqmFssEjJI3i7XsIII9RCDDT6X
eoeIE0+l3qHiBUWHMlhzIJ9Ppd6h4gTT6XeoeIF9kqaeKpip5JWNmlDjGwmxeBa9hy2uFvsOZBPp
9LvUPECafS71DxAqLDmWEskcMbpJXNYxgu5zjYAINWn0u9Q8QJp9LvUPEC3Me2RjXt1tcLg25FlY
cyCfT6XeoeIE0+l3qHiBUWHMtInj0gwZQzgaHFvMDs+B6kGOn0u9Q8QJp9LvUPECosOZLDmQT6fS
71DxAmn0u9Q8QLZNNFTwvlmc1kbBdzjsCxpqmCrgbNTyMkidsc03CDHT6XeoeIE0+l3qHiBUWHMl
hzIJ9Ppd6h4gTT6XeoeIFty2ZeRduWRe19dudZ2HMg1xzRTgmKRjwNRLXA2W1fF9QEREBERAREQT
Un0lV9d/S1Uqak+kqvrv6WqlBLiPmT/a38QVSlxHzJ/tb+IKpAXHxzE5sMgjdDmcp5cS6a+TZrS6
2rlNrD+a7C1SwRzgNlja8AhwDgDYjYUHnq7wiqaaoLWNpmt8lmQ9xLgXAkPNj80W1j+Kymx6pjw6
KUGlbI5z2mRzjm3ZIcTYXuL5OrXy8q7ZpKdzi4wRlxaWk5AuQdZHsK+mjpywMMERaLWaWCwts6uR
BzcExebE5ZRI2EAND2tZfKjBc4ZL/wDV5PqVskhhrnvdHK5romgFjC7WC7m9qojhjic8xxsYXnKc
WtAyjznnK2oJNNHQ1HBcubE57vCKoq5aeoEbYGRRHNHXcku/ku4iEuMpdNHQ1HBcmnDoajguVaIJ
NOHQ1HBcmnDoajguW2eXMQPkDHPyRfJba7vUPWsKSrirads1O4Pjds17OcEchHMgx04dDUcFyacO
hqOC5Vogk04dDUcFyacOhqOC5a8RxODDYjLUZZaNZDG5RaOVxHIBY61VDNHUwtlgka+N4u1zTcEI
NOnDoajguTTh0NRwXKtEEmnDoajguTTh0NRwXLCqxSko54YaiXNulNmk3yRzXOwX5L7Vcgk04dDU
cFyacOhqOC5Vogk04dDUcFyacOhqOC5YyYjDHiEdG7OZyQanZByL2JtlbL2BNvUrUEmnDoajguTT
h0NRwXKtEEmnDoajguTTh0NRwXL46ujjxBtI/Ka97cqMn5r+cA84225lYgk04dDUcFyacOhqOC5V
ogk04dDUcFyacOhqOC5fKaup6ySeOGS74XlkjSCCD7DyevYVYgk04dDUcFyacOhqOC5Vogk04dDU
cFyacOhqOC5asPxSmxJrzTvOVG4texwyXtsbawddjbUeVdBBJpw6Go4Lk04dDUcFyrWiqqoqGklq
ah2TFE0ucbXsAg16cOhqOC5NOHQ1HBcsqStp62Mvp5mSBpyXZLgck8xtyqlBJpw6Go4Lk04dDUcF
yrU1ZVx0VOZpr5AIbq5yQB/EoMdOHQ1HBcmnDoajguWymqoKuATU0rJYzcBzDcalvQSacOhqOC5N
OHQ1HBcq1FiFfHh8THPZLI6R2S1kTcpx1Emw9QBP2IMtOHQ1HBcmnDoajguW2CeOpgZNC4PjkaHN
cOUFbkEmnDoajguTTh0NRwXKtaJaiKF8bXus6V2Q0WuXG1/gEGvTh0NRwXL62ta4gZqoFzbXE5VI
gIiICIiAiIgKeo+npfrT+ByoU9R9PS/Wn8DkFCIiCdn6Rl+qZ8XKhTs/SMv1TPi5UICIiAiIgIiI
CItUk0cIBlkYwE5ILiBc8yDXXVsWH0UtVUEiKJuU4jkC89W1lZjcj6XCyY4xYtmEhafWTqIIGwt2
3sSCCttHjFTiNQ9ppS+GV2ZkpZGAPp9oLnG9nsNj9urnt2KCgiw6nEUbQLm7iBtPZyAcgsEH3D6R
tDRxwMN2sHNYX5bDkHMOTYrEXJxfGYsKgdYNlmDcsxCRrXBt7F2v/wAug0Y5iAOF1AopmZwPzL3E
kNZyOuRrAF7XGw/ateB4e6ZtHiFUHCojiyA4sDXytI1F4GzadQ1X1rVgeDSGqOI1JBvIZYXFgEjg
5trvIAOw/N59t7BemQFg4kMJa3KcBqF7XWqrqW0lNJO9kj2xi5bGwucfYBtXJElRUYiyqw6uE1PO
Y3GIsu1rBqd5V9Xste+3VsDlMdV+EOIyCWkljhMQZLBUAFsD2u15Lmm9/mm2rKA9i9ZSwaNSxQ5x
8mbYG5bzdzrDafWtdJFNHlvqJGve917NbZrRyAcp9pVaAuTidfJDhwloix+dObE4OUyIm4Dja9wD
YfFR+EeLzUbTS08dVHM9gkiqIohI0lrruZk7SbDZbYVswHBPF8T5JicqV+czIP5qM3Ni0chN9Z2n
lQbsMoZ2VLqucuhLo2ximDmloybjKJA1k82wLsIo6+sbRUssgbnZWxueyEOAdJki9hdBhiGJQYZH
HJVOc1kkgYCBfWf/ADsuVwpRXeEdS3NlsVGx5DxnLtdH622s7KBBBBtblBGvLDqmsx2SqjnibLhk
jsqOSZga+J3kkMyRttc+VqINrX2r0VNAylgbFC3Ja3+POfadqDOJgjjawFxDQAC4kk+0nas3ODWl
ziAALknkWS8r4TYjLIZMMjhqWOdkOyxCJI54ybPbYeVYX121hB0cZrallLEKFodpByGzXBa2+wbD
87YDsBIus8Kw/RHyzhjqfP2JpWuBjjPOANWUdV7avifmE4Y+jY58znFziHNjdIZM2cmx8o7SfsHq
XXQFqMrcsxhzS8Nysm+u3Op8TrHYfh8tUKeWozQBMcVi4i+si/MNf2LzWF0lTi2IVFbnZ2xuma9k
5yo3ZAIc1uSPJeMlxaHa9V73QUGjl8Ip2uxGB7KeN5c0NkDXQkAAsOq98oZVwbWtybfU8ixjjbEw
MY0NaNgCzQa3yNiY58jg1jRcuJsAFx8dmneI6KGAPZUjW55Ba8Ai8esEAubexOrVzrnY/XT1tYMK
igqY3NmblNcy7J2EanBwuWgOt5XIRr5j28KoDRxPErnOc57ntDnl5jBt5IcSSdlz6ygxwnDWYcyR
4Zm3TlrnRNN2sIFtvKedx2rqIufiuJDC6LSnU00zGuAeIrXY07XG5GocqCiSYNZNmhnZY25WaaRc
6tQ9V7cq83T4dNjdY2uq2uibe7XNcNgcCGZJF2uaQQXbdvIdWOBYfVVcpq55Jg4VBc6V2VGZgLts
Y/m6xk+VrBAHLrXq2NaxgawANaLADkCDNappo6eJ0k0jY42i7nvcAB7SVtXncXfNXNBoJjVQtybx
wNBcHh+p7XnybgjW06rXQKuvfVYg/D5omSUk9mMDcoOcCLiRrhqIB1G2ttgV0sLoDQwPDpXyyyvz
kjnW1usByADkGu2vamF4cMPp82XNc8kkljclouSbNbc2Gs6l0EBczEsZgwwiN4Jnexz4o7hucydo
BOrUNfsWvEcWEDpIqXNz1MbDLJE6XJyWAXPIdfq9YvqXNo8NkxqrlqqyYT0JLTA5thnQDlW1fqhw
1bDt1kFAwemrcRxN+Kvqpm0kjGiNhDQ5wBJyTq1AG49fOQV6lYtAa0NaAANQA5FkgIiICIiAiIgI
iIJqT6Sq+u/paqVNSfSVX139LVSglxHzJ/tb+IKpS4j5k/2t/EFUgIiICIiAiIgIiIC0VM2j0ssz
Y3SGNhcGN2usL2Cwrq6nw2kfVVcoihZbKeQTa5sNnrK8/R4jiGJYjNLRljs3Lmi0SZVO+K98q41t
kAcDbl+Aa5Kmo8KfzEGTHTOjaXCSO9iSbk3sdnzfWHA2IXo6CijoKVsEZLrAZT3fOebWuTynUs6e
mjpmFrBrc4uc42u4nlPrVCAoa/EIsNhZLUFwY+RsdwNQJ5SeQf8Am1UVVTFR00k87smOMXcV5mXT
PCLEGtjy6eCEtmiqWBwsD+qQdRdsPqsQRsJD5SQ1WI+ETq5j3upXghr9sZjuLAc5JuedhB2gr0lL
TR0dOyCJtmM2XNyeUknnuvtNTx0sQjiaQ0EnWSSSTckk7SSqEBaKh0ujyilMZqA05Akvk5VtV7a7
LVXTS01K6Wnp31LwR+aY4AkX12vq2X9q5VBBHW1oxDDaqYQSSGSXKd5LnZJaW5POCBe+y1hyoI6D
C6zE6utlxGE00VQGiaLKyg54Ba7JDh5OoDyhe4J9RHqmtDGBrRZoFgFopacUkGQHvkcTlOe83Lid
p/sFUgKJ+IU4rH0LJmCszWdbG+4uNYB9lxyLHE56yloXy0FOyomYQTE5xblNvrtYHXbYFwsFwTSH
trcQZI+OOQyUzJZS8su7Ka4Eaz84gA6xr57IKKHDanE4xJicmVC94mMYJBywALAg2MeokW2g616N
fUQFwsYx12H1BpWROEz4S+KV4ORe9terk5ea4NrXI0Y54QRQvdRUr45J84IJ4ssslaHtOSWc5uR1
qrBqKr0CDxpM2dzCHxAg3aLC2USLlw169W1BPhWCPFa7Ea1+VLIBZhZk3I1hzxrGWNY1ahrtqNl6
JEQFx6zEnVGFZ7DJWPJLbkHysgm12A7Sf1b6ipvCaau0XR6enL4ahhjdLHOY5I5D8zXbUCeW4+xb
cFwcUORPIxjZzHklrGNba5yjlW2uvy7NWq10GzDsLMboKitMctTAwxRPaHCzTbbckkm19ey67CL4
g1zTR08L5ZnhkbGlznONgANpXIxSomrKSFlDIAyd2RI5v0jLtuLN1HmyhtAuo/CU4jUytoo6RzoH
lj4pYZslxcD5TXAjJta+omx9exdTCsJjw1ji0RiSQNDhEwMYMkWFh17bnWgywzDI6EPmdFAKuUky
yRg67km1zrsL/FdJF8QT1dVFRQOmneGxggbL3JNgAOUkkBcrFnVVbUU8NG+MwvBcSDlBzmkangG+
QdYuOW19SgxqHEMSxWKikpQ2NkmVHI2S7JIiLHLYbB1ja4vflHOPQYfQR4fC6OMC73mR2S0NFzzA
bBqCD5QULaGNxGSZZLGQtFgSAAAByAAWAVyL4gmqKyClzefeGZ1+QwH9Y7fgCfYFx8Tp6nFq00oM
DqTNh7Q672PDgQcsAg35W8hseXZBNS4ji+OxtrKRsZp8pr7vzkD23ux2Q61ybHWNh1HVqPpqCjjo
KOOmiuWxi1zbXrudnrOxB9oqKKhp81DlkElznPcXOcTtJJ2lVIp6qqio4HTTOIY3mBJPqAG1BqrM
SpsPDXVMmQHX15JNgNpNtgFxcnULrkUsVbiU01LXh0kbTl50gWjeHas25ttrftaRrvdYNpH4xWR1
dLVSSUMr3OzjpBlR+SBeO2wHW0tcLar7dvoaeCOmp44YW5LI2hrR6gLBApqeOlp2QwtyY2CwF7rc
i5WL4ozDYRlPzTpDktmewmOMkgAuP2/+BBtxTEG4ZTsldG+XKfkZLNbthN7ctrXPqBPIvPUdFP4S
V8ddVl8UULy0GKR4bMLWGTr1Cx1nl5DrsN9Nh8+M17Z6mZ7oIS6KYeU1srmkhrmC+oWsbjnIuQdX
po4mQxtjjaGsaLNa0WAHMg+sY2NgYwANaLADkCzREBERAREQEREBT1H09L9afwOVCnqPp6X60/gc
goREQTs/SMv1TPi5UKdn6Rl+qZ8XKhAREQEREBERBiTZpIBNuQcq89NWUeOYfLTYlRzxOyBLm3xH
KByrAt1a3A2Ht5wr8UoZKtrZqad0NXBcwuuci5tqc39YG3ZYqqmpswC91nTPAzkltbj2azYciDTh
WHxYdRNjhjzZd5TwduUdvKQNfINS6CLi4xij6Wge6gfHJPFOyN8Za5xNyLtsNd7a7/agoq8TFPPm
MxNdzTkS5IyMvJJDbkjXYH1etcbA8NrZsQkmxeKQTRDJMucu2XWSNVrEWPJ6gb2VWHYNHNHE+aF0
VIcmdtBL5WZmubm99nq1i9yvQoCIiAp6ejgo87o8TY87IZZLD5zjtJVCIC41fWCqFTTUlY2nqaZz
XyZbSAW6ifWQdlx7F2VLPQQVNTT1E0YdLTEuiPokixQRUsdfUxU+mZlmbe57zkeU6x8jVrDbjWdZ
K66Igmr6l9JRTTxwvnfG0uEbNrlw6/QMep4jPTTaTDKGRtzVngkAnbsaW6ze2rmICvrsPqH1sdZQ
zmObyY5WvJcx0eu/k+lr1HV69Svp6eOnjyY2gXN3HlceUk8p9aDGkpYqKmjp4GZEcbQ1rbk2AFhr
OsqlEQcSrqtMa4YfWiCWlnDZmvjOvaALaiRfZbUbW51vpmV02iSVohY5jcp4a27i83HryRbmJ1m1
7bapKCnlr4q17LzwscxjuYHaqkBR1mIU9DmjUvLBI/Ia4g2B9Z5B6zqVi1TQsnhfFILse0tcOcFB
x6MYpBVzwmeOqjAectzS3JeSC0E35jrAFgAOddSkgNNSsic5ri0ay1gaCdpsBsWVNTRUdLHTwNyI
omhrW8wC3oC4NVXPro2VOGVoYIXvY+N0RJc62oZNwb8wOo3vzLvKYUNOMQNbmxpBjzWX/pveyDRT
w1MssM1WIWubGAWtFzlkDK1nYNWwbeVdBEQRVWIQUk0EM0ubdO4tjcWm2VzE7Adeq+1c6gbizWT0
754KgNZktnewgZeUQb6zlatZGoA6hq2despIa6klpqhmXFK3Jc3nCzjibFG2OMBrGANaByAIMKeL
MU8cd75DQ29gL29Q1Bb0XxB5eqx4Yo4UNA4tc9wa5x+cHBxuC22tvk+UQR5LrhdfC8LhwzPmEEPq
H5yQXuAeYahqGzntZZ0OFU2HPe6APu4BoynF2S0Xs0cwFzYetXoCIiDytJR1lfir4cWpbmmmMzKk
AWI1WaNWw8vLYWPOfTsa2Ngaxoa1osABYALNEBERAREQEREBERAREQTUn0lV9d/S1Uqak+kqvrv6
WqlBLiPmT/a38QVSlxHzJ/tb+IKpAREQEREBERAWt8rIy0Pe1pecloJtc8wWxRV1BDiFOY5mAuGu
N9tcbuRwPIR6kHPgr6t88tJiVAHEskdaNwcHNBsBbmIO02uQdQsr8NpGUVG1giZE4i7g05Xsu46z
YWFzzLZR02jU7WOkfLJYZcr7ZUhta5tqVSApKurZTBrAWOqJLiGJzw0yEC9hdfayrjoqczSh+baR
lFrb5I5z6hyrhso67FK+sjnAkwyQkwzvsJI3WFjFb9W4vc8tiLhBPXRVuPmOSldBnaVzoainLi9p
cSWu22BFhex2g7By+koaVlFSRwxsawNGsNva/KdetZU9OymhEcewbXHa48pJ5SedUICIiAsGMbGw
NY0NaNgAsAs0QFzsRxEYe2N8sUrqdziJZWC4hHpO5besbNuxdFa5ImSxujkaHMcC1zTsIPIg4eG4
fURtkFJXzaI6Mhj35L9ZdfKbq5idZJuTfk19uGIRQtjBe4NFrucXE+0nas2tDWhrQAALADYFkgLl
YhW1cTIpaGOGoiaXCY5wNyQAeU6gLjXtItsK6q5cWCww1zp4nGOJwynQMADHSXvlkc//AIboNcUM
eJVtLWvoMj8wHOfLt16w23KQddzs5NpXYREBcPFKiGYzYdVZ+mEgbmpxbJldtyW85/0nbr2613Fq
lijkLDIxrix2U24vknZcevWg5tHRVZia2qq5iwSmQAnyy39VrnADluSBz22DX10RAXAr6iKvm0SV
1VS1EMwkhaLXnA1Xbe4I1n1jUeZd9anQxumZK5jS9gIa4jW0HbbqCCCjo6sMpjWVL5HRNNw06nOu
bFxFsqwsNg16/Z1ERAXm6qQYw+MRvqqTEYA8CnymtdZw1OOo6tQ8oc5HKQvSLSIYxMZgxolLQ0ut
rsOS/NrQT01NMyZslRUule2MMyQMlt7DKdblJPUrkRBqmeYoXvax0jmtJDG7XeoLz0gOK1gqcPqa
inrmsbFLC4i0NnX8sWNuXUNTtWvVdemWlkEcb5HsY1pkOU8ga3G1tf2INdPA6OaaV8z5DIdQOprG
jYAP58qqREEmIVgoKCepIDs03KDb2yjyC/rXBppKjwgxESSRyRU8DnizmWyf1XMdr8okE31AtI1E
g6/SyRMljdHI1r2OFnNcLgjmWNPTQ0kLYaeNscbdjWoMKWlho6dkFPGGRs2NA/8ALn1qlEQF52tw
zEpMfy45M5QVLAyVrnEZsDaBr5QXWI16yDqtb0SINccTIo2xxtDWMAa1o2ADYFsREBERAREQEREB
ERAU9R9PS/Wn8DlQp6j6el+tP4HIKEREE7P0jL9Uz4uVCnZ+kZfqmfFyoQEREBERAREQERcPGMYf
SzQ01K9scs1yyeVuVCC1wuxxBuCb2vyIPtf4QU9LJNDDaSpicGua42Db2JceWwBBNhs+1asEw2rZ
WTVtc9+W7yYmueHPDeUOI1EX1ga7a7WBst1JRxYjLHik1C6nnIF2PADiRexdbbbkO2xPPZdpAREQ
EREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQTUn0lV
9d/S1Uqak+kqvrv6WqlBLiPmT/a38QVSlxHzJ/tb+IKpAREQEREBERAREQFDimIMwqhfVytc5jCM
rJ5ASBc+oXX2vxKnw6NmkTxRPlJZFnXZIc+xNr/YuLg1diGJ/nbHNTg59jyCKc2teJ1rPabEWOwg
35kGp8dX4S1Bs8Q00MoLHBpD2auQ3+dcEEHZq2g6/TwQR00LYoWBkbBYNAsAvlPTxUsDYYGBkbRY
NA1BbkBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERE
BERAREQFPUfT0v1p/A5UKeo+npfrT+ByChERBOz9Iy/VM+LlQp2fpGX6pnxcqEBERAREQERa3szk
bmEkBwIuDYhBz67GY8Oq2xVEUubMZkMrWFzRY69g5BrPMOdQ0eB4fHjVRPTxOADi9wGqMSOByuXX
cG5BBAKqo8Mnjy6aqlM9FGRmGyEueRbY8n5wB2cvOuwgIiICIiAiIgIiICIiAiIgIiICIiAiIgIi
ICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiCak+kqvrv6WqlTUn0lV9d/S1UoJcR8yf
7W/iCqUuI+ZP9rfxBVICIiAiIgIiICnnkc2N4hDXzBhcyNzrZRGz2C9taoXMxHCmVrmTRPNPWxWz
dQwXcwX1jmIIvqOrqQQ6S7FqGopK7D5DOwRnN3A8p17G4JyCCL84FjruuzSU0dLTsihiZG1v6rQA
LnWdnrWcMLIIwyMWA1+1bUBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERA
REQEREBERAREQEREBERAREQEREBT1H09L9afwOVCnqPp6X60/gcgoREQRvE8dU6SKJsjXMa3W/Js
QT6vWss9V7qzi/2VSIJc9V7qzi/2TPVe6s4v9lUiCXPVe6s4v9kz1XurOL/ZVIglz1XurOL/AGTP
Ve6s4v8AZVIglz1XurOL/ZM9V7qzi/2VSIJc9V7qzi/2TPVe6s4v9lUiCXPVe6s4v9kz1XurOL/Z
VIglz1XurOL/AGTPVe6s4v8AZVIglz1XurOL/ZM9V7qzi/2VSIJc9V7qzi/2TPVe6s4v9lUiCXPV
e6s4v9kz1XurOL/ZVIglz1XurOL/AGTPVe6s4v8AZVIglz1XurOL/ZM9V7qzi/2VSIJc9V7qzi/2
TPVe6s4v9lUiCXPVe6s4v9kz1XurOL/ZVIglz1XurOL/AGTPVe6s4v8AZVIglz1XurOL/ZM9V7qz
i/2VSIJc9V7qzi/2TPVe6s4v9lUiCXPVe6s4v9kz1XurOL/ZVIglz1XurOL/AGTPVe6s4v8AZVIg
lz1XurOL/ZM9V7qzi/2VSIJc9V7qzi/2TPVe6s4v9lUiCXPVe6s4v9kz1XurOL/ZVIglz1XurOL/
AGTPVe6s4v8AZVIglz1XurOL/ZM9V7qzi/2VSIJc9V7qzi/2TPVe6s4v9lUiCXPVe6s4v9kz1Xur
OL/ZVIglz1XurOL/AGTPVe6s4v8AZVIgmpI5GCV0rQ10kmVkh17CwG37FSiINFVAZ4HMDskmxBIv
axuscis6aDhHvKlEE2RWdNBwj3kyKzpoOEe8qUQTZFZ00HCPeTIrOmg4R7ypRBNkVnTQcI95Mis6
aDhHvKlEE2RWdNBwj3kyKzpoOEe8qUQTZFZ00HCPeTIrOmg4R7ypRBNkVnTQcI95Mis6aDhHvKlE
E2RWdNBwj3kyKzpoOEe8qUQTZFZ00HCPeTIrOmg4R7ypRBNkVnTQcI95Mis6aDhHvKlEE2RWdNBw
j3kyKzpoOEe8qUQTZFZ00HCPeTIrOmg4R7ypRBNkVnTQcI95Mis6aDhHvKlEE2RWdNBwj3kyKzpo
OEe8qUQTZFZ00HCPeTIrOmg4R7ypRBNkVnTQcI95Mis6aDhHvKlEE2RWdNBwj3kyKzpoOEe8qUQT
ZFZ00HCPeTIrOmg4R7ypRBNkVnTQcI95Mis6aDhHvKlEE2RWdNBwj3kyKzpoOEe8qUQTZFZ00HCP
eTIrOmg4R7ypRBNkVnTQcI95Mis6aDhHvKlEE2RWdNBwj3kyKzpoOEe8qUQTZFZ00HCPeTIrOmg4
R7ypRBNkVnTQcI95Mis6aDhHvKlEE2RWdNBwj3kyKzpoOEe8qUQTZFZ00HCPeTIrOmg4R7ypRBNk
VnTQcI95Mis6aDhHvKlEE2RWdNBwj3kyKzpoOEe8qUQTZFZ00HCPeTIrOmg4R7ypRBNkVnTQcI95
Y5id0sTpZYy2N2VZsZBJsRtuedVogIiICKIyVEtTMyJ8bGx2HlRlxNxfnC2Zur3iLgnvIKUU2bq9
4i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZ
ur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgn
vIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2b
q94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7
yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iL
gnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU
2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4
J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3iLgnvIKUU2bq94i4J7yZur3
iLgnvIKUUlNJK6WaKZzHGMizmtyb3F9lyq0BFNWvdFSvdGcl2oA2va5AXzR598k9xnYgqRS6PPvk
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
qRS5ip3w8NqZip3w8NqCpFLmKnfDw2pmKnfDw2oKkUuYqd8PDamYqd8PDagqRS5ip3w8NqZip3w8
NqCpFLmKnfDw2pmKnfDw2oKkUuYqd8PDamYqd8PDagqRS5ip3w8NqZip3w8NqCpFLmKnfDw2pmKn
fDw2oKkUuYqd8PDamYqd8PDagqRaYWSMaRJKZCdhyQLdS3ICIiAiIgIiICIiAiIgIiIC1T+bS/uH
4LatU/m0v7h+CD5SeZwfVt+CJSeZwfVt+CINUHntX7W/hVakg89q/a38KrQEXxeQHjQ1BDTiBjM5
MJIIF7s1PB15FsrbqPJyIPYIp6mYwU75GtDiLWBNr67LHLreip+I7uoKkUuXW9FT8R3dTLreip+I
7uoKkUuXW9FT8R3dTLreip+I7uoKkUuXW9FT8R3dTLreip+I7uoKkUuXW9FT8R3dTLreip+I7uoK
kUuXW9FT8R3dTLreip+I7uoKkUuXW9FT8R3dTLreip+I7uoKkUuXW9FT8R3dTLreip+I7uoKkUuX
W9FT8R3dTLreip+I7uoKlPT08VLGY4ImRsLi7JY2wuTcn2kklY5db0VPxHd1Mut6Kn4ju6gqRS5d
b0VPxHd1Mut6Kn4ju6gqU9XSxVtJLTVDcuGVpY9tyLg+sa1jl1vRU/Ed3Uy63oqfiO7qDmYb4IYN
hVYyroqR0U7AQ1xnkda4sdRcQu6pcut6Kn4ju6mXW9FT8R3dQVIpcut6Kn4ju6mXW9FT8R3dQVIp
cut6Kn4ju6mXW9FT8R3dQVIpcut6Kn4ju6mXW9FT8R3dQVIpcut6Kn4ju6mXW9FT8R3dQVIpcut6
Kn4ju6mXW9FT8R3dQVItMTpi055kbTyZDifiAtyAiIgIiICIiAiIgIiICIiAiIgkg89q/a38KrUk
HntX7W/hVaCXEfMn+1v4gqlLiPmT/a38QVSAiLn12JxYe+NsrJXl+3NtvkNuAXHXsuR60HQRcyTG
qeJ04LZjmYxKSIz5YJIAbzm4ssp8Wihp4pjFO6N7mtcWs+jyrWJ1/wCobLoOipYPPqr/AGfBfKOu
irRKYQ8COQxkuFsq1tY5xr2r7B59Vf7PggqREQEREBERAREQEREBERAREQEREBERAREQEREBERAR
EQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBap/Npf3D8FtWqfzaX9w/BB8pPM4Pq2
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
MnYSaaN3qeGU00bvU8MqtFoSaaN3qeGU00bvU8MqtEEumjd6nhlNNG71PDKqRBLpo3ep4ZXzTRu9
Twyq0QSaaN3qeGU00bvU8MqtEEmmjd6nhlfdNG71PDKqRBJpo3ep4ZTTRu9Twyq0QSaaN3qeGV8d
Vse2zqaoI5jEVYiDmPZSSfPw95/+haxT0fJRVLP3Gub8Cusizt03wYcnNMA8g4i31AuPxTKqWa4p
aojmlgDh/CxXXRTZEw5cWJVIdkz0M1h/6kbbjqOtZx4xTSvMbGzF4/VMZB6iugtU1NDUtyZo2PH+
oXTGqdqrmy01JLVNqRS1MU7SDnImFhd6nW2j2q3TRu9TwysGUBhe009RKxoOthOW0jm17FctS29x
qhmzzSQyRljby22W1EVBERAREQEREBERAREQEREBap/Npf3D8FtWqfzaX9w/BB8pPM4Pq2/BEpPM
4Pq2/BEGqDz2r9rfwqPwip5anAauKnhE0zmeQx2TrNx6Xk39urnVkHntX7W/hUmP0c2IYNNT0ptO
7JdGS61nNcHA7DyjlFudSrHG8BMOqqOCqkxKghpagvyWuYyBpLbAkHM+TYHZfXtVv5P1UkhknrIX
SSPOdc2AgvZdpAHlGxGQBfm5LqPwGwnEcJhqhXUUNM6eTOPLHsu92oXyWDJAttNySV65VlHiYvQS
i5F7axyawstFfvdR93ur5iHmMntb8Qq0VLor97qPu91NFfvdR93uqpEHn8dgfKKKh0iZ+lVDWuBy
fmN8px1D1BdbRX73Ufd7qgHyrwsJ2soqa3se891v8V2Agm0V+91H3e6miv3uo+73VUiCXRX73Ufd
7qaK/e6j7vdVSIJdFfvdR93upor97qPu91VIgl0V+91H3e6miv3uo+73VUiCXRX73Ufd7qaK/e6j
7vdVSIJdFfvdR93upor97qPu91VIgl0V+91H3e6miv3uo+73VUiCXRX73Ufd7qaK/e6j7vdVSIJd
FfvdR93upor97qPu91VIgl0V+91H3e6miv3uo+73VUiCXRX73Ufd7qaK/e6j7vdVSIJdFfvdR93u
por97qPu91VIgl0V+91H3e6miv3uo+73VUiCXRX73Ufd7qaK/e6j7vdVSIJdFfvdR93upor97qPu
91VIg1RROjByppJL+nbV1ALaiICIiAiIgIiICIiAiIgIiICIiCSDz2r9rfwqtSQee1ftb+FVoJcR
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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Performance Comparison.xlsx"
Content-Description: Performance Comparison.xlsx
Content-Disposition: attachment; filename="Performance Comparison.xlsx";
	size=46077; creation-date="Tue, 18 Jun 2013 12:04:20 GMT";
	modification-date="Tue, 03 Dec 2013 09:48:29 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQAurjL39gEAAFEOAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
l1Fv2jAQx98n7TtEfp2ISbd13UToQ7c9bpXafQDXPoiFY1v2tYVvv4tJUVdRUEjU7IUAsf+//9m+
S252ua5N9gAhamdLVuRTloGVTmm7LNmf25+TC5ZFFFYJ4yyUbAORXc7fv5vdbjzEjGbbWLIK0X/j
PMoKahFz58HSnYULtUD6GZbcC7kSS+Bn0+k5l84iWJxgo8Hms++wEPcGsx9r+nvr5E5bll1txzWo
kgnvjZYCySh/sOoFZOIWCy1BOXlfk3QefQChYgWAtcl90EQMN4BIgUXG9zIDmNgN2kaV08xkLFba
xw8U+iuE5s7rUbXzftN2BK0guxYBf4maYudrwx9dWN05t8oPi3RdmrREeS20ffJ9gJ8GR54uxcBG
mviScEcfZ/+Jj48j+UDKOeDps/+WJJkjGxBxYyAOHO1W9Bi5EgHUDVI2Lwc38Fz7iA8VxGNjgbdf
+q97K3SEK8kjRp4ugzGpPCbBDuz+KdfGewK7f5qdzv7U+9B3Y7ejd+dssHXvsNef3zjm52f8fET2
lxHZFyOyv47ILqZjwsesqMVgqX1CSS3GrKnFWxdVKYy8quh9t/dZ+7fH2OkeKq7Un1wH5+kZ7gJ0
N/DUbzSzJ56EIKCGXcex7819R6T+qTvwRVcFTYOmQO1h89QQzv8CAAD//wMAUEsDBBQABgAIAAAA
IQC1VTAj9QAAAEwCAAALAAgCX3JlbHMvLnJlbHMgogQCKKAAAgAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjJLPTsMwDMbvSLxD5PvqbkgIoaW7
TEi7IVQewCTuH7WNoyRA9/aEA4JKY9vR9ufPP1ve7uZpVB8cYi9Ow7ooQbEzYnvXanitn1YPoGIi
Z2kUxxqOHGFX3d5sX3iklJti1/uosouLGrqU/CNiNB1PFAvx7HKlkTBRymFo0ZMZqGXclOU9hr8e
UC081cFqCAd7B6o++jz5src0TW94L+Z9YpdOjECeEzvLduVDZgupz9uomkLLSYMV85zTEcn7ImMD
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
BgAIAAAAIQAcgonrtAEAAAkDAAAYAAAAeGwvd29ya3NoZWV0cy9zaGVldDMueG1sjJJPT+MwEMXv
SHwHy3fitsACUVOEtmK3EqDV/uHu2pPEqu3J2i6h++kZJ5sKiQuneGzn5/fezPL21Vn2AiEa9BWf
FzPOwCvUxjcV//P7/uyas5ik19Kih4ofIPLb1enJssewiy1AYkTwseJtSl0pRFQtOBkL7MDTSY3B
yURlaETsAkg9/OSsWMxmX4STxvORUIbPMLCujYI1qr0Dn0ZIACsT6Y+t6eJEc+ozOCfDbt+dKXQd
IbbGmnQYoJw5VW4aj0FuLfl+nV9INbGH4gPeGRUwYp0KwolR6EfPN+JGEGm11IYc5NhZgLrid3Mu
VsshnGcDfXy3ZrHF/lsw+sF4oKSpRwm7B6jTV7CWfr3g7B+i+6VklnpN58fyKedPd/JmbtkWcZf5
G5059AhYUDk8JunzAv+J68sr6vvfUVkuSJs4inu/noTeD43+EZiGWu5t+on9dzBNm2iqFsXVJWWX
Iyz1YQ1RUe/o/WJx9LyWSdIbnWzgUYbG+MgsGcyXSEkYQcOarA+7RNxiSuimqqXhAhqiWXHOWY2Y
poK4OsieRpqF0pDxsNFD2uI4xKs3AAAA//8DAFBLAwQUAAYACAAAACEAvFZcGYcFAABlGgAAGAAA
AHhsL3dvcmtzaGVldHMvc2hlZXQyLnhtbJyZXXPiNhSG7zvT/+Dx/QI2SbZhQnaCrW13pu10uv24
dmwRPMGI2s6S9NdXR0fAK2k3tXOTwU90xMOReRHi5sNzs42+yLar1W4ZJ5NZHMldqap697CM//zj
47sf4qjri11VbNVOLuMX2cUfbr//7uag2sduI2Uf6Rl23TLe9P1+MZ125UY2RTdRe7nT/1mrtil6
fdk+TLt9K4vKFDXbaTqbXU2bot7FPMOiHTKHWq/rUuaqfGrkrudJWrkteu3fbep9d5ytKYdM1xTt
49P+XamavZ7ivt7W/YuZNI6acvHpYafa4n6rX/dzclGUx7nNRTB9U5et6tS6n+jppiwavubr6fVU
z3R7U9X6FVDbo1aul/FdshAXs3h6e2Ma9FctDx08jrqNOvzY1tXP9U7qbut16ov7z3Iry15WeuXi
6F+lms9lQbbX+t+ny19pCbYMadXulXqk6T/pspkW6cwkJFKUff1FZnKrR9/l8/d66f9hObrQatOT
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
zwb8WTQil/SLEXZVjCTrGSuR5C2d5Jh4RolOBVaCZEO6TjzLtwG0EA5FIorq72lFbZCEjJgOpViR
holjCRYAx8yHBQ6+flyiqfkeI2LRYLgVrApQRQ50FEqEE0KRD44aiQjzvf+ls1NJVunQGTmWCQ8S
UV/dUjBB2s9xsVtliNbErHzB6oAquzJ0iAR4DP1Bb3JjtBH0izmTQo2yTYhfkL7PQ2ZHQoLB7cLA
hSS5CKgYF/VME04xDjqAwiCA0BglNDX5e5rQoRcABmS4wSSuizjcpHkmRaIcMo1mqwCzaaCbkzLr
5v/B2j0SoXhGjI2H//1aHuzd0VVdNvOUYR/MS3BcOHvukjkdL1wz4ddwdPqCcHbZ6mMvSJSnahav
uur5EdeXja6+pW33lqO3Lyp0n98h9Yzppon20efsn7F0qbu/651pxtk9D07r8kq07hV7brt91c3L
zlqWx73oI2v1xkvS++5Wb1185g5z3Kqq43+qf+Kkc35cs++KtQ9907qz7eUVzV/IW0NPfYjuHjV2
rLr50r6Jv/TdWbW8+s29O99sjta3TWzvq3v2jZ7eaSvXbm18sVl6bP2iq14sG9akZY85Yd3VT249
um/6SKdy3Ft3bXp1RlY6u+O2jfMrFy0QP2h7pj2Tb9zEX7vg/fHePeu6e6pb9uVv2tXZI5AbJ3Ic
d/q5Mxqy2+9b55bfYa1c+0PHwoVV98/5Wey+4bJJTmn53nTVsgeufXj9nl9DXyVeSm/4pnARKa+9
NWRuOuG80RGpfsKqztTTXWum3Ks4F/auvuO7kul6+/rvyz7tnX/Z098t3/JI28xxeoU+u+Hdro+v
37jV2PjeHmnJ9qUv7b/4uFPLlmyb3NH5ydhHe+4kly9O9XWOevKHMxbuXv7AurvEqSce/+zbVe3j
X1/x9WmdKzdsdj/b0fdxbNveH197ZeSJ2yo/7xM+w+qCbx+f7DZf3u3ePua5865csbC41jx+8pgp
ZvX/oIaDJwYIBAgECAQIBAgECAQIBAgECAQIBAgECAQIBAgECAQIIPQ7AAAA//8DAFBLAQItABQA
BgAIAAAAIQAurjL39gEAAFEOAAATAAAAAAAAAAAAAAAAAAAAAABbQ29udGVudF9UeXBlc10ueG1s
UEsBAi0AFAAGAAgAAAAhALVVMCP1AAAATAIAAAsAAAAAAAAAAAAAAAAALwQAAF9yZWxzLy5yZWxz
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
SwUGAAAAACMAIwBhCQAAhqoAAAAA

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FA850EIRSMSX104gercor_--
