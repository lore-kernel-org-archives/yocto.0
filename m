Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 851AEE00782
	for <yocto@yoctoproject.org>; Tue, 26 Nov 2013 06:35:44 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2013 06:35:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,775,1378882800"; 
	d="xml'?xlsx'72,48?scan'72,48,208,217,145,72,48?rels'72,48,208,217,145,72,48?jpg'72,48,208,217,145,72,48,145?bin'72,48,208,217,145,72,48,145";
	a="434396852"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 26 Nov 2013 06:35:29 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.135]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.66]) with mapi id
	14.03.0123.003; Tue, 26 Nov 2013 14:35:01 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Liu, Song"
	<song.liu@intel.com>
Thread-Topic: Yocto 1.6 M1 QA Weekly report - WW47
Thread-Index: Ac7qtGZPsl38XEDDQ8WSe4t0ZHHTdg==
Date: Tue, 26 Nov 2013 14:35:01 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619FA6688@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Yocto 1.6 M1 QA Weekly report - WW47
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
X-List-Received-Date: Tue, 26 Nov 2013 14:35:49 -0000
X-Groupsio-MsgNum: 17357
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_006_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_"

--_006_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_005_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_";
	type="multipart/alternative"

--_005_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the weekly test for Yocto 1.6 M1 weekly build.
Highlights:

-          5575<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5575> -=
 routerstation image build failed with 20131119-7 build on Autobuilder ther=
efore all the tc's are blocked

-          5577<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5577> -=
 Layer cannot be removed in Hob

-          5581<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5581> -=
 Kernel file is not generated under tmp/deploy/images/machine for core-imag=
e-minimal only on mips and powerpc

-          5473<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5473> -=
 unable to create new bitbake commander project only on Kepler
The full detailed report is available on wiki: https://wiki.yoctoproject.or=
g/wiki/WW47_-_2013-11-19_-_Weekly_1.6_M1


Testing data

 Test type: Weekly

 Branch: master

 Milestone: M1

 Build name: 1.6_M1

 poky commit: 215dab864e7cf74394840621ad0754db593708f1

 Eclipse Plugin commit Kepler:  84c1361ee96b781666a23f068244d4f1252be712

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20131119-7

 Distributions tested: Ubuntu 13.04 64bit, Ubuntu 13.10 64bit, Fedora 19 64=
bit, Fedora 19 32bit

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

1543<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1543>

ADT: master branch

Fedora 19 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

1544<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1544>

ADT: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1534<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1534>

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

1528<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1528>

BSP/QEMU: master branch

generic-x86 on AtomPC

97.4%

none

2.6%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

1523<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1523>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

100.0%

none

0.0%

none

0.0%

none

100.0%

1533<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1533>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

1530<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1530>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

1547<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1547>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

1536<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1536> 1545<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1545>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

1539<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1539> 1540<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1540>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

1537<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1537> 1538<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1538>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

1546<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1546>

BSP/QEMU: master branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

1541<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1541>

BSP/QEMU: master branch

Routerstationpro

0.0%

none

2.7%

5575<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5575>

97.3%

5575<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5575>

100.0%

1535<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1535>

Meta-yocto: master branch

Ubuntu 13.04 x86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

1529<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1529>

Hob: master branch

Fedora 19 x86_64

90.5%

none

9.5%

5579<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5579> 5577<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5577>

0.0%

none

100.0%

1524<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1524>

OE-Core: master branch

Multiple environments

92.9%

none

7.1%

5578<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5578>

0.0%

none

100.0%

1542<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1542>

BitBake: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 17





Performance Test

Here is the performance test results chart cointaining the current weekly b=
uild and the 1.5 release. From the charts we can easily see that build perf=
ormance has  no degradations. It can be noted that the disk size has been i=
mproved. The full spreadsheet containing the charts is attached.


[cid:image003.jpg@01CEEAC5.7314E850]


Regards
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_
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
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:623653821;
	mso-list-type:hybrid;
	mso-list-template-ids:-1595137832 -857719812 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
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
<p class=3D"MsoNormal">Here is the weekly test for Yocto 1.6 M1 weekly buil=
d. <o:p>
</o:p></p>
<p class=3D"MsoNormal">Highlights:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5575">5575</a> - routerstation image build failed with 20131119=
-7 build on Autobuilder therefore all the tc&#8217;s are blocked<o:p></o:p>=
</p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5577">5577</a> &#8211; Layer cannot be removed in Hob<o:p></o:p=
></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5581"><b>5581</b></a> - Kernel file is not generated under tmp/=
deploy/images/machine for core-image-minimal only on mips and powerpc<o:p><=
/o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5473"><b>5473</b></a> - unable to create new bitbake commander =
project only on Kepler<o:p></o:p></p>
<p class=3D"MsoNormal">The full detailed report is available on wiki: <a hr=
ef=3D"https://wiki.yoctoproject.org/wiki/WW47_-_2013-11-19_-_Weekly_1.6_M1"=
>
https://wiki.yoctoproject.org/wiki/WW47_-_2013-11-19_-_Weekly_1.6_M1</a><o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;border:none;padding:0in">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;color:black;fon=
t-weight:normal">Testing data</span></span><span style=3D"font-size:18.0pt;=
color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<div style=3D"mso-element:para-border-div;border:dashed #2F6FAB 1.0pt;paddi=
ng:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Test type: Weekly<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: M1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.6_M1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 215dab864e7cf74394840621ad0754d=
b593708f1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler:&nbsp; 84c1361e=
e96b781666a23f068244d4f1252be712<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/nightly/20131119-7<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 13.04 64bit, Ub=
untu 13.10 64bit, Fedora 19 64bit, Fedora 19 32bit <o:p></o:p></span></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;border:none;padding:0in;background-position:initial initial;ba=
ckground-repeat:initial initial;overflow:hidden">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;color:black;fon=
t-weight:normal">Summary Report</span></span><span style=3D"font-size:18.0p=
t;color:black;font-weight:normal"><o:p></o:p></span></h1>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0" style=3D"bac=
kground-position:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;orphans: auto=
;text-align:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:=
0px">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt;background-position:initial initial;background-repeat:initi=
al initial">
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
se;border:none;background-position:initial initial;background-repeat:initia=
l initial">
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
rg/tr_show_run.cgi?run_id=3D1543"><span style=3D"color:#5A3696">1543</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Fedora 19 i686<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1544"><span style=3D"color:#5A3696">1544</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1534"><span style=3D"color:#5A3696">1534</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">92.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">7.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a></s=
pan><span class=3D"apple-converted-space">&nbsp;</span><span style=3D"font-=
size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D3936"><span style=3D"color:#5A3696">3936</span></a><o:p></o:p></span></p=
>
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
rg/tr_show_run.cgi?run_id=3D1528"><span style=3D"color:#5A3696">1528</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">generic-x86 on AtomPC<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">97.4%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:=
p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1523"><span style=3D"color:#5A3696">1523</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">genericx86-64 on Sugarbay<o:p></o:p></span=
></p>
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
rg/tr_show_run.cgi?run_id=3D1533"><span style=3D"color:#5A3696">1533</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">MPC8315e-rdb<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1530"><span style=3D"color:#5A3696">1530</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">P1022ds<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1547"><span style=3D"color:#5A3696">1547</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
rg/tr_show_run.cgi?run_id=3D1536"><span style=3D"color:#5A3696">1536</span>=
</a></span><span class=3D"apple-converted-space">&nbsp;</span><span style=
=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D1545"><span style=3D"color:#5A3696">1545</span></a><o:p></=
o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemuarm<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1539"><span style=3D"color:#5A3696">1539</span>=
</a></span><span class=3D"apple-converted-space">&nbsp;</span><span style=
=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D1540"><span style=3D"color:#5A3696">1540</span></a><o:p></=
o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemumips<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1537"><span style=3D"color:#5A3696">1537</span>=
</a></span><span class=3D"apple-converted-space">&nbsp;</span><span style=
=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/tr_show_=
run.cgi?run_id=3D1538"><span style=3D"color:#5A3696">1538</span></a><o:p></=
o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemuppc<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1546"><span style=3D"color:#5A3696">1546</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
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
rg/tr_show_run.cgi?run_id=3D1541"><span style=3D"color:#5A3696">1541</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: master branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Routerstationpro<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
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
<span style=3D"font-size:10.0pt">2.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5575"><span style=3D"color:#5A3696">5575</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">97.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5575"><span style=3D"color:#5A3696">5575</span></a><o:=
p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1535"><span style=3D"color:#5A3696">1535</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Meta-yocto: master branch<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 13.04 x86-64<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1529"><span style=3D"color:#5A3696">1529</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Hob: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Fedora 19 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">90.5%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">9.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5579"><span style=3D"color:#5A3696">5579</span></a></s=
pan><span class=3D"apple-converted-space">&nbsp;</span><span style=3D"font-=
size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D5577"><span style=3D"color:#5A3696">5577</span></a><o:p></o:p></span></p=
>
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
rg/tr_show_run.cgi?run_id=3D1524"><span style=3D"color:#5A3696">1524</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">OE-Core: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Multiple environments<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">92.9%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">7.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5578"><span style=3D"color:#5A3696">5578</span></a><o:=
p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1542"><span style=3D"color:#5A3696">1542</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BitBake: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
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
<b><span style=3D"font-size:10.0pt">Total: 17</span></b><span style=3D"font=
-size:10.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt"><br>
<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p>&nbsp;</o:p></span></p>
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
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><img border=3D"0" width=
=3D"849" height=3D"492" id=3D"Picture_x0020_1" src=3D"cid:image003.jpg@01CE=
EAC5.7314E850"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_--

