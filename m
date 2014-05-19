Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C29BE00B6A; Mon, 19 May 2014 08:27:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	RDNS_NONE,TRACKER_ID autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  1.1 TRACKER_ID BODY: Incorporates a tracking ID number
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga01.intel.com (unknown [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D32A1E0073D
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 08:27:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 May 2014 08:27:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,868,1392192000"; 
	d="jpg'145?png'145,150?scan'145,150,208,217,150,145";a="534264292"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 19 May 2014 08:27:05 -0700
Received: from irsmsx154.ger.corp.intel.com (163.33.192.96) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 19 May 2014 16:27:00 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.98]) by
	IRSMSX154.ger.corp.intel.com ([169.254.12.210]) with mapi id
	14.03.0123.003; Mon, 19 May 2014 16:27:00 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.4.4 QA status report
Thread-Index: Ac9zdsVWPkHMyEa0S7qopVPv/IREHQ==
Date: Mon, 19 May 2014 15:27:00 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E961B6ABBBD@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.1.140326
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Yocto 1.4.4 QA status report
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
X-List-Received-Date: Mon, 19 May 2014 15:27:18 -0000
X-Groupsio-MsgNum: 19699
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_1FFB62CE8AEB0D4298B51122D8903E961B6ABBBDIRSMSX104gercor_";
	type="multipart/alternative"

--_006_1FFB62CE8AEB0D4298B51122D8903E961B6ABBBDIRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E961B6ABBBDIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E961B6ABBBDIRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the 1.4.4 test report. As 1.4.4 has small updates over 1.4.3, the v=
alidation didn=1B$B!G=1B(Bt go through the usual process and was focused on=
 the changes only.
The changes are new BA versions, an eglibc update and OpenSSL updates. So w=
e did  do a FP on Build Appliance, run the ADT tests, run the weekly agains=
t Eclipse Plugin and run the Distro Tests against Dylan. There were also so=
me HOB changes so we did run the Weekly for HOB too. Since as mentioned 1.4=
.4 contains the OpenSSL updates (fixing Hearbleed), we extended our test by=
 running  an exploit to make sure that the fixes work. They were confirmed =
immediately after.

Issue summary
                - 6344<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
6344> - ADT installer - failed to mount proc for QEMU x86 and arm. This bas=
ically blocks booting QEMU installed using ADT.
                - 6346<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
6346> - ADT installer downloads the toolchain for arm7a instead of the one =
for arm5a on 1.4.4 build

Distro testing issues
                - #6321<https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D6321> - fetch failure for xf86-video-omapfb_git.bb - encountered in our =
Fedora 20.
                - #6323<https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D6323> - qemu_1.4.0.bb, do_compile task failed on OpenSuse 13.1 distro - =
this is marked as wontfix and will be mentioned in the release notes. For m=
ore details, please see the issue description
                - #6324<https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D6324> - gcc-cross-initial_4.7.bb, do_compile task failed on OpenSuse 13.=
1 distro for the same reasons as #6323. Marked as wontfix due to the same r=
easons mentioned in 6323 body.

The full report is available at: https://wiki.yoctoproject.org/wiki/WW20_-_=
2014-05-12_-_Dylan_1.4.4


Testing data
Test type:  Point Release Test
Branch: master
Build name: 1.4.4
 poky commit: 42a5b0cbd1fc316e8b8e3ef1629271619c74b2d3
Eclipse Plugin commit Juno:   dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7
Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rele=
ases/yocto-1.4.4/
Distributions tested: Ubuntu 14.04 64bit, Fedora 20 32bit, Opensuse 13.1 64=
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

2360<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2360>2362<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2362>

ADT: dylan branch

Fedora 20 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

2359<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2359>2361<h=
ttps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2361>

ADT: dylan branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2350<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2350>

Eclipse Plugin: dylan branch

Ubuntu 13.10 x86_64

77.8%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>5763<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D5763>5163<https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D5163>

0.0%

none

22.2%

6344<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6344>6346<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D6346>

100.0%

2373<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2373>

Hob: dylan branch

Ubuntu 14.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2363<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2363>

Build Appliance: dylan branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 5



Test Case Status Report

Status

Count

BLOCKED

2

PASSED

263

Total: 265


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:2,263&chco=3DFFFF66|00FF00&chl=3DBLOCKED(2)+1%25|PASSED(263)+99%25]



