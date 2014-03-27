Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C907E00B93
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 05:25:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Mar 2014 05:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,742,1389772800"; 
	d="xml'?bin'?xlsx'72,48?rels'72,48?scan'72,48,208,72,48,147,150,217?gif'72,48,208,72,48,147,150,217,147?png'72,48,208,72,48,147,150,217,147,150";
	a="508159278"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 27 Mar 2014 05:25:36 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 27 Mar 2014 12:25:35 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.2]) by
	IRSMSX151.ger.corp.intel.com ([163.33.192.59]) with mapi id
	14.03.0123.003; Thu, 27 Mar 2014 12:25:35 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Full Pass report for  Yocto 1.4.3 rc4 build
Thread-Index: Ac9Jt1UZatZNwJXJSsSOeCI1AkcSOw==
Date: Thu, 27 Mar 2014 12:25:35 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E961B686434@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Cc: "Wold, Saul" <saul.wold@intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: Full Pass report for Yocto 1.4.3 rc4 build
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
X-List-Received-Date: Thu, 27 Mar 2014 12:25:45 -0000
X-Groupsio-MsgNum: 18736
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_"

--_008_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_007_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_";
	type="multipart/alternative"

--_007_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the Full Pass QA report for 1.4.3_rc4.
Issue summary:

-          No High or Medium+ issues found during this test cycle.

-          There is a Build Appliance make version error displayed when HOB=
 starts, but we found that this doesn't affect the functionality of the com=
ponent #6058<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6058>

-          A segfault err is displayed in dmesg for qemux86-64 #6038<https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D6038>

-          Compiling C projects fails under ppc when using adt-installer #5=
052<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5052>

The detailed report is available on the wiki as well: https://wiki.yoctopro=
ject.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Release_1.4.3.rc4


Testing data

 Test type:  Full Pass Release Test

 Branch: dylan

 Milestone: rc4

 Build name: 1.4.3

 poky commit: c397b69e681d5f1ffe0a0bfd9d43ee880fc27553

 Eclipse Plugin commit Juno:  dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20140318-5

 Distributions tested: Ubuntu 13.10 64bit, Fedora 19 64bit, Fedora 20 32bit=
, Opensuse 12.3 64bit, CentOS 6.5 64 bit

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

2103<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2103> 2105<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2105>

ADT: dylan branch

Fedora 20 i686

94.0%

none

6.0%

5952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5952>

0.0%

none

100.0%

2102<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2102> 2104<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2104>

ADT: dylan branch

Ubuntu 13.10 x86_64

94.0%

none

6.0%

5952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5952>

0.0%

none

100.0%

2088<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2088>

BSP/QEMU: dylan branch

Atom PC

98.6%

none

1.4%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

2101<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2101>

BSP/QEMU: dylan branch

Beagleboard

97.0%

none

3.0%

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936> 3937<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3937>

0.0%

none

100.0%

2100<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2100>

BSP/QEMU: dylan branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

2098<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2098>

BSP/QEMU: dylan branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

2110<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2110>

BSP/QEMU: dylan branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

2093<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2093>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

2094<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2094>

BSP/QEMU: dylan branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

2095<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2095>

BSP/QEMU: dylan branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

2109<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2109>

BSP/QEMU: dylan branch

qemux86-64

94.4%

none

5.6%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646> 6038<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D6038>

0.0%

none

100.0%

2099<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2099>

BSP/QEMU: dylan branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

2084<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2084> 2085<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2085> 2087<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2087>

Eclipse Plugin: dylan branch

Ubuntu 13.10 x86_64

96.4%

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760> 5163<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163> 5640<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5640>

3.6%

5939<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5939>

0.0%

none

100.0%

2097<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2097>

Meta-yocto: dylan branch

Ubuntu 13.10 x86-64

95.0%

none

5.0%

5948<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5948>

0.0%

none

100.0%

2082<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2082> 2086<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2086>

Hob: dylan branch

Ubuntu 13.10 x86_64

97.0%

none

3.0%

6008<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6008>

0.0%

none

100.0%

2081<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2081>

OE-Core: dylan branch

Multiple environments

100.0%

none

0.0%

none

0.0%

none

100.0%

2083<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2083>

BitBake: dylan branch

Ubuntu 13.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

2106<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2106>

Runtime: dylan branch

Multiple Environments

100.0%

5930<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5930>

0.0%

none

0.0%

none

100.0%

2124<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2124>

Build Appliance: dylan branch

Multiple environments

100.0%

6058<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6058>

0.0%

none

0.0%

none

100.0%

Total: 19



Test Case Status Report

Status

Count

FAILED

16

PASSED

766

Total: 782


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:16,766&chco=3DFF9933|00FF00&chl=3DFAILED(16)+2%25|PASSED(766)+98%25]