--_005_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_
Content-Type: image/jpeg; name="image003.jpg"
Content-Description: image003.jpg
Content-Disposition: inline; filename="image003.jpg"; size=49158;
	creation-date="Tue, 26 Nov 2013 14:35:01 GMT";
	modification-date="Tue, 26 Nov 2013 14:35:01 GMT"
Content-ID: <image003.jpg@01CEEAC5.7314E850>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCAHsA1EDASIA
AhEBAxEB/8QAGwABAQADAQEBAAAAAAAAAAAAAAQDBQYCAQf/xABSEAABAwIBBwULCQcCBQQDAAMB
AAIDBBEFEhMUITGT0UFRU1SSBhUiUmFxc5Gx0uEyMzRjcoGhssEjJDVCQ2SiB1VEYoKDwhYl4/BF
lPEXZYT/xAAXAQEBAQEAAAAAAAAAAAAAAAAAAQID/8QAKREBAQABAwQBAwUBAQEAAAAAAAERAhJR
ITFBYfATIrEyUnGBkeGh8f/aAAwDAQACEQMRAD8A/WYhLM6U597A2QtDWtbYAecLLo8vW5vUz3V8
o/6/pnKlBPo8vW5vUz3U0eXrc3qZ7qoRBPo8vW5vUz3U0eXrc3qZ7qoRBPo8vW5vUz3U0eXrc3qZ
7qoRBPo8vW5vUz3U0eXrc3qZ7qoRBPo8vW5vUz3U0eXrc3qZ7qoRBPo8vW5vUz3U0eXrc3qZ7qzh
cj3bd0VZgc+GxUcsUDanPZcj6Z858BmU0BrSDrOq/ImcDp9Hl63N6me6mjy9bm9TPdXB1Xd/XU2E
mujp4ZpO9tNVGCIXa18kha45eVrGq1gL35VbL3bSYZj2IjEqarFBDBSyWbEwmlzmUHGQg89tl9hV
wOv0eXrc3qZ7qaPL1ub1M91c9V92NKzFJ8JbFPFWZuUwveGFr3MYXbA4uGrWC4AG2pa7CP8AUWjd
3N0tXWumnlLIYZJI2saySpczKdG0kgXA1m9gOfkUHZaPL1ub1M91NHl63N6me6tIO7PD5cEo8Spo
6mdtZNmIIImAyvkBN22vbVkuub21bViqe7mhpJnslpK/IgEWly5oZNKZLZIk13vrF8kG10HQaPL1
ub1M91NHl63N6me6uem7usPpo62WaCrEVJU6IZCxobJNlZOQ0l333NgBtKow/utwzFcO0imqY4pX
GRjYZnty8tmogAHwtfikg86eMjc6PL1ub1M91NHl63N6me6uQg/1EpafCqeaugrKh4pIaqpmpoAI
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
mn+l0v2nflKBog6afelNEHTT70qlEGixWJjKiiY6WbJEjpn3kJs1jSfbZZsIoiMKgdJLKJJG519p
CNbvCPtUWNEz4i+EHbA2AeeV9j/iwroWgNFgLAagrO38rq7ycT8sOiDpp96U0QdNPvSqUURNog6a
felNEHTT70qlEE2iDpp96U0QdNPvSqUQTaIOmn3pTRB00+9KpRBNog6afelNEHTT70qlEE2iDpp9
6U0QdNPvSqUQTaIOmn3pTRB00+9KpRBNog6afelNEHTT70qlEE2iDpp96U0QdNPvSqUQTaIOmn3p
TRB00+9KpRBNog6afelNEHTT70qlEE2iDpp96U0QdNPvSqUQTaIOmn3pTRB00+9KpRBNog6afelN
EHTT70qlEE2iDpp96U0QdNPvSqUQTaIOmn3pTRB00+9KpRBNog6afelNEHTT70qlEE2iDpp96U0Q
dNPvSqUQYI6cRPyhJK7Vaznkhe3vyI3Ps52SCbNFyfMsiINZ36HUcQ//AFysVRiszqOd9LTzRSxR
mQGpgdkG3JqI1rbrDUVEVLC6WolZFG3a97g0D7yrmY7JJeWnnxyqpZXxaEKh0Vg97XZsfJytQN+Y
8vMvFN3RzVlI6anw+QETtiEbpG5Tgfv8EjmK30M0c8YfC9r2HY5puCvrntZbKcBlGwubXPMorUYL
i8uIzTtkdDdjWEsZfKjcb3a7Wb21axYa1sT/ABJvoj7QvcVRDMXCKVkhZqcGuBt514P8Sb6I+0IK
UREE1H/X9M5Uqaj/AK/pnKlAREQFin+jS/YPsWVYp/o0v2D7ECn+ixfYHsWVYqf6LF9gexZUGknG
kd1tKz+WlpXyeYvIaPwBW5stPhn7fHMXqdoa+OnafstufxctxfWq1q8R6REUZEREBERAREQEREBE
RAREQEREBERAREQEREBERAREQEREBERAREQF4eHFjgx2S4jUbXsV7RBqtDxX/dI//wBUe8vE2G1d
VSzw1dZFPHJG5oYacNAdyG9zsW2RTEauu3j/ACNFLglW6QinrHU8DQ0RxwvLALNsb2HOF4pcIxQ0
ssddiUkkrpo5BI1w8EB1zkjJ1c1tYXRIqy0+EYbUUE8+dLXMe1gEmcLnPIvckWAG0bOZbA/xCP0T
va1UKc/xCP0Tva1BQp6v5gekZ+cKhT1fzA9Iz84QUIiINBPjVTDWVsTWwuEDCWsIcHCwBBJ5b3Ng
APknWvuH41JPVshllpX5UWWC27Mr9pk5QuTqIsQPxW+RBzNJ3RTz4lTwDMSwyyPaJYmm7rbBkl1x
bXc69VjYXW6q3Fk9MWsc85TtTbX+SedWKaf6XS/ad+UoGkv6rP8A48U0l/VZ/wDHiqV5c4MaXONg
BclBzNPMarujkeIJSGSueRq/kaGDl53PW/FQ8f8ACz/48Vpe5ZpmZU1jtsjskesvP4v/AAXQgpe0
i6v1X52YNJf1Wf8Ax4ppL+qz/wCPFUoiJtJf1Wf/AB4ppL+qz/48VSiCbSX9Vn/x4ppL+qz/AOPF
Uogm0l/VZ/8AHimkv6rP/jxVKIJtJf1Wf/Himkv6rP8A48VSiCbSX9Vn/wAeKaS/qs/+PFUogm0l
/VZ/8eKaS/qs/wDjxVKIJtJf1Wf/AB4ppL+qz/48VSiCbSX9Vn/x4ppL+qz/AOPFUogm0l/VZ/8A
Himkv6rP/jxVKIJtJf1Wf/Himkv6rP8A48VSiCbSX9Vn/wAeKaS/qs/+PFUogm0l/VZ/8eKaS/qs
/wDjxVKIJtJf1Wf/AB4ppL+qz/48VSiCbSX9Vn/x4ppL+qz/AOPFUogm0l/VZ/8AHimkv6rP/jxV
KIJtJf1Wf/Himkv6rP8A48VSiCbSX9Vn/wAeKaS/qs/+PFUogwMldIbGGVnlda34Fe3tLonNa4sJ
BAcNo8utZEQazvbWf7vVbuL3Udhs74Z458QnmZLGWWexgDb8uoBbHJSwUxGrrt/+Rpazubgr6mSa
aUuc75N23yPBI1a/KD9wWOl7loqekfTy1EkzXztmc5xcHOtznK2+UWXQIqy1eE4UcMdLaVr43NY1
rRHkluSLazc3KrP8Sb6I+0KlTH+JN9EfaEFKIiCaj/r+mcqVNR/1/TOVKDU4zFWysh0LO6nm+bkD
CDbwSb7Wg7R+BUdZFjEjqptGJgXxxlrppWsFxlZQbk3sT4PJz610SINDWxYlNVs0Rs7DmnjOPla2
O5JABAubgaw6x5PKthTtnZg7G1Xz7YbSeFleFbXr5VcsU/0aX7B9iCan0zR4rGC2QOR3Msn74Brd
B6islP8ARYvsD2KbGajRcIrJhtZC4jz21fiiyZuGv7nRUvwx1Q0xfvM0k3hA31uNvwAW1/fP7f1O
XzDqYUeG09OP6cbWeoKpSGq5twm/fP7f1OT98/t/U5VIqiX98/t/U5P3z+39TlUiCX98/t/U5P3z
+39TlUiCX98/t/U5P3z+39TlUiCX98/t/U5P3z+39TlUiCX98/t/U5P3z+39TlUiCX98/t/U5P3z
+39TlUiCX98/t/U5P3z+39TlUiCX98/t/U5P3z+39TlUiCX98/t/U5P3z+39TlUiCX98/t/U5P3z
+39TlUiCX98/t/U5P3z+39TlUiCX98/t/U5P3z+39TlUiCX98/t/U5P3z+39TlUiCX98/t/U5P3z
+39TlUiCX98/t/U5P3z+39TlUiDDFn7nOmPJtqyAVmREBERAREQFOf4hH6J3taqFOf4hH6J3tago
U9X8wPSM/OFQp6v5gekZ+cIKEREE2m0wlliNREJIm5cjcsXYOcjkC8wYjSVMjWQVMMj3Mzgax4JL
b2v5lDPgYqKipe6fwJg7JaWA5BcBc35fki3NrXilwF1PVZ59TnLuMrgYgAZDa7hr1Cw1DkOvWg2Q
rqUyiIVERkc5zGtDxcuG0ecL7P8AS6X7Tvylaym7nmUs1O6OqmeyGV0oEli65FrZWrVz3BPlWwq4
xJUUzSXAZTvkuLT8k8oQV8i12Oz6NgdZJyiJwHnOr9VTocfjz75/FaLuqpw6hp6WN8hdV1McVnSO
Ite51E+RMZ6Lp7tn3PU+j4HStIsXMyz/ANWv9VslM2jja0Na+YACwGedxX3Q4/Hn3z+KXrcszspR
T6Gzx598/imhs8effP4oqhFPobPHn3z+KaGzx598/igoRT6Gzx598/imhs8effP4oKEU+hs8effP
4pobPHn3z+KChFPobPHn3z+KaGzx598/igoRT6Gzx598/imhs8effP4oKEU+hs8effP4pobPHn3z
+KChFPobPHn3z+KaGzx598/igoRT6Gzx598/imhs8effP4oKEU+hs8effP4pobPHn3z+KChFPobP
Hn3z+KaGzx598/igoRT6Gzx598/imhs8effP4oKEU+hs8effP4pobPHn3z+KChFPobPHn3z+KaGz
x598/igoRT6Gzx598/imhs8effP4oKEU+hs8effP4pobPHn3z+KChFPobPHn3z+KaGzx598/igoR
T6Gzx598/imhs8effP4oKEWGOnbEcprpCdnhSOcPxKzICIiAiIgKY/xJvoj7QqVMf4k30R9oQUoi
IJqP+v6ZypU1H/X9M5UoCLVYziUmGxxGMRXe4j9oSAbC+SLfzHYFrKzulqIKiWNgpGhpIBe8nIsA
fCI8a9m+XnQdQsU/0aX7B9i0Nd3QzU07GNZTjKYLiR5u25cMs2/lbbwvPyLaUtS+swlkpZZ8kV7N
2E25PIeRBTT/AEWL7A9i13dB4dJBTdYqY4z5srKP4NKrgqo2wRtcJQQ0AjNP5vMoayTP4vQFscph
hzkjnZl1g62S0bPKfUpWtPS5bkbF9U+mRc0u6fwTTIuaXdP4KsqEU+mRc0u6fwTTIuaXdP4IKEU+
mRc0u6fwTTIuaXdP4IKEU+mRc0u6fwTTIuaXdP4IKEU+mRc0u6fwTTIuaXdP4IKEU+mRc0u6fwTT
IuaXdP4IKEU+mRc0u6fwTTIuaXdP4IKEU+mRc0u6fwTTIuaXdP4IKEU+mRc0u6fwTTIuaXdP4IKE
U+mRc0u6fwTTIuaXdP4IKEU+mRc0u6fwTTIuaXdP4IKEU+mRc0u6fwTTIuaXdP4IKEU+mRc0u6fw
TTIuaXdP4IKEU+mRc0u6fwTTIuaXdP4IKEU+mRc0u6fwTTIuaXdP4IKEU+mRc0u6fwTTIuaXdP4I
KEU+mRc0u6fwTTIuaXdP4IKEWGOoZKSGZdxr8Jjm+0LMgIiICIiApz/EI/RO9rVQpz/EI/RO9rUF
Cnq/mB6Rn5wqFPV/MD0jPzhBQiIgIufqMWq4a6ujY2NwhYS1hjdcWAIN/wCbKudWr5O1YqDGayes
EcuaeyxAOaczLbcZMgOuwOwDn5UHSqaf6XS/ad+UrQ0WOV1RWQRyZBY9wGqBzcu48IAk6sjlPL5F
vahrxNDI1hkyCbhpAOsW5SgpWkrWaV3U4dFtbTRyVDvObNb7StppEnVJvWz3lr6eKpbjFZVy00mT
IyOOKzmEhouTy85RdPlt19U+kSdUm9bPeTSJeqTetnvIihFPpEvVJvWz3k0iXqk3rZ7yChFPpEvV
JvWz3k0iXqk3rZ7yChFPpEvVJvWz3k0iXqk3rZ7yChFPpEvVJvWz3k0iXqk3rZ7yChFPpEvVJvWz
3k0iXqk3rZ7yChFPpEvVJvWz3k0iXqk3rZ7yChFPpEvVJvWz3k0iXqk3rZ7yChFPpEvVJvWz3k0i
Xqk3rZ7yChFPpEvVJvWz3k0iXqk3rZ7yChFPpEvVJvWz3k0iXqk3rZ7yChFPpEvVJvWz3k0iXqk3
rZ7yChFPpEvVJvWz3k0iXqk3rZ7yChFPpEvVJvWz3k0iXqk3rZ7yChFPpEvVJvWz3k0iXqk3rZ7y
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
rvpJa9v5fL/y+Q+ooNwi1L6ynY9ze+che12SW3YLHV/y+UJplNYE4nKAQXAnJtYX1/J8h9SDbItU
6qgEAmGIzFjr5NsnwiNoHg7UgqYJ8gMxCbKfqDTk3vzfJ2hBs3ODWlziABrJPItDjWLHN6NQB805
cw3iJBF9YySARe2ux1WvfUvEmLN0ypwycGqia7NS5PzrQ+2T4IGtuu2UNmq/KVfhGEQ4ZGckuc8i
13HKIbzX5fPym52koMlBhrKYuqJI4zWyj9tM0a3HyX2DUNWxbBEQEREBERAREQEREBERAREQEREB
ERAREQEREBERAREQEREBERAREQEREBERAREQFOf4hH6J3taqFOf4hH6J3tagoU9X8wPSM/OFQp6v
5gekZ+cIKEREBERAREQEREBa+vxamw8PEr7yiMyCJvynDyeo+orximKx4bTvIIknABETXDLySbZW
STcgX/BR09L36zMtdDG59PqbUMbkicEA6td2i9rg8o1bLoMeHUtTiOIzVlZEG07iCxhAIeQNRtcg
25HcvlFrdGvIAaAAAANQAXpAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERARE
QEREBERAREQEREBTH+JN9EfaFSpj/Em+iPtCClERByMcjSwNjwiubmnFoLXAFpFthv5AsjZS2OVg
wiuyZTlOFxtve416jfWuho/6/pnKlXI5Rzy83fhOIPJFiXPBvbYTr2+VeJsqaRju9de3JJJySBlA
5Vxt2XcV1yJkck3JYXluDVvh3vrHLby+QJYG98IrzlXyruHhXvt1+U25rrrUTI5R7zIbuwivPhF9
soWyjfXt26ypziEdJXRh2D4m2TKAY8jwQS21gb22AhdbPBHUwSQzNyo5Glrm84O0KagoDSAiSZ02
SSIi/bGzkbfl851pkaruchdNiGIYlNRy076lzSwTfKyQ0C/kvb2LpERQEREBERAREQEREBERAREQ
EREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBTn+IR+id7WqhTn+IR+id7WoKFPV/MD0j
PzhUKer+YHpGfnCChERAREQEREBRVtTJHHKykzclWGZbIXPAJF7X83/24VqhrMMgrZIpZA5ssTgR
Iw5LiOVpPinlCDWyU0GOmnkq8OBfFI9jnPILckbRf+YHm5wderX0C8tAa0BoAA1ADkXpAREQEREB
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
wVfzbPSs/MEGdERBPSfMH0j/AM5VCnpPmD6R/wCcqhBrMUwzvmyJjpc21rsokNJd92uw+8H1rLht
C6gpjG+Rsj3OynOazIGwDULm2oDlVbntYQHOALjYAnakcjJWB0bmuadhabhBHT0+ehzjpprlztkh
A+UVm0NvTVG8KUP0Ufaf+YqlBNobemqN4U0NvTVG8KpRBNobemqN4U0NvTVG8KpRBNobemqN4U0N
vTVG8KpRBNobemqN4U0NvTVG8KpRBNobemqN4U0NvTVG8KpRBNobemqN4U0NvTVG8KpRBNobemqN
4U0NvTVG8KpRBNobemqN4U0NvTVG8KpRBNobemqN4U0NvTVG8KpRBNobemqN4U0NvTVG8KpRBNob
emqN4U0NvTVG8KpRBNobemqN4U0NvTVG8KpRBNobemqN4U0NvTVG8KpRBNobemqN4U0NvTVG8KpR
BNobemqN4V7igEVyHyOv47yVmRAREQEREBERAREQEREBERAUs306m8z/AGBVKWb6dTeZ/sCCpT1f
zA9Iz84VCnq/mB6Rn5wgoREQag4NaSpeyoeDKHBl2NObDrk259bidfmWalw3R8l2eMj2sZHdzBqD
Qdg5Lk3VGmUt5hpEN4fnRnB+z+1zfevbaiJzslsrHOyQ+wcL5J2HzeVBHQYXoeadJUOndEHgEtDR
dzrk2HLyLNOxslXEx2Vk5DzYOI13bzede4qynnbGYp4pM4CWZLwcq223PZfX/T4fRv8Aa1A0KHmk
3ruKaFDzSb13FUIgn0KHmk3ruKaFDzSb13FUIgn0KHmk3ruKaFDzSb13FUIgn0KHmk3ruKaFDzSb
13FUIgn0KHmk3ruKaFDzSb13FUIgn0KHmk3ruKaFDzSb13FUIgn0KHmk3ruKaFDzSb13FUIgn0KH
mk3ruKaFDzSb13FUIgn0KHmk3ruKaFDzSb13FUIgn0KHmk3ruKaFDzSb13FUIgn0KHmk3ruKaFDz
Sb13FUIgn0KHmk3ruKaFDzSb13FUIgn0KHmk3ruKaFDzSb13FUIgn0KHmk3ruKaFDzSb13FUIgn0
KHmk3ruKaFDzSb13FUIgn0KHmk3ruKaFDzSb13FUIgn0KHmk3ruKaFDzSb13FUIg+AWFgvqIgIiI
CIiAiIgIiICIiAsFX82z0rPzBZ1gq/m2elZ+YIM6IiCek+YPpH/nKoU9J8wfSP8AzlUINZilBLXP
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
oo+0/wDMVSgnzdV08W6PvLVVrZ6jG6GlM0ZzQdUu/Zmwt4LeXncfUt6tRh37zjGJVe1rXNpmHyNF
3fi4+pWC/N1XTxbo+8mbquni3R95UIoJ83VdPFuj7yZuq6eLdH3lQiCfN1XTxbo+8mbquni3R95U
IgnzdV08W6PvJm6rp4t0feVCIJ83VdPFuj7yZuq6eLdH3lQiCfN1XTxbo+8mbquni3R95UIgnzdV
08W6PvJm6rp4t0feVCIJ83VdPFuj7yZuq6eLdH3lQiCfN1XTxbo+8mbquni3R95UIgnzdV08W6Pv
Jm6rp4t0feVCIJ83VdPFuj7yZuq6eLdH3lQiCfN1XTxbo+8mbquni3R95UIgnzdV08W6PvJm6rp4
t0feVCIJ83VdPFuj7y9QtmbfOyMfzZLMn9SsyICIiAiIgIiICIiAiIgIiIClm+nU3mf7AqlLN9Op
vM/2BBUp6v5gekZ+cKhT1fzA9Iz84QZ1w3c9htZH3YVc9XQxRR2e5k7ZW5bhlWbciQucCL/KAGoc
q7lcTgOBTYd3W1EwrMOmDAYwxpvNGw2dkWsCOQ+E51hsGtJ3PDdHApM7WO/d3Z8ODQ6M68rKPh6/
CsXW8y90eFVFPMXyGmcDDFGcljgSWAi5169uzyLc3S6DR4bgs2H1MMuVTlrGSh2Sw5XhuDrAk7Bb
l5ytjUMe+shDJDGch+sAHlbzqu6wP+nw+jf7WoPmYn62/sN4JmJ+tv7DeCpRBLmJ+tv7DeC1FVpD
8cYxlQXOgaA0lgsHv2+pjSfvW/JDRc6gFosE/e6qWsdse50ov/zam+pjR2lnOJ0/gbLRqq3hVr/+
mNo/Qrw/Dpn/AP5GrHmyB/4q9E2QawYS+3hV9W485eF9GFyg3GI1g8hc0/otldE2aeDCNtHO0aq6
c/aaw/ovmi1ZNjWuDfJG0H1/BWopsnymGuZhQact9Q+V/jSta4j1jUqdHnH/ABb+w3gqF9WpJOwm
zE/W39hvBMxP1t/YbwVKKibMT9bf2G8EzE/W39hvBUogmzE/W39hvBMxP1t/YbwVKIJsxP1t/Ybw
TMT9bf2G8FSiCbMT9bf2G8EzE/W39hvBUogmzE/W39hvBMxP1t/YbwVKIJsxP1t/YbwTMT9bf2G8
FSiCbMT9bf2G8EzE/W39hvBUogmzE/W39hvBY30T5AQ+fKB5DEw/orUQa1uFGN4dDVzRf8sYaGn7
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
avraGma4OETbtNweYoKEREH/2Q==

