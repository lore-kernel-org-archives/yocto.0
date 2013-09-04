Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E92CEE00405
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 08:49:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Sep 2013 08:48:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,1021,1367996400"; 
	d="xml'?bin'?scan'208,72,48,147,150,217?rels'208,72,48,147,150,217?xlsx'208,72,48,147,150,217,72,48?gif'208,72,48,147,150,217,72,48,147?png'208,72,48,147,150,217,72,48,147,150";
	a="398133781"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 04 Sep 2013 08:48:46 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 4 Sep 2013 16:48:02 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.157]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.10]) with mapi id
	14.03.0123.003; Wed, 4 Sep 2013 16:48:01 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Full Pass report for 1.5_M4.rc2
Thread-Index: Ac6phS/iGAnVnGe6RtiFWqkYoPYN2Q==
Date: Wed, 4 Sep 2013 15:48:01 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F4BD5E@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Yocto Full Pass report for 1.5_M4.rc2
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
X-List-Received-Date: Wed, 04 Sep 2013 15:49:19 -0000
X-Groupsio-MsgNum: 15843
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_"

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_007_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_";
	type="multipart/alternative"

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the QA report for Yocto Project 1.5_M4.rc2.
As a highlight for this test run is that we have dropped Atom PC images and=
 instead we have tested the genericx86 which will replaces it. The image wa=
s tested on Atom-PC hardware (Lenovo S10-3). You can see the test run avail=
able for the Atom PC environment. We are also working on validating the ima=
ge on all the HW available but this will require more time to complete.

Issue summary highlights:

*         #5088<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5088> -=
 [OE-Core]Buildhistory fails to report error if PR of some recipes go backw=
ards

*         #5077<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5077> -=
 beagleboard cannot boot up with 1.5_M4.rc2 image. After uboot updated the =
system could not boot up the rootfs. Will be fixed in M5 - according to its=
 status.

*         #5100<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5100> -=
 Use "yocto-kernel patch add" added a patch, then core-image-sato build han=
gs

*         #5061<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5061> -=
 [Build-appliance] Cannot choose non-x86 qemu to build - already fixed.

*         #5104<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5104> -=
 common-pc missing CONFIGs of atom-pc - no eth interface and no kernel modu=
le

*         #5095<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5095> -=
 Keyboard doesn't work on qemumips

*         #5100<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5100> -=
 Use "yocto-kernel patch add" added a patch, then core-image-sato build han=
gs

More details on the bugs and test runs can be found below or accessing the =
full QA report: https://wiki.yoctoproject.org/wiki/WW35_-_2013-08-28_-_Full=
_Pass_Yocto_1.5_M4.rc2#Testing_data
Since there are many new bugs on this RC, QA will perform another Full Pass=
 on RC3 which will be available soon.


Testing data

 Test type: Full Pass Release

 Branch: Master

 Milestone: M4

 Build name: 1.5_M4.rc2

 poky commit: 5745e45b18e5099e94b4d5a73bc97dc6d4cdc91f

 poky commit date:  Thu Aug 29 00:22:41 2013 +0100

 Eclipse Plugin commit Kepler:  f1fc72a31f7e51364ba3bccf45c028e694aefb9a

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/1.5_M4.rc2/

 Distributions tested: Ubuntu 12.04 64bit, Ubuntu 13.10 64bit, Fedora 17 64=
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

1099<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1099> 1102<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1102>

ADT: master branch

Fedora 19 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

1098<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1098> 1101<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1101>

ADT: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1138<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1138>

BSP/QEMU: master branch

Atom PC

80.6%

none

5.6%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005> 5104<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5104>

13.9%

5104<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5104>

100.0%

1113<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1113> 1114<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1114>

BSP/QEMU: master branch

Beagleboard

1.4%

none

1.4%

5077<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5077>

97.1%

5077<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5077>

100.0%

1080<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1080>

BSP/QEMU: dylan branch

Fish River Island 2 (FRI2)

95.1%

none

