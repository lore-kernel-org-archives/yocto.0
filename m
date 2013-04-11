Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8837E014AD
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 05:38:37 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Apr 2013 05:38:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,454,1363158000"; 
	d="png'150?scan'150,208,217,150";a="317695215"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 11 Apr 2013 05:38:32 -0700
Received: from irsmsx105.ger.corp.intel.com (163.33.3.28) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 11 Apr 2013 13:38:31 +0100
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.198]) by
	IRSMSX105.ger.corp.intel.com ([169.254.7.14]) with mapi id
	14.01.0355.002; Thu, 11 Apr 2013 13:38:31 +0100
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Full Pass Test Report for Yocto 1.4 M5 RC3 2013-04-03-2	Build
Thread-Index: Ac42sM6ncLCMQUwZRiSte1SGE+q58Q==
Date: Thu, 11 Apr 2013 12:38:30 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B09799771@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
Subject: Full Pass Test Report for Yocto 1.4 M5 RC3 2013-04-03-2	Build
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
X-List-Received-Date: Thu, 11 Apr 2013 12:38:43 -0000
X-Groupsio-MsgNum: 13102
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_33115ABC4887814E8A92A08FBC93416B09799771IRSMSX103gercor_";
	type="multipart/alternative"

--_004_33115ABC4887814E8A92A08FBC93416B09799771IRSMSX103gercor_
Content-Type: multipart/alternative;
	boundary="_000_33115ABC4887814E8A92A08FBC93416B09799771IRSMSX103gercor_"

--_000_33115ABC4887814E8A92A08FBC93416B09799771IRSMSX103gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the Full Pass test report for Yocto 1.4 M5 RC3 https://wiki.yoctopr=
oject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4_M5_RC3_201304032_Build
This results have also been added to https://wiki.yoctoproject.org/wiki/Yoc=
to_1.4_Milestone_Test_Report#Yocto_1.4_M5_RC3_Build_Test_Report and https:/=
/wiki.yoctoproject.org/wiki/Performance_Test

Yocto 1.4 M5 RC3 Build Test Report
Testing data
Test type: Full Pass Post-release
Branch: master
Milestone: 1.4 M5
Build name: 1.4 M5 RC3
poky commit: fe336b149552b1f4f24d979c40302653298b98cc
poky commit date: Wed Apr 3 05:11:50 2013 +0000
meta-intel commit: 3de2325133eb581c5c8d66133821ea5a801cf8ae
Eclipse Plugin commit: 5e20d3c32072ddd91dceb8b2b793ef13f25b915e
Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nigh=
tly/20130403-2

Environments used for testing: Ubuntu 12.04 x86-64, Ubuntu 12.10 x86-64, Fe=
dora 17, Fedora 18, OpenSUSE 12.2 x86-64
Distribution Testing was performed on: Ubuntu 12.04, Ubuntu 12.10, Fedora 1=
7, Fedora 18, OpenSUse 12.1, OpenSuse 12.2, CentOS 6.3

To get the full report click here<https://wiki.yoctoproject.org/wiki/Full_P=
ass_Test_Report_for_Yocto_1.4_M5_RC3_201304032_Build>
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

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

OE-Core: master branch

Multiple environments

90.9%

none

9.1%

3453<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3453> 2918<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D2918>

0.0%

none

Meta-yocto: master branch

Ubuntu 12.04 x86-64

94.7%

none

5.3%

4099<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4099>

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

qemuppc

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

Emenlow

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

Beagleboard

97.1%

none

2.9%

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936> 3937<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3937>

0.0%

none

BSP/QEMU: master branch

NUC(Next Unit of Computing)

98.6%

none

1.4%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

0.0%

none

BSP/QEMU: master branch

P1022ds

2.3%

none

2.3%

3837<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3837>

95.5%

3837<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3837>

BSP/QEMU: master branch

MPC8315e-rdb

97.9%

none

2.1%

3935<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3935>

0.0%

none

BSP/QEMU: master branch

Routerstationpro

2.2%

none

2.2%

4220<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4220>

95.6%

4220<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4220> 3935<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3935>

