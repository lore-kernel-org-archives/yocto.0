Return-Path: <laurentiu.serban@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCB75E0045D
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 03:56:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Oct 2012 03:56:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,606,1344236400"; 
	d="xml'?bin'?scan'72,217,208,48?xlsx'72,217,208,48,72,48?rels'72,217,208,48,72,48";
	a="235478063"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 18 Oct 2012 03:56:07 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.248]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.158]) with mapi id
	14.01.0355.002; Thu, 18 Oct 2012 11:56:02 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Thread-Topic: [yocto] 1.3 RC4 full pass results
Thread-Index: Ac2soEuHDQMR4Oo+TvufLH6xba7QEQACMYxQ///93YD//xLNEA==
Date: Thu, 18 Oct 2012 10:56:02 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC19199C7E@IRSMSX102.ger.corp.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC191988ED@IRSMSX102.ger.corp.intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B1D41C@ORSMSX101.amr.corp.intel.com>
	<CAPhnLPAUn3x8OXGyu-tRx7g-0sML76usZq9KYOUos7uhE8enRw@mail.gmail.com>
In-Reply-To: <CAPhnLPAUn3x8OXGyu-tRx7g-0sML76usZq9KYOUos7uhE8enRw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.3 RC4 full pass results
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
X-List-Received-Date: Thu, 18 Oct 2012 10:56:13 -0000
X-Groupsio-MsgNum: 10155
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC19199C7EIRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC19199C7EIRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC19199C7EIRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC19199C7EIRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable


Hello,
I updated the test reports:

The commit id is c9de24d3f4845251b01e2eab0aeeb7472badc5bb


The following issue are encountered. I also updated with comments from Jess=
ica and Saul:



-          For the BSPs:



o   For qemu x86_64 images - the zypper refresh fails (2694),



-          For core build system:



           o   There are still errors with the do_rootfs fails for lib64-co=
re-image-sato-sdk (2918)



-          For ADT



           o   GL support still available on qemuarm (3287)



Test Result Summary

Component

Target

Status

Comments

Boards

p1022ds

GOOD

Everything runs well

Beagleboard

GOOD

Everything runs well

Routerstationpro

GOOD

Everything runs well

Mpc8315e-rdb

GOOD

Sudoku-savant issue (2878)

eMenlow-sato-sdk

BUGGY

Usb mount fails (2643)

Blacksand-sato-sdk

GOOD

Everything runs well

Sugarbay sato-sdk

GOOD

Everything runs well

Crownbay-emgd-sato-sdk

GOOD

Standby fails (2792), Xorg issue (1258),

FRI2-sato

BUGGY

Blocked (3294)

HuronRiver-sato

GOOD

Everything runs well

Jasperforest-lsb

BUGGY

zypper is not installed in core-image-lsb-sdk (3098)

QEMU




Qemuarm

GOOD

Everything runs well

Qemuppc

GOOD

Everything runs well

Qemumips

GOOD

Everything runs well

qemux86

GOOD

Everything runs well

qemux86-64

BUGGY

Zypper issue (2694)

Core build system

