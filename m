Return-Path: <alexandrux.palalau@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 123DBE00294
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2012 07:11:17 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Nov 2012 07:11:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,693,1344236400"; 
	d="xml'?bin'?scan'208,217,72,48?xlsx'208,217,72,48,72,48?rels'208,217,72,48,72,48";
	a="212238545"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 01 Nov 2012 07:11:13 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 1 Nov 2012 14:11:12 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.16]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.218]) with mapi id
	14.01.0355.002; Thu, 1 Nov 2012 14:11:12 +0000
From: "Palalau, AlexandruX" <alexandrux.palalau@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 1.2.2 test report 
Thread-Index: Ac20jzpUSbnMAe6cQ1GUpbv+4YGhxwDqimYAAAALkRA=
Date: Thu, 1 Nov 2012 14:11:12 +0000
Message-ID: <A45D4FDC92525B4F8A75E1B55399F328C01285@IRSMSX104.ger.corp.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC1919E7E7@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <E16513A01CAAFF40B65178C63CE45EEC1919E7E7@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 01 Nov 2012 07:12:58 -0700
Subject: FW: 1.2.2 test report
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
X-List-Received-Date: Thu, 01 Nov 2012 14:11:22 -0000
X-Groupsio-MsgNum: 10427
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_A45D4FDC92525B4F8A75E1B55399F328C01285IRSMSX104gercorpi_"

--_004_A45D4FDC92525B4F8A75E1B55399F328C01285IRSMSX104gercorpi_
Content-Type: multipart/alternative;
	boundary="_000_A45D4FDC92525B4F8A75E1B55399F328C01285IRSMSX104gercorpi_"

--_000_A45D4FDC92525B4F8A75E1B55399F328C01285IRSMSX104gercorpi_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Attached you can also find the BSP fullpass test results.

For Yocto 1.2.2 Denzil branch.
Commit ID:  846b7c388738f382e83576e77b705aa547c1dd9b
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

P1022DS

BLOCKED

No sato-sdk image built out.

eMenlow-sato-sdk

GOOD

USB mount pop up fail(2643)

Crownbay-noemgd-sato-sdk

BUGGY

RPM remove fails(3367), standby, CPU utilization and usb after standby fail=
(2792, 1258).

Sugarbay-sato-sdk

GOOD

Everything runs well

FRI2-sato-sdk

BLOCKED

No sato-sdk image built out.

HuronRiver-sato

GOOD

Everything runs well

Jasperforest-lsb

BUGGY

Syslog issues(2926)




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

Mpc8315e-rdb Sato-SDK

37

0

37

                      0

0

P1022DS

31

31

0

                      0

31

eMenlow Sato-sdk

67

0

66

                      1

0

Crownbay-Sato-sdk

65

0

62

3(3367,2792,1258)

1(due to 2792)

FRI2 Sato-sdk

86

86

0

0

86

HuronRiver Sato-sdk

68

0

68

0

0

Jasperforest lsb-sdk

34

0

32

2(2926)

0

Sugarbay

66

0

66

0

0



Best regards,

--
Alexandru Palalau
QA Contractor @ Yocto Project
Open-source Technology Center Romania
System Software Division

From: Serban, Laurentiu
Sent: Thursday, November 01, 2012 4:02 PM
To: Palalau, AlexandruX
Subject: FW: 1.2.2 test report



From: Serban, Laurentiu
Sent: Sunday, October 28, 2012 11:31 PM
To: Liu, Song
Subject: 1.2.2 test report

Hello,

Here are the results for the 1.2.2 full pass testing on commit id: b7c38873=
8f382e83576e77b705aa547c1dd9b
This does not include the intel architecture images which will be tested ne=
xt week.


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

p1022ds-sato-sdk

GOOD

Everything runs well

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

GOOD

Everything runs well

Core build system

=1B$B!!=1B(B

BUGGY

validating kernel configuration shows misleading warning from find (3226),
iptables-1.4.12.2-r0: task do_compile: Failed: unknown type name __aligned_=
u64 (2053)
Incremental RPM image generation doesn't work with 1.2.1 20120629 build (26=
90)
libgcc configure failed when rebuild within the same build directory due to=
 dirty configuration (2774)
Build Appliance fails to build due to build_boot_dd (3339)