Bug Status Report


ID[?]<https://wiki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Rele=
ase_1.4.3.rc4>

Priority[?]<https://wiki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_Full_Pas=
s_Release_1.4.3.rc4>

Status[?]<https://wiki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_Full_Pass_=
Release_1.4.3.rc4>

Resolution[?]<https://wiki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_Full_P=
ass_Release_1.4.3.rc4>

Test Runs[?]<https://wiki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_Full_Pa=
ss_Release_1.4.3.rc4>

Description[?]<https://wiki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_Full_=
Pass_Release_1.4.3.rc4>

Version[?]<https://wiki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_Full_Pass=
_Release_1.4.3.rc4>

Target Milestone[?]<https://wiki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_=
Full_Pass_Release_1.4.3.rc4>

Age (days)[?]<https://wiki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_Full_P=
ass_Release_1.4.3.rc4>

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

Medium

ACCEPTED

2109<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2109>

Windows switching failure

1.2

1.6

634

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

2101<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2101>

[beagleboard xM] Some error message with usbhs_omap in dmesg

1.4

1.6

385

3937<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3937>

Medium

REOPENED

2101<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2101>

[beagleboard xM] Watchdog doesn't work

1.4

1.6

385

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

2088<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2088>

dmesg log errors in Atom-PC

1.3.1

1.5

372

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

Medium

ACCEPTED

2084<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2084>

no external tools displayed when first trying to run QEMU - test case 48 fa=
iled on Ubuntu 12.04 x86-64 host(build 1.5 M4 rc2)

1.5

1.6

188

5640<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5640>

Medium

NEW

2085<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2085>

systemtap output is useless in Juno

1.6

1.6

102

5760<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5760>

Low

NEW

2084<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2084>

headless build takes took long

1.6

1.6

50

5930<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5930>

Medium

REOPENED

2106<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2106>

udevd failed to execute /etc/udev/scripts/mount.sh (1.4.3 RC)

1.4.2

1.4.3

11

5939<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5939>

Undecided

RESOLVED

INVALID

2085<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2085>

Error found when launching Hob from Eclipse

1.4.3

---

8

5948<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5948>

Undecided

NEW

2097<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2097>

[1.4.3] crosstap doesn't work on qemuppc

1.4.3

---

6 (Recent)

5952<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5952>

Medium

ACCEPTED

2105<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2105> 2103<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2103>

ADT-installer: using gcc to build c projects failed under ppc architecture =
with build 1.4.3(2014-03-06)

1.4.3

1.4.3

6 (Recent)

6008<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6008>

Medium

IN PROGRESS REVIEW

2082<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2082> 2086<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2086>

All layers can be removed

1.4.3

1.4.3

NEW

6038<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6038>

Undecided

NEW

2109<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2109>

qemux86-64 v86d segfault at init

1.4.3

---

NEW

6058<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6058>

Undecided

NEW

2124<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2124>

make version 3.82 may be wrong in BA

1.4.3

---

NEW

Total: 14



On the performance side, 1.4.3 shows similar build performance times, with =
all the data available also on the Performance_test wiki<https://wiki.yocto=
project.org/wiki/Performance_Test#1.4.1_.26_1.4.2_.26_1.4.3_Build_Time_resu=
lts> or you can check the attached spreadsheet with more detailed charts.
[cid:image004.png@01CF49C8.697250A0]

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
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
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1306280986;
	mso-list-type:hybrid;
	mso-list-template-ids:-1863565436 -1635463238 67698691 67698693 67698689 6=
7698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:10;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the Full Pass QA report for 1.4.3_rc4.<o:p><=
/o:p></p>
<p class=3D"MsoNormal">Issue summary:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>No High or Medium&#43; issues found during this tes=
t cycle.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>There is a Build Appliance make version error displ=
ayed when HOB starts, but we found that this doesn&#8217;t affect the funct=
ionality of the component #<a href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D6058">6058</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>A segfault err is displayed in dmesg for qemux86-64=
 #<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6038">6038=