2.5%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646> 2415<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415>

2.5%

2415<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415>

100.0%

1121<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1121> 1124<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1124>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

1105<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1105> 1106<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1106>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

1085<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1085> 1135<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1135>

BSP/QEMU: master branch

qemu-x86

98.1%

none

1.9%

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

0.0%

none

100.0%

1087<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1087> 1116<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1116>1137<https:=
//bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1137>

BSP/QEMU: master branch

qemuarm

98.8%

none

1.2%

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

0.0%

none

100.0%

1118<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1118> 1119<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1119>1122<https:=
//bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1122>

BSP/QEMU: master branch

qemumips

97.6%

5095<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5095>

2.4%

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832> 5095<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5095>

0.0%

none

100.0%

1117<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1117> 1120<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1120>1123<https:=
//bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1123>

BSP/QEMU: master branch

qemuppc

98.8%

none

1.2%

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

0.0%

none

100.0%

1086<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1086> 1136<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1136>

BSP/QEMU: master branch

qemux86-64

96.2%

none

3.8%

4953<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4953> 4832<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

0.0%

none

100.0%

1107<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1107> 1109<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1109>

BSP/QEMU: master branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

1088<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1088> 1089<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1089>

Eclipse Plugin: master branch

Fedora 18 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1115<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1115> 1129<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1129>

Meta-yocto: master branch

Ubuntu 13.04 x86-64

85.7%

none

14.3%

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908> 5100<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5100>

0.0%

none

100.0%

1095<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1095> 1111<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1111>

Hob: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1082<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1082> 1084<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1084>

OE-Core: master branch

Multiple environments

94.9%

none

2.6%

5088<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5088>

2.6%

5088<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5088>

100.0%

1081<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1081> 1083<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1083>

BitBake: master branch

Ubuntu 12.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1091<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1091> 1092<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1092>

Runtime: master branch

Multiple Environments

66.7%

none

11.1%

5077<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5077>

22.2%

5077<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5077>

100.0%

1112<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1112>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

50.0%

none

50.0%

4727<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4727> 5061<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5061>5034<https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D5034>

0.0%

none

100.0%

Total: 20



Test Case Status Report

Status

Count

BLOCKED

82

FAILED

21

PASSED

1012

Total: 1115


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:82,21,1012&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(82)+7%25|FAILED(21)+2=
%25|PASSED(1012)+91%25]



Bug Status Report


ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2013-08-28_-_Ful=
l_Pass_Yocto_1.5_M4.rc2>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2013-08-28=
_-_Full_Pass_Yocto_1.5_M4.rc2>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2013-08-28_-=
_Full_Pass_Yocto_1.5_M4.rc2>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2013-08-=
28_-_Full_Pass_Yocto_1.5_M4.rc2>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2013-08-2=
8_-_Full_Pass_Yocto_1.5_M4.rc2>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2013-08=
-28_-_Full_Pass_Yocto_1.5_M4.rc2>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2013-08-28_=
-_Full_Pass_Yocto_1.5_M4.rc2>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_20=
13-08-28_-_Full_Pass_Yocto_1.5_M4.rc2>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW35_-_2013-08-=
28_-_Full_Pass_Yocto_1.5_M4.rc2>

2415<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415>

Medium

NEW

1080<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1080>

connman doesn't provide a 3g configuration utility

1.2

Future

471

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

Medium

ACCEPTED

1080<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1080>

Windows switching failure

1.2

1.5

422

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

Medium+

IN PROGRESS REVIEW

1115<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1115>

Kernel panic on qemux86-64 when using runqemu kvm and cpu host

1.4

1.5 M2

190

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

1138<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1138>

dmesg log errors in Atom-PC

1.3.1

1.5

170

4727<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4727>

Medium

IN PROGRESS DESIGN

1112<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1112>

Opening build logs does not work in HOB under Build Appliance

unspecified

1.5 M5

77

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

Medium

NEW

