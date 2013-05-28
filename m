Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C911AE01423
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 06:49:22 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 May 2013 06:49:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,758,1363158000"; 
	d="png'150?scan'150,208,217,150";a="344506358"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 28 May 2013 06:49:06 -0700
Received: from irsmsx106.ger.corp.intel.com (163.33.3.31) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 28 May 2013 14:49:06 +0100
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.132]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.225]) with mapi id
	14.03.0123.003; Tue, 28 May 2013 14:49:04 +0100
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Weekly test report for Yocto 1.5 M1 2013-05-21-1
Thread-Index: Ac5bqg8tuE0nPd8nRQmLfIL+xUPVaA==
Date: Tue, 28 May 2013 13:49:03 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B0A141C66@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Weekly test report for Yocto 1.5 M1 2013-05-21-1
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
X-List-Received-Date: Tue, 28 May 2013 13:49:23 -0000
X-Groupsio-MsgNum: 13973
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_005_33115ABC4887814E8A92A08FBC93416B0A141C66IRSMSX103gercor_";
	type="multipart/alternative"

--_005_33115ABC4887814E8A92A08FBC93416B0A141C66IRSMSX103gercor_
Content-Type: multipart/alternative;
	boundary="_000_33115ABC4887814E8A92A08FBC93416B0A141C66IRSMSX103gercor_"

--_000_33115ABC4887814E8A92A08FBC93416B0A141C66IRSMSX103gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the weekly test report for Yocto 1.5 M1 2013-05-21-1 build:

https://wiki.yoctoproject.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M1_2013=
-05-21-1_Build

Below is the summary report:

Testing data

 Test type: Weekly Test

 Branch: master

 Milestone: 1.5 M1

 Build name: weekly

 poky commit: 176a46b088135f2891983bb8540bc45389341d90

 poky commit date: Mon May 20 16:05:25 2013 +0100

 Eclipse Plugin commit: dd7ab69282f7c9cc18ff06fffaa9681e4b297cfa

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20130521-1



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

565<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D565>

ADT: master branch

Fedora 18 i686

100.0%

none

0.0%

none

0.0%

none

567<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D567>

ADT: master branch

openSUSE 12.3 x86_64

100.0%

none

0.0%

none

0.0%

none

566<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D566>

ADT: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

561<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D561>

BSP/QEMU: master branch

Beagleboard

1.6%

none

1.6%

4548<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4548>

96.9%

4548<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4548>

564<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D564>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

568<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D568>

BSP/QEMU: master branch

P1022ds

0.0%

none

2.3%

4524<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4524>

97.7%

4524<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4524>

553<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D553>

BSP/QEMU: master branch

qemu-x86

51.3%

none

2.6%

4552<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4552>

46.2%

4552<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4552>

552<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D552>

BSP/QEMU: master branch

qemuarm

2.0%

none

2.0%

4549<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4549>

95.9%

4549<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4549>

571<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D571> 572<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D572>

BSP/QEMU: master branch

qemumips

78.5%

none

0.0%

none

21.5%

4551<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4551>

569<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D569> 570<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D570>

BSP/QEMU: master branch

qemuppc

78.5%

none

0.0%

none

21.5%

4551<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4551>

554<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D554>

BSP/QEMU: master branch

qemux86-64

48.7%

none

2.6%

4552<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4552>

48.7%

4552<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4552>

563<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D563>

BSP/QEMU: master branch

Routerstationpro

0.0%

none

0.0%

none

100.0%

4566<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4566>

555<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D555>

Eclipse Plugin: master branch

CentOS 6.4 x86_64

50.0%

none

30.0%

4552<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4552> 4554<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4554>

20.0%

4552<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4552>

560<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D560>

Meta-yocto: master branch

Ubuntu 12.04 x86-64

100.0%

none

0.0%

none

0.0%

none

550<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D550>

Hob: master branch

Ubuntu 12.04 x86_64

100.0%

none

0.0%

none

0.0%

none

549<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D549>

OE-Core: master branch

Multiple environments

90.0%

none

10.0%

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>

0.0%

none

551<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D551>

BitBake: master branch

Ubuntu 12.04 x86_64

72.7%

none

27.3%

4536<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4536> 4535<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4535>

0.0%

none

Total: 17



Test Case Status Report

Status

Count

BLOCKED

261

FAILED

12

PASSED

620

Total: 893


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:261,12,620&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(261)+29%25|FAILED(12)=
+1%25|PASSED(620)+69%25]



Bug Status Report

[Bug Status]

ID

Priority

Status

Resolution

Test Runs

Description

Version

Target Milestone

Age (days)

4524<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4524>

Medium+

NEW

568<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D568>

u-boot fails to compile

1.5

1.5

NEW

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>

Medium

NEW

549<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D549>

x32 build fails with gmp_5.1.1 do_configure

1.5

1.5

NEW

4535<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4535>

Undecided

RESOLVED

FIXED

551<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D551>

'bitbake-layers flatten' gives error

1.5