</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Compiling C projects fails under ppc when using adt=
-installer #<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
5052">5052</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The detailed report is available on the wiki as well=
: <a href=3D"https://wiki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_Full_Pa=
ss_Release_1.4.3.rc4">
https://wiki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Release_1.=
4.3.rc4</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
;word-spacing:0px"><span style=3D"color:black"> Test type:&nbsp; Full Pass =
Release Test<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: dylan<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: rc4<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.4.3 <o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black">&nbsp;poky commit: c397b69e681d5f1ffe0a0bfd9d=
43ee880fc27553<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Juno:&nbsp; dc9a609c68=
fe4a6bbbf34d418fd6611489c1d6f7<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: <a href=3D"ht=
tp://autobuilder.yoctoproject.org/pub/nightly/20140318-5">http://autobuilde=
r.yoctoproject.org/pub/nightly/20140318-5</a><o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 13.10 64bit, Fe=
dora 19 64bit, Fedora 20 32bit, Opensuse 12.3 64bit, CentOS 6.5 64 bit <o:p=
></o:p></span></pre>
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
n style=3D"font-size:9.5pt">Testing Summary Report</span></b><b><span style=
=3D"font-size:9.5pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quo=
t;"><o:p></o:p></span></b></p>
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.5pt">Complete<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2103"><span style=3D"color:#5A3696">2103</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2105"><span style=3D"color=
:#5A3696">2105</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: dylan branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 20 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">94.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">6.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5952"><span style=3D"color:#5A3696">5952</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2102"><span style=3D"color:#5A3696">2102</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2104"><span style=3D"color=
:#5A3696">2104</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">ADT: dylan branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">94.0%<o:p></o:p></span></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">6.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5952"><span style=3D"color:#5A3696">5952</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2088"><span style=3D"color:#5A3696">2088</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Atom PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">98.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2101"><span style=3D"color:#5A3696">2101</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.0%<o:p></o:p></span></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">3.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D3937"><span style=3D"color:#5A3696">3937=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2100"><span style=3D"color:#5A3696">2100</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2098"><span style=3D"color:#5A3696">2098</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">P1022ds<o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2110"><span style=3D"color:#5A3696">2110</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemu-x86<o:p></o:p></span></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2093"><span style=3D"color:#5A3696">2093</span><=
/a><o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2094"><span style=3D"color:#5A3696">2094</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemumips<o:p></o:p></span></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2095"><span style=3D"color:#5A3696">2095</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemuppc<o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2109"><span style=3D"color:#5A3696">2109</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">94.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">5.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D6038"><span style=3D"color:#5A3696">6038=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2099"><span style=3D"color:#5A3696">2099</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BSP/QEMU: dylan branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Routerstationpro<o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2084"><span style=3D"color:#5A3696">2084</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2085"><span style=3D"color=
:#5A3696">2085</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2087=
"><span style=3D"color:#5A3696">2087</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Eclipse Plugin: dylan branch<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">96.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5163"><span style=3D"color:#5A3696">5163=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5640"><span style=3D"colo=
r:#5A3696">5640</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">3.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5939"><span style=3D"color:#5A3696">5939</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2097"><span style=3D"color:#5A3696">2097</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Meta-yocto: dylan branch<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">95.0%<o:p></o:p></span></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">5.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5948"><span style=3D"color:#5A3696">5948</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2082"><span style=3D"color:#5A3696">2082</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2086"><span style=3D"color=
:#5A3696">2086</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Hob: dylan branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">3.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6008"><span style=3D"color:#5A3696">6008</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2081"><span style=3D"color:#5A3696">2081</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">OE-Core: dylan branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Multiple environments<o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2083"><span style=3D"color:#5A3696">2083</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BitBake: dylan branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2106"><span style=3D"color:#5A3696">2106</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Runtime: dylan branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Multiple Environments<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5930"><span style=3D"color:#5A3696">5930</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D2124"><span style=3D"color:#5A3696">2124</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Build Appliance: dylan branch<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Multiple environments<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6058"><span style=3D"color:#5A3696">6058</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 19</span></b><span style=3D"font-=
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
<span style=3D"font-size:9.5pt">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">16<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">766<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 782</span></b><span style=3D"font=
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
dth=3D"432" height=3D"120" id=3D"Picture_x0020_10" src=3D"cid:image001.png@=
01CF49C4.B2B04D70" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;c=
hs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:16,766&amp;chco=3DFF9933|00FF00&amp;c=
hl=3DFAILED(16)&#43;2%25|PASSED(766)&#43;98%25"></span><span style=3D"font-=
size:9.5pt"><o:p></o:p></span></p>
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
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none;background-position:initial initial;background-repeat:initia=
l initial" id=3D"sortable_table_id_0">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">ID</span></b><a href=3D"https://wiki.yoctoproje=
ct.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Release_1.4.3.rc4"><b><span style=
=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" w=
idth=3D"12" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:image002.gif@01=
CF49C4.B2B04D70" alt=3D"&#8595;"></span></b></a><b><span style=3D"font-size=
:9.5pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:=
p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Release_1.4.3.rc4"><b><span=
 style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:image00=