1123<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1123> 1122<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1122> 1086<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1086> 1085<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1085> 1087<https://bugzill=
a.yoctoproject.org/tr_show_run.cgi?run_id=3D1087>

[Test Case 225] ethernet static ip set in connman

1.5

1.5 M5

50

4953<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4953>

Medium

RESOLVED

WORKSFORME

1086<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1086>

[Test Case 207] sudoku-savant project compile in sdk image

1.5

1.5

29

5034<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5034>

Medium

RESOLVED

FIXED

1112<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1112>

"File a bug" button does not work under Build Appliance

unspecified

1.5 M5

7 (Recent)

5061<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5061>

Medium+

RESOLVED

FIXED

1112<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1112>

[Build-appliance] Can not choose non-x86 qemu to build

unspecified

1.5 M5

NEW

5077<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5077>

High

NEW

1113<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1113> 1114<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1114> 1092<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1092>

beagleboard can not boot up with 1.5_M4.rc2 image

1.5

1.5 M5

NEW

5088<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5088>

Medium

VERIFIED

FIXED

1084<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1084>

[OE-Core]Buildhistory fails to report error if PR of some recipes go backwa=
rds

1.5

1.5 M5

NEW

5095<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5095>

Medium+

NEEDINFO

1118<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1118> 1122<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1122> 1119<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1119>

Keyboard doesn't work on qemumips

1.5

1.5 M5

NEW

5100<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5100>

Medium+

ACCEPTED

1129<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1129>

Use "yocto-kernel patch add" added a patch, then core-image-sato build hang=
s.

1.5

1.5 M5

NEW

5104<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5104>

Undecided

NEW

1138<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1138>

common-pc missing CONFIGs of atom-pc

1.5

---

NEW

Total: 14





Build Performance Status:

Below you can find the Milestone build performance charts. Data taken from:=
 Data taken from: https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_M=
ilestones_only_results. Attached you can find the detailed report with all =
the measurements.
A note would be that for building the rootfs for the H2 increased by 30 sec=
onds, but there has been some performance improvement work merged including=
 elimination of Pseudo double execution which was not merged in this build.=
 Overall there is no concern regarding build performance.

[cid:image001.png@01CEA820.CBBCC910]