--_005_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_--

--_006_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Performance Comparison.xlsx"
Content-Description: Performance Comparison.xlsx
Content-Disposition: attachment; filename="Performance Comparison.xlsx";
	size=46083; creation-date="Tue, 18 Jun 2013 12:04:20 GMT";
	modification-date="Tue, 26 Nov 2013 14:31:05 GMT"
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
Jm8Z65C21C84V8BOBxl4GlxOKMLCBVmqp906MCD9wnWI1kJ9tPqhaN/WZUd+XZLyom1O4I7ouj3u
VsuaNjp/yIGvAOTtW7hpgcV/AHZzUdKIopaXTEqgDsW0G0bhwuMUDtlMqEI0dM1g5a+LusV7J2cS
BbaFd4qTyLbgxlL9SvNBq+ObZ0O10Yp+2dkCZ9tGp+3AOS7C3Z3s/G8AAAD//wMAUEsDBBQABgAI
AAAAIQAExfSLVhQAAMNaAAAYAAAAeGwvd29ya3NoZWV0cy9zaGVldDEueG1stFzbchs5kn3fiP0H
hZ5mH0xVAXVVWJ4Ym3dKPR1zfaYlymK0JGpJ2u7er9+DAhKFREIU5bEYCpNG5QUFHGQmEln1/s+/
P9yffFttd+vN48VpPshOT1aP15ub9eOXi9N//mP8rjk92e2XjzfL+83j6uL0j9Xu9M8f/vu/3n/f
bH/b3a1W+xNIeNxdnN7t90/nZ2e767vVw3I32DytHnHldrN9WO7x3+2Xs93TdrW86Zge7s9UllVn
D8v146mVcL49Rsbm9nZ9vRpurr8+rB73Vsh2db/co/+7u/XTjqQ9XB8j7mG5/e3r07vrzcMTRHxe
36/3f3RCT08ers9nXx432+Xne9z373mxvCbZ3X+E+If19Xaz29zuBxB3Zjsq77k9a88g6cP7mzXu
wAz7yXZ1e3H6UZ//WlSnZx/edwP0r/Xq+y74ffJ/m83D36+X96tfzIjeY64yzJWZhc+bzW+GfHZz
cZpB8G51v7o243GyxNe31afVPciHusZM/m+ny/yGojOvKfxNWsfdzP26PblZ3S6/3u//tvk+Xa2/
3O2hWg3qEoNhxuT85o/haneNyYD2gTJyrzf3EIJ/Tx7WBlQYy+Xv3ff39c3+7uK0HaimzMtKQchu
/4cZX8Ds+utuv3n4tyXJnSArQjkR+HYi8myQF1kk4fNqtx+vTQcPStNOGr6dtKJDOXXkSDGFE4Nv
J0apQVOWRdWY0elv7Eh54OnGCd8kL//xm6ycNHzTkDU/Lg3Y6fqGbydNY7ITk3jkvWK8O3n4pntt
BnWetfqHhq514vBN3cv/k6nIsbQsZs0as4hU1Y8PX+7XAH44ee1/II7WQ94vCFUOyjrT+dFrKqdl
YH7QPapBocq6iaQcOak5rQhV9qh7/VovCWx5pZt+cSXGy9gwa2w6SzZc7pcf3m8330/gSnBTu6el
cUzq3Nxh0ljBShnaj4YYVgPwgfHYwYZ++5C9P/tmxDuSTwmSnJMMEySKk4wSJJqTjBMkBSeZJEhK
TjJNkFScZJYgqTnJPEHScJJFgqTlJJcJkjwa3qsUTT++Z5hUP7OABJvZziPpAczm/m59/dvHjXUA
qQkvMbV2xo0QQAPL2894Hk3WpxRNdPtDT2P8nsHSyLXkKRSND12cHLo4PXRxduji/NDFhbuoUr29
dBdNUCEWxNUzF9lUGTcYLsJuqoqBsVHW2/uI4lWTZ8Ri8mBknp+8FE20joYJGhUtgZGjqbsxKAd5
WRdZ/9eM3kWoGTuGpmNoBm2pmlaXOXyl+Ru9i9b7hCkoEFgVlWrdn86UUDBlCvSgypo8I/Fl3goN
s4ghr7NcN/5Tj95F4zJnDPmgrlzn7S0UgmHBGNSgVDovmv5v9C4yT5eOoeoGSQERedHmqsiLsszg
frgBuWLUBfxcjdCjrqoq64JIT82wB3S8BfaM2Jewl6KJjOIwQaMi4zJyNB57TZGpuv8IaIwdg8Ve
O9BV3eqWJqLMBTQmTEMxaHWlEQC07g9YitA9ZRr0QKsS4QLiDvsHaETwnkUMmOPG96hoKoGlOWMA
+Nq6KJ14o0QwLBgDAhimwKy4GHyOwYMvL7Rq6qpsqtbsKTycOnt+xagLLLci13WhsqossE77aWXg
M3utNzB8RuxL4EvRREZtmKBR/Z1YP+ZoCHyqKFTeGyaBjLGjJ+wBqFmj/UciY8IUAHvczGCiY+wx
DcCemQoYAfuppYZZzADT4qFaZ9KOzRkDdhAqr/1iKFstsccYgL1wjFSbwJ5j8NhTldKNgtHTCrzR
HFwxamAP8KyLOsNNIEL3OGXIMzvZN0CeEfsS8hI0KorzhimayNyPHA0hD16h959ljmmLgDF2DAS9
smgyDCe5aekRJ5GGTBe18p88AT2mAbEm65ICMGKzFzHoMqvawn/g1WOfyxgAvaLRNYUBWHaCYcEY
1CDy0bjpHiDdgr50DB56LWwY/HSWNnuMGmEJEKewfIq6LJuy7XvPwIcN1FuAz4h9CXwJGhXhZJig
0RFAR46GwKd0rYKhleHY2DEQ+Oo8b7LSfxI+l2kwdq/JMvK4ZQuGqNtTpgF2r84Q+PiQDNCIwRcx
IFhqAizBKvXT10Fjzhjgc/kHWIoYFhFDeMe49YTdcwwefCUiGaxqYFy38O/ellmfy6hh9+q8KioM
LL5Mzs9TM/CZpM1boK+T+xL8UkQquq1hkiga2hEReQQyQFWwNRE+xsRBEGxYlFhJgEyIw+oABqvQ
z6lE3EccVodxvsEWommkjZ3FHEoXbRDISYs25xyAYeB7TUQqYRhzNIjjKBbFjwQOiaMHYq4rRHTY
1qkceVsPLQtETm6QiB2WrpuqUl2y0pNzJCLL9yZINHJfRGKCKFgy3X0NTUIylqSiyHdERIREzcOh
hCMmDkJiq1QQvBeYwWhJTIiDkIiRDfcHCVdMHIRExS1uIgzkHApb8rZoKTpAmCBwNecc+aBo2jII
ZhOBYMxRa9ir4CPdMXH0SKyrGnudFsYO1joOBTk5kNjCLWEV1hVW1bPRoEkQvwkSjdwXkZgg0lGw
N+x6GEnSkYUbEREhsQ/uuigvZROdbkIifGwY5EmUTLgO45cD6Oo6hUSmo3PMIbCkjhnpsL0CEosy
dOXS0c45Rz4oebZHYncRczRsS5/yzcTRI7FqEPforDvJ8ibOWUQ/qSYpaHBo6MqqbcwGpul3mtwi
mvzuG2xLTGb/ZRwmiHRkiIYpSVr4ZieJcFhkbbBxSASHJJVgWDV54KOKlGtmKgDD0GnWqXwg12Fc
swpD1sTmhHMAhjh5q/qEnQTVnHMYGPYRK1wzgtZoqBYxB3xrFnwwVpGvvSSOHoZw4YXOsAfvTqRi
IPpZJSDmdV2pugTekczpnRkHoklbvwUQXTocnXo+J20OyAxaQyLdd9S55hRRv6w6ohFJKigtjcxp
4KDKRJDoxJojkG8f2gE2yYFPSyLRcVgdxQD7xCADpFIGkekAEvOmqYKEuXD/M7oP2ysgsWHbLelo
55zDIDHcWBeSYxFzNHndJ7JUi7ESSHT30SMR8V6LfV3Tdp8YiYzcmESkpfIG8W736eeOI9FktY9F
YuowCxPZgeFj7vLjIazEYVaKSEcJ52GSKIpERkTksdeGwVQhcTEmDjvLzaCosvJwgoY4CHsvb5KJ
w+owzhin0D7lgkmODP4sZmBdSkeFbpytCkCvVFGKUxhBxqEGLJ2oYP0F8vxUmlWKehL4VCT7cIgU
Y44R4kwE9tWg2kKufQ5zJpktMFeZs1NxHncYcjYrjqCUzj0/5aJpKJtGrqn1fGMiynzTRBBNJdFM
Ns1l00I2XVKTrVUyZ7ZX1KRNH/gqNSnYnzJiLpd7eJEmiKSDSBH1E+4chCPyi/RlB+E4LLqPchBM
x1EOguk4ykEwjqMcBOM4ykFEHEc4CMeh7flliUxFpaLFf5UzIpxvtmXV03CUmWzrT0GZS9sylEWW
71OeIJIZghRRFKuMSBKZaeZYK50KiJ1Y7wrqIC0Exyns9EToMNVJfSSZyJcSh3cFba2DZDocVDQi
M8FRN+GJAHZy/cR162vOOfJBVahgx5/Jndwi5ng5Z0ocDmWIbRW8ZuwI/DwZj4G0apsH22eOMpNW
/Skoc/nZwyhLEEmUpYgEyhyRR1no2YtCZivHppLLBNoeZVmYAK9SeahYR5sFexyT34w88JTrgC1r
Mfh93UNq28V6ZUKUKiwnSWVEGQdQpsNwWqdQFnEcYcscR4CyJkBQB/crullL1KGs6U9OGMpMTdVP
QVknKNot5dHK/ZQiEihLEsUoIyKPsmA9m0SeQMCYOAhlKEsJjopKmf+ZEIfX0fJTb6FjShy9LVPh
uToQEI3ITHCEGfHE1p7TA2NlXqk+iZ7Y2sccL2OMOHqMIZccLagrTtRhLAh7OcaSCfYfiGOVzYOH
caxsGsqmkWtqEQDcdjv+u+V2dXNqa/lx9fyqo1h3Jfl/+dfob3+ZjP4Ef3k+Utn/vD+7tTmLWhVI
kTfGdFQ5jljF/I9JtanBY4p2nWiEq98+NNiJ5ChfsVIUXJdAxeS5/gZicMj7otE7pjvHmMIj5dRu
C213NQkDeYwc45zDAoImkSM4Tk4D14rsfFa0qNnAD7l/IzmmnvK56ULJR42jdJRnuY9YCA6UZrU8
J8QuD+QaqPzFhwV8oZjUROjyD+7qlE1kHKyDTtHEOf0UTXSToxRNZMrGKZoo/pmkaKJd9TRFE5n/
WYom2lTNUzRRCmWRookyKJcpGlERnSTqR5pPs8kGhNPcFdqm7eEriqS7ZwnggcMqaR0N7qcUUR6N
yrAnonzBiJrShdIHr04OXp0evDo7eHV+8OqCrqbLpelqul76uat8Il+RoHnNRNrcDKuYlhOZIMqj
5TY0IuIDF1EzTUT+mCRMNeukm3Ni7TlJPUCmuQxKXWUwPYl1sJqYJrEpmBIHHb7xI8FU4TTnKAZh
vWGFw1q5LeQcSPj1pyoow60TAXvMgbO04MbrRAkDcfjsNI4QcQaOehqUJugyMjZXnNx4DNR8YR9R
ZdmBSi5lkhdvYFFcTgTT7Y9JJBATRHFp5LDrIGxTKEkUUBMRAZEVK6OOMhFvOd0WJHhiTjdlX2Va
J3aOsY7wbMGcGggdU+IgIGIbGJ6sIKyIHOGMcxSDPA/LtM1OI1qnc86hUGDPYCWhu4g5jgCin6cu
WY0kNOq5cNyc40AwUcFACixuAUTEvahfeOHATpn8xhsA0aVNQvhIICaI8igoGHYdjIEYLcIREREQ
6zKsRjAFpFF8NCYObxFRHeJ3pJkpLY5AMiEO0oHKTiQcYXbsnwT7lDgIiE1T4PlLn1uTYJ9xDgCx
KMLSMfRKANGNIengDwxUKSBGHEcA0c8TARF3Ap+DbFlXLO1jY5vMoJvwQITZhEnEwySoBasDS8Nd
s8mTvAEQXfrlMBATRKK0WqWI+oDRngsQEYGEVcTrWlqrMXHYCWxQFM+yHOAQQHQdIR14SCRIjOXy
cHrKdeApasxCcKiYOL3jHHDNVWgS5Q5vzhngmaOaR4HcRcxRlSh06Z+AwOqIQuFL4nCeuRxo42Kb
KkeldVYWkeW44uQ4PzEAbPHcRPcMVJDFYjjUr8ivvSJE7MRGZkwYxBSRqLJOEYkyayIijCCaCs9S
EwaROAiHyLaxqhWJQ+IgHQo1c31NaaKSdkocZKwaVB0HeXqZ0ZtxDo3awjo85E0AkXMAiEGyzZR2
SyByDvNge1/9bZ8pjIFIHD5EbFBXUaMaI8dpMnJFkUHk5OYZRIAVtU0ZHrJDaNk7Mw7EVyThXgNE
m/1ggZ0EYoJIlFvrFFHkn0ZERCBhZQNwh9IzE4cFCR5LZ1mzVoJkQhykQ/HawoRBJA4CYs2qdUyB
dmR0Z5wDQNRh6U3CMXMG4DBEOor4Ezh042k7BRy+WFlIOgIc4skZHHqg9Khtimgurji5waFuzXkW
iuawr9G9/eQ4NBWJP98xa1/oeGCrkiIKDHfnc4dJomgNjoiIMHKEQWTlp+0gwyF0UMYnIDKJVWj2
WEgFUEVB6JQ4CIYoLwlL+LE4BAxZp/B0smJnXDLcm3Md5mljs5P1cavkWMQcR9hDP5cuQGwrFPfi
GeJk0T/Jp/gQW5QWaVY83Ie4JHvu2SeN09Aehgjnfk4OrhP7ol82umOiKPQbJiVFMz4iIoJh5GQR
9EQcY+KwGEF8GEZuSOALjEyIg3QcYQ7d/Xkc8tpseFmBQ8YBHIYnrUUmrducekXWjT8DlUrdxBwv
l7gSh7eHCBc0nG3bKkQmdZQ1veLksIfwxTlO5+x7crwT59aQZfx/Hgzt0cALXjlFFM3MUKeIIk8w
IiKCCDYdpqiSPtJjjomDYIi3S/WHmHjER0BkQhykwz8wan/IEHRKHARDQJ09tCx0zDiHeVlDHTw4
lXiieM45zLN4LC6WwF3EHEeYQz8FZA5LpXC21QCMqfCQkRsYYmeNlzDgKVjkFwIvzoHIziQOA/Hg
qZT2pY6HHHGKKPKxw6SkPqqwO2Qismf0eKsSwg9fRwofkLCATjfVAeDB9MBPmsqBaA1MYh0Z89zm
RQ2RlZ0Sh9WBHXLRqABJgEWkY8Y5jAUMP4kKpTnnOOYx0JjjCAvo58lDT2d450nWbzJskoZE25KB
DnTKeBa8NtB8eufGQQecHeuED4POCIJHhRt5PlGtU0SRER8miaK7HRGRB12QaUDKAdYrAsSYOCwg
arxzpUDSi97dkXggc0IcpEOVeegUU+Gfuz8POsW2OjIHOSMdlgOgC19AgphObCrmnAObClGdH/mG
heAIUpZARiIvQxyu/ARvL0QqoEC+z+Y6eyw56PlpNRhFohpbelTzI5fYfXpyDj2TDffbEIjo4j/A
/RDO7FsZ8eqxwlc/j7oXNbKmsWyayKapbJrJprlsWsimS9l0JZt+kU1/lU2/UlMpqqu1SdweO2YG
U25DZfO9qNr2p8mdJAxa3zSWTRNq6l5/2cmaUlPjZc2oqaeaU1NPtZBNl7LpSjb9Qk19V/8qm36l
JjloBUsAAmiHAPaxo+4MGY3VJ9k0lE0jauqROaamrk/d8E2oqaeaUlNPNZNNc9m0kE2X1NQV5tvV
yZrYCizMLi9E06GB+dRRY2CQrPYWPo8SacOeiEZvJJvGsmnCmngvzc7k+F66fQzrZRzXFJYIaby+
l6JpLKkmrIn30sR8x/fSRohBB4aFaBrJprFsmrAm3icTOxzfJxtpsD6JplEhmsayacKaeJ+Mrzi+
T9azsD6JphFeA2xij4BqLJsmrMn2yb7Q174G82G1/dK9+nd3cr35at7Oa4pWfKstVMQiODdQBWzE
FY0rnYk685fwVt+n5ZfV1XL7Zf24O7lf3UJsNoDj29oXA3e/95unrhUj+3mzxyt96X93ePvzCo/b
ZAOA83az2dN/oN7I/ftq//XpZLNd42XC3QudL06fNtv9drneQ8P5+ubidDu76R45OvtOr5/+8P8C
AAAA//8DAFBLAwQUAAYACAAAACEAHIKJ67QBAAAJAwAAGAAAAHhsL3dvcmtzaGVldHMvc2hlZXQz
LnhtbIyST0/jMBDF70h8B8t34rbAAlFThLZitxKg1f7h7tqTxKrtydouofvpGSebCokLp3hs5+f3
3szy9tVZ9gIhGvQVnxczzsAr1MY3Ff/z+/7smrOYpNfSooeKHyDy29XpybLHsIstQGJE8LHibUpd
KURULTgZC+zA00mNwclEZWhE7AJIPfzkrFjMZl+Ek8bzkVCGzzCwro2CNaq9A59GSAArE+mPreni
RHPqMzgnw27fnSl0HSG2xpp0GKCcOVVuGo9Bbi35fp1fSDWxh+ID3hkVMGKdCsKJUehHzzfiRhBp
tdSGHOTYWYC64ndzLlbLIZxnA318t2axxf5bMPrBeKCkqUcJuweo01ewln694OwfovulZJZ6TefH
8innT3fyZm7ZFnGX+RudOfQIWFA5PCbp8wL/ievLK+r731FZLkibOIp7v56E3g+N/hGYhlrubfqJ
/XcwTZtoqhbF1SVllyMs9WENUVHv6P1icfS8lknSG51s4FGGxvjILBnMl0hJGEHDmqwPu0TcYkro
pqql4QIaollxzlmNmKaCuDrInkaahdKQ8bDRQ9riOMSrNwAAAP//AwBQSwMEFAAGAAgAAAAhANl3
HJuCBQAAZRoAABgAAAB4bC93b3Jrc2hlZXRzL3NoZWV0Mi54bWycmV1zozYUhu870//AcL+2wflo
PHF2YtC2mWk7nW4/rgnINhNjuUDWSX99JR3ZfnW0m5rcZMxjSTw+ghdF3H58aTbRF9l2tdrO42Q0
iSO5LVVVb1fz+M8/Pn34IY66vthWxUZt5Tx+lV388e777273qn3q1lL2kR5h283jdd/vZuNxV65l
U3QjtZNb/c1StU3R68N2Ne52rSwq26nZjNPJ5GrcFPU2phFm7TljqOWyLmWuyudGbnsapJWbotf+
3bredYfRmvKc4ZqifXrefShVs9NDPNabun+1g8ZRU84eVlvVFo8b/btfkouiPIxtD4Lhm7psVaeW
/UgPNybR8DffjG/GeqS726rWv8CUPWrlch7fJzNxMYnHd7e2QH/Vct/B56hbq/2PbV39XG+lrrae
p754/Cw3suxlpWcujv5VqvlcFsb2Rn99PPzVTMGGoJm1R6WezPAPuttEi3R2ECNSlH39RWZyo1vf
50mqp/4fkjMHWm18dMPPB89Pdq5/a6NKLovnTf+72v8k69W613rp6PpSl89UcVa95rIr9fTp84/s
uKXa6EH036ipzWV4octfvNCHfV3163mse5fPXa+av+k4sT7U0VrlRV/c3bZqH+kLSZej2xXmskxm
3zqvPqFpem/amh7691mw4CDjIOdAABhrhaOHKSF42FL8n4/pM4+pLkZwwUFG4GSccyAAeD7Td/iY
PvN4eqoPgZNgRgB8OBAAPB890YPrY/p4PgQujoIZAfDhQADwfPTcDPYxfTwfAuBDAHw4EAA8n6t3
+Jg+ng8B8CEAPhwIAJ7P9Tt8TB/PhwD4EAAfDgQAz8c8nYbeX6aP50MAfAiADwcCgOdz8w4f08fz
IQA+BMCHAwHA80n0g2BwgWwnz8gRUHIEnAIikPhWJi6HTltCGQs55AhaQQ7bLM9dm5OnQOJbmdAc
bEVJi1ZE0ArS2FlxIuzD1j2FfCsTnYOtKG/RighaQSY7K05EAsS3MgE62IpSF62IoBUks7PiRJjl
gb5j7Jz6ViZGz7S61Csfe4L7hML38vj8WDhydSSZI6fLKA+IQOJrmTQdrkUZjFpEUAty2lWLE5EA
8bVMqILWVxdnxyJBAtszLRJOsoDkARFIfBsTqWfbQP46G06yhJM8IAKJb2MC9WwbSF9nw0mWcJIH
RCDxbFKW4m/OlG3srWcDkgUkD4hA4tuw9H7bhifyIuUkC0geEIHEtzFRCjN13hKb8vf6eIMvUiKw
qHUEbvmACCS+lQnOwVaUtpCPKRHIR0fQCjLaXn0C2/hWJjgHW1HaohURtIJEtg55yolA4lsNSO1j
aKcU2mhFBK2IYK04EW4c28a3MrE5uFaUtWhFBK0gj12tOBEpEN+KZfZ5VzslNVoRQSue5nnKiUDi
W7HsPs+K8hmtiKBVkOEpJwKJb8Uy/GC1rqtKml2Gb+xHHB55KUU2ChJBwSDWXa/TRSeQeIJTFutD
BW1/b53uCAg6ctLJAyKQ+IIs6QcLUtRDBadEUJAICnIiXK/wJp2+J/xtJ79sFP5oRQStOBFunK9Y
vSf8p0H4O4JWPOpz1+bkKZD4k2kSeWigTSnGcQaJoBWP+tz1Qito41uZRD7T6rRkn1KOw9rYEVgb
O3KSyAMikPhaJoCHa1FsoxYR1IJop/ifciKQ+Fomk0HrzaXXlAf4IiBZQPKACCS+jcnis214cC+m
nGQByQMikPg2LO7frg3P7cWUkywgeUAEEs9Gb+WfXxvb2FuyByQLSB4Q8/6A/WNMG/a0Nb4rVvKX
ol3V2y7ayKXdfdeXSEs79JOR/tyrndmTN1v1j6rXm+2Ho7V+cSP1XvRkpCNoqVR/ONCb5lVb7PXr
oqid1fqNQvtQUSIeXxDd/QcAAP//AwBQSwMEFAAGAAgAAAAhADttMkvBAAAAQgEAACMAAAB4bC93
b3Jrc2hlZXRzL19yZWxzL3NoZWV0MS54bWwucmVsc4SPwYrCMBRF9wP+Q3h7k9aFDENTNyK4VecD
YvraBtuXkPcU/XuzHGXA5eVwz+U2m/s8qRtmDpEs1LoCheRjF2iw8HvaLb9BsTjq3BQJLTyQYdMu
vpoDTk5KiceQWBULsYVRJP0Yw37E2bGOCamQPubZSYl5MMn5ixvQrKpqbfJfB7QvTrXvLOR9V4M6
PVJZ/uyOfR88bqO/zkjyz4RJOZBgPqJIOchF7fKAYkHrd/aea30OBKZtzMvz9gkAAP//AwBQSwME
FAAGAAgAAAAhACqoIxf8AAAA8wUAACMAAAB4bC9kcmF3aW5ncy9fcmVscy9kcmF3aW5nMi54bWwu
cmVsc7zUzWoDIRQF4H2h7yB3Xx0nySQpcbIphWxL+gAX584PnVFRW5q3rxAKDQS7cyUqnvNtvIfj
9zKzL/JhskaB5BUwMtp2kxkUvJ9fn3bAQkTT4WwNKbhQgGP7+HB4oxljehTGyQWWUkxQMMbonoUI
eqQFA7eOTLrprV8wpq0fhEP9gQOJuqoa4f9mQHuTyU6dAn/qUv/54lLz/9m27ydNL1Z/LmTinQqh
R/QxBaIfKCrg/HoSrousedKCuA9ZlYNsc45tOYeUOUhdDtLkHLKcY5NzNOUcsspBNuUg+5xDpmFS
7O+uc5J1Ocgu59iXc8jVL0TcjOr2BwAA//8DAFBLAwQUAAYACAAAACEAHaUdpdMAAAC9AgAAIwAA
AHhsL2RyYXdpbmdzL19yZWxzL2RyYXdpbmcxLnhtbC5yZWxzvJLNqgIxDEb3gu9QsredGUVEpuNG
Lri96AOETuYHZ9rS9Iq+/S2IoCC6m1VIQs53Fil313EQFwrcO6shlxkIssbVvW01nI4/iw0Ijmhr
HJwlDTdi2FXzWflLA8Z0xF3vWSSKZQ1djH6rFJuORmTpPNm0aVwYMaY2tMqjOWNLqsiytQrPDKhe
mOJQawiHegniePMp+TvbNU1vaO/M30g2volQpsMQExBDS1GDlPcJ38tSJllQ7z2K6TyKTx75dB75
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
xBBXFHYPzwb8WTQil/SLEXZVjCTrGSuR5C2d5Jh4RolOBVaCZEO6TjzLtwG0EA5FIorq72lFbZCE
jJgOpViRholjCRYAx8yHBQ6+flyiqfkeI2LRYLgVrApQRQ50FEqEE0KRD44aiQjzvf+ls1NJVunQ
GTmWCQ8SUV/dUjBB2s9xsVtliNbErHzB6oAquzJ0iAR4DP1Bb3JjtBH0izmTQo2yTYhfkL7PQ2ZH
QoLB7cLAhSS5CKgYF/VME04xDjqAwiCA0BglNDX5e5rQoRcABmS4wSSuizjcpHkmRaIcMo1mqwCz
aaCbkzLr5v/B2j0SoXhGjI2H//1aHuzd0VVdNvOUYR/MS3BcOHvukjkdL1wz4ddwdPqCcHbZ6mMv
SJSnahavuur5EdeXja6+pW33lqO3Lyp0n98h9Yzppon20efsn7F0qbu/651pxtk9D07r8kq07hV7
brt91c3LzlqWx73oI2v1xkvS++5Wb1185g5z3Kqq43+qf+Kkc35cs++KtQ9907qz7eUVzV/IW0NP
fYjuHjV2rLr50r6Jv/TdWbW8+s29O99sjta3TWzvq3v2jZ7eaSvXbm18sVl6bP2iq14sG9akZY85
Yd3VT249um/6SKdy3Ft3bXp1RlY6u+O2jfMrFy0QP2h7pj2Tb9zEX7vg/fHePeu6e6pb9uVv2tXZ
I5AbJ3Icd/q5Mxqy2+9b55bfYa1c+0PHwoVV98/5Wey+4bJJTmn53nTVsgeufXj9nl9DXyVeSm/4
pnARKa+9NWRuOuG80RGpfsKqztTTXWum3Ks4F/auvuO7kul6+/rvyz7tnX/Z098t3/JI28xxeoU+
u+Hdro+v37jV2PjeHmnJ9qUv7b/4uFPLlmyb3NH5ydhHe+4kly9O9XWOevKHMxbuXv7AurvEqSce
/+zbVe3jX1/x9WmdKzdsdj/b0fdxbNveH197ZeSJ2yo/7xM+w+qCbx+f7DZf3u3ePua5865csbC4
1jx+8pgpZvX/oIaDJwYIBAgECAQIBAgECAQIBAgECAQIBAgECAQIBAgECAQIIPQ7AAAA//8DAFBL
AQItABQABgAIAAAAIQAurjL39gEAAFEOAAATAAAAAAAAAAAAAAAAAAAAAABbQ29udGVudF9UeXBl
c10ueG1sUEsBAi0AFAAGAAgAAAAhALVVMCP1AAAATAIAAAsAAAAAAAAAAAAAAAAALwQAAF9yZWxz
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
MS5iaW5QSwUGAAAAACMAIwBhCQAAjKoAAAAA

--_006_1FFB62CE8AEB0D4298B51122D8903E9619FA6688IRSMSX104gercor_--
