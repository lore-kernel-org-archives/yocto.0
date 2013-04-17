Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD040E014B2
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 05:30:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Apr 2013 05:30:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,492,1363158000"; 
	d="png'150?scan'150,208,217,150";a="323618323"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 17 Apr 2013 05:30:35 -0700
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.198]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.244]) with mapi id
	14.01.0355.002; Wed, 17 Apr 2013 13:30:34 +0100
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Full Pass Test Report for Yocto 1.4 M6 RC1 2013-04-11-3 Build
Thread-Index: Ac47Z1oWjq3ClPDNQru2hhpAq1gdFw==
Date: Wed, 17 Apr 2013 12:30:33 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B0979A2A3@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Full Pass Test Report for Yocto 1.4 M6 RC1 2013-04-11-3 Build
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
X-List-Received-Date: Wed, 17 Apr 2013 12:30:43 -0000
X-Groupsio-MsgNum: 13216
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_33115ABC4887814E8A92A08FBC93416B0979A2A3IRSMSX103gercor_";
	type="multipart/alternative"

--_004_33115ABC4887814E8A92A08FBC93416B0979A2A3IRSMSX103gercor_
Content-Type: multipart/alternative;
	boundary="_000_33115ABC4887814E8A92A08FBC93416B0979A2A3IRSMSX103gercor_"

--_000_33115ABC4887814E8A92A08FBC93416B0979A2A3IRSMSX103gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the Full Pass test report for Yocto 1.4 M6 RC1: https://wiki.yoctop=
roject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4_M6_RC1_201304113_Build
This result has also been added to https://wiki.yoctoproject.org/wiki/Yocto=
_1.4_Milestone_Test_Report

Poky commit: dylan: dab237bc6a7679dfeaa981c14736aedc7b04ecb9



Here is the summary test report:

Yocto 1.4 M6 RC1 Build Test Report
Testing data
Test type: Full Pass post-release
Branch: dylan
Milestone: 1.4 M6
Build name: 1.4 M6 RC1
poky commit: dab237bc6a7679dfeaa981c14736aedc7b04ecb9
poky commit date:  Wed Apr 10 15:15:57 2013 -0700
poky commit(used with meta-intel): cb1941c1801276f8a098ca84aa063cc3e043e801
meta-intel commit: dylan:94c0feea5ec4f2bc47b05f3265d5e969654b499e
Eclipse Plugin commit: dylan:46be27bd3400419e8325d753b85a76bfb1898944
Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nigh=
tly/20130411-3

Environments used for testing: Ubuntu 12.04 x86-64, Ubuntu 12.10 x86-64, Fe=
dora 17, Fedora 18
Distribution Testing was performed on: Ubuntu 12.04, Ubuntu 12.10, Fedora 1=
7, Fedora 18, OpenSUse 12.1, OpenSuse 12.2, CentOS 6.3


To get the full report click here<https://wiki.yoctoproject.org/wiki/Full_P=
ass_Test_Report_for_Yocto_1.4_M6_RC1_201304113_Build>
Testing Summary Report

Test Plan

Environment

Passed

Other issues

Failed

Failing bugs

Blocked

Blocking bugs

BitBake: master branch

Ubuntu 12.04 x86_64

100.0%

none

0.0%

none

0.0%

none

Meta-yocto: master branch

Ubuntu 12.04 x86-64

95.2%

none

4.8%

4099<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4099>

0.0%

none

OE-Core: master branch

Ubuntu 12.04 X86_64

92.5%

4313<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4313>

7.5%

4314<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4314> 3453<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3453> 4310<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D4310>

0.0%

none

Hob: master branch

Ubuntu 12.04 x86_64

97.6%

none

2.4%

2618<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2618>

0.0%

none

BSP/QEMU: master branch

Beagleboard

0.0%

none

1.5%

4244<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4244>

98.5%

4244<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4244>

BSP/QEMU: master branch

qemux86

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

Emenlow

2.6%

none

1.3%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

96.1%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

BSP/QEMU: master branch

Atom PC