Regards,
--
Alexandru Georgescu
Yocto QA Lead Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle20
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
span.sortarrow
	{mso-style-name:sortarrow;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1632051829;
	mso-list-type:hybrid;
	mso-list-template-ids:-930571746 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.0in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.5in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.0in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.5in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.0in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.5in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.0in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.5in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:5.0in;
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
<p class=3D"MsoNormal">Here is the QA report for Yocto Project 1.5_M4.rc2.<=
o:p></o:p></p>
<p class=3D"MsoNormal">As a highlight for this test run is that we have dro=
pped Atom PC images and instead we have tested the genericx86 which will re=
places it. The image was tested on Atom-PC hardware (Lenovo S10-3). You can=
 see the test run available for the
 Atom PC environment. We are also working on validating the image on all th=
e HW available but this will require more time to complete.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issue summary highlights:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>#<a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5088">5088</a> - [OE-Core]Buildhistory fails to report =
error if PR of some recipes go backwards<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>#<a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5077">5077</a> - beagleboard cannot boot up with 1.5_M4=
.rc2 image. After uboot updated the system could not boot up the rootfs. Wi=
ll be fixed in M5 - according to its
 status.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>#<a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5100">5100</a> - Use &quot;yocto-kernel patch add&quot;=
 added a patch, then core-image-sato build hangs<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>#<a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5061">5061</a> - [Build-appliance] Cannot choose non-x8=
6 qemu to build - already fixed.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>#<a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5104">5104</a> - common-pc missing CONFIGs of atom-pc &=
#8211; no eth interface and no kernel module<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>#<a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5095">5095</a> - Keyboard doesn't work on qemumips<o:p>=
</o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.0in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>#<a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5100">5100</a> - Use &quot;yocto-kernel patch add&quot;=
 added a patch, then core-image-sato build hangs<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">More details on the bugs and test runs can be found =
below or accessing the full QA report:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW35_-_2013-08-28_-_Full_Pass=
_Yocto_1.5_M4.rc2#Testing_data">
https://wiki.yoctoproject.org/wiki/WW35_-_2013-08-28_-_Full_Pass_Yocto_1.5_=
M4.rc2#Testing_data</a><o:p></o:p></p>
<p class=3D"MsoNormal">Since there are many new bugs on this RC, QA will pe=
rform another Full Pass on RC3 which will be available soon.<o:p></o:p></p>
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
;word-spacing:0px"><span style=3D"color:black"> Test type: Full Pass Releas=
e<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: Master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: M4<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.5_M4.rc2<o:p></o:p></span></pr=
e>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: 5745e45b18e5099e94b4d5a73bc97dc=
6d4cdc91f<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit date:&nbsp; Thu Aug 29 00:22:41 =
2013 &#43;0100<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler:&nbsp; f1fc72a3=
1f7e51364ba3bccf45c028e694aefb9a<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/releases/1.5_M4.rc2/<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 12.04 64bit, Ub=
untu 13.10 64bit, Fedora 17 64bit, Fedora 19 32bit<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> <o:p></o:p></span></pre>
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
g/tr_show_run.cgi?run_id=3D1099"><span style=3D"color:#5A3696">1099</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1102"><span style=3D"color=
:#5A3696">1102</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Fedora 19 i686<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1098"><span style=3D"color:#5A3696">1098</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1101"><span style=3D"color=
:#5A3696">1101</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1138"><span style=3D"color:#5A3696">1138</span><=
/a><o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">80.6%<o:p></o:p></span></p>
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
g/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5104"><span style=3D"color:#5A3696">5104=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">13.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5104"><span style=3D"color:#5A3696">5104</span></a><o:p=
></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1113"><span style=3D"color:#5A3696">1113</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1114"><span style=3D"color=
:#5A3696">1114</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.4%<o:p></o:p></span></p>
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
g/show_bug.cgi?id=3D5077"><span style=3D"color:#5A3696">5077</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5077"><span style=3D"color:#5A3696">5077</span></a><o:p=
></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1080"><span style=3D"color:#5A3696">1080</span><=
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
<span style=3D"font-size:9.5pt">Fish River Island 2 (FRI2)<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">95.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">2.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D2415"><span style=3D"color:#5A3696">2415=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D2415"><span style=3D"color:#5A3696">2415</span></a><o:p=
></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1121"><span style=3D"color:#5A3696">1121</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1124"><span style=3D"color=
:#5A3696">1124</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1105"><span style=3D"color:#5A3696">1105</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1106"><span style=3D"color=
:#5A3696">1106</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1085"><span style=3D"color:#5A3696">1085</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1135"><span style=3D"color=
:#5A3696">1135</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">98.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1087"><span style=3D"color:#5A3696">1087</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1116"><span style=3D"color=
:#5A3696">1116</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D1137"><span style=3D"color:#5A3696">1137</span></a><o:p=
></o:p></span></p>
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
<span style=3D"font-size:9.5pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">98.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1118"><span style=3D"color:#5A3696">1118</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1119"><span style=3D"color=
:#5A3696">1119</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D1122"><span style=3D"color:#5A3696">1122</span></a><o:p=
></o:p></span></p>
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
<span style=3D"font-size:9.5pt">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">97.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5095"><span style=3D"color:#5A3696">5095</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5095"><span style=3D"color:#5A3696">5095=
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
g/tr_show_run.cgi?run_id=3D1117"><span style=3D"color:#5A3696">1117</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1120"><span style=3D"color=
:#5A3696">1120</span></a><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D1123"><span style=3D"color:#5A3696">1123</span></a><o:p=
></o:p></span></p>
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
<span style=3D"font-size:9.5pt">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">98.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1086"><span style=3D"color:#5A3696">1086</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1136"><span style=3D"color=
:#5A3696">1136</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">3.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4953"><span style=3D"color:#5A3696">4953</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832=
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
g/tr_show_run.cgi?run_id=3D1107"><span style=3D"color:#5A3696">1107</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1109"><span style=3D"color=
:#5A3696">1109</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1088"><span style=3D"color:#5A3696">1088</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1089"><span style=3D"color=
:#5A3696">1089</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Eclipse Plugin: master branch<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Fedora 18 x86_64<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1115"><span style=3D"color:#5A3696">1115</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1129"><span style=3D"color=
:#5A3696">1129</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Meta-yocto: master branch<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Ubuntu 13.04 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">85.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">14.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D3908"><span style=3D"color:#5A3696">3908</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5100"><span style=3D"color:#5A3696">5100=
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
g/tr_show_run.cgi?run_id=3D1095"><span style=3D"color:#5A3696">1095</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1111"><span style=3D"color=
:#5A3696">1111</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Hob: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
g/tr_show_run.cgi?run_id=3D1082"><span style=3D"color:#5A3696">1082</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1084"><span style=3D"color=
:#5A3696">1084</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">OE-Core: master branch<o:p></o:p></span></p=
>
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
<span style=3D"font-size:9.5pt">94.9%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5088"><span style=3D"color:#5A3696">5088</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5088"><span style=3D"color:#5A3696">5088</span></a><o:p=
></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1081"><span style=3D"color:#5A3696">1081</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1083"><span style=3D"color=
:#5A3696">1083</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">BitBake: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
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
g/tr_show_run.cgi?run_id=3D1091"><span style=3D"color:#5A3696">1091</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1092"><span style=3D"color=
:#5A3696">1092</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Runtime: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Multiple Environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">66.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">11.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5077"><span style=3D"color:#5A3696">5077</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">22.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5077"><span style=3D"color:#5A3696">5077</span></a><o:p=
></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1112"><span style=3D"color:#5A3696">1112</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">Build Appliance: master branch<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt">qemu-kvm on Ubuntu 12.04 libvirt<o:p></o:p>=
</span></p>
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
g/show_bug.cgi?id=3D4727"><span style=3D"color:#5A3696">4727</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5061"><span style=3D"color:#5A3696">5061=
</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5=
034"><span style=3D"color:#5A3696">5034</span></a><o:p></o:p></span></p>
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
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 20</span></b><span style=3D"font-=
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
<span style=3D"font-size:9.5pt">82<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">21<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">1012<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 1115</span></b><span style=3D"fon=
t-size:9.5pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><img border=3D"0" wi=
dth=3D"432" height=3D"120" id=3D"_x0000_i1035" src=3D"cid:image002.png@01CE=
A99E.D923EBE0" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;chs=
=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:82,21,1012&amp;chco=3DFFFF66|FF9933|00F=
F00&amp;chl=3DBLOCKED(82)&#43;7%25|FAILED(21)&#43;2%25|PASSED(1012)&#43;91%=
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
ct.org/wiki/WW35_-_2013-08-28_-_Full_Pass_Yocto_1.5_M4.rc2"><b><span style=
=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" w=
idth=3D"12" height=3D"14" id=3D"Picture_x0020_10" src=3D"cid:image003.gif@0=
1CEA99E.D923EBE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"fon=
t-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW35_-_2013-08-28_-_Full_Pass_Yocto_1.5_M4.rc2"><b><span =
style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D=
"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:image003.g=
if@01CEA99E.D923EBE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D=
"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW35_-_2013-08-28_-_Full_Pass_Yocto_1.5_M4.rc2"><b><span st=
yle=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0=
" width=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:image003.gif=
@01CEA99E.D923EBE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"f=
ont-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW35_-_2013-08-28_-_Full_Pass_Yocto_1.5_M4.rc2"><b><spa=
n style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"cid:image00=
3.gif@01CEA99E.D923EBE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW35_-_2013-08-28_-_Full_Pass_Yocto_1.5_M4.rc2"><b><span=
 style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"cid:image00=
3.gif@01CEA99E.D923EBE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW35_-_2013-08-28_-_Full_Pass_Yocto_1.5_M4.rc2"><b><sp=
an style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D"cid:image00=
3.gif@01CEA99E.D923EBE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW35_-_2013-08-28_-_Full_Pass_Yocto_1.5_M4.rc2"><b><span s=
tyle=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"=
0" width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=3D"cid:image003.gi=
f@01CEA99E.D923EBE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"=
font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW35_-_2013-08-28_-_Full_Pass_Yocto_1.5_M4.rc2"><=
b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img b=
order=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"cid:im=
age003.gif@01CEA99E.D923EBE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span =
style=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW35_-_2013-08-28_-_Full_Pass_Yocto_1.5_M4.rc2"><b><spa=
n style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2" src=3D"cid:image00=
3.gif@01CEA99E.D923EBE0" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D2415"><span style=3D"color:#5A3696">2415</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1080"><span style=3D"colo=
r:#5A3696">1080</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">connman doesn't prov=
ide a 3g configuration utility<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">471<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1080"><span style=3D"colo=
r:#5A3696">1080</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Windows switching fa=
ilure<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.2<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">422<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1115"><span style=3D"colo=
r:#5A3696">1115</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">190<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1138"><span style=3D"colo=
r:#5A3696">1138</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">170<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4727"><span style=3D"color:#5A3696">4727</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">IN PROGRESS DESIGN<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1112"><span style=3D"colo=
r:#5A3696">1112</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Opening build logs d=
oes not work in HOB under Build Appliance<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">77<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1123"><span style=3D"colo=
r:#5A3696">1123</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D112=
2"><span style=3D"color:#5A3696">1122</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D1086"><span style=3D"color:#5A3696">1086</span></a><span=
 class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.y=
octoproject.org/tr_show_run.cgi?run_id=3D1085"><span style=3D"color:#5A3696=
">1085</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=
=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1087"><span =
style=3D"color:#5A3696">1087</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">50<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4953"><span style=3D"color:#5A3696">4953</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1086"><span style=3D"colo=
r:#5A3696">1086</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Test Case 207] sudo=
ku-savant project compile in sdk image<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">29<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5034"><span style=3D"color:#5A3696">5034</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1112"><span style=3D"colo=
r:#5A3696">1112</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">&quot;File a bug&quo=
t; button does not work under Build Appliance<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">7<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5061"><span style=3D"color:#5A3696">5061</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1112"><span style=3D"colo=
r:#5A3696">1112</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Build-appliance] Ca=
n not choose non-x86 qemu to build<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M5<o:p></o:p></span></p>
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
bug.cgi?id=3D5077"><span style=3D"color:#5A3696">5077</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">High<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1113"><span style=3D"colo=
r:#5A3696">1113</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D111=
4"><span style=3D"color:#5A3696">1114</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D1092"><span style=3D"color:#5A3696">1092</span></a><o:p>=
</o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">beagleboard can not =
boot up with 1.5_M4.rc2 image<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5 M5<o:p></o:p></span></p>
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
bug.cgi?id=3D5088"><span style=3D"color:#5A3696">5088</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">VERIFIED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1084"><span style=3D"colo=
r:#5A3696">1084</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[OE-Core]Buildhistor=
y fails to report error if PR of some recipes go backwards<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M5<o:p></o:p></span></p>
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
bug.cgi?id=3D5095"><span style=3D"color:#5A3696">5095</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">NEEDINFO<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1118"><span style=3D"colo=
r:#5A3696">1118</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D112=
2"><span style=3D"color:#5A3696">1122</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D1119"><span style=3D"color:#5A3696">1119</span></a><o:p>=
</o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Keyboard doesn't wor=
k on qemumips<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5 M5<o:p></o:p></span></p>
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
bug.cgi?id=3D5100"><span style=3D"color:#5A3696">5100</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1129"><span style=3D"colo=
r:#5A3696">1129</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Use &quot;yocto-kern=
el patch add&quot; added a patch, then core-image-sato build hangs.<o:p></o=
:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5 M5<o:p></o:p></span></p>
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
bug.cgi?id=3D5104"><span style=3D"color:#5A3696">5104</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1138"><span style=3D"colo=
r:#5A3696">1138</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">common-pc missing CO=
NFIGs of atom-pc<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>Build Performance Status:<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Below you can find the Milestone build performance c=
harts. Data taken from: Data taken from:
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_Mileston=
es_only_results">
https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_Milestones_only_res=
ults</a>. Attached you can find the detailed report with all the measuremen=
ts.<o:p></o:p></p>
<p class=3D"MsoNormal">A note would be that for building the rootfs for the=
 H2 increased by 30 seconds, but there has been some performance improvemen=
t work merged including elimination of Pseudo double execution which was no=
t merged in this build. Overall there
 is no concern regarding build performance.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"1162" height=3D"683" id=
=3D"Picture_x0020_11" src=3D"cid:image001.png@01CEA989.CF319570" alt=3D"cid=
:image001.png@01CEA820.CBBCC910"><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">--<=
o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Ale=
xandru Georgescu<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Yoc=
to QA Lead Engineer<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">SSG=
/SSD Open Source Technology Center Romania</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_--

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=65764;
	creation-date="Wed, 04 Sep 2013 15:48:00 GMT";
	modification-date="Wed, 04 Sep 2013 15:48:00 GMT"
Content-ID: <image001.png@01CEA989.CF319570>
Content-Transfer-Encoding: base64

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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=10090;
	creation-date="Wed, 04 Sep 2013 15:48:00 GMT";
	modification-date="Wed, 04 Sep 2013 15:48:00 GMT"
Content-ID: <image002.png@01CEA99E.D923EBE0>
Content-Transfer-Encoding: base64

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
gg==

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=462;
	creation-date="Wed, 04 Sep 2013 15:48:00 GMT";
	modification-date="Wed, 04 Sep 2013 15:48:00 GMT"
Content-ID: <image003.gif@01CEA99E.D923EBE0>
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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Performance Comparison.xlsx"
Content-Description: Performance Comparison.xlsx
Content-Disposition: attachment; filename="Performance Comparison.xlsx";
	size=51131; creation-date="Wed, 04 Sep 2013 13:13:06 GMT";
	modification-date="Wed, 04 Sep 2013 13:13:06 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQDDa6ewIgIAAOAQAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
mMFS2zAQhu+d6Tt4dO3EiimltBOHA22PLTPAAwhpE2tiSxpJQPL2rBVjTCbEdeziXuIklvb7dyX9
nvXsYl3k0QNYJ7VKSRJPSQSKayHVMiW3N78m5yRyninBcq0gJRtw5GL+8cPsZmPARThbuZRk3pvv
lDqeQcFcrA0ovLPQtmAef9olNYyv2BLoyXR6RrlWHpSf+DIGmc9+wILd5z76uca/t0rupCLR5XZc
iUoJMyaXnHkUSh+U2IFM9GIhOQjN7wsMHTtjgQmXAfgij42VSLTX4D0m5gjdy7SQu27QKqsYZwZh
LpPGfcLU3yCUd97Oqpr3B5fDSgHRFbP+Nyswd7rO6aO2qzutV/HhIF1LE0oUF0yqZ90H+GGwo+GS
DCykzC8E7qjjZCQdPMPl+ZcFeQF0rMjnkSpSr2C1Q07/Ex1fRtLh0Q2Bhs/+hyWEadkIzm9ycANn
uw3aRsbDAOLao88uBxfQjN2iQ1j2WEqg1Zf+da8CtXC3Z5WGy2BMfHCFgC3s3Zz7G2L3nAdj/mXO
zXr3t7sq3yPY/S3ueHZ/W+vGrkbXZ2uwurfs7+Zan/U2t245N9lfR2Sfj8j+NiI7mY4Jf28nb+62
ZExLTQY720d4ajKmqSbv7aqc5fwyw/ar90Z/3fLWcQ+5K7bLV1Ybhx25he4CntvfcvbEYCCwXkLd
AO9rJGsitvPdgTtNPpTvCwSIPWwa3k/MnwAAAP//AwBQSwMEFAAGAAgAAAAhALVVMCP1AAAATAIA
AAsACAJfcmVscy8ucmVscyCiBAIooAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAACMks9OwzAMxu9IvEPk++puSAihpbtMSLshVB7AJO4ftY2j
JED39oQDgkpj29H2588/W97u5mlUHxxiL07DuihBsTNie9dqeK2fVg+gYiJnaRTHGo4cYVfd3mxf
eKSUm2LX+6iyi4saupT8I2I0HU8UC/HscqWRMFHKYWjRkxmoZdyU5T2Gvx5QLTzVwWoIB3sHqj76
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
DjqAwiCA0BglNDX5e5rQoRcABmS4wSSuizjcpHkmRaIcMo1mqwCzaaCbkzLr5v/B2j0SoXhGjI2H
//1aHuzd0VVdNvOUYR/MS3BcOHvukjkdL1wz4ddwdPqCcHbZ6mMvSJSnahavuur5EdeXja6+pW33
lqO3Lyp0n98h9Yzppon20efsn7F0qbu/651pxtk9D07r8kq07hV7brt91c3LzlqWx73oI2v1xkvS
++5Wb1185g5z3Kqq43+qf+Kkc35cs++KtQ9907qz7eUVzV/IW0NPfYjuHjV2rLr50r6Jv/TdWbW8
+s29O99sjta3TWzvq3v2jZ7eaSvXbm18sVl6bP2iq14sG9akZY85Yd3VT249um/6SKdy3Ft3bXp1
RlY6u+O2jfMrFy0QP2h7pj2Tb9zEX7vg/fHePeu6e6pb9uVv2tXZI5AbJ3Icd/q5Mxqy2+9b55bf
Ya1c+0PHwoVV98/5Wey+4bJJTmn53nTVsgeufXj9nl9DXyVeSm/4pnARKa+9NWRuOuG80RGpfsKq
ztTTXWum3Ks4F/auvuO7kul6+/rvyz7tnX/Z098t3/JI28xxeoU+u+Hdro+v37jV2PjeHmnJ9qUv
7b/4uFPLlmyb3NH5ydhHe+4kly9O9XWOevKHMxbuXv7AurvEqSce/+zbVe3jX1/x9WmdKzdsdj/b
0fdxbNveH197ZeSJ2yo/7xM+w+qCbx+f7DZf3u3ePua5865csbC41jx+8pgpZvX/oIaDJwYIBAgE
CAQIBAgECAQIBAgECAQIBAgECAQIBAgECAQIIPQ7AAAA//8DAFBLAQItABQABgAIAAAAIQDDa6ew
IgIAAOAQAAATAAAAAAAAAAAAAAAAAAAAAABbQ29udGVudF9UeXBlc10ueG1sUEsBAi0AFAAGAAgA
AAAhALVVMCP1AAAATAIAAAsAAAAAAAAAAAAAAAAAWwQAAF9yZWxzLy5yZWxzUEsBAi0AFAAGAAgA
AAAhABP43wU8AQAAAwYAABoAAAAAAAAAAAAAAAAAgQcAAHhsL19yZWxzL3dvcmtib29rLnhtbC5y
ZWxzUEsBAi0AFAAGAAgAAAAhAA5VK6iqAQAARwMAAA8AAAAAAAAAAAAAAAAA/QkAAHhsL3dvcmti
b29rLnhtbFBLAQItABQABgAIAAAAIQBq6E28owUAACsbAAAYAAAAAAAAAAAAAAAAANQLAAB4bC93
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
AAA=

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F4BD5EIRSMSX104gercor_--
