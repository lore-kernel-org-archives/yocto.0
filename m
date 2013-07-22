Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7D67E013E8
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 08:15:52 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Jul 2013 08:15:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,720,1367996400"; 
	d="gif'147?png'147,150?scan'147,150,208,217,147,150";a="335049305"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 22 Jul 2013 08:15:48 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 22 Jul 2013 16:15:47 +0100
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.35]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.10]) with mapi id
	14.03.0123.003; Mon, 22 Jul 2013 16:15:47 +0100
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Yocto Full Pass Report for 1.5_M3 - 2013-07-17-2 build
Thread-Index: Ac6G6nSAHMGE/ZHLRaucA1sthHZFgg==
Date: Mon, 22 Jul 2013 15:15:46 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B0A158793@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Yocto Full Pass Report for 1.5_M3 - 2013-07-17-2 build
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
X-List-Received-Date: Mon, 22 Jul 2013 15:16:00 -0000
X-Groupsio-MsgNum: 15075
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_33115ABC4887814E8A92A08FBC93416B0A158793IRSMSX103gercor_";
	type="multipart/alternative"

--_006_33115ABC4887814E8A92A08FBC93416B0A158793IRSMSX103gercor_
Content-Type: multipart/alternative;
	boundary="_000_33115ABC4887814E8A92A08FBC93416B0A158793IRSMSX103gercor_"

--_000_33115ABC4887814E8A92A08FBC93416B0A158793IRSMSX103gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the weekly test result for 1.5 M3 build 2013-07-17-2:

Issue summary:

-          Some old bugs still can be found for qemuarm, qemux86-64 and ato=
m-pc platform: 3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D390=
8>, 4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>, 4024<ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>. These are older th=
an 3 months.

-          Multilib build issue: 4529<https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D4529>

-          Some adt installer issues: 4783<https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4783>, 4849<https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D4849>

-          Autobuilder output format issue: 4618<https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D4618>

-          Compile issue with Sudoku-savant: 4812<https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D4812>

-          Issue with connman. Reported on qemux86 targets: 4832<https://bu=
gzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

-          NEW (Medium+)  systemd failed service an runtime: 4863<https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D4863>

-          NEW u-boot fail on p1022ds platform: 4864<https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D4864>

-          NEW issue found with smart updater that will lead to segmentatio=
n fault: 4872<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4872>

-          NEW beagleboard issue found; Internal error possible on multiple=
 reboot: 4874<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4874>

To see the full report, please go to:  https://wiki.yoctoproject.org/wiki/W=
W29_-_2013-07-17-2_-_Weekly_Yocto_1.5_M3

Testing data

 Test type: Weekly Test

 Branch: master

 Milestone: M3

 Build name: 2013-07-17-2

 poky commit: 3dee534f1e25109e0bdb681de0746c336f4b8840

 poky commit date: Sat Jul 13 17:57:56 2013 +0300

 meta-intel commit: 32a8205cebd5dbd65847c63721dc5df70c4d1c35

 Eclipse Plugin commit: 76df60597ae7cce069a5f1fd45089ea04c7394cd

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20130717-2



 Distributions tested:


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

918<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D918>

ADT: master branch

Fedora 18 i686

82.5%

4849<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849>

17.5%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783> 4618<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618> 4849<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D4849>

0.0%

none

100.0%

917<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D917>

ADT: master branch

Ubuntu 13.04 x86_64

82.5%

4849<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849>

17.5%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783> 4618<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618> 4849<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D4849>

0.0%

none

100.0%

920<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D920>

BSP/QEMU: master branch

Atom PC

97.3%

none

2.7%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

916<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D916>

BSP/QEMU: master branch

Beagleboard

94.7%

none

5.3%

4874<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4874> 4872<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4872>

0.0%

none

100.0%

913<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D913>

BSP/QEMU: master branch

MPC8315e-rdb

94.6%

none

5.4%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

919<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D919>

BSP/QEMU: master branch

P1022ds

0.0%

none

2.7%

4864<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4864>

97.3%

none

100.0%

922<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D922> 905<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D905>

BSP/QEMU: master branch

qemu-x86

96.2%

none

3.8%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812> 4832<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

0.0%

none

100.0%

909<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D909> 907<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D907>

BSP/QEMU: master branch

qemuarm

97.1%

none

2.9%

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

0.0%

none

100.0%

911<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D911> 914<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D914>

BSP/QEMU: master branch

qemumips

98.6%

none

1.4%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

910<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D910> 915<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D915>

