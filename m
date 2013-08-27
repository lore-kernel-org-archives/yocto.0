Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9862E01358
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 06:17:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Aug 2013 06:16:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,968,1367996400"; 
	d="gif'147?png'147,150?scan'147,150,208,217,147,150";a="369147368"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga001.jf.intel.com with ESMTP; 27 Aug 2013 06:16:26 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 27 Aug 2013 14:14:36 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.157]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.218]) with mapi id
	14.03.0123.003; Tue, 27 Aug 2013 14:14:25 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Full Pass test results for 1.4.2_rc1
Thread-Index: Ac6jJmT5ZHXOHe9UQtGM5gU8zUk/FQAAObOw
Date: Tue, 27 Aug 2013 13:14:23 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F2F671@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Full Pass test results for 1.4.2_rc1
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
X-List-Received-Date: Tue, 27 Aug 2013 13:17:05 -0000
X-Groupsio-MsgNum: 15687
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_007_1FFB62CE8AEB0D4298B51122D8903E9619F2F671IRSMSX104gercor_";
	type="multipart/alternative"

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F2F671IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F2F671IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F2F671IRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the full pass for The Yocto Project, 1.4.2_rc1 build.

Issue summary:

-          For the adt-installer and toolchain sdk with ARM arch, The targe=
t arch is changed from armv5te to armv7a-vfp-neon. That make some test case=
s failed: If we use this cross-compiler to compile a C/C++ program, the pro=
gram can not run on qemuarm. See bug #5039<https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5039> for more details.

-          core-image-sato can not boot up on Fedora 19 due to the SDL issu=
e (known issue in 1.5 too) - #5040<https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5040>

-          HOB error when building packages #5053<https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D5053>. The issue does not reproduces constantly.


Testing data

 Test type: Full pass post release

 Branch: dylan

 Milestone: 1.4.2

 Build name: 2013-08-18

 poky commit: d734ab491a30078d43dee5440c03acce2d251425

 poky commit date:  Fri Aug 16 12:22:25 2013 +0100

 Eclipse Plugin commit: dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/dylan-1.4.2.rc1



 Distributions tested: Fedora 19 32bit, Fedora 18 64bit, Ubuntu 13.04 64bit=
, Ubuntu 12.04 64bit, CentOS 6.4 64bit, Opensuse 12.3 64bit, opensuse 12.2 =
64bit



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

1061<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1061>

ADT: dylan branch

Fedora 19 i686

79.3%

none

9.5%

5039<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5039> 5040<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5040>

11.2%

5039<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5039>

100.0%

1064<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1064>

ADT: dylan branch

Ubuntu 13.04 x86_64

87.1%

none

1.7%

5039<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5039>

11.2%

5039<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5039>

100.0%

1067<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1067>

BSP/QEMU: dylan branch

Atom PC

98.6%

none

1.4%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

1048<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1048>

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

1075<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1075>

BSP/QEMU: dylan branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

1063<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1063>

BSP/QEMU: dylan branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

1051<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1051>

BSP/QEMU: dylan branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

1053<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1053> 1070<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1070>

BSP/QEMU: dylan branch

qemuarm

98.9%

none

1.1%

5036<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5036>

0.0%

none

100.0%

1071<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1071> 1073<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1073>

BSP/QEMU: dylan branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

1072<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1072> 1074<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1074>

BSP/QEMU: dylan branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

1052<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1052>

BSP/QEMU: dylan branch

qemux86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

1076<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1076>

BSP/QEMU: dylan branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

1078<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1078>

Eclipse Plugin: dylan branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1054<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1054>

Meta-yocto: dylan branch

Ubuntu 13.04 x86-64

95.2%

none

4.8%

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

0.0%

none

100.0%

1065<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1065> 1068<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1068>

Hob: dylan branch

Ubuntu 13.04 x86_64

100.0%

5053<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5053>

0.0%

none

0.0%

none

100.0%

1060<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1060>

OE-Core: dylan branch

Multiple environments

100.0%

none

0.0%

none

0.0%

none

100.0%

1045<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1045>

BitBake: dylan branch

Ubuntu 12.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1066<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1066>

Runtime: dylan branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

1062<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1062>

Build Appliance: danny branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

5041<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5041>

0.0%

none

0.0%

none

100.0%

Total: 19



Test Case Status Report

Status

Count

BLOCKED

26

FAILED

18

PASSED

1001

RUNNING

1

Total: 1046


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:26,18,1001,1&chco=3DFFFF66|FF9933|00FF00|0000FF&chl=3DBLOCKED(26)+2%25|FAI=
LED(18)+2%25|PASSED(1001)+96%25|RUNNING(1)+0%25]



Bug Status Report


ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Report_f=
or_Yocto_1.4.2_RC1_2013-08-18_build>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Re=
port_for_Yocto_1.4.2_RC1_2013-08-18_build>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Repo=
rt_for_Yocto_1.4.2_RC1_2013-08-18_build>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_=
Report_for_Yocto_1.4.2_RC1_2013-08-18_build>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_R=
eport_for_Yocto_1.4.2_RC1_2013-08-18_build>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test=
_Report_for_Yocto_1.4.2_RC1_2013-08-18_build>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_Rep=
ort_for_Yocto_1.4.2_RC1_2013-08-18_build>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass=
_Test_Report_for_Yocto_1.4.2_RC1_2013-08-18_build>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/Full_Pass_Test_=
Report_for_Yocto_1.4.2_RC1_2013-08-18_build>

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

Medium+

IN PROGRESS REVIEW

1054<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1054>

Kernel panic on qemux86-64 when using runqemu kvm and cpu host

1.4

1.5 M2

180

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

1048<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1048>

[beagleobard xM] Some error message with usbhs_omap in dmesg

1.4

1.5

173

3937<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3937>

Medium

REOPENED

1048<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1048>

[beagleobard xM] Watchdog doesn't work

1.4

1.5

173

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

1067<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1067>

dmesg log errors in Atom-PC

1.3.1

1.5

160

5036<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5036>

Undecided

RESOLVED

NOTABUG

1053<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1053>

[Test Case 215] system dmesg log check

1.4

---

NEW

5039<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5039>

Undecided

NEW

1061<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1061> 1064<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1064>

[Yocot 1.4.2] [ADT] ARM: target arch change from armv5te to armv7a-vfp-neon

1.4.2

---

NEW

5040<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5040>

Undecided

NEW

1061<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1061>

[Yocto 1.4.2] runqemu: Could not initialize SDL(No available video device) =
for core-image-sato on Fedora 19

1.4.2

---

NEW

5041<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5041>

Medium+

RESOLVED

FIXED

1062<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1062>

[Yocto 1.4.2] [Build Appliance] An error message for make 3.8.2 when launch=
 hob

1.4.2

1.4.2

NEW

5053<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5053>

Undecided

NEW

1068<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1068>

Error when building packages.

1.4.2

---

NEW

Total: 9





Below you can see the charts for the 1.4.2_rc1.

[cid:image001.png@01CEA321.E4114B70]


I have extracted the table with the differences between the last two builds=
, 1.4.1 and 1.4.2 to see the actual numbers:

[cid:image003.png@01CEA322.ADFD7E90]


-          the build time for core-image-sato improved for System 1 but sli=
ghtly degraded for System 2.

-          building the kernel degraded for the both systems for a ~30 seco=
nds average.

-          Build size increased with ~ 200MB with rm_work

-          Build size decreased a lot without rm_work, saving 2GB  of stora=
ge.

