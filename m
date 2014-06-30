Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0B28E00507; Mon, 30 Jun 2014 09:26:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FF86E00289
	for <yocto@yoctoproject.org>; Mon, 30 Jun 2014 09:26:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Jun 2014 09:26:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,575,1400050800"; 
	d="png'150?jpg'150,145?scan'150,145,208,217,150,145";a="566108638"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 30 Jun 2014 09:25:49 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 30 Jun 2014 17:25:47 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.106]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.233]) with mapi id
	14.03.0123.003; Mon, 30 Jun 2014 17:25:47 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.6.1 rc3 Test Report
Thread-Index: Ac+Uf9HN95s2ZTk8RwKI9ZnKSdv33w==
Date: Mon, 30 Jun 2014 16:25:46 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E96219BB194@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.2.140509
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Yocto 1.6.1 rc3 Test Report
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
X-List-Received-Date: Mon, 30 Jun 2014 16:26:25 -0000
X-Groupsio-MsgNum: 20337
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_1FFB62CE8AEB0D4298B51122D8903E96219BB194IRSMSX104gercor_";
	type="multipart/alternative"

--_006_1FFB62CE8AEB0D4298B51122D8903E96219BB194IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E96219BB194IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E96219BB194IRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the test report for 1.6.1 rc3 build http://autobuilder.yoctoproject=
.org/pub/releases/yocto-1.6.1

For this build we have performed a full pass on Build Appliance, ADT-instal=
ler, qemux86, qemux86-64, oe-selftest (which contains the automated tets fo=
r Bitbake and Oe-core), Toaster and Distro Testing with no bugs found, exce=
pting Toaster whith already known issues.