BSP/QEMU: master branch

qemuppc

98.6%

none

1.4%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

921<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D921> 906<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D906>

BSP/QEMU: master branch

qemux86-64

96.2%

none

3.8%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812> 4832<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

0.0%

none

100.0%

912<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D912>

BSP/QEMU: master branch

Routerstationpro

94.6%

none

5.4%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

903<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D903>

Eclipse Plugin: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

904<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D904>

Meta-yocto: master branch

Ubuntu 13.04 x86-64

50.0%

none

50.0%

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

0.0%

none

100.0%

902<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D902>

Hob: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

901<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D901>

OE-Core: master branch

Multiple environments

88.2%

none

11.8%

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529> 4863<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4863>

0.0%

none

100.0%

908<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D908>

BitBake: master branch

Ubuntu 12.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 17



Test Case Status Report

Status

Count

BLOCKED

36

FAILED

47

PASSED

627

Total: 710


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:36,47,627&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(36)+5%25|FAILED(47)+7%=
25|PASSED(627)+88%25]



Bug Status Report

[Bug Status]

ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW29_-_2013-07-17-2_-_W=
eekly_Yocto_1.5_M3>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW29_-_2013-07-17=
-2_-_Weekly_Yocto_1.5_M3>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW29_-_2013-07-17-2=
_-_Weekly_Yocto_1.5_M3>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW29_-_2013-07-=
17-2_-_Weekly_Yocto_1.5_M3>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW29_-_2013-07-1=
7-2_-_Weekly_Yocto_1.5_M3>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW29_-_2013-07=
-17-2_-_Weekly_Yocto_1.5_M3>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW29_-_2013-07-17-=
2_-_Weekly_Yocto_1.5_M3>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW29_-_20=
13-07-17-2_-_Weekly_Yocto_1.5_M3>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW29_-_2013-07-=
17-2_-_Weekly_Yocto_1.5_M3>

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

Medium+

IN PROGRESS REVIEW

904<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D904>

Kernel panic on qemux86-64 when using runqemu kvm and cpu host

1.4

1.5 M2

148

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

920<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D920>

dmesg log errors in Atom-PC

1.3.1

1.5

128

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

Undecided

RESOLVED

FIXED

907<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D907> 909<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D909>

start qemuarm with "core-image-sato", use "dmesg | grep -i error" shows 2 e=
rrors

1.4

---

124

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>

Medium

NEW

901<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D901>

x32 build fails with gmp_5.1.1 do_configure

1.5

1.5

56

4618<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618>

Medium

NEW

917<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D917> 918<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D918>

[Autobuilder] Some toolchains are built twice with 20130604-5 build

1.5

1.5 M2

41

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783>

Medium+

ACCEPTED

918<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D918> 917<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D917>

[adt-installer] ARM: target arch change from armv5te to armv7a-vfp-neon in =
environment setting script.

1.5

1.5 M2

20

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

Medium+

IN PROGRESS REVIEW

912<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D912> 915<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D915> 913<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D913> 922<https://bugzilla.=
yoctoproject.org/tr_show_run.cgi?run_id=3D922> 921<https://bugzilla.yoctopr=
oject.org/tr_show_run.cgi?run_id=3D921> 914<https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D914>

sudoku-savant fails at 'make': 'cstdlib: No such file or directory'

1.5

1.5

13

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

Medium

NEW

921<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D921> 922<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D922>

[Test Case 225] ethernet static ip set in connman

1.5

1.5 M4

8

4849<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849>

Medium

IN PROGRESS REVIEW

918<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D918> 917<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D917>

Some error messages when install toolchain sdk

1.5

1.5

2 (Recent)

4863<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4863>

Medium+

NEW

901<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D901>

systemd failed proc-sys-fs-binfmt_misc.mount service

1.5

1.5 M3

NEW

4864<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4864>

Undecided

RESOLVED

WORKSFORME

919<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D919>

[p1022ds] u-boot fail to build with 20130717-2 build

1.5

---

NEW

4872<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4872>

Undecided

NEW

916<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D916>

Do smart install and remove more times will occur Segmentation fault

1.5

---

NEW

4874<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4874>

Undecided

NEW

916<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D916>

Bootup beagleboard with run-level 3, it has "Internal error" sometimes.

1.5

---

NEW

Total: 13



Regards,
Stoicescu Corneliu
Romania Yocto QA