HOB

=1B$B!!=1B(B

GOOD

[HOB]toolchain arch in settings is not saved (2695)

ADT

=1B$B!!=1B(B

GOOD

cannot compile eclipse-plugin for Denzil. (3320)

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

one qemux86 sato build on a Core i7 machine costs 100 minutes with the pack=
ages previously fetched.

Compliance

GOOD

Tests on Huron River and BlackSand passed



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

Mpc8315e-rdb Sato-SDK

37

0

37

0

0

p1022ds-sato-sdk

31

0

31

0

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

30

0

0

Qemux86-64 Sato-SDK

36

0

36

0

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

55

0

47

6 (3226, 2690, 2053, 2774, 3339)

2

HOB

38

0

37

1(2695)

0

ADT

53

0

52

1(3320)

0

Total

624

0

614

8

2



Component

Bug Number

Target Milestone

Core build system

Bug 3226 validating kernel configuration shows misleading warning from find
Bug  2690 Incremental RPM image generation doesn't work with 1.2.1 20120629=
 build
Bug 2053 iptables-1.4.12.2-r0: task do_compile: Failed: unknown type name _=
_aligned_u64
Bug 2774  libgcc configure failed when rebuild within the same build direct=
ory due to dirty configuration
Bug 3339 Build Appliance fails to build due to build_boot_dd

ADT

Bug 3320 cannot compile eclipse-plugin for Denzil.

HOB

Bug 2695  [HOB]toolchain arch in settings is not saved






Best regards,
Laurentiu Serban
QA Engineer
Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_A45D4FDC92525B4F8A75E1B55399F328C01285IRSMSX104gercorpi_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
@font-face
	{font-family:"\@MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:JA;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:JA;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:JA;}
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
<p class=3D"MsoNormal">Attached you can also find the BSP fullpass test res=
ults.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For <b>Yocto 1.2.2 Denzil branch</b>.<o:p></o:p></p>
<p class=3D"MsoNormal">Commit ID: &nbsp;<b>846b7c388738f382e83576e77b705aa5=
47c1dd9b</b><o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"1207" style=3D"width:724.0pt;margin-left:-30.6pt;border-col=
lapse:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"1207" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"wid=
th:724.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.7=
5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Test Result Summary
</span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareast-language:Z=
H-CN"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"236" nowrap=3D"" valign=3D"bottom" style=3D"width:141.5pt;bord=
er:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component</span></b><b=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black;mso-fareast-language:ZH-CN"><o:p></=
o:p></span></b></p>
</td>
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Status</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Comments</span></b><b><span style=3D"font-size:10.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"236" nowrap=3D"" rowspan=3D"10" style=3D"width:141.5pt;border:=
solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-left:.05in;text-ali=
gn:center;line-height:115%">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">BSP</span></b><b><span style=3D"=
font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Beagleboard</span><span style=3D"font-size:10.0pt;line-heigh=
t:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso=
-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareas=
t-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Routerstationpro</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareas=
t-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:17.9pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Mpc8315e-rdb<span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:17.9p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareas=
t-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">P1022DS<span style=3D"fon=
t-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:red;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BLOCKED<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">No sato-sdk image built out.<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">eMenlow-sato-sdk</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareas=
t-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black;mso-fareast-language:ZH-CN">USB mount pop up fail(2643)<o:p><=
/o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Crownbay-noemgd-sato-sdk</span><span style=3D"font-size:10.0=
pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;co=
lor:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-farea=
st-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black;mso-fareast-language:ZH-CN">RPM remove fails(3367), standby, =
CPU utilization and usb after standby fail(2792, 1258).<o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sugarbay-sato-sdk<o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black;mso-fareast-language:ZH-CN">Everything runs well<o:p></o:p></=
span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">FRI2-sato-sdk</span><span style=3D"font-size:10.0pt;line-hei=
ght:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;m=
so-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BLOCKED</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-far=
east-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black;mso-fareast-language:ZH-CN">No sato-sdk image built out.<o:p>=
</o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">HuronRiver-sato</span><span style=3D"font-size:10.0pt;line-h=
eight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-fareas=
t-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Jasperforest-lsb</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;mso-farea=
st-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Syslog issues(2926)</span><span style=3D"font-size:10.0pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr style=3D"height:4.35pt">
<td width=3D"806" colspan=3D"6" valign=3D"top" style=3D"width:483.55pt;padd=
ing:.75pt .75pt .75pt .75pt;height:4.35pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Detailed Test Result for each component</b><span style=3D"font=
-size:12.0pt;line-height:115%;font-family:SimSun;color:black;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Target</b>
<span style=3D"font-size:12.0pt;line-height:115%;font-family:SimSun;color:b=
lack;mso-fareast-language:ZH-CN">
<o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Total TCs</b><span style=3D"font-size:12.0pt;line-height:115%;=
font-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></spa=
n></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not Run</b><span style=3D"font-size:12.0pt;line-height:115%;fo=
nt-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span>=
</p>
</td>
<td width=3D"57" style=3D"width:34.2pt;background:white;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Passed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
<td width=3D"191" style=3D"width:114.85pt;background:white;padding:.75pt .7=
5pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Failed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
<td width=3D"197" style=3D"width:118.2pt;background:#F0F0F0;padding:.75pt .=
75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not testable (Blocked)</b><span style=3D"font-size:12.0pt;line=
-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Beagleboard Sato-SDK</b><span style=3D"font-size:12.0pt;line-h=
eight:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p>=
</o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">42<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">42</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH=
-CN"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN=
"><o:p></o:p></span></p>
</td>
<td width=3D"197" valign=3D"top" style=3D"width:118.2pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN=
"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Routerstationpro Sato-SDK</b><span style=3D"font-size:12.0pt;l=
ine-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN">=
<o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">35<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH=
-CN"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN=
"><o:p></o:p></span></p>
</td>
<td width=3D"197" valign=3D"top" style=3D"width:118.2pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN=
"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Mpc8315e-rdb Sato-SDK</b><span style=3D"font-size:12.0pt;line-=
height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN"><o:p=
></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">37<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black;mso-fareast-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">37</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH=
-CN"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"color:red"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0</span><span style=3D=
"font-size:12.0pt;line-height:115%;font-family:SimSun;color:black;mso-farea=
st-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"197" valign=3D"top" style=3D"width:118.2pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black;mso-fareast-language:ZH-CN=
"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>P1022DS<o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">31<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">31<o:p></o:p></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">0<o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"color:red"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></span></p=
>
</td>
<td width=3D"197" valign=3D"top" style=3D"width:118.2pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">31<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>eMenlow Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-he=
ight:115%;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">67<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">66</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green;mso-fareast-language:ZH-CN"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"color:red"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style=3D"font-size:10.5pt;line-height:115%;color:red;mso-farea=
st-language:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"197" valign=3D"top" style=3D"width:118.2pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Crownbay-Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">65<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">62</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green;mso-fareast-language:ZH-CN"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">3(3367,2792,1258)</span><span style=3D"=
font-size:10.5pt;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:=
p></o:p></span></p>
</td>
<td width=3D"197" valign=3D"top" style=3D"width:118.2pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(due to 2792)</span><span style=3D"fon=
t-size:10.5pt;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p><=
/o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>FRI2 Sato-sdk</b><b><span style=3D"font-size:10.5pt;line-heigh=
t:115%;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">86<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">86<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">0</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:green;mso-fareast-language:ZH-CN"><o:p></o:p></sp=
an></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
<td width=3D"197" valign=3D"top" style=3D"width:118.2pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">86</span><span style=3D"font-size:10.5p=
t;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>HuronRiver Sato-sdk</b><b><span style=3D"font-size:10.5pt;line=
-height:115%;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">68<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">68</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green;mso-fareast-language:ZH-CN"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
<td width=3D"197" valign=3D"top" style=3D"width:118.2pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Jasperforest lsb-sdk</b><b><span style=3D"font-size:10.5pt;lin=
e-height:115%;mso-fareast-language:ZH-CN"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">34<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-la=
nguage:ZH-CN"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%;mso-fareast-lan=
guage:ZH-CN"><o:p></o:p></span></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">32</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green;mso-fareast-language:ZH-CN"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2(2926)</span><span style=3D"font-size:=
10.5pt;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></=
span></p>
</td>
<td width=3D"197" valign=3D"top" style=3D"width:118.2pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red;mso-fareast-language:ZH-CN"><o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Sugarbay<o:p></o:p></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">66<o:p></o:p></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<o:p></o:p></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.2pt;padding:.75pt .75pt .=
75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">66<o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"197" valign=3D"top" style=3D"width:118.2pt;padding:.75pt .75pt=
 .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Best regards,<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">--<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Alexandru Palalau<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">QA Contractor @ Yocto Project<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">Open-source Technology Center Romania<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:EN=
-US">System Software Division<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Serban, =
Laurentiu
<br>
<b>Sent:</b> Thursday, November 01, 2012 4:02 PM<br>
<b>To:</b> Palalau, AlexandruX<br>
<b>Subject:</b> FW: 1.2.2 test report <o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Serban, =
Laurentiu
<br>
<b>Sent:</b> Sunday, October 28, 2012 11:31 PM<br>
<b>To:</b> Liu, Song<br>
<b>Subject:</b> 1.2.2 test report <o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are the results for the 1.2.2 full pass testing=
 on commit id:
<b>b7c388738f382e83576e77b705aa547c1dd9b<o:p></o:p></b></p>
<p class=3D"MsoNormal">This does not include the intel architecture images =
which will be tested next week.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"1207" style=3D"width:724.0pt;margin-left:30.2pt;border-coll=
apse:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"1207" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"wid=
th:724.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.7=
5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Test Result Summary<o:=
p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"236" nowrap=3D"" valign=3D"bottom" style=3D"width:141.5pt;bord=
er:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component<o:p></o:p></=
span></b></p>
</td>
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target<o:p></o:p></span></b></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Status<o:p></o:p></span></b></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Comments<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"236" nowrap=3D"" rowspan=3D"4" style=3D"width:141.5pt;border-t=
op:none;border-left:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;=
border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-left:.05in;text-ali=
gn:center;line-height:115%">
<b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;color:black">BSP<o:p></o:p></span></b></p>
</td>
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Beagleboard<o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Routerstationpro<o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:24.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:17.9pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Mpc8315e-rdb<span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:17.9p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">p1022ds-sato-sdk<o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"236" nowrap=3D"" rowspan=3D"5" style=3D"width:141.5pt;border:s=
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
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemuarm<o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemuppc<o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Qemumips<o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86<o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"249" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86-64<o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:51.75pt">
<td width=3D"236" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system<o:p>=
</o:p></span></b></p>
</td>
<td width=3D"249" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span lang=3D"JA" style=
=3D"font-family:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span=
 style=3D"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">validating kernel configuration shows misleading warning fro=
m find (3226),<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">iptables-1.4.12.2-r0: task do_compile: Failed: unknown type =
name __aligned_u64 (2053)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Incremental RPM image generation doesn't work with 1.2.1 201=
20629 build (2690)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">libgcc configure failed when rebuild within the same build d=
irectory due to dirty configuration (2774)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Build Appliance fails to build due to build_boot_dd (3339)<o=
:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"236" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">HOB<o:p></o:p></span><=
/b></p>
</td>
<td width=3D"249" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span lang=3D"JA" style=
=3D"font-family:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span=
 style=3D"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;ba=
ckground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">[HOB]toolchain arch in settings is not saved (2695)<o:p></o:=
p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"236" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT<o:p></o:p></span><=
/b></p>
</td>
<td width=3D"249" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span lang=3D"JA" style=
=3D"font-family:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span=
 style=3D"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">cannot compile eclipse-plugin for Denzil. (3320)<o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"236" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Stress Testing<o:p></o=
:p></span></b></p>
</td>
<td width=3D"249" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Both Crashme and Helltest on Jasperforest could pass 24 hour=
s stress testing<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"236" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Distribution Support<o=
:p></o:p></span></b></p>
</td>
<td width=3D"249" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well for Ubuntu 12.04, Ubuntu 12.10 &#8211; =
nightly, OpenSuse 12.1, OpenSuse 12.2 RC2, Fedora 17, CentOs 6.3,
 Fedora 16<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"236" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Power and Performance<=
o:p></o:p></span></b></p>
</td>
<td width=3D"249" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">one qemux86 sato build on a Core i7 machine costs 100 minute=
s
<b>with the packages previously fetched.</b><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"236" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Compliance<o:p></o:p><=
/span></b></p>
</td>
<td width=3D"249" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
</td>
<td width=3D"100" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"622" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Tests on Huron River and BlackSand passed<o:p></o:p></span><=
/p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr style=3D"height:4.35pt">
<td colspan=3D"6" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt;h=
eight:4.35pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><o:p>&nbsp;</o:p></b></p>
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
<td width=3D"57" style=3D"width:34.25pt;background:white;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Passed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"191" style=3D"width:114.85pt;background:white;padding:.75pt .7=
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
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">42</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
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
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
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
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">37</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
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
<td valign=3D"bottom" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">p1022ds-sato-sdk<o:p><=
/o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">31<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
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
<td width=3D"57" style=3D"width:34.25pt;background:white;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"191" style=3D"width:114.85pt;background:white;padding:.75pt .7=
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
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
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
<td width=3D"57" style=3D"width:34.25pt;background:white;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"191" style=3D"width:114.85pt;background:white;padding:.75pt .7=
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
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
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
<td width=3D"57" style=3D"width:34.25pt;background:white;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">31</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"191" style=3D"width:114.85pt;background:white;padding:.75pt .7=
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
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
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
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
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
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
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
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
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
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
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
ght:115%">55<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">47</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">6 (3226, 2690, 2053, 2774, 3339)</span>=
<span style=3D"font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></sp=
an></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2</span><span style=3D"font-size:10.5pt=
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
ght:115%">38<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">37</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(2695)</span><span style=3D"font-size:=
10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%">53<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">52</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(3320)</span><span style=3D"font-size:=
10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%">624<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p><=
/span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td width=3D"57" valign=3D"top" style=3D"width:34.25pt;padding:.75pt .75pt =
.75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">614</span><span style=3D"font-size:10=
.5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td width=3D"191" valign=3D"top" style=3D"width:114.85pt;padding:.75pt .75p=
t .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">8</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"1163" style=3D"width:697.75pt;margin-left:-.9pt;border-coll=
apse:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"277" nowrap=3D"" valign=3D"bottom" style=3D"width:166.0pt;bord=
er:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt=
 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component<o:p></o:p></=
span></b></p>
</td>
<td width=3D"791" valign=3D"bottom" style=3D"width:474.8pt;border-top:solid=
 black 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Bug Number<o:p></o:p><=
/span></b></p>
</td>
<td width=3D"95" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:solid black 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target Milestone<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"277" nowrap=3D"" rowspan=3D"2" style=3D"width:166.0pt;border-t=
op:none;border-left:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;=
border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system<o:p>=
</o:p></span></b></p>
</td>
<td width=3D"791" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
<td width=3D"95" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"791" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;bord=
er:none;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 3226 <span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:black">
validating kernel configuration shows misleading warning from find</span><s=
pan style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug&nbsp; 2690 <span styl=
e=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black">
Incremental RPM image generation doesn't work with 1.2.1 20120629 build</sp=
an><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2053 <span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:black">
iptables-1.4.12.2-r0: task do_compile: Failed: unknown type name __aligned_=
u64 <o:p>
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2774&nbsp; <span styl=
e=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black">
libgcc configure failed when rebuild within the same build directory due to=
 dirty configuration</span><span style=3D"font-size:10.5pt;line-height:115%=
"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 3339 <span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:black">
Build Appliance fails to build due to build_boot_dd</span><span style=3D"fo=
nt-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;"><o:p></o:p></span></p>
</td>
<td width=3D"95" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"277" nowrap=3D"" style=3D"width:166.0pt;border-top:none;border=
-left:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT<o:p></o:p></span><=
/b></p>
</td>
<td width=3D"791" valign=3D"bottom" style=3D"width:474.8pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid bl=
ack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 3320 cannot compile eclipse-plugin for Denzil.<o:p></o:p=
></span></p>
</td>
<td width=3D"95" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"277" nowrap=3D"" style=3D"width:166.0pt;border-top:none;border=
-left:solid black 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">HOB<o:p></o:p></span><=
/b></p>
</td>
<td width=3D"791" valign=3D"bottom" style=3D"width:474.8pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid bl=
ack 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2695&nbsp; [HOB]toolchain arch in settings is not saved<=
o:p></o:p></span></p>
</td>
<td width=3D"95" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
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

--_000_A45D4FDC92525B4F8A75E1B55399F328C01285IRSMSX104gercorpi_--

--_004_A45D4FDC92525B4F8A75E1B55399F328C01285IRSMSX104gercorpi_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="1.2.2_FullPass_TR.xlsx"
Content-Description: 1.2.2_FullPass_TR.xlsx
Content-Disposition: attachment; filename="1.2.2_FullPass_TR.xlsx";
	size=45437; creation-date="Fri, 26 Oct 2012 20:44:34 GMT";
	modification-date="Sat, 27 Oct 2012 21:59:41 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQDUob4E5wEAALAPAAATAN4BW0NvbnRlbnRfVHlwZXNdLnhtbCCi2gEooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAADMV9tuozAQfa+0/4D8ugoO6WW7q5A+9PK4W6ndD3DxJFgB2/K4bfL3HUiC
2ipqoBDBCxGKZubM5cwcplerPAtewKEyOmZROGYB6MRIpRcx+/94N7pkAXqhpciMhpitAdnV7MfJ
9HFtAQOy1hiz1Hv7h3NMUsgFhsaCpn/mxuXC06tbcCuSpVgAn4zHFzwx2oP2I1/4YLPpPwLglITg
Xjj/V+QUh68y/mrcElMAj7z8ic5D8sqC6415gSBmwtpMJcITfv6i5afYIzOfqwSkSZ5zihiidSBk
6S3PwirAz8Ivrw/k4thAbmAunjMf3K6oUJvePCndYerWKeqBewDvqdXYIPnfx8697jScDgXIWU9A
PLENePmMWkMo3RzgAfp1Btg61EcSbpweiFwxdbsKjk7AmkP4q+NiVHk2rMflQHBE7Qfx43R8tyDR
ZCAVmYyHAuTordlztBxk2OxqbYVCSJblUcdUWdyxYU+ErxXB4bv+ZMyy4w6V8iLMhdI73DW3SV+H
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
BgAIAAAAIQCn00wo3AQAAA0ZAAAZAAAAAAAAAAAAAAAAAJJ4AAB4bC93b3Jrc2hlZXRzL3NoZWV0
MTQueG1sUEsBAi0AFAAGAAgAAAAhALmBfGhuBAAAKBYAABkAAAAAAAAAAAAAAAAApX0AAHhsL3dv
cmtzaGVldHMvc2hlZXQxMy54bWxQSwECLQAUAAYACAAAACEA8yjVIYEEAACIGAAAGQAAAAAAAAAA
AAAAAABKggAAeGwvd29ya3NoZWV0cy9zaGVldDEwLnhtbFBLAQItABQABgAIAAAAIQBz1biW1AQA
AAkZAAAZAAAAAAAAAAAAAAAAAAKHAAB4bC93b3Jrc2hlZXRzL3NoZWV0MTIueG1sUEsBAi0AFAAG
AAgAAAAhAO2Dk1eCBAAAgRYAABkAAAAAAAAAAAAAAAAADYwAAHhsL3dvcmtzaGVldHMvc2hlZXQx
MS54bWxQSwECLQAUAAYACAAAACEAebKdezcFAAA4IgAAJwAAAAAAAAAAAAAAAADGkAAAeGwvcHJp
bnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczMuYmluUEsBAi0AFAAGAAgAAAAhAHmynXs3BQAA
OCIAACcAAAAAAAAAAAAAAAAAQpYAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3My
LmJpblBLAQItABQABgAIAAAAIQB5sp17NwUAADgiAAAnAAAAAAAAAAAAAAAAAL6bAAB4bC9wcmlu
dGVyU2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMS5iaW5QSwECLQAUAAYACAAAACEAmVn4toQBAADi
AgAAEQAAAAAAAAAAAAAAAAA6oQAAZG9jUHJvcHMvY29yZS54bWxQSwECLQAUAAYACAAAACEAHunz
8EQCAAAmBgAAEAAAAAAAAAAAAAAAAAD1owAAZG9jUHJvcHMvYXBwLnhtbFBLBQYAAAAAJAAkAPgJ
AABvpwAAAAA=

--_004_A45D4FDC92525B4F8A75E1B55399F328C01285IRSMSX104gercorpi_--
