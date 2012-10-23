Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08AA0E00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 15:31:38 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Oct 2012 15:31:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,635,1344236400"; 
	d="xml'?bin'?scan'208,217,72,48?xlsx'208,217,72,48,72,48?rels'208,217,72,48,72,48";
	a="237193694"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga001.fm.intel.com with ESMTP; 23 Oct 2012 06:53:41 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 23 Oct 2012 14:53:37 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.16]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.52]) with mapi id
	14.01.0355.002; Tue, 23 Oct 2012 14:53:36 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>, "Serban,
	Laurentiu" <laurentiu.serban@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: [yocto] 1.3 RC4 full pass results
Thread-Index: Ac2soEuHDQMR4Oo+TvufLH6xba7QEQACMYxQ///93YD//xLNEP/2JFjQ/+w7vHA=
Date: Tue, 23 Oct 2012 13:53:36 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E961671C0AF@IRSMSX104.ger.corp.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC191988ED@IRSMSX102.ger.corp.intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B1D41C@ORSMSX101.amr.corp.intel.com>
	<CAPhnLPAUn3x8OXGyu-tRx7g-0sML76usZq9KYOUos7uhE8enRw@mail.gmail.com>
	<E16513A01CAAFF40B65178C63CE45EEC19199C7E@IRSMSX102.ger.corp.intel.com>
	<1FFB62CE8AEB0D4298B51122D8903E961671C095@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E961671C095@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
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
X-List-Received-Date: Tue, 23 Oct 2012 22:31:39 -0000
X-Groupsio-MsgNum: 10258
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_1FFB62CE8AEB0D4298B51122D8903E961671C0AFIRSMSX104gercor_"

--_004_1FFB62CE8AEB0D4298B51122D8903E961671C0AFIRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E961671C0AFIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E961671C0AFIRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

And the updated XLS file attached.

--
Alexandru Georgescu
QA Engineer

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Georgescu, Alexandru C
Sent: Tuesday, October 23, 2012 16:51
To: Serban, Laurentiu; Flanagan, Elizabeth; Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] 1.3 RC4 full pass results

Hello again :),
I have updated the test results for 1.3 M5 rc4, and they are also available=
 on our wiki: https://wiki.yoctoproject.org/wiki/Yocto_1.3_Milestone_Test_R=
eport#Yocto_1.3_M5_Build_Test_Report


The commit id is c9de24d3f4845251b01e2eab0aeeb7472badc5bb


The following issues are encountered. I also updated with comments from Jes=
sica and Saul:



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

Everything runs well

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

Everything runs well for Ubuntu 12.04, Ubuntu 12.10, OpenSuse 12.1, OpenSus=
e 12.2, Fedora 17, Fedora 16, CentOs 6.3 (CentOS does not pass gtk and pygt=
k requirements for HOB)

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

Distribution Support

42

1

41

0

1 (HOB-centos gtk too old)

Build Appliance

12

0

12

0

0

Total

1161

0

1049

25

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


Thanks,
--
Alexandru Georgescu
QA Engineer
SSG/SSD Open Source Technology Center Romania