BSP/QEMU: master branch

qemumips

85.7%

4236<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4236>

2.0%

4052<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4052>

12.2%

4052<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4052>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

Crownbay-noemgd

98.6%

none

1.4%

4237<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4237>

0.0%

none

BSP/QEMU: master branch

Sugarbay

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

Fish River Island 2 (FRI2)

93.9%

none

3.7%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646> 2989<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D2989> 2415<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D2415>

2.4%

2415<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

Atom PC

1.5%

4164<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4164>

1.5%

3960<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3960>

97.1%

3960<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3960>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

qemux86

100.0%

none

0.0%

none

0.0%

none

BSP/QEMU: master branch

Jasperforest

100.0%

none

0.0%

none

0.0%

none

Runtime: master branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

Build Appliance: master branch

VMWare Player on Ubuntu

25.0%

none

25.0%

4203<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4203>

50.0%

4200<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4200> 4203<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4203>

ADT: master branch

Fedora 18 x86_64

100.0%

none

0.0%

none

0.0%

none

ADT: master branch

Ubuntu 12.04 X86_64

100.0%

none

0.0%

none

0.0%

none

ADT: master branch

Fedora 17 i686

71.6%

none

5.2%

4219<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4219>

23.3%

4219<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4219>

ADT: master branch

openSUSE 12.2 x86_64

100.0%

none

0.0%

none

0.0%

none

Eclipse Plugin: master branch

Fedora 18 x86_64

96.7%

3747<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3747> 4206<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4206>

3.3%

3672<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3672>

0.0%

none

Total: 29



Test Case Status Report

Status

Count

BLOCKED

188

ERROR

1

FAILED

25

PASSED

1413

Total: 1627


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:188,1,25,1413&chco=3DFFFF66|FF0000|FF9933|00FF00&chl=3DBLOCKED(188)+12%25|=
ERROR(1)+0%25|FAILED(25)+2%25|PASSED(1413)+87%25]


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

2415<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415>

Medium

NEW

253<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D253>

connman doesn't provide a 3g configuration utility

1.2

1.5

334

2618<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2618>

Medium

REOPENED

114<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D114>

[Hob2] Incorrect total image size in "View Package" page

unspecified

1.4 M6

289

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

Medium

ACCEPTED

212<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D212>

Windows switching failure

1.2

1.4

285

2918<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2918>

Medium+

RESOLVED

FIXED

290<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D290>

lib64-core-image-sato-sdk fails due to do_rootfs issue

1.3

1.4 M6

238

2989<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2989>

Low

ACCEPTED

215<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D215>

[FRI2] dmesg PowerButton error

1.3

1.4

224

3453<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3453>

Medium

NEW

280<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D280>

Build fails when building multilib with ipk packaging

1.3

1.4

138

3672<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3672>

Medium+

REOPENED

33<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D33>

Adopt crosstap script for systemtap

1.4

1.4 M3

90

3747<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3747>

Medium

RESOLVED

FIXED

157<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D157>

an error appear when selecting kernel for yocto-bsp 1.4

1.4

1.4

76

3837<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3837>

Medium+

NEW

191<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D191>

[p1022ds] System can not boot

1.4

1.4 M6

58

3935<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3935>

Medium

NEEDINFO

215<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D215>

beagleboard/routerstation/mpc8315e: abnormal filesystem-related messages in=
 dmesg when plugging a usb stick

1.4

1.4 M6

36

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

215<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D215>

[beagleobard xM] Some error message with usbhs_omap in dmesg

1.4

1.4 M6

36

3937<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3937>

Medium

ACCEPTED

567<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D567>

[beagleobard xM] Watchdog doesn't work

1.4

1.4 M6

36

3960<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3960>

Medium

RESOLVED

FIXED

191<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D191>

X fails to start on atom-pc image

1.4

1.4 M5

34

4045<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4045>

Medium

NEW

299<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D299>

sstate-cache-management.sh test case needs update

1.4

1.4 M6

16

4052<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4052>

Medium+

RESOLVED

FIXED

213<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D213>

X can not startup on qemumips