2.gif@01CF49C4.B2B04D70" alt=3D"&#8595;"></span></b></a><b><span style=3D"f=
ont-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Release_1.4.3.rc4"><b><span s=
tyle=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"=
0" width=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"cid:image002.gi=
f@01CF49C4.B2B04D70" alt=3D"&#8595;"></span></b></a><b><span style=3D"font-=
size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Release_1.4.3.rc4"><b><sp=
an style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"cid:image00=
2.gif@01CF49C4.B2B04D70" alt=3D"&#8595;"></span></b></a><b><span style=3D"f=
ont-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Release_1.4.3.rc4"><b><spa=
n style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D"cid:image00=
2.gif@01CF49C4.B2B04D70" alt=3D"&#8595;"></span></b></a><b><span style=3D"f=
ont-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Release_1.4.3.rc4"><b><s=
pan style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=3D"cid:image0=
02.gif@01CF49C4.B2B04D70" alt=3D"&#8595;"></span></b></a><b><span style=3D"=
font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Release_1.4.3.rc4"><b><span =
style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D=
"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"cid:image002.g=
if@01CF49C4.B2B04D70" alt=3D"&#8595;"></span></b></a><b><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Release_1.4.3.rc4">=
<b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img =
border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2" src=3D"cid:i=
mage002.gif@01CF49C4.B2B04D70" alt=3D"&#8595;"></span></b></a><b><span styl=
e=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW12_-_2014-03-18_-_Full_Pass_Release_1.4.3.rc4"><b><sp=
an style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_1" src=3D"cid:image00=
2.gif@01CF49C4.B2B04D70" alt=3D"&#8595;"></span></b></a><b><span style=3D"f=
ont-size:9.5pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2109"><span style=3D"colo=
r:#5A3696">2109</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Windows switching fa=
ilure<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">634<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2101"><span style=3D"colo=
r:#5A3696">2101</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[beagleboard xM] Som=
e error message with usbhs_omap in dmesg<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">385<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3937"><span style=3D"color:#5A3696">3937</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2101"><span style=3D"colo=
r:#5A3696">2101</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[beagleboard xM] Wat=
chdog doesn't work<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">385<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Low<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2088"><span style=3D"colo=
r:#5A3696">2088</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">dmesg log errors in =
Atom-PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.3.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">372<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5163"><span style=3D"color:#5A3696">5163</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2084"><span style=3D"colo=
r:#5A3696">2084</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">no external tools di=
splayed when first trying to run QEMU - test case 48 failed on Ubuntu 12.04=
 x86-64 host(build 1.5 M4 rc2)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">188<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5640"><span style=3D"color:#5A3696">5640</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2085"><span style=3D"colo=
r:#5A3696">2085</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">systemtap output is =
useless in Juno<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">102<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5760"><span style=3D"color:#5A3696">5760</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Low<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2084"><span style=3D"colo=
r:#5A3696">2084</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">headless build takes=
 took long<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">50<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5930"><span style=3D"color:#5A3696">5930</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2106"><span style=3D"colo=
r:#5A3696">2106</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">udevd failed to exec=
ute /etc/udev/scripts/mount.sh (1.4.3 RC)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">11<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5939"><span style=3D"color:#5A3696">5939</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">INVALID<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2085"><span style=3D"colo=
r:#5A3696">2085</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Error found when lau=
nching Hob from Eclipse<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">8<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5948"><span style=3D"color:#5A3696">5948</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2097"><span style=3D"colo=
r:#5A3696">2097</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[1.4.3] crosstap doe=
sn't work on qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">6<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5952"><span style=3D"color:#5A3696">5952</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2105"><span style=3D"colo=
r:#5A3696">2105</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D210=
3"><span style=3D"color:#5A3696">2103</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">ADT-installer: using=
 gcc to build c projects failed under ppc architecture with build 1.4.3(201=
4-03-06)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">6<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D6008"><span style=3D"color:#5A3696">6008</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2082"><span style=3D"colo=
r:#5A3696">2082</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D208=
6"><span style=3D"color:#5A3696">2086</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">All layers can be re=
moved<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D6038"><span style=3D"color:#5A3696">6038</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2109"><span style=3D"colo=
r:#5A3696">2109</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">qemux86-64 v86d segf=
ault at init<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D6058"><span style=3D"color:#5A3696">6058</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D2124"><span style=3D"colo=
r:#5A3696">2124</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">make version 3.82 ma=
y be wrong in BA<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 14</span><=
/b><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-top:12.0pt">On the performance side,=
 1.4.3 shows similar build performance times, with all the data available a=
lso on the
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test#1.4.1_.26_1.=
4.2_.26_1.4.3_Build_Time_results">
Performance_test wiki</a> or you can check the attached spreadsheet with mo=
re detailed charts.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-top:12.0pt"><img border=3D"0" width=
=3D"1494" height=3D"863" id=3D"Picture_x0020_11" src=3D"cid:image004.png@01=
CF49C8.697250A0"><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_--

--_007_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=8290;
	creation-date="Thu, 27 Mar 2014 12:25:34 GMT";
	modification-date="Thu, 27 Mar 2014 12:25:34 GMT"