-----Original Message-----
From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]<mailto:[mai=
lto:elizabeth.flanagan@intel.com]>
Sent: Thursday, October 18, 2012 12:43 AM
To: Zhang, Jessica
Cc: Serban, Laurentiu; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org=
>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E961671C0AFIRSMSX104gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	{font-family:"MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:"\@PMingLiU";
	panose-1:2 2 5 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:ZH-TW;}
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
	font-family:Consolas;
	mso-fareast-language:ZH-TW;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:ZH-TW;}
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
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">And the updated XLS fi=
le attached.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">--<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Alexandru Georgescu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">QA Engineer<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Georgescu, Alexandru C<br>
<b>Sent:</b> Tuesday, October 23, 2012 16:51<br>
<b>To:</b> Serban, Laurentiu; Flanagan, Elizabeth; Zhang, Jessica<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] 1.3 RC4 full pass results<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello again <span style=3D"font-family:Wingdings">J<=
/span>,<o:p></o:p></p>
<p class=3D"MsoNormal">I have updated the test results for 1.3 M5 rc4, and =
they are also available on our wiki:
<a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.3_Milestone_Test_Repo=
rt#Yocto_1.3_M5_Build_Test_Report">
<span style=3D"color:windowtext">https://wiki.yoctoproject.org/wiki/Yocto_1=
.3_Milestone_Test_Report#Yocto_1.3_M5_Build_Test_Report</span></a><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The commit id is <b><span style=3D"font-size:10.0pt;=
font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black">c9de24=
d3f4845251b01e2eab0aeeb7472badc5bb</span></b><span style=3D"font-size:12.0p=
t;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">The following issue<span style=3D"color:#1F497D">=
s</span> are encountered. I also updated with comments from Jessica and Sau=
l:<o:p></o:p></p>
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
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Test Result Summary<o:=
p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" valign=3D"bottom" style=3D"width:141.5pt;bord=
er:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component<o:p></o:p></=
span></b></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target<o:p></o:p></span></b></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Status<o:p></o:p></span></b></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Comments<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"189" nowrap=3D"" rowspan=3D"11" style=3D"width:141.5pt;border:=
solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Boards<o:p></o:p></spa=
n></b></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">p1022ds<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Beagleboard<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Routerstationpro<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
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
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">eMenlow-sato-sdk<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Usb mount fails (2643)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Blacksand-sato-sdk<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sugarbay sato-sdk<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Crownbay-emgd-sato-sdk<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Standby fails (2792), Xorg issue (1258),
<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">FRI2-sato<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Blocked (3294)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">HuronRiver-sato<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Jasperforest-lsb<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">zypper is not installed in core-image-lsb-sdk (3098)<o:p></o=
:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" rowspan=3D"5" style=3D"width:141.5pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">QEMU<o:p></o:p></span>=
</b></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph;line-height:115%">
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemuarm<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemuppc<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemumips<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86-64<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Zypper issue (2694)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:20.6pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system<o:p>=
</o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span lang=3D"ZH-TW" styl=
e=3D"font-family:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><spa=
n style=3D"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:20.6pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">lib64-core-image-sato-sdk fails due to do_rootfs issue (2918=
)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">HOB<o:p></o:p></span><=
/b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span lang=3D"ZH-TW" styl=
e=3D"font-family:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><spa=
n style=3D"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT<o:p></o:p></span><=
/b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span lang=3D"ZH-TW" styl=
e=3D"font-family:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><spa=
n style=3D"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GL support still available on qemuarm (3287)<o:p></o:p></spa=
n></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Stress Testing<o:p></o=
:p></span></b></p>
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
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Both Crashme and Helltest on Jasperforest could pass 24 hour=
s stress testing<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Distribution Support<o=
:p></o:p></span></b></p>
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
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well for Ubuntu 12.04, Ubuntu 12.10, OpenSus=
e 12.1, OpenSuse 12.2, Fedora 17, Fedora 16</span><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:#1F497D">,</span><span style=3D"font-size:10.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
 CentOs 6.3 (CentOS does not pass gtk and pygtk requirements for HOB) <o:p>=
</o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Power and Performance<=
o:p></o:p></span></b></p>
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
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">one qemux86 sato build on a Core i7 machine costs 88 minutes
<b>with the packages previously fetched.</b><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Compliance<o:p></o:p><=
/span></b></p>
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
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Tests on Huron River and BlackSand passed<o:p></o:p></span><=
/p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Build Appliance<o:p></=
o:p></span></b></p>
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
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well on VMWare Player (on Ubuntu). The relev=
ant tests were performed also for qemu-kvm on Fedora 17 libvirt
 and <o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">VMWare Workstation.=
(Ubuntu)<o:p></o:p></span></p>
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
<tr style=3D"height:14.85pt">
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;height:14.85p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Target</b>
<span style=3D"font-size:12.0pt;line-height:115%;font-family:SimSun;color:b=
lack"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;height:14.85p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Total TCs</b><span style=3D"font-size:12.0pt;line-height:115%;=
font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;height:14.85p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not Run</b><span style=3D"font-size:12.0pt;line-height:115%;fo=
nt-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"44" style=3D"width:33.1pt;background:white;padding:.75pt .75pt=
 .75pt .75pt;height:14.85pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Passed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"153" style=3D"width:114.85pt;background:white;padding:.75pt .7=