=1B$B!!=1B(B

BUGGY

lib64-core-image-sato-sdk fails due to do_rootfs issue (2918)

HOB

=1B$B!!=1B(B

GOOD

Everything runs well

ADT

=1B$B!!=1B(B

GOOD

GL support still available on qemuarm (3287)

Stress Testing

GOOD

Both Crashme and Helltest on Jasperforest could pass 24 hours stress testin=
g

Distribution Support

GOOD

Everything runs well for Ubuntu 12.04, Ubuntu 12.10 - nightly, OpenSuse 12.=
1, OpenSuse 12.2 RC2, Fedora 17, CentOs 6.3, Fedora 16

Power and Performance

GOOD

one qemux86 sato build on a Core i7 machine costs 88 minutes with the packa=
ges previously fetched.

Compliance

GOOD

Tests on Huron River and BlackSand passed

Build Appliance

GOOD

Everything runs well on VMWare Player (on Ubuntu). The relevant tests were =
performed also for qemu-kvm on Fedora 17 libvirt and
VMWare Workstation.(Ubuntu)



Detailed Test Result for each component

Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

Beagleboard Sato-SDK

42

0

42

0

0

Routerstationpro Sato-SDK

35

0

35

0

0

p1022ds-sato-sdk

37

0

37

0

0

Mpc8315e-rdb Sato-SDK

37

0

37

0

0

eMenlow Sato-sdk

67

0

66

1 (bug 2643)

0

n450 Sato-sdk

67

0

67

0

0

Crownbay-Sato-sdk

65

0

62

2 (1258, 2792)

1 (2792)

FRI2 Sato-sdk

85

0

0

0

            85 (3294)

HuronRiver Sato-sdk

68

0

68

0

0

Sugarbay sato-sdk

68

0

68

0

0

Jasperforest lsb-sdk

34

0

27

7 (3098)

0

Qemuarm Sato

31

0

31

0

0

Qemuarm Sato-SDK

36

0

36

0

0

Qemumips Sato

31

0

31

0

0

Qemumips Sato-SDK

36

0

36

0

0

Qemuppc Sato

31

0

31

0

0

Qemuppc Sato-SDK

36

0

36

0

0

Qemux86-64 Sato

30

0

27

3 (bug 2694)

0

Qemux86-64 Sato-SDK

36

0

32

4 (bug 2694)

0

Qemux86 Sato

30

0

30

0

0

Qemux86 Sato-SDK

36

0

36

0

0

Core build system

74

0

72

2 (2918)

0

HOB

41

0

41

0

0

ADT

54

0

48

6( 3287)

0

Build Appliance

42

0

34

7 (3290)

1 (centos gtk issue)

Total

1149

0

1029

33

87



Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2694 [QEMU-X86_64]zypper refresh fail

Core build system

Bug 2918  lib64-core-image-sato-sdk fails due to do_rootfs issue.

ADT

Bug 3287  GL support still available on qemuarm
Bug 3290 ADT couldn't be installed properly for RC4 because sato sdk for qe=
muarm does not exist


Br,
Laurentiu





-----Original Message-----
From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]
Sent: Thursday, October 18, 2012 12:43 AM
To: Zhang, Jessica
Cc: Serban, Laurentiu; yocto@yoctoproject.org
Subject: Re: [yocto] 1.3 RC4 full pass results



On Wed, Oct 17, 2012 at 1:52 PM, Zhang, Jessica <jessica.zhang@intel.com<ma=
ilto:jessica.zhang@intel.com>> wrote:

>

> As to sato-sdk for qemuarm issue (3290), I think Beth has regenerated it.=
  Can we have a quick check to ensure it=1B$B!G=1B(Bs working now?



Yes, this was due to us needing to regenerate qemuarm. Only the main builde=
r populates the adtrepo. As the images for the first run were incorrectly g=
enerated for qemuarm, they had to be done by hand. This was finished yester=
day and the bug report updated.



-b



>

>

>

> Thanks,

>

> Jessica

>

>

>

> From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.or=
g>

> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Serban, Laurentiu

> Sent: Wednesday, October 17, 2012 12:48 PM

> To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

> Subject: [yocto] 1.3 RC4 full pass results

>

>

>

>

>

> Hello guys,

>

>

>

> Here are the test results for the 1.3 RC4 full pass.

>

> The commit id is:  1b1b83651af33ffcb204031e2790719e3b0b45bb

>

>

>

> For the performance tests: the build for sato x86 took 88 minutes

> (same as for RC3)

>

>

>

> The following issue are encountered. I also updated with comments from Je=
ssica and Saul:

>

> -          For the BSPs:

>

> o   For qemu x86_64 images - the zypper refresh fails (2694),

>

> -          For core build system:

>

> o   There are still errors with the do_rootfs fails for lib64-core-image-=
sato-sdk (2918)

>

> -          For ADT

>

> o   ADT couldn't be installed properly for RC4 because sato sdk for qemua=
rm does not exist (3290)

>

> o   GL support still available on qemuarm (3287)

>

>

>

>

>

>

>

> Test Result Summary

>

> Component

>

> Target

>

> Status

>

> Comments

>

> Boards

>

> p1022ds

>

> GOOD

>

> Everything runs well

>

> Beagleboard

>

> GOOD

>

> Everything runs well

>

> Routerstationpro

>

> GOOD

>

> Everything runs well

>

> Mpc8315e-rdb

>

> GOOD

>

> Sudoku-savant issue (2878)

>

> eMenlow-sato-sdk

>

> BUGGY

>

> Usb mount fails (2643)

>

> Blacksand-sato-sdk

>

> GOOD

>

> Everything runs well

>

> Sugarbay sato-sdk

>

> GOOD

>

> Everything runs well

>

> Crownbay-emgd-sato-sdk

>

> GOOD

>

> Standby fails (2792), Xorg issue (1258),

>

> FRI2-sato

>

> BUGGY

>

> Blocked (3294)

>

> HuronRiver-sato

>

> GOOD

>

> Everything runs well

>

> Jasperforest-lsb

>

> BUGGY

>

> zypper is not installed in core-image-lsb-sdk (3098)

>

> QEMU

>

>

>

>

>

>

>

> Qemuarm

>

> GOOD

>

> Everything runs well

>

> Qemuppc

>

> GOOD

>

> Everything runs well

>

> Qemumips

>

> GOOD

>

> Everything runs well

>

> qemux86

>

> GOOD

>

> Everything runs well

>

> qemux86-64

>

> BUGGY

>

> Zypper issue (2694)

>

> Core build system

>

>

>

> BUGGY

>

> lib64-core-image-sato-sdk fails due to do_rootfs issue (2918)

>

> HOB

>

>

>

> GOOD

>

> Everything runs well

>

> ADT

>

>

>

> BUGGY

>

> ADT couldn't be installed properly for RC4 because sato sdk for

> qemuarm does not exist (3290)

>

> GL support still available on qemuarm (3287)

>

> Stress Testing

>

> GOOD

>

> Both Crashme and Helltest on Jasperforest could pass 24 hours stress

> testing

>

> Distribution Support

>

> GOOD

>

> Everything runs well for Ubuntu 12.04, Ubuntu 12.10 - nightly,

> OpenSuse 12.1, OpenSuse 12.2 RC2, Fedora 17, CentOs 6.3, Fedora 16

>

> Power and Performance

>

> GOOD

>

> one qemux86 sato build on a Core i7 machine costs 88 minutes with the pac=
kages previously fetched.

>

> Compliance

>

> GOOD

>

> Tests on Huron River and BlackSand passed

>

> Build Appliance

>

> GOOD

>

> Everything runs well on VMWare Player (on Ubuntu). The relevant tests

> were performed also for qemu-kvm on Fedora 17 libvirt and

>

> VMWare Workstation.(Ubuntu)

>

>

>

>

>

> Detailed Test Result for each component

>

> Target

>

> Total TCs

>

> Not Run

>

> Passed

>

> Failed

>

> Not testable (Blocked)

>

> Beagleboard Sato-SDK

>

> 42

>

> 0

>

> 42

>

> 0

>

> 0

>

> Routerstationpro Sato-SDK

>

> 35

>

> 0

>

> 35

>

> 0

>

> 0

>

> p1022ds-sato-sdk

>

> 37

>

> 0

>

> 37

>

> 0

>

> 0

>

> Mpc8315e-rdb Sato-SDK

>

> 37

>

> 0

>

> 37

>

> 0

>

> 0

>

> eMenlow Sato-sdk

>

> 67

>

> 0

>

> 66

>

> 1 (bug 2643)

>

> 0

>

> n450 Sato-sdk

>

> 67

>

> 0

>

> 67

>

> 0

>

> 0

>

> Crownbay-Sato-sdk

>

> 65

>

> 0

>

> 62

>

> 2 (1258, 2792)

>

> 1 (2792)

>

> FRI2 Sato-sdk

>

> 85

>

> 0

>

> 0

>

> 0

>

>             85 (3294)

>

> HuronRiver Sato-sdk

>

> 68

>

> 0

>

> 68

>

> 0

>

> 0

>

> Sugarbay sato-sdk

>

> 68

>

> 0

>

> 68

>

> 0

>

> 0

>

> Jasperforest lsb-sdk

>

> 34

>

> 0

>

> 27

>

> 7 (3098)

>

> 0

>

> Qemuarm Sato

>

> 31

>

> 0

>

> 31

>

> 0

>

> 0

>

> Qemuarm Sato-SDK

>

> 36

>

> 0

>

> 36

>

> 0

>

> 0

>

> Qemumips Sato

>

> 31

>

> 0

>

> 31

>

> 0

>

> 0

>

> Qemumips Sato-SDK

>

> 36

>

> 0

>

> 36

>

> 0

>

> 0

>

> Qemuppc Sato

>

> 31

>

> 0

>

> 31

>

> 0

>

> 0

>

> Qemuppc Sato-SDK

>

> 36

>

> 0

>

> 36

>

> 0

>

> 0

>

> Qemux86-64 Sato

>

> 30

>

> 0

>

> 27

>

> 3 (bug 2694)

>

> 0

>

> Qemux86-64 Sato-SDK

>

> 36

>

> 0

>

> 32

>

> 4 (bug 2694)

>

> 0

>

> Qemux86 Sato

>

> 30

>

> 0

>

> 30

>

> 0

>

> 0

>

> Qemux86 Sato-SDK

>

> 36

>

> 0

>

> 36

>

> 0

>

> 0

>

> Core build system

>

> 59

>

> 0

>

> 57

>

> 2 (2918)

>

> 0

>

> HOB

>

> 38

>

> 0

>

> 38

>

> 0

>

> 0

>

> ADT

>

> 52

>

> 0

>

> 45

>

> 7(3290, 3287)

>

> 0

>

> Build Appliance

>

> 42

>

> 0

>

> 34

>

> 7 (3290)

>

> 1 (centos gtk issue)

>

> Total

>

> 1129

>

> 0

>

> 1009

>

> 33

>

> 87

>

>

>

>

>

> Component

>

> Bug Number

>

> Target Milestone

>

> System & Core OS

>

> System Usage

>

> Bug 2694 [QEMU-X86_64]zypper refresh fail

>

> Core build system

>

> Bug 2918  lib64-core-image-sato-sdk fails due to do_rootfs issue.

>

> ADT

>

> Bug 3287  GL support still available on qemuarm

>

> Bug 3290 ADT couldn't be installed properly for RC4 because sato sdk

> for qemuarm does not exist

>

>

>

>

>

>

>

>

>

> Laurentiu Serban

>

> QA Engineer

>

> Open Source Technology Center

>

> System Software Division Romania

>

> Desk: +40 31 8604742

>

> iNET: 88451042

>

>

>

>

> _______________________________________________

> yocto mailing list

> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

> https://lists.yoctoproject.org/listinfo/yocto

>







--

Elizabeth Flanagan

Yocto Project

Build and Release

--_000_E16513A01CAAFF40B65178C63CE45EEC19199C7EIRSMSX102gercor_
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
	{font-family:PMingLiU;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:"MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@PMingLiU";
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
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
	font-family:Consolas;}
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
	font-family:Consolas;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">I updated the test reports:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The commit id is <b><span style=3D"font-size:10.0pt;=
font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black">c9de24=
d3f4845251b01e2eab0aeeb7472badc5bb</span></b><span style=3D"font-size:12.0p=
t;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">The following issue are encountered. I also updat=
ed with comments from Jessica and Saul:<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; For the BSPs:<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.5in;text-indent:.5in">o&nbs=
p;&nbsp; For qemu x86_64 images &#8211; the zypper refresh fails (2694),<o:=
p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; For core build system:<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; o&nbsp;&nbsp; There are still errors with the do_rootfs fails f=
or lib64-core-image-sato-sdk (2918)<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; For ADT<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; o&nbsp;&nbsp; GL support still available on qemuarm (3287)<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"965" style=3D"width:724.0pt;margin-left:30.2pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"965" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"widt=
h:724.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Test Result Summary</s=
pan></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></=
p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" valign=3D"bottom" style=3D"width:141.5pt;bord=
er:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component</span></b><b=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></b></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Status</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></b></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Comments</span></b><b><span style=3D"font-size:10.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"189" nowrap=3D"" rowspan=3D"11" style=3D"width:141.5pt;border:=
solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Boards</span></b><b><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">p1022ds</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Beagleboard</span><span style=3D"font-size:10.0pt;line-heigh=
t:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o=
:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Routerstationpro</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Mpc8315e-rdb<span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sudoku-savant issue (2878)</span><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">eMenlow-sato-sdk</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Usb mount fails (2643)</span><span style=3D"font-size:10.0pt=
;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Blacksand-sato-sdk</span><span style=3D"font-size:10.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sugarbay sato-sdk</span><span style=3D"font-size:10.0pt;line=
-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Crownbay-emgd-sato-sdk</span><span style=3D"font-size:10.0pt=
;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Standby fails (2792), Xorg issue (1258),
</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">FRI2-sato</span><span style=3D"font-size:10.0pt;line-height:=
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Blocked (3294)</span><span style=3D"font-size:10.0pt;line-he=
ight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">HuronRiver-sato</span><span style=3D"font-size:10.0pt;line-h=
eight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Jasperforest-lsb</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">zypper is not installed in core-image-lsb-sdk (3098)</span><=
span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" rowspan=3D"5" style=3D"width:141.5pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">QEMU</span></b><b><spa=
n style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;line-height:115%"><span =
style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemuarm</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemuppc</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemumips</span><span style=3D"font-size:10.0pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>=
</o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86-64</span><span style=3D"font-size:10.0pt;line-height=
:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:=
p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Zypper issue (2694)</span><span style=3D"font-size:10.0pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:20.6pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system</spa=
n></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">lib64-core-image-sato-sdk fails due to do_rootfs issue (2918=
)</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">HOB</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GL support still available on qemuarm (3287)</span><span sty=
le=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Stress Testing</span><=
/b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Both Crashme and Helltest on Jasperforest could pass 24 hour=
s stress testing</span><span style=3D"font-size:10.0pt;line-height:115%;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Distribution Support</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well for Ubuntu 12.04, Ubuntu 12.10 &#8211; =
nightly, OpenSuse 12.1, OpenSuse 12.2 RC2, Fedora 17, CentOs 6.3,
 Fedora 16</span><span style=3D"font-size:10.0pt;line-height:115%;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span>=
</p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Power and Performance<=
/span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b>=
</p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">one qemux86 sato build on a Core i7 machine costs 88 minutes
<b>with the packages previously fetched.</b></span><span style=3D"font-size=
:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Compliance</span></b><=
b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Tests on Huron River and BlackSand passed</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Build Appliance</span>=
</b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well on VMWare Player (on Ubuntu). The relev=
ant tests were performed also for qemu-kvm on Fedora 17 libvirt
 and </span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">VMWare Workstation.=
(Ubuntu)</span><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellpadding=3D"0">
<tbody>
<tr style=3D"height:4.35pt">
<td colspan=3D"6" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt;h=
eight:4.35pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Detailed Test Result for each component</b><span style=3D"font=
-size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Target</b>
<span style=3D"font-size:12.0pt;line-height:115%;font-family:SimSun;color:b=
lack"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Total TCs</b><span style=3D"font-size:12.0pt;line-height:115%;=
font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not Run</b><span style=3D"font-size:12.0pt;line-height:115%;fo=
nt-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" style=3D"width:33.1pt;background:white;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Passed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" style=3D"width:114.85pt;background:white;padding:.75pt .7=
5pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Failed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not testable (Blocked)</b><span style=3D"font-size:12.0pt;line=
-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Beagleboard Sato-SDK</b><span style=3D"font-size:12.0pt;line-h=
eight:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">42<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">42</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Routerstationpro Sato-SDK</b><span style=3D"font-size:12.0pt;l=
ine-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">35<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>p1022ds-sato-sdk</b><b><span style=3D"font-size:10.5pt;line-he=
ight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">37<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">37</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Mpc8315e-rdb Sato-SDK</b><span style=3D"font-size:12.0pt;line-=
height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">37<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">37</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>eMenlow Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-he=
ight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">67<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">66</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (bug 2643)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>n450 Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-heigh=
t:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">67<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">67</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Crownbay-Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">65<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">62</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (1258, 2792)</span><span style=3D"fon=
t-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (2792)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>FRI2 Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-heigh=
t:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">85<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">0</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"color:red"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 85 (329=
4)</span><span style=3D"font-size:10.5pt;line-height:115%;color:red"><o:p><=
/o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>HuronRiver Sato-sdk</b><b><span style=3D"font-size:10.5pt;line=
-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">68<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">68</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Sugarbay sato-sdk</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">68<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">68</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Jasperforest lsb-sdk</b><b><span style=3D"font-size:10.5pt;lin=
e-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">34<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">27</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">7 (3098)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuarm Sato</b><span style=3D"font-size:12.0pt;line-height:11=
5%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">31<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" style=3D"width:33.1pt;background:white;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" style=3D"width:114.85pt;background:white;padding:.75pt .7=
5pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuarm Sato-SDK</b><span style=3D"font-size:12.0pt;line-heigh=
t:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">36<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemumips Sato</b><span style=3D"font-size:12.0pt;line-height:1=
15%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">31<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" style=3D"width:33.1pt;background:white;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" style=3D"width:114.85pt;background:white;padding:.75pt .7=
5pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemumips Sato-SDK</b><span style=3D"font-size:12.0pt;line-heig=
ht:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">36<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuppc Sato</b><span style=3D"font-size:12.0pt;line-height:11=
5%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">31<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" style=3D"width:33.1pt;background:white;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" style=3D"width:114.85pt;background:white;padding:.75pt .7=
5pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuppc Sato-SDK</b><span style=3D"font-size:12.0pt;line-heigh=
t:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">36<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86-64 Sato</b><b><span style=3D"font-size:10.5pt;line-hei=
ght:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">30<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">27</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">3 (bug 2694)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86-64 Sato-SDK</b><b><span style=3D"font-size:10.5pt;line=
-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">36<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">32</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">4 (bug 2694)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86 Sato</b><b><span style=3D"font-size:10.5pt;line-height=
:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">30<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86 Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-he=
ight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">36<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Core build system</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">74<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">72</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (2918)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>HOB</b><b><span style=3D"font-size:10.5pt;line-height:115%"><o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">41<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">41</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>ADT</b><b><span style=3D"font-size:10.5pt;line-height:115%"><o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">54<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">48</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">6( 3287)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Build Appliance</b><b><span style=3D"font-size:10.5pt;line-hei=
ght:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">42<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">34</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">7 (3290)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (centos gtk issue)</span><span style=
=3D"font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Total</b><b><span style=3D"font-size:10.5pt;line-height:115%">=
<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">1149<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p>=
</span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">1029</span><span style=3D"font-size:1=
0.5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">33</span><span style=3D"font-size:10.5p=
t;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">87</span><span style=3D"font-size:10.5p=
t;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"930" style=3D"width:697.75pt;margin-left:-.9pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" valign=3D"bottom" style=3D"widt=
h:166.0pt;border:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component</span></b><b=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:solid=
 black 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Bug Number</span></b><=
b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:solid black 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target Milestone</span></b><b><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"125" nowrap=3D"" rowspan=3D"2" style=3D"width:93.45pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System &amp; Core OS</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"2" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System Usage</span></b=
><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2694 [QEMU-X86_64]zyp=
per refresh fail<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:=
p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"2" style=3D"width:16=
6.0pt;border-top:none;border-left:solid black 1.0pt;border-bottom:solid win=
dowtext 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system</spa=
n></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2918&nbsp; lib64-core=
-image-sato-sdk fails due to do_rootfs issue.<span style=3D"font-size:10.5p=
t;line-height:115%"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" style=3D"width:166.0pt;border-t=
op:none;border-left:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;=
border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid bl=
ack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3287&nbsp; GL support still available on qemuarm</span><=
span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3290 ADT couldn't be installed properly for RC4 because =
sato sdk for qemuarm does not exist</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal">Br,<o:p></o:p></p>
<p class=3D"MsoNormal">Laurentiu <o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-----Original Message-----<br>
From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com] <br>
Sent: Thursday, October 18, 2012 12:43 AM<br>
To: Zhang, Jessica<br>
Cc: Serban, Laurentiu; yocto@yoctoproject.org<br>
Subject: Re: [yocto] 1.3 RC4 full pass results<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">On Wed, Oct 17, 2012 at 1:52 PM, Zhang, Jessica &=
lt;<a href=3D"mailto:jessica.zhang@intel.com"><span style=3D"color:windowte=
xt;text-decoration:none">jessica.zhang@intel.com</span></a>&gt; wrote:<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; As to sato-sdk for qemuarm issue (3290), I t=
hink Beth has regenerated it.&nbsp; Can we have a quick check to ensure it=
=1B$B!G=1B(Bs working now?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Yes, this was due to us needing to regenerate qem=
uarm. Only the main builder populates the adtrepo. As the images for the fi=
rst run were incorrectly generated for qemuarm, they had to be done by hand=
. This was finished yesterday and
 the bug report updated.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-b<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Thanks,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Jessica<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; From: <a href=3D"mailto:yocto-bounces@yoctop=
roject.org"><span style=3D"color:windowtext;text-decoration:none">yocto-bou=
nces@yoctoproject.org</span></a>
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; [<a href=3D"mailto:yocto-bounces@yoctoprojec=
t.org"><span style=3D"color:windowtext;text-decoration:none">mailto:yocto-b=
ounces@yoctoproject.org</span></a>] On Behalf Of Serban, Laurentiu<o:p></o:=
p></p>
<p class=3D"MsoPlainText">&gt; Sent: Wednesday, October 17, 2012 12:48 PM<o=
:p></o:p></p>
<p class=3D"MsoPlainText">&gt; To: <a href=3D"mailto:yocto@yoctoproject.org=
"><span style=3D"color:windowtext;text-decoration:none">yocto@yoctoproject.=
org</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Subject: [yocto] 1.3 RC4 full pass results<o=
:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Hello guys,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Here are the test results for the 1.3 RC4 fu=
ll pass.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; The commit id is:&nbsp; 1b1b83651af33ffcb204=
031e2790719e3b0b45bb<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; For the performance tests: the build for sat=
o x86 took 88 minutes
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; (same as for RC3)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; The following issue are encountered. I also =
updated with comments from Jessica and Saul:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; For the BSPs:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; o&nbsp;&nbsp; For qemu x86_64 images &#8211;=
 the zypper refresh fails (2694),<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; For core build system:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; o&nbsp;&nbsp; There are still errors with th=
e do_rootfs fails for lib64-core-image-sato-sdk (2918)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; For ADT<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; o&nbsp;&nbsp; ADT couldn't be installed prop=
erly for RC4 because sato sdk for qemuarm does not exist (3290)<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; o&nbsp;&nbsp; GL support still available on =
qemuarm (3287)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Test Result Summary<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Component<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Target<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Status<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Comments<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Boards<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; p1022ds<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Beagleboard<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Routerstationpro<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Mpc8315e-rdb<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Sudoku-savant issue (2878)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; eMenlow-sato-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; BUGGY<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Usb mount fails (2643)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Blacksand-sato-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Sugarbay sato-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Crownbay-emgd-sato-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Standby fails (2792), Xorg issue (1258),<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; FRI2-sato<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; BUGGY<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Blocked (3294)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; HuronRiver-sato<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Jasperforest-lsb<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; BUGGY<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; zypper is not installed in core-image-lsb-sd=
k (3098)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; QEMU<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemuarm<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemuppc<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemumips<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; qemux86<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; qemux86-64<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; BUGGY<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Zypper issue (2694)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Core build system<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; BUGGY<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; lib64-core-image-sato-sdk fails due to do_ro=
otfs issue (2918)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; HOB<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; ADT<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; BUGGY<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; ADT couldn't be installed properly for RC4 b=
ecause sato sdk for
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; qemuarm does not exist (3290)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GL support still available on qemuarm (3287)=
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Stress Testing<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Both Crashme and Helltest on Jasperforest co=
uld pass 24 hours stress
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; testing<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Distribution Support<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well for Ubuntu 12.04, Ubunt=
u 12.10 &#8211; nightly,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; OpenSuse 12.1, OpenSuse 12.2 RC2, Fedora 17,=
 CentOs 6.3, Fedora 16<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Power and Performance<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; one qemux86 sato build on a Core i7 machine =
costs 88 minutes with the packages previously fetched.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Compliance<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Tests on Huron River and BlackSand passed<o:=
p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Build Appliance<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; GOOD<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Everything runs well on VMWare Player (on Ub=
untu). The relevant tests
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; were performed also for qemu-kvm on Fedora 1=
7 libvirt and<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; VMWare Workstation.(Ubuntu)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Detailed Test Result for each component<o:p>=
</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Target<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Total TCs<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Not Run<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Passed<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Failed<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Not testable (Blocked)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Beagleboard Sato-SDK<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 42<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 42<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Routerstationpro Sato-SDK<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 35<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 35<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; p1022ds-sato-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 37<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 37<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Mpc8315e-rdb Sato-SDK<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 37<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 37<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; eMenlow Sato-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 67<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 66<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 1 (bug 2643)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; n450 Sato-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 67<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 67<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Crownbay-Sato-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 65<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 62<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 2 (1258, 2792)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 1 (2792)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; FRI2 Sato-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 85<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; 85 (3294)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; HuronRiver Sato-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 68<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 68<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Sugarbay sato-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 68<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 68<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Jasperforest lsb-sdk<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 34<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 27<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 7 (3098)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemuarm Sato<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 31<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 31<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemuarm Sato-SDK<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 36<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 36<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemumips Sato<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 31<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 31<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemumips Sato-SDK<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 36<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 36<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemuppc Sato<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 31<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 31<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemuppc Sato-SDK<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 36<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 36<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemux86-64 Sato<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 30<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 27<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 3 (bug 2694)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemux86-64 Sato-SDK<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 36<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 32<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 4 (bug 2694)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemux86 Sato<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 30<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 30<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Qemux86 Sato-SDK<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 36<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 36<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Core build system<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 59<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 57<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 2 (2918)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; HOB<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 38<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 38<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; ADT<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 52<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 45<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 7(3290, 3287)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Build Appliance<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 42<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 34<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 7 (3290)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 1 (centos gtk issue)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Total<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 1129<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 0<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 1009<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 33<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 87<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Component<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Bug Number<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Target Milestone<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; System &amp; Core OS<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; System Usage<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Bug 2694 [QEMU-X86_64]zypper refresh fail<o:=
p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Core build system<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Bug 2918&nbsp; lib64-core-image-sato-sdk fai=
ls due to do_rootfs issue.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; ADT<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Bug 3287&nbsp; GL support still available on=
 qemuarm<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Bug 3290 ADT couldn't be installed properly =
for RC4 because sato sdk
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; for qemuarm does not exist<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Laurentiu Serban<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; QA Engineer<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Open Source Technology Center<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; System Software Division Romania<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Desk: &#43;40 31 8604742<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; iNET: 88451042<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; ____________________________________________=
___<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; yocto mailing list<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <a href=3D"mailto:yocto@yoctoproject.org"><s=
pan style=3D"color:windowtext;text-decoration:none">yocto@yoctoproject.org<=
/span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">
<span style=3D"color:windowtext;text-decoration:none">https://lists.yoctopr=
oject.org/listinfo/yocto</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">--<o:p></o:p></p>
<p class=3D"MsoPlainText">Elizabeth Flanagan<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project<o:p></o:p></p>
<p class=3D"MsoPlainText">Build and Release<o:p></o:p></p>
</div>
</body>
</html>

--_000_E16513A01CAAFF40B65178C63CE45EEC19199C7EIRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC19199C7EIRSMSX102gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="1.3_RC4_FullPass_TR_updated.xlsx"
Content-Description: 1.3_RC4_FullPass_TR_updated.xlsx
Content-Disposition: attachment;
	filename="1.3_RC4_FullPass_TR_updated.xlsx"; size=74601;
	creation-date="Thu, 18 Oct 2012 10:50:35 GMT";
	modification-date="Thu, 18 Oct 2012 10:51:45 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQD1vq31AwIAAPgTAAATANoBW0NvbnRlbnRfVHlwZXNdLnhtbCCi1gEooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAMxYTW/bMAy9D9h/MHQdYkXe1nVDnB72cdwKtPsBqsXEQmxJENku+feTncZYh2CJ
ZwfWxYYRiHwhn/kevbjZ1lXyBB61NTkT6ZwlYAqrtFnn7Of9t9k1S5CkUbKyBnK2A2Q3y9evFvc7
B5iE0wZzVhK5T5xjUUItMbUOTPhlZX0tKTz6NXey2Mg18Gw+v+KFNQSGZtTEYMvFjwDAawXJrfT0
XdYhD99W/Jf1GywBCHl7E+/TEJUln/fHGwQ5k85VupAU8PMno/7KPbOrlS5A2eKxDhlTdB6kaqPV
VdoleNPE5ecDuYoESPYuFiAXb80XWMnHipKv20CdPVsftBmRDM7rwEp/B0SB/NiDDh8jaYJ4GwuQ
aGiZRVKRbKrWUJjIwNurGFyLNsyJWYm0qwAHp3o5qPdBT2TupvmzXMQypD+MXIzuf/asx3UkOMRw
Ir5kx/8WREQzHeaRtCa7eGuOyLiHCvvp+LOZTMPJ1vhhqR0e3oYjGf7tGk97vwdrNyN3qLWgaS21
OeA+0wTHIq0XN3xn1kNM8u6EheLWW4c8rB+DmQGNpVWgZi6EBE8aOjKfWYRYBtlULqdTgMOmOLgn
IylMLKtBFov4Z1NVBEvpQd1R2PLWo9vTP2P3nOciFnsooqFILMY9m6Q1nbQU1kP/OXbwRs3pI4LC
2+92y98AAAD//wMAUEsDBBQABgAIAAAAIQC1VTAj9QAAAEwCAAALAM4BX3JlbHMvLnJlbHMgosoB
KKAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AACMks9OwzAMxu9IvEPk++puSAihpbtMSLshVB7AJO4ftY2jJED39oQDgkpj29H2588/W97u5mlU
HxxiL07DuihBsTNie9dqeK2fVg+gYiJnaRTHGo4cYVfd3mxfeKSUm2LX+6iyi4saupT8I2I0HU8U
C/HscqWRMFHKYWjRkxmoZdyU5T2Gvx5QLTzVwWoIB3sHqj76PPmytzRNb3gv5n1il06MQJ4TO8t2
5UNmC6nP26iaQstJgxXznNMRyfsiYwOeJtpcT/T/tjhxIkuJ0Ejg8zzfinNA6+uBLp9oqfi9zjzi
p4ThTWT4YcHFD1RfAAAA//8DAFBLAwQUAAYACAAAACEAUKutyrIBAABREgAAGgAIAXhsL19yZWxz
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
TsMQPZ6T/5yR5I8Jk0skwfKGIvUgV7UrAcWC1mu2zs/6IxKYrjWL590PAAAA//8DAFBLAwQUAAYA
CAAAACEATFoqesIAAABCAQAAJAAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQxMi54bWwucmVs
c4SPwWrDMBBE74X8g9h7JKcHU4rlXEog1yb9AFVe26L2Smg3If776FibQo/DY94wzfExT+qOmUMk
CwddgULysQs0WPi6nvZvoFgcdW6KhBYWZDi2u5fmEycnpcRjSKyKhdjCKJLejWE/4uxYx4RUSB/z
7KTEPJjk/I8b0LxWVW3ybwe0K6c6dxbyuTuAui6pLP/vjn0fPH5Ef5uR5I8Jk3IgwXxBkXKQi9rl
AcWC1lu2zbX+DgSmbczqefsEAAD//wMAUEsDBBQABgAIAAAAIQBk8zQiwgAAAEIBAAAjAAAAeGwv
d29ya3NoZWV0cy9fcmVscy9zaGVldDkueG1sLnJlbHOEj8FqwzAQRO+B/IPYeyQn0FKC5VxCINc2
/QBVXssi9kpot6X5++pYm0KPw2PeMO3pe57UFxaOiSzsdQMKyac+UrDwfrvsXkCxOOrdlAgtPJDh
1G037StOTmqJx5hZVQuxhVEkH41hP+LsWKeMVMmQyuykxhJMdv7uAppD0zyb8tsB3cKprr2Fcu33
oG6PXJf/d6dhiB7PyX/OSPLHhMklkmB5Q5F6kKvalYBiQes1W+cn/REJTNeaxfPuBwAA//8DAFBL
AwQUAAYACAAAACEAQ5YRo8IAAABCAQAAIwAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ4Lnht
bC5yZWxzhI/BasMwEETvgfyD2HskJ5RSguVcQiDXNv0AVV7LIvZKaLel+fvqWJtCj8Nj3jDt6Xue
1BcWjoks7HUDCsmnPlKw8H677F5AsTjq3ZQILTyQ4dRtN+0rTk5qiceYWVULsYVRJB+NYT/i7Fin
jFTJkMrspMYSTHb+7gKaQ9M8m/LbAd3Cqa69hXLt96Buj1yX/3enYYgez8l/zkjyx4TJJZJgeUOR
epCr2pWAYkHrNVvnJ/0RCUzXmsXz7gcAAP//AwBQSwMEFAAGAAgAAAAhADShCZLCAAAAQgEAACMA
AAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0Ny54bWwucmVsc4SPwWrDMBBE74H8g9h7JCeFUoLl
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
bWUxLnhtbFBLAQItABQABgAIAAAAIQDGH2+q9wIAABULAAAZAAAAAAAAAAAAAAAAAC45AAB4bC93
b3Jrc2hlZXRzL3NoZWV0MjkueG1sUEsBAi0AFAAGAAgAAAAhAPMIdrIiAwAABwkAABkAAAAAAAAA
AAAAAAAAXDwAAHhsL3dvcmtzaGVldHMvc2hlZXQyOC54bWxQSwECLQAUAAYACAAAACEAL5LliOsE
AACBFwAAGAAAAAAAAAAAAAAAAAC1PwAAeGwvd29ya3NoZWV0cy9zaGVldDEueG1sUEsBAi0AFAAG
AAgAAAAhANyrrso8AgAAfAUAABkAAAAAAAAAAAAAAAAA1kQAAHhsL3dvcmtzaGVldHMvc2hlZXQy
Ni54bWxQSwECLQAUAAYACAAAACEALrykwfQBAABWBAAAGQAAAAAAAAAAAAAAAABJRwAAeGwvd29y
a3NoZWV0cy9zaGVldDI1LnhtbFBLAQItABQABgAIAAAAIQBHVasONwQAAMMUAAAYAAAAAAAAAAAA
AAAAAHRJAAB4bC93b3Jrc2hlZXRzL3NoZWV0My54bWxQSwECLQAUAAYACAAAACEAd6JKFo8EAAAQ
GAAAGAAAAAAAAAAAAAAAAADhTQAAeGwvd29ya3NoZWV0cy9zaGVldDIueG1sUEsBAi0AFAAGAAgA
AAAhADttMkvBAAAAQgEAACMAAAAAAAAAAAAAAAAAplIAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hl
ZXQxLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAKI0GhjCAAAAQgEAACQAAAAAAAAAAAAAAAAAqFMA
AHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQyNC54bWwucmVsc1BLAQItABQABgAIAAAAIQBrPw/7
wwAAAEIBAAAkAAAAAAAAAAAAAAAAAKxUAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0MjIueG1s
LnJlbHNQSwECLQAUAAYACAAAACEATFoqesIAAABCAQAAJAAAAAAAAAAAAAAAAACxVQAAeGwvd29y
a3NoZWV0cy9fcmVscy9zaGVldDEyLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAGTzNCLCAAAAQgEA
ACMAAAAAAAAAAAAAAAAAtVYAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQ5LnhtbC5yZWxzUEsB
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
ACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAAD05gAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50
ZXJTZXR0aW5nczQuYmluUEsBAi0AFAAGAAgAAAAhAHmynXs3BQAAOCIAACcAAAAAAAAAAAAAAAAA
cOwAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3MyLmJpblBLAQItABQABgAIAAAA
IQB5sp17NwUAADgiAAAnAAAAAAAAAAAAAAAAAOzxAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRl
clNldHRpbmdzNi5iaW5QSwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAABo
9wAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczcuYmluUEsBAi0AFAAGAAgAAAAh
AHmynXs3BQAAOCIAACcAAAAAAAAAAAAAAAAA5PwAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVy
U2V0dGluZ3M4LmJpblBLAQItABQABgAIAAAAIQB5sp17NwUAADgiAAAnAAAAAAAAAAAAAAAAAGAC
AQB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMy5iaW5QSwECLQAUAAYACAAAACEA
ebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAADcBwEAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJT
ZXR0aW5nczEuYmluUEsBAi0AFAAGAAgAAAAhAGBlNlCCAQAA4gIAABEAAAAAAAAAAAAAAAAAWA0B
AGRvY1Byb3BzL2NvcmUueG1sUEsBAi0AFAAGAAgAAAAhAJBhdL6dAgAAjgcAABAAAAAAAAAAAAAA
AAAAERABAGRvY1Byb3BzL2FwcC54bWxQSwUGAAAAADYANgBvDwAA5BMBAAAA

--_004_E16513A01CAAFF40B65178C63CE45EEC19199C7EIRSMSX102gercor_--