Content-ID: <image001.png@01CF49C4.B2B04D70>
Content-Transfer-Encoding: base64

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
imr0/wGtiLXqA4jEwwAAAABJRU5ErkJggg==

--_007_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=462;
	creation-date="Thu, 27 Mar 2014 12:25:34 GMT";
	modification-date="Thu, 27 Mar 2014 12:25:34 GMT"
Content-ID: <image002.gif@01CF49C4.B2B04D70>
Content-Transfer-Encoding: base64

R0lGODlhDAAOAMZxAAAAAAEBAQICAgMDAwQEBAUFBQYGBgcHBwgICAkJCQoKCgsLCwwMDA0NDQ4O
Dg8PDxAQEBERERISEhMTExQUFBUVFRYWFhcXFxgYGBkZGRoaGhsbGxwcHB0dHR4eHh8fHyAgICEh
ISIiIiMjIyQkJCUlJSYmJicnJygoKCkpKSoqKisrKywsLC0tLS4uLi8vLzAwMDExMTIyMjMzMzQ0
NDU1NTY2Njc3Nzg4ODk5OTo6Ojs7Ozw8PD09PT4+Pj8/P0BAQEFBQUJCQkNDQ0REREVFRUZGRkdH
R0hISElJSUpKSktLS0xMTE1NTU5OTk9PT1BQUFFRUVJSUlNTU1RUVFVVVVZWVldXV1hYWFlZWVpa
WltbW1xcXF1dXV5eXl9fX2BgYGFhYWJiYmNjY2RkZGVlZWZmZmdnZ2hoaGlpaWpqamtra2xsbG1t
bW5ubm9vb3BwcP///////////////////////////////////////////////////////////yH5
BAEKAH8ALAAAAAAMAAwAAAcrgHCCg4SDf4eIiYKJin+LcIyPkIuHhpKTlpiXjpqIkpyRoJCMlaOk
pYWpgQA7

--_007_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_
Content-Type: image/png; name="image004.png"
Content-Description: image004.png
Content-Disposition: inline; filename="image004.png"; size=73023;
	creation-date="Thu, 27 Mar 2014 12:25:34 GMT";
	modification-date="Thu, 27 Mar 2014 12:25:34 GMT"