1.4

1.4 M6

15

4099<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4099>

Medium

ACCEPTED

319<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D319>

Crosstap script check fails

1.4

1.4 M6

9

4164<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4164>

Medium+

RESOLVED

FIXED

197<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D197>

usb mouse and keyboard don't work at liveboot on atom-pc

unspecified

1.4 M6

2 (Recent)

4200<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4200>

High

RESOLVED

WORKSFORME

340<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D340>

Hob under Build Appliance reports that tmp/work directory is not created in=
 build dir

unspecified

1.4 M6

NEW

4203<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4203>

High

IN PROGRESS REVIEW

323<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D323>

1.4 beta build appliance fails to launch Hob automatically

1.4

1.4 M6

NEW

4206<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4206>

Medium

RESOLVED

FIXED

157<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D157>

yocto-bsp "Browse" build location button does not work

1.4

1.4

NEW

4219<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4219>

Medium+

RESOLVED

FIXED

408<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D408>

[Autobuilder] The adt-ipk/i686-nativesdk package index wasn't created

1.4

1.4 M6

NEW

4220<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4220>

Medium+

IN PROGRESS REVIEW

191<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D191>

[Routerstation] The system can not boot via NFS

1.4

1.4 M6

NEW

4236<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4236>

Medium

NEW

715<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D715>

smart command run very slow on qemumips

1.4

1.5

NEW

4237<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4237>

Medium

NEW

227<https://bugzilla.yoctoproject.org/tr_show_case.cgi?case_id=3D227>

[crownbay] offline mode does not work using connman-properties

1.4

1.4 M6

NEW

Total: 24




If you have any questions or concerns, please contact us by replying to thi=
s email.

Regards,
Stoicescu Cornel
Romania Yocto QA