---

NEW

4536<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4536>

Undecided

RESOLVED

FIXED

551<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D551>

'bitbake-layers show_overlayed' gives error

1.5

---

NEW

4548<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4548>

Undecided

NEW

561<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D561>

beagleboard could not startup with 20130521-1 image

1.5

---

NEW

4549<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4549>

Undecided

NEEDINFO

552<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D552>

qemuarm could not startup with 20130521-1 image

1.5

---

NEW

4551<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4551>

Undecided

RESOLVED

FIXED

572<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D572> 569<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D569> 570<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D570> 571<https://bugzilla.=
yoctoproject.org/tr_show_run.cgi?run_id=3D571>

qemumips/qemuppc network cannot work in 20130521-1 image

1.5

---

NEW

4552<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4552>

Undecided

NEW

555<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D555> 553<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D553> 554<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D554>

Network is not coming up

1.5

---

NEW

4554<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4554>

Undecided

NEW

555<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D555>

Qemu could not startup with 20130521-1 image via UNFS for any architecture

unspecified

---

NEW

4566<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4566>

Undecided

NEW

563<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D563>

routerstation pro cannot bootup with NFS in yocto 1.5 20130521-1 build

1.5

---

NEW

Total: 10



If you have any questions or concerns, please contact me or reply to this e=
mail.

Regards,
Stoicescu Corneliu
Romania Yocto QA