Overall I can say that the performance is stable for the 1.4.2 and we don=
=1B$B!G=1B(Bt have concerns regarding performance degradation.

I used the data from the performance_test wiki for 1.4.2: https://wiki.yoct=
oproject.org/wiki/Performance_Test#1.4.1_.26_1.4.2_Build_Time_results.

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619F2F671IRSMSX104gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:dt=3D"uuid:C2F4101=
0-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://schemas.microsoft.com/offi=
ce/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	{font-family:"MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
@font-face
	{font-family:"\@MS PGothic";
	panose-1:2 11 6 0 7 2 5 8 2 4;}
@font-face
	{font-family:"\@MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:JA;}
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:24.0pt;
	font-family:"Times New Roman","serif";
	mso-fareast-language:JA;}
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
	font-family:"Courier New";
	mso-fareast-language:JA;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:JA;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:JA;}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Times New Roman","serif";
	font-weight:bold;}
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
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.editsection
	{mso-style-name:editsection;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle27
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
/* List Definitions */
@list l0
	{mso-list-id:175661180;
	mso-list-type:hybrid;
	mso-list-template-ids:-744711344 -1077492816 67698691 67698693 67698689 67=
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
@list l1
	{mso-list-id:1720745446;
	mso-list-type:hybrid;
	mso-list-template-ids:-658751666 -673163214 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
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
<p class=3D"MsoNormal">Here is the full pass for The Yocto Project, 1.4.2_r=
c1 build.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issue summary:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>For the adt-installer and toolchain sdk with ARM ar=
ch, The target arch is changed from armv5te to armv7a-vfp-neon. That make s=
ome test cases failed: If we use this cross-compiler to compile a C/C&#43;&=
#43; program, the program can not run on
 qemuarm. See bug #<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cg=
i?id=3D5039">5039</a> for more details.
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>core-image-sato can not boot up on Fedora 19 due to=
 the SDL issue (known issue in 1.5 too) - #<a href=3D"https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D5040">5040</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>HOB error when building packages #<a href=3D"https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D5053">5053</a>. The issue doe=
s not reproduces constantly.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p><=
/span></h1>
</div>
<div style=3D"border:dashed #2F6FAB 1.0pt;padding:12.0pt 12.0pt 12.0pt 12.0=
pt">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;orphans: auto;text-alig=
n:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px"><span=
 style=3D"color:black"> Test type: Full pass post release<o:p></o:p></span>=
</pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Branch: dylan<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Milestone: 1.4.2<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Build name: 2013-08-18<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> poky commit: d734ab491a30078d43dee5440c03acce2d251425<o:p></o:p></sp=
an></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> poky commit date:&nbsp; Fri Aug 16 12:22:25 2013 &#43;0100<o:p></o:p=
></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Eclipse Plugin commit: dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7<o:p>=
</o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Autobuilder images repository: <a href=3D"http://autobuilder.yoctopr=
oject.org/pub/releases/dylan-1.4.2.rc1">http://autobuilder.yoctoproject.org=
/pub/releases/dylan-1.4.2.rc1</a><o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"><o:p>&nbsp;</o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Distributions tested: Fedora 19 32bit, Fedora 18 64bit, Ubuntu 13.04=
 64bit, Ubuntu 12.04 64bit, CentOS 6.4 64bit, Opensuse 12.3 64bit, opensuse=
 12.2 64bit<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack">&nbsp; <o:p></o:p></span></pre>
</div>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;background-positio=
n:initial initial;background-repeat:initial initial;overflow:hidden;word-sp=
acing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Summa=
ry Report</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p=
></span></h1>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0" style=3D"bac=
kground:white;orphans: auto;text-align:start;widows: auto;-webkit-text-stro=
ke-width: 0px;word-spacing:0px">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;background-posi=
tion:initial initial;background-repeat:initial initial">
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;background-position:initial initial;background-repeat:initial initial">
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
rg/tr_show_run.cgi?run_id=3D1061"><span style=3D"color:#5A3696">1061</span>=
</a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Fedora 19 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">79.3%<o:p></o:p></span></p>
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
rg/show_bug.cgi?id=3D5039"><span style=3D"color:#5A3696">5039</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5040"><span style=3D"color:#5A3696">504=
0</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">11.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5039"><span style=3D"color:#5A3696">5039</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1064"><span style=3D"color:#5A3696">1064</span>=
</a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">87.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5039"><span style=3D"color:#5A3696">5039</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">11.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5039"><span style=3D"color:#5A3696">5039</span></a><o:=
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D1067"><span style=3D"color:#5A3696">1067</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: dylan branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Atom PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">98.6%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:=
p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1048"><span style=3D"color:#5A3696">1048</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: dylan branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">97.0%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">3.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D3937"><span style=3D"color:#5A3696">393=
7</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1075"><span style=3D"color:#5A3696">1075</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: dylan branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
rg/tr_show_run.cgi?run_id=3D1063"><span style=3D"color:#5A3696">1063</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: dylan branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
rg/tr_show_run.cgi?run_id=3D1051"><span style=3D"color:#5A3696">1051</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: dylan branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
rg/tr_show_run.cgi?run_id=3D1053"><span style=3D"color:#5A3696">1053</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1070"><span style=3D"colo=
r:#5A3696">1070</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: dylan branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">98.9%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5036"><span style=3D"color:#5A3696">5036</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1071"><span style=3D"color:#5A3696">1071</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1073"><span style=3D"colo=
r:#5A3696">1073</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: dylan branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
rg/tr_show_run.cgi?run_id=3D1072"><span style=3D"color:#5A3696">1072</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1074"><span style=3D"colo=
r:#5A3696">1074</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: dylan branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
rg/tr_show_run.cgi?run_id=3D1052"><span style=3D"color:#5A3696">1052</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: dylan branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
rg/tr_show_run.cgi?run_id=3D1076"><span style=3D"color:#5A3696">1076</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BSP/QEMU: dylan branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Routerstationpro<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1078"><span style=3D"color:#5A3696">1078</span>=
</a><o:p></o:p></span></p>
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D1054"><span style=3D"color:#5A3696">1054</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Meta-yocto: dylan branch<o:p></o:p></span>=
</p>
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
<span style=3D"font-size:10.0pt">95.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">4.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D3908"><span style=3D"color:#5A3696">3908</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1065"><span style=3D"color:#5A3696">1065</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1068"><span style=3D"colo=
r:#5A3696">1068</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Hob: dylan branch<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5053"><span style=3D"color:#5A3696">5053</span></a><o:=
p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1060"><span style=3D"color:#5A3696">1060</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">OE-Core: dylan branch<o:p></o:p></span></p=
>
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
rg/tr_show_run.cgi?run_id=3D1045"><span style=3D"color:#5A3696">1045</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BitBake: dylan branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 12.04 x86_64<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1066"><span style=3D"color:#5A3696">1066</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Runtime: dylan branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Multiple Environments<o:p></o:p></span></p=
>
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
rg/tr_show_run.cgi?run_id=3D1062"><span style=3D"color:#5A3696">1062</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Build Appliance: danny branch<o:p></o:p></=
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
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5041"><span style=3D"color:#5A3696">5041</span></a><o:=
p></o:p></span></p>
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
<b><span style=3D"font-size:10.0pt">Total: 19</span></b><span style=3D"font=
-size:10.0pt"><o:p></o:p></span></p>
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;background-posi=
tion:initial initial;background-repeat:initial initial">
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;background-position:initial initial;background-repeat:initial initial">
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
<span style=3D"font-size:10.0pt">26<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">18<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">1001<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">RUNNING<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">1<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 1046</span></b><span style=3D"fo=
nt-size:10.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><img border=3D"0" w=
idth=3D"432" height=3D"120" id=3D"Picture_x0020_22" src=3D"cid:image001.png=
@01CEA33F.4715C800" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;=
chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:26,18,1001,1&amp;chco=3DFFFF66|FF993=
3|00FF00|0000FF&amp;chl=3DBLOCKED(26)&#43;2%25|FAILED(18)&#43;2%25|PASSED(1=
001)&#43;96%25|RUNNING(1)&#43;0%25"><o:p></o:p></span></p>
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;orphans: auto;t=
ext-align:start;widows: auto;-webkit-text-stroke-width: 0px;background-posi=
tion:initial initial;background-repeat:initial initial;word-spacing:0px">
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
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:white;pa=
dding:2.4pt 2.4pt 2.4pt 2.4pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;background-position:initial initial;background-repeat:initial initial" i=
d=3D"sortable_table_id_0">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">ID</span></b><a href=3D"https://wiki.yoctoproj=
ect.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.2_RC1_2013-08-18_build"><b=
><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img b=
order=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_21" src=3D"cid:i=
mage002.gif@01CEA33F.4715C800" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span=
 style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.2_RC1_2013-08-18_bui=
ld"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none">=
<img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_20" src=3D=
"cid:image002.gif@01CEA33F.4715C800" alt=3D"=1B$B"-=1B(B"></span></b></a><b=
><span style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.2_RC1_2013-08-18_build=
"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><i=
mg border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_19" src=3D"c=
id:image002.gif@01CEA33F.4715C800" alt=3D"=1B$B"-=1B(B"></span></b></a><b><=
span style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.2_RC1_2013-08-18_b=
uild"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none=
"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_18" src=
=3D"cid:image002.gif@01CEA33F.4715C800" alt=3D"=1B$B"-=1B(B"></span></b></a=
><b><span style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.2_RC1_2013-08-18_bu=
ild"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"=
><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_17" src=
=3D"cid:image002.gif@01CEA33F.4715C800" alt=3D"=1B$B"-=1B(B"></span></b></a=
><b><span style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description</span></b><a href=3D"https://wiki.=
yoctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.2_RC1_2013-08-18_=
build"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:non=
e"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_16" src=
=3D"cid:image002.gif@01CEA33F.4715C800" alt=3D"=1B$B"-=1B(B"></span></b></a=
><b><span style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.2_RC1_2013-08-18_buil=
d"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><=
img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_15" src=3D"=
cid:image002.gif@01CEA33F.4715C800" alt=3D"=1B$B"-=1B(B"></span></b></a><b>=
<span style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone</span></b><a href=3D"https://=
wiki.yoctoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.2_RC1_2013-0=
8-18_build"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoratio=
n:none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_14=
" src=3D"cid:image002.gif@01CEA33F.4715C800" alt=3D"=1B$B"-=1B(B"></span></=
b></a><b><span style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/Full_Pass_Test_Report_for_Yocto_1.4.2_RC1_2013-08-18_b=
uild"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none=
"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_13" src=
=3D"cid:image002.gif@01CEA33F.4715C800" alt=3D"=1B$B"-=1B(B"></span></b></a=
><b><span style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D3908"><span style=3D"color:#5A3696">3908</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1054"><span style=3D"col=
or:#5A3696">1054</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Kernel panic on qem=
ux86-64 when using runqemu kvm and cpu host<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">180<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1048"><span style=3D"col=
or:#5A3696">1048</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[beagleobard xM] So=
me error message with usbhs_omap in dmesg<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">173<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D3937"><span style=3D"color:#5A3696">3937</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1048"><span style=3D"col=
or:#5A3696">1048</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[beagleobard xM] Wa=
tchdog doesn't work<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">173<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:p></o:p=
></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1067"><span style=3D"col=
or:#5A3696">1067</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">dmesg log errors in=
 Atom-PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.3.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">160<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5036"><span style=3D"color:#5A3696">5036</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">NOTABUG<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1053"><span style=3D"col=
or:#5A3696">1053</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Test Case 215] sys=
tem dmesg log check<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.4<o:p></o:p></span></p>
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5039"><span style=3D"color:#5A3696">5039</span></a><o:p></o:p=
></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1061"><span style=3D"col=
or:#5A3696">1061</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D10=
64"><span style=3D"color:#5A3696">1064</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Yocot 1.4.2] [ADT]=
 ARM: target arch change from armv5te to armv7a-vfp-neon<o:p></o:p></span><=
/p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.4.2<o:p></o:p></span></p>
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
_bug.cgi?id=3D5040"><span style=3D"color:#5A3696">5040</span></a><o:p></o:p=
></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1061"><span style=3D"col=
or:#5A3696">1061</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Yocto 1.4.2] runqe=
mu: Could not initialize SDL(No available video device) for core-image-sato=
 on Fedora 19<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.4.2<o:p></o:p></span></p>
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5041"><span style=3D"color:#5A3696">5041</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1062"><span style=3D"col=
or:#5A3696">1062</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Yocto 1.4.2] [Buil=
d Appliance] An error message for make 3.8.2 when launch hob<o:p></o:p></sp=
an></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.4.2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.4.2<o:p></o:p></span></p>
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
_bug.cgi?id=3D5053"><span style=3D"color:#5A3696">5053</span></a><o:p></o:p=
></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1068"><span style=3D"col=
or:#5A3696">1068</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Error when building=
 packages.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.4.2<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 9</span><=
/b><span style=3D"font-size:10.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Below you can see the =
charts for the 1.4.2_rc1.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"1520" height=3D"922" id=
=3D"Picture_x0020_12" src=3D"cid:image003.png@01CEA33F.4715C800" alt=3D"cid=
:image001.png@01CEA321.E4114B70"><span style=3D"color:#1F497D"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F"><o:=
p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I have extracted the t=
able with the differences between the last two builds, 1.4.1 and 1.4.2 to s=
ee the actual numbers:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"1746" height=3D"114" id=
=3D"Picture_x0020_11" src=3D"cid:image004.png@01CEA33F.4715C800" alt=3D"cid=
:image003.png@01CEA322.ADFD7E90"><span style=3D"color:#1F497D"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"m=
so-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">the build time=
 for core-image-sato improved for System 1 but slightly degraded for System=
 2.
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"m=
so-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">building the k=
ernel degraded for the both systems for a ~30 seconds average.<o:p></o:p></=
span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"m=
so-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Build size inc=
reased with ~ 200MB with rm_work
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"m=
so-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Build size dec=
reased a lot without rm_work, saving 2GB&nbsp; of storage.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Overall I can say that=
 the performance is stable for the 1.4.2 and we don=1B$B!G=1B(Bt have conce=
rns regarding performance degradation.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I used the data from t=
he performance_test wiki for 1.4.2:
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test#1.4.1_.26_1.=
4.2_Build_Time_results">
https://wiki.yoctoproject.org/wiki/Performance_Test#1.4.1_.26_1.4.2_Build_T=
ime_results</a>.<o:p></o:p></span></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F2F671IRSMSX104gercor_--

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F2F671IRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=11940;
	creation-date="Tue, 27 Aug 2013 13:14:22 GMT";
	modification-date="Tue, 27 Aug 2013 13:14:22 GMT"
Content-ID: <image001.png@01CEA33F.4715C800>
Content-Transfer-Encoding: base64

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
pFAolDb+P2+X8YaVl2/WAAAAAElFTkSuQmCC

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F2F671IRSMSX104gercor_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=462;
	creation-date="Tue, 27 Aug 2013 13:14:22 GMT";
	modification-date="Tue, 27 Aug 2013 13:14:22 GMT"
Content-ID: <image002.gif@01CEA33F.4715C800>
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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F2F671IRSMSX104gercor_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=130268;
	creation-date="Tue, 27 Aug 2013 13:14:22 GMT";
	modification-date="Tue, 27 Aug 2013 13:14:22 GMT"
Content-ID: <image003.png@01CEA33F.4715C800>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAABfAAAAOaCAIAAABY5+QmAAAAAXNSR0IArs4c6QAA/8pJREFUeF7s
/Q28nVV5542f8A4BISIEBAxgApgClqGOJlTRKZ2a0GfAjkYbnQdtH5M6rU3oDNU8xVoVjcp0SGo7
NfE/av5jrUY/Y+iURJ/aUbQEGMuDQgaBREBBeRPDW3iHPN+9f+ess869X84+e691733v/dsfPuGc
fe57vXzXute67t+61rVm7d27d8wfEzABEzABEzABEzABEzABEzABEzABEzCB6hDYpzpFdUlNwARM
wARMwARMwARMwARMwARMwARMwARqBCzouB+YgAmYgAmYgAmYgAmYgAmYgAmYgAmYQMUIWNCpWIO5
uCZgAiZgAiZgAiZgAiZgAiZgAiZgAiZgQcd9wARMwARMwARMwARMwARMwARMwARMwAQqRsCCTsUa
zMU1ARMwARMwARMwARMwARMwARMwARMwgVk+5cqdwARMwARMwARMYIgJfPazn73//vuHuIKumgmY
gAmYgAmYwEgRmDt37u/8zu9Q5XaCjg2gkeoTrqwJmIAJmIAJdEggmBEdXt/fy9auXbtmzZr+lsG5
m4AJmIAJmIAJmEAqAsG2aSfo2ABKhdvpmIAJmIAJmMAwEaiWhVCt0g5TP3FdTMAETMAETMAEchAI
to1j6OTA6zRNwARMwARMwARMwARMwARMwARMwARMICMBCzoZ4TppEzABEzABEzABEzABEzABEzAB
EzABE8hBwIJODqpO0wRMwARMwARMwARMwARMwARMwARMwAQyErCgkxGukzYBEzABEzABEzABEzAB
EzABEzABEzCBHAQs6OSg6jRNwARMwARMwARMwARMwARMwARMwARMICMBCzoZ4TppEzABEzABEzAB
EzABEzABEzABEzABE8hBwIJODqpO0wRMwARMwARMwARMwARMwARMwARMwAQyErCgkxGukzYBEzAB
EzABEzABEzABEzABEzABEzCBHAQs6OSg6jRNwARMwARMwARMwARMwARMwARMwARMICMBCzoZ4Tpp
EzABEzABEzABEzABEzABEzABEzABE8hBwIJODqpO0wRMwARMwARMwARMwARMwARMwARMwAQyErCg
kxGukzYBEzABEzABEzABEzCBJAR2rT9nVu1zzvpd3aeXJJHus/edJtAbgW0r6w9B7bNyW29J+W4T
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
J02WiRw7ONywqbXRtO2KJkt00TSJtD1us/MCKMNUB3O2sPaaHKo9ZaSL2m2mJS9afVNP2ZymPA2W
a8DfWTGatUGrdmlyYmeTQzY7OtezoSdFvah46qm6cOGOLrvWtD2/gyNgR3EEc51nRKBaFkK1Sjuj
hvDFJmAC5RBoNnU2P4S7nPI4FxMwgREnEGybWYBopU2tXbt2zZo1w6JcuR4mYAIdEWA/ct3pNzrk
fYzt83VP6vi7jhIbkIua1WlAitaHYkzQqIlq2Vc8+1A/Z1kKgWpZCNUqbSkN6ExMwARmRmDCEoqm
zjCdVtU6mhkBX20CJjBQBIJt4y1XA9UuLowJ9J/AxHacyMG78iFXoojEtTPUR/szEVt58bpLlow2
CdfeBEzABEzABDokEGIfLg0RcqaPhdRh2r7MBEzABLonYEGne3a+0wSGksBQmiw5FZ3a6R9tP+Gk
iIHoL0HPqQdd9McETMAETMAETGB6As1iv2i3dLqj06cvha8wARMwgSIBCzruEyZgAlMIDKfJMnFu
A6eGj7aPzoSes+LSVdZz/OibgAmYgAmYQOcEahbS1I/FnM7p+UoTMIE8BCzo5OHqVE2g0gSG0WSp
ndvAJ73tNZ5w68BsAxWnZqJpB6pQlX5YXHgTMAETMAETMAETMAET6BMBCzp9Au9sTcAETMAETMAE
TMAETMAETMAETMAETKBbAhZ0uiXn+0zABEzABEzABEzABEzABEzABEzABEygTwQs6PQJvLM1ARMw
ARMwARMwARMwARMwARMwARMwgW4JWNDplpzvMwETMAETMAETMAETMAETMAETMAETMIE+EbCg0yfw
ztYETMAETMAETMAETMAETMAETMAETMAEuiVgQadbcr7PBEzABEzABEzABEzABEzABEzABEzABPpE
wIJOn8A7WxMwARMwARMwARMwARMwARMwARMwARPoloAFnW7J+T4TMAETMAETMAETMAETMAETMAET
MAET6BMBCzp9Au9sTcAETMAETMAETMAETMAETMAETMAETKBbAhZ0uiXn+0zABEzABEzABEzABEzA
BEzABEzABEygTwQs6PQJvLM1ARMwARMwARMYKgK71p8za9Y563fVK1X/ZfIz8XWo8JSL699uWzl+
ecO10d9C+kNFzpUxARMwARMwARPoisAgCDqNNk1Ulal/nDSPVm5rXt+p1wfjyAZQV93DN5mACZiA
CZiACXRCAIvjorFL1y2euHb+qmv2jn92rlu8eNn586NUihfX9Z+lY1t1wzWr4mvr4tBlO9btrP1p
57qx1Ze3sIA6KaWvMQETMAETMAETGCYCfRd0Gm2aKXi3Xb552boV41/tWn/R6tPr1s7WFRsvG18C
m9oahettAA1TZ3VdTMAETMAETGBQCSzZgBCzoFnpdl21eUx6Tm2Zqb4g1XBx7Zp1lyzppHKLFzbN
pZNbfY0JmIAJmIAJmMBwEei7oNNoAAVzp2b5LB27dNUpE3rOpLWz5JJ1Y5uvwqk5urhuKcXXT20p
G0DD1XNdGxMwARMwAROoAoFtl68+/VL53GDz7N3QVLXZecv27asXjG+5anBCnr9q07LN9b8uuOXS
Bv+dKkBwGU3ABEzABEzABHIQ6Lug01ipYO7gYTy2tbnhE+6KbaOG620A5egyTtMETMAETMAETKBT
Atu2bFxxYSeuNyvGN1w1dUJG8BlbsXXrirEWDsqdlsbXmYAJmIAJmIAJDBOBWexfalWftWvXrlmz
pozasnP8orFNU9ecJr/btvKc2y/hj/FVjXc0Xk/JceBhS/rWsaVL2XzuNa0y2tJ5mIAJmIAJDD+B
8iyEFCzLK22DddLMwJmoUvw37JUtF8p7p52F0+yvTQl96lOfevzxx1PAcxomYAImYAImUDaBefPm
LV++vOxcK5VfsG0GVtDBnlmwensEdcXWnQsvC7JPM5NpRtc3by4bQJXqxi6sCZiACaQnYBuiE6bl
SSSdlGa6a8orbdE6Qae5bGGrBaXCOhW7qWqKTs3+0U/hE3/VNsXJW8qr8nTw/XcTMAETMAETMIHk
BCYn+okjGJr8/2Mf+1ibv6b8U+38Bx3f0OyzdcX4H7kMh2MFRR5rfcPE9ZOXT3PDZKblVTklPqdl
AiZgAiZgAqUSqNZ0WUppsUwmP+Pbp4rWSu2a+p+aXFwzWvSZ2HvFkVaLx62dyT+2MX/iHlBKlUvt
cs7MBEzABEzABEwgEAgTfd9j6NQPFse3ph4LsB4GcGqc41jLmr/q0hUbl9aCArKDalM9wGDri8fG
CKGzbkf98uiG5NqYEzQBEzABEzABExh5ArWgfuEz7l9TP/ghOoI8BP5rcvHkMefBOaf2le6PzkD3
/vGR72oGYAImYAImYAKBQN8FnUabpuEMiCUbgvUSrp74ptmBEZPX2wByVzcBEzABEzABEzABEzAB
EzABEzABExhCAn0XdIaQqatkAiZgAiZgAiZgAiZgAiZgAiZgAiZgAlkJWNDJiteJm4AJmIAJmIAJ
mIAJmIAJmIAJmIAJmEB6AhZ00jN1iiZgAiZgAiZgAiZgAiZgAiZgAiZgAiaQlYAFnax4nbgJmIAJ
mIAJmIAJmIAJmIAJmIAJmIAJpCdgQSc9U6doAiZgAiZgAiZgAiZgAiZgAiZgAiZgAlkJWNDJiteJ
m4AJmIAJmIAJmIAJmIAJmIAJmIAJmEB6AhZ00jN1iiZgAiZgAiZgAiZgAiZgAiZgAiZgAiaQlYAF
nax4nbgJmIAJmIAJmIAJmIAJmIAJmIAJmIAJpCdgQSc9U6doAiZgAiZgAiZgAiZgAiZgAiZgAiZg
AlkJWNDJiteJm4AJmIAJmIAJmIAJmIAJmIAJmIAJmEB6AhZ00jN1iiZgAiZgAiZgAiZgAiZgAiZg
AiZgAiaQlYAFnax4nbgJmIAJmIAJmIAJmIAJmIAJmIAJmIAJpCdgQSc9U6doAiZgAiZgAiZgAiZg
AiZgAiZgAiZgAlkJWNDJiteJm4AJmIAJmIAJmIAJmIAJmIAJmIAJmEB6AhZ00jN1iiZgAiZgAiZg
AiZgAiZgAiZgAiZgAiaQlYAFnax4nbgJmIAJmIAJmIAJmIAJmIAJmIAJmIAJpCdgQSc9U6doAiZg
AiZgAiZgAiZQCQJP3X//T7deddMHP3Druv/83J49lSizC2kCJmACJmACImBBxz3BBEzABEzABEzA
BExgtAg8dMM/7/rMxut/b8W1v/vO2//LX/Lrvd/8h1s++fEXnnlmtEC4tiZgAiZgAlUmYEGnyq3n
spuACZiACZiACZiACXRG4Jndu6XafPetb8El5+4rv/bEPXfvN/vQua87d/67V/IDsg7iTmeJ+SoT
MAETMAET6D8BCzr9b4NBKwH+xg/ffNPdV25h5er7a96346Mf4ddBK6TLYwImYAImYAImYAKdEHj8
jjt+/JXN3/vDP7jm3y1nX9X937n6uT2PH3L8CSdc8KYzP/SR1375Kwv/+P0nXHDhGZd+YJ8DDkDx
ufOLX+gkWV9jAiZgAiZgAn0nYEGn703Q5wKwdRy9BkOHJSnkm6t/64LvvvXNN655367PbGDlavfN
Nz147XZ+RdbBHupzWZ29CZiACZiACZiACXRAgJ1TCDfIN4g43/vD379j0+cev+NH3Hfk2b9yyr//
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
jjxTS9GmDDOE5stNwARMwARMwARGgQDHbcY7rlgkGj+HcxQq7zqaQC8ECI08+1//m+f22e+R6/7p
md27e0nK95qACZiACbQikEnQKYQR9IqWe6AJmIAJmIAJmEDlCCy5cEVt0/j4x6dcVa4BXeC+Evj1
15121+EnzXru2R9v+VpfC+LMTcAETGBoCWQSdLyiNbQ9xhUzARMwARMwgeEnQBQ+7fHeOKad4eO/
+JSr4W971zAZgeNfMvvBs2vnl9/zjf/nhWeeSZauEzIBEzABE5ggkEnQ8YqWu5gJmIAJmIAJmIAJ
mIAJjDSBN/zGqx445Oixxx+595v/MNIgXHkTMAETyEMgtaDjFa087eRUTcAETMAETMAEyiMwf9U1
Exutpv6/ftimPyZgAp0ROHvBS35w0mu59q7/cVVnd/gqEzABEzCBGRBILejMIGtfagImYAImYAIm
YAImYAImMLQECI18yq+/fs/+s5+5+84Hr712aOvpirUlcMPOhz751R2Xfemmq2++75nnXjAtEzCB
hARSCzpe0UrYOE7KBEzABEzABEzABEzABKpMYMmvHHf9Mf+SGtz7j951VeWGnHnZdz/+zFe+e9fv
XHHNn37hRqSca3/4ALLOOy7/zl/9/a133PfYzNPzHSZgAk0IpBZ0DNkETMAETMAETMAETMAETMAE
6gTmHnHw7MWv5/zyh6679vE77jCVUSCAfIM/DtrN57+56/6HnyQ89u//5ml//ObTz15w5J6nntv6
vXve+9fXr/zUtfyA6DMKQFxHE8hHwIJOPrZO2QRMwARMwARMwARMwARGncC5v3LiTS95JRTu+8dv
jjqLoa4/2g0KDjoOnjj448w+aL+lrzr+z9/9qg3vXcQP555xzIffcdZnLz7nnefNR+a75+d7cNUJ
Fw81GFfOBDISsKCTEa6TNgETMAETMAETMAETMIERJ7DoFUfvOunVQLhn61XP7N494jSGr/qExfnm
jT9b8/kb2F3FHiucbk47/vCLL1z4hUteh2MOP8dVRsp5y2tPRNb5+LvOPu+slxJlKXbnQeUZPj6u
kQlkJWBBJyteJ24CJmACJmACJmACJmACo07gV3/1l3bNWbD32Wd8fvkwdYXgZXPFlltuunP3nEMP
uHDRy/DHwStHYk2byp5x4hyJPvyL6KOAO+zD+g+f+R7yEDuzhgmU62IC+QhY0MnH1imbgAmYgAmY
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
Or97ug9ePV3KOWNjFnSmo+u/m4AJmIAJmEAHBHqd/iey6DWdcs2IDsD4EhMwARMwARMwARPITuDP
3/2qqz50Xu//ffbic7ovK3462zdfNYNQOLWIO5ct3Nl1rGULOt03lu80ARMwARMwgUBgNM0IdwAT
MAETMAETMAETMIEJAks2EDlnQTjtfOU0B1dtu3z19rEQWWf6IMoNoC3ouO+ZgAmYgAmYwNAQKNuM
GBpwrogJmIAJmIAJmIAJFAhw7GjsOzPx65INE99GF3CmeX1/1fhRpYqLHO+4KiRWT4Sbok8XfjoW
dNxpTcAETMAETGBACQy+GTGg4FwsEzABEzABEzABExgBAhZ0RqCRXUUTMAETMAETMAETMAETMAET
MAETMIHhImBBZ7ja07UxARMwARMwARMwARMwARMwARMwARMYAQIWdEagkV1FEzABEzABEzABEzAB
EzABEzABEzCB4SJgQWe42tO1MQETMAETMAETMAETMAETMAETMAETGAECFnRGoJFdRRMwARMwARMw
ARMwARMwARMwARMwgeEiYEFnuNrTtTEBEzABEzABEzABEzABEzABEzABExgBAhZ0RqCRXUUTMAET
MAETMAETMAETMAETMAETMIHhImBBZ7ja07UxARMwARMwARMwARMwARMwARMwARMYAQIWdEagkV1F
EzABEzABEzCBzAR2rT9nlj4rtymrbSvHvzhn/a6pmYe/zJo18bfWF09JKlyfuTZO3gRMwARMwARM
oAIELOhUoJFcRBMwARMwARMwgYEmsGv9RatP37qXz9YVGy+rCTi71m9ZuLP2xc51Y6svH9d4Qh0W
r6v/be/ea1bN58v2F+9af9kOXd80rYEG48KZgAmYgAmYgAnkI2BBJx9bp2wCJmACJmACJjASBHZd
tXls3SVLanVdcsm6sc1X7Rqbv2pDXasZm3/K6WM7bq/56NS8cCbcd6ZiaXJxK26LFy4YCaSupAmY
gAmYgAmYwLQELOhMi8gXmIAJmIAJmIAJmEC3BHbdvmPxsvNr2s6SDXv3bqirPmPbVy+o78cq7saa
vDjKbv6qTcs2169fcMulcunxxwRMwARMwARMIB+ByY3U8fZpVmYatlF3XgbSjO/etnL8t3pe3aZr
QafzBvCVJmACJmACJmACJjAjAuzF2rxsU0GEqSk79c/W01dfFAXYaXpxLbudt2wfW7F164oxbefy
xwRMwARMwARMICeB+auu0VbnxeObpOvrKczfqddV0IguGrt03eJuKzOLUra6d+3atWvWrOk25Ure
N4JVrmQ7udAmYAImMOQEWKtZsHp7VEmsiWtW7Vw567KF/L87Dw3SvGhsU7ibdaHbL6n9Vs9rrJZ+
5+lWa7osobQx3PhnzLT2TcYFWy4cd9tpdXGrxNs8BFR5yB8RV88ETMAETGB4CcybN2/58uWDUL+C
8TTx606MqIWnr169kTKu2Lpz4WV1q61urI0bVjLixr8Zr0krS6wWSm+KjdZBzSdtm/Elomb/+9jH
Ptbmr0P5pxGs8lC2oytlAiZgAsNBYHJdKEF9ColtXVFbcsLnY/G6rWH5qdNsqjVdllFa6GLSKShy
zX7Tqt74Ty2xTl7S7uLJtKPU2zdVGVXutLP4OhMwARMwAROoKoGC8TTxK3P95Kw//uP4bM2fZA9M
8e+Z+HWqVBNOSJi5wRcm+v5vuWo85jOqZbPtZK23mDU/8rOnLWkdiGO+xARMwARMwARKITCx97q2
6Xr9+JHYK7dNzKPxRmzt9+5gO3bdd9hBdntvvvmrLl2xcWmN+tId6+o7rLZdzmrdRKgctcV4UORJ
y2cBJ2PVPaOaXFxfr6vfRwiddTvqaU+m3nuJnYIJmIAJmIAJmEC3BBaPH4WwYCF7suqnItTOQGDu
vn3HmOyBWuS71du337IzziJIOFoBSvDpt6DTeMznZKWabyfbdvnmZeua1b3FkZ8tr09Az0mYgAmY
gAmYQD8IbF99y4XyBtm4lDi59UWg+tnY21bq1/q60LLNcXwWyhnkhZoyUHMT9icdgRAXZ3zvWvi9
3hgTW+9ru6vG9+XXvx+PkdzkYkxD9u8rseiOmeyMS1c5p2QCJmACJmACg07gjk2f+9ZvLun9v1vX
/eeeqhqLNmGi7ynFdjf3WdBpcszn5KGezZYNt61cOnbpqlNClaITQJse+Vm8PhtIJ2wCJmACJjDa
BEo1IwZmXWi029y1NwETMAETMAETGBQCu2++KUlRekoHP53tm68q8fyCPgs6zYhHh3oW/7xr/WVj
W8cXs/S3ZhdPHvnZeH2SJnYiJmACJmACJlAk0NP0HyXWazrlrgu5H5iACZiACZiACZjAIBA4+z9d
8Ya/39b7f4v+6+d7qM6SDXhILxjfczVr1spt06RVDxtT25u1mpumvboxsQEUdFrWuH6YZ31/WrvP
5JGfnV3fQ2P5VhMwARMwAROYIDAQZkTp60JufxMwARMwARMwARMYVgLseY73Ok/8umTDxLfRBfia
1H1P4p3VE1ur63wKiSmRKZuup/iudMa0z8eWT38S5+QVDWe4Ej26ocbRkZ8dXV+g5GM+O+s2vsoE
TMAEhpbA4JyUCeI2h2XWTxyPL5g4/3rK7BfPlE0Pyzzl8iiYTrN5tXlDl3AQeMIeVq3SJqn4CFY5
CTcnYgImYAImYAKVIBAm+j4LOjVTtBa+EWEmkmJihE2PZOd8j9tlyhYuXbB5Wf3s98Kn+fVNWsoG
UCW6rwtpAiZgAibQXwLVmi6rVdokLTuCVU7CzYmYgAmYgAmYQCUIhIm+31uuGo/5nAyK3Ml2sigo
ctMjPyvRGi6kCZiACZiACZiACZiACZiACZiACZiACcyEQL8FHYU1njzRk7KHOMett5NN7lmLgiI3
PfJTLCavnwkbX2sCJmACJmACJmACJmACJmACJmACJmACA0mg/4LOQGJxoUzABEzABEzABEzABEzA
BEzABEzABExgcAlY0BnctnHJTMAETMAETMAETMAETMAETMAETMAETKApAQs67hgmYAImYAImYAIm
YAImYAImYAImYAImUDECFnQq1mAurgmYgAmYgAmYgAmYgAmYgAmYgAmYgAlY0HEfMAETMAETMAET
MAETMAETMAETMAETMIGKEbCgU7EGc3FNwARMwARMwARMwARMwARMwARMwARMwIKO+4AJmIAJmIAJ
mIAJmIAJmIAJmIAJmIAJVIyABZ2KNZiLawImYAImYAImYAImYAImYAImYAImYAIWdNwHTMAETMAE
TMAETMAETMAETMAETMAETKBiBCzoVKzBXFwTMAETMAETMAETMAETMAETMAETMAETsKDjPmACJmAC
JmACJmACJmACJmACJmACJmACFSNgQadiDebimoAJmIAJmIAJmIAJmIAJmIAJmIAJmIAFHfcBEzAB
EzABEzABEzABEzABEzABEzABE6gYAQs6FWswF9cETMAETMAETMAETMAETMAETMAETMAELOi4D5iA
CZiACZiACZiACZiACZiACZiACZhAxQhY0KlYg7m4JmACJmACJmACJmACJmACJmACJmACJmBBx33A
BEzABEzABEzABEzABEzABEzABEzABCpGwIJOxRrMxTUBEzABEzABEzABEzABEzABEzABEzABCzru
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
xHn00UdLmg4u0vaMnuian97CWdCZ3rp3yU3ABIZE4Atf+ALeN1VNB6Gno+fOkMxwsiZgAiZgAiZg
AiYw8QQ+/elPs9JKxSRKDn7Q/Bs0HbpeHMTNsWf0xLeE6SygBZ3prHeX2gRMID+BINYQae9Tn/oU
O5HHmg5TRt/4xjfoXuTP2CmagAmYgAmYgAmYwLQSYFfyj33sY1pRRYxC/o01nfXr17MTxbSycbkn
n4AFncmvY5fQBExgBAQ++9nPfvjDH1ZGWlfFv0HTwcsXKQeVx7NDI6gLZ2ECJmACJmACJjA9BBBx
2Es0OOmo4IpXyA7lH/zgB/l1emi4pNNGwILOtNW4y2sCJjAUAswO4fFbcsAJmk7HDReGYocTNQET
MAETMAETMIEpI/Dbv/3bu3fvJvJxXO53vetdzKWxYfmUwXBxp4uABZ3pqm+X1gRMYEgEmAh6//vf
v2PHjlL627ZtYykWyg7rsIaUtZM1ARMwARMwARMwgWkmgJMOms573vOer3/964EDkXSs5kxzq5iS
slvQmZKKdjFNwASGToBNrJgaKnn8IvH8yZ/8idWcodN3BiZgAiZgAiZgAlNMYOPGjR//+McJX4jH
tDAono4PE5hsAhZ0Jrt+XToTMIHREVAEPiLpfOITnwi5snem1ZzR1YFzMgETMAETMAETmFYCv/Ir
v/LFL36RtVfIOqXlV9OKxOWefAIWdCa/jl1CEzCBkREgCjI9CbZaeO973+sdykeG3RmZgAmYgAmY
gAmYAATYfYKeGAve9+zZw5YUZmICE0/Ags7EV7ELaAImMFIC9CS+9rWvkeW11177oQ99yLLOSOk7
MxMwARMwARMwgaknwPIrwiHbRXrqG8JUALCgMxXV7EKagAmMksBll11GZD5kHT6MMl/nZQImYAIm
YAImYAImYAImMD0ELOhMT127pCZgAiMlwLzQ9u3bremMFLozMwETMAETMAETMAETMIGpIWBBZ2qq
2gU1ARMwARMwARMwARMwARMwARMwAROYFAIWdCalJl0OEzABEzABEzABEzABEzABEzABEzCBqSFg
QWdqqtoFNQETMAETMAETMAETMAETMAETMAETmBQCFnQmpSZdDhMwARMwARMwARMwARMwARMwARMw
gakhYEFnaqraBTUBEzABEzABEzABEzABEzABEzABE5gUAhZ0JqUmXQ4TMAETMAETMAETMAETMAET
MAETMIGpIWBBZ2qq2gU1ARMwARMwARMwARMwARMwARMwAROYFALLzpw5060su3bt2rFjx6SU1OUw
ARMwARMwARPIQ6BZPYSPf/zjzz77bJ6SOxUTMAETMAETMAETWGoCF1xwwfve9z6ssKCz1FXh/E3A
BEzABEygaQSaJeg0ja7tNQETMAETMAETMIG+CPQSdDyj1RdCn2QCJmACJmACU0YgzAtNWbldXBMw
ARMwARMwARMYIwK9BJ0xMtOmmIAJmIAJmIAJmIAJmIAJmIAJmIAJmIAJzBFwUGS3BRMwARMwARMw
ARMwARMwARMwARMwARNoGAELOg2rMJtrAiZgAiZgAiZgAiZgAiZgAiZgAiZgAhZ03AZMwARMwARM
wARMwARMwARMwARMwARMoGEELOg0rMJsrgmYgAmYgAmYgAmYgAmYgAmYgAmYgAlY0HEbMAETMAET
MAETMAETMAETMAETMAETMIGGEbCg07AKs7kmYAImYAImYAImYAImYAImYAImYAImYEHHbcAETMAE
TMAETMAETMAETMAETMAETMAEGkbAgk7DKszmmoAJmIAJmIAJmIAJmIAJmIAJmIAJmIAFHbcBEzAB
EzABEzABEzABEzABEzABEzABE2gYAQs6Daswm2sCJmACJmACJmACJmACJmACJmACJmACFnTcBkzA
BEzABEzABEzABEzABEzABEzABEygYQQs6DSswmyuCZiACZiACZiACZiACZiACZiACZiACVjQcRsw
ARMwARMwARMwARMwARMwARMwARMwgYYRsKDTsAqzuSZgAiZgAiZgAiZgAiZgAiZgAiZgAiZgQcdt
wARMwARMwARMwARMwARMwARMwARMwAQaRsCCTsMqzOaagAmYgAmYgAmYgAmYgAmYgAmYgAmYgAUd
twETMAETMAETMAETMAETMAETMAETMAETaBgBCzoNqzCbawImYAImYAImYAImYAImYAImYAImYAIW
dNwGTMAETMAETMAETMAETMAETMAETMAETKBhBCzoNKzCbK4JmIAJmIAJmIAJmIAJmIAJmIAJmIAJ
WNBxGzABEzABEzABEzABEzABEzABEzABEzCBhhGwoNOwCrO5JmACJmACJmACJmACJmACJmACJmAC
JmBBx23ABEzABEzABEzABEzABEzABEzABEzABBpGwIJOwyrM5pqACZiACZiACZiACZiACZiACZiA
CZiABR23ARMwARMwARMwARMwARMwARMwARMwARNoGAELOg2rMJtrAiZgAiZgAiZgAiZgAiZgAiZg
AiZgAhZ03AZMwARMwARMwARMwARMwARMwARMwARMoGEELOg0rMJsrgmYgAmYgAmYgAmYgAmYgAmY
gAmYgAlY0HEbMAETMAETMAETMAETMAETMAETMAETMIGGEbCg07AKs7kmYAImYAImYAImYAImYAIm
YAImYAImYEHHbcAETMAETMAETMAETMAETMAETMAETMAEGkbAgk7DKszmmoAJmIAJmIAJmIAJmIAJ
mIAJmIAJmIAFHbcBEzABEzABEzABEzABEzABEzABEzABE2gYAQs6Daswm2sCJmACJmACJmACJmAC
JmACJmACJmACFnTcBkzABEzABEzABEzABEzABEzABEzABEygYQQs6DSswmyuCZiACZiACZiACZiA
CZiACZiACZiACVjQcRswARMwARMwARMwARMwARMwARMwARMwgYYRsKDTsAqzuSZgAiZgAiZgAiZg
AiZgAiZgAiZgAiZgQcdtwARMwARMwARMwARMwARMwARMwARMwAQaRsCCTsMqzOaagAmYgAmYgAmY
gAmYgAmYgAmYgAmYgAUdtwETMAETMAETMAETMAETMAETMAETMAETaBgBCzoNqzCbawImYAImYAIm
YAImYAImYAImYAImYAIWdNwGTMAETMAETMAETMAETMAETMAETMAETKBhBCzoNKzCbK4JmIAJmIAJ
mIAJmIAJmIAJmIAJmIAJWNBxGzABEzABEzABEzABEzABEzABEzABEzCBhhGwoNOwCrO5JmACJmAC
JmACJmACJmACJmACJmACJmBBx23ABEzABEzABEzABEzABEzABEzABEzABBpGwIJOwyrM5pqACZiA
CZiACZiACZiACZiACZiACZiABR23ARMwARMwARMwARMwARMwARMwARMwARNoGAELOg2rMJtrAiZg
AiZgAiZgAiZgAiZgAiZgAiZgAhZ03AZMwARMwARMwARMwARMwARMwARMwARMoGEELOg0rMJsrgmY
gAmYgAmYgAmYgAmYgAmYgAmYgAlY0HEbMAETMAETMAETMAETMAETMAETMAETMIGGEbCg07AKs7km
YAImYAImYAImYAImYAImYAImYAImYEHHbcAETMAETMAETMAETMAETMAETMAETMAEGkbAgk7DKszm
moAJmIAJmIAJmIAJmIAJmIAJmIAJmIAFHbcBEzABEzABEzABEzABEzABEzABEzABE2gYAQs6Dasw
m2sCJmACJmACJmACJmACJmACJmACJmACFnTcBkzABEzABEzABEzABEzABEzABEzABEygYQQs6DSs
wmyuCZiACZiACZiACZiACZiACZiACZiACVjQcRswARMwARMwARMwARMwARMwARMwARMwgYYRsKDT
sAqzuSZgAiZgAiZgAiZgAiZgAiZgAiZgAiZgQcdtwARMwARMwARMwARMwARMwARMwARMwAQaRsCC
TsMqzOaagAmYgAmYgAmYgAmYgAmYgAmYgAmYgAUdtwETMAETMAETMAETMAETMAETMAETMAETaBgB
CzoNqzCbawImYAImYAImYAImYAImYAImYAImYAIWdNwGTMAETMAETMAETMAETMAETMAETMAETKBh
BCzoNKzCbK4JmIAJmIAJmIAJmIAJmIAJmIAJmIAJWNBxGzABEzABEzABEzABEzABEzABEzABEzCB
hhGwoNOwCrO5JmACJmACJmACJmACJmACJmACJmACJmBBx23ABEzABEzABEzABEzABEzABEzABEzA
BBpGwIJOwyrM5pqACZiACZiACZiACZiACZiACZiACZiABR23ARMwARMwARMwARMwARMwARMwARMw
ARNoGAELOg2rMJtrAiZgAiZgAiZgAiZgAiZgAiZgAiZgAhZ03AZMwARMwARMwARMwARMwARMwARM
wARMoGEELOg0rMJsrgmYgAmYgAmYgAmYgAmYgAmYgAmYgAlY0HEbMAETMAETMAETMAETMAETMAET
MAETMIGGEbCg07AKs7kmYAImYAImYAImYAImYAImYAImYAImYEHHbcAETMAETMAETMAETMAETMAE
TMAETMAEGkbAgk7DKszmmoAJmIAJmIAJmIAJmIAJmIAJmIAJmIAFHbcBEzABEzABEzABEzABEzAB
EzABEzABE2gYAQs6Daswm2sCJmACJmACJmACJmACJmACJmACJmACFnTcBkzABEzABEzABEzABEzA
BEzABEzABEygYQQs6DSswmyuCZiACZiACZiACZiACZiACZiACZiACSw7c+aMKZiACZiACZiACZjA
NBD43d/93ZMnT05DSV1GEzABEzABEzCBCSOwYsWKf/yP/3FcKAs6E1bFLo4JmIAJmIAJmEBXArt2
7dqxY4cBmYAJmIAJmIAJmEDjCFS7MV5y1bhKtMEmYAImYAImYAImYAImYAImYAImYALTTqCrh459
kqe9abj8JmACJmACJtCdQNXptxG07KHTiGqykSZgAiZgAiZgAlUC1W5MV0HHPR43IBMwARMwARMw
gW4EGtpPaKjZbocmYAImYAImYAIm4CVXbgMmYAImYAImYAImYAImYAImYAImYAIm0HgCjqHT+Cp0
AUzABEzABEzABEzABEzABEzABEzABKaNgAWdaatxl9cETMAETMAETMAETMAETMAETMAETKDxBCzo
NL4KXQATMAETMAETMAETMAETMAETMAETMIFpI2BBZ9pq3OU1ARMwARMwARMwARMwARMwARMwARNo
PAELOo2vQhfABEzABEzABEzABEzABEzABEzABExg2ghY0Jm2Gnd5TcAETMAETMAETMAETMAETMAE
TMAEGk/Agk7jq9AFMAETMAETMAETMAETMAETMAETMAETmDYCFnSmrcZdXhMwARMwARMwARMwARMw
gaYTOLH75mXFcfPuE00viu03AROoS8CCTl1yvs4ETMAETMAETMAETMAEpoBARuUgS1JZEmlCvfUs
6Im79h8uCrFu0y2rZmbGmMkYm9aERmAbTaA3AQs6biEmYAImYAImYAImYAImYAIpBOYG7cu2HkpJ
ZoyuHfcSLdRzxgicTTEBExglAQs6o6TtvEzABEzABEzABEzABExg8ggcP9ryFpmZOXKsvf7n0NbW
eqDGKjzVEnWrtSUpqfWcybuJXCITqEPAgk4dar7GBJpIQDNNEzNx1sQqsM0mYAImYAImMKEEVq9Z
1yqZ1v9MwjHeJbKeMwltzGUwgQwELOhkgOgkmkNgbgqlMmUksWOqgspNYZFLDdUEmnPn2lITMAET
MIExJ7Bq291niuPubROi58yMdYms54z5/WDzTGBkBCzojAy1M1pqAsXwfcPe2Iq9G4ar4NglZqnr
3PmbgAmYgAmYgAlkJRAiy5QmwhYEvm1NoM11uvZu6LIVU7ekWvYunINb1MM4nB48kbtO4rVxdAyR
E5eiHMq3/TcZRJf2KGmHhVgdowMPWNKW+X3pOQMx6Vi6IiftpFVgjQ3t0INeDHjWZujETMAE5ghY
0HFbmBYCh+7YzuLudbPHW/NHHMdn5RvcOjQLMzmzSn3U6hQWuUTFBPpoJj7FBEzABEzABAKBw9tX
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
hprttmgCJmACQQ3q2EE1HxMwgWkgUO3GeMmVFb/pIRBcd1v+t601OguCG8+TaE+ALIiUM7fuOtr/
PPjxdvMF1qLidjKLR2DuoyqiMrQK0MXTuW3kwrPXrasXqqdt1vrbtK1Wa4+weYSaGGvF/10QWqgX
3z4KWj6le8HljhTXVe3lV3ELadVpa6JuBKWrAcSXmIAJmIAJmIAJTBWBQfxzpgqMC2sCU03Ags5U
V/8UFX7eFzcUupjeiPdG6ptGsSSn5Prbxed4fgEziafHKC7cYfr1dMbI2Pe1uPTunYXyUf8o/GkX
lns+XHT1t5YrTy2+VQt7FzzsR9++kIwX8czuxKDSQiJX4eGWrn6N+EoTMAETMAETMIFpIWA9Z1pq
2uU0gYEILMMxqeMFu3bt2rFjx0Bp+WQTMIFhEWBvhg17u+8pPqxslz7dqS340qO3BSawCIGG9hMa
arabowmYgAmYgAmYgAlUuzH20HGrMAETMAETMAETMAETMAETMAETMAETMIGGEbCg07AKs7kmYAIm
YAImYAImYAImYAImYAImYAImYEHHbcAETMAETMAETMAETMAETMAETMAETMAEGkbAgk7DKszmTimB
IhDzmbu3rZq64k9twaeupl1gEzABEzABEzABEzABEzCBwQhY0BmMl882ARMwARMwARMwARMwARMw
ARMwARMwgSUnYEFnyavABpiACZiACZiACZiACZiACZiACZiACZjAYAQs6AzGy2ebgAmYgAmYgAmY
gAmYgAmYgAmYgAmYwJITsKCz5FVgA0zABEzABEzABEzABEzABEzABEzABExgMAIWdAbj5bNNwARM
wARMwARMwARMwARMwARMwARMYMkJWNBZ8iqwASZgAiZgAiZgAiZgAiZgAiZgAiZgAiYwGAELOoPx
8tkmkIvAid03L1u2bOuhXOk5HRMwARMwARMwARMwARMwARMwgSkiYEFniirbRR0nAifu2n94ZmbL
xvXjZNQ423Joaz39y8LZONeqbTMBEzABEzABEzABEzABE6hNwIJObXS+0AQSCFjPSYCXcqn0nZt3
n0hJxNeagAmYgAmYgAmYgAmYgAmYwJITsKCz5FVgA6aRQEvPWTd7m/1zprH2XWYTMIGJJ9DyKSyO
IB9LTS6OylLb6k/VyxcSW+z3iefrApqACZiACZiACbQIWNBxQzCB0ROQnrPpllWjz3rac1y17e4z
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
mIAJmIAJmIAJmIAJmIAJmMBABCzoDITLJ5uACZiACZiACZiACZiACZiACZiACZjA0hOwoLP0dWAL
TMAETMAETMAETMAETMAETMAETMAETGAgAhZ0BsLlk03ABEzABEzABEzABEzABEzABEzABExg6QlY
0Fn6OrAFJmACJmACJmACk0XgxO6bly27efeJVqlaf8wfc1+HEi84ufXtoa3t0yvnRr+F9CcLnUtj
AiZgAiZgAibQLwELOv2S8nkmYAImYAImYAIm0AcB5JjNMztn182dumrb3Wfax/HZdes23bIqSqR8
ckv/2TBzUBfcvS0+tyUO3X5k9njx0/HZme13HOrDHJ9iAiZgAiZgAiYwoQQs6ExoxbpYJmACJmAC
JmACS0Ng/R6EmNWd8j5x1/4Z6TmFD87WQo6pnFycM3vb+n5MX7emYy79XOpzTMAETMAETMAEmk/A
gk7z69AlMAETMAETMAETaAKBQ3dsX7tTPjfoOGf2dFRtjh89fHj76vaSq5bmEx+rtu3btL/16+qj
Oyv+O02AYBtNwARMwARMwARyEViGz27HtHbt2rVjx45c2TgdEzABEzABEzCBSSLQ0H7C6Mxm4dTm
mX0LJBe8cg5s7CjjxCdHZ/Hx9jXHS7INX7Ii6+DMhg2svepD0qHIk9TwXBYTMAETmAYCK1euvPXW
W6ehpC7jQASq3RgLOgMB9MkmYAImYAImYAIFgdEpI1l5j87siqDTQeEJResi6FQvib/plWAEbXRF
zlpTTswETMAETMAETKBEoPpOX+IlV5VdHMIX83tDxL2dkgPy/LYRFZdk170JmIAJmIAJmIAJjA0B
llu1w+csYtLqNev2HmittCKazuG115WiIs8cPnpcKbA2a2xKZ0NMwARMwARMwASWgMCSCjondh9Y
U9moYZ32bqhs7HBi9+bta1t7Phzcsvf2YiPQ6jdLANBZmoAJmIAJmIAJmEBMoDU7tXq7QuG0p5wO
Hdi7YHurEBS5cjJRcmaPbGhFyaHj046zU0xhFVuYz/+4bBlLrvaVN8FyRZiACZiACZiACUwRgSUV
dFZt2xM6Iott1BDt+bD+ttmZ/XedqH4zRfXmopqACZiACZiACYwpgSLgcTjaikxrM6vI2SYERe5w
8vw25yFscvGVro/2QO8jgM6YErJZJmACJmACJmACOQgsqaCjTTtLGzXM7exQzEP5MAETMAETMAET
MAETMAETMAETMAETMAETqBAYj6DIOBKv3r9pwVYN5Y0dqlEA981sDttH9BkX8Ld+67dOnTrlZmAC
JmACU0jA2yVMYaUPtcgNDbXbULNTqnIKi5yCa6Brn7jnm5z/5L33vvTC88888sjzjz/On2edd94l
11/Ph8vf9Gb+vfj1bzhn+fKBkvXJJmACJmACJtCRwPjuclXdybP0TRZBx30a3xgmYAImYAImkIVA
Q1+pDTU7pcqmsMgpuKrXnrr//hdPnzr98MPPP/H4C0888fTDD79w+vSp+781UC4XXX3N+Zdfft7l
l1949dXnLL/4kte/nssvayk+PkzABEzABEygTwJjJugc2rp1Zk9reXjZH4eAx2WfneKbozvPcPrc
yTOVb8obQZSxuE/TZ0PxaSZgAiZgAibQm0BDX6kNNTulNU5hkWvgevbkyWcfO/nc448//cjDZ154
4cf33ksij7cccLodqDPLr77mnIsvXn7ttZwjfxwdsc/OM4+dJPEe6bzshhvOPve8i6655tzLLrvg
yhUXrliB4nNxS/HxYQImYAImYAIxgTETdAppZsPeloFbDhZSTSHabG/vwalvYmUnnM1GWIoDWP1m
InufbsQmYAImYAImMG4EGioTNNTslNqfwiJ3w/Viy7PmJ88//+P7Cr3mqfvue+n5559qOeB0u4T1
U5defwO/XvqmN/Hvxde+4dyLl+Nug5oTX3LvI0/e88Dj9zz0+AsvvnTlZRdeeekFr3/VxRdfeO6b
Xtc+LSVrFJ9l556rrFF8LlixIqU9+FoTMAETMIHmEhg3QWfUJN2nGTVx52cCJmACJjChBBr6Sm2o
2SmNaHqKjDojpeaFU6dPPVAsifrJ6ae1NqpPNxni3Zy9/CK5ySDZINz0IH//o09984HHjzz0xFeP
/+D5F1/qdubyC855w1WXdFR5dEk95yAcgq77b/87R+dJuTV8rQmYgAk0joAFnV07duxoXLXZYBMw
ARMwARMYNwINlQkaanZK7U9GkYNYE/xrwsKon7zwvFZILXookA0eLudfeaUC2Zx17nn4vyx6YTjh
kR+cRsT5i2/96JsP/Oj0sy+G769+xfI3X3v52pWXXXHJ+T966rlHfvD0d3749OOnnrv34Sc7aj2L
qjxKuXf4Hgrypn/2z704q//q85kmYAIm0HQCFnQs6DS9Ddt+EzABEzCBsSDQUJmgoWanVHkjiqzt
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
OQXXVF37B3/64IE/umfDsT8kWPLMueeued9/v+IX3zZVBFxYEzABE2gWgTETdAodZ4NW7m45eKal
7Mx/tW72eLH2am41Fh/D2e2fqicvVhtT26f5xje++tij33/suz/8wXdOP/3EmWd+2EHiOffi5y68
9MxVb7j4ildc+spXveJNb37L+ed3OG0xxv7dBEzABExgKgg09JXaULNTmtQUFjkF17Rdi6vO7v/r
m6/58p03fv8blP1Vt7zzje/9jWmD4PKagAmYQFMIjJugM2pu7tME4g/cf+x73zv5wLFvP37y6WdP
vfTj73TQbs6+8PnlV7x0xasvuOzly1/7+quvu/6Gl73sslHXmfMzARMwARMYSwINfaU21OyUJjCF
RU7BNYXXPv/iS7//+fuP/bs73/7I58956cXzr1vzs//zbzqkzhS2BBfZBExg/AlU3+lnf+hDH+po
93/+z//5F37hF8a/SANZOJGFGohAOPnyy19+zWtXvvmmN//s3/jpdX/zr79941uu++tXvOaN55/z
slPnX/rCzNnPPf/0WS89f85zT53zxHdnHj3xwn1/9sPDn73v8//P1776la8cueeeEyfue/a5U+ee
d+7y5Y2MG10Pmq8yARMwARMIBBr6Sm2o2SkNbwqLnIJrCq89+6xlb3n9Fa+58af+/WOXrHjs2Fnf
/+79/+GPr3jzjRe+/IoppOEim0AWAuwi9+TRv/zhV//8B4fvfugzn/7RX3z1lTf/jSwpO5EpJ1B9
p4/HLlejqhZPUg1E+sc/fuLYffd++/5HTv342cceOn36R2f95JnzSiksO/ulS171/Mteed6lL7/w
Dde/buXrrn3lK1cMlItPNgETMAETaCKBhr5Sk8wuloFvP6x14jNbl92+prU4fNyPpCKPe+FsX04C
uOp85q6vn/Wp/x8hdX5y9jkv/7V/ctPGVkAEHyZgAosRIMT46Ucefvaxk0/ec88zj5189uTJ+Ipz
ll/8C5/5g8XS8O8msDgBL7na1f8uV4vjnL4zFHH5uw8/+sQPT1nimb76d4lNwARMYJ5AQ2WCBLPn
5BwJOqsRd47ubAcAHOuGkVDksS6XjRsSga8effQrs791w3f/gvRP/7W/+fd+87YhZeRkTaC5BE7d
f/8zJ0+eeuBbT913Hx+efuThUlnOOu+8S6+/4aJrrrnwNVdf8vrXX/z6N3gZY3Ore6wst6BjQSdz
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
JjCFBOigEj8RX3KCKrLYagoJuMgmMCUELOhMSUW7mNNIgPkZNB3iN4d9oxBKmiKL0BHBT4eOSMrG
59NY6y6zCZiACZiACZiACczM0Ov7q7/6qyeffJJYyLOzs0ZiAiYwkQQs6ExktbpQJtAmgIctLjls
doAyEq9gagQgfIPpiFx66aX4DAdNqhGW20gTMAETMAETMAETWHICTOPhSE6IADqES26MDTABExgG
AQs6w6DqNE1gjAjgp/O1r33txhtvfPvb314KqTNGVnYxhY4IrsJ0RLSFuQ8TMAETMAETMAETMIGB
CLDi/nWve91Al/hkEzCBphCwoNOUmrKdJlCfAC/yD3zgA8girGOqn4qvNAETMAETMAETMAETMAET
MAETGBsCFnTGpipsiAmYgAmYgAmYgAmYgAmYgAmYgAmYgAn0R8CCTn+cfJYJmIAJmIAJmIAJmIAJ
mIAJmIAJmIAJjA0BCzpjUxU2xARMwARMwARMwARMwARMwARMwARMwAT6I2BBpz9OPssETMAETMAE
TMAETMAETMAETMAETMAExoaABZ2xqQobYgImYAImYAImYAImYAImYAImYAImYAL9EbCg0x8nn2UC
JmACJmACJmACJmACJmACJmACJmACY0PAgs7YVIUNMQETMAETMAETMAETMAETMAETMAETMIH+CFjQ
6Y+TzzIBEzABEzABEzABEzABEzABEzABEzCBsSGw7MyZMx2N2bVr144dO8bGThtiAiZgAiZgAiYw
RgQa2k/4+Mc//uyzz44RR5tiAiZgAiZgAiZgAv0RuOCCC973vvfF53YVdNzj6Q+pzzIBEzABEzCB
aSRQ7VJMIwWX2QRMwARMwARMwASWjkBXQWfpTHLOJmACJmACJmACJmACJmACJmACJmACJmACvQg4
ho7bhwmYgAmYgAmYgAmYgAmYgAmYgAmYgAk0jIAFnYZVmM01ARMwARMwARMwARMwARMwARMwARMw
gf8/IHenLbUZNlUAAAAASUVORK5CYII=

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F2F671IRSMSX104gercor_
Content-Type: image/png; name="image004.png"
Content-Description: image004.png
Content-Disposition: inline; filename="image004.png"; size=20935;
	creation-date="Tue, 27 Aug 2013 13:14:23 GMT";
	modification-date="Tue, 27 Aug 2013 13:14:23 GMT"
Content-ID: <image004.png@01CEA33F.4715C800>
Content-Transfer-Encoding: base64

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
sTqdBgAAAABJRU5ErkJggg==

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F2F671IRSMSX104gercor_--