Content-ID: <image004.png@01CF49C8.697250A0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAABdYAAANfCAIAAABbgRi2AAAAAXNSR0IArs4c6QAA/8pJREFUeF7s
3QmcFMXd/3GWhQUEOQRBRRE51EjwxgtQF43GqGjUxHgFjOBjIhp4/rlIQhKDgScxT9gYTDSgwmPU
JCZG8YpHwCh44W3wAjwQDxDkEASWY//f2Z+WbffM7OzudE93z2devPY121NdXfWuZrvm11XVFXV1
dS14IYAAAggggAACCCCAAAIIIIAAAgiEKdAyzMzJGwEEEEAAAQQQQAABBBBAAAEEEEAgI0AIhvMA
AQQQQAABBBBAAAEEEEAAAQQQCF2AEEzoxBwAAQQQQAABBBBAAAEEEEAAAQQQqGAtGE4CBBBAAAEE
ECi5wJVXXrl+/fqSF4MCIIAAAggggAACRRHo2rXrhRde6MvKH4L54x//uHLlyqIcj0wQQAABBBBA
IDUCWbsRRazd5MmTx48fX8QMyQoBBBBAAAEEECihQNa+jT8EQweohC3EoRFAAAEEEIitQNg9hLDz
jy0sBUMAAQQQQACBVApk7duwFkwq25pKIYAAAggggAACCCCAAAIIIIBAvAQIwcSrPSgNAggggAAC
CCCAAAIIIIAAAgikUoAQTCqblUohgAACCCCAAAIIIIAAAggggEC8BAjBxKs9KA0CCCCAAAIIIIAA
AggggAACCKRSgBBMKpuVSiGAAAIIIIAAAggggAACCCCAQLwECMHEqz0oDQIIIIAAAggggAACCCCA
AAIIpFKAEEwqm5VKIYAAAggggAACCCCAAAIIIIBAvAQIwcSrPSgNAggggAACCCCAAAIIIIAAAgik
UoAQTCqblUohgAACCCCAAAIIIIAAAggggEC8BAjBxKs9KA0CCCCAAAIIIIAAAggggAACCKRSgBBM
KpuVSiGAAAIIIIAAAggggAACCCCAQLwECMHEqz0oDQIIIIAAAggggEDSBXr16lVRUfGjH/2oyRU5
88wzlcMXv/jFJufAjgiUSuD+++/v3r27TmD9nD9/fqmKwXERiKcAIZh4tkuZlmrZsmVt27bV3+s/
/elPTSZofqenyYdmx7gJvP3223ZG3XbbbXErW7HK8/TTT6uCej3yyCPBPJcuXWqf3nfffcU6Ivkg
gAACaRX4xS9+YX8z3atfv37Tp0/fsmWLq/I555yjT7XduzEI8tZbb2nj+vXrm2ylS5j2XbduXZNz
iNuOqpF9LZdz3MpGeYoooJjLcccd9/777ytP/fzPf/5TxMzJCoEUCBCCSUEjlr4KdqPG+zr00EP/
8Y9/eEtWSJdF/YxNmzZpr40bNza5Vs3v9DT50CHtqCtZ586dxfv3v/89pEOkNVuJ6Yxq06bNsGHD
0lrHNWvWWNXs/47vteuuu55wwgnaWFNTk1YB6oUAAggUS8C+NHpfixcvHj169PHHH+823nTTTXqv
7W+++aZttGt0cwa8FKv8Mc/n1VdfNeF77rkn5kUtVvHSfW7o3k/Wm0C33HKLAb7yyisbNmw466yz
iuVJPgikQ4AQTDrascS1sBs13tcTTzxx2mmnfe9738vVZXnjjTeaP+ClxNWO6vDPPfecfc1++OGH
ozpmKY9TxHNj0qRJqsm5557bsWPHUlappMdW9NP6u6+99lpJC8LBEUAAgcQILFq0qK6u7p133rEI
/uzZs91kiq9+9avaMmDAgN13393qY9fo5gx4SYxL8wq65557durUSXmccsopzcspMXun+9xw9358
N4GefPJJtdBee+2lFldvX6/ENBgFRSASAUIwkTCXzUHUX9Fr4cKFu+22myp9xRVXaG6R1d7XZdm6
dWvzB7yUiet+++2ncRx6DR06tByqXKxzQ91lO/3Kp6uX9fQ4/PDDbbu+QpTD+UMdEUAAgWIJ7Lzz
zmPHjrXcdDvE3vzlL39RV0dzK1q1alWsA5VJPj179ly9erX0vvvd75ZJlcuzmrW1tap4t27dyrP6
1BqBBgUIwTRIRIJGC2iC9KWXXmq7vfjii3RZGi342R0GDRqkmVl6nX766c3Mqqx2//e//231HThw
YFlV3FfZPn366E6UNt55553l7EDdEUAAgeYIuDEvWh/XrZJ7/fXX671l+9vf/tYmZWgsp/dAGhFw
4IEHarvGAqh35J1q/dhjj51xxhk2V0WfarrTM888k6uQuq9gw4cvuugiS6OctYsdVNNOtcBKnuVp
9JESKJkS64jnn3++m3WljzR5XFPILSst16Jyvv76664kVsKHHnpIOdigBquj6qIttrxLg+VX+uAo
V5fzP//5T1c2TelSkVQAq51yVmk/+OADV578btr3xhtvtNy8r1NPPdVyUMVVQTu0fqoJbA57npcy
VOfWCuNNLwF95KOzouY/NxYsWOBretdpKfws1ZK37tB6Y2NPfC+bK6Riq1RHH320O3WVTMJysObT
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
xehXrfBii7wotuKW47VgTb9+/dxzqd3u2uiW3dUImlwPqI6qWhwHAQQQQAABBJIhQAgmGe1EKRFA
AAEEEECgKAJa1cXGqtgQGHsikntpo1uOd8qUKb6PlN7t7obAKC7je0C1dmRR3qI0FpkggAACCCCQ
MgFCMClrUKqDAAIIIIAAAggggAACCCCAAAJxFCAEE8dWoUwIIIAAAggggAACCCCAAAIIIJAyAUIw
KWtQqoMAAggggAACCCCAAAIIIIAAAnEUIAQTx1ahTAgggAACCCCAAAIIIIAAAgggkDIBQjApa1Cq
gwACCCCAAAIIIIAAAggggAACcRQgBBPHVqFMCCCAAAIIIIAAAggggAACCCCQMgFCMClrUKqDAAII
IIAAAggggAACCCCAAAJxFCAEE8dWoUwIIIAAAggggAACCCCAAAIIIJAyAUIwKWtQqoMAAggggAAC
CCCAAAIIIIAAAnEUIAQTx1ahTAgggAACCCCAAAIIIIAAAgggkDIBQjApa1CqgwACCCCAAAIIIIAA
AggggAACcRQgBBPHVqFMCCCAAAIIIIAAAggggAACCCCQMgFCMClrUKqDAAIIIIAAAggggAACCCCA
AAJxFCAEE8dWoUwIIIAAAggggAACCCCAAAIIIJAyAUIwKWtQqoMAAggggAACCCCAAAIIIIAAAnEU
IAQTx1ahTAgggAACCCCAAAIIIIAAAgggkDIBQjApa1CqgwACCCCAAAIIIIAAAggggAACcRQgBBPH
VqFMCCCAAAIIIIAAAggggAACCCCQMgFCMClrUKqDAAIIIIAAAggggAACCCCAAAJxFCAEE8dWoUwI
IIAAAggggAACCCCAAAIIIJAyAUIwKWtQqoMAAggggAACCCCAAAIIIIAAAnEUIAQTx1ahTAgggAAC
CCCAAAIIIIAAAgggkDIBQjApa1CqgwACCCCAAAIIIIAAAggggAACcRQgBBPHVqFMCCCAAAIIIIAA
AggggAACCCCQMgFCMClrUKqDAAIIIIAAAggggAACCCCAAAJxFCAEE8dWoUwIIIAAAggggAACCCCA
AAIIIJAyAUIwKWtQqoMAAggggAACCCCAAAIIIIAAAnEUIAQTx1ahTAgggAACCCCAAAIIIIAAAggg
kDIBQjApa1CqgwACCCCAAAIIIIAAAggggAACcRQgBBPHVqFMCCCAAAIIIIAAAggggAACCCCQMgFC
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
OSoCCCCAAAIIIIAAAggggAACCJSVACGYsmpuKosAAggggAACCCCAAAIIIIAAAqURIARTGneOigAC
CCCAAAIIIIAAAggggAACZSVACKasmpvKIoAAAggggAACCCCAAAIIIIBAaQQIwZTGnaMigAACCCCA
AAIIIIAAAggggEBZCRCCKavmprKlETj11FN79epVmmNzVAQQQAABBBBAAAEEEEAAgXgIEIKJRztQ
ivQKvP3227fffvvXv/719FaxODW7/vrrKyoqFi9e3LTsHnroIe2uTJq2O3shgAACCCCAAAIIIIAA
AmELEIIJW5j8y13gnnvuEcEpp5xS7hAN1X/r1q0NJcn3ue3uMvnWt76liMzTTz/dnDzZFwEEEEAA
AQQQQAABBBAoogAhmCJikhUCWQSuvPLKvfbaa9CgQegggAACCCCAAAIIIIAAAgiUswAhmHJufeoe
usCLL774wgsvaERG6EfiAJ8V+P3vf19XV3fggQcCgwACCPgExo0bN2TIEN9GjZvT9mBKbddr+vTp
3o+yJlYCJbP0waxoBQQQQAABBBBAQAKEYDgNEAhR4G9/+5tyP/bYY0M8BlkjgAACCBQsoPjIgAED
gqGWsWPH+jba0lQK5i5atGj06NHuU4VXgon1qdIrmdLrNX/+/Dlz5hRcKBIigAACCCCAQLkIEIIp
l5amnk0WeOONN9Rl93W4991335122smbp938fOSRR9zGLVu2aCzG4MGD99lnH7fx9ddfP+OMM9q2
bavEnTt3vvTSS99///2mlU13cVWqV1999fOf/7xyO//885WPOv22qO2tt97avXt3vd91113vv/9+
faQhOUcffbQd13dHN08BbJVc73cJ5aMtP//5z717qTDK1rao4jfeeKOOa3eDNRTln//8pzex3VJ+
9NFHrYRTpkwJFuCZZ55Rhv369ctVNuVph1Amyk0H9ab0Le4rKJXwgw8+MAGJNc2cvRBAIOkCio9U
V1d7a2F/34YPH+426s+FNvbt29f+OumNflpEJpjY7aWPpk2bZr+OHDmyyYuLJ12Y8iOAAAIIIIBA
HgFCMJweCDQg0Lt3by3m8uc//9mlU1BG04uWLVv2/PPPu416Ik+bNm0OOeQQt0V3QZXmm9/8preD
3qdPn7///e+bNm3SxjVr1vzud7/r37//a6+91rRmePLJJxUMWrBggXZfuHChy+TCCy88/fTTLbij
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
TkSuQmCC