5pt .75pt .75pt;height:14.85pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Failed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt;height:14.8=
5pt">
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
ght:115%"><b>Distribution Support<o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">42<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">1<o:p></o:p></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">41<o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (HOB-centos gtk too old)<o:p></o:p></=
span></p>
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
ght:115%"><span style=3D"color:#1F497D">12</span><span style=3D"font-size:1=
0.5pt;line-height:115%"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:#00B050">12</span><span style=3D"font-size:1=
0.5pt;line-height:115%;color:green"><o:p></o:p></span></p>
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
ght:115%"><b>Total</b><b><span style=3D"font-size:10.5pt;line-height:115%">=
<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">11<span style=3D"color:#1F497D">61</span><span style=3D"font-size=
:10.5pt;line-height:115%"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"44" valign=3D"top" style=3D"width:33.1pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">10</span><span style=3D"color:#1F497D=
">4</span><span style=3D"color:green">9</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">25</span><span style=3D"font-size:10.5p=
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
h:166.0pt;border:solid windowtext 1.0pt;border-right:solid black 1.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component<o:p></o:p></=
span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:solid=
 windowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;bor=
der-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Bug Number<o:p></o:p><=
/span></b></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:solid windowtext 1.0pt;border-left:none;border-bottom:solid black 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:1=
5.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target Milestone<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"125" nowrap=3D"" rowspan=3D"2" style=3D"width:93.45pt;border-t=
op:none;border-left:solid windowtext 1.0pt;border-bottom:solid black 1.0pt;=
border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System &amp; Core OS<o=
:p></o:p></span></b></p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"2" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System Usage<o:p></o:p=
></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
lid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"2" style=3D"width:16=
6.0pt;border-top:none;border-left:solid windowtext 1.0pt;border-bottom:soli=
d windowtext 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4=
pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system<o:p>=
</o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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
lid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" style=3D"width:166.0pt;border-t=
op:none;border-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1=
.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT<o:p></o:p></span><=
/b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid bl=
ack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3287&nbsp; GL support still available on qemuarm</span><=
span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:#1F497D"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">--<=
o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Ale=
xandru Georgescu<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">QA =
Engineer<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">SSG=
/SSD Open Source Technology Center Romania</span></b><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-----Original Message-----<br>
From: Flanagan, Elizabeth <a href=3D"mailto:[mailto:elizabeth.flanagan@inte=
l.com]">
[mailto:elizabeth.flanagan@intel.com]</a> <br>
Sent: Thursday, October 18, 2012 12:43 AM<br>
To: Zhang, Jessica<br>
Cc: Serban, Laurentiu; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoct=
oproject.org</a><br>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E961671C0AFIRSMSX104gercor_--

--_004_1FFB62CE8AEB0D4298B51122D8903E961671C0AFIRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="1 3_M5_RC4_FullPass_TR_updated_v2.xlsx"
Content-Description: 1 3_M5_RC4_FullPass_TR_updated_v2.xlsx
Content-Disposition: attachment;
	filename="1 3_M5_RC4_FullPass_TR_updated_v2.xlsx"; size=76503;
	creation-date="Tue, 23 Oct 2012 13:30:25 GMT";
	modification-date="Tue, 23 Oct 2012 13:30:25 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQDKVjnV4AEAAPgTAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