Bug Status Report

[Bug Status]

ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW20_-_2014-05-12_-_Dyl=
an_1.4.4>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW20_-_2014-05-12=
_-_Dylan_1.4.4>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW20_-_2014-05-12_-=
_Dylan_1.4.4>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW20_-_2014-05-=
12_-_Dylan_1.4.4>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW20_-_2014-05-1=
2_-_Dylan_1.4.4>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW20_-_2014-05=
-12_-_Dylan_1.4.4>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW20_-_2014-05-12_=
-_Dylan_1.4.4>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW20_-_20=
14-05-12_-_Dylan_1.4.4>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW20_-_2014-05-=
12_-_Dylan_1.4.4>

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

Medium

ACCEPTED

2350<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2350>

no external tools displayed when first trying to run QEMU - test case 48 fa=
iled on Ubuntu 12.04 x86-64 host(build 1.5 M4 rc2)

1.5

1.7

243

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>

Low

NEW

2350<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2350>

headless build takes took long

1.6

1.6

105

5763<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5763>

Medium

VERIFIED

FIXED

2350<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2350>

Not available outcome when task is not executed.

unspecified

1.6 M4

104

6344<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6344>

Undecided

ACCEPTED

2350<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2350>

ADT installer - failed to mount proc for QEMU x86 and arm

1.4.4

---

NEW

6346<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6346>

Undecided

NEW

2350<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2350>

ADT installer downloads the toolchain for arm7a instead of the one for arm5=
a

1.4.4

---

NEW

Total: 5





Distro Testing results:
We have run the following distro tests against 1.4.4. The issues found were=
 explained in the issue summary:

BRANCH

dylan

COMMIT

42a5b0cbd1fc316e8b8e3ef1629271619c74b2d3

RELEASE

1.4.4

Ubuntu 14.04 LTS



* nighlty-world

Not run, since will fail due to 6321 (initially ron on Fedora 20)

* buildtools

Failed - ERROR: Nothing PROVIDES 'buildtools-tarball'

* nightly-arm

Failed - 6321

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

Failed - 6321

* buildtools

Failed - ERROR: Nothing PROVIDES 'buildtools-tarball'

* nightly-arm

Failed - 6321

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

Not run, since will fail due to 6321 (initially ron on Fedora 20)

* buildtools

Failed - ERROR: Nothing PROVIDES 'buildtools-tarball'

* nightly-arm

Failed - 6321

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

Not run, since will fail due to 6321 (initially ron on Fedora 20)

* buildtools

Failed - ERROR: Nothing PROVIDES 'buildtools-tarball'

* nightly-arm

Failed - 6323, 6321

* nightly-multilib

Failed - 6324

* nightly-qa-systemd

PASS

* nightly-x86

PASS

* nightly-x86-64

PASS

* nightly-x86-64-lsb

PASS



--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania

--_000_1FFB62CE8AEB0D4298B51122D8903E961B6ABBBDIRSMSX104gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-ID: <04E3CC0477E6294F88DD46EC4F42925A@intel.com>
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
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
	background:#95B3D7;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl64, li.xl64, div.xl64
	{mso-style-name:xl64;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#DA9694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.xl65, li.xl65, div.xl65
	{mso-style-name:xl65;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#DA9694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl66, li.xl66, div.xl66
	{mso-style-name:xl66;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#8DB4E2;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl67, li.xl67, div.xl67
	{mso-style-name:xl67;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
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
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.xl69, li.xl69, div.xl69
	{mso-style-name:xl69;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#95B3D7;
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
	background:#8DB4E2;
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
	background:#8DB4E2;
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
	background:#DA9694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.xl73, li.xl73, div.xl73
	{mso-style-name:xl73;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#DA9694;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl74, li.xl74, div.xl74
	{mso-style-name:xl74;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#E6B8B7;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.xl75, li.xl75, div.xl75
	{mso-style-name:xl75;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#F2DCDB;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.apple-tab-span
	{mso-style-name:apple-tab-span;}
span.EmailStyle31
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Here is the 1.4.4 test repo=
rt. As 1.4.4 has small updates over 1.4.3, the validation didn=1B$B!G=1B(Bt=
 go through the usual process and was focused on the changes only.<o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">The changes are new BA vers=
ions, an eglibc update and OpenSSL updates. So we did &nbsp;do a FP on Buil=
d Appliance, run the ADT tests, run the weekly against Eclipse
 Plugin and run the Distro Tests against Dylan. There were also some HOB ch=
anges so we did run the Weekly for HOB too. Since as mentioned 1.4.4 contai=
ns the OpenSSL updates (fixing Hearbleed), we extended our test by running =
&nbsp;an exploit to make sure that the
 fixes work. They were confirmed immediately after.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.5pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Issue summary<o:p></o:p>=
</span></b></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-tab-span"><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:bla=
ck">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;
</span></span><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quo=
t;,&quot;sans-serif&quot;;color:black">-
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6344">6344</=
a>&nbsp;-&nbsp;ADT installer - failed to mount proc for QEMU x86 and arm. T=
his basically blocks booting QEMU installed using ADT.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6346">6346</=
a> &#8211; ADT installer downloads the toolchain for arm7a instead of the o=
ne for arm5a on 1.4.4 build<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.5pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Distro testing issues<o:=
p></o:p></span></b></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-tab-span"><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:bla=
ck">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;
</span></span><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quo=
t;,&quot;sans-serif&quot;;color:black">- #<a href=3D"https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D6321">6321</a> &#8211; fetch failure for&nbsp=
;xf86-video-omapfb_git.bb &#8211; encountered in our Fedora 20.<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-tab-span"><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:bla=
ck">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;
</span></span><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quo=
t;,&quot;sans-serif&quot;;color:black">- #<a href=3D"https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D6323">6323</a> -&nbsp;qemu_1.4.0.bb, do_compi=
le task failed on OpenSuse 13.1 distro &#8211; this is marked as wontfix
 and will be mentioned in the release notes. For more details, please see t=
he issue description<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-tab-span"><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:bla=
ck">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;
</span></span><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quo=
t;,&quot;sans-serif&quot;;color:black">- #<a href=3D"https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D6324">6324</a>&nbsp;-&nbsp;gcc-cross-initial_=
4.7.bb, do_compile task failed on OpenSuse 13.1 distro for the same
 reasons as #6323. Marked as wontfix due to the same reasons mentioned in 6=
323 body.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">The full report is availabl=
e at:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4=
.4">https://wiki.yoctoproject.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4.4</a><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
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
lack">Test type:&nbsp; Point Release Test<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Branch: master<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Build name: 1.4.4
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">&nbsp;poky commit: 42a5b0cbd1fc316e8b8e3ef1629271619c74b2d3<o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Eclipse Plugin commit Juno:&nbsp;&nbsp; dc9a609c68fe4a6bbbf34d418fd66=
11489c1d6f7<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Autobuilder images repository:
<a href=3D"http://autobuilder.yoctoproject.org/pub/releases/yocto-1.4.4">ht=
tp://autobuilder.yoctoproject.org/pub/releases/yocto-1.4.4</a>/<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Distributions tested: Ubuntu 14.04 64bit, Fedora 20 32bit, Opensuse 1=
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
rg/tr_show_run.cgi?run_id=3D2360"><span style=3D"color:#5A3696;text-decorat=
ion:none">2360</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2362"><span style=3D"color:#5A3696;text-decoration:none=
">2362</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: dylan branch<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2359"><span style=3D"color:#5A3696;text-decorat=
ion:none">2359</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D2361"><span style=3D"color:#5A3696;text-decoration:none=
">2361</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: dylan branch<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2350"><span style=3D"color:#5A3696;text-decorat=
ion:none">2350</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Eclipse Plugin: dylan branch<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">77.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5760"><span style=3D"color:#5A3696;text-decoration:non=
e">5760</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D5763"><span style=3D"color:#5A3696;text-decoration:none">5763</span><=
/a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163"><sp=
an style=3D"color:#5A3696;text-decoration:none">5163</span></a><o:p></o:p><=
/span></p>
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
<span style=3D"font-size:10.0pt">22.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6344"><span style=3D"color:#5A3696;text-decoration:non=
e">6344</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D6346"><span style=3D"color:#5A3696;text-decoration:none">6346</span><=
/a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2373"><span style=3D"color:#5A3696;text-decorat=
ion:none">2373</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Hob: dylan branch<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D2363"><span style=3D"color:#5A3696;text-decorat=
ion:none">2363</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Build Appliance: dylan branch<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 5</span></b><span style=3D"font-=
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
<span style=3D"font-size:10.0pt">BLOCKED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">2<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">263<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 265</span></b><span style=3D"fon=
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
idth=3D"860" height=3D"239" id=3D"Picture_x0020_33" src=3D"cid:image007.jpg=
@01CF738F.EAB67F60" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;=
chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:2,263&amp;chco=3DFFFF66|00FF00&amp;c=
hl=3DBLOCKED(2)&#43;1%25|PASSED(263)&#43;99%25"></span><span style=3D"font-=
size:10.0pt"><o:p></o:p></span></p>
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
<img border=3D"0" width=3D"739" height=3D"239" id=3D"Picture_x0020_32" src=
=3D"cid:image008.jpg@01CF738F.EAB67F60" alt=3D"Bug Status"></span><span sty=
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
ect.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4.4"><b><span style=3D"font-size:1=
0.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"24" he=
ight=3D"29" id=3D"Picture_x0020_31" src=3D"cid:image009.png@01CF738F.EAB67F=
60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-size:10.0pt"=
><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4.4"><b><span style=3D"font-=
size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"=
24" height=3D"29" id=3D"Picture_x0020_30" src=3D"cid:image009.png@01CF738F.=
EAB67F60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-size:1=
0.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4.4"><b><span style=3D"font-si=
ze:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"24=
" height=3D"29" id=3D"Picture_x0020_29" src=3D"cid:image009.png@01CF738F.EA=
B67F60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-size:10.=
0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4.4"><b><span style=3D"fon=
t-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"24" height=3D"29" id=3D"Picture_x0020_28" src=3D"cid:image009.png@01CF7=
38F.EAB67F60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-si=
ze:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4.4"><b><span style=3D"font=
-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D=
"24" height=3D"29" id=3D"Picture_x0020_27" src=3D"cid:image009.png@01CF738F=
.EAB67F60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-size:=
10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description</span></b><a href=3D"https://wiki.=
yoctoproject.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4.4"><b><span style=3D"fo=
nt-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"24" height=3D"29" id=3D"Picture_x0020_26" src=3D"cid:image009.png@01CF7=
38F.EAB67F60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-si=
ze:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4.4"><b><span style=3D"font-s=
ize:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=3D"2=
4" height=3D"29" id=3D"Picture_x0020_25" src=3D"cid:image009.png@01CF738F.E=
AB67F60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-size:10=
.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone</span></b><a href=3D"https://=
wiki.yoctoproject.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4.4"><b><span style=
=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" =
width=3D"24" height=3D"29" id=3D"Picture_x0020_24" src=3D"cid:image009.png@=
01CF738F.EAB67F60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"fo=
nt-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4.4"><b><span style=3D"fon=
t-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"24" height=3D"29" id=3D"Picture_x0020_23" src=3D"cid:image009.png@01CF7=
38F.EAB67F60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-si=
ze:10.0pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5163"><span style=3D"color:#5A3696;text-decoration:none">5163=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2350"><span style=3D"col=
or:#5A3696;text-decoration:none">2350</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">no external tools d=
isplayed when first trying to run QEMU - test case 48 failed on Ubuntu 12.0=
4 x86-64 host(build 1.5 M4 rc2)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.7<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">243<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5760"><span style=3D"color:#5A3696;text-decoration:none">5760=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Low<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2350"><span style=3D"col=
or:#5A3696;text-decoration:none">2350</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">headless build take=
s took long<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">105<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5763"><span style=3D"color:#5A3696;text-decoration:none">5763=
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
tyle=3D"font-size:10.0pt">VERIFIED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2350"><span style=3D"col=
or:#5A3696;text-decoration:none">2350</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Not available outco=
me when task is not executed.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">104<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6344"><span style=3D"color:#5A3696;text-decoration:none">6344=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Undecided<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2350"><span style=3D"col=
or:#5A3696;text-decoration:none">2350</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">ADT installer - fai=
led to mount proc for QEMU x86 and arm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.4.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D6346"><span style=3D"color:#5A3696;text-decoration:none">6346=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2350"><span style=3D"col=
or:#5A3696;text-decoration:none">2350</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">ADT installer downl=
oads the toolchain for arm7a instead of the one for arm5a<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.4.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 5</span><=
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.5pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Distro Testing results:<=
o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">We have run the following d=
istro tests against 1.4.4. The issues found were explained in the issue sum=
mary:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p=
>
</div>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"1260" style=3D"width:475.0pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:14.0pt">
<td width=3D"475" nowrap=3D"" valign=3D"bottom" style=3D"width:179.0pt;bord=
er:solid windowtext 1.0pt;background:#DA9694;padding:.75pt .75pt 0in .75pt;=
height:14.0pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">BRANCH<o:p></o:p></span>=
</b></p>
</td>
<td width=3D"785" nowrap=3D"" valign=3D"bottom" style=3D"width:296.0pt;bord=
er:solid windowtext 1.0pt;border-left:none;background:#DA9694;padding:.75pt=
 .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">dylan<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#DA9694;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">COMMIT<o:p></o:p></span>=
</b></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#DA9694;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">42a5b0cbd1fc316e8b8e3ef1629=
271619c74b2d3<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#DA9694;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">RELEASE<o:p></o:p></span=
></b></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#DA9694;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">1.4.4<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Ubuntu 14.04 LTS<o:p></o=
:p></span></b></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#E6B8B7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Not run, since will fail du=
e to 6321 (initially ron on Fedora 20)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#E6B8B7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Failed - ERROR: Nothing PRO=
VIDES 'buildtools-tarball'<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#E6B8B7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Failed - 6321<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Fedora 20<o:p></o:p></sp=
an></b></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#E6B8B7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Failed - 6321<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#E6B8B7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Failed - ERROR: Nothing PRO=
VIDES 'buildtools-tarball'<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#E6B8B7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Failed - 6321<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">CentOS 6.5<o:p></o:p></s=
pan></b></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#95B3D7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#F2DCDB;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Not run, since will fail du=
e to 6321 (initially ron on Fedora 20)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#F2DCDB;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Failed - ERROR: Nothing PRO=
VIDES 'buildtools-tarball'<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#F2DCDB;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Failed - 6321<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&nbsp;<o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;background:#8DB4E2;padding:.75pt .75pt 0in .75pt;height:14.0p=
t">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">OpenSuse 13.1<o:p></o:p></span></b><=
/p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#8DB4E2;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nighlty-world<o:p><=
/o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#E6B8B7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Not run, since will fail du=
e to 6321 (initially ron on Fedora 20)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; buildtools<o:p></o:=
p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#E6B8B7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Failed - ERROR: Nothing PRO=
VIDES 'buildtools-tarball'<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-arm<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#E6B8B7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Failed - 6323, 6321<o:p></o=
:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-multilib<o:=
p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#E6B8B7;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">Failed - 6324<o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-qa-systemd<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86<o:p></o=
:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64<o:p>=
</o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.0pt">
<td nowrap=3D"" valign=3D"bottom" style=3D"border:solid windowtext 1.0pt;bo=
rder-top:none;padding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">&#8226; nightly-x86-64-lsb<=
o:p></o:p></span></p>
</td>
<td nowrap=3D"" valign=3D"bottom" style=3D"border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:.75pt .75pt 0in .75pt;height:14.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:black">PASS<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#7F7F7F">--</span></b><span styl=
e=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot=
;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Ale=
xandru Georgescu</span></b><span style=3D"font-size:11.0pt;color:black"><o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Yoc=
to QA Engineer</span></b><span style=3D"font-size:11.0pt;color:black"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">SSG=
/SSD Open Source Technology Center Romania</span></b><span style=3D"font-si=
ze:11.0pt;color:black"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E961B6ABBBDIRSMSX104gercor_--

--_006_1FFB62CE8AEB0D4298B51122D8903E961B6ABBBDIRSMSX104gercor_
Content-Type: image/jpeg; name="image007.jpg"
Content-Description: image007.jpg
Content-Disposition: inline; filename="image007.jpg"; size=9011;
	creation-date="Mon, 19 May 2014 15:26:59 GMT";
	modification-date="Mon, 19 May 2014 15:26:59 GMT"
Content-ID: <image007.jpg@01CF738F.EAB67F60>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAvwC/AAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCADvA1wDASIA
AhEBAxEB/8QAHAABAAEFAQEAAAAAAAAAAAAAAAUBAgMEBgcI/8QAPxABAAICAgAEAwUGAwUIAwAA
AAECAwQFEQYSITETQVEiMlJhcRQWM0KBkQcjUxU0Q1SxJDZVYnKCkpOhwdH/xAAbAQEAAgMBAQAA
AAAAAAAAAAAAAwUBAgQGB//EADERAQACAQMCAwYGAgMBAAAAAAABAgMEETEFIRIyQRMUIlFSYQYW
QnGBkRWhQ7HB0f/aAAwDAQACEQMRAD8A9mAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFJtER3MxH6g
HbTz8pq6te8mWIj9Udn8V6mOv+X9uUGTU4cfmtDmy6zBi894hOwOQyeLs1o6x4orP1aOTxHv3mes
vlj6OK/VsFeN5V+TrmmrxvP8O7+JWvvaI/qsnZwx75K/3eeZeS2sv3stmCc2SffJf+7mt1qv6auS
/wCIa7/DT/b0W3I6tPfNVhtzelT3yw8+m9p97TP9VO5RW6zk9Kwgt+IMk+WkO+nxHoR/xoU/eTj/
APVcENP8xm+UI/zBn+mHe/vJx/8Aqqx4i0J9ssOBD/MZvlB+YM/0w9DpzWlknquWGeu9r2+7lq81
7mPaV0ZLx7XtH9Ules2/VVLT8Q3jzUh6ZGfFPtkr/dfFqz7TEvMq7Gas91yW7/VtY+Z3cUdVzT/V
NTrNJ81XRT8QUnz1mHocLnCYfE29jt3e/nj6JDD4wn0jJhn857dVOqYLczs68XWtLfmZj93VKf2R
GHxPpZOvNaazPySOLcwZqxamSsxP5uvHnxZPLaJWGPU4cvktEtkW99x6LkycAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQBT3W5LVpXu0x
EIbf8Sa+p5q4/t3j5Qiy5seKN7zshzajFgr4sltkzNuq92mOvzaO3zWnpx1kyRM/SHIbvPbm3No8
81pPyhGTabT3MzM/mp83WIjtij+ZUGp6/EdsNf5l0uz4tt1auDH19JQ+fmNzYiYvlmIn6NIVWXW5
8vmspM3UNRl81pVm9rfetM/rKgOTdxbgAAAAAAAAAAAAAAAC6uXJSYmt7R19JWjMWmOGYtMcJTW8
QbuvNYtkm9Y+UprU8W4rz1sY/J+fbkR2Ytfmx8W3/dYYOqanDxbePv3eka3Ja+1WJxZImJ/Ntd9v
MMeW+K0WpaazH0lMaPifZ156zf5lf+i3wdXpbtkjZeabruO3bLG339HbnyRuhzetvelLxFvnE+iS
77j0W1MlckeKk7wvMeWmWvipO8LhQbpFQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAWzaK1mZnqI+cgfJG8lzODj6zFrRN/lEInmfEkV7w6c929pt9H
L5Ml8t5vktNrT6zMqbV9Urj+DF3n5qDX9Zri3x4e8/P0SHI83sb9pibTTH8ohG99+4KDJlvkt4rz
vLy2XPfNbxXneQBEiAAAAAAAAAAAAAAAAAAAAAAAAAAVra1LRNZmJj6JvjfEubW6pn+3T27n5IMT
4c+TDO9J2dGn1WXT28WOdnpGlv4N7FF8Non8mzHr2811N3NpZYvhtMTHy+rsuI57Fv1iuTqmX6T8
3otH1Gmb4b9rf9vWaDq2PUfBftb/AFKbFFVouQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAFAWWtFImZ9I+rkef5+c17a+rbqkek2j5trxNzHw6fsuC32p+
9MfRyah6lrp3nFjn9/8A48z1jqcxM4MU/vP/AIAKB5gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAX
UvalotS01tHrEwtGY7MxMx3h2fA85Xbp8DPPWWI9J+qeie3mGLJbDkrkpPVqz3Eu84TlK8jqxM/x
Kx1Z6Xput9rHs78x/t67pHUpzx7LJPxRx90sKKrdfAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAA5u/Ncpn5bb1dDTxZKa0xE2tbrts8XzWbY3cmlv4Iw7NfWIj1iYBNjn+e8RX4nc1sGHBGX4k/
bn8KWz7uPBoTtWn7EV7BtDm8fL8xm152sejinX+9H2vWa/VubHPY8PDU3vJPeSYrWk+nqCYHPTyv
L61KZtrRxxhmY78lu5jtm5XmdnWya+PR165b5o7iLT10CbEHi2+enNSMulgikz9qYv7Qt5Dl9/Hy
1dLQ1ceWfL5pm09dAnhBa3ObOLdpq8pr1wWv921Z7iW/tb84trFrYqxfLf16n5QDeEHn5zLfcyYd
DB8aMPplmfk2cHOaubQvsxMxGOfLavXrE/QEmIPX5vY/bKY9rUtTFm/h3iP+q7c5nPGxkxaGv8ac
X8SZ+QJoROvzUbehGxgp3NbeXLWf5UnjyVy463pPdbR3EgvEZyPKzq5662vj+LsWjuK/krp8xjz4
8vxqzjyYY7vWfkCSEFXn8nm+NfXmNOZ6jJ821t8xjwXpTFSclrV8/UfhBJiOty2GdGNjH6zafLWs
/Ofo3cNrXw0tevltMdzH0BkABb/+mnyO3Gnp5Mkz69ejc69HL+LtrqtMNZ6ntzarL7LDa7k1uf2G
C1/VzGbLOfNfJae5tPayAeNtMzO8vn1rTad5AGrAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB8k
hw2/bR3qWifsWnq0I8iep7hLiyTjvF68wlw5bYrxevMPT6WjJSLRPcTC/wCSL4DZ/aeNp3Pc1jqU
pD2mLJGSkXj1fQ8OSMuOt49YXAJEoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADj9SN6fEnL/s
Pl688ebufmlON4rLrbOXf383xM0xMxH4YbelxdNLkNvbre1rbNomYn2ht7OH9o174vNNfPHXcA46
u5G1tcjmvgvlrk7jDaI76SPCbWLa8PW192Zj4f2L9+8dprjePx8bpU1sczatPnPvLWpwWCmzt5PP
aa7PranyiQR1eO5Litabcfs/tOCImYpefTpknPqc7wtKbXWvM2+XtW35FPDm1jrbFTlM0YJ/l+kf
Ru5OC18nE10e5iK+sXj37+oI7PTluGwef4kbmvT73nn16YOXyX5DY47LqTNLXr3H5N2vh3avWMex
yebJiifuz84bHJeH6b0YPg57684Y6rNAMGlydM1JybU2pHvHbXr/AN746/05XY+C3aZaWnmNi0Vn
uazHuv3/AA/bb367eHdy6+SK+X7HzBg8VTW9dPHSYnP8asxEe/TNrT8bxHe95+1jp5Y/sy6PA119
mNjZz32c0R1Fr/Jdnw/s/LY9qK/YtXy26+oNfZ2662xl1eK14vtZJ7yT16RP5yjOW0M3F8Ni+H1b
YzbFbX+nbdt4YzV3M+fX5PPhnNbzTEQ3sXD2/YL623tZNmbT3F7+9QaGzsbvE5dbLsTGfHmvFZr+
Cfyb27htn1M9eKvSmebfbmPqs1uBvTapk2dvJnpj+5S3tC3Z4HJOzky6e5k1/i+t619pn6g1eGnH
fhd7DH8akzXNP1skeByWvxta2nvyfZiWvPH4+J4fLgxTbJkz+k3+drT80hxetOpx2HFePtxX7X6g
juR09rHzVN7SmmTJ8PyTitPy+qPw4drc5nbpueXFXJgms+WfSqY5Ph7b2emfBs3wZqR15q/OF+lx
FNbBlpkyWy3y/evPuCE2qcrr8Bk1Ix4rYqU6rl794buvxF9vj9TPTYthzfBitrRHvCuLw5kpk8l9
3LfXi3mjHP8A0TOTD3q2xYp8n2eomPkCAp8HDl81pm+vgnr/ANWRKaHLV2884L0tjzeXzeWY+Rbi
MV9CNeZmLRPm88e/f1W8fxU6ee2fNntmyzHl81vlANfd4Xc2tmcmLlc+Gs/yVj0hr/u7yH/jez/Z
0YDnI8P8jWe45vYmY+Uw5rnK7uPk4x7N4yeWOvNL0b83n3imJp4jtEz6TjiVb1SZjAqOtTMaWe3q
jgHlHiQAAAAAAAAAAAAAAAAAAAA6k7XeaRmNlvR0vjJ1PtC6ueI96RI3rWk8yxDdrvYq++tWWWvJ
68R66dJbJ64MM85Ij+JRolI5TW+enRlpyWjP3tSsGyWukwW/5Y/qUMJ+vIcTPvrxH9F8b3DzHrhr
H9Db7po6binjNVzo6T9r4b8Ff7L6ZuHv7Ur/AFhnw/dvHSqTxmr/AG5gddXHxVvauNkjV4y3tXF/
c8KavQptxlq40dp+w8bP8uNWOO46fbHjn+p4G0fh/JPGSrih3EcVoz7YaKX4rUjHaa69JtEekHgb
flzN9cNXwfa06uWs+02dLHpDkuL5a/GznjPp2ikW/wCHHfTe/fHS/wCX2/8A6pev0NZrgrEvRaTB
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
AAAAAAAAAAAAAAAAAAAAAAP/2Q==

--_006_1FFB62CE8AEB0D4298B51122D8903E961B6ABBBDIRSMSX104gercor_
Content-Type: image/jpeg; name="image008.jpg"
Content-Description: image008.jpg
Content-Disposition: inline; filename="image008.jpg"; size=11796;
	creation-date="Mon, 19 May 2014 15:26:59 GMT";
	modification-date="Mon, 19 May 2014 15:26:59 GMT"
Content-ID: <image008.jpg@01CF738F.EAB67F60>
Content-Transfer-Encoding: base64

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
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/Z

--_006_1FFB62CE8AEB0D4298B51122D8903E961B6ABBBDIRSMSX104gercor_
Content-Type: image/png; name="image009.png"
Content-Description: image009.png
Content-Disposition: inline; filename="image009.png"; size=520;
	creation-date="Mon, 19 May 2014 15:26:59 GMT";
	modification-date="Mon, 19 May 2014 15:26:59 GMT"
Content-ID: <image009.png@01CF738F.EAB67F60>
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

--_006_1FFB62CE8AEB0D4298B51122D8903E961B6ABBBDIRSMSX104gercor_--