--_000_33115ABC4887814E8A92A08FBC93416B09799771IRSMSX103gercor_
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
<p class=3D"MsoNormal">Here is the Full Pass test report for Yocto 1.4 M5 R=
C3 <a href=3D"https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Report_for_=
Yocto_1.4_M5_RC3_201304032_Build">
https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4_M5_R=
C3_201304032_Build</a><o:p></o:p></p>
<p class=3D"MsoNormal">This result<span style=3D"color:#1F497D">s</span> ha=
<span style=3D"color:#1F497D">ve</span> also been added to
<a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.4_Milestone_Test_Repo=
rt#Yocto_1.4_M5_RC3_Build_Test_Report">
https://wiki.yoctoproject.org/wiki/Yocto_1.4_Milestone_Test_Report#Yocto_1.=
4_M5_RC3_Build_Test_Report</a> and
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test">https://wik=
i.yoctoproject.org/wiki/Performance_Test</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:.05in;line-height:14.3pt;back=
ground:white">
<b><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:black">Yocto 1.4 M5 RC3 Build Test Report<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;m=
argin-bottom:6.0pt;margin-left:0in;line-height:14.3pt;background:white">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black">Testing data<o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Test type: Full Pass Post-release<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Branch: master<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Milestone: 1.4 M5<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Build name: 1.4 M5 RC3<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">poky commit: fe336b149552b1f4f24d979c40302653298b98cc<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">poky commit date: Wed Apr 3 05:11:50 2013 &#43;0000<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">meta-intel commit: 3de2325133eb581c5c8d66133821ea5a801cf8ae<o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Eclipse Plugin commit: 5e20d3c32072ddd91dceb8b2b793ef13f25b915e<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Autobuilder images repository: http://autobuilder.yoctoproject.org/pu=
b/nightly/20130403-2<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Environments used for testing: Ubuntu 12.04 x86-64, Ubuntu 12.10 x86-=
64, Fedora 17, Fedora 18, OpenSUSE 12.2 x86-64<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.2pt;background:#F9F9F9;borde=
r:none;padding:0in">
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:b=
lack">Distribution Testing was performed on: Ubuntu 12.04, Ubuntu 12.10, Fe=
dora 17, Fedora 18, OpenSUse 12.1, OpenSuse 12.2, CentOS 6.3
<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:4.8pt;margin-right:0in;m=
argin-bottom:12.0pt;margin-left:0in;line-height:14.3pt;background:white">
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black"><br>
<b>To get the full report click&nbsp;<a href=3D"https://wiki.yoctoproject.o=
rg/wiki/Full_Pass_Test_Report_for_Yocto_1.4_M5_RC3_201304032_Build"><span s=
tyle=3D"color:#3366BB;text-decoration:none">here</span></a></b>&nbsp;<o:p><=
/o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black">Testing Summary Report<o:p></o:p></span></b></p>
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
t;serif&quot;">Multiple Environments<o:p></o:p></span></p>
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
t;serif&quot;">OE-Core: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Multiple environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">90.9%<o:p></o:p></span></p>
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
t;serif&quot;">9.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3453"><span style=3D"color:#5A3696;text-decoration:none">3453</span></a>=
&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2918">=
<span style=3D"color:#5A3696;text-decoration:none">2918</span></a><o:p></o:=
p></span></p>
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
t;serif&quot;">Meta-yocto: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
t;serif&quot;">94.7%<o:p></o:p></span></p>
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
t;serif&quot;">5.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4099"><span style=3D"color:#5A3696;text-decoration:none">4099</span></a>=
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
t;serif&quot;">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
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
t;serif&quot;">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3936"><span style=3D"color:#5A3696;text-decoration:none">3936</span></a>=
&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3937">=
<span style=3D"color:#5A3696;text-decoration:none">3937</span></a><o:p></o:=
p></span></p>
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
t;serif&quot;">NUC(Next Unit of Computing)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">98.6%<o:p></o:p></span></p>
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
t;serif&quot;">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D2646"><span style=3D"color:#5A3696;text-decoration:none">2646</span></a>=
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
t;serif&quot;">P1022ds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.3%<o:p></o:p></span></p>
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
t;serif&quot;">2.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3837"><span style=3D"color:#5A3696;text-decoration:none">3837</span></a>=
<o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3837"><span style=3D"color:#5A3696;text-decoration:none">3837</span></a>=
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">97.9%<o:p></o:p></span></p>
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
=3D3935"><span style=3D"color:#5A3696;text-decoration:none">3935</span></a>=
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
=3D4220"><span style=3D"color:#5A3696;text-decoration:none">4220</span></a>=
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
=3D4220"><span style=3D"color:#5A3696;text-decoration:none">4220</span></a>=
&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3935">=
<span style=3D"color:#5A3696;text-decoration:none">3935</span></a><o:p></o:=
p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:black">85.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4236"><span style=3D"color:#5A3696;text-decoration:none">4236</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4052"><span style=3D"color:#5A3696;text-decoration:none">4052</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">12.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4052"><span style=3D"color:#5A3696;text-decoration:none">4052</span></a>=
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
t;serif&quot;">Crownbay-noemgd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">98.6%<o:p></o:p></span></p>
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
t;serif&quot;">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4237"><span style=3D"color:#5A3696;text-decoration:none">4237</span></a>=
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
t;serif&quot;">Fish River Island 2 (FRI2)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">93.9%<o:p></o:p></span></p>
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
t;serif&quot;">3.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D2646"><span style=3D"color:#5A3696;text-decoration:none">2646</span></a>=
&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2989">=
<span style=3D"color:#5A3696;text-decoration:none">2989</span></a>&nbsp;<a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415"><span sty=
le=3D"color:#5A3696;text-decoration:none">2415</span></a><o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D2415"><span style=3D"color:#5A3696;text-decoration:none">2415</span></a>=
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
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4164"><span style=3D"color:#5A3696;text-decoration:none">4164</span></a>=
<o:p></o:p></span></p>
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
=3D3960"><span style=3D"color:#5A3696;text-decoration:none">3960</span></a>=
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
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3960"><span style=3D"color:#5A3696;text-decoration:none">3960</span></a>=
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
t;serif&quot;">Jasperforest<o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">25.0%<o:p></o:p></span></p>
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
t;serif&quot;">25.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4203"><span style=3D"color:#5A3696;text-decoration:none">4203</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:black">50.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4200"><span style=3D"color:#5A3696;text-decoration:none">4200</span></a>=
&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4203">=
<span style=3D"color:#5A3696;text-decoration:none">4203</span></a><o:p></o:=
p></span></p>
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
t;serif&quot;">Fedora 18 x86_64<o:p></o:p></span></p>
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
t;serif&quot;">Ubuntu 12.04 X86_64<o:p></o:p></span></p>
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
t;serif&quot;">Fedora 17 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;;color:black">71.6%<o:p></o:p></span></p>
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
t;serif&quot;">5.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4219"><span style=3D"color:#5A3696;text-decoration:none">4219</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">23.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4219"><span style=3D"color:#5A3696;text-decoration:none">4219</span></a>=
<o:p></o:p></span></p>
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
t;serif&quot;">openSUSE 12.2 x86_64<o:p></o:p></span></p>
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
t;serif&quot;">Fedora 18 x86_64<o:p></o:p></span></p>
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
=3D3747"><span style=3D"color:#5A3696;text-decoration:none">3747</span></a>=
&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4206">=
<span style=3D"color:#5A3696;text-decoration:none">4206</span></a><o:p></o:=
p></span></p>
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
=3D3672"><span style=3D"color:#5A3696;text-decoration:none">3672</span></a>=
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
</tr>
<tr>
<td colspan=3D"8" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Total: 29</span></b><span style=3D"font-size:9.5pt;font-f=
amily:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
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
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:14.3pt">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black">Test Case Status Report<o:p></o:p></span></b></p>
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
t;serif&quot;">188<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">ERROR<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">25<o:p></o:p></span></p>
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
t;serif&quot;">1413<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Total: 1627</span></b><span style=3D"font-size:9.5pt;font=
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
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><=
img border=3D"0" width=3D"432" height=3D"120" id=3D"Picture_x0020_11" src=
=3D"cid:image001.png@01CE36CA.91486EA0" alt=3D"http://chart.apis.google.com=
/chart?cht=3Dp3&amp;chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:188,1,25,1413&am=
p;chco=3DFFFF66|FF0000|FF9933|00FF00&amp;chl=3DBLOCKED(188)&#43;12%25|ERROR=
(1)&#43;0%25|FAILED(25)&#43;2%25|PASSED(1413)&#43;87%25"></span><span style=
=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p></o:p></span></p>
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
=3D2415"><span style=3D"color:#5A3696;text-decoration:none">2415</span></a>=
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
i?case_id=3D253"><span style=3D"color:#5A3696;text-decoration:none">253</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">connman doesn't provide a 3g configuration utility<o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">334<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D2618"><span style=3D"color:#5A3696;text-decoration:none">2618</span></a>=
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
t;serif&quot;">REOPENED<o:p></o:p></span></p>
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
i?case_id=3D114"><span style=3D"color:#5A3696;text-decoration:none">114</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">[Hob2] Incorrect total image size in &quot;View Package&quot=
; page<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">unspecified<o:p></o:p></span></p>
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
t;serif&quot;">289<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D2646"><span style=3D"color:#5A3696;text-decoration:none">2646</span></a>=
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
i?case_id=3D212"><span style=3D"color:#5A3696;text-decoration:none">212</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Windows switching failure<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.2<o:p></o:p></span></p>
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
t;serif&quot;">285<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D2918"><span style=3D"color:#5A3696;text-decoration:none">2918</span></a>=
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
i?case_id=3D290"><span style=3D"color:#5A3696;text-decoration:none">290</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">lib64-core-image-sato-sdk fails due to do_rootfs issue<o:p><=
/o:p></span></p>
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
t;serif&quot;">1.4 M6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">238<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D2989"><span style=3D"color:#5A3696;text-decoration:none">2989</span></a>=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Low<o:p></o:p></span></p>
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
i?case_id=3D215"><span style=3D"color:#5A3696;text-decoration:none">215</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">[FRI2] dmesg PowerButton error<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.3<o:p></o:p></span></p>
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
t;serif&quot;">224<o:p></o:p></span></p>
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
t;serif&quot;">138<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3672"><span style=3D"color:#5A3696;text-decoration:none">3672</span></a>=
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
t;serif&quot;">REOPENED<o:p></o:p></span></p>
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
t;serif&quot;">Adopt crosstap script for systemtap<o:p></o:p></span></p>
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
t;serif&quot;">1.4 M3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">90<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3747"><span style=3D"color:#5A3696;text-decoration:none">3747</span></a>=
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
i?case_id=3D157"><span style=3D"color:#5A3696;text-decoration:none">157</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">an error appear when selecting kernel for yocto-bsp 1.4<o:p>=
</o:p></span></p>
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
t;serif&quot;">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">76<o:p></o:p></span></p>
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
t;serif&quot;">58<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3935"><span style=3D"color:#5A3696;text-decoration:none">3935</span></a>=
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
t;serif&quot;">NEEDINFO<o:p></o:p></span></p>
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
i?case_id=3D215"><span style=3D"color:#5A3696;text-decoration:none">215</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">beagleboard/routerstation/mpc8315e: abnormal filesystem-rela=
ted messages in dmesg when plugging a usb stick<o:p></o:p></span></p>
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
t;serif&quot;">36<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3936"><span style=3D"color:#5A3696;text-decoration:none">3936</span></a>=
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
i?case_id=3D215"><span style=3D"color:#5A3696;text-decoration:none">215</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">[beagleobard xM] Some error message with usbhs_omap in dmesg=
<o:p></o:p></span></p>
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
t;serif&quot;">36<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3937"><span style=3D"color:#5A3696;text-decoration:none">3937</span></a>=
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
t;serif&quot;">ACCEPTED<o:p></o:p></span></p>
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
i?case_id=3D567"><span style=3D"color:#5A3696;text-decoration:none">567</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">[beagleobard xM] Watchdog doesn't work<o:p></o:p></span></p>
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
t;serif&quot;">36<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3960"><span style=3D"color:#5A3696;text-decoration:none">3960</span></a>=
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
i?case_id=3D191"><span style=3D"color:#5A3696;text-decoration:none">191</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">X fails to start on atom-pc image<o:p></o:p></span></p>
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
t;serif&quot;">1.4 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">34<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4045"><span style=3D"color:#5A3696;text-decoration:none">4045</span></a>=
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
i?case_id=3D299"><span style=3D"color:#5A3696;text-decoration:none">299</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">sstate-cache-management.sh test case needs update<o:p></o:p>=
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
t;serif&quot;">16<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4052"><span style=3D"color:#5A3696;text-decoration:none">4052</span></a>=
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
t;serif&quot;">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D213"><span style=3D"color:#5A3696;text-decoration:none">213</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">X can not startup on qemumips<o:p></o:p></span></p>
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
t;serif&quot;">15<o:p></o:p></span></p>
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
t;serif&quot;">ACCEPTED<o:p></o:p></span></p>
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
t;serif&quot;">9<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4164"><span style=3D"color:#5A3696;text-decoration:none">4164</span></a>=
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
t;serif&quot;">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D197"><span style=3D"color:#5A3696;text-decoration:none">197</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">usb mouse and keyboard don't work at liveboot on atom-pc<o:p=
></o:p></span></p>
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
t;serif&quot;">2<span style=3D"color:#236EDE">&nbsp;(Recent)</span><o:p></o=
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
=3D4200"><span style=3D"color:#5A3696;text-decoration:none">4200</span></a>=
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
t;serif&quot;">WORKSFORME<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D340"><span style=3D"color:#5A3696;text-decoration:none">340</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">Hob under Build Appliance reports that tmp/work directory is=
 not created in build dir<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">unspecified<o:p></o:p></span></p>
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
=3D4203"><span style=3D"color:#5A3696;text-decoration:none">4203</span></a>=
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
i?case_id=3D323"><span style=3D"color:#5A3696;text-decoration:none">323</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">1.4 beta build appliance fails to launch Hob automatically<o=
:p></o:p></span></p>
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
=3D4206"><span style=3D"color:#5A3696;text-decoration:none">4206</span></a>=
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
i?case_id=3D157"><span style=3D"color:#5A3696;text-decoration:none">157</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">yocto-bsp &quot;Browse&quot; build location button does not =
work<o:p></o:p></span></p>
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
t;serif&quot;">1.4<o:p></o:p></span></p>
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
=3D4219"><span style=3D"color:#5A3696;text-decoration:none">4219</span></a>=
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
t;serif&quot;">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_case.cg=
i?case_id=3D408"><span style=3D"color:#5A3696;text-decoration:none">408</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">[Autobuilder] The adt-ipk/i686-nativesdk package index wasn'=
t created<o:p></o:p></span></p>
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
=3D4220"><span style=3D"color:#5A3696;text-decoration:none">4220</span></a>=
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
i?case_id=3D191"><span style=3D"color:#5A3696;text-decoration:none">191</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">[Routerstation] The system can not boot via NFS<o:p></o:p></=
span></p>
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
=3D4236"><span style=3D"color:#5A3696;text-decoration:none">4236</span></a>=
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
i?case_id=3D715"><span style=3D"color:#5A3696;text-decoration:none">715</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">smart command run very slow on qemumips<o:p></o:p></span></p=
>
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
t;serif&quot;">1.5<o:p></o:p></span></p>
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
=3D4237"><span style=3D"color:#5A3696;text-decoration:none">4237</span></a>=
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
i?case_id=3D227"><span style=3D"color:#5A3696;text-decoration:none">227</sp=
an></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quo=
t;serif&quot;">[crownbay] offline mode does not work using connman-properti=
es<o:p></o:p></span></p>
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
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;">Total: 24</span></b><span style=3D"font-size:9.5pt;font-f=
amily:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:#1F497D"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">If you have any questions or concerns, please contac=
t us by replying to this email.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Stoicescu Cornel<o:p></o:p></p>
<p class=3D"MsoNormal">Romania Yocto QA<o:p></o:p></p>
</div>
</body>
</html>