mE1u2zAQhfcFcgeB28CiybapW1j2oj/LNkDSAzDi2CIskQQ5Se3bdyQnQRA4DoQYyGwkSNTMe0MB
H6Q3X267triDlF3wlVDlVBTg62CdX1fi7/WvyUwUGY23pg0eKrGDLJaLsw/z612EXFC1z5VoEOM3
KXPdQGdyGSJ4WlmF1Bmky7SW0dQbswapp9MLWQeP4HGCfQ+xmP+Albltsfi5pdt7JzfOi+L7/rle
qhImxtbVBsmovPP2mcgkrFauBhvq245alzkmMDY3ANi1ZUyOFNMVINJgWciDmgnaPE70fqqSKgdj
uXExn9PoLyj0Ky9PdV/3h15HchaKS5Pwt+lodrlt5b+QNjchbMrjTcZuzbBFZWecf/B9RH94OMvh
pE5spJ9vaDzSh2bi4yMTH5+Y+PjMxMcFEx9fmPiYMfHxlYkPNeVihAtRFRekKi5MVVygqrhQVXHB
quLCVcUFrIoLWTUXsmouZNVcyKq5kFVzIavmQlbNhayaC1k1F7Lq9yIrUq4Ccji+HWVDm1d+sjPu
Wsgn/jDeN31NuTEJ7BVSYrM+uYGnvY/5oBjpMoWYKalKMH4XHmKhvnoSqREkdPAYDB0KWB4VKeYa
L/gs/II+R7NgD2jLIbdb/AcAAP//AwBQSwMEFAAGAAgAAAAhALVVMCP1AAAATAIAAAsACAJfcmVs
cy8ucmVscyCiBAIooAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAACMks9OwzAMxu9IvEPk++puSAihpbtMSLshVB7AJO4ftY2jJED39oQDgkpj
29H2588/W97u5mlUHxxiL07DuihBsTNie9dqeK2fVg+gYiJnaRTHGo4cYVfd3mxfeKSUm2LX+6iy
i4saupT8I2I0HU8UC/HscqWRMFHKYWjRkxmoZdyU5T2Gvx5QLTzVwWoIB3sHqj76PPmytzRNb3gv
5n1il06MQJ4TO8t25UNmC6nP26iaQstJgxXznNMRyfsiYwOeJtpcT/T/tjhxIkuJ0Ejg8zzfinNA
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
ADC/H91vBgAA3SkAABgAAAB4bC93b3Jrc2hlZXRzL3NoZWV0Ni54bWyMml1vm0gUhu9X2v+AuK8J
n26iOFXjKtpKu1K12o9rgnGMYowXSNL++z0zTJz4vNPDuYntzOPDy5nhGdJy/el7uw+e635ousMq
jBcXYVAfqm7THB5W4d9/3X34GAbDWB425b471KvwRz2En25+/eX6pesfh11djwFVOAyrcDeOx6so
Gqpd3ZbDojvWBxrZdn1bjvSxf4iGY1+XG/uldh8lFxdF1JbNIZwqXPWaGt1221T1l656auvDOBXp
6305Uv5h1xyH12ptpSnXlv3j0/FD1bVHKnHf7Jvxhy0aBm119fXh0PXl/Z7O+3ucldVrbfsByrdN
1XdDtx0XVC6aguI5X0aXEVW6ud40dAam7UFfb1fh5/hqXXwMo5tr26B/mvplePc+GLvj7/V2XNf7
PcEZzZOZgfuuezTo180qvKCiQ72vK9OLoKSX53rC1wlN4n/2MPSWDhGdjvH+/evx7uycfeuDTb0t
n/bjn93Lb3XzsBtpgWSLJDcVqm5POP0M2sYsHOpX+d2+vjSbcUfv8jC4r4fxrjFfC4PqaRi79l83
6EpMX6Z09sv06r5cpIt0OVsgmkLYc/lSjuXNdd+9BLSM6HDDsTSLMr5Kw8AEz3LqTmUGP5tRGqGF
Tb8f6NfPNxfX0TN1onLIrQeJz5G1Qy7fVcni7ARFFOWUx7Sf5aH2vOYxo6uQcp7iLHkeRNLTkexJ
2Rmms3xf5A05C0MHEsKY0ZkwiLyd9hRmIjRhiBHCmNGZMIjkrDMTQT/f2vuTztCCE8KY0ZkwiBQs
zERowhRiGDM6E8aDsDAToQmzFMOY0ZkwiHxkYSZCE8bsSD+/mszoTBhELlmYidCEoetfCGNGZ8Ig
ErOrfz0hmjQxbQtCHDs8k8fDxOA+cxidbWKPi9+5zw7PJZpUS1I5XcFxwibM1VH1SLZxjK4FHXuY
+M0pkwMdo0pkfPnzFR2jcDERMu82I5doYlSJCJISmeG5WUMm5mqOJ4Z+nmZ2+dbHs13L3E5IiVC9
2CNkYu5nexjlypYNHXv8yy7sWw+TLvnK1ls6ljVth+dmDUUdQyK9qs1NljRraGKcNWRivnfYwyhn
TRZ2jDrGRMjEfANxdTQrO5GdbYdnZs3DJGytrR2jSiQ7O0EfQ488TMJ3EceoEsnOThTO9jAJ30Uc
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
AAAAbyoAAHhsL3N0eWxlcy54bWxQSwECLQAUAAYACAAAACEA+2KlbZQGAACnGwAAEwAAAAAAAAAA
AAAAAADpMgAAeGwvdGhlbWUvdGhlbWUxLnhtbFBLAQItABQABgAIAAAAIQCZmWykNAMAALsLAAAZ
AAAAAAAAAAAAAAAAAK45AAB4bC93b3Jrc2hlZXRzL3NoZWV0MjkueG1sUEsBAi0AFAAGAAgAAAAh
ANUiQSQqBQAAJxgAABgAAAAAAAAAAAAAAAAAGT0AAHhsL3dvcmtzaGVldHMvc2hlZXQxLnhtbFBL
AQItABQABgAIAAAAIQDW647ILwUAAL8aAAAZAAAAAAAAAAAAAAAAAHlCAAB4bC93b3Jrc2hlZXRz
L3NoZWV0MjcueG1sUEsBAi0AFAAGAAgAAAAhANTcLf17AgAAIgYAABkAAAAAAAAAAAAAAAAA30cA
AHhsL3dvcmtzaGVldHMvc2hlZXQyNi54bWxQSwECLQAUAAYACAAAACEA88L2ujICAAD8BAAAGQAA
AAAAAAAAAAAAAACRSgAAeGwvd29ya3NoZWV0cy9zaGVldDI1LnhtbFBLAQItABQABgAIAAAAIQAD
5CzmeAQAAGkVAAAYAAAAAAAAAAAAAAAAAPpMAAB4bC93b3Jrc2hlZXRzL3NoZWV0My54bWxQSwEC
LQAUAAYACAAAACEAJcx0ZdIEAAC2GAAAGAAAAAAAAAAAAAAAAACoUQAAeGwvd29ya3NoZWV0cy9z
aGVldDIueG1sUEsBAi0AFAAGAAgAAAAhADttMkvBAAAAQgEAACMAAAAAAAAAAAAAAAAAsFYAAHhs
L3dvcmtzaGVldHMvX3JlbHMvc2hlZXQxLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAKI0GhjCAAAA
QgEAACQAAAAAAAAAAAAAAAAAslcAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQyNC54bWwucmVs
c1BLAQItABQABgAIAAAAIQBrPw/7wwAAAEIBAAAkAAAAAAAAAAAAAAAAALZYAAB4bC93b3Jrc2hl
ZXRzL19yZWxzL3NoZWV0MjIueG1sLnJlbHNQSwECLQAUAAYACAAAACEATFoqesIAAABCAQAAJAAA
AAAAAAAAAAAAAAC7WQAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDEyLnhtbC5yZWxzUEsBAi0A
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
NwUAADgiAAAnAAAAAAAAAAAAAAAAANvoAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRp
bmdzNS5iaW5QSwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAABX7gAAeGwv
cHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczEuYmluUEsBAi0AFAAGAAgAAAAhAHmynXs3
BQAAOCIAACcAAAAAAAAAAAAAAAAA0/MAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGlu
Z3MyLmJpblBLAQItABQABgAIAAAAIQB5sp17NwUAADgiAAAnAAAAAAAAAAAAAAAAAE/5AAB4bC9w
cmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzNi5iaW5QSwECLQAUAAYACAAAACEAebKdezcF
AAA4IgAAJwAAAAAAAAAAAAAAAADL/gAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5n
czcuYmluUEsBAi0AFAAGAAgAAAAhAHmynXs3BQAAOCIAACcAAAAAAAAAAAAAAAAARwQBAHhsL3By
aW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3M4LmJpblBLAQItABQABgAIAAAAIQDF3ZaAjQEA
AOgCAAARAAAAAAAAAAAAAAAAAMMJAQBkb2NQcm9wcy9jb3JlLnhtbFBLAQItABQABgAIAAAAIQDD
HTNSnQIAAI4HAAAQAAAAAAAAAAAAAAAAAIcMAQBkb2NQcm9wcy9hcHAueG1sUEsBAi0AFAAGAAgA
AAAhAHmynXs3BQAAOCIAACcAAAAAAAAAAAAAAAAAWhABAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmlu
dGVyU2V0dGluZ3MzLmJpblBLAQItABQABgAIAAAAIQB5sp17NwUAADgiAAAnAAAAAAAAAAAAAAAA
ANYVAQB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzNC5iaW5QSwUGAAAAADYANgBv
DwAAUhsBAAAA

--_004_1FFB62CE8AEB0D4298B51122D8903E961671C0AFIRSMSX104gercor_--
