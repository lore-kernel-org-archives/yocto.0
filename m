Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B58FE01422
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 11:36:22 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 18 Sep 2013 11:36:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,930,1371106800"; 
	d="xml'?xlsx'72,48?scan'72,48,208,72,48,147,150,217?rels'72,48,208,72,48,147,150,217?gif'72,48,208,72,48,147,150,217,147?bin'72,48,208,72,48,147,150,217,147?txt'72,48,208,72,48,147,150,217,147?png'72,48,208,72,48,147,150,217,147,150";
	a="296515081"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Sep 2013 11:36:09 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.69]) by
	IRSMSX101.ger.corp.intel.com ([163.33.3.153]) with mapi id
	14.03.0123.003; Wed, 18 Sep 2013 19:35:13 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.5_M5.rc1 Full pass report - build 2013-09-11
Thread-Index: Ac60ZFzikEtERcwMTe6orjn0UK83HAAOWOUQ
Date: Wed, 18 Sep 2013 18:35:13 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F66B04@IRSMSX104.ger.corp.intel.com>
References: <1FFB62CE8AEB0D4298B51122D8903E9619F66AA7@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E9619F66AA7@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Yocto 1.5_M5.rc1 Full pass report - build 2013-09-11
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
X-List-Received-Date: Wed, 18 Sep 2013 18:36:25 -0000
X-Groupsio-MsgNum: 16117
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_009_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_"

--_009_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_";
	type="multipart/alternative"

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the full pass report for Yocto1.5_M5.rc1.