1.5%

none

1.5%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

97.1%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

P1022ds

0.0%

none

4.5%

4268<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4268> 3837<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3837>

95.5%

3837<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3837>

BSP/QEMU: master branch

Routerstationpro

2.2%

none

2.2%

4269<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4269>

95.6%

4269<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4269>

BSP/QEMU: master branch

MPC8315e-rdb

2.1%

none

2.1%

4269<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4269>

95.7%

4269<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4269>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

Crownbay-noemgd

1.4%

none

1.4%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

97.3%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

BSP/QEMU: master branch

Fish River Island 2 (FRI2)

2.4%

none

1.2%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

96.3%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

BSP/QEMU: master branch

Sugarbay

2.6%

none

1.3%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

96.1%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

BSP/QEMU: master branch

Jasperforest

6.7%

none

3.3%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

90.0%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

BSP/QEMU: master branch

NUC(Next Unit of Computing)

2.8%

none

1.4%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

95.8%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

Runtime: master branch

Multiple Environments

21.4%

none

7.1%

none

71.4%

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

Build Appliance: master branch

VMWare Player on Ubuntu

100.0%

none

0.0%

none

0.0%

none

ADT: master branch

Ubuntu 12.10 x86_64

100.0%

none

0.0%

none

0.0%

none

ADT: master branch

Fedora 18 i686

100.0%

none

0.0%

none

0.0%

none

Eclipse Plugin: master branch

Fedora 17 x86_64

96.7%

4272<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4272>

0.0%

none

3.3%

4270<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4270>

Total: 25



Test Case Status Report

Status

Count

BLOCKED

668

FAILED

18

IDLE

6

PASSED

628

Total: 1320


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:668,18,6,628&chco=3DFFFF66|FF9933|990066|00FF00&chl=3DBLOCKED(668)+51%25|F=
AILED(18)+1%25|IDLE(6)+0%25|PASSED(628)+48%25]



















































Bug Status Report


ID

Priority

Status

Resolution

Test Case

Description

Version

Target Milestone

Age (days)

2618<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2618>

Medium

ACCEPTED

114<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D114>

[Hob2] Incorrect total image size in "View Package" page

unspecified

1.4 M6

297

3453<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3453>

Medium

RESOLVED

FIXED

280<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D280>

Build fails when building multilib with ipk packaging

1.3

1.4

146

3837<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3837>

Medium+

RESOLVED

DUPLICATE

191<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D191>

[p1022ds] System can not boot

1.4

1.4 M6

66

4099<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4099>

Medium

IN PROGRESS REVIEW

319<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D319>

Crosstap script check fails

1.4

1.4 M6

17

4229<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4229>

Medium+

VERIFIED

FIXED

191<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D191>

can not install image from USB

1.4

1.4 M6

3 (Recent)

4244<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4244>

Medium+

RESOLVED

FIXED

191<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D191>

[Bealgeboard xM] Kernel networking broken/missing

1.4

1.4 M6

NEW

4268<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4268>

High

RESOLVED

FIXED

439<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D439>

[Autobuilder] No sato-sdk image in p1022ds publishing directory

1.4

1.4 M6

NEW

4269<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4269>

High

RESOLVED

FIXED

191<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D191>

routerstation/mpc8315e: can not boot with 3.4 kernel

1.4

1.4 M6

NEW

4270<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4270>

Medium

IN PROGRESS REVIEW

33<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D33>

streaming stap scripts freeze Eclipse when ran from the System Tap plugin

1.4

1.4 M6

NEW

4272<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4272>

Undecided

RESOLVED

INVALID

145<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D145>

cannot create bitbake commander project

1.4

---

NEW

4310<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4310>

Medium

ACCEPTED

297<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D297>

do_dumpdata_create_diff_gz fails for core-image-sato-qemux86-64

1.4

1.5 M6

NEW

4313<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4313>

Medium

NEW

295<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D295>

buildhistory-diff should give coherent message with bad arguments

1.4

1.5

NEW

4314<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4314>

Medium

