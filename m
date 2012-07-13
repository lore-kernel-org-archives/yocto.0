Return-Path: <laurentiu.serban@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BA35E0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 13:52:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Jul 2012 13:52:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; 
	d="xml'?bin'?scan'208,217,72,48?xlsx'208,217,72,48,72,48?rels'208,217,72,48,72,48";
	a="165648976"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga001.jf.intel.com with ESMTP; 13 Jul 2012 13:52:55 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 13 Jul 2012 21:52:54 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.176]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.25]) with mapi id
	14.01.0355.002; Fri, 13 Jul 2012 21:52:54 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 1.1.2 Full Pass consolidated Test Report
Thread-Index: Ac1hOXgOphz3+dewSvm0jQHvIt2kdQ==
Date: Fri, 13 Jul 2012 20:52:52 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC19154E26@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: 1.1.2 Full Pass consolidated Test Report
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
X-List-Received-Date: Fri, 13 Jul 2012 20:53:00 -0000
X-Groupsio-MsgNum: 7887
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC19154E26IRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC19154E26IRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC19154E26IRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC19154E26IRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here are the results for the full pass testing on 1.1.2 release.

Issues:
Crownbay image was copied to the wrong folder which we didn=1B$B!G=1B(Bt fi=
nd and had no response from anybody, so all cases on crownbay are blocked. =
LTP on sugarbay is still running.
                FRI2 sato image was not created so FRI2 tests were blocked.

Summary:
There were 5 open bugs, three of them  were for core build system , they ar=
e lib64 sato image build failed due to non-existent tasks, core-image-sato =
ipk build failed due to dependency of lib32-ofono and mklibs-native failed =
to compile fedora17 64bit.  one issue for ADT, qemu launch failed due to no=
t finding GLIBC_2.14, reported as bug 2748 and another is Ioatdma error fou=
nd in dmesg log on Jasperforest. All these 5 bugs are also in Yocto 1.2  te=
st cycle. For build performance, one qemux86 sato build on a Core i7 machin=
e takes 115 minutes.
For non-intel platforms there is a new bug found for build image with PAM s=
upport, reported as bug 2743. This issue has been fixed in master branch bu=
t the patches aren't merged into edison.

Commit information
--------------------------------
Tree/Branch: poky/edison
Poky Commit: 8886aee5b9741c05886994967d9ecf420331c600


 =1B$B!!=1B(B

Critical bugs, more than 50% test cases are blocked

=1B$B!!=1B(B

Only Normal, Minor or Enhancement bugs, or less than 10% test cases failed

=1B$B!!=1B(B

Normal, Major and Critical bugs, and more than 10% test cases failed



Test Result Summary

Component

Target

Status

Comments

BSP

Beagleboard

GOOD

Everything runs well

Routerstationpro

GOOD

Everything runs well

Mpc8315e-rdb

GOOD

Everything runs well

eMenlow

GOOD

Vnc server issue (2700)

Blacksand

GOOD

syslog is not started by default in background on bsps

Crownbay-emgd

BLOCK

No image

Sugarbay

GOOD

Everything runs well

FRI2-sato-sdk

BLOCK

No image

HuronRiver-sato-sdk

GOOD

Everything runs well

Jasperforest-lsb

GOOD

Bug 2742 - system dmesg log check issue

QEMU

qemuarm

GOOD

Everything runs well

qemuppc

GOOD

Everything runs well

qemumips

GOOD

Everything runs well

qemux86

BUGGY

Zypper issue (2694)

qemux86-64

BUGGY

Zypper issue (2694)

Core build system

=1B$B!!=1B(B

BUGGY

Build image with PAM support failed.
Multilib issues (2744, 2747), mklibs compile failure (2746)

HOB

=1B$B!!=1B(B

GOOD

Everything runs well

Compliance

GOOD

LTP result: https://wiki.pokylinux.org/wiki/LTP_result
POSIX result: https://wiki.pokylinux.org/wiki/Posix_result

Stress

GOOD

Everything runs well

Distribution Support

GOOD

beecrypt-native failed to compile on Fedora17(final) 64bit

ADT

=1B$B!!=1B(B

BUGGY

2748 (qemu launch failure)




Detailed Test Result for each component

Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

Beagleboard Sato-SDK

40

0

40

0

0

Routerstationpro Sato-SDK

33

0

33

0

0

Mpc8315e-rdb Sato-SDK

36

0

36

0

0

eMenlow Sato-SDK

67

0

66

1(bug 2700)

0

n450 Sato-SDK

71

0

70

1 (bug 2646)

0

Crownbay-Sato-SDK

67

0

0

0

67

FRI2 Sato-SDK

86

0

0

0

86 (bug 2527)

HuronRiver Sato-SDK

61

0

61

0

0

Sugarbay Sato-SDK

68

0

68

0

0

Jasperforest lsb-SDK

32

0

31

1 (2742)

0

Qemuarm Sato

30

0

30

0

0

Qemuarm Sato-SDK

35

0

35

0

0

Qemumips Sato

30

0

30

0

0

Qemumips Sato-SDK

35

0

35

0

0

Qemuppc Sato

30

0

30

0

0

Qemuppc Sato-SDK

35

0

35

0

0

Qemux86-64 Sato

37

0

31

5 (bug 2694)

1 (2694)

Qemux86-64 Sato-SDK

37

0

31

5 (bug 2694)

1 (2694)

Qemux86 Sato

37

0

31

5 (bug 2694)

1 (2694)

Qemux86 Sato-SDK

37

0

31

5 (bug 2694)

1 (2694)

Core build system

20

0

17

3 (2746, 2744, 2747)

0

HOB

26

0

26

0

0

ADT

6

0

5

1 (2748)

0

Total

956



839

27

90



Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2694 [QEMU-X86_64]zypper refresh fail

Bug 2700 cannot reconnect to x11vnc

Bug 2742 ioatdma error happened on jasperforest platform with edison branch

Bug 2646 Windows switching failure

Core build system

Bug 2747  core-image-sato ipk build failed due to dependency of lib32-bluez=
4/lib32-bluez4/lib32-bluez4

Bug 2746 mklibs-native failed to compile fedora17-X86_64

Bug 2744  lib64 sato image build failed due to nonexistant task
Bug 2743 Useradd command fails after 10 retries with 1.1.2 20120630 build

ADT

Bug 2748 qemu cannot be started



Laurentiu Serban
QA Engineer
Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_E16513A01CAAFF40B65178C63CE45EEC19154E26IRSMSX102gercor_
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
	{font-family:"MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;}
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
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1662924834;
	mso-list-type:hybrid;
	mso-list-template-ids:-172561608 -1898955078 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
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
<p class=3D"MsoNormal">Hello, <o:p></o:p></p>
<p class=3D"MsoNormal">Here are the results for the full pass testing on 1.=
1.2 release.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issues: <o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Crownbay image was copied=
 to the wrong folder which we didn=1B$B!G=1B(Bt find and had no response fr=
om anybody, so all cases on crownbay are blocked. LTP on sugarbay is still =
running.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FRI2 sato image was not created so F=
RI2 tests were blocked.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: <o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">There were 5 open bugs, t=
hree of them&nbsp; were for core build system , they are lib64 sato image b=
uild failed due to non-existent tasks, core-image-sato ipk build failed due=
 to dependency of lib32-ofono and mklibs-native
 failed to compile fedora17 64bit.&nbsp; one issue for ADT, qemu launch fai=
led due to not finding GLIBC_2.14, reported as bug
<b>2748</b> and another is Ioatdma error found in dmesg log on Jasperforest=
. All these 5 bugs are also in Yocto 1.2&nbsp; test cycle. For build perfor=
mance, one qemux86 sato build on a Core i7 machine takes 115 minutes.<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">For non-intel platforms t=
here is a new bug found for build image with PAM support, reported as bug 2=
743. This issue has been fixed in master branch but the patches aren't merg=
ed into edison.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Commit information<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Tree/Branch: poky/edison<o:p></o:p></p>
<p class=3D"MsoNormal">Poky Commit: 8886aee5b9741c05886994967d9ecf420331c60=
0<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"671" style=3D"width:503.6pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:red;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">&nbsp;<span style=3D"font-size:10.0pt;line-height:115%;font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></=
span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Critical bugs, more than 50% test cases are blocked</span><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#9BBB59;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span><=
/p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Only Normal, Minor or Enhancement bugs, or less than 10% tes=
t cases failed</span><span style=3D"font-size:10.0pt;line-height:115%;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span><=
/p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Normal, Major and Critical bugs, and more than 10% test case=
s failed</span><span style=3D"font-size:10.0pt;line-height:115%;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></=
p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
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
<td width=3D"189" nowrap=3D"" rowspan=3D"10" style=3D"width:141.5pt;border:=
solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-left:.05in;text-ali=
gn:center;line-height:115%">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">BSP</span></b><b><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
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
<tr style=3D"height:17.9pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Mpc8315e-rdb<span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:17.9pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
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
;;color:black">eMenlow</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
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
;;color:black">Vnc server issue (2700)</span><span style=3D"font-size:10.0p=
t;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;col=
or:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Blacksand</span><span style=3D"font-size:10.0pt;line-height:=
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></p>
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
;;color:black">syslog is not started by default in background on bsps</span=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Crownbay-emgd</span><span style=3D"font-size:10.0pt;line-hei=
ght:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BLOCK</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">No image</span><span style=3D"font-size:10.0pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>=
</o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sugarbay</span><span style=3D"font-size:10.0pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>=
</o:p></span></p>
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
;;color:black">FRI2-sato-sdk</span><span style=3D"font-size:10.0pt;line-hei=
ght:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BLOCK</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">No image</span><span style=3D"font-size:10.0pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>=
</o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">HuronRiver-sato-sdk</span><span style=3D"font-size:10.0pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
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
;;color:black">Bug 2742 &#8211; system dmesg log check issue</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemuarm</span><span style=3D"font-size:10.0pt;line-height:11=
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
;;color:black">qemuppc</span><span style=3D"font-size:10.0pt;line-height:11=
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
;;color:black">qemumips</span><span style=3D"font-size:10.0pt;line-height:1=
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
id black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Zypper issue (2694)</span><span style=3D"font-size:10.0pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
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
<tr style=3D"height:51.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system</spa=
n></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Build image with PAM support failed.</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Multilib issues (2744, 2747), mklibs compile failure (2746)<=
/span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Compliance</span></b><=
b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">LTP result:
<a href=3D"https://wiki.pokylinux.org/wiki/LTP_result">https://wiki.pokylin=
ux.org/wiki/LTP_result</a><br>
POSIX result: <a href=3D"https://wiki.pokylinux.org/wiki/Posix_result">http=
s://wiki.pokylinux.org/wiki/Posix_result</a></span><span style=3D"font-size=
:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Stress</span></b><b><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Distribution Support</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">beecrypt-native failed to compile on Fedora17(final) 64bit</=
span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
id black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">2748 (qemu launch failure)</span><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"margin-left:96.8pt;text-indent:.5in"><o:p>&=
nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><br>
<br>
<o:p></o:p></p>
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
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Passed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
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
ght:115%">40<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">40</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
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
ght:115%">33<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">33</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
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
ght:115%">36<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
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
ght:115%"><b>eMenlow Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-he=
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
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">66</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(bug 2700)</span><span style=3D"font-s=
ize:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%"><b>n450 Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-heigh=
t:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">71<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">70</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (bug 2646)</span><span style=3D"font-=
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
ght:115%"><b>Crownbay-Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%"><o:p></o:p></span></b></p>
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
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">0</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">67</span><span style=3D"font-size:10.5p=
t;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>FRI2 Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-heigh=
t:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">86<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">0</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">86 (bug 2527)</span><span style=3D"font=
-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>HuronRiver Sato-SDK</b><b><span style=3D"font-size:10.5pt;line=
-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">61<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">61</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
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
ght:115%"><b>Sugarbay Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-h=
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
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">68</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
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
ght:115%"><b>Jasperforest lsb-SDK</b><b><span style=3D"font-size:10.5pt;lin=
e-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">32<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (2742)</span><span style=3D"font-size=
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
ght:115%">30<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
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
ght:115%">35<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
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
ght:115%">30<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
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
ght:115%">35<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
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
ght:115%">30<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
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
ght:115%">35<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
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
ght:115%">37<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">5 (bug 2694)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (2694)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%">37<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">5 (bug 2694)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (2694)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%">37<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">5 (bug 2694)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (2694)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%">37<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">5 (bug 2694)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (2694)</span><span style=3D"font-size=
:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%">20<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">17</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">3 (2746, 2744, 2747)</span><span style=
=3D"font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%">26<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">26</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
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
ght:115%">6<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">5</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (2748)</span><span style=3D"font-size=
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
ght:115%"><b>Total</b><b><span style=3D"font-size:10.5pt;line-height:115%">=
<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">956<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p><=
/span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.5pt;line-height:115%"><o:p>&nbsp;</o:=
p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">839</span><span style=3D"font-size:10=
.5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">27</span><span style=3D"font-size:10.5p=
t;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">90</span><span style=3D"font-size:10.5p=
t;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"930" style=3D"width:697.75pt;margin-left:-.9pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" valign=3D"bottom" style=3D"widt=
h:166.0pt;border:solid black 1.0pt;border-bottom:none;padding:0in 5.4pt 0in=
 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component</span></b><b=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:solid bla=
ck 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
<td width=3D"125" nowrap=3D"" rowspan=3D"4" style=3D"width:93.45pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System &amp; Core OS</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"4" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System Usage</span></b=
><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2694 [QEMU-X86_64]zypper refresh fail</span><span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2700 cannot reconnect to x11vnc</span><span style=3D"fon=
t-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2742 ioatdma error ha=
ppened on jasperforest platform with edison branch<span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2646 Windows switchin=
g failure<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"3" style=3D"width:16=
6.0pt;border-top:none;border-left:solid black 1.0pt;border-bottom:solid win=
dowtext 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system</spa=
n></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2747&nbsp; core-image-sato ipk build failed due to depen=
dency of lib32-bluez4/lib32-bluez4/lib32-bluez4</span><span style=3D"font-s=
ize:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2746 mklibs-native failed to compile fedora17-X86_64</sp=
an><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2744&nbsp; lib64 sato image build failed due to nonexist=
ant task</span><span style=3D"font-size:10.0pt;line-height:115%;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2743 Useradd command fails after 10 retries with 1.1.2 2=
0120630 build</span><span style=3D"font-size:10.0pt;line-height:115%;font-f=
amily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></sp=
an></p>
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
;;color:black">Bug 2748 qemu cannot be started</span><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Verdana&quot;,&quot;sans-serif&quot;;color:#244061">Laurentiu Serban<o:p></=
o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">QA Engineer
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">Open Source Technology Cen=
ter<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#1F497D">System Software Division R=
omania</span><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">Desk: &#43;40 31 8604742</=
span><b><span style=3D"color:#244061"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">iNET: 88451042<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_E16513A01CAAFF40B65178C63CE45EEC19154E26IRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC19154E26IRSMSX102gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Yocto 1.1.2 detailed_testreport_Full_Pass.xlsx"
Content-Description: Yocto 1.1.2 detailed_testreport_Full_Pass.xlsx
Content-Disposition: attachment;
	filename="Yocto 1.1.2 detailed_testreport_Full_Pass.xlsx"; size=68760;
	creation-date="Fri, 13 Jul 2012 18:51:02 GMT";
	modification-date="Fri, 13 Jul 2012 20:48:21 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQBIMsnc9AEAAEsRAAATANwBW0NvbnRlbnRfVHlwZXNdLnhtbCCi2AEooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAzFhRb5swEH6ftP+A/DoFB9Z13RTSh2193Cq1+wEuvgQrYFs+t03+fQ/SoHWK
FhhE+AWEkO8+7j5/95nF9bYqoydwqIzOWBLPWQQ6N1LpdcZ+39/MrliEXmgpSqMhYztAdr18/25x
v7OAEa3WmLHCe/uVc8wLqATGxoKmNyvjKuHp0a25FflGrIGn8/klz432oP3M1zHYcvGLADglIboV
zv8UFeXh25I/G7fBAsAjb27Jp5iisujbfnmNIGPC2lLlwhN+/qTlX7lnZrVSOUiTP1aUMUbrQMgm
WlXGbYIPdVzeHchlIEDSi3MD+Q4r8Vj66MeWOrYnyYPSI/bAOkVkcHfgPXEOe3Thy7m/vSstP4YC
5Oxs6FiRNA2kIulUrfEkhMCbazK4Fk2YExKFflcCDk71Vh/3QU9kbkX0VaVD0cbPIxej/c6e9bgK
BEcynIhv2fG/BUmCUYd5IK1Jz96aI2PcQYn95virh4tpZeO3sFAWD7vhSIZ/m7XTluvBmM3IHWqc
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
r3/zwav33nz92dvPv/j6Pz55tS7l//nDq/feffvp159/+uXbr9988up/3rx79W9/+d//68//ePvN
/333tzdvvn0vvsPX7z559bdvv/37n95//91nf3vz1afvfvP272++jjd/ffvNV59+G//6zX+8/+7v
37z59PPvPuirL9//8IMPfvf+V59+8fWr79/hT9/8K+/x9q9//eKzN8Xbz/7zqzdff/v9m3zz5stP
v41f/7u/ffH3d6/+8ufPv4h3L9/Qe9+8+esnr8LrP4W+ef361ft/+fN3n3z74s0/3nF+7+V7+fe3
b//vy0X9+SevPohv8u7Nl28+e3nX9979vx/f5iiL1x989IePf/+7l/d6/6c38/zjG5fffePTN+99
/uavn/7nl9/Ob/9RvfniP/72bVT+7W8+fnmDz95+Gavjf9/76osX/FfvffXpf3/35z+++Pzbv33y
6qOPfvP7j1/8/+fLSP9h/Nl89p/vvn371f799Xff0U8f/uEPHx7//OHDf/vxb373Yfrx//7m3bfl
Fy9fwz99r9/+8F7xzx/e6/Uf/9Wv46MfPjb++cPHfvg6fr//4ncRC79H+ODD5xv8y5/79Qcv3++P
bxCPP3wF8Q1+Kff+9/7f/RSLT7/99C9//ubtP96LT2G0eff3T1+e6dd/iu/4UXwaPnt5PbxcxBf/
+N0P7+WV7Bev5L94pfCV9+On+OnzxJ/Ur3+el4v08/zilfwXrxS+knye+FP89c/zcpF+nl+8kv/i
lcJXks8Tf2C//nleLtLP84tX8l+8UvhK8nleHqZf/fnEi/hov/wT8F9/+eDP7/9X/P/ysx9+dtnL
ByVfQ/6LVwpfST7j737+Gd97+f/4w4/jc/3js/FSEl+KP+yfvoTXP/sSfqXkw7Qk/74k/lv1fJc/
/qym+KHmu6cw+Sp//+tf5e9f/hH58cuMNT99fR9+8POvML392SfOX94/fovxOeMtfpt+B8Xvf/qf
4/I8ls/j9Xmsnsf6eWyex/Z57J7H/nkcnsfxeZyex9vzOD+P9+dxeR7X53F7Hvfn8XgeH8/j+TyG
wDnjHOle/r3/7h8RhAJEAaMAUkApwBRwCkAFpAJUAasAVkArwBXwCoAFxAJkAbMAWkAtwBZwy3DL
cMtwy3DLcMtwy3DLcMtwy3DLcMtwy3DLcMtwy3DLcMtwy3DLcMtwy3DLcMtwy3DLcMtxy3HLcctx
y3HLcctxy3HLcctxy3HLcctxy3HLcctxy3HLcctxy3HLcctxy3HLcctxy3ErcCtwK3ArcCtwK3Ar
cCtwK3ArcCtwK3ArcCtwK3ArcCtwK3ArcCtwK3ArcCtwK3ArcCtwu+B2we2C2wW3C24X3C64XXC7
4HbB7YLbBbcLbhfcLrhdcLvgdsHtgtsFtwtuF9wuuF1wu+B2wa3ErcStxK3ErcStxK3ErcStxK3E
rcStxK3ErcStxK3ErcStxK3ErcStxK3ErcStxK3ErcTtitsVtytuV9yuuF1xu+J2xe2K2xW3K25X
3K64XXG74nbF7YrbFbcrblfcrrhdcbvidsXtitsVtwq3CrcKtwq3CrcKtwq3CrcKtwq3CrcKtwq3
CrcKtwq3CrcKtwq3CrcKtwq3CrcKtwq3Crcatxq3Grcatxq3Grcatxq3Grcatxq3Grcatxq3Grca
txq3Grcatxq3Grcatxq3Grcatxq3BrcGtwa3BrcGtwa3BrcGtwa3BrcGtwa3BrcGtwa3BrcGtwa3
BrcGtwa3BrcGtwa3BrcGtxa3FrcWtxa3FrcWtxa3FrcWtxa3FrcWtxa3FrcWtxa3FrcWtxa3FrcW
txa3FrcWtxa3FrcOtw63DrcOtw63DrcOtw63DrcOtw63DrcOtw63DrcOtw63DrcOtw63DrcOtw63
DrcOtw63Hrcetx63Hrcetx63Hrcetx63Hrcetx63Hrcetx63Hrcetx63Hrcetx63Hrcetx63Hrce
twG3AbcBtwG3AbcBtwG3AbcBtwG3AbcBtwG3AbcBtwG3AbcBtwG3AbcBtwG3AbcBtwG3AbcRtxG3
EbcRtxG3EbcRtxG3EbcRtxG3EbcRtxG3EbcRtxG3EbcRtxG3EbcRtxG3EbcRtxG3CbcJtwm3CbcJ
twm3CbcJtwm3CbcJtwm3CbcJtwm3CbcJtwm3CbcJtwm3CbcJtwm3CbcJtxtuN9xuuN1wu+F2w+2G
2w23G2433G643XC74XbD7YbbDbcbbjfcbrjdcLvhdsPthtsNtxtuN9xm3GbcZtxm3GbcZtxm3Gbc
Ztxm3GbcZtxm3GbcZtxm3GbcZtxm3GbcZtxm3GbcZtxm3Gbc7rjdcbvjdsftjtsdtztud9zuuN1x
u+N2x+2O2x23O2533O643XG743bH7Y7bHbc7bnfc7rjdcVtwW3BbcFtwW3BbcFtwW3BbcFtwW3Bb
cFtwW3BbcFtwW3BbcFtwW3BbcFtwW3BbcFtwW3BbcVtxW3FbcVtxW3FbcVtxW3FbcVtxW3FbcVtx
W3FbcVtxW3FbcVtxW3FbcVtxW3FbcVtx23DbcNtw23DbcNtw23DbcNtw23DbcNtw23DbcNtw23Db
cNtw23DbcNtw23DbcNtw23DbcNtx23Hbcdtx23Hbcdtx23Hbcdtx23Hbcdtx23Hbcdtx23Hbcdtx
23Hbcdtx23Hbcdtx23E7cDtwO3A7cDtwO3A7cDtwO3A7cDtwO3A7cDtwO3A7cDtwO3A7cDtwO3A7
cDtwO3A7cDtwe+D2wO2B2wO3B24P3B64PXB74PbA7YHbA7cHbg/cHrg9cHvg9sDtgdsDtwduD9we
uD1we+D2wO3E7cTtxO3E7cTtxO3E7cTtxO3E7cTtxO3E7cTtxO3E7cTtxO3E7cTtxO3E7cTtxO3E
7cQtJA37gFwI0IWAXUia9knXPmnbJ337pHGfdO6T1n3Su0+a90n3PmnfJ/37pIGfdPCTFn7Sw0+a
+EkXP2njJ338pJFvJz/Yyg/28oPN/GA3P9jOD/bzgw39YEc/2NIP9vSDTf1gVz/Y1g/29YON/WBn
P9jaD/b2g839YHc/2N4P9veDDf5ghz/Y4g/2+INN/mCXP9jmD/b5g43+YKc/2OoP9vqDzf5gtz/Y
7g/2+4MN/2DHP9jyD/b8g03/YNc/2PYP9v2Djf9g5z/Y+g/2/oPN/2D3P9j+D/b/gwGAYAIgGAEI
ZgCCIYBgCiAYAwjmAIJBgGASIBgFCGYBgmGAYBogGAcI5gGCgYBgIiAYCQhmAoKhgGAqIBgLCOYC
gsGAYDIgGA0IZgOC4YBgOiAYDwjmA4IBgWBCIBgRCGYEgiGBYEogGBMI5gSCQYFgUiAYFQhmBYJh
gWBaIBgXCOYFgoGBYGIgGBkIZgaCoYFgaiAYGwjmBoLBgWByIBgdCGYHguGBYHogGB8I5geCAYJg
giAYIQhmCIIhgmCKIBgjCOYIgkGCYJIgGCUIZgmCYYJgmiAYJwjmCYKBgmCiIBgpCGYKgqGCYKog
GCsI5gqCwYJgsiAYLQhmC4LhgmC6IBgvCOYLggGDYMIgGDEIZgyCIYNgyiAYMwjmDIJBg2DSIBg1
CGYNgmGDYNogGDcI5g2CgYNg4iAYOQhmDoKhg2DqIBg7COYOgsGDYPIgGD0IZg+C4YNg+iAYPwjm
D4IBhGACIRhBCGYQgiGEYAohGEMI5hCCQYRgEiEYRQhmEYJhhGAaIRhHCOYRgoGEYCIhGEkIZhKC
oYRgKiEYSwjmEoLBhGAyIRhNCGYTguGEYDohGE8I5hOCAYVgQiEYUQhmFIIhhWBKIRhTCOYUgkGF
YFIhGFUIZhWCYYVgWiEYVwjmFYKBhWBiIRhZCGYWgqGFYGohGFsI5haCwYVgciEYXQhmF4LhhWB6
IRhfCOYXggGGYIIhGGEIZhiCIYZgiiEYYwjmGIJBhmCSIRhlCGYZgmGGYJohGGcI5hmCgYZgoiEY
aQhmGoKhhmCqIRhrCOYagsGGYLIhGG0IZhuC4YZguiEYbwjmG4IBh2DCIRhxCGYcgiGHYMohGHMI
5hyCQYdg0iEYdQhmHYJhh2DaIRh3COYdgoGHOGP2Xco/Gcl4mZ5LRlW+HxxJRjJiDfMUPx/JSG8/
Sqct8pf3/8VIxsdpUfGHn4YPLs9j+Txen8fqeayfx+Z5bJ/H7nnsn8fheRyfx+l5vD2P8/N4fx6X
53F9HrfncX8ej+fx8Tyez2MInDPOke45ksEZooBRACmgFGAKOAWgAlIBqoBVACugFeAKeAXAAmIB
soBZAC2gFmALuGW4ZbhluGU8WRluGW4ZbhluGW4ZbhluGW4ZbhluGW4ZbhluGW4ZbhluGW4Zbhlu
GW4ZbhluOW45bjluOW45bjluOW45bjluOW45bjluOW45bjluOW45bjluOW45bjluOW45bjluOW45
bgVuBW4FbgVuBW4FbgVuBW4FbgVuBW4FbgVuBW4FbgVuBW4FbgVuBW4FbgVuBW4FbgVuBW4X3C64
XXC74HbB7YLbBbcLbhfcLrhdcLvgdsHtgtsFtwtuF9wuuF1wu+B2we2C2wW3C24X3C64lbiVuJW4
lbiVuJW4lbiVuJW4lbiVuJW4lbiVuJW4lbiVuJW4lbiVuJW4lbiVuJW4lbiVuF1xu+J2xe2K2xW3
K25X3K64XXG74nbF7YrbFbcrblfcrrhdcbvidsXtitsVtytuV9yuuF1xu+JW4VbhVuFW4VbhVuFW
4VbhVuFW4VbhVuFW4VbhVuFW4VbhVuFW4VbhVuFW4VbhVuFW4VbhVuNW41bjVuNW41bjVuNW41bj
VuNW41bjVuNW41bjVuNW41bjVuNW41bjVuNW41bjVuNW49bg1uDW4Nbg1uDW4Nbg1uDW4Nbg1uDW
4Nbg1uDW4Nbg1uDW4Nbg1uDW4Nbg1uDW4Nbg1uDW4tbi1uLW4tbi1uLW4tbi1uLW4tbi1uLW4tbi
1uLW4tbi1uLW4tbi1uLW4tbi1uLW4tbi1uHW4dbh1uHW4dbh1uHW4dbh1uHW4dbh1uHW4dbh1uHW
4dbh1uHW4dbh1uHW4dbh1uHW4dbj1uPW49bj1uPW49bj1uPW49bj1uPW49bj1uPW49bj1uPW49bj
1uPW49bj1uPW49bj1uM24DbgNuA24DbgNuA24DbgNuA24DbgNuA24DbgNuA24DbgNuA24DbgNuA2
4DbgNuA24DbgNuI24jbiNuI24jbiNuI24jbiNuI24jbiNuI24jbiNuI24jbiNuI24jbiNuI24jbi
NuI24jbhNuE24TbhNuE24TbhNuE24TbhNuE24TbhNuE24TbhNuE24TbhNuE24TbhNuE24TbhNuF2
w+2G2w23G2433G643XC74XbD7YbbDbcbbjfcbrjdcLvhdsPthtsNtxtuN9xuuN1wu+F2w+2G24zb
jNuM24zbjNuM24zbjNuM24zbjNuM24zbjNuM24zbjNuM24zbjNuM24zbjNuM24zbjNsdtztud9zu
uN1xu+N2x+2O2x23O2533O643XG743bH7Y7bHbc7bnfc7rjdcbvjdsftjtsdtztuC24LbgtuC24L
bgtuC24LbgtuC24LbgtuC24LbgtuC24LbgtuC24LbgtuC24LbgtuC24LbituK24rbituK24rbitu
K24rbituK24rbituK24rbituK24rbituK24rbituK24rbituK24bbhtuG24bbhtuG24bbhtuG24b
bhtuG24bbhtuG24bbhtuG24bbhtuG24bbhtuG24bbhtuO247bjtuO247bjtuO247bjtuO247bjtu
O247bjtuO247bjtuO247bjtuO247bjtuO247bgduB24HbgduB24HbgduB24HbgduB24HbgduB24H
bgduB24HbgduB24HbgduB24HbgduB24P3B64PXB74PbA7YHbA7cHbg/cHrg9cHvg9sDtgdsDtwdu
D9weuD1we+D2wO2B2wO3B24P3B64nbiduJ24nbiduJ24nbiduJ24nbiduJ24nbiduJ24nbiduJ24
nbiduJ24nbiduJ24nbiduMWRDJrxAbk4kuENdnEkwxv0QtK2T/r2SeM+6dwnrfukd58075PufdK+
T/r3SQM/6eAnLfykh5808ZMuftLGT/r4SSPfTn4cyUDHXn4cyfBGUdv5cSTDMh7IOJLhDY9kHMnw
hocyjmR4w2MZRzK84cGMIxne8GjGkQxveDjjSIY3PJ5xJMMbHtA4kuENj2gcyeDGJn8cyfBGUfv8
cSTDMkVt9ceRDMsUtdsfRzIsU9SGfxzJsExRe/5xJMMyRW37x5EMyxS18x9HMixT1OZ/HMmgzPZ/
HMnwRlETAHEkwzJFDQHEkQzLFDUHEEcyLFPUKEAcybBMUdMAcSTDMkUNBMSRDMsUNRMQRzIsU9RY
QBzJoMxgQBzJ8EZRswFxJMMyRY0HxJEMyxQ1IRBHMixT1JBAHMmwTFFzAnEkwzJFjQrEkQzLFDUt
EEcyLFPUwEAcyaDMyEAcyfBGUVMDcSTDMkUNDsSRDMsUNTsQRzIsU9T4QBzJsExREwRxJMMyRQ0R
xJEMyxQ1RxBHMixT1ChBHMmgzDBBHMnwRlHzBHEkwzJFjRTEkQzLFDVVEEcyLFPUYEEcybBMUbMF
cSTDMkWNF8SRDMsUNWEQRzIsU9SQQRzJoMyYQRzJ8EZRkwZxJMMyRQ0bxJEMyxQ1bxBHMixT1MhB
HMmwTFFTB3EkwzJFDR7EkQzLFDV7EEcyLFPU+EEcyaDMAEIcyfBGUTMIcSTDMkWNIcSRDMsUNYkQ
RzIsU9QwQhzJsExR8whxJMMyRY0kxJEMyxQ1lRBHMixT1GBCHMmgzGhCHMnwRlHTCXEkwzJFDSjE
kQzLFDWjEEcyLFPUmEIcybBMUZMKcSTDMkUNK8SRDMsUNa8QRzIsU9TIQhzJoMzQQhzJ8EZRcwtx
JMMyRY0uxJEMyxQ1vRBHMixT1ABDHMmwTFEzDHEkwzJFjTHEkQzLFDXJEEcyLFPUMEMcyaDMOEMc
yfBGURMNcSTDMkUNNcSRDMsUNdcQRzIsU9RoQxzJsExR0w1xJMMyRQ04xJEMyxQ14xBHMixT1JhD
HMmgzKBDHMnwRlGzDnEkwzJFjTvEkQzLFP0h8ZCMZLwsk/nlSMZHr38TV8f8uKMh1vyTkYz09nfp
tEX+8v6/GMn4fVpUPFfIXJ7H8nm8Po/V81g/j83z2D6P3fPYP4/D8zg+j9PzeHse5+fx/jwuz+P6
PG7P4/48Hs/j43k8n8cQOGecI91zJIMzRAGjAFJAKcAUcApABaQCVAGrAFZAK8AV8AqABcQCZAGz
AFpALcAWcMtwy3DLcMt4sjLcMtwy3DLcMtwy3DLcMtwy3DLcMtwy3DLcMtwy3DLcMtwy3DLcMtwy
3DLcctxy3HLcctxy3HLcctxy3HLcctxy3HLcctxy3HLcctxy3HLcctxy3HLcctxy3HLcctxy3Arc
CtwK3ArcCtwK3ArcCtwK3ArcCtwK3ArcCtwK3ArcCtwK3ArcCtwK3ArcCtwK3ArcCtwuuF1wu+B2
we2C2wW3C24X3C64XXC74HbB7YLbBbcLbhfcLrhdcLvgdsHtgtsFtwtuF9wuuF1wK3ErcStxK3Er
cStxK3ErcStxK3ErcStxK3ErcStxK3ErcStxK3ErcStxK3ErcStxK3ErcbvidsXtitsVtytuV9yu
uF1xu+J2xe2K2xW3K25X3K64XXG74nbF7YrbFbcrblfcrrhdcbvidsWtwq3CrcKtwq3CrcKtwq3C
rcKtwq3CrcKtwq3CrcKtwq3CrcKtwq3CrcKtwq3CrcKtwq3Crcatxq3Grcatxq3Grcatxq3Grcat
xq3Grcatxq3Grcatxq3Grcatxq3Grcatxq3Grcatxq3BrcGtwa3BrcGtwa3BrcGtwa3BrcGtwa3B
rcGtwa3BrcGtwa3BrcGtwa3BrcGtwa3BrcGtxa3FrcWtxa3FrcWtxa3FrcWtxa3FrcWtxa3FrcWt
xa3FrcWtxa3FrcWtxa3FrcWtxa3FrcOtw63DrcOtw63DrcOtw63DrcOtw63DrcOtw63DrcOtw63D
rcOtw63DrcOtw63DrcOtw63Hrcetx63Hrcetx63Hrcetx63Hrcetx63Hrcetx63Hrcetx63Hrcet
x63Hrcetx63HrcdtwG3AbcBtwG3AbcBtwG3AbcBtwG3AbcBtwG3AbcBtwG3AbcBtwG3AbcBtwG3A
bcBtwG3AbcRtxG3EbcRtxG3EbcRtxG3EbcRtxG3EbcRtxG3EbcRtxG3EbcRtxG3EbcRtxG3EbcRt
xG3CbcJtwm3CbcJtwm3CbcJtwm3CbcJtwm3CbcJtwm3CbcJtwm3CbcJtwm3CbcJtwm3CbcLthtsN
txtuN9xuuN1wu+F2w+2G2w23G2433G643XC74XbD7YbbDbcbbjfcbrjdcLvhdsPthtsNtxm3GbcZ
txm3GbcZtxm3GbcZtxm3GbcZtxm3GbcZtxm3GbcZtxm3GbcZtxm3GbcZtxm3Gbc7bnfc7rjdcbvj
dsftjtsdtztud9zuuN1xu+N2x+2O2x23O2533O643XG743bH7Y7bHbc7bnfcFtwW3BbcFtwW3Bbc
FtwW3BbcFtwW3BbcFtwW3BbcFtwW3BbcFtwW3BbcFtwW3BbcFtwW3FbcVtxW3FbcVtxW3FbcVtxW
3FbcVtxW3FbcVtxW3FbcVtxW3FbcVtxW3FbcVtxW3FbcVtw23DbcNtw23DbcNtw23DbcNtw23Dbc
Ntw23DbcNtw23DbcNtw23DbcNtw23DbcNtw23Dbcdtx23Hbcdtx23Hbcdtx23Hbcdtx23Hbcdtx2
3Hbcdtx23Hbcdtx23Hbcdtx23Hbcdtx23A7cDtwO3A7cDtwO3A7cDtwO3A7cDtwO3A7cDtwO3A7c
DtwO3A7cDtwO3A7cDtwO3A7cDtweuD1we+D2wO2B2wO3B24P3B64PXB74PbA7YHbA7cHbg/cHrg9
cHvg9sDtgdsDtwduD9weuD1wO3E7cTtxO3E7cTtxO3E7cTtxO3E7cTtxO3E7cTtxO3E7cTtxO3E7
cTtxO3E7cTtxO3E7cYsjGTTjA3JxJMMb7OJIhjfoxZEMb/ALSeM+6dwnrfukd58075PufdK+T/r3
SQM/6eAnLfykh5808ZMuftLGT/r4SSPfTn4cycDAXn4cyfBGUdv5cSTDMkXt6MctGZbxTMYtGd7w
VMYtGd7wXMYtGd7wZMYtGd7wbMYtGd7wdMYtGd7wfMYtGd7whMYtGd74jNrkjyMZlNnmj1syvPEZ
tdMft2RY5jNqsz9uybBMUfv9cUuGZYra8o9bMixT1K5/3JJhmaI2/uOWDMsUtfcft2RYpqjt/ziS
QZkBgLglwxtFzQDELRmWKWoMIG7JsExRkwBxS4ZlihoGiFsyLFPUPEDckmGZokYC4pYMyxQ1FRC3
ZFimqMGAOJJBmdGAuCXDG0VNB8QtGZYpakAgbsmwTFEzAnFLhmWKGhOIWzIsU9SkQNySYZmihgXi
lgzLFDUvELdkWKaokYE4kkGZoYG4JcMbRc0NxC0ZlilqdCBuybBMUdMDcUuGZYoaIIhbMixT1AxB
3JJhmaLGCOKWDMsUNUkQt2RYpqhhgjiSQZlxgrglwxtFTRTELRmWKWqoIG7JsExRcwVxS4Zlihot
iFsyLFPUdEHckmGZogYM4pYMyxQ1YxC3ZFimqDGDOJJBmUGDuCXDG0XNGsQtGZYpatwgbsmwTFET
B3FLhmWKGjqIWzIsU9TcQdySYZmiRg/ilgzLFDV9ELdkWKaoAYQ4kkGZEYS4JcMbRU0hxC0Zlilq
ECFuybBMUbMIcUuGZYoaR4hbMixT1ERC3JJhmaKGEuKWDMsUNZcQt2RYpqjRhDiSQZnhhLglwxtF
zSfELRmWKWpEIW7JsExRUwpxS4ZlihpUiFsyLFPUrELckmGZosYV4pYMyxQ1sRC3ZFimqKGFOJJB
mbGFuCXDG0VNLsQtGZYpanghbsmwTFHzC3FLhmWKGmGIWzIsU9QUQ9ySYZmiBhnilgzLFDXLELdk
WKaocYY4kkGZgYa4JcMbRc00xC0ZlilqrCFuybBMUZMNcUuGZYoabohbMixT1HxD3JJhmaJGHOKW
DMsUNeUQt2RYpqhBhziSQZlRh7glwxtFTTvELRmWKWrgIW7J+K4sGcl4/cGvzmS8/siZjJeifzKU
8bPrP6QDF/l3n+KTV68/Tt7kj2lVEat+nEC4cC45XzlXnGvODeeWc8e55zxwHjlPnG+cZ853zgvn
lfPGeed8cH5wPjmH4F8y//KC+iNX0C6IF9QL8gX9goBBwSBh0DCIGFQMMgYdg5BBySBl0DKIGdQM
cgY9g6BB0UzRTNFM0UzRTNFM0UzRTNFM0UzRTNFM0UzRTNFM0UzRTNFM0UzRTNFM0UzRTNFM0UzR
TNFc0VzRXNFc0VzRXNFc0VzRXNFc0VzRXNFc0VzRXNFc0VzRXNFc0VzRXNFc0VzRXNFc0VzRQtFC
0ULRQtFC0ULRQtFC0ULRQtFC0ULRQtFC0ULRQtFC0ULRQtFC0ULRQtFC0ULRQtFC0YuiF0Uvil4U
vSh6UfSi6EXRi6IXRS+KXhS9KHpR9KLoRdGLohdFL4peFL0oelH0ouhF0YuiF0VLRUtFS0VLRUtF
S0VLRUtFS0VLRUtFS0VLRUtFS0VLRUtFS0VLRUtFS0VLRUtFS0VLRUtFr4peFb0qelX0quhV0aui
V0Wvil4VvSp6VfSq6FXRq6JXRa+KXhW9KnpV9KroVdGroldFr4peFa0UrRStFK0UrRStFK0UrRSt
FK0UrRStFK0UrRStFK0UrRStFK0UrRStFK0UrRStFK0UrRStFa0VrRWtFa0VrRWtFa0VrRWtFa0V
rRWtFa0VrRWtFa0VrRWtFa0VrRWtFa0VrRWtFa0VbRRtFG0UbRRtFG0UbRRtFG0UbRRtFG0UbRRt
FG0UbRRtFG0UbRRtFG0UbRRtFG0UbRRtFG0VbRVtFW0VbRVtFW0VbRVtFW0VbRVtFW0VbRVtFW0V
bRVtFW0VbRVtFW0VbRVtFW0VbRXtFO0U7RTtFO0U7RTtFO0U7RTtFO0U7RTtFO0U7RTtFO0U7RTt
FO0U7RTtFO0U7RTtFO0U7RXtFe0V7RXtFe0V7RXtFe0V7RXtFe0V7RXtFe0V7RXtFe0V7RXtFe0V
7RXtFe0V7RXtFR0UHRQdFB0UHRQdFB0UHRQdFB0UHRQdFB0UHRQdFB0UHRQdFB0UHRQdFB0UHRQd
FB0UHRQdFR0VHRUdFR0VHRUdFR0VHRUdFR0VHRUdFR0VHRUdFR0VHRUdFR0VHRUdFR0VHRUdFR0V
nRSdFJ0UnRSdFJ0UnRSdFJ0UnRSdFJ0UnRSdFJ0UnRSdFJ0UnRSdFJ0UnRSdFJ0UnRSdFL0pelP0
puhN0ZuiN0Vvit4UvSl6U/Sm6E3Rm6I3RW+K3hS9KXpT9KboTdGbojdFb4reFL0pelN0VnRWdFZ0
VnRWdFZ0VnRWdFZ0VnRWdFZ0VnRWdFZ0VnRWdFZ0VnRWdFZ0VnRWdFZ0VnRW9K7oXdG7ondF74re
Fb0relf0ruhd0buid0Xvit4VvSt6V/Su6F3Ru6J3Re+K3hW9K3pX9K7oXdFF0UXRRdFF0UXRRdFF
0UXRRdFF0UXRRdFF0UXRRdFF0UXRRdFF0UXRRdFF0UXRRdFF0UXRVdFV0VXRVdFV0VXRVdFV0VXR
VdFV0VXRVdFV0VXRVdFV0VXRVdFV0VXRVdFV0VXRVdFV0U3RTdFN0U3RTdFN0U3RTdFN0U3RTdFN
0U3RTdFN0U3RTdFN0U3RTdFN0U3RTdFN0U3RTdFd0V3RXdFd0V3RXdFd0V3RXdFd0V3RXdFd0V3R
XdFd0V3RXdFd0V3RXdFd0V3RXdFd0V3RQ9FD0UPRQ9FD0UPRQ9FD0UPRQ9FD0UPRQ9FD0UPRQ9FD
0UPRQ9FD0UPRQ9FD0UPRQ9FD0YeiD0Ufij4UfSj6UPSh6EPRh6IPRR+KPhR9KPpQ9KHoQ9GHog9F
H4o+FH0o+lD0oehD0YeiD0VPRU9FT0VPRU9FT0VPRU9FT0VPRU9FT0VPRU9FT0VPRU9FT0VPRU9F
T0VPRU9FT0VPRU9F40SR0ZGgaZwpSu5UjVNFyZ2uca4ouVM2ThYld9qGNF6S5kvSgEmaMEkjJmnG
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
ktj0DqcIZ4FSJFOOGbQmhTk3Rzrl4DB1mtrjF5RBioHbDAIPk26OfMrBYeo0kUdwkGLgNgPAl2HW
NXFyKfOpglOnyWrBUYqCjxkEHqbdJTAqAIcp6i9Ui4HbSgg8zLtL4F0ADlNUYKgWA7eVEHiYeJfI
qWyOw9SKGgylGLjTvMsw85q4f44DYcoV9RWqxcBtJTTiYZ41m5z84FCPbI6DFAO3mXNwu9HN7mY6
VI/1b1X32Oz7aFs/qK+2q31YyfSfMk9nd7rB14b2YN6lOvrSDmoD24+fntQWwVrtK0lm6bRgogbz
oW0H14tqQ4rm+lwPz4foUB3q7nPzr9ovpxbItmvUZkGzR3AdH9pu6KpmUHzXzWYddx83Ztfc/Lij
8fY/AAAA//8DAFBLAwQUAAYACAAAACEAtOUHlWEcAAAGywAAGQAAAHhsL3dvcmtzaGVldHMvc2hl
ZXQxNC54bWyc3F1z2mYehvHzndnvwHC+cewmaTeTpHPrXSCBEHoBzlyHNJ7aJmto0n77FbaTur7u
6XT3JJC/Hz16+XF66c2Pv11fjT5vb/eXu5u349Nnz8ej7c3F7v3lzc9vx22T/OuH8Wh/OL95f361
u9m+Hf++3Y9/fPfPf7z5srv9Zf9xuz2Mhh1u9m/HHw+HT69PTvYXH7fX5/tnu0/bm+EvH3a31+eH
4b+3P5/sP91uz9/fHXR9dXL2/Pmrk+vzy5vx/Q6vb//OHrsPHy4vttHu4tfr7c3hfpPb7dX5Ybj+
/cfLT/vxuzfvL4e/HW9odLv98Hasl69V5t+/GJ+8e3N38u5y+2X/6PvosPtUbD8cwu3V1XH5eHS8
uZ92u1+OK/P3b8fPh13326vtxfE0o/Ph4/P2fnU4rN7/5+48w9fhDCffTvH4+9fTJXePo7odvd9+
OP/16lDvvmTby58/HoZn/+LZ2d0OF7urYfnw7+j68mgyHl2f/3b3+eXy/eHj2/GLs2enw9LB5fer
geRsPPppuz8kl8dNxqOLX/eH3XV/v/T0eEnfthpW3m01fD5s9eqH/3Or7x62Gj4ftjp99XSrv7iS
Fw+HD58Ph//78f38xZHDfd8/jlff/eCPPiLcP8M7iuj8cP7uze3uy2j4gR2f2qfz48/19PXp87Ph
6oevZ6++PrV7nuNjHJ7acf3xx3BccfcYj4Pg6eDuB/B4RfR0Rfx0kDwanAwX9u3qhuv4367ueMBw
U4PnYH/86X9+9/zNyefjA3i4geDbkuMP4XgHISbRw+S7b3cZY5JgkmKSYZJjMsFkikmBSYnJDJM5
JhUmC0xqTJaYNJi0mHSY9JisMFljssFE4uir6h9i+sr6aERXEVaUFWlFWxFX1BV5RV8RWBQWiUVj
EVlUFplFZxFalBapRWsRW9QOqB1QO6B2QO2A2gG1A2oH1A6oHVA7oHZA7YDaAbUDagfUDqgdUDug
dkDtgNoBtQNqB9QOqB1QO6R2SO2Q2iG1Q2qH1A6pHVI7pHZI7ZDaIbVDaofUDqkdUjukdkjtkNoh
tUNqh9QOqR1SO6R2SO2I2hG1I2pH1I6oHVE7onZE7YjaEbUjakfUjqgdUTuidkTtiNoRtSNqR9SO
qB1RO6J2RO2I2hG1Y2rH1I6pHVM7pnZM7ZjaMbVjasfUjqkdUzumdkztmNoxtWNqx9SOqR1TO6Z2
TO2Y2jG1Y2rH1E6onVA7oXZC7YTaCbUTaifUTqidUDuhdkLthNoJtRNqJ9ROqJ1QO6F2Qu2E2gm1
E2on1E6onVA7pXZK7ZTaKbVTaqfUTqmdUjuldkrtlNoptVNqp9ROqZ1SO6V2Su2U2im1U2qn1E6p
nVI7pXZK7YzaGbUzamfUzqidUTujdkbtjNoZtTNqZ9TOqJ1RO6N2Ru2M2hm1M2pn1M6onVE7o3ZG
7YzaGbVzaufUzqmdUzundk7tnNo5tXNq59TOqZ1TO6d2Tu2c2jm1c2rn1M6pnVM7p3ZO7ZzaObVz
aufUnlB7Qu0JtSfUnlB7Qu0JtSfUnlB7Qu0JtSfUnlB7Qu0JtSfUnlB7Qu0JtSfUnlB7Qu0JtSfU
nlB7Qu0ptafUnlJ7Su0ptafUnlJ7Su0ptafUnlJ7Su0ptafUnlJ7Su0ptafUnlJ7Su0ptafUnlJ7
Su0ptafULqhdULugdkHtgtoFtQtqF9QuqF1Qu6B2Qe2C2gW1C2oX1C6oXVC7oHZB7YLaBbULahfU
LqhdULukdkntktoltUtql9QuqV1Su6R2Se2S2iW1S2qX1C6pXVK7pHZJ7ZLaJbVLapfULqldUruk
dkntGbVn1J5Re0btGbVn1J5Re0btGbVn1J5Re0btGbVn1J5Re0btGbVn1J5Re0btGbVn1J5Re0bt
GbVn1J5Te07tObXn1J5Te07tObXn1J5Te07tObXn1J5Te07tObXn1J5Te07tObXn1J5Te07tObXn
1J5Te07titoVtStqV9SuqF1Ru6J2Re2K2hW1K2pX1K6oXVG7onZF7YraFbUralfUrqhdUbuidkXt
itoVtRfUXlB7Qe0FtRfUXlB7Qe0FtRfUXlB7Qe0FtRfUXlB7Qe0FtRfUXlB7Qe0FtRfUXlB7Qe0F
tRfUXlC7pnZN7ZraNbVratfUrqldU7umdk3tmto1tWtq19SuqV1Tu6Z2Te2a2jW1a2rX1K6pXVO7
pnZN7SW1l9ReUntJ7SW1l9ReUntJ7SW1l9ReUntJ7SW1l9ReUntJ7SW1l9ReUntJ7SW1l9ReUntJ
7SW1l9RuqN1Qu6F2Q+2G2g21G2o31G6o3VC7oXZD7YbaDbUbajfUbqjdULuhdkPthtoNtRtqN9Ru
qN1Qu6V2S+2W2i21W2q31G6p3VK7pXZL7ZbaLbVbarfUbqndUruldkvtltottVtqt9Ruqd1Su6V2
S+2O2h21O2p31O6o3VG7o3ZH7Y7aHbU7anfU7qjdUbujdkftjtodtTtqd9TuqN1Ru6N2R+2O2h21
e2r31O6p3VO7p3ZP7Z7aPbV7avfU7qndU7undk/tnto9tXtq99Tuqd1Tu6d2T+2e2j21e2r31F5R
e0XtFbVX1F5Re0XtFbVX1F5Re0XtFbVX1F5Re0XtFbVX1F5Re0XtFbVX1F5Re0XtFbVX1F5Re0Xt
NbXX1F5Te03tNbXX1F5Te03tNbXX1F5Te03tNbXX1F5Te03tNbXX1F5Te03tNbXX1F5Te03tNbXX
1N5Qe0PtDbU31N5Qe0PtDbU31N5Qe0PtDbU31N5Qe0PtDbU31N5Qe0PtDbU31N5Qe0PtDbU31N5Q
e0NtuVhE9JbLRURxuWDEFSMuGXHNiItGXDXishHXjbhwxJUjLh1x7YiLR1w94vIR14+4gMQVJC4h
cQ2Ji0hMRSKTkch0JDIhiUxJIpOSyLQkMjGJTE0ik5PI9CQyQYlMUSKTlMg0JTJRiUxVIpOVyHQl
MmGJTFkik5bItCUycYlMXSKTl8j0JTKBiUxhIpOYyDQmMpGJTGUik5nIdCYyoYlMaSKTmsi0JjKx
iUxtIpObyPQmMsGJTHEik5zINCcy0YlMdSKTnch0JzLhiUx5IpOeyLQnMvGJTH0ik5/I9CcyAYpM
gSKToMg0KDIRikyFIpOhyHQoMiGKTIkik6LItCgyMYpMjSKTo8j0KDJBikyRIpOkyDQpMlGKTJUi
k6XIdCkyYYpMmSKTpsi0KTJxikydIpOnyPQpMoGKTKEik6jINCoykYpMpSKTqch0KjKhikypIpOq
yLQqMrGKTK0ik6vI9CoywYpMsSKTrMg0KzLRiky1IpOtyHQrMuGKTLkik67ItCsy8YpMvSKTr8j0
KzIBi0zBIpOwyDQsMhGLTMUik7HIdCwyIYtMySKTssi0LDIxi0zNIpOzyPQsMkGLTNEik7TINC0y
UYtM1SKTtch0LTJhi0zZIpO2yLQtMnGLTN0ik7fI9C0ygYtM4SKTuMg0LjKRi0zlIpO5yHQuMqGL
TOkik7rItC4ysYtM7SKTu8j0LjLBi0zxIpO8yDQvMtGLTPUik73IdC8y4YtM+SKTvsi0LzLxi0z9
IpO/yPQvMgGMTAEjk8DINDAyEYxMBSOTwch0MDIhjEwJI5PCyLQwMjGMTA0jk8PI9DAyQYxMESOT
xMg0MTJRjEwVI5PFyHQxMmGMTBkjk8bItDEycYxMHSOTx8j0MTKBjEwhI5PIyDQyMpGMTCUjk8nI
dDIyoYxMKSOTysi0MjKxjEwtI5PLyPQyMsGMTDEjk8zINDMy0YxMNSOTzch0MzLhjEw5I5POyLQz
MvGMTD0jk8/I9DMyAY1MQSOT0Mg0NDIRjUxFI5PRyHQ0MiGNTEkjk9LItDQyMY1MTSOT08j0NDJB
jUxRI5PUyDQ1MlGNTFUjk9XIdDUyYY1MWSOT1si0NTJxjUxdI5PXyPQ1MoGNTGEjk9jINDYykY1M
ZSOT2ch0NjKhjUxpI5PayLQ2w3v+Hr8s608vV/v+775cbXR8G9+Ll99eAXc8cHjJ2vCyuW8vWTt9
8pI1s+Tsz0vC+yUvHu9y9vLJouhhnz/e4RVjkmCSYpJhkmMywWSKSYFJickMkzkmFSYLTGpMlpg0
mLSYdJj0mKwwWWOywUTiKODoQfrlH4iiqwgryoq0oq2IK+qKvKKvCCwKi8SisYgsKovMorMILUqL
1KK1iC1qB9QOqB1QO6B2QO2A2gG1A2oH1A6oHVA7oHZA7YDaAbUDagfUDqgdUDugdkDtgNoBtQNq
B9QOqB1SO6R2SO2Q2iG1Q2qH1A6pHVI7pHZI7ZDaIbVDaofUDqkdUjukdkjtkNohtUNqh9QOqR1S
O6R2RO2I2hG1I2pH1I6oHVE7onZE7YjaEbUjakfUjqgdUTuidkTtiNoRtSNqR9SOqB1RO6J2RO2I
2jG1Y2rH1I6pHVM7pnZM7ZjaMbVjasfUjqkdUzumdkztmNoxtWNqx9SOqR1TO6Z2TO2Y2jG1Y2on
1E6onVA7oXZC7YTaCbUTaifUTqidUDuhdkLthNoJtRNqJ9ROqJ1QO6F2Qu2E2gm1E2on1E6onVI7
pXZK7ZTaKbVTaqfUTqmdUjuldkrtlNoptVNqp9ROqZ0+0f4vAAAA//+UnNty28YWRH9FpQ+IxauS
lO2qDYAgQBK8gfc3nVi2VefEcslK8vuHJMYSgdUKBnlIlUebo9asBhqk3Xr6cD1c3l5f/fhw3etc
v/v4/o+r01LOpRWX1lzacGnLpR2X9lw6YCkxLgVcCrkUcWnApZhLQy4lXEq5NOLSmEsTLmVcmnJp
xqU5lxZcIu2EtBPSTkg7Ie2EtBPSTkg7Ie2UtFPSTkk7Je2UtFPSTkk7Je2UtFPSTkk7Je2UtFPS
Tkk7Je2UtFPSTkk7Je2UtFPSTkk7Je2UtFPSHpH2iLRHpD0i7RFpj0h7RNoj0h6R9oi0R6Q9Iu0R
aY9Ie0TaI9IekfaItEekPSLtEWmPSHtE2iPSHpH2iLTHpD0m7TFpj0l7TNpj0h6T9pi0x6Q9Ju0x
aY9Je0zaY9Iek/aYtMekPSbtMWmPSXtM2mPSHpP2mLTHpD0m7QlpT0h7QtoT0p6Q9oS0J6Q9Ie0J
aU9Ie0LaE9KekPaEtCekPSHtCWlPSHtC2hPSnpD2hLQnpD0h7QlpT0g7I+2MtDPSzkg7I+2MtDPS
zkg7I+2MtDPSzkg7I+2MtDPSzkg7I+2MtDPSzkg7I+2MtDPSzkg7I+2MtKekPSXtKWlPSXtK2lPS
npL2lLSnpD0l7SlpT0l7StpT0p6S9pS0p6Q9Je0paU9Je0raU9KekvaUtKekPSXtGWnPSHtG2jPS
npH2jLRnpD0j7Rlpz0h7Rtoz0p6R9oy0Z6Q9I+0Zac9Ie0baM9KekfaMtGekPSPtGWnPSHtO2nPS
npP2nLTnpD0n7Tlpz0l7Ttpz0p6T9py056Q9J+05ac9Je07ac9Kek/actOekPSftOWnPSXtO2nPS
XpD2grQXpL0g7QVpL0h7QdoL0l6Q9oK0F6S9IO0FaS9Ie0HaC9JekPaCtBekvSDtBWkvSHtB2gvS
XpD2grSXpL0k7SVpL0l7SdpL0l6S9pK0l6S9JO0laS9Je0naS9JekvaStJekvSTtJWkvSXtJ2kvS
XpL2krSXpL0k7Zy0c9LOSTsn7Zy0c9LOSTsn7Zy0c9LOSTsn7Zy0c9LOSTsn7Zy0c9LOSTsn7Zy0
c9LOSTsn7Zy0c9JekfaKtFekvSLtFWmvSHtF2ivSXpH2irRXpL0i7RVpr0h7Rdor0l6R9oq0V6S9
Iu0Vaa9Ie0XaK9JekfaKtNekvSbtNWmvSXtN2mvSXpP2mrTXpL0m7TVpr0l7Tdpr0l6T9pq016S9
Ju01aa9Je03aa9Jek/aatNekvSbtDWlvSHtD2hvS3pD2hrQ3pL0h7Q1pb0h7Q9ob0t6Q9oa0N6S9
Ie0NaW9Ie0PaG9LekPaGtDekvSHtDWlvSHtL2lvS3pL2lrS3pL0l7S1pb0l7S9pb0t6S9pa0t6S9
Je0taW9Je0vaW9LekvaWtLekvSXtLWlvSXtL2lvS3pH2jrR3pL0j7R1p70h7R9o70t6R9o60d6S9
I+0dae9Ie0faO9LekfaOtHekvSPtHWnvSHtH2jvS3pH2jrT3pL0n7T1p70l7T9p70t6T9p6096S9
J+09ae9Je0/ae9Lek/aetPekvSftPWnvSXtP2nvS3pP2nrT3pL0n7QNpH0j7QNoH0j6Q9oG0D6R9
IO0DaR9I+0DaB9I+kPaBtA+kfSDtA2kfSPtA2gfSPpD2gbQPpH0g7QNpH0jbjLjNyNuMwM1I3IzI
zcjcjNDNSN2M2M3I3YzgzUjejOjNyN6M8M1I34z4zcjfjAYwowPMaAEzesCMJjCjC8xoAzPhg0D4
IBA+CIQPAuGDQPggED4IhA8C4YNA+CAQPgiEDwLhg0D4IBA+CIQPAuGDQPggED4IhA8C4YNA+CAQ
PgiEDwLhg0D4IBA+CIUPQuGDUPggFD4IhQ9C4YNQ+CAUPgiFD0Lhg1D4IBQ+CIUPQuGDUPggFD4I
hQ9C4YNQ+CAUPgiFD0Lhg1D4IBQ+CIUPQuGDSPggEj6IhA8i4YNI+CASPoiEDyLhg0j4IBI+iIQP
IuGDSPggEj6IhA8i4YNI+CASPoiEDyLhg0j4IBI+iIQPIuGDSPggEj4YCB8MhA8GwgcD4YOB8MFA
+GAgfDAQPhgIHwyEDwbCBwPhg4HwwUD4YCB8MBA+GAgfDIQPBsIHA+GDgfDBQPhgIHwwED4YCB8M
hA9i4YNY+CAWPoiFD2Lhg1j4IBY+iIUPYuGDWPggFj6IhQ9i4YNY+CAWPoiFD2Lhg1j4IBY+iIUP
YuGDWPggFj6IhQ9i4YNY+GAofDAUPhgKHwyFD4bCB0Phg6HwwVD4YCh8MBQ+GAofDIUPhsIHQ+GD
ofDBUPhgKHwgmi0mqi02FD4YCh8MhQ+GwgdD4YOh8MFQ+EBUXCwRPkiEDxLhg0T4IBE+SIQPEuGD
RPggET5IhA8S4YNE+CARPkiEDxLhg0T4IBH3A1F6MdF6MVF7MdF7MVF8MdF8MVF9MdF9MVF+MdF+
MVF/MdF/MVGAMdGAMVGBMdGBMVGCMdGCMVGDMdGDMVGEMdGEMVGFMdGFMVGGMdGGMVGHMdGHMVGI
MdGIMVGJMdGJMVGKMdGKMVGLMdGLMVGMMdGMMVGNMdGNMVGOMdGOMVGPMdGPMVGQMdGQMVGRMdGR
MVGSMdGSMVGTMdGTMVGUMdGUMVGVMdGVMVGWMdGWMVGXMdGXMVGYMdGYMVGZMdGZMVGaMdGaMVGb
MdGbMVGcMdGcMVGdMdGdMVGeMdGeMVGfMdGfMVGgMdGgMVGhMdGhMVGiMdGiMVGjMdGjMVGkMdGk
MVGlMdGlMVGmMdGmMVGnMdGnMVGoMdGoMVGpMdGpMVGqMdGqMVGrMdGrMVGsMdGsMVGtMdGtMVGu
MdGuMVGvMdGvMVGwMdGwMVGxMdGxMVGyMdGyMVGzMdGzMVG0MdG0MVG1MdG1sXLZ5t3T4z8f3x//
d2qX/3qsm3+/+3asnLd+b920O+f2ebt/ffXHXz+eH/+MH5/+vHs+fvHatdHt9IIP19329dVx+cdx
+e+P7e6v79/9/fH9uz/cUFAMnbZ5GeqUR8Ji5Nhzfx3pvoyUJP7WVOLpBbUSi6GSxN7L9z8X78Ni
xEdi66apxvMrakW6qZLKfkWlm/GS2Wos8/SKepnFVEnmbVVmMeMl82iuZqZsnV5RL7OYKsmsODd0
O3nJPF0sja6dVnF51Vw8bqok87fqaRY7ecnsNpZ5ekX9aRZTJZnd6lXeKoa8dPYa6zy9ol5nMVXS
2bqpnmcx5KXzeFdriP30inqdxVRZZ6uqsxjy0nn6dRM/7VnY5bT3W/f1VvHbKeq8WUyVRbarIl9+
0UXtvb11mT8eIr3S57zph+uySDjTP4BalwnkIdIrf86bVkT2INI/gtqXEVQv8jxe60k3VTrJ3mtM
FzHphnw82b4MIA+RXulz3rR6ktUsd0NeIi/jx0OkV/a0Rfb0qlHuhrxEnoT5X93uwa7m6r54/Ht5
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
MS54bWxQSwECLQAUAAYACAAAACEAZKboxg8EAACYFAAAGAAAAAAAAAAAAAAAAABBSwAAeGwvd29y
a3NoZWV0cy9zaGVldDEueG1sUEsBAi0AFAAGAAgAAAAhAOmmJbiCBgAAUxsAABMAAAAAAAAAAAAA
AAAAhk8AAHhsL3RoZW1lL3RoZW1lMS54bWxQSwECLQAUAAYACAAAACEAFsg7R9AHAAAmUQAADQAA
AAAAAAAAAAAAAAA5VgAAeGwvc3R5bGVzLnhtbFBLAQItABQABgAIAAAAIQCXXGBZUg4AAOs6AAAU
AAAAAAAAAAAAAAAAADReAAB4bC9zaGFyZWRTdHJpbmdzLnhtbFBLAQItABQABgAIAAAAIQA0oQmS
wgAAAEIBAAAkAAAAAAAAAAAAAAAAALhsAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0MTcueG1s
LnJlbHNQSwECLQAUAAYACAAAACEAE8QsE8IAAABCAQAAJAAAAAAAAAAAAAAAAAC8bQAAeGwvd29y
a3NoZWV0cy9fcmVscy9zaGVldDE1LnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhADttMkvBAAAAQgEA
ACQAAAAAAAAAAAAAAAAAwG4AAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQxNC54bWwucmVsc1BL
AQItABQABgAIAAAAIQAHDdWXfwQAALYXAAAYAAAAAAAAAAAAAAAAAMNvAAB4bC93b3Jrc2hlZXRz
L3NoZWV0Mi54bWxQSwECLQAUAAYACAAAACEA/FLBnt8DAAD2EwAAGAAAAAAAAAAAAAAAAAB4dAAA
eGwvd29ya3NoZWV0cy9zaGVldDMueG1sUEsBAi0AFAAGAAgAAAAhAHAQ7x4LBAAAGBIAABkAAAAA
AAAAAAAAAAAAjXgAAHhsL3dvcmtzaGVldHMvc2hlZXQxOS54bWxQSwECLQAUAAYACAAAACEAO5Qh
4a0EAADkFQAAGQAAAAAAAAAAAAAAAADPfAAAeGwvd29ya3NoZWV0cy9zaGVldDIwLnhtbFBLAQIt
ABQABgAIAAAAIQCanPz2bwcAALEtAAAZAAAAAAAAAAAAAAAAALOBAAB4bC93b3Jrc2hlZXRzL3No
ZWV0MTcueG1sUEsBAi0AFAAGAAgAAAAhAN8JkaaPBAAALRgAABgAAAAAAAAAAAAAAAAAWYkAAHhs
L3dvcmtzaGVldHMvc2hlZXQ5LnhtbFBLAQItABQABgAIAAAAIQAaFcohaAQAAJYWAAAYAAAAAAAA
AAAAAAAAAB6OAAB4bC93b3Jrc2hlZXRzL3NoZWV0OC54bWxQSwECLQAUAAYACAAAACEAYI5+JMoE
AAAcGgAAGAAAAAAAAAAAAAAAAAC8kgAAeGwvd29ya3NoZWV0cy9zaGVldDcueG1sUEsBAi0AFAAG
AAgAAAAhAKE86VnEAwAAaxIAABgAAAAAAAAAAAAAAAAAvJcAAHhsL3dvcmtzaGVldHMvc2hlZXQ2
LnhtbFBLAQItABQABgAIAAAAIQAJI0peYQMAAJAPAAAYAAAAAAAAAAAAAAAAALabAAB4bC93b3Jr
c2hlZXRzL3NoZWV0NS54bWxQSwECLQAUAAYACAAAACEAl4OV2H8FAAAnGwAAGQAAAAAAAAAAAAAA
AABNnwAAeGwvd29ya3NoZWV0cy9zaGVldDEwLnhtbFBLAQItABQABgAIAAAAIQAaqA+rmwcAABsx
AAAZAAAAAAAAAAAAAAAAAAOlAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTgueG1sUEsBAi0AFAAGAAgA
AAAhAAKC353kBAAAAhcAABkAAAAAAAAAAAAAAAAA1awAAHhsL3dvcmtzaGVldHMvc2hlZXQxNi54
bWxQSwECLQAUAAYACAAAACEAS8HbVkAIAAAWOQAAGQAAAAAAAAAAAAAAAADwsQAAeGwvd29ya3No
ZWV0cy9zaGVldDE1LnhtbFBLAQItABQABgAIAAAAIQC05QeVYRwAAAbLAAAZAAAAAAAAAAAAAAAA
AGe6AAB4bC93b3Jrc2hlZXRzL3NoZWV0MTQueG1sUEsBAi0AFAAGAAgAAAAhALzQ+6Q2BQAAqhoA
ABkAAAAAAAAAAAAAAAAA/9YAAHhsL3dvcmtzaGVldHMvc2hlZXQxMS54bWxQSwECLQAUAAYACAAA
ACEAw8X3VTkFAACqGgAAGQAAAAAAAAAAAAAAAABs3AAAeGwvd29ya3NoZWV0cy9zaGVldDEzLnht
bFBLAQItABQABgAIAAAAIQD7iKHofgUAACcbAAAZAAAAAAAAAAAAAAAAANzhAAB4bC93b3Jrc2hl
ZXRzL3NoZWV0MTIueG1sUEsBAi0AFAAGAAgAAAAhAGVAsa3/BgAAMB8AACcAAAAAAAAAAAAAAAAA
kecAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3MzLmJpblBLAQItABQABgAIAAAA
IQDHsS0FBwcAADAfAAAnAAAAAAAAAAAAAAAAANXuAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRl
clNldHRpbmdzMi5iaW5QSwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAAAh
9gAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczEuYmluUEsBAi0AFAAGAAgAAAAh
AEYkpwFUAQAAaQIAABEAAAAAAAAAAAAAAAAAnfsAAGRvY1Byb3BzL2NvcmUueG1sUEsBAi0AFAAG
AAgAAAAhAFxtZahWAgAAVgYAABAAAAAAAAAAAAAAAAAAKP4AAGRvY1Byb3BzL2FwcC54bWxQSwUG
AAAAACcAJwDOCgAAtAEBAAAA

--_004_E16513A01CAAFF40B65178C63CE45EEC19154E26IRSMSX102gercor_--