--_000_33115ABC4887814E8A92A08FBC93416B09799771IRSMSX103gercor_--

--_004_33115ABC4887814E8A92A08FBC93416B09799771IRSMSX103gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=11862;
	creation-date="Thu, 11 Apr 2013 12:38:30 GMT";
	modification-date="Thu, 11 Apr 2013 12:38:30 GMT"
Content-ID: <image001.png@01CE36CA.91486EA0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAbAAAAB4CAIAAAAc4DAQAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO2deXwUVbr3n6quXrN00kkv2cgGiSEBAkmAsIR9lV02FXBBdF6Y0YE7OM6MC8xcR+HqfV8d
vZ+rwCAMAmrQAVGQTdaEJITFBLIQsm/dna33pZbz/lGxaZMACUK6E873w4fPqVOnTj1V3f3Lc7bn
EAghwGAwGAwA6WkDMBgMxlvAgojBYDDtYEHEYDCYdrAgYjAYTDtYEDEYDKYdLIgYDAbTDhZEDAaD
aQcLIgaDwbSDBRGDwWDawYKIwWAw7WBBxGAwmHawIGIwGEw7WBAxmL4E9zOdTyGEOsdq4TjOaDR2
Lmw0Gt0rQQhxbrjq6XDY4Xb3/xgPubb7hvK0ARgMpgesXbs2MDCQT4eEhLzwwgsymYw/3LJli8lk
evvtt/lDlmX37NlTUFAQGhra1NS0aNGi1NRUALh48eI333wTGBhos9liY2NXrFhBkuRnn31WWFgo
Eon4a2Uy2RtvvFFQUPDpp5/6+voCgFQqTU9PnzZtGl+gtbX1+PHjS5cu5Q8zMzOnT5/u7+/vstNm
s3366aevvPKKKycrKyswMDAhIQEAaJo+f/785cuX1Wr13Llz5XL54cOHp0+fLhaL3R+WZdnvv/++
uro6NTU1NTVVIBB88MEHVqvVVWDp0qXh4eH5+fkajSYmJobP/OqrrxYvXkwQxH28XiyIGEwf429/
+xtFURzHvfvuu998883TTz8NAFqt1mg0ymSyW7duxcbGAkBubq7ZbN68ebOPj4/BYNi8eXNSUhJB
EJmZmevXrw8LC+M47pNPPrl48eKYMWMAYNGiRWPHju1wr7i4uN/97ncAUF9fv2PHDoqiJk2aBACH
Dx/mxbGuri4nJ+fkyZOTJ092v/Dzzz8vLS3l00ajMSsr68SJE8uXL+dzTp06VV9fv2rVqpMnT+7Y
sWPDhg0jR47MysriK3dx9uzZ5ubmxYsXf/PNN5WVlcuWLXvqqad4x9bhcOzYsUOj0Rw6dEihUOTk
5JSUlMyaNevatWsajeb+1BBwkxmD6aOQJDllyhSz2cwf5ubmjhw5MiUlJTc3l8+x2Wx2u93HxwcA
5HL5b37zG47jHA6H0+nkPUGSJJcsWRIZGdmd24WGhi5YsCAnJwcA7HZ7S0uLRqMBAKvVGhAQ4Ofn
5174woULgYGBJNkuL3a7XSQSBQcHuwrYbLa5c+cqlcrp06frdDoAUKvVdXV1HRrOubm5KSkparV6
8uTJfDGlUqlWq9VqdW5u7uzZs318fCorKydPnvz44483NjYihLKzszvLevfBHiKm7/HBBx8UFRV5
2oreY86cOXPmzHEdFhYWCgSC6urq48ePP//883xmbm7uunXrBALB1q1bly1bRpJkampqfn7+m2++
OWTIkISEhMTERN5vmjhx4rvvvjt48ODHHnts2LBhLp3Kz89vbGzk00qlMiMjo4MZMTExDQ0NCKGi
oiJeDQFg0KBBgwYNOnv2rKuYTqfLzs5ev3796dOn+RyVSjV58uSamhpXmQULFgDAsWPHfvrpJ1cz
XCqVFhQUDB061FVs6dKlu3btunHjxuXLl11PCgA1NTX19fWLFy8GgJSUlG3btjU1Na1YseLChQuj
R492CfF9gAUR0/eora3dunWre4/VI0VhYSFJkiKRaN26dYMGDQKAiooKhmHa2toAQCAQ3LhxIykp
yd/ff+PGjdXV1cXFxd9++21mZuarr74qk8kWLVo0ZcqUoqKiwsLCzMzM5557jtegoKAgl7fYwePj
kUqlvAen1+vDwsK6tI1l2d27d69cuVIgENzzQaRSqasDFACCg4NramrcBbGwsJCiKI1GExoaWl5e
Hh8fz+f/+OOPM2fO5NOTJ08eNWoURVEkSR49evTFF18sLi5uamoaPXo0RfVY37AgYh4KjdBYAzV1
UGcAgw50DdCgA10TNLVASxu0OcHJF2OA6XChBCQccCSQIhABQAAEBEFQMASrQR0CISpQSY1SBhjK
/9H96i5fvrzDTz0nJ0epVF6+fBkA+OZkUlJSVlZWQkLCgAEDBgwYMH369P/93//NysqKj49vbW0d
OnTo6NGjR48efenSpe+//57XoKioKH7U5U6UlJSoVCqCIJxOJz/S0pmysjKdTrd//34AYFn2gw8+
ePbZZ+Vyeeeq4uPjx48fP27cuNdee23IkCEqlUomk7kPiDudzjNnzvzXf/0XQRDDhg3761//Om3a
NIqiaJqurq5etWqVqyTfLXDkyJEpU6ZUVlaeOXNm5MiR77333muvvdajFwtYEDG/kmZovgk3b8CN
fMgvg7JaqLWAhdc7Djgb2Gxgo4F+ULcTgSiqNioxPDEKoiighCBUgCICIgbCwMEwOBESEyAhAAIe
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
TkSuQmCC

--_004_33115ABC4887814E8A92A08FBC93416B09799771IRSMSX103gercor_--