NEW

276<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D276>

libcap do_patch fails for archive work directory and export source package =
with 'tar'

1.4

1.4 M6

NEW

Total: 13



If you have any questions or concerns, please contact us by replying to thi=
s email.

Regards,
Stoicescu Corneliu
Romania Yocto QA

--_000_33115ABC4887814E8A92A08FBC93416B0979A2A3IRSMSX103gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
h4
	{mso-style-priority:9;
	mso-style-link:"Heading 4 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
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
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.Heading4Char
	{mso-style-name:"Heading 4 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 4";
	font-weight:bold;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the Full Pass test report for Yocto 1.4 M6 R=
C1: <a href=3D"https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Report_for=
_Yocto_1.4_M6_RC1_201304113_Build">
https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4_M6_R=
C1_201304113_Build</a><o:p></o:p></p>
<p class=3D"MsoNormal">This result has also been added to <a href=3D"https:=
//wiki.yoctoproject.org/wiki/Yocto_1.4_Milestone_Test_Report">
https://wiki.yoctoproject.org/wiki/Yocto_1.4_Milestone_Test_Report</a><span=
 style=3D"color:#1F497D"><o:p></o:p></span></p>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">Poky commit: dylan: </span>dab237bc6a7679dfeaa981c14736ae=
dc7b04ecb9<o:p></o:p></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">Here is the summary test report:<o:p></o:p></span></pre>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:#1F497D"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:.05in;line-height:14.3pt;back=
ground:white">
<b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:black">Yocto 1.4 M6 RC1 Build Test Report<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;m=
argin-bottom:6.0pt;margin-left:0in;line-height:14.3pt;background:white">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">Testing data<o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Test type: Full Pass post-release<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Branch: dylan<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Milestone: 1.4 M6<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Build name: 1.4 M6 RC1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">poky commit: dab237bc6a7679dfeaa981c14736aedc7b04ecb9<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">poky commit date:&nbsp; Wed Apr 10 15:15:57 2013 -0700<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">poky commit(used with meta-intel): cb1941c1801276f8a098ca84aa063cc3e0=
43e801<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">meta-intel commit: dylan:94c0feea5ec4f2bc47b05f3265d5e969654b499e<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Eclipse Plugin commit: dylan:46be27bd3400419e8325d753b85a76bfb1898944=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Autobuilder images repository: http://autobuilder.yoctoproject.org/pu=
b/nightly/20130411-3<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Environments used for testing: Ubuntu 12.04 x86-64, Ubuntu 12.10 x86-=
64, Fedora 17, Fedora 18<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Distribution Testing was performed on: Ubuntu 12.04, Ubuntu 12.10, Fe=
dora 17, Fedora 18, OpenSUse 12.1, OpenSuse 12.2, CentOS 6.3&nbsp;&nbsp;
<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;m=
argin-bottom:12.0pt;margin-left:0in;line-height:14.3pt;background:white">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black"><br>
<br>
<b>To get the full report click&nbsp;<a href=3D"https://wiki.yoctoproject.o=
rg/wiki/Full_Pass_Test_Report_for_Yocto_1.4_M6_RC1_201304113_Build"><span s=
tyle=3D"color:#3366BB;text-decoration:none">here</span></a></b>&nbsp;<o:p><=
/o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0" style=3D"bac=
kground:white">
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
n style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quot;se=
rif&quot;">Testing Summary Report<o:p></o:p></span></b></p>
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
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Test Plan<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Environment<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Passed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Other issues<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Failed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Failing bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Blocked<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Blocking bugs<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BitBake: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Ubuntu 12.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Meta-yocto: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Ubuntu 12.04 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">95.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">4.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4099"><span style=3D"color:#5A3696;text-decoration:none">4099</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">OE-Core: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Ubuntu 12.04 X86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">92.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4313"><span style=3D"color:#5A3696;text-decoration:none">4313</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">7.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4314"><span style=3D"color:#5A3696;text-decoration:none">4314</span></a>=
&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3453">=
<span style=3D"color:#5A3696;text-decoration:none">3453</span></a>&nbsp;<a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4310"><span sty=
le=3D"color:#5A3696;text-decoration:none">4310</span></a><o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Hob: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Ubuntu 12.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">97.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D2618"><span style=3D"color:#5A3696;text-decoration:none">2618</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4244"><span style=3D"color:#5A3696;text-decoration:none">4244</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">98.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4244"><span style=3D"color:#5A3696;text-decoration:none">4244</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">qemux86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Emenlow<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">96.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Atom PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">97.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">P1022ds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">4.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4268"><span style=3D"color:#5A3696;text-decoration:none">4268</span></a>=
&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3837">=
<span style=3D"color:#5A3696;text-decoration:none">3837</span></a><o:p></o:=
p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">95.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3837"><span style=3D"color:#5A3696;text-decoration:none">3837</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Routerstationpro<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4269"><span style=3D"color:#5A3696;text-decoration:none">4269</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">95.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4269"><span style=3D"color:#5A3696;text-decoration:none">4269</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4269"><span style=3D"color:#5A3696;text-decoration:none">4269</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">95.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4269"><span style=3D"color:#5A3696;text-decoration:none">4269</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Crownbay-noemgd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">97.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Fish River Island 2 (FRI2)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">96.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Sugarbay<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">96.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Jasperforest<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">6.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">3.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">90.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BSP/QEMU: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">NUC(Next Unit of Computing)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">95.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Runtime: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Multiple Environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">21.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">7.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">71.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Build Appliance: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">VMWare Player on Ubuntu<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Ubuntu 12.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Fedora 18 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Eclipse Plugin: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Fedora 17 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">96.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4272"><span style=3D"color:#5A3696;text-decoration:none">4272</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">3.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4270"><span style=3D"color:#5A3696;text-decoration:none">4270</span></a>=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"8" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Total: 25</span></b><span style=3D"font-size:9.5pt;font-f=
amily:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p>
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
n style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quot;se=
rif&quot;">Test Case Status Report<o:p></o:p></span></b></p>
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
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Status<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Count<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">BLOCKED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">668<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">18<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">IDLE<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">6<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">628<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Total: 1320</span></b><span style=3D"font-size:9.5pt;font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></=
p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt;font-family:&quot;Tim=
es New Roman&quot;,&quot;serif&quot;"><img border=3D"0" width=3D"432" heigh=
t=3D"120" id=3D"Picture_x0020_11" src=3D"cid:image001.png@01CE3B7F.DBF190D0=
" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;chs=3D432x120&amp;=
chd=3Dt:&amp;chd=3Dt:668,18,6,628&amp;chco=3DFFFF66|FF9933|990066|00FF00&am=
p;chl=3DBLOCKED(668)&#43;51%25|FAILED(18)&#43;1%25|IDLE(6)&#43;0%25|PASSED(=
628)&#43;48%25"></span><span style=3D"font-size:9.5pt;font-family:&quot;Tim=
es New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;;display:none"><o:p>&nbsp;</o:p></span=
></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
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
se;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">ID<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Priority<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Status<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Resolution<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Test Case<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Description<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Version<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Target Milestone<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Age (days)<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D2618"><span style=3D"color:#5A3696;text-decoration:none">2618</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D114"><span style=3D"color:#5A3696;text-decoration:none">114</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">[Hob2] Incorrect total image size in &quot;View Package&quot=
; page<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4 M6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">297<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3453"><span style=3D"color:#5A3696;text-decoration:none">3453</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D280"><span style=3D"color:#5A3696;text-decoration:none">280</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Build fails when building multilib with ipk packaging<o:p></=
o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">146<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3837"><span style=3D"color:#5A3696;text-decoration:none">3837</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">DUPLICATE<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D191"><span style=3D"color:#5A3696;text-decoration:none">191</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">[p1022ds] System can not boot<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4 M6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">66<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4099"><span style=3D"color:#5A3696;text-decoration:none">4099</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D319"><span style=3D"color:#5A3696;text-decoration:none">319</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Crosstap script check fails<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4 M6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">17<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4229"><span style=3D"color:#5A3696;text-decoration:none">4229</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">VERIFIED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D191"><span style=3D"color:#5A3696;text-decoration:none">191</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">can not install image from USB<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4 M6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">3<span style=3D"color:#236EDE">&nbsp;(Recent)</span><o:p></o=
:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4244"><span style=3D"color:#5A3696;text-decoration:none">4244</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D191"><span style=3D"color:#5A3696;text-decoration:none">191</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">[Bealgeboard xM] Kernel networking broken/missing<o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4 M6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#FF4000">NEW</span><span style=3D"font-size:9.5pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p=
>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4268"><span style=3D"color:#5A3696;text-decoration:none">4268</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">High<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D439"><span style=3D"color:#5A3696;text-decoration:none">439</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">[Autobuilder] No sato-sdk image in p1022ds publishing direct=
ory<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4 M6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#FF4000">NEW</span><span style=3D"font-size:9.5pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p=
>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4269"><span style=3D"color:#5A3696;text-decoration:none">4269</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">High<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D191"><span style=3D"color:#5A3696;text-decoration:none">191</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">routerstation/mpc8315e: can not boot with 3.4 kernel<o:p></o=
:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4 M6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#FF4000">NEW</span><span style=3D"font-size:9.5pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p=
>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4270"><span style=3D"color:#5A3696;text-decoration:none">4270</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D33"><span style=3D"color:#5A3696;text-decoration:none">33</span=
></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">streaming stap scripts freeze Eclipse when ran from the Syst=
em Tap plugin<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4 M6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#FF4000">NEW</span><span style=3D"font-size:9.5pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p=
>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4272"><span style=3D"color:#5A3696;text-decoration:none">4272</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">INVALID<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D145"><span style=3D"color:#5A3696;text-decoration:none">145</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">cannot create bitbake commander project<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#FF4000">NEW</span><span style=3D"font-size:9.5pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p=
>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4310"><span style=3D"color:#5A3696;text-decoration:none">4310</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D297"><span style=3D"color:#5A3696;text-decoration:none">297</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">do_dumpdata_create_diff_gz fails for core-image-sato-qemux86=
-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.5 M6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#FF4000">NEW</span><span style=3D"font-size:9.5pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p=
>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4313"><span style=3D"color:#5A3696;text-decoration:none">4313</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D295"><span style=3D"color:#5A3696;text-decoration:none">295</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">buildhistory-diff should give coherent message with bad argu=
ments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#FF4000">NEW</span><span style=3D"font-size:9.5pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p=
>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4314"><span style=3D"color:#5A3696;text-decoration:none">4314</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D276"><span style=3D"color:#5A3696;text-decoration:none">276</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">libcap do_patch fails for archive work directory and export =
source package with 'tar'<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4 M6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:#FF4000">NEW</span><span style=3D"font-size:9.5pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p=
>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Total: 13</span></b><span style=3D"font-size:9.5pt;font-f=
amily:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">If you have any questions or concerns, please contac=
t us by replying to this email.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Stoicescu Cornel<span style=3D"color:#1F497D">iu</sp=
an><o:p></o:p></p>
<p class=3D"MsoNormal">Romania Yocto QA<o:p></o:p></p>
</div>
</body>
</html>

--_000_33115ABC4887814E8A92A08FBC93416B0979A2A3IRSMSX103gercor_--

--_004_33115ABC4887814E8A92A08FBC93416B0979A2A3IRSMSX103gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=11827;
	creation-date="Wed, 17 Apr 2013 12:30:32 GMT";
	modification-date="Wed, 17 Apr 2013 12:30:32 GMT"
Content-ID: <image001.png@01CE3B7F.DBF190D0>
Content-Transfer-Encoding: base64

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
AxHDMKzT/wcQuiPTRGnKSQAAAABJRU5ErkJggg==

--_004_33115ABC4887814E8A92A08FBC93416B0979A2A3IRSMSX103gercor_--