--_000_33115ABC4887814E8A92A08FBC93416B0A141C66IRSMSX103gercor_
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
<p class=3D"MsoNormal">Here is the weekly test report for Yocto 1.5 M1 2013=
-05-21-1 build:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://wiki.yoctoproject.org/wiki/Weekly=
_Test_Report_for_Yocto_1.5_M1_2013-05-21-1_Build">https://wiki.yoctoproject=
.org/wiki/Weekly_Test_Report_for_Yocto_1.5_M1_2013-05-21-1_Build</a><o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Below is the summary report:<o:p></o:p></p>
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
"><span style=3D"color:black"> Milestone: 1.5 M1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: weekly<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 176a46b088135f2891983bb8540bc45=
389341d90<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit date: Mon May 20 16:05:25 2013 &=
#43;0100<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit: dd7ab69282f7c9cc18ff0=
6fffaa9681e4b297cfa<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/nightly/20130521-1<o:p></o:p></span></pre>
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
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D565"><span style=3D"color:#5A3696">565</span></a=
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D567"><span style=3D"color:#5A3696">567</span></a=
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D566"><span style=3D"color:#5A3696">566</span></a=
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D561"><span style=3D"color:#5A3696">561</span></a=
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
<span style=3D"font-size:9.5pt">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.6%<o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">1.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4548"><span style=3D"color:#5A3696">4548</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">96.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4548"><span style=3D"color:#5A3696">4548</span></a><o:p=
></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D564"><span style=3D"color:#5A3696">564</span></a=
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
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D568"><span style=3D"color:#5A3696">568</span></a=
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
<span style=3D"font-size:9.5pt">P1022ds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">2.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4524"><span style=3D"color:#5A3696">4524</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4524"><span style=3D"color:#5A3696">4524</span></a><o:p=
></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D553"><span style=3D"color:#5A3696">553</span></a=
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
<span style=3D"font-size:9.5pt">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">51.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4552"><span style=3D"color:#5A3696">4552</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">46.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4552"><span style=3D"color:#5A3696">4552</span></a><o:p=
></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D552"><span style=3D"color:#5A3696">552</span></a=
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
<span style=3D"font-size:9.5pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.0%<o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">2.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4549"><span style=3D"color:#5A3696">4549</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">95.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4549"><span style=3D"color:#5A3696">4549</span></a><o:p=
></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D571"><span style=3D"color:#5A3696">571</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D572"><span style=3D"color:#5=
A3696">572</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">78.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">21.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4551"><span style=3D"color:#5A3696">4551</span></a><o:p=
></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D569"><span style=3D"color:#5A3696">569</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D570"><span style=3D"color:#5=
A3696">570</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">78.5%<o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">21.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4551"><span style=3D"color:#5A3696">4551</span></a><o:p=
></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D554"><span style=3D"color:#5A3696">554</span></a=
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
<span style=3D"font-size:9.5pt">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">48.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4552"><span style=3D"color:#5A3696">4552</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">48.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4552"><span style=3D"color:#5A3696">4552</span></a><o:p=
></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D563"><span style=3D"color:#5A3696">563</span></a=
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4566"><span style=3D"color:#5A3696">4566</span></a><o:p=
></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D555"><span style=3D"color:#5A3696">555</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Eclipse Plugin: master branch<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">CentOS 6.4 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">50.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">30.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4552"><span style=3D"color:#5A3696">4552</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4554"><span style=3D"color:#5A3696">4554=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">20.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4552"><span style=3D"color:#5A3696">4552</span></a><o:p=
></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D560"><span style=3D"color:#5A3696">560</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Meta-yocto: master branch<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D550"><span style=3D"color:#5A3696">550</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Hob: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D549"><span style=3D"color:#5A3696">549</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">OE-Core: master branch<o:p></o:p></span></p=
>
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
<span style=3D"font-size:9.5pt;color:black">90.0%<o:p></o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">10.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D551"><span style=3D"color:#5A3696">551</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BitBake: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 12.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">72.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">27.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4536"><span style=3D"color:#5A3696">4536</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4535"><span style=3D"color:#5A3696">4535=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 17</span></b><span style=3D"font-=
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
<span style=3D"font-size:9.5pt">261<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">12<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">620<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 893</span></b><span style=3D"font=
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
dth=3D"432" height=3D"120" id=3D"Picture_x0020_4" src=3D"cid:image001.png@0=
1CE5BC3.41CF7B70" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;ch=
s=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:261,12,620&amp;chco=3DFFFF66|FF9933|00=
FF00&amp;chl=3DBLOCKED(261)&#43;29%25|FAILED(12)&#43;1%25|PASSED(620)&#43;6=
9%25"></span><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
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
img border=3D"0" width=3D"372" height=3D"120" id=3D"Picture_x0020_3" src=3D=
"cid:image002.png@01CE5BC3.41CF7B70" alt=3D"Bug Status"></span><span style=
=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p></o:p></span></p>
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
<b><span style=3D"font-size:9.5pt">ID<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Priority<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Status<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Resolution<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Test Runs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Description<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Version<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Target Milestone<o:p></o:p></span></b></=
p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Age (days)<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4524"><span style=3D"color:#5A3696">4524</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D568"><span style=3D"color:#5A3696">568</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">u-boot fails to compile<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D549"><span style=3D"color:#5A3696">549</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">x32 build fails with gmp_5.1.1 do_configure=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4535"><span style=3D"color:#5A3696">4535</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D551"><span style=3D"color:#5A3696">551</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">'bitbake-layers flatten' gives error<o:p></=
o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4536"><span style=3D"color:#5A3696">4536</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D551"><span style=3D"color:#5A3696">551</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">'bitbake-layers show_overlayed' gives error=
<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4548"><span style=3D"color:#5A3696">4548</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D561"><span style=3D"color:#5A3696">561</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">beagleboard could not startup with 20130521=
-1 image<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4549"><span style=3D"color:#5A3696">4549</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">NEEDINFO<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D552"><span style=3D"color:#5A3696">552</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemuarm could not startup with 20130521-1 i=
mage<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4551"><span style=3D"color:#5A3696">4551</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D572"><span style=3D"color:#5A3696">572</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D569"><span style=3D"color:#5=
A3696">569</span></a><span class=3D"apple-converted-space">&nbsp;</span><a =
href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D570"><sp=
an style=3D"color:#5A3696">570</span></a><span class=3D"apple-converted-spa=
ce">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.c=
gi?run_id=3D571"><span style=3D"color:#5A3696">571</span></a><o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemumips/qemuppc network cannot work in 201=
30521-1 image<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4552"><span style=3D"color:#5A3696">4552</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D555"><span style=3D"color:#5A3696">555</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D553"><span style=3D"color:#5=
A3696">553</span></a><span class=3D"apple-converted-space">&nbsp;</span><a =
href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D554"><sp=
an style=3D"color:#5A3696">554</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Network is not coming up<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4554"><span style=3D"color:#5A3696">4554</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D555"><span style=3D"color:#5A3696">555</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Qemu could not startup with 20130521-1 imag=
e via UNFS for any architecture<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4566"><span style=3D"color:#5A3696">4566</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D563"><span style=3D"color:#5A3696">563</span></a=
><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">routerstation pro cannot bootup with NFS in=
 yocto 1.5 20130521-1 build<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 10</span></b><span style=3D"font-=
size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If you have any questions or concerns, please contac=
t me or reply to this email.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Stoicescu Corneliu<o:p></o:p></p>
<p class=3D"MsoNormal">Romania Yocto QA<o:p></o:p></p>
</div>
</body>
</html>

--_000_33115ABC4887814E8A92A08FBC93416B0A141C66IRSMSX103gercor_--

--_005_33115ABC4887814E8A92A08FBC93416B0A141C66IRSMSX103gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=10313;
	creation-date="Tue, 28 May 2013 13:49:02 GMT";
	modification-date="Tue, 28 May 2013 13:49:02 GMT"
Content-ID: <image001.png@01CE5BC3.41CF7B70>
Content-Transfer-Encoding: base64

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

--_005_33115ABC4887814E8A92A08FBC93416B0A141C66IRSMSX103gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=7850;
	creation-date="Tue, 28 May 2013 13:49:03 GMT";
	modification-date="Tue, 28 May 2013 13:49:03 GMT"