Highlights:
                - New Issues:
                                =1B$B!{=1B(B #5176 - QEMU boot via NFS - co=
nnman issue
                                =1B$B!{=1B(B #5181 - An ADT-install issue. =
Machine target could be specified, and qemux86-64 could not be found.

                - Beagleboard with 3.10 kernel:
                                =1B$B!{=1B(B #5182 - Beagleboard could not =
start X -  something related to frame buffer not found. Maybe because it's =
using 3.10 kernel.
                                =1B$B!{=1B(B #5183 - Network interface does=
n't work with 3.10 kernel
                                =1B$B!{=1B(B #5211 - usb doesn't work.

All previous Medium+ and High bugs were fixed and waiting to be merged (tho=
ugh some of them are already pushed into master).


Testing data

 Test type: Full Pass Release

 Branch: Master

 Milestone: M5

 Build name: 1.5_M5.rc1

 poky commit: 566ca1e4769b4ec7e3f6c6a98bb817db2221cf82

 Eclipse Plugin commit Kepler:  e21e4285ecffa30e0931bc09d04fb8585618043c

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/1.5_M5.rc1/

 Distributions tested: Ubuntu 12.04 64bit, Ubuntu 13.10 64bit, Fedora 17 64=
bit, Fedora 19 32bit, Fedora 18 64bit, OpenSuse 12.3 64bit, OpenSuse 12.2 6=
4bit, CentOS 6.4 64bit



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

1231<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1231> 1236<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1236>

ADT: master branch

Fedora 19 i686

71.6%

none

5.2%

5181<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5181>

23.3%

5181<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5181>

100.0%

1229<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1229> 1237<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1237>

ADT: master branch

Ubuntu 13.04 x86_64

71.6%

none

5.2%

5181<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5181>

23.3%

5181<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5181>

100.0%

1221<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1221> 1254<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1254>

BSP/QEMU: master branch

Beagleboard

50.7%

none

14.5%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182> 3936<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936> 5211<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5211>5183<https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5183>

34.8%

5183<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5183> 5182<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

100.0%

1214<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1214> 1215<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1215>

BSP/QEMU: master branch

generic-x86 on AtomPC

67.9%

none

14.1%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005> 5104<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5104>

17.9%

5104<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5104>

100.0%

1202<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1202> 1203<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1203>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

67.1%

none

3.9%

2308<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2308> 5117<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5117>

28.9%

2308<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2308>

100.0%

1247<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1247> 1248<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1248>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

5176<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5176>

0.0%

none

0.0%

none

100.0%

1218<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1218> 1235<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1235>

BSP/QEMU: master branch

P1022ds

100.0%

5176<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5176>

0.0%

none

0.0%

none

100.0%

1207<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1207> 1210<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1210>

BSP/QEMU: master branch

qemu-x86

98.1%

none

1.9%

5185<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5185>

0.0%

none

100.0%

1209<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1209> 1212<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1212> 1222<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1222>

BSP/QEMU: master branch

qemuarm

98.8%

5133<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5133>

1.2%

5185<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5185>

0.0%

none

100.0%

1224<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1224> 1225<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1225> 1227<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1227>

BSP/QEMU: master branch

qemumips

97.6%

none

2.4%

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832> 5176<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5176>

0.0%

none

100.0%

1223<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1223> 1226<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1226> 1228<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1228>

BSP/QEMU: master branch

qemuppc

97.6%

none

2.4%

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832> 5176<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5176>

0.0%

none

100.0%

1208<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1208> 1211<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1211>

BSP/QEMU: master branch

qemux86-64

98.1%

none

1.9%

5185<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5185>

0.0%

none

100.0%

1249<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1249> 1250<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1250>

BSP/QEMU: master branch

Routerstationpro

100.0%

5176<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5176>

0.0%

none

0.0%

none

100.0%

1234<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1234> 1268<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1268>

Eclipse Plugin: master branch

Fedora 18 x86_64

95.0%

none

0.0%

none

5.0%

5085<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5085>

100.0%

1206<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1206> 1213<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1213> 1230<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1230>1251<https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1251>

Eclipse Plugin: master branch

Ubuntu 13.04 x86_64

100.0%

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163> 5203<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5203>

0.0%

none

0.0%

none

100.0%

1219<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1219> 1220<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1220>

Meta-yocto: master branch

Ubuntu 13.04 x86-64

96.3%

none

3.7%

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

0.0%

none

100.0%

1266<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1266> 1267<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1267>

Hob: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1204<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1204> 1205<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1205>

OE-Core: master branch

Multiple environments

97.4%

none

2.6%

5146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146>

0.0%

none

100.0%

1252<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1252> 1253<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1253>

BitBake: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1243<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1243>

Runtime: master branch

Multiple Environments

62.5%

none

0.0%

none

37.5%

5205<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5205>

100.0%

1216<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1216>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

4727<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4727>

0.0%

none

0.0%

none

100.0%

Total: 21



Test Case Status Report

Status

Count

BLOCKED

118

FAILED

45

PASSED

1000

Total: 1163


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:118,45,1000&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(118)+10%25|FAILED(45=
)+4%25|PASSED(1000)+86%25]



Bug Status Report


ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW37_-_2013-09-11_-_Ful=
l_Pass_Release_1.5_M5.rc1>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW37_-_2013-09-11=
_-_Full_Pass_Release_1.5_M5.rc1>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW37_-_2013-09-11_-=
_Full_Pass_Release_1.5_M5.rc1>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW37_-_2013-09-=
11_-_Full_Pass_Release_1.5_M5.rc1>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW37_-_2013-09-1=
1_-_Full_Pass_Release_1.5_M5.rc1>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW37_-_2013-09=
-11_-_Full_Pass_Release_1.5_M5.rc1>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW37_-_2013-09-11_=
-_Full_Pass_Release_1.5_M5.rc1>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW37_-_20=
13-09-11_-_Full_Pass_Release_1.5_M5.rc1>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW37_-_2013-09-=
11_-_Full_Pass_Release_1.5_M5.rc1>

2308<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2308>

High

RESOLVED

FIXED

1203<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1203> 1202<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1202>

A small common BSP with graphics for as many platforms as possible (x86)

1.3

1.5 M4

513

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

Medium+

REOPENED

1219<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1219>

Kernel panic on qemux86-64 when using runqemu kvm and cpu host

1.4

1.5 M2

204

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

ACCEPTED

1221<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1221>

[beagleobard xM] Some error message with usbhs_omap in dmesg

1.4

1.5

197

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

1214<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1214>

dmesg log errors in Atom-PC

1.3.1

1.5

184

4727<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4727>

Medium

IN PROGRESS DESIGN

1216<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1216>

Opening build logs does not work in HOB under Build Appliance

unspecified

1.5 M5

91

4832<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4832>

Medium

NEW

1228<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1228> 1227<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1227>

[Test Case 225] ethernet static ip set in connman

1.5

1.5 M5

64

5085<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5085>

Undecided

REOPENED

1234<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1234>

incorrect host used by systemtap in kepler

1.5

---

12

5104<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5104>

Medium+

RESOLVED

FIXED

1214<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1214> 1215<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1215>

common-pc missing CONFIGs of atom-pc

1.5

1.5 M5

8

5117<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5117>

Medium

ACCEPTED

1203<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1203>

generic-x86-64 image does not recover display after standby

1.5

1.5 M5

7 (Recent)

5133<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5133>

Medium

ACCEPTED

1212<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1212>

[Test Case 207] sudoku-savant project compile in sdk image

1.5

1.5 M5

5 (Recent)

5146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146>

Medium

ACCEPTED

1204<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1204>

btrfs image build fails at do_rootfs

1.5

1.5 M5

2 (Recent)

5163<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5163>

Medium

REOPENED

1230<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1230>

no external tools displayed when first trying to run QEMU - test case 48 fa=
iled on Ubuntu 12.04 x86-64 host(build 1.5 M4 rc2)

1.5

1.5

NEW

5176<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5176>

Medium+

NEW

1249<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1249> 1228<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1228> 1247<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1247> 1227<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1227> 1235<https://bugzill=
a.yoctoproject.org/tr_show_run.cgi?run_id=3D1235>

All qemu and BSPs fail to boot via nfs with 1.5 M5 rc1 build

1.5

1.5 M5

NEW

5181<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5181>

Medium+

RESOLVED

FIXED

1229<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1229> 1236<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1236> 1231<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1231> 1237<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1237>

[adt-installer] Fail to install adt

1.5

1.5 M5

NEW

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

Undecided

NEW

1254<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1254> 1221<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1221>

[Beagleboard xM]X can not startup with 3.10 kernel

1.5

---

NEW

5183<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5183>

Undecided

NEW

1221<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1221> 1254<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1254>

[Beagleboard xM] Network interface doesn't work with 3.10 kernel

1.5

---

NEW

5185<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5185>

Medium

ACCEPTED

1210<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1210> 1212<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1212> 1211<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1211>

[Test Case 237] system shutdown with UNFS

1.5

1.5.1

NEW

5203<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5203>

Medium

NEW

1230<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1230>

[kepler] - cannot create BB commander project using default settings

1.5

1.5 M5

NEW

5205<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5205>

Medium+

NEW

1243<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1243>

meta-intel: some images fail to build -sdk image

1.5

1.5 M5

NEW

5211<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5211>

Undecided

NEW

1254<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1254>

[Beagleboard xM] USB doesn't work with 3.10 kernel

1.5

---

NEW

Total: 20





Build Performance Status:

Below you can find the Milestone build performance charts. Data taken from:=
 Data taken from: https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_M=
ilestones_only_results. Attached you can find the detailed report with all =
the measurements. Overall, I can see that the build time is stable, no degr=
adations even a little better than the last build. Also, the build time for=
 core-image-sato -c rootfs is more =1B$B!H=1B(Bstable=1B$B!I=1B(B now, no s=
pikes like we can see in M4.


[cid:image001.png@01CEB332.0F79A490]

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_
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
	{font-family:PMingLiU;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:MingLiU;
	panose-1:2 2 5 9 0 0 0 0 0 0;}
@font-face
	{font-family:MingLiU;
	panose-1:2 2 5 9 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@PMingLiU";
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@MingLiU";
	panose-1:2 2 5 9 0 0 0 0 0 0;}
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
	mso-fareast-language:ZH-TW;}
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
	mso-fareast-language:ZH-TW;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
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
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.sortarrow
	{mso-style-name:sortarrow;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle26
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">Here is the full pass report for Yocto1.5_M5.rc1. <o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Highlights:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - New Issues:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =1B$B!{=1B(B #5=
176 - QEMU boot via NFS - connman issue<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =1B$B!{=1B(B #5=
181 - An ADT-install issue. Machine target could be specified, and qemux86-=
64 could not be found.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Beagleboard with 3.10 kernel:<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =1B$B!{=1B(B #5=
182 - Beagleboard could not start X -&nbsp; something related to frame buff=
er not found. Maybe because it's using 3.10 kernel.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =1B$B!{=1B(B #5=
183 - Network interface doesn't work with 3.10 kernel<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =1B$B!{=1B(B #5=
211 - usb doesn't work.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">All previous Medium&#43; and High bugs were fixed an=
d waiting to be merged (though some of them are already pushed into master)=
.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-top:12.0pt"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white">
<span class=3D"mw-headline"><span style=3D"font-size:17.5pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:17.5pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p><=
/span></h1>
</div>
<div style=3D"border:dashed #2F6FAB 1.0pt;padding:12.0pt 12.0pt 12.0pt 12.0=
pt">
<pre style=3D"line-height:13.2pt;background:#F9F9F9;orphans: auto;text-alig=
n:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px"><span=
 style=3D"color:black"> Test type: Full Pass Release<o:p></o:p></span></pre=
>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Branch: Master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Milestone: M5<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Build name: 1.5_M5.rc1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> poky commit: 566ca1e4769b4ec7e3f6c6a98bb817db2221cf82<o:p></o:p></sp=
an></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Eclipse Plugin commit Kepler:&nbsp; e21e4285ecffa30e0931bc09d04fb858=
5618043c<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Autobuilder images repository: <a href=3D"http://autobuilder.yoctopr=
oject.org/pub/releases/1.5_M5.rc1/">http://autobuilder.yoctoproject.org/pub=
/releases/1.5_M5.rc1/</a><o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> Distributions tested: Ubuntu 12.04 64bit, Ubuntu 13.10 64bit, Fedora=
 17 64bit, Fedora 19 32bit, Fedora 18 64bit, OpenSuse 12.3 64bit, OpenSuse =
12.2 64bit, CentOS 6.4 64bit<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9"><span style=3D"color:b=
lack"> <o:p></o:p></span></pre>
</div>
<div style=3D"border:none;border-bottom:solid #AAAAAA 1.0pt;padding:0in 0in=
 2.0pt 0in">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;orphans: auto;text=
-align:start;widows: auto;-webkit-text-stroke-width: 0px;background-positio=
n:initial initial;background-repeat:initial initial;overflow:hidden;word-sp=
acing:0px">
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;background-posi=
tion:initial initial;background-repeat:initial initial">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Testing Summary Report<o:p></o:p></span></b></p=
>
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
<b><span style=3D"font-size:9.0pt">Test Run<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Test Plan<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Environment<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Passed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Other issues<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Failed<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Failing bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Blocked<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Blocking bugs<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Complete<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1231"><span style=3D"color:#5A3696">1231</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1236"><span style=3D"color=
:#5A3696">1236</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Fedora 19 i686<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt;color:black">71.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">5.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5181"><span style=3D"color:#5A3696">5181</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">23.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5181"><span style=3D"color:#5A3696">5181</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1229"><span style=3D"color:#5A3696">1229</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1237"><span style=3D"color=
:#5A3696">1237</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">ADT: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt;color:black">71.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">5.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5181"><span style=3D"color:#5A3696">5181</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">23.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5181"><span style=3D"color:#5A3696">5181</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1221"><span style=3D"color:#5A3696">1221</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1254"><span style=3D"color=
:#5A3696">1254</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt;color:black">50.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">14.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936=
</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5211"><span style=3D"colo=
r:#5A3696">5211</span></a><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5183"><span style=3D"color:#5A3696">5183</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt;color:black">34.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5183"><span style=3D"color:#5A3696">5183</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1214"><span style=3D"color:#5A3696">1214</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1215"><span style=3D"color=
:#5A3696">1215</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">generic-x86 on AtomPC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt;color:black">67.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">14.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5104"><span style=3D"color:#5A3696">5104=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">17.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5104"><span style=3D"color:#5A3696">5104</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1202"><span style=3D"color:#5A3696">1202</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1203"><span style=3D"color=
:#5A3696">1203</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">genericx86-64 on Sugarbay<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt;color:black">67.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">3.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D2308"><span style=3D"color:#5A3696">2308</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5117"><span style=3D"color:#5A3696">5117=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">28.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D2308"><span style=3D"color:#5A3696">2308</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1247"><span style=3D"color:#5A3696">1247</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1248"><span style=3D"color=
:#5A3696">1248</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5176"><span style=3D"color:#5A3696">5176</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1218"><span style=3D"color:#5A3696">1218</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1235"><span style=3D"color=
:#5A3696">1235</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">P1022ds<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5176"><span style=3D"color:#5A3696">5176</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1207"><span style=3D"color:#5A3696">1207</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1210"><span style=3D"color=
:#5A3696">1210</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">qemu-x86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">98.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">1.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5185"><span style=3D"color:#5A3696">5185</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1209"><span style=3D"color:#5A3696">1209</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1212"><span style=3D"color=
:#5A3696">1212</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1222=
"><span style=3D"color:#5A3696">1222</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">qemuarm<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">98.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5133"><span style=3D"color:#5A3696">5133</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">1.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5185"><span style=3D"color:#5A3696">5185</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1224"><span style=3D"color:#5A3696">1224</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1225"><span style=3D"color=
:#5A3696">1225</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1227=
"><span style=3D"color:#5A3696">1227</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">qemumips<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">97.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5176"><span style=3D"color:#5A3696">5176=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1223"><span style=3D"color:#5A3696">1223</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1226"><span style=3D"color=
:#5A3696">1226</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1228=
"><span style=3D"color:#5A3696">1228</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">qemuppc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">97.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5176"><span style=3D"color:#5A3696">5176=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1208"><span style=3D"color:#5A3696">1208</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1211"><span style=3D"color=
:#5A3696">1211</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">qemux86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">98.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">1.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5185"><span style=3D"color:#5A3696">5185</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1249"><span style=3D"color:#5A3696">1249</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1250"><span style=3D"color=
:#5A3696">1250</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BSP/QEMU: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Routerstationpro<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5176"><span style=3D"color:#5A3696">5176</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1234"><span style=3D"color:#5A3696">1234</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1268"><span style=3D"color=
:#5A3696">1268</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Eclipse Plugin: master branch<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Fedora 18 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">95.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">5.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5085"><span style=3D"color:#5A3696">5085</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1206"><span style=3D"color:#5A3696">1206</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1213"><span style=3D"color=
:#5A3696">1213</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1230=
"><span style=3D"color:#5A3696">1230</span></a><a href=3D"https://bugzilla.=
yoctoproject.org/tr_show_run.cgi?run_id=3D1251"><span style=3D"color:#5A369=
6">1251</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Eclipse Plugin: master branch<o:p></o:p></s=
pan></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5163"><span style=3D"color:#5A3696">5163</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5203"><span style=3D"color:#5A3696">5203=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1219"><span style=3D"color:#5A3696">1219</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1220"><span style=3D"color=
:#5A3696">1220</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Meta-yocto: master branch<o:p></o:p></span>=
</p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Ubuntu 13.04 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">96.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">3.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D3908"><span style=3D"color:#5A3696">3908</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1266"><span style=3D"color:#5A3696">1266</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1267"><span style=3D"color=
:#5A3696">1267</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Hob: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1204"><span style=3D"color:#5A3696">1204</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1205"><span style=3D"color=
:#5A3696">1205</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">OE-Core: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Multiple environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">97.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">2.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5146"><span style=3D"color:#5A3696">5146</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1252"><span style=3D"color:#5A3696">1252</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1253"><span style=3D"color=
:#5A3696">1253</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BitBake: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Ubuntu 13.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1243"><span style=3D"color:#5A3696">1243</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Runtime: master branch<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Multiple Environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt;color:black">62.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt;color:black">37.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5205"><span style=3D"color:#5A3696">5205</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/tr_show_run.cgi?run_id=3D1216"><span style=3D"color:#5A3696">1216</span><=
/a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">Build Appliance: master branch<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">qemu-kvm on Ubuntu 12.04 libvirt<o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D4727"><span style=3D"color:#5A3696">4727</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">0.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.0pt">100.0%<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.0pt">Total: 21</span></b><span style=3D"font-=
size:9.0pt"><o:p></o:p></span></p>
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
n style=3D"font-size:9.0pt">Test Case Status Report<o:p></o:p></span></b></=
p>
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
<b><span style=3D"font-size:9.0pt">Status<o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<b><span style=3D"font-size:9.0pt">Count<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">BLOCKED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">118<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">FAILED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">45<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">PASSED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.0pt">1000<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.0pt">Total: 1163</span></b><span style=3D"fon=
t-size:9.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:white;padding:2.4pt 2.4pt =
2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;mso-fareast-language:=
EN-US"><img border=3D"0" width=3D"432" height=3D"120" id=3D"Picture_x0020_2=
1" src=3D"cid:image002.png@01CEB4B3.F38EC9D0" alt=3D"http://chart.apis.goog=
le.com/chart?cht=3Dp3&amp;chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:118,45,100=
0&amp;chco=3DFFFF66|FF9933|00FF00&amp;chl=3DBLOCKED(118)&#43;10%25|FAILED(4=
5)&#43;4%25|PASSED(1000)&#43;86%25"></span><span style=3D"font-size:9.0pt">=
<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"line-height:14.3pt"><span style=3D"font-siz=
e:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><=
o:p></o:p></span></p>
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
<b><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;background-position:initial initial;background-repeat:initial initial" i=
d=3D"sortable_table_id_0">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">ID</span></b><a href=3D"https://wiki.yoctoproje=
ct.org/wiki/WW37_-_2013-09-11_-_Full_Pass_Release_1.5_M5.rc1"><b><span styl=
e=3D"font-size:9.0pt;color:#5A3696;mso-fareast-language:EN-US;text-decorati=
on:none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2=
0" src=3D"cid:image003.gif@01CEB4B3.F38EC9D0" alt=3D"=1B$B"-=1B(B"></span><=
/b></a><b><span style=3D"font-size:9.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW37_-_2013-09-11_-_Full_Pass_Release_1.5_M5.rc1"><b><spa=
n style=3D"font-size:9.0pt;color:#5A3696;mso-fareast-language:EN-US;text-de=
coration:none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x=
0020_19" src=3D"cid:image003.gif@01CEB4B3.F38EC9D0" alt=3D"=1B$B"-=1B(B"></=
span></b></a><b><span style=3D"font-size:9.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW37_-_2013-09-11_-_Full_Pass_Release_1.5_M5.rc1"><b><span =
style=3D"font-size:9.0pt;color:#5A3696;mso-fareast-language:EN-US;text-deco=
ration:none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x00=
20_18" src=3D"cid:image003.gif@01CEB4B3.F38EC9D0" alt=3D"=1B$B"-=1B(B"></sp=
an></b></a><b><span style=3D"font-size:9.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW37_-_2013-09-11_-_Full_Pass_Release_1.5_M5.rc1"><b><s=
pan style=3D"font-size:9.0pt;color:#5A3696;mso-fareast-language:EN-US;text-=
decoration:none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture=
_x0020_17" src=3D"cid:image003.gif@01CEB4B3.F38EC9D0" alt=3D"=1B$B"-=1B(B">=
</span></b></a><b><span style=3D"font-size:9.0pt"><o:p></o:p></span></b></p=
>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW37_-_2013-09-11_-_Full_Pass_Release_1.5_M5.rc1"><b><sp=
an style=3D"font-size:9.0pt;color:#5A3696;mso-fareast-language:EN-US;text-d=
ecoration:none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_=
x0020_16" src=3D"cid:image003.gif@01CEB4B3.F38EC9D0" alt=3D"=1B$B"-=1B(B"><=
/span></b></a><b><span style=3D"font-size:9.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW37_-_2013-09-11_-_Full_Pass_Release_1.5_M5.rc1"><b><=
span style=3D"font-size:9.0pt;color:#5A3696;mso-fareast-language:EN-US;text=
-decoration:none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Pictur=
e_x0020_15" src=3D"cid:image003.gif@01CEB4B3.F38EC9D0" alt=3D"=1B$B"-=1B(B"=
></span></b></a><b><span style=3D"font-size:9.0pt"><o:p></o:p></span></b></=
p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW37_-_2013-09-11_-_Full_Pass_Release_1.5_M5.rc1"><b><span=
 style=3D"font-size:9.0pt;color:#5A3696;mso-fareast-language:EN-US;text-dec=
oration:none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0=
020_14" src=3D"cid:image003.gif@01CEB4B3.F38EC9D0" alt=3D"=1B$B"-=1B(B"></s=
pan></b></a><b><span style=3D"font-size:9.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW37_-_2013-09-11_-_Full_Pass_Release_1.5_M5.rc1"=
><b><span style=3D"font-size:9.0pt;color:#5A3696;mso-fareast-language:EN-US=
;text-decoration:none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"P=
icture_x0020_13" src=3D"cid:image003.gif@01CEB4B3.F38EC9D0" alt=3D"=1B$B"-=
=1B(B"></span></b></a><b><span style=3D"font-size:9.0pt"><o:p></o:p></span>=
</b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.0pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW37_-_2013-09-11_-_Full_Pass_Release_1.5_M5.rc1"><b><s=
pan style=3D"font-size:9.0pt;color:#5A3696;mso-fareast-language:EN-US;text-=
decoration:none"><img border=3D"0" width=3D"12" height=3D"14" id=3D"Picture=
_x0020_12" src=3D"cid:image003.gif@01CEB4B3.F38EC9D0" alt=3D"=1B$B"-=1B(B">=
</span></b></a><b><span style=3D"font-size:9.0pt"><o:p></o:p></span></b></p=
>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D2308"><span style=3D"color:#5A3696">2308</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">High<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1203"><span style=3D"colo=
r:#5A3696">1203</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D120=
2"><span style=3D"color:#5A3696">1202</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">A small common BSP w=
ith graphics for as many platforms as possible (x86)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">513<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3908"><span style=3D"color:#5A3696">3908</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1219"><span style=3D"colo=
r:#5A3696">1219</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">Kernel panic on qemu=
x86-64 when using runqemu kvm and cpu host<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">204<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1221"><span style=3D"colo=
r:#5A3696">1221</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">[beagleobard xM] Som=
e error message with usbhs_omap in dmesg<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.4<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">197<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Low<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1214"><span style=3D"colo=
r:#5A3696">1214</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">dmesg log errors in =
Atom-PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.3.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">184<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4727"><span style=3D"color:#5A3696">4727</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">IN PROGRESS DESIGN<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1216"><span style=3D"colo=
r:#5A3696">1216</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">Opening build logs d=
oes not work in HOB under Build Appliance<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">91<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4832"><span style=3D"color:#5A3696">4832</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1228"><span style=3D"colo=
r:#5A3696">1228</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D122=
7"><span style=3D"color:#5A3696">1227</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">[Test Case 225] ethe=
rnet static ip set in connman<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">64<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5085"><span style=3D"color:#5A3696">5085</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1234"><span style=3D"colo=
r:#5A3696">1234</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">incorrect host used =
by systemtap in kepler<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">12<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5104"><span style=3D"color:#5A3696">5104</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1214"><span style=3D"colo=
r:#5A3696">1214</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D121=
5"><span style=3D"color:#5A3696">1215</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">common-pc missing CO=
NFIGs of atom-pc<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">8<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5117"><span style=3D"color:#5A3696">5117</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1203"><span style=3D"colo=
r:#5A3696">1203</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">generic-x86-64 image=
 does not recover display after standby<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">7<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5133"><span style=3D"color:#5A3696">5133</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1212"><span style=3D"colo=
r:#5A3696">1212</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">[Test Case 207] sudo=
ku-savant project compile in sdk image<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">5<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5146"><span style=3D"color:#5A3696">5146</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1204"><span style=3D"colo=
r:#5A3696">1204</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">btrfs image build fa=
ils at do_rootfs<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">2<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5163"><span style=3D"color:#5A3696">5163</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1230"><span style=3D"colo=
r:#5A3696">1230</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">no external tools di=
splayed when first trying to run QEMU - test case 48 failed on Ubuntu 12.04=
 x86-64 host(build 1.5 M4 rc2)<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5176"><span style=3D"color:#5A3696">5176</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1249"><span style=3D"colo=
r:#5A3696">1249</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D122=
8"><span style=3D"color:#5A3696">1228</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D1247"><span style=3D"color:#5A3696">1247</span></a><span=
 class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.y=
octoproject.org/tr_show_run.cgi?run_id=3D1227"><span style=3D"color:#5A3696=
">1227</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=
=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1235"><span =
style=3D"color:#5A3696">1235</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">All qemu and BSPs fa=
il to boot via nfs with 1.5 M5 rc1 build<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5181"><span style=3D"color:#5A3696">5181</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1229"><span style=3D"colo=
r:#5A3696">1229</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D123=
6"><span style=3D"color:#5A3696">1236</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D1231"><span style=3D"color:#5A3696">1231</span></a><span=
 class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.y=
octoproject.org/tr_show_run.cgi?run_id=3D1237"><span style=3D"color:#5A3696=
">1237</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">[adt-installer] Fail=
 to install adt<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1254"><span style=3D"colo=
r:#5A3696">1254</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D122=
1"><span style=3D"color:#5A3696">1221</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">[Beagleboard xM]X ca=
n not startup with 3.10 kernel<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5183"><span style=3D"color:#5A3696">5183</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1221"><span style=3D"colo=
r:#5A3696">1221</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D125=
4"><span style=3D"color:#5A3696">1254</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">[Beagleboard xM] Net=
work interface doesn't work with 3.10 kernel<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5185"><span style=3D"color:#5A3696">5185</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1210"><span style=3D"colo=
r:#5A3696">1210</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D121=
2"><span style=3D"color:#5A3696">1212</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D1211"><span style=3D"color:#5A3696">1211</span></a><o:p>=
</o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">[Test Case 237] syst=
em shutdown with UNFS<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5203"><span style=3D"color:#5A3696">5203</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1230"><span style=3D"colo=
r:#5A3696">1230</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">[kepler] - cannot cr=
eate BB commander project using default settings<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5205"><span style=3D"color:#5A3696">5205</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Medium&#43;<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1243"><span style=3D"colo=
r:#5A3696">1243</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">meta-intel: some ima=
ges fail to build -sdk image<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5211"><span style=3D"color:#5A3696">5211</span></a><o:p></o:p>=
</span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">Undecided<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1254"><span style=3D"colo=
r:#5A3696">1254</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt">[Beagleboard xM] USB=
 doesn't work with 3.10 kernel<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt">---<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.0pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"9" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt">Total: 20</span><=
/b><span style=3D"font-size:9.0pt"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><b>Build Performance Status:<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Below you can find the Milestone build performance c=
harts. Data taken from: Data taken from:
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_Mileston=
es_only_results">
https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_Milestones_only_res=
ults</a>. Attached you can find the detailed report with all the measuremen=
ts. Overall, I can see that the build time is stable, no degradations even =
a little better than the last build.
 Also, the build time for core-image-sato &#8211;c rootfs is more =1B$B!H=
=1B(Bstable=1B$B!I=1B(B now, no spikes like we can see in M4.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><img bord=
er=3D"0" width=3D"1168" height=3D"691" id=3D"Picture_x0020_1" src=3D"cid:im=
age001.png@01CEB47E.0DFDAA10" alt=3D"cid:image001.png@01CEB332.0F79A490"></=
span><o:p></o:p></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=68423;
	creation-date="Wed, 18 Sep 2013 18:13:43 GMT";
	modification-date="Wed, 18 Sep 2013 18:13:43 GMT"
Content-ID: <image001.png@01CEB47E.0DFDAA10>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAABJAAAAKzCAIAAADOWmDcAAAAAXNSR0IArs4c6QAA/8pJREFUeF7s
vQl8XFd59z9arMWyLe9LbEdeJNlWZDuOE5LYQBIKJJLbIl7eKmB4XxEoEnSTaOsGtWZrjQ24Ban8
W5AoEPellKi0KG0tEUKzAFISEsebIi+Sl8SOl3iVbdmyJEv/373nzp07d7Y7M3ed+d2PP/LMnXOe
85zvOXOfec7ynIzx8XEfLxIgARIgARIgARIgARIgARIgAfcRyHSfStSIBEiABEiABEiABEiABEiA
BEhAIkCHjf2ABEiABEiABEiABEiABEiABFxKgA6bSxuGapEACZAACZAACZAACZAACZAAHTb2ARIg
ARIgARIgARIgARIgARJwKQE6bC5tGKpFAiRAAiRAAiRAAiRAAiRAAnTY2AdIgARIgARIgARIgARI
gARIwKUEMhjW36UtQ7VIgARIgAT8BL7//e+fPXuWPEiABEiABEggxQjMmTPnE5/4RPRKhXHYaBdT
rB+wOiRAAiTgCAEjRsigYtu2bWtsbDSYmMlIgARIgARIwCsEjBi4MA6bkWxeQUA9SYAESIAEnCJg
ojUxUZRTNFguCZAACZAACYQSMGLguIeNPYcESIAESIAESIAESIAESIAEXEqADptLG4ZqkQAJkAAJ
kAAJkAAJkAAJkAAdNvYBEiABEiABEiABEiABEiABEnApATpsLm0YqkUCJEACJEACJEACJEACJEAC
dNjYB0iABEiABEiABEiABEiABEjApQTosLm0YagWCZAACZAACZAACZAACZAACdBhYx8gARIgARIg
ARIgARIgARIgAZcSoMPm0oahWiRAAiRAAiRAAiRAAiRAAiRAh419gARIgARIgARIIGUIdNZl4Frf
3G+8RiJLXafxHEyZdgT6m9dLvSTOrpV2mFhhiwjQYbMIrFfE0rB5paUM6iksSly/VAxKti5ZhJ9K
XqyKdZAomQTSjIB4LmivgDul/HJOP/8qbSvugs7f31zT0C306O7tc4FCVCHNCNBhS4UGp2EL04rp
adj6d7bBoqyr3lDs/Y5dvKF6HSxj2844hsm9X2vWgARIIAKB1srwU2Ac2/FKl/FQS4Wq2tcruWvr
mvrGx8dbKryCnHqmDgE6bKnTltqa0LB5vV0TM2yp5K/5fPTYvN6LqT8JJEtA/D7G1VEriWptlxct
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
wNnusAU0Dti8gMXU2E45YZBdrNu5oSXImQtTexrF1O7TrB0JpBKBlLdDRoyQwQY1UZTws4Qzhhc1
vh3yaGLIzdLtil+mHWcM8d6E/v3NsoGK6K/5zNXfIDQmIwESIAEScD8BQwZCLNDXXlu3bg29meSd
jlpMnWll9DWtq5VX/stXR61PvAtKF5QGbwLENVltUD7JujM7CZAACaQnAROtiYmi/FZHNinCNCmm
B6ZIc3NcNTuyyRFp/EmUnLockZvZbP3Ts0Ox1iRAAiSQggSMGAhb9rBlYMFjd0OJHI1LbAPo3N6g
bA6QNwVUbGrqkbcKVPo2Y4gyXJri+i7FysJmBjaAu99tpoYkQAIkQAJuI6BspB4Xk2sVLfL/wTd9
frMjVj+KNP4k4yKnLofbakl9SIAESIAEUoKADQ5bwL5JRi+szTNiFxXcil1NCfisBAmQAAmQAAmQ
AAmQAAmQAAlEI2CDw8YGIAESIAESIAESIAESIAESIAESSIQAHbZEqDEPCZAACZAACZAACZAACZAA
CdhAgA6bDZBZBAmQAAmQAAmQAAmQAAmQAAkkQoAOWyLUmIcESIAESIAESIAESIAESIAEbCBAh80G
yCyCBEiABEiABEiABEiABEiABBIhQIctEWrMQwIkQAIkQAIkQAIkQAIkQAI2EKDDZgNkFkECJEAC
JEACJEACJEACJEACiRCgw5YINeYhARIgARIgARIgARIgARIgARsI0GGzATKLIAESIAESIAESIAES
IAESIIFECNBhS4Qa85AACZAACZAACZAACZAACZCADQTosNkAmUWQAAmQAAmQAAmQAAmQAAmQQCIE
6LAlQo15SIAESIAESIAESIAESIAESMAGAnTYbIDMIkiABEiABEiABEiABEiABEggEQJ02BKhxjwk
QAIkQAIkQAIkQAIkQAIkYAMBOmw2QGYRJEACJEACJEACJEACJEACJJAIATpsiVBjHhIgARIgARIg
ARIgARIgARKwgQAdNhsgswgSIAESIAESIAESIAESIAESSIQAHbZEqDEPCZAACZCAlwn0N6/PkK+6
zkA1gm+q74LSSKmlT9Y398sZwwryMhnqTgIkQAIk4DoCdNhc1yRUiARIgARIwFIC/c01bdV947g6
fFsUzwuul/5meZOcZrylIkibzu295bXiDvL0bpbT6BNZqj+FkwAJkAAJpBWBDJgZXYW3bdvW2Njo
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
BEiABEjApQTosLm0YagWCZAACZAACZAACZAACZAACdBhYx8gARIgARIgARIgARIgARIgAZcSoMPm
0oahWiRAAiRAAiRAAiRAAiRAAiRAh419gARIgARIgARIgARIgARIgARcSoAOm0sbhmqRAAmQAAmQ
AAmQAAmQAAmQAB029gESIAESIAESIAESIAESIAEScCkBOmwubRiqRQIkQAIkQAIkQAIkQAIkQAJ0
2NgHSIAESIAESIAESIAESIAESMClBOiwubRhqBYJkAAJkAAJkAAJkAAJkAAJ0GFjHyABEiABEiAB
EiABEiABEiABlxKgw+bShqFaJEACJEACJEACJEACJEACJECHjX2ABEiABEiABEiABEiABEiABFxK
gA6bSxuGapEACZAACZAACZAACZAACZAAHTb2ARIgARIgARIgARIgARIgARJwKQE6bC5tGKpFAiRA
AiRAAiRAAiRAAiRAAnTY2AdIgARIgARIgARIgARIgARIwKUE6LC5tGGoFgmQAAmQAAmQAAmQAAmQ
AAnQYWMfIAESIAESIAESIAESIAESIAGXEqDD5tKGoVokQAIkQAIkQAIkQAIkQAIkQIeNfYAESIAE
SIAESIAESIAESIAEXEogY3x83KWqUS0SIAESIAESkAl8//vfP3v2LGGQAAmQAAmQQKoSmDNnzic+
8YmwtdM7bDSKqdoJWC8SIAESsJ9AFPMTlzLbtm1rbGyMKwsTkwAJkAAJkICHCESxdHqHjUbRQ+1K
VUmABEjA5QTMsilmyXE5LqpHAiRAAiSQtgSiWDruYUvbXsGKkwAJkAAJkAAJkAAJkAAJuJ0AHTa3
txD1IwESIAESIAESIAESIAESSFsCdNjStulZcRIgARIgARIgARIgARIgAbcToMPm9haifiRAAiRA
AiRAAiRAAiRAAmlLgA5b2jY9K04CJEACJEACJEACJEACJOB2AnTY3N5C1I8ESIAESIAESIAESIAE
SCBtCdBhS9umZ8VJgARIgARIgARIgARIgATcToAOm9tbiPqRAAmQAAmQAAmQAAmQAAmkLQE6bGnb
9Kw4CZAACZAACZBAuhDorMvIqOtMl9qyniSQWgTosKVWe7I2iRKgJUuUHPORAAmQQGoT6G9en+G/
VI9HvulV/8fTyqudLTVqkdrfHdbONAJ02ExDma6CaMnc2fK0ZO5sF2pFAiTgLQJ4lpY0+Jr6xuWr
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
BP4PegWgjm3VLzwAAAAASUVORK5CYII=

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=10643;
	creation-date="Wed, 18 Sep 2013 18:13:46 GMT";
	modification-date="Wed, 18 Sep 2013 18:13:46 GMT"
Content-ID: <image002.png@01CEB4B3.F38EC9D0>
Content-Transfer-Encoding: base64

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

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=462;
	creation-date="Wed, 18 Sep 2013 18:13:46 GMT";
	modification-date="Wed, 18 Sep 2013 18:13:46 GMT"
Content-ID: <image003.gif@01CEB4B3.F38EC9D0>
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

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_--

--_009_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Performance Comparison.xlsx"
Content-Description: Performance Comparison.xlsx
Content-Disposition: attachment; filename="Performance Comparison.xlsx";
	size=43420; creation-date="Tue, 18 Jun 2013 12:04:20 GMT";
	modification-date="Mon, 16 Sep 2013 20:03:20 GMT"
Content-ID: <A10F533AFDC85D47A49D8927CC445EEC@intel.com>
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
ReP9+VK5eFimBtXzqgKTRsEuRZzhMjMsFYOFojgYzzXwPJHYMIP8cdY/flIMnIiQFCQ1JXA8Kybi
+MxJdWymKQrgZdCCZrsyIMQQVxR2D88G/Fk0Ipf0ixF2VYwk6xkrkeQtneSYeEaJTgVWgmRDuk48
y7cBtBAORSKK6u9pRW2QhIyYDqVYkYaJYwkWAMfMhwUOvn5coqn5HiNi0WC4FawKUEUOdBRKhBNC
kQ+OGokI873/pbNTSVbp0Bk5lgkPElFf3VIwQdrPcbFbZYjWxKx8weqAKrsydIgEeAz9QW9yY7QR
9Is5k0KNsk2IX5C+z0NmR0KCwe3CwIUkuQioGBf1TBNOMQ46gMIggNAYJTQ1+Xua0KEXAAZkuMEk
ros43KR5JkWiHDKNZqsAs2mgm5My6+b/wdo9EqF4RoyNh//9Wh7s3dFVXTbzlGEfzEtwXDh77pI5
HS9cM+HXcHT6gnB22epjL0iUp2oWr7rq+RHXl42uvqVt95ajty8qdJ/fIfWM6aaJ9tHn7J+xdKm7
v+udacbZPQ9O6/JKtO4Ve267fdXNy85alse96CNr9cZL0vvuVm9dfOYOc9yqquN/qn/ipHN+XLPv
irUPfdO6s+3lFc1fyFtDT32I7h41dqy6+dK+ib/03Vm1vPrNvTvfbI7Wt01s76t79o2e3mkr125t
fLFZemz9oqteLBvWpGWPOWHd1U9uPbpv+kinctxbd216dUZWOrvjto3zKxctED9oe6Y9k2/cxF+7
4P3x3j3runuqW/blb9rV2SOQGydyHHf6uTMastvvW+eW32GtXPtDx8KFVffP+VnsvuGySU5p+d50
1bIHrn14/Z5fQ18lXkpv+KZwESmvvTVkbjrhvNERqX7Cqs7U011rptyrOBf2rr7ju5Lpevv678s+
7Z1/2dPfLd/ySNvMcXqFPrvh3a6Pr9+41dj43h5pyfalL+2/+LhTy5Zsm9zR+cnYR3vuJJcvTvV1
jnryhzMW7l7+wLq7xKknHv/s21Xt419f8fVpnSs3bHY/29H3cWzb3h9fe2XkidsqP+8TPsPqgm8f
n+w2X97t3j7mufOuXLGwuNY8fvKYKWb1/6CGgycGCAQIBAgECAQIBAgECAQIBAgECAQIBAgECAQI
BAgECCD0OwAAAP//AwBQSwECLQAUAAYACAAAACEALq4y9/YBAABRDgAAEwAAAAAAAAAAAAAAAAAA
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

--_009_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_
Content-Type: text/plain; name="ATT00001.txt"
Content-Description: ATT00001.txt
Content-Disposition: attachment; filename="ATT00001.txt"; size=2;
	creation-date="Wed, 18 Sep 2013 18:14:20 GMT";
	modification-date="Wed, 18 Sep 2013 18:14:20 GMT"
Content-ID: <37623D4E338B9F47BB157C0187B8D69B@intel.com>
Content-Transfer-Encoding: base64

DQo=

--_009_1FFB62CE8AEB0D4298B51122D8903E9619F66B04IRSMSX104gercor_--