For the DISTRO testing (results below) we have nighlty-world failing for Ub=
untu 14.04 with 6467 - in progress review. On Opensuse we encountered multi=
ple failures due to the following error: "command timed out: 100000 seconds=
 without output, attempting to kill=1B$B!I=1B(B. Basically, the tests need =
to be rerun since the error appears when some Python processes become dorma=
nt. We are running the 1.7 DISTRO testing currently so it would take some t=
ime in order to rerun the 1.6.1 tests on Opensuse so this remains a questio=
n to the board if we want to rerun the OpenSuse tests. The downside of reru=
nning them would be that we will have to wait more for the tests to finish =
at least 1 day in the case we don=1B$B!G=1B(Bt find any new fails.

Detailed report at: : https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-23_=
-_Full_Pass_Release_1.6.1.rc3


Testing data
Test type:  Full Pass Release Test
Branch: daisy
Build name: 1.6.1
poky commit: c4f1f0f491f988901bfd6965f7d10f60cb94a76f
Eclipse Plugin commit Kepler:  1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
Autobuilder images repository:  http://autobuilder.yoctoproject.org/pub/rel=
eases/yocto-1.6.1/
Distributions tested: Ubuntu 14.04 64bit, Fedora 20 64bit, Opensuse 13.1 64=
bit, CentOS 6.5 64 bit
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

2495<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2495>

ADT: daisy_branch

Fedora 20 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

2494<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2494>

ADT: daisy_branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2527<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2527>2529<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2529>

BSP/QEMU: daisy branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

2528<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2528>2530<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2530>

BSP/QEMU: daisy branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

2523<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2523>

meta-yocto: daisy branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2489<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2489>

Toaster: daisy branch

Fedora r20 x86_64

89.2%

none

10.8%

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>6445<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6445>5844<https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D5844>

0.0%

none

100.0%

2492<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2492>

Toaster: daisy branch

Ubuntu 12.04 x86

100.0%

none

0.0%

none

0.0%

none

100.0%

2491<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2491>

Build Appliance: daisy branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 8



Test Case Status Report

Status

Count

FAILED

4

PASSED

341

Total: 345


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:4,341&chco=3DFF9933|00FF00&chl=3DFAILED(4)+1%25|PASSED(341)+99%25]



Bug Status Report

[Bug Status]

ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-23_-_Ful=
l_Pass_Release_1.6.1.rc3>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-23=
_-_Full_Pass_Release_1.6.1.rc3>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-23_-=
_Full_Pass_Release_1.6.1.rc3>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-=
23_-_Full_Pass_Release_1.6.1.rc3>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-2=
3_-_Full_Pass_Release_1.6.1.rc3>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06=
-23_-_Full_Pass_Release_1.6.1.rc3>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-23_=
-_Full_Pass_Release_1.6.1.rc3>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_20=
14-06-23_-_Full_Pass_Release_1.6.1.rc3>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW26_-_2014-06-=
23_-_Full_Pass_Release_1.6.1.rc3>

5187<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5187>

Medium

ACCEPTED

2489<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2489>

same cooker log file name used for several builds

unspecified

1.7 M3

283

5844<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844>

Medium

ACCEPTED

2489<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2489>

Wrong script_type when task is not executed.

unspecified

1.7 M4

125

6445<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6445>

Medium

RESOLVED

NOTABUG

2489<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2489>

The value of the revision field from Package table doesn't start with 'r'

1.6.1

1.6.2

10

Total: 3




Distro Testing Results:

BRANCH

daisy

COMMIT

Poky: c4f1f0f491f988901bfd6965f7d10f60cb94a76f

RELEASE

1.6.1

Ubuntu 14.04 LTS



* nighlty-world

FAIL - 6467

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

Retest Needed

* buildtools

PASS

* nightly-arm

PASS

* nightly-multilib

Retest Needed

* nightly-qa-systemd

PASS

* nightly-x86

Retest Needed

* nightly-x86-64

Retest Needed

* nightly-x86-64-lsb

Retest Needed




Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania

--_000_1FFB62CE8AEB0D4298B51122D8903E96219BB194IRSMSX104gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-ID: <DDC284A724511D47B53344CC0CD89EF1@intel.com>
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
p.xl63, li.xl63, div.xl63
	{mso-style-name:xl63;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#D99694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.xl64, li.xl64, div.xl64
	{mso-style-name:xl64;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#D99694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl65, li.xl65, div.xl65
	{mso-style-name:xl65;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#D99694;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl66, li.xl66, div.xl66
	{mso-style-name:xl66;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#95B3D7;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.xl67, li.xl67, div.xl67
	{mso-style-name:xl67;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#95B3D7;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl68, li.xl68, div.xl68
	{mso-style-name:xl68;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#95B3D7;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl69, li.xl69, div.xl69
	{mso-style-name:xl69;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl70, li.xl70, div.xl70
	{mso-style-name:xl70;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#8EB4E3;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.xl71, li.xl71, div.xl71
	{mso-style-name:xl71;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#8EB4E3;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl72, li.xl72, div.xl72
	{mso-style-name:xl72;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#8EB4E3;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle27
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:black;}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-weight:bold;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Hello,<o:p></o:p></span></p=
>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Here is the test report for=
 1.6.1 rc3 build
<a href=3D"http://autobuilder.yoctoproject.org/pub/releases/yocto-1.6.1">ht=
tp://autobuilder.yoctoproject.org/pub/releases/yocto-1.6.1</a><o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">For this build we have perf=
ormed a full pass on Build Appliance, ADT-installer, qemux86, qemux86-64, o=
e-selftest (which contains the automated tets for Bitbake
 and Oe-core), Toaster and Distro Testing with no bugs found, excepting Toa=
ster whith already known issues.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">For the DISTRO testing (res=
ults below) we have nighlty-world failing for Ubuntu 14.04 with 6467 &#8211=
; in progress review. On Opensuse we encountered multiple failures
 due to the following error:&nbsp;</span><span style=3D"font-size:11.5pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black">&quot;com=
mand timed out: 100000 seconds without output, attempting to kill=1B$B!I=1B=
(B.&nbsp;Basically, the tests need to be rerun since the error appears when=
 some
 Python processes become dormant. We are running the 1.7 DISTRO testing cur=
rently so it would take some time in order to rerun the 1.6.1 tests on Open=
suse so this remains a question to the board if we want to rerun the OpenSu=
se tests. The downside of rerunning
 them would be that we will have to wait more for the tests to finish at le=
ast 1 day in the case we don=1B$B!G=1B(Bt find any new fails.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Detailed report at:
</span><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:black">:&nbsp;<a href=3D"https://wiki.yoctoproject=
.org/wiki/WW26_-_2014-06-23_-_Full_Pass_Release_1.6.1.rc3">https://wiki.yoc=
toproject.org/wiki/WW26_-_2014-06-23_-_Full_Pass_Release_1.6.1.rc3</a><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<p class=3D"MsoNormal" style=3D"margin-bottom:.1in;mso-line-height-alt:14.3=
pt;background:white;border:none;padding:0in">
<span style=3D"font-size:18.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Testing data<o:p></o:p></span></p>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Test type:&nbsp; Full Pass Release Test<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Branch: daisy<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Build name: 1.6.1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">poky commit: c4f1f0f491f988901bfd6965f7d10f60cb94a76f<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Eclipse Plugin commit Kepler:&nbsp; 1dfe1d2f1322b5fda8e1a7637c447b0e0=
60efb3e<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Autobuilder images repository:&nbsp; http://autobuilder.yoctoproject.=
org/pub/releases/yocto-1.6.1/<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Distributions tested: Ubuntu 14.04 64bit, Fedora 20 64bit, Opensuse 1=
3.1 64bit, CentOS 6.5 64 bit
<o:p></o:p></span></p>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<p class=3D"MsoNormal" style=3D"margin-bottom:.1in;mso-line-height-alt:14.3=
pt;background:white;border:none;padding:0in">
<span style=3D"font-size:18.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black">Summary Report<o:p></o:p></span></p>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"4" cellpadding=
=3D"0" style=3D"background:white">
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
rg/tr_show_run.cgi?run_id=3D2495"><span style=3D"color:#5A3696;text-decorat=
ion:none">2495</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: daisy_branch<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2494"><span style=3D"color:#5A3696;text-decorat=
ion:none">2494</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: daisy_branch<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2527"><span style=3D"color:#5A3696;text-decorat=
ion:none">2527</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2529"><span style=3D"color:#5A3696;text-decoration:none=
">2529</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: daisy branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
rg/tr_show_run.cgi?run_id=3D2528"><span style=3D"color:#5A3696;text-decorat=
ion:none">2528</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2530"><span style=3D"color:#5A3696;text-decoration:none=
">2530</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: daisy branch<o:p></o:p></span></=
p>
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
rg/tr_show_run.cgi?run_id=3D2523"><span style=3D"color:#5A3696;text-decorat=
ion:none">2523</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">meta-yocto: daisy branch<o:p></o:p></span>=
</p>
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
rg/tr_show_run.cgi?run_id=3D2489"><span style=3D"color:#5A3696;text-decorat=
ion:none">2489</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Toaster: daisy branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Fedora r20 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">89.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">10.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5187"><span style=3D"color:#5A3696;text-decoration:non=
e">5187</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D6445"><span style=3D"color:#5A3696;text-decoration:none">6445</span><=
/a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5844"><sp=
an style=3D"color:#5A3696;text-decoration:none">5844</span></a><o:p></o:p><=
/span></p>
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
rg/tr_show_run.cgi?run_id=3D2492"><span style=3D"color:#5A3696;text-decorat=
ion:none">2492</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Toaster: daisy branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 12.04 x86<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2491"><span style=3D"color:#5A3696;text-decorat=
ion:none">2491</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Build Appliance: daisy branch<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemu-kvm on Ubuntu 12.04 libvirt<o:p></o:p=
></span></p>
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
<b><span style=3D"font-size:10.0pt">Total: 8</span></b><span style=3D"font-=
size:10.0pt"><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">4<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">341<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 345</span></b><span style=3D"fon=
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
idth=3D"860" height=3D"239" id=3D"Picture_x0020_11" src=3D"cid:image001.jpg=
@01CF9499.15C43100" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;=
chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:4,341&amp;chco=3DFF9933|00FF00&amp;c=
hl=3DFAILED(4)&#43;1%25|PASSED(341)&#43;99%25"></span><span style=3D"font-s=
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
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
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
<img border=3D"0" width=3D"739" height=3D"239" id=3D"Picture_x0020_10" src=
=3D"cid:image002.jpg@01CF9499.15C43100" alt=3D"Bug Status"></span><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;color:black"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">ID</span></b><a href=3D"https://wiki.yoctoproj=
ect.org/wiki/WW26_-_2014-06-23_-_Full_Pass_Release_1.6.1.rc3"><b><span styl=
e=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0"=
 width=3D"24" height=3D"29" id=3D"Picture_x0020_9" src=3D"cid:image003.png@=
01CF9499.15C43100" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"fo=
nt-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW26_-_2014-06-23_-_Full_Pass_Release_1.6.1.rc3"><b><spa=
n style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"24" height=3D"29" id=3D"Picture_x0020_8" src=3D"cid:image00=
3.png@01CF9499.15C43100" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW26_-_2014-06-23_-_Full_Pass_Release_1.6.1.rc3"><b><span =
style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"24" height=3D"29" id=3D"Picture_x0020_7" src=3D"cid:image00=
3.png@01CF9499.15C43100" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW26_-_2014-06-23_-_Full_Pass_Release_1.6.1.rc3"><b><s=
pan style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"24" height=3D"29" id=3D"Picture_x0020_6" src=3D"cid:image=
003.png@01CF9499.15C43100" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span sty=
le=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW26_-_2014-06-23_-_Full_Pass_Release_1.6.1.rc3"><b><sp=
an style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"24" height=3D"29" id=3D"Picture_x0020_5" src=3D"cid:image0=
03.png@01CF9499.15C43100" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span styl=
e=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description</span></b><a href=3D"https://wiki.=
yoctoproject.org/wiki/WW26_-_2014-06-23_-_Full_Pass_Release_1.6.1.rc3"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"24" height=3D"29" id=3D"Picture_x0020_4" src=3D"cid:imag=
e003.png@01CF9499.15C43100" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span st=
yle=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW26_-_2014-06-23_-_Full_Pass_Release_1.6.1.rc3"><b><span=
 style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"24" height=3D"29" id=3D"Picture_x0020_3" src=3D"cid:image00=
3.png@01CF9499.15C43100" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone</span></b><a href=3D"https://=
wiki.yoctoproject.org/wiki/WW26_-_2014-06-23_-_Full_Pass_Release_1.6.1.rc3"=
><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><im=
g border=3D"0" width=3D"24" height=3D"29" id=3D"Picture_x0020_2" src=3D"cid=
:image003.png@01CF9499.15C43100" alt=3D"=1B$B"-=1B(B"></span></b></a><b><sp=
an style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW26_-_2014-06-23_-_Full_Pass_Release_1.6.1.rc3"><b><s=
pan style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"24" height=3D"29" id=3D"Picture_x0020_1" src=3D"cid:image=
003.png@01CF9499.15C43100" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span sty=
le=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5187"><span style=3D"color:#5A3696;text-decoration:none">5187=
</span></a><o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2489"><span style=3D"col=
or:#5A3696;text-decoration:none">2489</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">283<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5844"><span style=3D"color:#5A3696;text-decoration:none">5844=
</span></a><o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2489"><span style=3D"col=
or:#5A3696;text-decoration:none">2489</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.7 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">125<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6445"><span style=3D"color:#5A3696;text-decoration:none">6445=
</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">NOTABUG<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2489"><span style=3D"col=
or:#5A3696;text-decoration:none">2489</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">The value of the re=
vision field from Package table doesn't start with 'r'<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6.2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">10<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 3</span><=
/b><span style=3D"font-size:10.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Distro Testing Results:<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"1188" style=3D"width:448.0pt;margin-left:-.95pt;border-coll=
apse:collapse">
<tbody>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;background:#D99694;padding:0in 5.4pt 0in 5.4pt;he=
ight:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">BRANCH<o:p></o:p></span>=
</b></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er:solid windowtext 1.0pt;border-left:none;background:#D99694;padding:0in 5=
.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">daisy<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#D99694;padding:0in 5.=
4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">COMMIT<o:p></o:p></span>=
</b></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#D99694;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Poky: c4f1f0f491f988901bfd6=
965f7d10f60cb94a76f<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#D99694;padding:0in 5.=
4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">RELEASE<o:p></o:p></span=
></b></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#D99694;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">1.6.1<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Ubuntu 14.04 LTS<o:p></o=
:p></span></b></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">FAIL &#8211; 6467<o:p></o:p=
></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Fedora 20<o:p></o:p></sp=
an></b></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#95B3D7;padding:0in 5.=
4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">CentOS 6.5<o:p></o:p></s=
pan></b></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#95B3D7;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;background:#8EB4E3;padding:0in 5.=
4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">OpenSuse 13.1<o:p></o:p></span></b><=
/p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#8EB4E3;padding:0in 5.4pt 0in 5.4pt;h=
eight:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Retest Needed<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Retest Needed<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Retest Needed<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Retest Needed<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.35pt">
<td width=3D"448" nowrap=3D"" valign=3D"bottom" style=3D"width:169.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td width=3D"740" nowrap=3D"" valign=3D"bottom" style=3D"width:279.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.35pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Retest Needed<o:p></o:p></s=
pan></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:Consolas=
;color:black">Regards,</span><span style=3D"font-size:10.5pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:Consolas=
;color:black">--</span><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:Consolas=
;color:black">Alexandru Georgescu</span><span style=3D"font-size:10.5pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:Consolas=
;color:black">Yocto QA Engineer</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:Consolas=
;color:black">SSG/SSD Open Source Technology Center Romania</span><span sty=
le=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quo=
t;;color:black"><o:p></o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E96219BB194IRSMSX104gercor_--

--_006_1FFB62CE8AEB0D4298B51122D8903E96219BB194IRSMSX104gercor_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=8868;
	creation-date="Mon, 30 Jun 2014 16:25:45 GMT";
	modification-date="Mon, 30 Jun 2014 16:25:45 GMT"
Content-ID: <image001.jpg@01CF9499.15C43100>
Content-Transfer-Encoding: base64

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
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD//Z

--_006_1FFB62CE8AEB0D4298B51122D8903E96219BB194IRSMSX104gercor_
Content-Type: image/jpeg; name="image002.jpg"
Content-Description: image002.jpg
Content-Disposition: inline; filename="image002.jpg"; size=10212;
	creation-date="Mon, 30 Jun 2014 16:25:45 GMT";
	modification-date="Mon, 30 Jun 2014 16:25:45 GMT"
Content-ID: <image002.jpg@01CF9499.15C43100>
Content-Transfer-Encoding: base64

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

--_006_1FFB62CE8AEB0D4298B51122D8903E96219BB194IRSMSX104gercor_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=520;
	creation-date="Mon, 30 Jun 2014 16:25:45 GMT";
	modification-date="Mon, 30 Jun 2014 16:25:45 GMT"
Content-ID: <image003.png@01CF9499.15C43100>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABgAAAAdCAAAAACV0fOXAAAABGdBTUEAALGOfPtRkwAAAAlwSFlz
AAAdYAAAHWABlZu/dAAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAGFSURB
VCjPpZLdS8JQGIdfzXSmkyhp021aiaANWUpFF13aRbipm5s1mXYRFEmluC+nZ2D/eWmiHr3suXwf
fpz348DA9Hwc5PsTcwBmv9vGUGVF7fZNGBs3ZxhZlju9McaAVAZwyEQoLSPwFQqvH5QFMin6gBQm
RJKBVT1eeZY5SkSAmunk1fXhRt3ROKr2KySaa/YqsUUmEON1hOr0IiHSrGobl7G5iAnacDaVqIWQ
aFpCk8cCAYE4/2S6Y0eil+JEnM4GSiEcFfSRZ7vWSlCi4zmjZi5z37dt07U3hOU63mfr7lZ8nzhY
wnZN2+lXGfbhy5m4W4lBiydC57WPb7TqavHGUMkTAPs52Z02Uuuuvr8aRWI+CVFsm+3McnK6jjwt
H/nbSYTX6xy9nFyz9FJ0tXVBOEo35gmKkTolYr13IhpklN971I8Pihdh/CaU7IOvZsIJcg8guGQu
spoPs7eqwPNCGaP6OgPr88Xo6EYP4+XDgpokt3aQpRpQKZbbgU1t/ZB/8QM1LY6QYu5kKAAAAABJ
RU5ErkJggg==

--_006_1FFB62CE8AEB0D4298B51122D8903E96219BB194IRSMSX104gercor_--