--_000_33115ABC4887814E8A92A08FBC93416B0A158793IRSMSX103gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
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
	{mso-list-id:843399219;
	mso-list-type:hybrid;
	mso-list-template-ids:1093060092 436886458 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
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
	{mso-list-id:1668745027;
	mso-list-type:hybrid;
	mso-list-template-ids:1402738478 -1606634074 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
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
<p class=3D"MsoNormal">Here is the weekly test result for 1.5 M3 build 2013=
-07-17-2:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issue summary:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Some old bugs still can be found for qemuarm, qemux=
86-64 and atom-pc platform:
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908">3908</=
a>, <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005">
4005</a>, <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D40=
24">4024</a>. These are older than 3 months.
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Multilib build issue: <a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D4529">
4529</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Some adt installer issues: <a href=3D"https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D4783">
4783</a>, <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D48=
49">4849</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Autobuilder output format issue: <a href=3D"https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4618">
4618</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Compile issue with Sudoku-savant: <a href=3D"https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812">
4812</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Issue with connman. Reported on qemux86 targets: <a=
 href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832">
4832</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><span style=3D"color:#FF4000">NEW </span><span styl=
e=3D"color:red">(Medium&#43;) &nbsp;</span>systemd failed service an runtim=
e:
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4863">4863</=
a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><span style=3D"color:#FF4000">NEW </span>u-boot fai=
l on p1022ds platform:
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4864">4864</=
a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><span style=3D"color:#FF4000">NEW </span>issue foun=
d with smart updater that will lead to segmentation fault:
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4872">4872</=
a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><span style=3D"color:#FF4000">NEW </span>beagleboar=
d issue found; Internal error possible on multiple reboot:
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4874">4874</=
a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To see the full report, please go to: &nbsp;<a href=
=3D"https://wiki.yoctoproject.org/wiki/WW29_-_2013-07-17-2_-_Weekly_Yocto_1=
.5_M3">https://wiki.yoctoproject.org/wiki/WW29_-_2013-07-17-2_-_Weekly_Yoct=
o_1.5_M3</a><o:p></o:p></p>
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
"><span style=3D"color:black"> Milestone: M3<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 2013-07-17-2<o:p></o:p></span></=
pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 3dee534f1e25109e0bdb681de0746c3=
36f4b8840<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit date: Sat Jul 13 17:57:56 2013 &=
#43;0300<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> meta-intel commit: 32a8205cebd5dbd65847c6372=
1dc5df70c4d1c35<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit: 76df60597ae7cce069a5f=
1fd45089ea04c7394cd<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/nightly/20130717-2<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested:&nbsp; <o:p></o:p></spa=
n></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width=
: 0px;background-position:initial initial;background-repeat:initial initial=
;overflow:hidden;word-spacing:0px">
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p>=
&nbsp;</o:p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in">
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
g/tr_show_run.cgi?run_id=3D918"><span style=3D"color:#5A3696">918</span></a=
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">82.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4849"><span style=3D"color:#5A3696">4849</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">17.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4783"><span style=3D"color:#5A3696">4783</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4618"><span style=3D"color:#5A3696">4618=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849"><span style=3D"colo=
r:#5A3696">4849</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D917"><span style=3D"color:#5A3696">917</span></a=
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
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">82.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4849"><span style=3D"color:#5A3696">4849</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">17.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4783"><span style=3D"color:#5A3696">4783</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4618"><span style=3D"color:#5A3696">4618=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4849"><span style=3D"colo=
r:#5A3696">4849</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D920"><span style=3D"color:#5A3696">920</span></a=
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
<span style=3D"font-size:9.5pt">Atom PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.3%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">2.7%<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D916"><span style=3D"color:#5A3696">916</span></a=
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">94.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">5.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4874"><span style=3D"color:#5A3696">4874</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4872"><span style=3D"color:#5A3696">4872=
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
g/tr_show_run.cgi?run_id=3D913"><span style=3D"color:#5A3696">913</span></a=
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
<span style=3D"font-size:9.5pt">94.6%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">5.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D919"><span style=3D"color:#5A3696">919</span></a=
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
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4864"><span style=3D"color:#5A3696">4864</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.3%<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D922"><span style=3D"color:#5A3696">922</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D905"><span style=3D"color:#5=
A3696">905</span></a><o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">96.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">3.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832=
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
g/tr_show_run.cgi?run_id=3D909"><span style=3D"color:#5A3696">909</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D907"><span style=3D"color:#5=
A3696">907</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">97.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">2.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D911"><span style=3D"color:#5A3696">911</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D914"><span style=3D"color:#5=
A3696">914</span></a><o:p></o:p></span></p>
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
g/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D910"><span style=3D"color:#5A3696">910</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D915"><span style=3D"color:#5=
A3696">915</span></a><o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">98.6%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D921"><span style=3D"color:#5A3696">921</span></a=
><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugz=
illa.yoctoproject.org/tr_show_run.cgi?run_id=3D906"><span style=3D"color:#5=
A3696">906</span></a><o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">96.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">3.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832=
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
g/tr_show_run.cgi?run_id=3D912"><span style=3D"color:#5A3696">912</span></a=
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">94.6%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">5.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D903"><span style=3D"color:#5A3696">903</span></a=
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
g/tr_show_run.cgi?run_id=3D904"><span style=3D"color:#5A3696">904</span></a=
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
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">50.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">50.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D3908"><span style=3D"color:#5A3696">3908</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D902"><span style=3D"color:#5A3696">902</span></a=
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
g/tr_show_run.cgi?run_id=3D901"><span style=3D"color:#5A3696">901</span></a=
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
<span style=3D"font-size:9.5pt;color:black">88.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">11.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4863"><span style=3D"color:#5A3696">4863=
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
g/tr_show_run.cgi?run_id=3D908"><span style=3D"color:#5A3696">908</span></a=
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
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
<span style=3D"font-size:9.5pt">36<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">47<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">627<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 710</span></b><span style=3D"font=
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
dth=3D"432" height=3D"120" id=3D"Picture_x0020_11" src=3D"cid:image001.png@=
01CE8707.7B752A40" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;c=
hs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:36,47,627&amp;chco=3DFFFF66|FF9933|00=
FF00&amp;chl=3DBLOCKED(36)&#43;5%25|FAILED(47)&#43;7%25|PASSED(627)&#43;88%=
25"></span><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
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
img border=3D"0" width=3D"372" height=3D"120" id=3D"Picture_x0020_10" src=
=3D"cid:image002.png@01CE8707.7B752A40" alt=3D"Bug Status"></span><span sty=
le=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></p>
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
ct.org/wiki/WW29_-_2013-07-17-2_-_Weekly_Yocto_1.5_M3"><b><span style=3D"fo=
nt-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" width=
=3D"12" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:image003.gif@01CE87=
07.7B752A40" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font-siz=
e:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW29_-_2013-07-17-2_-_Weekly_Yocto_1.5_M3"><b><span style=
=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" w=
idth=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:image003.gif@01=
CE8707.7B752A40" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW29_-_2013-07-17-2_-_Weekly_Yocto_1.5_M3"><b><span style=
=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" w=
idth=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"cid:image003.gif@01=
CE8707.7B752A40" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW29_-_2013-07-17-2_-_Weekly_Yocto_1.5_M3"><b><span sty=
le=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0"=
 width=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"cid:image003.gif@=
01CE8707.7B752A40" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"fo=
nt-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW29_-_2013-07-17-2_-_Weekly_Yocto_1.5_M3"><b><span styl=
e=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" =
width=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D"cid:image003.gif@0=
1CE8707.7B752A40" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"fon=
t-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW29_-_2013-07-17-2_-_Weekly_Yocto_1.5_M3"><b><span st=
yle=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0=
" width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=3D"cid:image003.gif=
@01CE8707.7B752A40" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"f=
ont-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW29_-_2013-07-17-2_-_Weekly_Yocto_1.5_M3"><b><span style=
=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" w=
idth=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"cid:image003.gif@01=
CE8707.7B752A40" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"font=
-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW29_-_2013-07-17-2_-_Weekly_Yocto_1.5_M3"><b><sp=
an style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2" src=3D"cid:image00=
3.gif@01CE8707.7B752A40" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW29_-_2013-07-17-2_-_Weekly_Yocto_1.5_M3"><b><span sty=
le=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0"=
 width=3D"12" height=3D"14" id=3D"Picture_x0020_1" src=3D"cid:image003.gif@=
01CE8707.7B752A40" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"fo=
nt-size:9.5pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3908"><span style=3D"color:#5A3696">3908</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D904"><span style=3D"color=
:#5A3696">904</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Kernel panic on qemu=
x86-64 when using runqemu kvm and cpu host<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">148<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D920"><span style=3D"color=
:#5A3696">920</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">128<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D907"><span style=3D"color=
:#5A3696">907</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D909">=
<span style=3D"color:#5A3696">909</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">start qemuarm with &=
quot;core-image-sato&quot;, use &quot;dmesg | grep -i error&quot; shows 2 e=
rrors<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">124<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D901"><span style=3D"color=
:#5A3696">901</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">x32 build fails with=
 gmp_5.1.1 do_configure<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">56<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4618"><span style=3D"color:#5A3696">4618</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D917"><span style=3D"color=
:#5A3696">917</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D918">=
<span style=3D"color:#5A3696">918</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Autobuilder] Some t=
oolchains are built twice with 20130604-5 build<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">41<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4783"><span style=3D"color:#5A3696">4783</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D918"><span style=3D"color=
:#5A3696">918</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D917">=
<span style=3D"color:#5A3696">917</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[adt-installer] ARM:=
 target arch change from armv5te to armv7a-vfp-neon in environment setting =
script.<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">20<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D912"><span style=3D"color=
:#5A3696">912</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D915">=
<span style=3D"color:#5A3696">915</span></a><span class=3D"apple-converted-=
space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_ru=
n.cgi?run_id=3D913"><span style=3D"color:#5A3696">913</span></a><span class=
=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctopr=
oject.org/tr_show_run.cgi?run_id=3D922"><span style=3D"color:#5A3696">922</=
span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"http=
s://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D921"><span style=3D"=
color:#5A3696">921</span></a><span class=3D"apple-converted-space">&nbsp;</=
span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D=
914"><span style=3D"color:#5A3696">914</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">sudoku-savant fails =
at 'make': 'cstdlib: No such file or directory'<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">13<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D921"><span style=3D"color=
:#5A3696">921</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D922">=
<span style=3D"color:#5A3696">922</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Test Case 225] ethe=
rnet static ip set in connman<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">8<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4849"><span style=3D"color:#5A3696">4849</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D918"><span style=3D"color=
:#5A3696">918</span></a><span class=3D"apple-converted-space">&nbsp;</span>=
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D917">=
<span style=3D"color:#5A3696">917</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Some error messages =
when install toolchain sdk<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">2<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4863"><span style=3D"color:#5A3696">4863</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Medium&#43;<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D901"><span style=3D"color=
:#5A3696">901</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">systemd failed proc-=
sys-fs-binfmt_misc.mount service<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5 M3<o:p></o:p></span></p>
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
bug.cgi?id=3D4864"><span style=3D"color:#5A3696">4864</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">WORKSFORME<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D919"><span style=3D"color=
:#5A3696">919</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[p1022ds] u-boot fai=
l to build with 20130717-2 build<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
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
bug.cgi?id=3D4872"><span style=3D"color:#5A3696">4872</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D916"><span style=3D"color=
:#5A3696">916</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Do smart install and=
 remove more times will occur Segmentation fault<o:p></o:p></span></p>
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
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4874"><span style=3D"color:#5A3696">4874</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D916"><span style=3D"color=
:#5A3696">916</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Bootup beagleboard w=
ith run-level 3, it has &quot;Internal error&quot; sometimes.<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
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
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 13</span><=
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
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Stoicescu Corneliu<o:p></o:p></p>
<p class=3D"MsoNormal">Romania Yocto QA<o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0" style=3D"mar=
gin-left:7.5pt">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p></o:p></p>
</div>
</body>
</html>

--_000_33115ABC4887814E8A92A08FBC93416B0A158793IRSMSX103gercor_--

--_006_33115ABC4887814E8A92A08FBC93416B0A158793IRSMSX103gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=10239;
	creation-date="Mon, 22 Jul 2013 15:15:45 GMT";
	modification-date="Mon, 22 Jul 2013 15:15:45 GMT"
Content-ID: <image001.png@01CE8707.7B752A40>
Content-Transfer-Encoding: base64

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

--_006_33115ABC4887814E8A92A08FBC93416B0A158793IRSMSX103gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=10692;
	creation-date="Mon, 22 Jul 2013 15:15:45 GMT";
	modification-date="Mon, 22 Jul 2013 15:15:45 GMT"
Content-ID: <image002.png@01CE8707.7B752A40>
Content-Transfer-Encoding: base64

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

--_006_33115ABC4887814E8A92A08FBC93416B0A158793IRSMSX103gercor_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=462;
	creation-date="Mon, 22 Jul 2013 15:15:45 GMT";
	modification-date="Mon, 22 Jul 2013 15:15:45 GMT"
Content-ID: <image003.gif@01CE8707.7B752A40>
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

--_006_33115ABC4887814E8A92A08FBC93416B0A158793IRSMSX103gercor_--