Content-ID: <image002.png@01CE5BC3.41CF7B70>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAXQAAAB4CAIAAABttJ7LAAAABmJLR0QA/wD/AP+gvaeTAAAeX0lE
QVR4nO3deVRTV/4A8G9CWBP2sAVQNBIWgSpSULEUULAyCqgVi8eqnWPVaqcebeu09ciMv55aa512
arVOq5W2juBS6kLcsKjFWkRWkSUgm4QlIZgAEghJSH5/XPqMAXEjMOL3c/wjuXl57/I8fLn3vnu/
l6bVagEhhIYafaQrgBAanTC4IIQMAoMLQsggMLgghAyCMdIV+F9XVVWlUqnIa3t7e0dHx6E6s1ar
ra2tvX37toeHx9ixY+l0DPRoVKHh06LBxcTEdHR0GBsbA4BcLvf29l65cmVYWNhTnraoqOj999+/
e/eun59fQ0ODubn5nj17OBwO+YjFYk2YMGGQr589ezYsLIzJZD5lNRAyHPxr+XAbN268dOnSpUuX
zp8/7+Pjs3PnTo1G8zQn1Gq1GzdunDVrVnp6+v79+0+dOuXv7//++++TT1NTUy9evDj4GbZs2SIW
i5+mDggZGgaXx2Bra7t06dKmpqZbt24BQF5enlAoJB/19vZmZGQolUrytqWlJSUl5eLFiwqFIjMz
U+88QqGwo6Nj/vz5Dg4OAGBiYrJixQoGg9HT03Pz5s2Wlpbq6uqioiJycHt7e1paWlpaWlVVFSn5
9ddfAeCPP/5oampqamq6fv06deaioqL6+nryuqys7NChQ0ePHq2trTXQDUFoEBhcHoNWq83IyLCx
seFyuQCwb9++7Oxs8lF3d/dHH33U2dkJACkpKYmJibdu3Tpy5MimTZu2bNmidx43NzdbW9vPPvuM
ik3jx4//8ccfTU1Nq6qq7ty509jYWFlZCQDffPNNYmJiWVlZYWHhihUriouLAYBEk+Li4tbW1tzc
3L1791Jn/vHHH7OysgAgLS1txYoV2dnZ169fX758OTkbQsMJB3Qf7vvvv//5558BoLm5uaura//+
/QzGA+9bS0vL7t27d+3aFRQUpNVqN2zY0P8YOp3+6aef7ty5c/78+WPHjg0JCYmMjAwKCgKA+fPn
X7t2jcvlJiQkAEBhYeG2bdsmTZoEAJ9++ukvv/wSEBDw0Ucf/fLLL2vWrBk/fvyDWiXp6ekrV65c
tWoVAHz99dcCgYDH4w3FzUDoUWFwebhp06YFBwcDgEajyczM3LBhw/79+z08PAY8uLS01MrKikQK
Go02a9Ys3W4LJSgo6PDhw5WVlTk5OdnZ2WvWrAkNDf33v/9No9F0D9u3bx8ANDU1FRUV5ebm+vn5
PWKdx44de/DgQUdHx5CQkL/97W+P8+MiNDQwuDycr69vdHQ0eR0WFrZw4cLk5OStW7cOeLBMJtN9
XO3s7Nz/GJFIJJfLuVwuj8fj8Xivv/56Tk7OunXrLly4QF2I+P7771NSUhwdHQMCAlxdXR+9zps3
b+ZyuceOHdu2bZufn9+HH37o6en56F9H6OnhmMvjsbCwGDdunLW1tV55Q0MDeRESEkK91i3XJRAI
3n//fd1JAMHBwWw2W+8hVHl5eXJy8t69e1NTUweJDrrnoS5XV1e3ePHiQ4cOkdHf//u//3v0nxGh
IYHB5eFkMllDQ0NDQ0NNTc2BAwfy8vJiY2MBwNLSMj09nUQEMigDAK6urs7OzocPHwYApVJ55MgR
vZ4OAAQHB4vF4q1bt968eRMAurq6kpOTlUplZGQkOYBM25PJZFTgqK2tPX/+PPU0ipyc1KG8vJyM
1+bl5d2+fZt8unXr1h9//FGr1ZqZmU2cONHExMRANwehB8FJdA8RExPT0tJCXhsZGYWGhsbHx5NJ
dDdu3NixYweNRqPT6a+99tr27dtPnDhhZ2d39erVL7/8kkajtbe3R0dHZ2RkZGRk6J22pKRk06ZN
LS0t9vb2d+/e9fb2fu2110if6Kuvvjp16lRCQsLy5ctXrVolEomcnJzu3r0bExPz008/ffjhh3/5
y19iY2PNzc03btzo5+f32Wef5efnOzk5TZgwobu728vLa+nSpb///ntSUpKJiQmJU59//nlgYODw
3jn0vMPg8rRu3Ljh4uJCjbMolUqRSOTu7l5YWOjh4XHmzJkzZ86kpKT0/6JWqxUKhSKRyNfXl8Vi
UeUqlaq4uNja2nrChAkqlUogEACAj48Pg8G4ffu2iYmJi4uLVCoVCATe3t52dnYA0NTUJJVK9YZ7
NRpNWVkZg8Hw9PQ0MjIy4C1AaCAYXIZYV1dXdHT0hg0b5s2bV1pa+vnnn7/88surV68e6XohNNww
uAy9goKCnTt31tfXu7u7L1q0aO7cuTjkgZ5DGFwMRaPR4EJn9DzD4IIQMgj804oQMggMLgghg8Dg
ghAyCAwuCCGDuLdwUaVSnT59+vbt21OnTg0JCRnBOiGERoF7LZedO3e6uLjExsYePnwYc5chhJ5S
X8ulo6PDysqKNFg2b95M8lEjhNAT65vnUlRUJBAIrK2t6+rqZs2ahbk/EEJPqa9bJBKJCgoKHBwc
lixZsm/fvtLS0srKSj6fz+fzdTPRSyRAo422f3v2jNC9R2hU6+sWubm5vfDCCyQ5Y0REhEAgWLhw
Icm6yufzR7KCCKFnU1/LZfz48aWlpSTvUUtLi7+//4jWCiH0zOtruVhYWERERHz99dednZ22traY
KR4h9JTuzXOJiop6+eWXu7q6bGxsRrBCCKHR4b7s/yYmJph5BCE0JHD6P0LIIDC4IIQMAoMLQsgg
MLgghAwCgwtCyCDuPS369ttvpVIpeb1s2bLH2pkYIYT03AsuNTU1GzduJK/JVlsIIfTE+oJLW1ub
jY2No6OjWq3GfAsIoafXF1wkEolUKt2+fTudTvf394+KiqqtrSXbm9+5c2dEa4gQeib1BRcrK6vF
ixdPmTJFo9EkJSU5OjoGBQXhqmiE0BPre1rk5OQUFBREo9GMjIwiIiLq6+tHtloIoWddX3D5/fff
jx07BgAqlaq2tjY4OHhEa4UQeub1dYsmT55cUlLy1VdfSSQSLpfr5uY2stVCCD3r+oILk8lcs2bN
3bt3AcDS0nJEq4TQ8KHRHn7MgNupa7Vams6Xqbck4xqFTqfrHazRaEihXrneCUeB+2boWlpaYmRB
6KHEYvFbb71VVlZGlSQlJbW1tcnl8nXr1m3WcenSpdzc3B07dpDDhELh2rVrqTHNL774IicnBwDa
29uPHDlCCouKir744ou0tDS1Wq3VatPS0qiraDSac+fOffnll5cvXyYlPT09p0+fPnDgQFNTE1W3
y5cvd3Z2Um+zsrIMdysGgdP/EXoSTCYzNTVVqVTqlZuYmHyqIyIiwsvLSygUqlQqACgvL7e2ti4t
LQUAjUZTV1dHPZMNCwsDgHPnzhUXF7/++uu1tbWnTp2i0WjW1tatra3k5N98842xsXFCQsKZM2eK
i4sBYM+ePV1dXVOnTt2zZ49YLFYqlSkpKZaWlrt27ZJIJABw9uzZwMDAYbwx92BwQehJsNlsf3//
kydPPvRIKysrNptdV1cHAGVlZfPmzSNNnvr6ehsbG1tb256eHolEwuFwAKCiomLRokUODg5vv/02
2Uds2rRpv/32GwCo1eru7u6ZM2e6urp++OGHbm5ud+7cqa+vX7Roka+vb2hoaHl5eXV1NZfLnTJl
SmBgoFQqra6udnJyYrFYBr0VD4LBBaEnFBcXd+PGjdu3b+sW9vb2pulobm4GAG9v7+rqapVKJRaL
Q0NDW1tbFQpFdXW1l5cXAFRUVDg5OZHvdnR0VFRUfP3117m5uaSQyWQKBIKenp76+no7O7uLFy/u
3r27sbHRzs7uzp07zs7O5LocDqeiosLT07OhoeHAgQPl5eVeXl6ZmZkzZ84c7vvyJwwuCD0hU1PT
xMTEgwcP6g7i0mi0sTosLCwAwMvLq7q6urKyksvl0mg0Ho8nEAio4EI1W6RSaWNjY11d3YoVKyor
K1NTU8k5WSxWa2urWCy+efOmiYnJihUrjh07lp2d3dPTw2QyyTHW1tbd3d0MBmPt2rXx8fEbNmy4
ceOGj4+PVqu9cuVKVVXVcN+d/sElNzc3MzNz+OuB0LNo4sSJHA7n/PnzVAmdTg/SYW1tDQBeXl61
tbVlZWW+vr7kW2VlZTU1NSS49PT0kOdHbDbb3t4+Pj7e0tJy7ty5AoGAnNPCwqK3t9fNzc3Ly2vG
jBksFmv27NkCgcDS0lIsFpNjZDIZaekAgJ2dnVarzc7ODg0NPXXqlEqlKigo+PXXX4fxxgDoBReJ
RJKamkolXkAIPVRCQkJWVpZcLh/kGAsLC1tb2+zsbBJcfH198/PzzczMrKysAIDNZpMhWxqN5ujo
SFoZYrGY2j5MLBbb29u7ubndvn1boVAAgEgk8vf3HzNmDI1Gk8lkAHDjxg3d6WlXr16dOnUqnU6v
q6sLDw+fPXu2UCg01C14gHspFzQazcGDB6dOnTrMNUDomcZiseLj45OTk8lbpVK5adMm6lM/P79l
y5YBgLe3d0lJCdm3h8VisdnssWPHkmMmTZpENVJiYmLOnj2r1WpbWlrWr18PABqNRqvVku7PvHnz
/vOf/5CWTnx8PJ1Oj4uL+9e//uXo6GhkZDRjxgxyEpVKVVZWtmrVKgB48cUX9+/fL5FISDWGU99G
9ABw4sQJOzs7Go0mEokWLVpUV1dHxrcbGhqWLl1KjpFIwNFxmGtocLt3w7p1I10JNEKeeBLd0OLz
+REREdQASktLi+Ofv2k3b95sbm6Ojo4mb3t7e9va2uzt7anvqlQqiUTi7OxMzc1TKBRKpZI0iwCA
jMUMfyqVvtpUVFSIRCLypJ3gcDhTpkyZMmUKTqtDyNBCQ0OvXbtGvXXU+Rt+7do1qkkCAEZGRrqR
BQCMjY05HA4VWQCA6nAR5ubmI5Kkqa9bdPnyZalU+tVXX8lkMqVSaWxsHB8fTzZIMzIyGv5qIfRc
sbW1JYO7ejQaTUxMDHnk9MzpCy5LliwhMwhzcnIkEskIPhtHaDgNQ5fnEQ24WphOpz+72az7ggvV
92GxWJ2dndgVQgg9JYbe+5deemlE6oEQGmVwhi5CyCAwuCCEDAKDC0LIIPTHXBB6rgRB0EOPyYO8
/oVarZZMQKXRaLoZ5AbMREd0dXUZGRmZmprqnUqpVGq1Wt3y/lnpHivxHVWoe/XBGSIPHgYXhJ7E
unXrrKysaDSaWq1mMpkxMTHBwcFyufy9994jc/yJ6OjoiIgIoVCYnJysVqvNzc0ZDMbq1avJJLfa
2torV640NjZKpVJ7e/s33niDLD589913//nPf1IT4YRC4e7du7dv3079/m/ZsuXNN99sampKTU2l
5vUCwPr169ls9ttvv21rawsARkZGPB4vMTGRTKLTarX79+9fuXKlUqnMysoqLi52cXGJi4tjMpkn
TpyIjY0lk9pkMtmFCxcaGxt5PF5MTAyNRtNqtdevX8/Pzw8LC/Pz8wMAuVyen5/v6enp4uICAL29
vSdPnlywYIHuLboXXCoqKjIzM+l0emhoKLViCiH0IFu3biXNDYFAsHv3bvJbQzLR6R2ZkpIye/Zs
kvwpIyMjLS3tjTfeaGxs/Pbbb9euXTtmzBiNRlNQULBjx46kpCSykFqXu7s7k8m8desWSVtXX19P
Ejs0NTUFBASsXLlS92C1Wk2n00kdurq6UlJS9u3bt3btWgDIzc319PSk0Whnz56Vy+XLly/n8/k/
/fTTW2+9NXny5NzcXLK08MCBA4GBgdHR0bt27TIxMYmKijp9+nRVVdW8efNOnjwpk8leeumlI0eO
8Hi89PT0SZMmBQcH//bbb97e3nrV7ms1yWSylJSUyMjIiIgI3R3pEUIPxePxrKysBpnL3t3dTTU6
wsLCpk+fDgB8Pn/GjBljxoyBPxM1hISEkAyY/YWEhOTm5pLXBQUFL7744qNUzMLCYtmyZaWlpWQt
9dWrV6dNmwYASqUyNjaWzWbPmjWLZMP08PAgO6yq1Wo2mx0REWFjYxMWFtbS0gIA2dnZCxYs4HK5
sbGx5eXlKpWqra1txowZUVFRYrFYoVDU1NSQBd+6+louIpEoOjqaxB4PD4/W1lbcix6hweXn5zMY
DLVaXVJSEh4ebmJiolKpSCY66pjp06e7uLjMnTv3yJEj165d8/HxCQgIIDP9GxoaqOWIBJfLLSkp
IaFHT3Bw8LZt2xITE+l0emFh4Zo1a0h5Q0OD7uX0OiYAYGJiwuFwGhoaXF1dOzo6SFMrISEBAPh8
fmlpKTUdn0aj3bp1y9PTc/ny5R0dHefPn79169aSJUu0Wm1bWxtJecfhcCorK42NjT08PA4cONDY
2PjOO+9kZGTo/SBEX3Dx8fEBgIqKij/++IPBYIwbN+7OnTtkl+ju7u7HuN+jSDqkN0PzSNdiKLmA
yzyYN9K1GD0aGhpIa6W2tpZ0WODPTHTUMWRZUFBQkL+/f0VFhUAg2LFjx8svvxwbG2tubq43Fb63
t1etVg94LVtbWw6HU1ZWZmtry2AwyEgHADCZTN3LDTgoS+rQ2tpK8t3plltYWFBfYbPZQqHQ09OT
nIfFYpFIpFQq6XQ6WWloYWGhUqm0Wu2CBQva29uZTKZcLm9vb3d3dy8qKlKpVGTjVnLC+wZ0GQwG
k8lUKBR6Q9DPp3RIL4CCka7FUAqEQAwuQyguLo78+vF4vJSUlPDwcPizg6N7mEKhuHr16syZMwMC
AgICAqKiopKSkqKjoydPnlxTU8Nms6kjb968OWnSpAddjvSM2Gy2bp/I1tZW73J6urq6hEKhs7Oz
SCSiNlGqqqry9PSMjIwMCwvbtGmTv7+/paUlCRxyubytrc3V1XXOnDk+Pj7Jyclbt24FAKlUamdn
19nZaWtrS8IHGRs6e/bsnDlzCgoKKioqPDw89u7dS8Z3gBpzEYlEHR0dXC43ISHBwcEhIyPD3t6e
x+PxeDxzc/PHueEIPXf8/f3b29v7bzNCmJmZXbp0qbq6mrzt7Ox0cnIyMzMLDAz85ZdfRCIRKa+q
qhIIBORZzIACAwPLysry8vIeccAFANra2o4dO/bCCy+Q9FRUvrv//ve/ZKilpaWFRqORpg3Jd6dU
Kvfu3UuaF2KxmDyxCgwMJPnxiouLdRdYikQiBoPBZrNLSkpmzpw5ffr0np4e6tO+lktZWVlra2tC
QoJKpZJKpQOu/kYIPYi9vX11dfWYMWMGzES3ZMmSb775xtLS0srKSqFQzJ07FwCcnJxeffXVHTt2
sNlsExMTCwuLv/71r9Rsl48//pjqX3zyySfGxsZmZmY8Ho88tKbOf+PGDd3LLVq0aPLkyRqNhhRa
WFgEBgbOnj0bAGxsbOzt7cl8loULF+7atcvV1VUgECxYsIB07khKKhsbm5CQkE8++YTJZIpEorfe
egsA5syZs2fPnvz8fJFI9O6771KXO3fu3KuvvgoAoaGhP//8s1Kp1G1G9WWiU6vVO3fuZDKZzc3N
Dg4Oa9eupX5IPp9P7gU8Z5noVsGq0dct+g6+G+la/G954kl0j0uj0bS0tJiZmenOggEArVYrEoms
rKx0p6sYSElJCQCQxpFGo2lubnZycmIwGADQ2dl56NCh1atXkyN7enqkUik1skM0NTWROEiV6GbM
02g03d3duj9FX8uFwWB88MEHUqmUwWDo5rBCCA0JOp1O7TGki0aj6f0OG46fn9+xY8dIcNHLFHP5
8uVZs2ZRb01NTfvXSm88GO7PmEen0/Xi430Duvj4GaHRLTQ0dMCZ/gEBAWTGzRDC6f/ouTYkXZ5n
SP/WBzHkkQVwVTRCyEAwuCCEDAKDC0LIIO5bFf3bb7+ZmppGREQYogOGEHqu9LVcOjo6fvjhhylT
psyePXvv3r3Xr18f2WohhJ51fS2Xurq6oKCgKVOmAEBYWFh9fX1wcPCIVgyhYRH0CLMK81b1L3us
1HBU2jqCSl5HDtbLZUedjcp0N/hV9L4ul8t1lyMOWNuHlg+JvuBCllQBgEKhKC4unjt3rlKpJMsE
ent7DXRthJ5RYrH4H//4xzvvvEMlMUlKSnr33XeNjY0HzES3a9cuoVBI7anq7Oy8fv36q1evHj16
lKzrYTKZkZGRJNlCXl5eTk7OunXrTp48mZ+fn5SURL5YXV3N5/PXr19/4cIFPp9PbcNobm6elJSk
0WiuX7+el5fX3t7e2toaFBS0ePFiMvtWrVb/8MMPVE6pK1euODs7k9XPP//886JFi3R/tJSUlAUL
FpiZmQGARqO5evUqWTdEln23t7cXFhZOnDjRwcEBABQKRUZGRmxs7IB36b55LsXFxWlpaVFRURMn
TqQ2or979+6T/ycgNEoxmczU1NQtW7boToeHB2SiA4Dly5f3T/AYGBi4fPlyAKipqUlOTjY1NSW9
B4pCoTh16tTChQv1vjht2rTXXntNt+T06dO1tbWrV682NTXt7Ow8fvz4d999RxYoZ2VlkcXWbW1t
2dnZFy5cIBcFAB8fn5KSEjJnt76+PicnJysrKy4ujnx69OjRtra26Ojoo0ePvvLKK5MnT05JSZk8
efLhw4cjIiL8/PwuXLgwyDLue0+Ljh8/npmZuX79erLrtYeHR3h4eHh4uN5SCIQQALDZbH9//5Mn
Tw7J2caPH//KK6/k5OTolc+cObOwsFAoFA7+daVSef78+YSEBLIkkMViJSYmNjU1kc5Hfn4+iVkK
hcLU1FQ3yYOfn19hYSF53dXVZW9vr7sv9bVr1xISErhc7pw5c8rLyzs6Omg02tSpU8PDw1taWjo6
Otra2gZ5+NPXcmloaKivr3/nnXdw23mEHlFcXNzHH38cHBysm65pwEx0APDHH3+QPJIA4O7u3n9M
c9y4cadPn9YrNDMzW7x48cGDBz/44APd8urqauoqgYGBRkZGNjY2umuXGAyGu7t7VVWVk5MTNSjj
7Ozs7OxcU1Ojeyq5XN7c3Ozi4uLt7e3t7X3hwgVS3tnZqdVqyZIgDodz/PjxJUuWsFis5OTkxsbG
995778SJE3PmzBnk/vQFl5s3b966dWvjxo3kbXh4+Pz58wf5GkLI1NQ0MTHx4MGDH330EVU4YCY6
AHB0dHR3dyevdXMmUB60Ktrf3z8nJ+fXX3/lcrlUoaWlJXUVS0tLjUbDYrH0vtjb29vb2yuRSAbf
yt7e3l4oFPZfptjT00NV3trammSkXLp0aVtbm5WVlUQiMTIysrOzy8vLYzAYA3aO+oLLnDlzBg9C
CKH+Jk6cmJOTc/78eaqkfyY6YsKECYNvqiEQCAZcNg0Aixcv/uSTT3RzYjo6OupdhUaj9fT0UJlS
1Gp1bW3tm2++WVpaOvjuRRYWFgNmnmSxWG1tbUql0sTERCaTUQugyTjJ2bNnX3311StXrty5c8fG
xuann35atmyZ3hlwhi5CTyUhISErK0sulz/NSWpra/l8flRU1ICfWlpaxsbGHj9+fJAz+Pn5HTp0
iMp4zefzeTyesbGxg4MDSUD3ICQBXf9yU1NTX1/fARPQ1dTUODo6slis0tLSqKioyMhImUzW/wy4
Khqhp8JiseLj45OTk8nbATPRAUBycjJ5MExs27YNAPLy8kpLSzUajbu7e1xcHMmTP6Dp06cPPrV1
9uzZhw8f/vvf/87lchUKhZubG0nx7+rqqvc8S49EIqH6a3rmzZu3f/9+DocjlUp1E9BlZmaS501h
YWEHDx6Uy+WRkZH9v07TndszIMxEN2pgJroBPOkkuv9NPT09EomEw+HodoVycnKcnJw8PDz6H9/a
2nrmzJn+PRqKVqttamqiEtYBgEajkUql1CMntVqtVCp1nzFRsFuE0Ohhamrq5uamN8gSFBRUUDDw
n8mLFy8+qC9G0Gg0V1dX3TYXnU7XfZjNYDAGjCyAwQWhUc/IyIjsJNvf1KlTDZdk874xl56enmPH
ji1dutRAF0Pof86z0+V5Gg96Gm3Q/Af3gktRUdHvv//e3t5uuIshhJ4f97pFXV1dDxo0Rgihx3Wv
5TJ9+nSxWEx2NkHPl44eaO0a6UoMNQ8boBsqmQB6FA+c51JZWUmWQpDt6NFodq4Kdlwd6UoMtQvL
wNZspCvxXHtgcCEbRQMAn88fxvoghEYJfBSNEDIIDC4IIYO4L7g4OTlt3rx5pKqCEBpNsOWCEDII
DC4IIYPA4IIQMggMLgghg8DgghAyiHuT6Nrb20+fPm1sbBwdHW1tbT2CdUIIjQJ9LReVSrV9+3YO
h+Pm5rZ9+/aHpqdDCKHB9bVcSkpKHBwcwsPDAaCoqKiurm7cuHEjWS+E0DOur+XS2tpKJaTicDgV
FRUjVyWE0GjQl6Cbz+drNBqyofTly5dlMtnEiROpVdED7jyA0DOBWoKLhllft8jS0pLaa1Imkzk5
OeF/CULoafR1iwICAhobG5VKJfTbAAkhhJ7AvX2L0tPTi4qKGAyGr69vXFzcyFYLIfSsu29TNLlc
LpfLHUffvmcIoWH38B0XEULoCfw/D9J18nxvkhEAAAAASUVORK5CYII=

--_005_33115ABC4887814E8A92A08FBC93416B0A141C66IRSMSX103gercor_--