--_007_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Perf 143.xlsx"
Content-Description: Perf 143.xlsx
Content-Disposition: attachment; filename="Perf 143.xlsx"; size=39711;
	creation-date="Thu, 13 Mar 2014 11:28:40 GMT";
	modification-date="Thu, 27 Mar 2014 12:22:39 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQD7d88e3QEAANENAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
l9tO3DAQhu8r9R0i36KNN7SlFG2Wix4uWyToA5h4dmNtYlueAXbfvhMTEEILq5AI9yZn/98/9nhi
L863bZPdQkDjbCmKfC4ysJXTxq5L8ffq1+xUZEjKatU4C6XYAYrz5ccPi6udB8y4tcVS1ET+TEqs
amgV5s6D5TcrF1pFfBvW0qtqo9Ygj+fzE1k5S2BpRp2GWC5+wErdNJT93PLjeyfXxors+/13HaoU
yvvGVIrYqLy1+hlk5lYrU4F21U3L0jn6AEpjDUBtk/tgmBgugYgDQyH3MgM0OAzaR5Vzy2gMa+Px
iEN/gdC9eTmqvt0fHo5gNGQXKtBv1XLsctvIOxc2185t8tdFhnZN7KK8VcY++H6FHz9GGU/FxEa6
+KLwQB/H/4mPT4l8EM85kPE4fkiizIEBQNo1gFOnYRQ9RK5VAH1JPJvXkxt4qn3Ahw7qrrMg+4vx
/d4LHeBW7JFQxtNkTC6PUXAAe/yU6+N9A3v8NHs7+/PopB/Gfp5nk/X7gLH+8s4xP83xk4TsrwnZ
pwnZ3xKyi3lKeMqKWqQsqUXKmlq8a1Hl/cFFcJ7/oS7A8GR7WO93rWeehSCQgccV/76V8yOR9y+j
sxu6DZIGvYct44Zs+Q8AAP//AwBQSwMEFAAGAAgAAAAhALVVMCP0AAAATAIAAAsACAJfcmVscy8u
cmVscyCiBAIooAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAACskk1PwzAMhu9I/IfI99XdkBBCS3dBSLshVH6ASdwPtY2jJBvdvyccEFQagwNH
f71+/Mrb3TyN6sgh9uI0rIsSFDsjtnethpf6cXUHKiZylkZxrOHEEXbV9dX2mUdKeSh2vY8qq7io
oUvJ3yNG0/FEsRDPLlcaCROlHIYWPZmBWsZNWd5i+K4B1UJT7a2GsLc3oOqTz5t/15am6Q0/iDlM
7NKZFchzYmfZrnzIbCH1+RpVU2g5abBinnI6InlfZGzA80SbvxP9fC1OnMhSIjQS+DLPR8cloPV/
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
UEsDBBQABgAIAAAAIQAqqCMX/QAAAPMFAAAjAAAAeGwvZHJhd2luZ3MvX3JlbHMvZHJhd2luZzIu
eG1sLnJlbHO81M1qAyEQB/B7IO8gc6/ubpJNUuLmUgq5lvQBxJ39oLsqakvy9h0IhQaCuXkSFf/z
Y0QPx8s8sR/0YbRGQskLYGi0bUfTS/g8v7/sgIWoTKsma1DCFQMcm+Xi8IGTinQoDKMLjFJMkDDE
6F6FCHrAWQVuHRra6ayfVaSp74VT+kv1KKqiqIX/nwHNXSY7tRL8qaX656ujys+zbdeNGt+s/p7R
xAclhB6UjxSofI9RAue3lXAbyoqTFsRjyCofZJtybDM2pExBqnyQOuUo8zk2KUed8WKKFGSTD7JP
Xgx9Jtne7jolWeeD7FKOfcaGrP4g4u6rbn4BAAD//wMAUEsDBBQABgAIAAAAIQAdpR2l0wAAAL0C
AAAjAAAAeGwvZHJhd2luZ3MvX3JlbHMvZHJhd2luZzEueG1sLnJlbHO8ks2qAjEMRveC71Cyt50Z
RUSm40YuuL3oA4RO5gdn2tL0ir79LYigILqbVUhCzncWKXfXcRAXCtw7qyGXGQiyxtW9bTWcjj+L
DQiOaGscnCUNN2LYVfNZ+UsDxnTEXe9ZJIplDV2MfqsUm45GZOk82bRpXBgxpja0yqM5Y0uqyLK1
Cs8MqF6Y4lBrCId6CeJ48yn5O9s1TW9o78zfSDa+iVCmwxATEENLUYOU9wnfy1ImWVDvPYrpPIpP
Hvl0Hvknj9V0HquHh3p5uuofAAD//wMAUEsDBBQABgAIAAAAIQA9BrRkvQAAACsBAAAjAAAAeGwv
d29ya3NoZWV0cy9fcmVscy9zaGVldDMueG1sLnJlbHOEj80KwjAQhO+C7xD2blJ7EJGmvYjgVeoD
LMn2B9skZOPf25uLoCB429llv5mpmsc8iRtFHr3TsJYFCHLG29H1Gs7tYbUFwQmdxck70vAkhqZe
LqoTTZjyEw9jYJEpjjUMKYWdUmwGmpGlD+TypfNxxpRl7FVAc8GeVFkUGxU/GVB/McXRaohHuwbR
PkN2/s/2XTca2ntzncmlHxbKRrznZhmJsaekQcr3jt9DKXNkUHWlvirWLwAAAP//AwBQSwMEFAAG
AAgAAAAhABWvqjy9AAAAKwEAACMAAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0Mi54bWwucmVs
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

--_008_1FFB62CE8AEB0D4298B51122D8903E961B686434IRSMSX104gercor_--
