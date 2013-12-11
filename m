Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF04AE006BC
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 05:54:11 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Dec 2013 05:54:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,872,1378882800"; 
	d="xml'?xlsx'72,48?scan'72,48,208,72,48,147,150,217?rels'72,48,208,72,48,147,150,217?gif'72,48,208,72,48,147,150,217,147?bin'72,48,208,72,48,147,150,217,147?png'72,48,208,72,48,147,150,217,147,150";
	a="448318730"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 11 Dec 2013 05:54:06 -0800
Received: from irsmsx106.ger.corp.intel.com (163.33.3.31) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 11 Dec 2013 13:53:05 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.135]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.15]) with mapi id
	14.03.0123.003; Wed, 11 Dec 2013 13:53:05 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.6_M1.rc1 Full Pass test report
Thread-Index: Ac72dlMyNGaBPByXSMGfsbJnTZDi/A==
Date: Wed, 11 Dec 2013 13:53:04 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619FAC26E@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Yocto 1.6_M1.rc1 Full Pass test report
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
X-List-Received-Date: Wed, 11 Dec 2013 13:54:13 -0000
X-Groupsio-MsgNum: 17507
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_009_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_"

--_009_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_";
	type="multipart/alternative"

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the full pass test report for 1.6_M1.rc1 build. We also have added =
to our weekly report the Toaster component. Below you can find the QA Runs =
summary report, also the Bug status report containing all the new and known=
 bugs found in our testing for this build. The full report is available her=
e: https://wiki.yoctoproject.org/wiki/WW49_-_2013-12-03_-_Full_Pass_Release=
_1.6_M1.rc1. During this build there were no critical issues found.


Testing data

 Test type: Full Pass Release Test

 Branch: master

 Milestone: M1

 Build name: 1.6_M1.rc1

 poky commit: c51730aaa91066cfb51ad6ec2920fb4f9d9ea94c

 Eclipse Plugin commit Kepler:  3dd620d9f89e297ee9e22d5ba9fe741a5f40ac82

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/1.6_M1.rc1

 Distributions tested: Ubuntu 13.10 64bit, Fedora 19 64bit, Fedora 19 32bit=
, Fedora 19 64bit, Opensuse 12.3 64bit, CentOS 6.5 64 bit

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

1625<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1625> 1627<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1627>

ADT: master branch

Fedora 19 i686

100.0%

none

0.0%

none

0.0%

none

100.0%

1626<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1626> 1628<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1628>

ADT: master branch

Ubuntu 13.10 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1604<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1604> 1605<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1605>

BSP/QEMU: master branch

Beagleboard

71.0%

5651<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5651>

4.3%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182> 3936<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

24.6%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

100.0%

1569<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1569> 1573<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1573>

BSP/QEMU: master branch

generic-x86 on AtomPC

98.6%

none

1.4%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

1576<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1576> 1577<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1577>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

100.0%

none

0.0%

none

0.0%

none

100.0%

1602<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1602> 1603<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1603>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

5651<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5651>

0.0%

none

0.0%

none

100.0%

1598<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1598> 1599<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1599>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

1587<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1587> 1588<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1588>

BSP/QEMU: master branch

qemu-x86

98.1%

none

1.9%

5637<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5637>

0.0%

none

100.0%

1623<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1623>

BSP/QEMU: master branch

qemuarm

100.0%

none

0.0%

none

0.0%

none

100.0%

1622<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1622> 1621<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1621> 1622<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1622>

BSP/QEMU: master branch

qemumips

100.0%

none

0.0%

none

0.0%

none

100.0%

1619<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1619> 1620<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1620>

BSP/QEMU: master branch

qemuppc

100.0%

none

0.0%

none

0.0%

none

100.0%

1586<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1586> 1591<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1591>

BSP/QEMU: master branch

qemux86-64

98.1%

none

1.9%

5638<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5638>

0.0%

none

100.0%

1600<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1600> 1601<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1601>

BSP/QEMU: master branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

1568<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1568> 1570<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1570> 1571<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1571> 1572<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1572>1574<https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D1574> 1575<https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D1575>

Eclipse Plugin: master branch

Ubuntu 13.10 x86_64

83.9%

5630<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5630>

8.9%

5285<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5285> 5634<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5634>5640<https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D5640> 5473<https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5473>

7.1%

5473<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5473>

100.0%

1596<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1596> 1597<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1597>

Meta-yocto: master branch

Ubuntu 13.10 x86-64

92.3%

5636<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5636>

7.7%

5588<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5588> 5403<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5403>

0.0%

none

100.0%

1585<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1585> 1594<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1594>

Hob: master branch

Multiple environments

89.1%

5632<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5632>

10.9%

5632<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5632> 5579<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5579>5609<https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D5609>

0.0%

none

100.0%

1567<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1567> 1578<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1578>

OE-Core: master branch

Multiple environments

97.2%

none

2.8%

5146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146>

0.0%

none

100.0%

1582<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1582> 1583<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1583>

BitBake: master branch

Fedora 19 X86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1581<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1581>

Runtime: master branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

1595<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1595>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

none

0.0%

none

0.0%

none

100.0%

Total: 20



Test Case Status Report

Status

Count

BLOCKED

21

FAILED

19

PASSED

874

Total: 914


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:21,19,874&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(21)+2%25|FAILED(19)+2%=
25|PASSED(874)+96%25]



Bug Status Report

[Bug Status]

ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW49_-_2013-12-03_-_Ful=
l_Pass_Release_1.6_M1.rc1>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW49_-_2013-12-03=
_-_Full_Pass_Release_1.6_M1.rc1>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW49_-_2013-12-03_-=
_Full_Pass_Release_1.6_M1.rc1>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW49_-_2013-12-=
03_-_Full_Pass_Release_1.6_M1.rc1>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW49_-_2013-12-0=
3_-_Full_Pass_Release_1.6_M1.rc1>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW49_-_2013-12=
-03_-_Full_Pass_Release_1.6_M1.rc1>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW49_-_2013-12-03_=
-_Full_Pass_Release_1.6_M1.rc1>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW49_-_20=
13-12-03_-_Full_Pass_Release_1.6_M1.rc1>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW49_-_2013-12-=
03_-_Full_Pass_Release_1.6_M1.rc1>

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

NEW

1604<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1604>

[beagleboard xM] Some error message with usbhs_omap in dmesg

1.4

1.6

280

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

1569<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1569>

dmesg log errors in Atom-PC

1.3.1

1.5

267

5146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146>

Medium

NEEDINFO

1567<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1567>

btrfs image build fails at do_rootfs

1.5

1.5.1

85

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

Medium+

ACCEPTED

1604<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1604> 1605<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1605>

[Beagleboard xM]X can not startup with 3.10 kernel

1.5

1.5.1

81

5285<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5285>

Medium

NEW

1570<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1570> 1568<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1568>

powertop: Output is useless

unspecified

1.6

67

5403<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5403>

Medium+

ACCEPTED

1597<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1597>

crosstap doesn't work on qemuppc and qemumips

1.5

1.5.1

35

5473<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5473>

Medium

NEW

1574<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1574> 1568<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1568>

unable to create new bitbake commander project

1.5

1.5.1

28

5579<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5579>

Medium

NEW

1585<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1585>

Recipes parsing stop.

1.6

1.6

12

5588<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5588>

Medium

NEW

1597<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1597>

pybootchartgui.py doesn't work with -o option

1.6

1.6

11

5609<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5609>

Medium

NEW

1594<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1594>

Hob error when hitting stop button during build

1.6

1.6

4 (Recent)

5630<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5630>

Medium

NEW

1570<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1570> 1568<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1568>

perf test shows multiple errors and fails on qemux86

unspecified

1.6 M2

NEW

5632<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5632>

Medium

IN PROGRESS REVIEW

1594<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1594> 1585<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1585>

Add layer for a new target build - meta intel machines list is not auto upd=
ated

1.6

1.6

NEW

5634<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5634>

Medium

NEW

1568<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1568>

systemtap in kepler doesn't recognize the kernel build

1.6

1.6

NEW

5636<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5636>

Undecided

ACCEPTED

1597<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1597>

No IP address for eth0 on qemu at the first boot

1.6

1.6

NEW

5637<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5637>

Medium

NEEDINFO

1588<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1588>

sudoku fails on qemux86 - needs gdk-x11-2.0

1.6

1.6

NEW

5638<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5638>

Medium

NEEDINFO

1591<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1591>

sudoku fails on qemux86-64 at make

1.6

1.6

NEW

5640<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5640>

Undecided

NEW

1570<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1570>

systemtap output is useless in Juno

1.6

---

NEW

5651<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5651>

Undecided

NEW

1602<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1602> 1604<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1604>

Error message for networking on some hardware boards when booting: "ip: RTN=
ETLINK answers: File exists"

1.6

---

NEW

Total: 18




Performance test:

Here is the performance charts for the 1.6_M1.rc1 (full report attached). A=
s you can see in the Performance test wiki<https://wiki.yoctoproject.org/wi=
ki/Performance_Test> (search for 1.6_M1.rc1 in git describe column) , there=
 are some variations on H1 *Ubuntu 12 host for building the rootfs. There w=
ere 7 builds for 1.6_M1.rc1 with times varying from 4:43.24 (*shortest time=
) to  6:05.00 (longest time). In the wiki, it can be seen that the next com=
mit has similar variations, and the last commit the variations settle for a=
round 6:30 minutes.

[cid:image004.png@01CEF689.1244E320]

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_
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
span.sortarrow
	{mso-style-name:sortarrow;}
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
/* List Definitions */
@list l0
	{mso-list-id:639959334;
	mso-list-template-ids:-1939818700;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:868180724;
	mso-list-template-ids:9726104;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2
	{mso-list-id:1589656917;
	mso-list-template-ids:917540000;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
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
<p class=3D"MsoNormal">Here is the full pass test report for 1.6_M1.rc1 bui=
ld. We also have added to our weekly report the
<b><i>Toaster</i></b> component. Below you can find the QA Runs summary rep=
ort, also the Bug status report containing all the new and known bugs found=
 in our testing for this build. The full report is available here:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW49_-_2013-12-03_-_Full_Pass=
_Release_1.6_M1.rc1">
https://wiki.yoctoproject.org/wiki/WW49_-_2013-12-03_-_Full_Pass_Release_1.=
6_M1.rc1</a>. During this build there were no critical issues found.<o:p></=
o:p></p>
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
e Test<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: M1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.6_M1.rc1<o:p></o:p></span></pr=
e>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: c51730aaa91066cfb51ad6ec2920fb4=
f9d9ea94c<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler:&nbsp; 3dd620d9=
f89e297ee9e22d5ba9fe741a5f40ac82<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/releases/1.6_M1.rc1<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 13.10 64bit, Fe=
dora 19 64bit, Fedora 19 32bit, Fedora 19 64bit, Opensuse 12.3 64bit, CentO=
S 6.5 64 bit <o:p></o:p></span></pre>
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
g/tr_show_run.cgi?run_id=3D1625"><span style=3D"color:#5A3696">1625</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1627"><span style=3D"color=
:#5A3696">1627</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1626"><span style=3D"color:#5A3696">1626</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1628"><span style=3D"color=
:#5A3696">1628</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1604"><span style=3D"color:#5A3696">1604</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1605"><span style=3D"color=
:#5A3696">1605</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">71.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5651"><span style=3D"color:#5A3696">5651</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">4.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936=
</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">24.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1569"><span style=3D"color:#5A3696">1569</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1573"><span style=3D"color=
:#5A3696">1573</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">generic-x86 on AtomPC<o:p></o:p></span></p>
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
g/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1576"><span style=3D"color:#5A3696">1576</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1577"><span style=3D"color=
:#5A3696">1577</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">genericx86-64 on Sugarbay<o:p></o:p></span>=
</p>
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
g/tr_show_run.cgi?run_id=3D1602"><span style=3D"color:#5A3696">1602</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1603"><span style=3D"color=
:#5A3696">1603</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5651"><span style=3D"color:#5A3696">5651</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1598"><span style=3D"color:#5A3696">1598</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1599"><span style=3D"color=
:#5A3696">1599</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1587"><span style=3D"color:#5A3696">1587</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1588"><span style=3D"color=
:#5A3696">1588</span></a><o:p></o:p></span></p>
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
g/show_bug.cgi?id=3D5637"><span style=3D"color:#5A3696">5637</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1623"><span style=3D"color:#5A3696">1623</span><=
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
g/tr_show_run.cgi?run_id=3D1622"><span style=3D"color:#5A3696">1622</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1621"><span style=3D"color=
:#5A3696">1621</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1622=
"><span style=3D"color:#5A3696">1622</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1619"><span style=3D"color:#5A3696">1619</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1620"><span style=3D"color=
:#5A3696">1620</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1586"><span style=3D"color:#5A3696">1586</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1591"><span style=3D"color=
:#5A3696">1591</span></a><o:p></o:p></span></p>
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
g/show_bug.cgi?id=3D5638"><span style=3D"color:#5A3696">5638</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1600"><span style=3D"color:#5A3696">1600</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1601"><span style=3D"color=
:#5A3696">1601</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1568"><span style=3D"color:#5A3696">1568</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1570"><span style=3D"color=
:#5A3696">1570</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1571=
"><span style=3D"color:#5A3696">1571</span></a><span class=3D"apple-convert=
ed-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show=
_run.cgi?run_id=3D1572"><span style=3D"color:#5A3696">1572</span></a><a hre=
f=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1574"><span=
 style=3D"color:#5A3696">1574</span></a><span class=3D"apple-converted-spac=
e">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cg=
i?run_id=3D1575"><span style=3D"color:#5A3696">1575</span></a><o:p></o:p></=
span></p>
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
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">83.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5630"><span style=3D"color:#5A3696">5630</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">8.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5285"><span style=3D"color:#5A3696">5285</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5634"><span style=3D"color:#5A3696">5634=
</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5=
640"><span style=3D"color:#5A3696">5640</span></a><span class=3D"apple-conv=
erted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5473"><span style=3D"color:#5A3696">5473</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">7.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5473"><span style=3D"color:#5A3696">5473</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1596"><span style=3D"color:#5A3696">1596</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1597"><span style=3D"color=
:#5A3696">1597</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Ubuntu 13.10 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">92.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5636"><span style=3D"color:#5A3696">5636</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">7.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5588"><span style=3D"color:#5A3696">5588</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5403"><span style=3D"color:#5A3696">5403=
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
g/tr_show_run.cgi?run_id=3D1585"><span style=3D"color:#5A3696">1585</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1594"><span style=3D"color=
:#5A3696">1594</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Multiple environments<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt;color:black">89.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5632"><span style=3D"color:#5A3696">5632</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:9.5pt">10.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5632"><span style=3D"color:#5A3696">5632</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D5579"><span style=3D"color:#5A3696">5579=
</span></a><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5=
609"><span style=3D"color:#5A3696">5609</span></a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1567"><span style=3D"color:#5A3696">1567</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1578"><span style=3D"color=
:#5A3696">1578</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">97.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">2.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D5146"><span style=3D"color:#5A3696">5146</span></a><o:p=
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
g/tr_show_run.cgi?run_id=3D1582"><span style=3D"color:#5A3696">1582</span><=
/a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1583"><span style=3D"color=
:#5A3696">1583</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">Fedora 19 X86_64<o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1581"><span style=3D"color:#5A3696">1581</span><=
/a><o:p></o:p></span></p>
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
g/tr_show_run.cgi?run_id=3D1595"><span style=3D"color:#5A3696">1595</span><=
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
<span style=3D"font-size:9.5pt">21<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">19<o:p></o:p></span></p>
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
<span style=3D"font-size:9.5pt">874<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:9.5pt">Total: 914</span></b><span style=3D"font=
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
01CEF687.E2E61370" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;c=
hs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:21,19,874&amp;chco=3DFFFF66|FF9933|00=
FF00&amp;chl=3DBLOCKED(21)&#43;2%25|FAILED(19)&#43;2%25|PASSED(874)&#43;96%=
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
=3D"cid:image002.png@01CEF687.E2E61370" alt=3D"Bug Status"></span><span sty=
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
ct.org/wiki/WW49_-_2013-12-03_-_Full_Pass_Release_1.6_M1.rc1"><b><span styl=
e=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D"0" =
width=3D"12" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:image003.gif@0=
1CEF687.E2E61370" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"fon=
t-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Priority</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW49_-_2013-12-03_-_Full_Pass_Release_1.6_M1.rc1"><b><spa=
n style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:image00=
3.gif@01CEF687.E2E61370" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Status</span></b><a href=3D"https://wiki.yoctop=
roject.org/wiki/WW49_-_2013-12-03_-_Full_Pass_Release_1.6_M1.rc1"><b><span =
style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=3D=
"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"cid:image003.g=
if@01CEF687.E2E61370" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D=
"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Resolution</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW49_-_2013-12-03_-_Full_Pass_Release_1.6_M1.rc1"><b><s=
pan style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"cid:image0=
03.gif@01CEF687.E2E61370" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span styl=
e=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Test Runs</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW49_-_2013-12-03_-_Full_Pass_Release_1.6_M1.rc1"><b><sp=
an style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D"cid:image00=
3.gif@01CEF687.E2E61370" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Description</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW49_-_2013-12-03_-_Full_Pass_Release_1.6_M1.rc1"><b><=
span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=3D"cid:image=
003.gif@01CEF687.E2E61370" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span sty=
le=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Version</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW49_-_2013-12-03_-_Full_Pass_Release_1.6_M1.rc1"><b><span=
 style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"cid:image00=
3.gif@01CEF687.E2E61370" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Target Milestone</span></b><a href=3D"https://w=
iki.yoctoproject.org/wiki/WW49_-_2013-12-03_-_Full_Pass_Release_1.6_M1.rc1"=
><b><span style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img=
 border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2" src=3D"cid:=
image003.gif@01CEF687.E2E61370" alt=3D"=1B$B"-=1B(B"></span></b></a><b><spa=
n style=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:9.5pt">Age (days)</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW49_-_2013-12-03_-_Full_Pass_Release_1.6_M1.rc1"><b><s=
pan style=3D"font-size:9.5pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_1" src=3D"cid:image0=
03.gif@01CEF687.E2E61370" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span styl=
e=3D"font-size:9.5pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1604"><span style=3D"colo=
r:#5A3696">1604</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[beagleboard xM] Som=
e error message with usbhs_omap in dmesg<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">280<o:p></o:p></span></p>
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1569"><span style=3D"colo=
r:#5A3696">1569</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">267<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5146"><span style=3D"color:#5A3696">5146</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">NEEDINFO<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1567"><span style=3D"colo=
r:#5A3696">1567</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">btrfs image build fa=
ils at do_rootfs<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">85<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1604"><span style=3D"colo=
r:#5A3696">1604</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D160=
5"><span style=3D"color:#5A3696">1605</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">[Beagleboard xM]X ca=
n not startup with 3.10 kernel<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">81<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5285"><span style=3D"color:#5A3696">5285</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1570"><span style=3D"colo=
r:#5A3696">1570</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D156=
8"><span style=3D"color:#5A3696">1568</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">powertop: Output is =
useless<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">67<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5403"><span style=3D"color:#5A3696">5403</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1597"><span style=3D"colo=
r:#5A3696">1597</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">crosstap doesn't wor=
k on qemuppc and qemumips<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">35<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5473"><span style=3D"color:#5A3696">5473</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1574"><span style=3D"colo=
r:#5A3696">1574</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D156=
8"><span style=3D"color:#5A3696">1568</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">unable to create new=
 bitbake commander project<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">28<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5579"><span style=3D"color:#5A3696">5579</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1585"><span style=3D"colo=
r:#5A3696">1585</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Recipes parsing stop=
.<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">12<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5588"><span style=3D"color:#5A3696">5588</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1597"><span style=3D"colo=
r:#5A3696">1597</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">pybootchartgui.py do=
esn't work with -o option<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">11<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5609"><span style=3D"color:#5A3696">5609</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1594"><span style=3D"colo=
r:#5A3696">1594</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Hob error when hitti=
ng stop button during build<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt">4<span class=3D"apple-converted-space"><span style=
=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Recen=
t)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5630"><span style=3D"color:#5A3696">5630</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1570"><span style=3D"colo=
r:#5A3696">1570</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D156=
8"><span style=3D"color:#5A3696">1568</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">perf test shows mult=
iple errors and fails on qemux86<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">unspecified<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6 M2<o:p></o:p></span></p>
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
bug.cgi?id=3D5632"><span style=3D"color:#5A3696">5632</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1594"><span style=3D"colo=
r:#5A3696">1594</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D158=
5"><span style=3D"color:#5A3696">1585</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Add layer for a new =
target build - meta intel machines list is not auto updated<o:p></o:p></spa=
n></p>
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
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5634"><span style=3D"color:#5A3696">5634</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1568"><span style=3D"colo=
r:#5A3696">1568</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">systemtap in kepler =
doesn't recognize the kernel build<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5636"><span style=3D"color:#5A3696">5636</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1597"><span style=3D"colo=
r:#5A3696">1597</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">No IP address for et=
h0 on qemu at the first boot<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5637"><span style=3D"color:#5A3696">5637</span></a><o:p></o:p>=
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
tyle=3D"font-size:9.5pt">NEEDINFO<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1588"><span style=3D"colo=
r:#5A3696">1588</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">sudoku fails on qemu=
x86 - needs gdk-x11-2.0<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5638"><span style=3D"color:#5A3696">5638</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1591"><span style=3D"colo=
r:#5A3696">1591</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">sudoku fails on qemu=
x86-64 at make<o:p></o:p></span></p>
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
tyle=3D"font-size:9.5pt;color:#FF4000">NEW</span><span style=3D"font-size:9=
.5pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D5640"><span style=3D"color:#5A3696">5640</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1570"><span style=3D"colo=
r:#5A3696">1570</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">systemtap output is =
useless in Juno<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:9.5pt">1.6<o:p></o:p></span></p>
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
bug.cgi?id=3D5651"><span style=3D"color:#5A3696">5651</span></a><o:p></o:p>=
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
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1602"><span style=3D"colo=
r:#5A3696">1602</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D160=
4"><span style=3D"color:#5A3696">1604</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Error message for ne=
tworking on some hardware boards when booting: &quot;ip: RTNETLINK answers:=
 File exists&quot;<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.5pt">Total: 18</span><=
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
<p class=3D"MsoNormal"><b>Performance test:<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the performance charts for the 1.6_M1.rc1 (f=
ull report attached). As you can see in the Performance test
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test"><span style=
=3D"color:windowtext">wiki</span></a> (search for 1.6_M1.rc1 in git describ=
e column) , there are some variations on H1 *Ubuntu 12 host for building th=
e rootfs. There were 7 builds for 1.6_M1.rc1
 with times varying from 4:43.24 (*shortest time) to&nbsp; 6:05.00 (longest=
 time). In the wiki, it can be seen that the next commit has similar variat=
ions, and the last commit the variations settle for around 6:30 minutes.
<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"778" height=3D"449" id=3D=
"Picture_x0020_12" src=3D"cid:image004.png@01CEF689.1244E320"><o:p></o:p></=
p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=10244;
	creation-date="Wed, 11 Dec 2013 13:53:03 GMT";
	modification-date="Wed, 11 Dec 2013 13:53:03 GMT"
Content-ID: <image001.png@01CEF687.E2E61370>
Content-Transfer-Encoding: base64

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

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=9999;
	creation-date="Wed, 11 Dec 2013 13:53:03 GMT";
	modification-date="Wed, 11 Dec 2013 13:53:03 GMT"
Content-ID: <image002.png@01CEF687.E2E61370>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAXQAAAB4CAIAAABttJ7LAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO2deVxTx/r/nxBCIAQIi+wosiMEUKgoVpRFFKsgdUFxwbpUq61eW/HW9qu3ti+3urRqq221
IiIqKoqKIlgWcWVRAVmCElF2QiAQEpasvz/md09zgQAuUNB5v/zjnDmzndPmYeaZeT5DksvlgMFg
MG8blX+6AxgM5t0EGxcMBtMvYOOCwWD6BWxcMBhMv6D6T3fg7VNaWioWi9G1vr6+oaHh26pZLpeX
lZW9fPnS0tJyxIgRKirYNGMwSiG9e6tF06dP5/P5FAoFAIRCoYODw4oVK7y9vd+w2tzc3IiIiJaW
Fmdn58rKSg0NjV9//dXU1BQ9otPpNjY2PRRPTEz09vbW1NR8w25gMEOFd/Nv75dffpmWlpaWlpaU
lOTo6Lh3716ZTPYmFcrl8i+//NLf3//q1avHjh27cuUKk8mMiIhAT8+cOZOamtpzDVu2bKmrq3uT
PmAwQ4t307gQ6OrqLlq0qLq6+tmzZwCQk5NTUVGBHkml0uTkZJFIhG45HM7p06dTU1Pb29tTUlI6
1VNRUcHn80NCQoYNGwYAampqS5cuVVVV7ejoePLkCYfDYbPZubm5KHNzc3NcXFxcXFxpaSlK+euv
vwDg3r171dXV1dXVWVlZRM25ubnl5eXouqioKCYm5ty5c2VlZf30QTCYAeMdNy5yuTw5OZnBYFhb
WwPA0aNH79+/jx61tbV98803AoEAAE6fPr1gwYJnz57FxsZu2rRpy5YtneoxNzfX1dXdvXs3YZus
rKyioqKoVGppaWlDQ0NVVdXTp08B4PDhwwsWLCgqKnr8+PHSpUvz8/MBAFmT/Px8LpebnZ195MgR
ouaoqKiMjAwAiIuLW7p06f3797OyssLDw1FtGMzQ5R106ALAn3/+eeHCBQCoqalpbW09duyYqqrS
N+VwOL/88svBgwc9PDzkcvmGDRu65lFRUdm5c+fevXtDQkJGjBjh6enp6+vr4eEBACEhIQ8ePLC2
tp43bx4APH78eMeOHW5ubgCwc+fOixcvuri4fPPNNxcvXly9erWVlZWyUcnVq1dXrFjx6aefAsCh
Q4dYLJadnd3b+BgYzD/Du2lcxo8fP3bsWACQyWQpKSkbNmw4duyYpaVlt5kLCwu1tbWRpSCRSP7+
/orTFgIPD4+zZ88+ffo0MzPz/v37q1evnjBhws8//0wikRSzHT16FACqq6tzc3Ozs7OdnZ372OcR
I0ZER0cbGhp6enp+8cUXr/K6GMxg5N00LqNGjQoICEDX3t7es2fPjoyM3LZtW7eZeTye4nK1sbFx
1zy1tbVCodDa2trOzs7Ozm7x4sWZmZlr1669efMm0RDizz//PH36tKGhoYuLi5mZWd/7/O2331pb
W58/f37Hjh3Ozs6bN2+2tbXte3EMZrDxjvtcAIBGo40cOVJHR6dTemVlJbrw9PQkrhXTFWGxWBER
EYrL9mPHjjUwMOi0CFVcXBwZGXnkyJEzZ870YB0U6yGae/HiRWhoaExMDPL+fv/9931/RwxmEPJu
Ghcej1dZWVlZWfn8+fPjx4/n5OQEBQUBgJaW1tWrV5FFQE4ZADAzMzM2Nj579iwAiESi2NjYTjMd
ABg7dmxdXd22bduePHkCAK2trZGRkSKRyNfXF2VA2/Z4PB5hOMrKypKSkojVKFQ56kNxcTHy1+bk
5Lx8+RI93bZtW1RUlFwuV1dXd3JyUlNT66ePg8EMDO/mJjoOh4OuyWTyhAkTZs2ahTbR5eXl/fjj
jyQSSUVFZf78+bt27YqPj9fT07t79+5PP/1EIpGam5sDAgKSk5OTk5M7VVtQULBp0yYOh6Ovr9/S
0uLg4DB//nw0Jzpw4MCVK1fmzZsXHh7+6aef1tbWGhkZtbS0TJ8+/eTJk5s3b/7oo4+CgoI0NDS+
/PJLZ2fn3bt3P3z40MjIyMbGpq2tzd7eftGiRXfu3Nm6dauamhqyU3v27BkzZszAfjkM5m3yDhqX
XsnLyzMxMSH8LCKRqLa21sLC4vHjx5aWltevX79+/frp06e7FpTL5RUVFbW1taNGjaLT6US6WCzO
z8/X0dGxsbERi8UsFgsAHB0dVVVVX758qaamZmJi0tjYyGKxHBwc9PT0AKC6urqxsbGTu1cmkxUV
Famqqtra2pLJ5H78BBhM//M+GpdOtLa2BgQEbNiwYebMmYWFhXv27Jk0adKqVav+6X5hMEMbbFwA
AB49erR3797y8nILC4u5c+fOmDEDuzwwmDcEG5e/kclkONAZg3lbYOOCwWD6BfyHGoPB9AvYuGAw
mH4BGxcMBtMvYOOCwWD6BWxcMBhMv4CNCwaD6RewccFgMP0CNi4YDKZfeB3j8re8q50dkEgD+s/e
/m2+PQaD6TfezLhgMBiMEvC0CIPB9AvYuGAwmH7hf4xLR0fHqVOniFuhUHjx4sXo6GgulzvgHcNg
MEObv41Lbm7u0aNHCUlXANi3bx+VSmUymXv27BEKhf9E9zAYzFDlb+PS2tpqYWFB3JaVlYnF4o8+
+sjNzW306NHYiYvBYF6Jv42Ll5fXuHHjiNuGhgYTExN0bWJiUlJSIpPJJBKJRCLBEjAYDKZXlB6K
1t7erqmpia51dHTYbPbz58/Rce48Hm+AeofBYIYsSo2LtrZ2XV0dum5qakLnYNjY2ABAQkLCAPUO
g8EMWZQuRdvb2/P5/NbWVgDIy8szNzcfwF5hhjh92WzdHZ1m3MSt7H/pmlnx6EvF9L5P4fFk/62j
1LhQqVR/f//du3fv37+fwWC4uroOZLcw7yF1dXWfffZZUVERkbJ169ampiahULh27dpvFUhLS8vO
zv7xxx9RtoqKijVr1pSXl6Pb/fv3Z2ZmAkBzc3NsbCxR28WLF5uamhRbvHnzJlGKOIETcfv27f37
9ycmJiomXrhwgc/no2sej5eenk64CFpaWjplxvzPtMjIyOjbb78lbidPnjx+/PjGxsZuz2bHYN46
mpqaZ86c2bJlS6ejXdTU1Hbu3KmYwufzo6KixGIxhUIpLi7W0dEpLCwcPny4TCZ78eLFsmXLACAh
IcHHxwcAqqurMzMz//rrr4kTJ6LiXC73wYMHN2/eHDFiBEqxtLRks9nW1tYAEBMTo6mpuXDhwsOH
D9NotEmTJlVVVWVmZqakpKADfOVy+alTpzw9PSMjI4ODg62trW/cuIFO9cQQ9LJDl0qlmpiYdD07
GYPpDwwMDJhM5uXLl3vNqa2tbWBg8OLFCwAoKiqaOXMmGvKUl5czGAxdXd2Ojo76+npTU1MAaG1t
1dHR0dLSIoq3tbXRaDRdXV0iZcyYMQ8ePEDXlZWVQUFBRkZGGzdudHR0RDUwGAyihrq6Om1t7bFj
x06YMKG+vr6+vl4mkxkZGb2t7/BugLf/YwYXwcHBeXl5ips5AUAqlcYpUFNTAwAODg5sNlssFtfV
1U2YMIHL5ba3t7PZbHt7ewAoKSkhfu02Nja+vr7E6icAWFhY+Pr66uvrEylkMpnD4fB4PB6Pp6am
9uDBg0OHDpWUlAwbNgwAbG1tfX19aTQaymxsbCyVSiMjI1NTUz08PBITEwMDA/v5www9lK4WYTD/
CFQqdcGCBdHR0d988w2RSCKRiPkLAKAfub29/b179ywsLKytrUkkkp2dHYvFYrPZo0ePBgBi2NJ3
9PX1q6qqyGRyaWkpk8n85JNPfv/9dw6HM3369K6Zly1bxuPxGAxGeXm5rq4ujUbLzMzU1NTsdP73
+wweuWAGHU5OTqampklJSUSKioqKhwI6OjoAYG9vX1ZWVlRUNGrUKFSqqKjo+fPnaOTS0dHxqudn
0mg0mUxmbm5uZmbm7+9Pp9MDAwNZLJay/Lq6uiQSKTk5OSAg4K+//uJyueXl5efPn3/N137nwMYF
MxiZN29eRkZGzxFtyGly//59ZFxGjRr18OFDdXV1bW1tADAwMHjVgNu6ujp9fX0tLS2RSNTY2AgA
tbW1TCazhyIFBQU2NjZUKrWkpMTf33/q1Km1tbWv1Og7DJ4WYQYjdDp91qxZkZGR6FYkEm3atIl4
6uzsvGTJEgBwcHAoKChgMBioiIGBATF7cnNz62HQ0S1osygAzJo1Kzo6WiqVCgSCiIgIZfnlcvmd
O3dWrlwJAB9++OHx48ebm5tnzpz5aq/67vI6Z0UnJCTMmDEDAMDODp49e/ud6gE7OygpGdAWMa9B
X5YX+3/TGlqKVvTj9kBFRcX9+/fnzZuHbuVyOZfLRd5cZUgkEj6fr6enh25FIpFMJlNXV3/Dbr8z
9DQtYrPZx48fP336NB7pYYYiEyZMIFaXe+XWrVv+/v7ELYlE6tmyAICqqiphWQBATU0NWxZFlBoX
qVR6/vx5FxcXT0/P7du342BFzJBDV1fXvs+K7t7e3oqWAvPmKPW5sNlsiUTi7u5OIpFsbW3r6+sV
dxxhMD0xaOJ0+h4TN3z48H7tyXuIUuNiZ2dnamp67NixtrY2iURiZ2f39OlTJBnV0NAwgD3EYDBD
EqXTIh6PV1lZSafTnZ2d+Xx+fX29nZ3djBkzZsyYobivEYPBYLpF6cjl/v377u7uH330EQDweLy7
d+/OmjVrADuGwWCGNkpHLvr6+mgSJJfLRSKRpaXlwHUKg8EMfZSOXNzc3Nhs9uHDhzkcjq6u7oIF
CwayWxgMZqij1LhQqdSwsLC2traOjg60AxKD6St/ePSe59OcrmlyuVxR34O4VRSaAwAUNCSXyxW3
gJJIJMXMxG2n2lCRXlvpVFwoFNJotG4r7PUt3lt62f6voaGhoaExMF3BvOfU1dX95z//WbduHYoV
AoCtW7d+9dVXFApl48aNin/hAgICfHx8Dh48WFFRQaFQUKKxsfH69evv3r177tw5FDatqanp6+vr
5eUFADk5OZmZmWvXrr18+fLDhw+3bt2KCrLZ7ISEhPXr19+8eTMhIYEQVdDQ0Ni6datMJsvKysrJ
yWlubuZyuR4eHqGhoaqqqgAgkUhOnDixYsWK1tbWtLQ0FotlYWERHBxMpVIvXLgwd+5cxVc7ffr0
xx9/rK6uzufzf/31V8VH69atk0gkjx8/dnJyQtv22tvbk5OTg4KC+uczDxw4tggziOi7Eh0iPDy8
a2DhmDFjwsPDAeD58+eRkZFUKtXd3V0xQ3t7+5UrV2bPnt2p4Pjx4+fPn6+Ycu3atbKyslWrVlGp
VIFAcOnSpT/++GPNmjUAkJGR4ebmBgAXL16k0WjLli07ffr0uXPnFi9e7OjoWFBQgLQXysvLMzMz
MzIygoODAYBOpyOVPACoq6tLSkqi0Wi//fbb6NGjz5496+Pj4+zsfPPmTVTzUAdHRWMGEX1XousL
VlZW06ZNQ3q6ivj5+T1+/LiioqLn4iKRKCkpad68eVQqFQDodPqCBQuqq6s7OjoA4OHDh8hmSaXS
oKAgXV1dPz+/+vp6AHB2dn78+DGqpLW1VV9fnxgQqaioGP2XtLS0sLCwlpYWEok0bty4yZMnczgc
Pp/f1NT0buzowyMXzOAiODj4hx9+GDt2rKI6FFKiI269vLzQiX337t0jzgK1sLAYO3Zsp9pGjhx5
7dq1Tonq6uqhoaHR0dFff/21YjqbzSZaGTNmDJlMZjAYigLSqqqqFhYWpaWlRkZGhFMmPDxcKpXG
x8cXFxdPmzYN5RQKhTU1NSYmJg4ODg4ODjdv3uzUByRzZWZmBgB0Oj0yMrKqqmrjxo3x8fHvjKgd
Ni6YwUXflegAwNDQkDiDuNu9ncpCoplMJpLsRorcCC0tLaIVLS0tmUxGp9M7FZRKpVKptL6+HtkF
xYY0NDQIP66+vn5FRQVxZmlXMjIy1q1bh64XLVrU1NSkra1dX19PJpP19PRycnJUVVWH+uQIGxfM
oMPJySkzM7OrEl3XnDY2Nj2LObFYLGVnV4SGhm7fvl1RtdvQ0LBTKyQSqaOjA02LAEAikZSVla1c
ubKwsBCtWEkkkvLycisrqylTpnh5eX399dc///wzmUxGonbKelVZWamnp0eYSABA7urExMQ5c+bc
vn27oaGBwWCcPHkSydYMUXryuYjF4vj4+AMHDnSdtWIw/UpflOh6paysLCEhYcqUKd0+1dLSCgoK
unTpUg81ODs7x8TEtLW1oduEhAQ7OzsKhTJs2DBC5u7o0aMCgQAAOByOhoYGmUyG/4raKav2/v37
48eP75T4/PlzQ0NDOp1eWFg4ZcoUX1/foS5F0NPIZe/evb6+vq6urgcPHjQ0NBw5cuSAdQvzntNH
JbrIyEi0MIzYsWMHAOTk5BQWFspkMrQ2jM4G6RYvL6+srKweujF16tSzZ8/++9//tra2bm9vNzc3
R2pSZmZmaD1LVVU1KChoz549hoaGpaWlCxcuRAXr6+uJ+VonZDLZo0ePugbTpKSkoEUub2/v6Oho
oVCIzkgauihVouPz+dHR0WvXrgUALpdLoVCQKjJgJTpMr7zuJrrBCXEEkqLid2ZmppGREQqLkUgk
dXV1JiYmKAOXy71+/forzWhkMlljY6OBgQG6lUgkIpFIcd40FFE6LXr+/Lm+vn5iYuKRI0d4PJ6O
jk57ezs61UUikQxkFzGYfxYqlWpubt7pLAEPD49Hjx6ha1VVVTMzMyJDamqqsrmYMlRUVAjLgioc
6pYFejAutbW1jx49GjZsWFhY2NGjRwsLC+vr64uKioqKitDp9BjM+wyZTPb09Oz20bhx43pYJ3p/
UOpzMTc3d3V1Rc5zHx8fFos1e/ZsNI0c6n4mTL8zdKY8b0Kn1WiCd2ML3JujdORiZWWFvGIAwOFw
el7ww2AwmE4oHbnQaDQfH59Dhw4JBAJdXV07O7uB7BYGgxnq9LQUPWXKlEmTJrW2tmLJBQwG86r0
skNXTU2tU3wqBoPB9AUcFY3BYPoFHFuEeft4rOo9T87vSh8pU3JrbW3tdvdHp/S+K9R1ygn/1bjr
VviOSOy04aWHDr/nknTYuGAGF1wu9//+7/8CAgI+/vhjIjE7OzsrK6uxsVEqlU6aNMnHxwcAZDJZ
ZmZmTk4Oj8cjkUh+fn5IdG7Xrl2NjY1EWIClpeWqVatSU1MvX76MbJCamtqkSZN8fX337dvX0NAg
kUja2tpQBGNQUJBMJiO07BD/+te/GAzG+vXr0bmAqqqq9vb28+fPR03I5fJjx46tWLGio6MjIyPj
yZMnpqamwcHBNBrt0qVLs2bNUjRGFy9e9PX1ZTAYHR0d+/fvV3zxVatWqampPXz40N7eHgVbSiSS
K1euKH6HoQU2LpjBRWZmJpPJzMnJIX5Ud+/effDgwbp16ygUCp/P37dvn7Oz87Bhw1JSUkpKStas
WUMmk3k8HkrX1tYGgNWrVytqKSA8PT3DwsIAoKSk5MCBA46Ojhs3bgSAsrKys2fPbt68mWjOzc3t
k08+USzb0dFBoVCQGp5QKIyJifnzzz9XrVqFOuzg4EAika5duyYSiZYuXXr58uXo6OhVq1a5ubnl
5OQglZnq6mok8jBx4kQAUFNTIyTpeDxeXFwcg8E4fvy4o6NjfHy8h4eHh4dHWlqak5NTf33o/gf7
XDCDi6ysrFmzZmloaDz7b9jajRs3Pv74YyR5q62tvWjRIj6fj9LnzJmDopB1dXXDwsKampr60oS9
vb25uflrh1xramouWbIkLy8PSdLdu3dv3LhxACAWi4OCgvT19f39/ZEknZWVFYvFQqVaW1t1dHQI
hQcSiURI0qWnp8+fP18sFgsEggkTJvj7+9fV1bW2tlZUVPT9rOtBCB65YAYRL1++RHE67u7uWVlZ
tra2YrGYx+MpRhjb2toCAJ/Pl8lkilothKw3AKSnp+fm5qJrKyur0aNHA0BjY+OTJ0+kUumtW7fa
2tpsbGyUdaO8vFxR+K6r2q66urqxsXF1dbWhoaFQKESGD+nvXrlypbi42M/PD+WUy+VsNtva2trG
xsbGxubOnTudqsrNzdXS0kLjLHNz88jIyMrKyvXr1ycnJwcEBPT5yw1Gejcu2dnZfD6f+FgYTP+R
mZlpbm7OYrHodHpKSsqCBQukUimZTFbUVUBIpVJCw6krxsbGRkZG6JrQVUHGBQCcnJy6CmIqoqmp
qSh81y00Gk0ul/cqSWdgYFBZWdl1jkaQlpa2dOlSdD1nzpzm5mY6nc7n84VCoZmZWW5urkQicXd3
H4qO4V6MS319/ZkzZ7oK22Awbx25XJ6Tk8NkMlG0MZVKLSgocHFxUVdXr6+vR8duAEBmZmZlZeXs
2bPb2toEAgGhRJmeni4UCtEBxA4ODl1/zzY2Nsjn0iv6+vrdCt8RCIXCqqoqY2PjyspKYinq+fPn
NjY2fn5+3t7eERERTCZTU1OTRqNJpVJl9TQ0NKioqCA/MQIJmyQmJgYGBubk5LDZbHNz8z/++AP5
d4YWPflcZDJZdHQ0mk9iMP1NcXExg8FYvHhxWFhYWFiYt7c3UnLy8fGJjY0Vi8UAUF9fn5aWhsKR
J0+efObMGSQAUlNTc/v2bWVhym8XHo937ty5MWPG0Gg0AwMDJElHIpGioqIaGhoAgMPhkMlkdOBX
XV2dopZCJx48eND191VdXa2urq6np/fkyRN/f/8PP/xwiOoQ9DRyuXLlioeHB4lEqq2tBYCnT58i
pXX0BTGYt0tWVtYHH3xA3Hp4eCQmJnZ0dAQEBMhksl27dtFotIaGBi8vL3NzcwCYMWPG9evXd+zY
QaPRmpqavL29iZ/x4cOHkaMXACgUyvbt21+pJ48ePSouLiZuQ0NDnZ2dxWIxUsPT1NQcM2YMcojo
6emhcQeJRJo9e/bPP/9sZmbGYrHmzJmDVqBramqmT5+urKHMzMyIiIhOieg8EwD48MMPY2NjOzo6
ep7EDVqUKtGVlJSkpaWtXr369u3btbW1iifIYSU6TM+84SY6ZdTW1nZV25bL5RwOh/CwDDz5+fmq
qqrInSyTyWpqaoyNjZFp4/P5sbGxK1eu7HttyI9jaGiIbmUyWVtbm7IzDAY5Skcu6enpjY2NBw4c
4PF4IpGIQqF0Vf3EYAaSbnX80ZruwHeGgMlkxsXFIeOioqKi6N9NT0/39/d/pdpIJBJhWVCFQ9Sy
QA/GJSwsDM1yMzMz6+vr8WoRBtMtJBJp/Pjx3e70d3Nze5+Fo5QaF2K3D51OFwgEise7YDA98xpT
niENlqTrlt73uaDdyhgMBvNK4O3/GAymXxji2/+bXoBUNKAtkqnA+Hvv5otaEA3sOStUCoz4J92X
GExfGeLGJelLaC4f0BZ1hkPoReLuy1+hnDOg7Q83govfD2iLGMzrgadFGAymXxjiIxfMoGRVH45z
/b27s42IBV2ZTKaosdR1oZcQkeuUjdgU2lUvDgCEQqGGhka3UnKdlkSVVaVM5g494vP5xKnHBC0t
LRoaGl1jL0GJul23TXT7BRTTey3VqYZeVfLeXEYPGxfMIOLf//53REQElUrdtGnTihUriOjBXbt2
hYeHm5qaEjm/+uorCoWCfpOGhobLly/X1taOjY3NyspC0dISicTBwWHp0qVkMlkulz98+DArK4vH
43G5XBcXl7CwMJSNy+XevHmTzWaTSCSBQBASEoL22l+9ejU1NRXFB0kkEmtr62XLlqmpqcXExDx6
9IgIyFZTU9u2bZtcLj979mxOTo6ZmRmXy50+ffqHH34IALm5ubGxsXQ6XSKRmJqafvLJJ4omJjEx
MSkpiWjC0tJy+fLl6urqim8BACoqKtu3bz98+LCrqyuqFgDu3r2bn5//2Wef/fjjj8HBwQ4ODj/8
8INAICCCHmxsbObMmbN58+affvqJSqXK5fKNGzdOmzYNnTN79epVHo+3ZMkSQkYP2ZGcnBw1NTUX
FxcAiI+PDwoKIirMy8tLSUmxsLAICQlRVVVtamrKzc1lMpko6Ly1tTU1NfX/b9z/Lz0Zl5KSklu3
blGpVB8fn/d8xR4zwKirq6Ntrz0cmfztt98i3bn9+/cTu+wDAwPR76e9vX3//v3p6el+fn4pKSm5
ublr1qyh0Witra0JCQmHDh3auHGjXC7/7bffvLy8FixYAAAlJSWHDh0yMDCwsrICAF9f36CgIAAQ
iUS//PJLUlLSzJkzASAoKGjy5MmKPcnPz6+pqfnuu++0tLQEAsH333/PZDK1tLROnTr1+eefW1pa
yuXyEydOdN2wO3HiRCQWIxaLjxw5cv36daS/R7wFgaen5507dwjj8vjx464Rj59//nmn3+mwYcPK
ysocHByQUE5RURGqls1mI6mD7OxsW1tbZFjv3buXkpKCXhkARo8enZ2djVpJTk6urq5evHjxyZMn
L126NHfu3JiYGA8Pj+jo6MDAQHt7+xs3bnSNGlXqc+Hz+SdOnHB3d586deqRI0dQfCoGMzBoaWlN
mDDhwoULfck8ZcqUrrJy6urqNjY2SHUlISFh9uzZyE7RaLS5c+cKBILm5ubHjx/LZDJfX19UxN7e
ft26dcTfagI1NTU7O7setuG3trYSEUB0On3VqlUqKipisVgkEqGhColEmjVrVg8nC1IolJ6bcHV1
LS8vRxJ8bW1tz58/R+OLnnFwcGCz2QBQVFTk5+dXXV0tFovlcvmLFy+Qxt3du3eRleno6FBVVSV0
LQDA0tISBSoDAIvFmjdv3rBhw9auXevl5dXQ0EClUj09Pb29vTkcTmNjY3t7e9edhEpHLi9evPDw
8HB3dwcAb2/v8vLyIRqaiRmiBAYGbt++vaSkRJnUI4vF0tDQqKmpuXHjRmhoKEqsqKhAfwgbGhpK
S0vnzJnD5XLJZLKlpSVRkEQiWVlZPXv2rLq6mhCp5XA4LS0tZDKZmI9UV1ejqng8Xm5uLgqJBoC8
vDxCGEBfX3/y5Mmurq4PHjzYsmULk8l0dHRkMplovjZt2rSffvrJ3t7e0dHR1dW16/C/trYWNdHU
1JSdnU1ESD958gTZEQBgMBh+fn4UCsXV1fXhw4c+Pj55eXlOTk5dDxRLSUTWlioAAAa4SURBVElB
QzkAsLW1dXFxsbe3R9p3RUVFYWFhL1++fPr0qba2tra2NoPBaGtr4/P56H319fV9fX05nP9Z+ySR
SM+ePbO2tm5ubn727Nnt27ddXFy8vLxUVVUpFMqJEyeqq6s3btx4/vz5biO/lRoXFxcXZBrb29vz
8/NnzJjR3NyMNEqRdCgG06+QyeSFCxdGRUVt2bKl2wzFxcUUCoVCoaxcudLBwQElNjU1VVRUAEBN
TY2amppIJKJSqXQ6vZNvUiqVSiQSKpWK5GAAoLCw8NmzZ62trRQKZe3atQDA5/NRVfX19SoqKiKR
CP2edXV1CZ06JFVFo9E2bNhQVVXFYrGSk5PPnz8fERGho6Mzffr0iRMnFhcXFxUVxcXFhYWFdfoL
3dLSgppoaGggkUgikUhdXb1TE8TEcNy4cZcvX/bx8Xn06BExP1LExMSEEJ1AQhD29vanTp1qa2tr
bGw0NTV1cnIqLCw0NDRE9prL5Sq6sbpiYGBQUVGhp6dXVVXFZrOXLFkSFxdXVlYWHh4eHh7O4/EY
DEZ1dTWNRtPW1s7KylJXV1ccT/Xi0M3Pz4+Li5syZYqTk1NdXR2ypsR/DwymX7G2tnZ0dLx69Wq3
T0NCQog/1ARMJhO5FSQSyffff19aWurs7Kyjo6OoWSeXy1ksVmhoqEAg+O2335Cbw8fHx8fHB50N
grI5ODggB4RMJtu5c2dRUREyDcOHD++kU5eTkzN8+HAzMzMzMzM/P7+oqKiMjIwPPvigqqrK3d19
7NixY8eOLSwsjI2N7WRcbG1tkc9FLpfv3r27oKAAnY5ibm7eVQrPzs6Ox+NVVVW9fPmyW2G6UaNG
dRocaWpq6unppaamohnZqFGjkpOTBQIBMgEdHR3drqkR0Gg0sVisp6enp6eHvtLMmTP37duHniL7
lZSUNH/+fCQDqK6uXlhYiBxY0PM+l0uXLqWkpKxfvx6ZSSMjIyaTicT7eiiFwbxFQkJCHj58+Br6
ZEhjpa6uDgDc3NxOnjxJ+GWSkpJMTU1pNJqhoaGKisrt27eRAEBFRcWtW7e6VqWiouLs7Iyq6haB
QHD9+nViRN/S0mJpaampqRkXF4d06lDiyJEjldVAIpFcXFyQKlsPeT744IOoqCgmk9nVMaQMe3v7
lJQUpAjBYDDIZHJBQQGyNYSMnjLq6ur09fVJJJKpqSnyv9TW1jo7OxMZnj59amFhQaPRioqK/P39
p0yZojixUjpyqaysLC8v79a/hcEMGOrq6qGhoYcPH36Nsvr6+qWlpX5+fpMnT25oaPj666+tra1F
IpGxsfHChQtRnuXLl//+++/x8fGGhobNzc3z58/vKtCPqsrOzkbX8fHx169fJx5FRESMHz+exWJF
RETY2Ng0NzebmJg4OzuTSKSpU6d+99136OgCFRUV4k+6st5mZGSg62vXrt28eZN4tGHDBhMTEwDw
9PRMTk5WdkzawYMHiZGIhobGtm3bAMDBwSE1NdXR0RGljxo16smTJ2jEx2Aw9PX1e9jPUlNTgwT3
pk2bduPGjRs3bnA4nC+++ILIkJaWtnz5cgCYOHHiiRMnBALB1KlTiadKlegSExOvXbtGWJbJkyeH
hISg60GkRBf78T+7/f/jLXj7fze89ia6fkUsFtfV1ZmYmHT9e8nlcqVSKRKdkkgk3W546xWBQMDj
8czMzBTnGhKJpLa2Vk9Pr4c19X+QgoICAFAcjBAIBIKYmBjF+ReHw1EUspJIJM3NzcThCmKxWCKR
oG07CKUfMTAwMDAw8M17j8EMEigUChLf7YqihvbrWRYAoNPphFtHsTZljQ4GnJ2dz58/361x6bor
R9GyAICqqiphWQAAOdf/J8Nb7SoGgxliTJgwoduZkYuLyxtuncXGBfP2GfgpD+a1UbYa/eab8rFx
GdpE3fqeJ1S6itEf6GkaLZm0dSBbxAxRsHEZ2pTW5nIG1qVtpIOjzDB9Auu5YDCYfgEbFwwG0y/0
NC1qbm6+du0ahUIJCAjoKoGDwWAwPaB05CIWi3ft2mVqampubr5r1y5le+0wGAymW5SOXAoKCoYN
G4ZEcXJzc1+8eNFDZAQGg8F0QunIhcvlonAGADA1NS3Bx79jMJhXQWlsUUJCgkwmQyHn6enpPB7P
yckJRUY2NDQobvvFvIfY2dn1oKuGwUDPZ0UTInc8Hs/IyAj//4TBYPqO0mmRi4tLVVWVSCQCgPz8
/MEcfIXBYAYhSqdFAHD16tXc3FwkuhMcHDyQ3cJgMEOdnowLAAiFQqFQ2CnUGoPBYHqlF+OCwWAw
r8f/A5Zui+BoL1BfAAAAAElFTkSuQmCC

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=462;
	creation-date="Wed, 11 Dec 2013 13:53:03 GMT";
	modification-date="Wed, 11 Dec 2013 13:53:03 GMT"
Content-ID: <image003.gif@01CEF687.E2E61370>
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

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_
Content-Type: image/png; name="image004.png"
Content-Description: image004.png
Content-Disposition: inline; filename="image004.png"; size=83538;
	creation-date="Wed, 11 Dec 2013 13:53:04 GMT";
	modification-date="Wed, 11 Dec 2013 13:53:04 GMT"
Content-ID: <image004.png@01CEF689.1244E320>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAwoAAAHBCAIAAABG6tsoAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAO
xAAADsQBlSsOGwAA/7VJREFUeF7sXQVgVMcWXbe4e0IgRnAIEFyKthSXFiuUUqeF9tMWKlCgeHF3
d3d3AoGgIUBC3N3W/Z/No0Fa4G10k8x+yt+EkTtnZu6cuXPnDlOv1zPIhyBAECAIEAQIAgQBggBB
4B8EWAQKggBBgCBAECAIEAQIAgSBlxFgUtaj/Pz8nJwcJpNJ0CEIEAQIAnQQgOpwdHS0sLCgk5hK
k5KS8vjxY4FAQD8LSUkQIAgQBMoPAZ1OB1XWqlUrPp//Wi3P6dGlS5csLS3//c/lJxMpmSBAEKjS
CEgkErVa3bZtW/qtuH//vrm5ea1atehnISkJAgQBgkC5InDr1i1fX18HB4f/pkfXr19v06ZNuUpA
CicIEASqEwJKpfLu3bvYddFvVHh4uJWVlaenJ/0sJCVBgCBAEChXBG7fvu3t7W1vb/9aLS98j6Ds
ylUCUjhBgCBQnRAomcYgd0Gq0xggbSEIVGMEiGt2Ne5c0jSCAEGAIEAQIAgQBEqCAKFHJUGN5CEI
EAQIAgQBggBBoBojQOhRNe5c0jSCAEGAIEAQIAgQBEqCAKFHJUHtLXk0aqVcoXx7qE2NCmlUJBzn
SzBqJVKptoy7gkZxep1CLlep/6lZp4EYpF9oAEeSVD4CapVSJpUUFhbK1DpKGigfxeuKRXNm16qN
B6+/bVTr5Yc3Ld1x6m4FNUmvVchkGl0NnWeagtgVM6dM/XuPuIYCUEGjrEyqIfSILoxx984vWjh/
yu+/z5i/MjpHg2yxYScXzl+XJNEx9DqNRkuN9oPzxjZ+b2z6W5f69ZMGBfebWEi35lKl0ysyti9Z
cOjyk1KVUorMOq0W4Ly1AP2Gn/p3GP6HvOL1hTh6QOv6E9dcei6eJvvrXs0/m3u0FM0lWQkCFYOA
dun/+vn6123QoEFg0zbrTj1CrbM/CvZqMjKPwQg/vXv13gsUZdo676cpy4+8NaKdZOWf4+dsptKX
+yfpxiYPB8e5hw0CV8ZHc2HX+u1n7lVc1frCfWtWnLgbX1SjesHXQ76ZtSUjK1P5nNNWnCCkJmMR
IPSILmK3Di2b8MOvtx492rv0l449P83S6p+e2frj5Fk5HFb0gdl+zQemFZVUmJ0Wl5jBZb+t2Pys
lITkzIoxlmgL4+f8/L+NFbY1/Fe7T/z1WcPeP74FDl3+45Ubj/s0bWde8UFJmZrkhNjMfOlz8XjO
7wfXPrBuRZqa7qgg6QgClYSAPunZU4Z7tzNnzvZxSvjqm5/ytYyG7boPHNzFUq87vOC3L/9YJdXC
RMM0t7JzsLeFkLpX1mO9VlusgZiWNnZW5lSsTr1MJqNa9FKCF03EbuflXQzSFJuBEFyPSle8HULi
fxuJzOxq9x30UVNfx+I7jIjL90+Nr4hoKPxVDoHfIJdO91xyQxveQDKQ5uWqXxSlL1w9+duJyw+h
6OKGGIp9Sy/qX2n081Yaflks9uty4t+Kf6WTJUz54pu/D4Yawg9q0s9deRQ8avLK2d/aG9aIl3uh
ksYRqfbNCBB6RHd0MJksC+9uJw8ePLLgi5TbWx+k6Rp2HTzj72kWKffXbD0Yd//6wtlrItOlInNz
xNe8efbg8pVr70RnUxrn1rn9S5cuXbv5WL7B6sTgcBGAk49gwwlhx9ds2atgMHKfXVu+dOn6HWfx
vfijyIjatHLZsg37Mov0VWZU6IplS5et3PQ0XY4fCxLDj18JeXjt1NLNhwz/Lk3ZtnrZspVb4nJf
Wds5Fl7f/Dn18yGdZekRh89fjLx/Y9nyVaduRGvkaVtWLNu8/7SsSDFIUiNWLF26bMXqmxHplABx
9y8aRNq0ZdO6rZFZkFt6aOuKpctWP0jIfx0yedquDSuXLtsUk2UQLPPZrWVLly5ftT4yQ5UdE7L5
6MUnN87MXLY1ocCg1KJCTwKKlRv2ZRjSGj7xoeceFloM6d+VwVBdv3zm9qOIvRvWXH6U8OjGqasR
kdcObFm9bltSvibu7snlq9aGRCT/u8NkGZE7t217lgnwtNeO7714Px5pnl49uftkCL5osqLXFwEX
8tjQNG1e4vELFyLuhqxYsz0xR2VlbsYXiPD7M7vXHr72tGPfQfLE66fCKK5LPgQB00WAxeJYObj7
+/u52jk7uTswWQxJQZpYwzqz7Y+F15NY8aeatBgYmaW2tTHPeXK6b9fmPj4Bf6w7gfY8ubShU3DD
unUDmrQZcPlZJoMpYOj1AnNbdV5039a1xi05rEh/+u2AVgF167bqMjI0llJiDE1B0ozPPqwDg1WH
gQ+yFeKE+5/1a+vn718noOWifTeR4Oyan7sN//SjTs07f7+UoS1Y//Nw34C6vnU7rj39qqlGI09J
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
nRfmvhWdVXp15y8zZ72w+nDcY0BRl6xduSI2V4l/OrJh9a5zKfiSE314zV/7sQlpimM/eGP2zJmz
vtlw1HjEpynfte3PTX+smPPKG8n5Sjs+R2Bjz9Bk//jRf29mS6oL1x9e+yXa+dPvB3RsIV6L5LFZ
eJcX9q9T+zZt+mvTay/O3Bed1wzGhjSxgRFQFcSdSVGPHdLx2sVjV86cTs4ul5WX3L2bx3UMmDF7
VqCzSKssuXLqTLlaIxOXpyRnS5nCoRNmDuzgpZQibDv5EAQIAgSBOiJAwkLWEbjGzJa4+/vXV6ad
PPr7lU3vjn//8pW7V4IL9o5+Y/PK3VvDbFkr3nvmutOz6z6dqq/KfGnKlAzHzp187c/v3hr54s8b
Pnvm0Xb+/t6o1zdmznl29Jjpr3veXdlnzq+TXnjFvvTKkbjKLp17tw1i7NqTsu708aHB1W+a3f/o
Ze9PHiN4ZulXM8Kf6R8lj/r4wIpX1n/83CWH6Stea/vsyImK0IHhrpzjW3YM/+rvpS9FTuje5iaj
6zODu7/67ptbv33DY8IHFRu+zvIf/83CF5wEnIsbFz738b4pTw0uS7myJ15yLvGW48nP5uxnn163
6JNnOy69zp87qe/YWe+N7uzbmDiTumqLQCOEhZQkn9yYzH5jRNiy7SeemTjZxd5emn5p93X93Gn9
GLKsdX+cmDRvNk8hE9jZc5jFv684/cyrzzoyDft+/8Vr1Jzu/v+85UdRcr0ej+3gZ227SdITBJoj
ArDZ29raCgTUo5fkYwaBR8NCEnrUDCaNoTx2/PQPP1m3pXD7Tzvjsoa//FX7rDW/p4eu/HQWQ5n2
3JR3Zv+2bUSQ6Nb+xa//mnL06CqshoLzqycsOLHjyraARxySlv/f1FO2z+5YaGROx359/cPLrjc3
f8koPt275+dL4s/1tmO8PbGL90vbPhgf9hA051a/uzgpbOM7vZf875d0fvAPn7+25K1XR3+73fHs
5//ZoT254xukv73rmxeXF549tnDmuMmjFu6d28uZwVAtnDdp24mUQbO+XLXoueoyle+PG2r3wsqF
T7dnVMaOeer1DzdfCrzx7fyj7L3L/u/DF4YoB33z05xezWBgWn0TG4EeqYvilv15oVM756RC4fPP
DuayOfHH/jp4R/TRgmdvbF+eaj9o7oQIcYXM1slenHL++9WXXvv0bdus878fK/vPe9MfCriVlJSU
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

--_008_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_--

--_009_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Performance Comparison.xlsx"
Content-Description: Performance Comparison.xlsx
Content-Disposition: attachment; filename="Performance Comparison.xlsx";
	size=46040; creation-date="Tue, 18 Jun 2013 12:04:20 GMT";
	modification-date="Tue, 10 Dec 2013 14:14:19 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQD7d88e5gEAANENAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
l9tO4zAQhu9X2neIfLtq3LAsC6umXOzhchcJ9gFMPG2sJrblGaB9eyZuqBAqVGkiwk2SNvb//ePD
xDO7XNdVcg8BjbO5yNKpSMAWThu7zMX/mz+Tc5EgKatV5SzkYgMoLuefP81uNh4w4d4Wc1ES+R9S
YlFCrTB1Hiy/WbhQK+KfYSm9KlZqCfJkOj2ThbMElibUaIj57Bcs1F1Fye81/711cmusSH5u2zWo
XCjvK1MoYqPy3uoXkIlbLEwB2hV3NUun6AMojSUA1VXqg2FiuAYiDgyF3MsMUGE3aBtVyj2jMSyN
xy8c+iuE5s3rUbX9/vF0BKMhuVKB/qqaY5frSj64sLp1bpW+LdJ1aOIQpbUy9sn3G/zYGGW8ZQMb
aeKLwh19nHwQH19H8kG850DGa/8piTIHJgBpUwEOHO1W9BC5VAH0NfFuXg5u4Ln2AR86qIfGgmwf
+o97K3SAW7BHQhlvgzE5PUbBDuz+W66N9wh2/212PPu096Lvxm5b79bZYOPeYa6/vXPMz9f42Yjs
7yOyz0dkX4zIzqZjwsfMqNlgW/uIlJqNmVOzd02qXB9cBef5G+oCdF9sT+f9pvfEsxAEMrA78e87
Oe+IXL90B76oaqApkDToPWwZC7L5IwAAAP//AwBQSwMEFAAGAAgAAAAhALVVMCP1AAAATAIAAAsA
CAJfcmVscy8ucmVscyCiBAIooAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAACMks9OwzAMxu9IvEPk++puSAihpbtMSLshVB7AJO4ftY2jJED3
9oQDgkpj29H2588/W97u5mlUHxxiL07DuihBsTNie9dqeK2fVg+gYiJnaRTHGo4cYVfd3mxfeKSU
m2LX+6iyi4saupT8I2I0HU8UC/HscqWRMFHKYWjRkxmoZdyU5T2Gvx5QLTzVwWoIB3sHqj76PPmy
tzRNb3gv5n1il06MQJ4TO8t25UNmC6nP26iaQstJgxXznNMRyfsiYwOeJtpcT/T/tjhxIkuJ0Ejg
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
L3dvcmtzaGVldHMvX3JlbHMvc2hlZXQzLnhtbC5yZWxzhI/NCsIwEITvgu8Q9m5SexCRpr2I4FXq
AyzJ9gfbJGTj39ubi6AgeNvZZb+ZqZrHPIkbRR6907CWBQhyxtvR9RrO7WG1BcEJncXJO9LwJIam
Xi6qE02Y8hMPY2CRKY41DCmFnVJsBpqRpQ/k8qXzccaUZexVQHPBnlRZFBsVPxlQfzHF0WqIR7sG
0T5Ddv7P9l03Gtp7c53JpR8Wyka852YZibGnpEHK947fQylzZFB1pb4q1i8AAAD//wMAUEsDBBQA
BgAIAAAAIQAVr6o8vQAAACsBAAAjAAAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDIueG1sLnJl
bHOEj80KwjAQhO+C7xD2btJ6EJGmXkTwKvUBlmT7g20SsvGnb28ugoLgbWeX/Wam2j+nUdwp8uCd
hlIWIMgZbwfXabg0x9UWBCd0FkfvSMNMDPt6uajONGLKT9wPgUWmONbQpxR2SrHpaUKWPpDLl9bH
CVOWsVMBzRU7Uuui2Kj4yYD6iylOVkM82RJEM4fs/J/t23YwdPDmNpFLPyyUjfjIzTISY0dJg5Tv
Hb+HUubIoOpKfVWsXwAAAP//AwBQSwMEFAAGAAgAAAAhAMtSdnH6EwAABlkAABgAAAB4bC93b3Jr
c2hlZXRzL3NoZWV0MS54bWy0XFtzGzmufj9V+x9cfo/cJPuairO1ie6SZ6f2cs6zYiuJamzLR1KS
mf31+7GbaBIEI8mZWOUZKWiAYJMfARBE95u//v5wf/F1vdtvto/Xl2qQXV6sH2+3d5vHT9eX//7X
+FV9ebE/rB7vVvfbx/X15R/r/eVf3/7lf9582+5+239erw8XaOFxf335+XB4en11tb/9vH5Y7Qfb
p/Ujrnzc7h5WB/xz9+lq/7Rbr+5aoYf7K51l5dXDavN42bXwendOG9uPHze36+H29svD+vHQNbJb
368O6P/+8+ZpT6093J7T3MNq99uXp1e324cnNPFhc785/NE2ennxcPt69ulxu1t9uMd9/67y1S21
3f5DNP+wud1t99uPhwGau+o6Ku+5uWqu0NLbN3cb3IEd9ovd+uP15Tvz+te8vrx6+6YdoP/drL/t
g98Xh+3Tcv3x8H59f399+TeFefrPdvvwz9vV/foXO8agqgxUOy8fttvfbAOzu+vLDKr26/v1rR2h
ixW+vq67Roa5xtz+f6vd/obqq153+Jv6MW7n8tfdxd364+rL/eEf22/T9ebT5wNU60FVYHjsKL2+
+2O43t9ieqB90LZ7u71HI/j/xcPGwgyju/q9/f62uTt8vr5sBrouVFFqNLI//GFHHMC7/bI/bB/+
r2NRtoN9E+h62wS+XRMqG6g8i1r4sN4fxhvbwaOtGdcavl1rmIqgI2c2k7tm8O2a0XpQF0Ve1nZ0
/I2d2R5k2pvEN7WnfvwmS9cavmnI6h9vrXKt4du1ZjDZiUk8814x3u294pvutR5UKmvMDw1d45rD
N3VP/ZmpsAuuw6xdYx0idfnjw6f6NYAfrr3mTzRH60H5BaGLQVFlRp29phQtA/uD7lEPcl1UddTK
mZOqaEXowqPu+Wu9ILCp0tR+cSXGy9qwzti0lmy4Oqzevtltv13AueCm9k8r66r0a3uHSWMFE2N5
31lmWA3AB8ZjDxv69W325uqrbd6xvE+wKM4yTLBozjJKsBjOMk6w5JxlkmApOMs0wVJyllmCpeIs
8wRLzVkWCZaGsywTLCoa3psUjx/fK0xqP7OABJvZ1iOZAczm4fPm9rd3284BpCa8wNR2M24bATSw
vPsZV9FkvU/xRCM07Hmsu7JYGjmKSqFofOzi5NjF6bGLs2MX58cuLtxFnert0l20QYVYEDffucim
yrrBcBG2U5UPrI3qvH0fUTxr8myzmDwYme9PXoonWmrDBI+OVsnI8VTtGBQDVVR55v/q0asINWMn
ULcC9aApdN2YQsFX2r/Rq6gTE6YgR2CVl7pxfybTQsGUKTCDMqtVRs0XqhEaZpGAqjJl6v5TjV5F
9mXOBNSgKl3nu1vIhcCCCehBoY3Ka/83ehWZp6UTKNtB0kCEyhulc5UXRQb3ww3IDePO4ecqhB5V
WZZZG0T23Ax7QMdLYM82ewp7KZ7Ibg4TPDoyLiPH02OvzjNd+Y+AxtgJdNhrBqasGtPQRBRKQGPC
NOSDxpQGAUDj/oClCN1TpsEMjC4QLiDu6P4AjQjes0gAc1z3PcrrUmBpzgQAvqbKC9e8VSIEFkwA
AQxTYFdcDD4n0INP5UbXVVnUZWP3FD2cWnt+w7hzLLdcmSrXWVnkWKfe1zHwIYR5CfDZZk+BL8UT
3dMwwaMjgI4cD4FP57lW3jAJZIwdP2EPQM1q038kMiZMAbDHzQwmOsYe0wDs2amAEeg+ldQwiwVg
WnqoVpm0Y3MmgB2EVlW/GIrGSOwxAWAvHCPdJLDnBHrs6VKbWsPoGQ1Zj6YOe4wb2AM8q7zKcBOI
0HucMuTZnewLuFzb7CnkpXiiOxomeHQUC44cDyEPXsH7z0Jh2iJgjJ0AQa/I6wzDSW5aesRJpCEz
eaX7j0pAj2lArMm6pAGM2OxFAqbIyibvP/Dqsc9lAoBeXpuKwgAsOyGwYAJ6EPlo3LQHSAumpRPo
odfAhsFPZ2mzx7gRlgBxGssnr4qiLhrfewY+bKBeAny22VPgS/DoKI4YpngigI4cD4FPm0oHQyvD
sbETIPBVStVZ0X8SPpdpsHavzjLyuEUDgQjeU6YBdq/KEPj0IRmgEYMvEkCwVAdYglXy09dCY84E
4HP5B1iKBBaRQHjHuPWE3XMCPfgKRDJY1cC4aeDfe1vW2T3GDbtXqTIvMbD4sjm/npuBzyZtXgJ9
bbun4Jdi0tFEDpNM0b2PiKlHIANUCVsTNTsmCYJgzaLEUgJkQhKdDmCwDP2cTsR9JNHpsM432ELU
tbSxs1hCm7wJAjlp0eZcAjAMfK+NSCUMY4kacRzFoviRwCFJeCAqUyKiw7ZOK+Rte2h1QOTsFonY
YZmqLkvdJit7do5EZPleBIm23ZNITDDpaP0ObUIybilYV+3Nj4iJkGh4OJRwxCRBSGy0DoL3HDMY
oX1CEoREjGy4P0i4YpIgJGpucRNhIJfQ2JI3eUPRAcIEgas5l1CDvG6KIJhNBIKxRGVgr4KPdMck
4ZFYlRX2Og2MHax15JduODuQ2MAtYRVWJVbVd6NBmyB+ESTadk8iMcFkomBv2PYwaslEjntETIRE
H9y1UV7KJjrdhET42DDIkyiZcB3WLwfQNVUKiUxH65hDYEkdM9LR9QpIzIvQlUtHO+cSalDwbI/E
7iKWqNmWPuWbScIjsawR95isPcnqTZyziP2k2qSgxaHlK8qmthuY2qcwuEW0+d0X2JbYzP5pHCaY
TOREh6mWTGStRsREOMyzJtg4JIJDEiAYlrUKfFSecs2us2QQm9BpVql8INdhXbMOQ9bE5oRLAIY4
eSt9wk6Cas4lLAx9xArXjKA18jCLWAK+NQs+GKvI1y5JwsMQLjw3Gfbg7YlUDMR+VgmIqqpKXRXA
O5I5PuXBgWjT1i8BRJcOR6e+n5O2B2QWrSGTiYZhmGTyd+Ncs2spp7Q0MqeBgyoSQaKTsEcgX982
A2ySA5+WRCLTkQ+wTwwyQDplEJkOIFHVdRkkzIX7n9HNdr0CEmu23ZKOds4lLBLDjXUuJRaxRK0q
n8jSDcYqmoIlSXgkIt5rsK+rm/YTI9HddsduTSLSUqpGvNt+vmcSbVb7XCSmDrMwkS0Y3imXHw9h
JQ6zUkzGd61taZhkihODxETYQ8gShFNKbmDHJNHNcj0w2KH45CAmILKzExIgFeoUvKck0akwgzxT
4aYmZQTdqJFEVufBbWToVWTS5lyHQjouTJYX0nsvuITG6VGYv6/QKwG9fi7tMkVBifUwDYIX/IdP
FBjdkALTrmocjZiyzCsbPrYfbza4EbQ57Z8DPZcdPw69BJOJ4tuhSjDlUbA4IibCRRHACKnmFPRc
swS90EpCQsZok1hHxn0dJKLQYUoSnQ57mKWDTWgJQxnhe8YlgNYy9L81dAjssfsA9kxoWE0Ke5FE
U1mz1H9SZq+fAoc9pa0RQ3wXGzzGCNTlqtJYDKZDnZ9ajjqbzRaoK+3BvTgMPm7vurQ4dkR06P5e
CdJQkkaO1PRyY2LKetJEME0l00yS5pK0kKQlkbpCOVswcEMkY/vAR8wmYX/KiHXZXDZigjRUgjRy
pHDEHFM4Yh3JM02pJc80k6S5JC0kaUmkcMRcHxIjZjOHP2XEuhQkGzFBGtqKIQR0AdfIkfxgjInJ
D8ZEME0l00yS5pK0kKQlkcIRcx2VI2ZLYOSIIT587qpsG2Jj8V6ShpI0cqRgxIgpGDHBNJVMM0ma
S9JCkpZECkaMSIkRS2b3fsCO6S4JF6DnvSQNJWnkSOGIuabCEetInmlKLXmmmSTNJWkhSUsihSPm
+pAYMZsz+BmrUnfJBzZigjSUXCNH8oMxJiY/GBPBNJVMM0maS9JCkpZECkfM9T0xYjYMDEfsqENs
az5P1C+meKJocpjiiYKdUYonCm/GKZ4ohpikeKJgeJri8SFtu2WZpXiibc08xRPtahYpHh/ItLqW
KR5RyZhk8iPNHLwtYWPT3BbIpU3JM4ob22aRZwirG000Ae9TTCoauaFnolBrRKR0gePRq5OjV6dH
r86OXp0fvbqgq+kyR7qarnP83lU+kc+IbZ8zkV1Ya7vQZ5XkRCaYVLQkhzrBJGodialPb4YpouT2
iiS6/GY1QIYo3OLKbfeEJEgHO8uuc2xkIoszJQlKmvNUfqrgkUvkg7BOqMQhi9xecQls1H02FOVz
VWJ7FUsgBx7u7RNHjyTRZ5WQ+sfZFc7BcaRoisjY3HB2ZJVs9Q92fWWWHanA0DY0Dh3HT7IoXcR9
AogJJhXZ2WHbwei8RxQ+EhOBhBUZov5JgGRMEh1I8KSLqbErpd1ulTh5JAnSEeYEbbZP6JiSBAGx
KlWYEZXJ/BmXyAeKZ4wS+3wuoZFLYLCS0F3EEmcAsZ+ndp+P/TvqMHBMpJDIT5w8koI+vVmbBueO
JxLt2u44XgCI3UbmBBATTCoKHIZtB2MgRmgdEROBpCrCU0Rb+BVZqzFJ9BYRp7r9WXBmSwIj0zwh
CdKBiqyCn8ZEOqYkQUCs6xzPTfWnKxLsMy4BIOZ5WPKBXkXhwZxLAIhsDdqkViSxiCXOAGI/TwRE
3Al8Dor32iLHKO1ECnogwmzCJKIIHDUcVVA8yVyzSW5w/3SM1TYbwUe45hRT0M8u6Z5iEjWRxEQg
YZWsppLWakwSZBFrdiqYKgYnCdKB4u6wkB8ZwxiIJNEDEbMQVFbIzP6MS8A1syQ61lOEqjkXgGcO
0/rJoqBYoixwQO0rlxMnjyThPHMxMNbF1iXyuGVW5FFQfMPZcTBmAdig3rl9diEoo+E4tNvjn28Q
TbfrPm4QU0yiOjLJFEUlI2IijCCa8ic5SKgLjIxJgnCIhzfYabM0iCRBOjRqXXwtWKICbkoSPQ5R
LRjUJMos/4xLGNQEVWGtdwqIbqBJB0vyoyRTQHfBddgHUn3VZvcsULThXZJEHyLWOA+tcIqqVIZq
yciF3XB2++wQwIqahAwPxyC09HPHgfiMbMwz9iqmS2acAGKCSZRJplrSkdccEROBpMJDp77C2j4n
EhmrMUl0E4jHSTFOQRmDBMmEJEiH5jVBKYPo7o9AUrFTdltYGd3HjHR0EgCiCY/ME46ZC8AghkhH
8W0Ch6xTwOHJiiDSEeAQFe949g0lAw3OSSPHzNktDk2DCNqg2AX7muCUmeMQh4beIGKL+3O2KsY2
e9IxJ5hEkWSqpcC6t957REyEkTMMotNNOMyKJjz+ExCZxCoMK+cuE1tmkiAY4jg4LL3F4hAwZJ3C
U4W6DB91lOHenOuwTwnanWy/b5YSi1jiDHvYT5MLEJsSRXl49i9ZrEvtU3yILUqDHSAeyqntqwU8
ajkMbfVG75d/Hgz7opAjqRuTYooOvYdJJp9QdDB0LREMIyeLoEeYQyfRYaQeoLYlqIm1iZgIIxPq
COk4wxwyHXhIhddUwstGOmakg8whQ2GeqsrgEuc8vBBLnC5NI4neHiJcMHC2TaMRmVTRrvGGs8Me
whcr5UrGvc/nMGQZ/58HQ9vsSWuYYorwMjQppmj6RsREEMGmI6w6kB5zTBIEQ7wVJiyeSHll1xHS
0T/o1f2QIeiU68BLWhr+sGEChk5HD8OsCh54SDwJOOc6LAxZXJxyy0zHWeFhPwVkDguNuguYN1Ok
wkPGbmGInTUensbTa8gvBF6cAxHYO9ceHj2VMrYhQA82/PvJ6ySTXyJuh5xqKQqGR9RSXxuE8MMH
hPbZgwjRY5Kg2iA8UBr4SVvIFsF7QhKkI2Oe2+6pIx1Tkuh0AHp5rQMkARaRjhmXgCcOniLANkCm
oudc4iwL6Aa06xWgF2SPkEZKbZH7KeihZzK8qyDzm4x2rm6oM1SRBrhp61nwAjD78X6Lg46dn0DX
kVjwOOjcOcdx0KWYol3+0KSYIks/IiYCRIXBC4IghO8RIMYk0Q19NUC5cgjTlL1zHSEducJLEnz5
tbSpU67DvpSqLoPtcCr8czq6Xhk87lkH7wFIbCrmXAcghPc3BIYb9+HjrRYZCyERbnSgUBZDkkSH
JRRD2upGPFFk16n9xNuQfsYsRnFiopHG0UXtuD07hx47Mfkz0HNp9ePQSzH5njl7l2AStZDGMfWw
YBldW9YsoOckCHrILJTBo9Up6EU6/Ksh7KN5NYAU6ZhSrzodgJ5m+/KEuWOdAvJQvB9sDFIbYCZh
kceKOhPAiwQCr2CfyMZIRQ5nSXfhgQcdeAOC6ayYN2LO5jkFZPNKPH4OI2/jQ/vxRoMDj52QEPDg
s48ZuKHpcuYoUe9P5CVpLEkTSZpK0kyS5pK0kKSlJN1I0i+S9HdJ+pVIhaiIzFky/8SYWQx2C6oV
Q4FM6QdNksaSNCFS1QtOidS+vbFtfkYkzzUnkudaSNJSkm4k6Rci+d7/XZJ+JVJi0Gz+J9zhHgPY
u/Y9kW3YRgB7L0n2DZIuuCOuEZE8MsdEavvUjtWESJ5rSiTPNZOkuSQtJGlJpLakqludjMRWYG63
p+cOzPuWGwODBdjHsypyckPP5MfFbYKD4jPJNWEk3ksbxp/fSxf0s15G9m2Yd0w4yPC9FKSx5Jow
Eu8lFuMzemm58ZI+34FhLkgjSRpL0oSReJ9sQHD+yHXhA+uTII1yQRpL0oSReJ+srzi/T51nYX0S
pFH7+lI2mmNJmjBS16fuDbDdexMf1rtP7bti9xe32y/2da62Wqqndu+txSJ4baEK2IgrBa605u6q
v4TXwD6tPq1vVrtPm8f9xT1eaWvfEosh3HVvkm1/42W3LRUI/LA94B2w9K/PeIHwGiXy2QAx1cft
9kD/gHrb7j/Xhy9PF9vdBm+fbd8JfH35tN0ddqvNARpeb+6uL3ezu/Yxgatv9Abjt/8VAAAA//8D
AFBLAwQUAAYACAAAACEARo1JQ64FAAAXEAAAFAAAAHhsL2NoYXJ0cy9jaGFydDkueG1svFfdb9s2
EH8fsP9BEwp0e7AsyZI/hNhF6jTtsGQJkrQPeyloibY5U6RG0o69v35HUpRlp3aLoZst2CJ5d7yP
3/GOF2+2JfU2WEjC2diPgtD3MMt5Qdhi7H98uu4MfU8qxApEOcNjf4el/2by4w8XeZYvkVCPFcqx
B0KYzPKxv1SqyrpdmS9xiWTAK8xgbc5FiRQMxaJbCPQMwkvajcOw3zVC/FoA+hcCSkSY4xffws/n
c5LjK56vS8yU1UJgihR4QC5JJf0JGFcghaNRmHgbRMd+6Hf1JEVsYScw63x8tJOCr1mBiykXDNzY
oi/z7JIqLBiImnKmYLfazvKbPFUisVpXnZyXFSg3I5SonVEXFATZ0yUHO7wH/NeaCCzHfh4lzhHw
+sIVJckFl3yuApDYtV5w0dBiB91hN67jAcZGSSbVjmJrUBTG2tpus69R4RpROkP5SvumRdyQ7tc1
47EzNJcJv35RRFFsXrb6V5B8OblA2YwXu3sBO6OMSvWoFTKDSs9U90L/FXj+YGi6zZSZF/fC0xEb
+020UKYmM6JmaIW9nAvcISVa4I5Eins/i/LzMxerXzzOvA/xBUhTYDHKQJiWDL9OL3hRRk2Kdnyt
DDY4JBEMW/HXVM4qtFb8SQ+uMMUKFy2yPKsoV5cCI214SyIlDE91jun5BcCsgryxjDYjRWERuEFi
N+WUH6APIoJB8zwjxfZgNy4KLA5mrC2byYdIm7gxhto5DUErRe7KGYeTQmcDg5PAoCHP9gQ5MnpK
JR7wXO87n7yOgr73gUvlQTah1z+9unqVZPAT9fU+hgjIpwgOC81QqSmkkrJ7RD1rW6U8MABOJl+T
bCZRkH6+jYI5YYjuta3M3o42/gJtJ4nizgIjlBbz3inGXpvxJFXSpkoCkQNWnNsOFUkPKc8q3W/T
piC1FYxDqYNjyuTU/sNjyvQU5eiY0oTIQuFw9yisSQsuUCcKA/iekhq5qC16MSoQyk8S7kPW1+F9
YT04eA8VOzAwg9caeIBMjRC2Lk/j773G3/s2/oC8wZ+tUlNe4MkyK8tMSq1ua/ZrGHWeOe2P2nVJ
MEiTfjyqn14Yv+ucBJFzTRKMev1eEqej+hmdYXJIBqZBf5hGzTM4w+SAnQZhLxnEzSc6x+Qwrnca
hqFTLh1FZ3ZyYAem/qAxCF7O2eRwnwTDfn84GkZJ/ZxTz6WAVi9Je4PQPeeYXDYA06jNczZOTWJo
/UZx1IQ3PrdVkyJpEEVJOuw1n/SM/yIHCghV2vJ5nCYvuADDe5TbgUudOmdkyblatkoCUNXFo7iZ
UanzSi758w1eYFb8httFzq58QnVpqBslTT1F6ndU1v1Da/4Riy/O32OR6xbJlJgW/dv1bEbxI/m7
LQo0bFSzNaguG7ZqvLAoz9D217rqRuEgSuPhqG9pjxaSpGf7F6jF7QIMx8ylqflH9HtBMkfAsdDe
4oKAKaaltHqVhN2ibV00W4SFaQcObEbbe163kTOrYYn+5OKJ5KtbKMeW1pVgqMCEnV5UwAQRbAQy
vFVP3ErV3aC8rHsD4xNnOpypeg3XWuje5Q8sajY9OvA1ndFLumB2LlfCSofZu/lcYlfOwzqijN+u
qSI3Gwp6teyGgDYeBgR80dV7/Voe/E6upi1Xvxek0LGXprFrejjbEv2Xnema0MJTpMTft/mE9L8u
lbevZHA3sAUO7nZ8DWl3Q9gKF7rLMib/X4Db584ZwJmlt1g9Y1yDbGYHWleATY0WeDvoo81ZpXOR
mrcmBRw+v9K5Wy7Nr6V+IvKO0frcq51UEFm9hfvFSl7WibJAlfWfPv6uAN/yDi4FkPdHOHc9fSUI
U49YKTg1zCG7xAh682s4jbEwgajgdgJJvyBMejO4hkLf4Hv6PhoMfA9uu+ZfuQXLrkc9H6KtpdhB
Iws2W1fWbUeb6/xr7vOTfwAAAP//AwBQSwMEFAAGAAgAAAAhAJ1CzaWkBQAAIhAAABQAAAB4bC9j
aGFydHMvY2hhcnQ3LnhtbLxXW2/bNhR+H7D/oAkF+hRZknWxhNhF6izrsGQNmrQPexloibY5U6RK
0mmyX7/Di2TZid1i6KYIDi/fOTxXnqPzN48N9R6wkISzqR8Foe9hVvGasNXU/3h/dTbxPakQqxHl
DE/9Jyz9N7MffzivymqNhLprUYU9YMJkWU39tVJtORrJao0bJAPeYgZ7Sy4apGAqVqNaoC/AvKGj
OAyzkWHiOwboXzBoEGEdvfgWer5ckgpf8mrbYKasFAJTpMACck1a6c9AuRopHBVh4j0gOvVDf6QX
KWIru4DZ2cc7uyj4ltW4nnPBwIwDfFOVF1RhwYDVnDMFpzk9m2+yVIPEZtueVbxpQbgFoUQ9GXFB
QOA9X3PQw/uAP2+JwHLqV1HSGQKGz0zRkEpwyZcqAI4ja4XOG5ptPpqMYucPUDZKSqmeKLYKRWGs
tR315xoRrhClC1RttG0G4B6629eEh8bQVMb9eqCIotgMHvWvINV6do7KBa+fbgWcjEoq1Z0WyExa
vdLeCv2vxssPBjPql8y6uBWe9tjU772FSjVbELVAG9CLCLVFdLQBD2Hqcea9i8+BhQI1UQkcNDv4
7YSBgTKyUfTEt8oEBIfMgenA6RrVqYK2it/rySWmWOF6AKvKlnJ1ITDS2g44UsLwXCeWXl9BbLWQ
LJbQpqGobdg9IPE055TvhRy4AYPkVUnqR+c4i+aixmLvfKvLw0wrXZUPRlG7puPOcpFPzYLD9aBT
gEH6mxCoyh2gQkZOqcQHvNTnLmevoyDz3nGpPEgh9PqnV5ev4qyE3/FEH2RQgJ8juCI0RavmkEDK
STu24rbKAw3gPvI15GEWBemfN1GwJAzRnbitObzDxi9gz5IoPlthhNJ6OT5GOB4SHkUlQ1QSiGpg
t31B0n3kSaGzITYFrtExKfNDZHIMOTlEpseQxSEyO4aMQgetuUBnURjA31Fs57XVOEY1QtVR4M5l
mXbvM+0hXnahYicmzmDoIg9CU0cI2zbHA/DKBODVMAAB3wegLU5zXuNZ05RSWsUGq18LUiiZOzRc
u6Vh4+x13EoOkAdFHKVx3j/jn8+OBmFnsEkQjSdpEmXuyeMTRF18w0l5lo+zyD5hMTlB1IX7JJjE
cTZJo/49QdRF/iTI8zgKs2QSufcEUZcCRQD1Ng2LOHVvcoKoy4YiCNMiG5x0gqbLC1CpKMI86d/i
BFGXIpMgzeJwnHdvdkq6PlsmwTgLiyLt6KLoxFFRlzc5nDWOimT3nKLqYiIP4jzKknHvqucSQt7s
It9OunxyiSQbztV6UCh01tliUF8vqNTJJtf8yzVeYVb/hoelz+58Qq5guJ5Jo+dI/Y4a10oM1u+w
eHH9FotKd0um8Azwb7eLBcV35O8hK5CwF81WJldLbCl5plFVosdfXS2OkjiJ8iJ2ZxxsFEmauZK3
V5bh7rkwncABfsdIVggoVtpaXBBQxXSXVq6GsBv06PgOgLVpEvZ0Ro+33HWUC6tNg/7i4p5Umxso
0hbbFWaoy4Qd31RABB7sGTL8qO655aobQ3nRdQzaJp3qcNHqPeyk0B3NH1g4Mj3bszVd0Au6Ynat
UsJyh9X3y6XEXY0PnbUZv9lSRa4fKMg10Bsc2lsYIuBFU+/kG1jwO5maDkz9iyC19r007V7f2dlG
6b9sUreE1p4iDf6+LSmk/1WjXqxXnuRbSLtrwja41q2XUfn/Crhd7pwIOLP1FqsvGLsgW9iJlhXC
xkULjPa6a3NX6VykZtSnQBefX+nnLZWm11w/EfmeUXfvOSPVRLZv4VNjIy9coqxQa+2nr79LiG/5
Hj4VIO8P4rzr9FtBmLrDSsGtYS7ZNUbQsV/BbYyFcUSLVhiSfkWY9BbwRRrkqe/pT9Mg9z348DX/
VbdhyfVsrLsTzcVOel5w2La1Zjs4XOdf/2k/+wcAAP//AwBQSwMEFAAGAAgAAAAhANi3wkLyBgAA
fRcAABQAAAB4bC9jaGFydHMvY2hhcnQyLnhtbOwY2W7bRvC9QP+BFQzkSRTvC7EDW07qonZjxE4e
+lKsyJXEmuSyuytHytd39iIp2WKNnigQmra5y5nZuYczr99s68p6xJSVpDmduLYzsXCTk6JsVqeT
j/fvpsnEYhw1BapIg08nO8wmb86+/eZ1nuVrRPldi3JsAZGGZfnpZM15m81mLF/jGjGbtLiBd0tC
a8RhSVezgqLPQLyuZp7jRDNJZKIJoD9BoEZlY/DpS/DJclnm+JLkmxo3XHFBcYU4aICty5ZNzkC4
AnHspk5gPaLqdOJMZmKzQs1KbeBm+vFObVKyaQpczAltQI0D+DrPziuOaQOk5qThcJqWs36RpmpE
HzbtNCd1C8wtyqrkO8kuMAi052sCclgf8G+bkmJ2OsndwCgCHp+ooi5zShhZchsozpQWjDUE2XiW
zDxtDxDWDTLGdxVWArmOJ6SddedKFt6hqlqg/EHoZgDcgfbvBeKhMgSWNL944CWvsHzYir+0zNdn
r1G2IMXulsLJKKsYvxMMyUUrdtpbKv4VePlBwsy6LblPb6klLHY6Uday2Bfw8MQBF1/AA2gRZXi5
xDm/ZlwIhzJAEbv87KLkC/SArZxQPC1rtMJThjixprlFCeFLJqC5wpF0muIWUQR87B35zBG4g5TY
IMjMiAsPXEpfoR3ZAPU8q1GzQdV1t97ekEKbBBcrrDxw99zmVnui7cVJ5KROHEd+HPp+7GskbVg7
TP3ICxPf9dIgcFP/7VTZ7/Bw4K7ni0DKgNXA2wXzxoZow8m9WFziCnNcDMDyrK0IP6cYCfEUQdA9
PJYNnouMIhYrCKoWsoRCVPmHForxR0R3c1KRvVgD/8NgujwrCyO4gia0wHTvfKXix7P7ssbWlSfU
/yiNoF6IqFOk2K5eEEiOIgE0kPwEQQDuAXIkmWWcfsBLcfjy7JVrR9YVYdyCBIJefXdyeRJk8MeN
BKoEAvA5gvwoEFo+h+zB1RmutkzLLZBCeajgzbXDX25ce1k2qOq5beXZBtYDbz6EnQauN11hhMJi
6R9D9IeIR6GCIVRg03ygtn1Gwn3IUaajIWwIVN1jXMaHkMExyOQQMjwGmR5CShMpV9iXyXU0aEEo
mrqODT/HqLoirwhLrHwPFQjlRwF7k0XCvE+kB3/pXUUtpJvBo3Y88ExxVrOpj/vf1YkXZSdXJ34i
GJEOCPCdA6rKPIekclbXGWNKsMHuHzkpJNMeGmpOJsloHRzXkgbwbEjHfhB7+nLTt9OjTmgU5tlx
5KYe5KtI3dEIkvFvOCkJIAE65vJGkIy7A1LsppA7A32HI0jG8wEpiKDMhOYKRpBMCIBMQZJCFtaX
N6YIEw2eHaVp6MeOvqN45CQTGIAUBwOkGBL+UZWbGAGZ0jSOktA19whSFy5CE4kX+Ym5xtTXBQ5g
hUk00N+YVG7vFInnhRGUMH09YRDcv/d8tTDxpAOJ1VDa14NiAVC6rBxWF/dJddE7+9VlkNC+Vpej
XmbCTRa6r9Xlf1Vd4Ovmavh104cYVBvZ9v1nxcW3IydxnS5lvai4+LbvhWGcdEl1LHub4gJIkRO4
kbniMSTj7b4duoHfZ1RvLBGb4gInxU40kGms9pniItjrkzAk45cUFx8aB/elZcwUF8leGvQVc0wR
prgI9jxvUFzGFNEVF8BykyQKu9o8WibMV5lvB46bRnGYeuoePcsUl8CGrw1TZcEznim0f6m6FNeL
iolPObYmn6/xCnrEH/GwuVJvPiHdjehxhICeI/4TgkZGdimD/TtMn92/xTQXg4hD+IvNYlHhu/LL
kBQI1bGm2h7dqajq96Re5hna/qC7PdeJ/SiAXwV78CLyYtNl7jV+8GV7LlvgA/ieEMsRYKyEtggt
QRQ5uFF81WVzg7a6TxsAFrIN3ZMZbW+JHtYsFIc1+pXQ+zJ/uIEOUMGarg+avrI5/pIDEliwI9jg
Lb8niqqYubBz3ZNKnRjR4TNevMOaC9Ez/4ypRhOrPV1Xi+q8WjVqL+dUUYfd98slw6aDhNmGbKYb
crOpeHn9WAFfA7nBoJ2GwQOeVXXP30CDf5Oqq4Gqv6dlIWzPJMfd7EB9J/0T8x84R8xsFpuyKiwO
3f/eDEcMj47PYiSP40MPqHzvav5sN2QxsoGwuy6bB1yIxl6S+7ccro+dEYeTry4w/4yxdrKFWghe
wW20t8DT3vxG5ioRi5V86kLA+KccXB1XnsIS+ILqp5K9byqd97SSipK1FzDFe2DnOlBWqFX6E+nv
EvybvYdhFMT9gZ+bWVJLy4bfYc4ha8gku8YIZkLv4FsfU8laC+M9CPpV2TAxGXTsOJxYYuprxxML
ZsryPzcvFLpY+aL3FVTUoqMFh21apbaDw0X8dVPzs98BAAD//wMAUEsDBBQABgAIAAAAIQCIHbU7
qgYAAA4XAAAUAAAAeGwvY2hhcnRzL2NoYXJ0MS54bWzsGF1zm0bwvTP9D5TxTNoHIUCAEBMrY8tN
0qndeGInD33JnOAkUQNH707+yK/v7h0HSLZI2jR96MRmbO7Y3dvvvd3nL+7LwrqlXOSsOrY9x7Ut
WqUsy6v1sf3u+uUoti0hSZWRglX02H6gwn4x//6752mSbgiXVzVJqQVEKpGkx/ZGyjoZj0W6oSUR
DqtpBd9WjJdEwpKvxxknd0C8LMa+60ZjRcRuCJB/QKAkeWXw+efgs9UqT+kZS7clraTmgtOCSNCA
2OS1sOcgXEYk9WZuYN2S4th27TFuFqRa6w1ajd5d6U3OtlVGswXjFaixB1+myUkhKa+A1IJVEk5r
5Cw/S1Ml4TfbepSysgbmlnmRywfFLjAItBcbBnJYb+mf25xTcWynXmAUAa+PVFHmKWeCraQDFMda
C8YaSHY6jsd+Yw8Q1gsSIR8KqgXyXB+lHbfnKhZekqJYkvQGddMDbkG774i4rwzEUubHF5nLgqqX
e/zL83Qzf06SJcseLjmcTJJCyCtkSC1q3KkvOf7L6Oqtghm3W2qfX3ILLXZsa2tZ4iN4eOyCiy/h
xbZyNCxSoKsVTeW5kCgiSQARd+X8NJdLckOtlHE6ykuypiNBJLN+5OWHO8ZvfkJoqXEQ4xPHDh1l
7ZGiVXZJOAHBdmR4gkQHqRgBzYyN/uBFKnUW5IFtUbo0YRDssOz5KUIZ7ZOtZNe4OKMFlTTrgaVJ
XTB5wilBMj2KRV7RBeYC3F9DONQQ3xpRZw6e6Ui5JfxhwQq2EyXgORT0liZ5dr9zGuMZ5Ts7Wpbb
+XVeUuu1j3LeKmn1B4wXTUo8lEsGaQ1Dt4K0pVw3TTqAlChmheRv6QoPX82feU5kvWZCWhD65NkP
R2dHQQJ/vAjPUUAAviCQ2RChlguIe6nP8CZawFpaIAX6FoLczj0n/HDhOau8IkXHba3ONrD+E7Cj
wPNHa0pImK0mhxAnfcSDUEEfKnB42lPbLiPhLuQg01EfNgSq3iEup/uQwSHIeB8yPAQ524dUJtKu
sCuTh/GNlsgYJyPPdeD3EFXPWG098UlGSHoQsDNZhOZ9JD34S+cqeqHcDF4bxwPPRL6qbXnY/14d
+VFy9OpoEiMjygEBvnVAXVMXLKPzTVKWiRAKTFVatfspJzWqOayQRneh40auF4fmCWY/jw56kdFN
6Hj+LOo93gCSceXQCdw4jILYa57pAJLx7NCZ+KE/MSixFw4gGScPHT+aRdNw5usnmgwgGW8HpNk0
CCdTt3mGTjKOD+yF8bSniiHtmRj4WyeZcEDtTfvPkExtZIB1Z5Hb6TwcMlQbI3CWF4auUV84G1KF
1zlFo+5G7/Fj+4Krd16uFyZ2mqARJWNy0ysMANWUkP1K4um03Kskzc5uJeklr2+V5FslaS4V/6dK
AjeZV/2bTBdiUFm6kvGVC0ngTMOgqwkT1x9IuiZnBM5sEk2CLnEM5U9TSABpGnUVK/QeJxq8wunb
WldI3Ekw9dufQSRTSPAkaCm6RDiUPk0hAaRe7YFkOCSTKSSBE0dRPGtr4xPJs5PJFBJkr1+xpkOK
MIUEkGa9KjcdtFNbSJC/md+r+kNH9QqJ5wVhPGl/PrOQuP3i44fBI0/6okKSnS8LgTc0sWF353QN
PdavtN8z6S/vSdNkNPMBhF4Q+RuB/kQ1H739K8qf3L+kPMXJwD786Xa5LOhV/rFPCoRqWdPdTNOA
6EL3qDSmCbn/pWniPBi3BMEkVN35ow9hHMdNm7TTz8GF9US1kAcJiZQAxhq1xXgOoqhJiuarzKsL
ct/Q7QFmqrvckZncX7JmerLU0pTkD8av8/TmAho7DWuaOejl8urwRwlIYMGWYEXv5TXTVHEIIk6a
VlPpxIgOt3P8RhsusBX+nfIGDVc7ui6WxUmxrvReKrmmDrtvVitBTWMIwwbVdVfsYlvI/Py2AL56
coNBWw2DBzyp6o6/ngb/JVUXPVW/4nmGtheK43YkoK9EX2MgA+fg+GS5zYvMktDU78xAcJrzRbMM
KHIvS2l19Q1GYrpTgpEm20LYnefVDc2wX1ci/1cO1wXhgMOpT6dU3lHaONlSL5BXcJvGW+BtZyyj
chXGYqHe2hAw/vmJQZDGQnyk+j4Xb6qiyXuNkrJc1KcwVrsRJ02grEmt9Yfp7wz8W7yBGRPE/Z6f
mxFRzfNKXlEpIWuoJLuhBEY9L+FaT7kyRA2TNgj6dV4JHNW5cG+wLRzDOlPbgiGv+i/NB42Oq4kN
1kYqetHSgsO2tVbb3uEYf+0Ye/4XAAAA//8DAFBLAwQUAAYACAAAACEAf6ALUbUCAABMDgAAGAAA
AHhsL2RyYXdpbmdzL2RyYXdpbmcxLnhtbOyXzW7jIBCA7yvtOyDurX8SJ7EVu1o16mqlVbeH3Qcg
GMeoNkRAmvTtFzC24zaJ2qhVe+glwjPMDDDzMWR+tasr8ECEpJylMLj0ISAM85yyVQr//b25mEEg
FWI5qjgjKXwkEl5l37/Nd7lItnIhgHbAZKI/U1gqtU48T+KS1Ehe8jVhWltwUSOlP8XKywXaatd1
5YW+P/HkWhCUy5IQtWg00PlDZ3irEWUwsytTW35NquoHwyUXjagQvG5GmFdZMPfMDszQGujBn6LI
4iiMOo0RWKXg29bADFuZ0YezaOostMpaWMd9NMW7CFkQds47obGZ+L7funEraYNk4bSxeRq5X+og
cBtuJdC6pPhGoJqAGmHBU+gOhz383FPeufPBtw93AtA8hSMImLZK4XWJhAIhBDmRWOd3SdUS3ROA
uSAXtEYrciGR4gAsN7TKgaI6FOb1GgkqOYNaoCrt5pVmnjua22fLRMn+rn5zfC/15CaRz2db+eG9
7gqhawElvCjALoW66B/Nr3aGErJTADdC3Eqtq9bIrcHMdcMFUghsBD2jZrE5Yp0XnNiRq358tifn
4EUw6t1TTBYcb2rCVEOkIBVS+i6QJV1LCERiCkL8ygNzON5gx/vfLgv76XFZrKj2bQ6ozdQBNA+I
en4sraMT3Iw7ncXPYG1YcYQ/xSaI/ahXWYsTwLbwvfyeCCeHcQ1mftwi/tbARkNgxyZX9nZ7DkWX
QXsxfCE0aEcNjO+FUPixCHWUDDqP34kH8Ixco3pKj5s+KOAe1bb3nEL2SMCob6LN+lyIIArH/qGo
baz9K+eVfW46xGbyhY1MPl/nGX0sNkc6zygcx9P+ETmEp+8vw1qexmHs/L2AoGO9J5r4o9dSNA6C
g5HfgKJ4SNHsi6LPSJF9E7zH+80+nswfwew/AAAA//8DAFBLAwQUAAYACAAAACEACZmKYZIEAACF
CwAAFAAAAHhsL3NoYXJlZFN0cmluZ3MueG1svFbbbhs3EH0vkH8g9FIbsCSSy+VyBVlpLnASFEGD
Jnk2huRQWmQvCpdy7Hx9RxfbsS5A0AaVAIEa8pwZDs8MOX1+29TsBmNfde3lQIz4gGHrOl+188vB
509XQzNgfYLWQ921eDm4w37wfPbst2nfJ0bYtr8cLFJaTsbj3i2wgX7ULbGlmdDFBhL9jfNxv4wI
vl8gpqYeS871uIGqHTDXrdpEfrkcsFVbfV3hq61FicFs2lezaZotuj610OB0nGbT8dq2tdsIrVtM
XNc0VdqfnFeJeexdrOwhsEoWviA5jzisGpjjsIfU7VPY3bKbKqYV1OMvGFusT63aI2Nnsbn+1sUv
5z8LGDoWuy6F/hRguFyTsmEMzAHlesxSsxxvh/te1kcz6Zfg6Mgo9z3GGxzM2P2WfqA6zTF7XL0f
Ul99R9aFdQDMV3Fv+oTzPdDpDK0siWIl5B7tjMSVME5AS0CvRJDeBFOoUABK5TnmFnNvndYIUpTl
U3icTeMH+rFj0s93dgP1WnYD+hevujZtDS9iBfXaFqCp6rutUa4N4w04zT7eUQyN2HKvOXe0/4Fy
wj5Sfd29jJWfI6uKodScs1cfPrM/WDZS/M3b7+ztpyG2YGv07ExthNuPDUuLTVmdXzBm3rxkf794
TyPBbllOBGR4+/r1Bfu8ySYTcsQVu9WKnX2r0oJBXbPV0kPCnsENVPWanVUtFXtNbs6f/cZ2n+2W
WY8pUVeg1RHp0PsUu997qrEAqzpNHpdvUUN29ZE161pm3TJRc9nitsH8gGN4mxSL3y4i1pCqBi9W
JNbrW0gpXliIscJ4KS4oTrjsoseI/tDVu7/Yuvn4VU3yYC58ZWe7uM4ZpXaTy3lHXa5dz3etpz5F
5odFD6f50F3uj/WXqGUn5F+llnc3P2glKwr+54NY8p8SSyafiEWwTzupXKHvIjBh/pVO2K8UyjaU
Y0Lp0ZFWsX5UzP8tjnTfiUqPHLwqlJZOZOAUSF9kKCSW0qJ2wirkSuRPO1Ga+bsa2kmRBcEzG0or
nQ+lyZVW3uVkUUG44AvhVZ6JsI/etUEEyH3IFAQlrYasCDrn2qjC85Bh0Ba4l6WBE/C8UDmq3AqD
OS9LLJVVPocis64svNNeOe/KQ+9ilF+/V6PoTrVn9OSdG5kFj6bMCgGqyLzkjgtZOG690J5raU/F
pbUDgarQJWXPFZgF7TSUxlojCm+llJQcc+B9E1dOce168+M7YZcvQ5ml7DqfG7pBRClMoCvDodbS
W5A688JisGo/rgfi4zNiFKoWDp4FG9RubqiEHM5353WUPjtqVcepd/tR3oA1hZc5gsa89M6YrMiN
oPQbg6RMR2PPj1KvE3Ugy/v7lUtpeCjLwEkeTgqPEgrjSdRSggx0/XIP1p0k1vszYdNXxN6NTHVA
3WZCbz8bcuRBKx7QbDScSyBR07goqBSMQO6OgoeCj+i772+3kUyCB3BUIlooL7hG7UmcZRAi40GR
5EPISjh4H853wBO0LhdFxgGgJErtgs0FeI1OlpKTfkLpS4RSHcmPvn4vnip0TM/o2T8AAAD//wMA
UEsDBBQABgAIAAAAIQAkvLzOxAQAABwbAAANAAAAeGwvc3R5bGVzLnhtbNxZW2/iOBR+X2n/Q5R3
GqDQKYgwKnQijTQ7WqldaV+dxAFrHBs5pgOz2v++5zg3cw+9MJ1tH7Ad+/N3rnZORh9XKXeeqMqY
FL7buWq7DhWRjJmY+e5fj0Hr1nUyTURMuBTUd9c0cz+Of/9tlOk1pw9zSrUDECLz3bnWi6HnZdGc
piS7kgsq4EkiVUo0dNXMyxaKkjjDRSn3uu32jZcSJtwcYZhGTUBSor4tF61IpguiWcg402uD5Tpp
NPw8E1KRkAPVVadHohLbdHbgUxYpmclEXwGcJ5OERXSX5cAbeIA0HollGqQ6cyK5FBq0VQ05+ZPP
MQze9FwnF3oqY6DRBp1645FXLB6PEilqjBsgiDyH34T8LgJ8lAPjrPEo++E8EQ4jBkOQlOb9O8UI
N7D5vIazE5Iyvs4huoeXd/BRvdmUcBYqhoM7AMbaBamUge53UENYdlKMHVzPlusVIDYZRJJL5ahZ
6LtB0DZ/yLsWudLvIWKGXwYKYZxXDtEDh8CB8QhcU1MlAug4RftxvQBvEBBFuYrMvBOzZ4qsO91+
8wWZ5CxGFrOpEVFDLKIPIkJYjDER0xUFVwVPhWHP4gq9nNEJXtvbFJoMBvh/7l5mS1BlKFUMiaiM
rmsQIx8ajzhNNFBVbDbHXy0XKI/UGqJ2PIoZmUlBODS9ckX5iyshgUGu8l09h1wzHuXG39YCTix2
aDTfcDFUGk0HyiXjRvNz4ZrLltKYLdNKusIgd+bPWHmPfCfX7Mp4cskeOU+uOSZrYVBwj4hy/oCG
/DupfAQz8Cqxsi8cX5g4MBFjE2KsaOb+kHfQT2y0HNuCvX4errNKqg3OZ1WtdshiwdcTEw14FgDd
Q2jdgzJuoQWgFMTKsQPQS92rd8qf3nE2EyktTzhI/nnXmUvFfgAQHkjGNVy8OWgW4UAEC6hyne+K
LB7pyuyGil4lW/S7wKK0UWP+X5dpSFVg7hI184tJtVeQ/4scb2aQFzjWXoVbwd3YcTZd5P0xulQo
Onje5SF9SrdW4gQ1hyYPFVm0THCbaQQANxKU7VCNwQ5E+EamOpiZnpGGeh/qNPRuSVoe35jjpke9
psqshNeYzaXNWrx+7VwBjnvypVladsW3xeKacpzjZiZraGX7yC5P6GcEi8XXyrxvwHeH26lk9UI6
x1JXY+gD3rP3yrW9oZ2GLrKhZcpDQQxxvj/Rn3Ez7R9w613svWra3unEzXTHbc67hjYme46l314E
23d+URH2eyOMHrl2vOaRduCqcpzAfi94TVq2Za0o/dm0kAqEK14GLX+7tq0FOWwrd7yv+D5Odr9l
j528jd8onpGibC9orO/3JYLlMXh7vMxFB0tdDQoRFjdsNuPW7H3EvnYZNuU1xtSdoNJklbM2illV
WcrBWrTvfsWKB7diKlwyrpmo6kx1IQsw41VdGjMlX41fQkzRrNoFRI1pQpZcP1YPfbdu/2EKiRDG
xaw/2ZPUBsJ36/YXrMR2brA2BbWeLxmUTuHXWSrmu/98mnwY3H8Kuq3b9uS21bum/dagP7lv9XvT
yf19MGh329N/QSb8bDSErx8v+CxjPh/B62enN8w4fLxRhbAF+Yd6zHetTk7f1EWBNlSpSiG8rPqs
Nf4PAAD//wMAUEsDBBQABgAIAAAAIQCsCg5VmAUAAAsQAAAUAAAAeGwvY2hhcnRzL2NoYXJ0OC54
bWy8V91v2zYQfx+w/0ETCvTJsiRL/hBiF6nTrMOSNWjSPuxloCna5kKRGkk79v76HUlRlpPaLYZu
iuCI5N3xPn7HO1682VUs2BKpqODTMIniMCAci5Ly1TT89HDdG4eB0oiXiAlOpuGeqPDN7McfLnCB
10jq+xphEoAQrgo8Ddda10W/r/CaVEhFoiYc1pZCVkjDUK76pURPILxi/TSOh30rJGwEoH8hoEKU
e375LfxiuaSYXAm8qQjXTgtJGNLgAbWmtQpnYFyJNEkmcRZsEZuGcdg3kwzxlZsgvPfp3k1KseEl
KedCcnBjh77CxSXTRHIQNRdcw26NndU3eapC8nFT97CoalBuQRnVe6suKAiy52sBdgQfyV8bKoma
hjjJvCPg84UrKoqlUGKpI5DYd17w0TBiR/1xP23iAcYmWaH0nhFnUBKnxtp+u69V4RoxtkD40fim
Q9ySHtYN43NnGC4bfvOhqWbEfuzMr6R4PbtAxUKU+zsJO6OCKX1vFLKD2szUd9L8K8nyo6Xpt1N2
Xt7JwERsGrbRQoWeLaheoEcSYCFJj1ZoRXoKaREIHrxPLkCGBjtRASKMPPj12sCHtsoxtBcbbREh
IHVg2Im6ofK2oI0WD2ZwRRjRpOyQ4aJmQl9Kgoy5HYmMcjI3mWXmVwCuGrLFMbo8lKXD3RbJ/Vww
cYQ5iAMBzXFBy93RbkKWRB7NOFu2M2M0LrbWUDdngOekqH21EHA+mBzgkP8WA7g4EGBk9VRafiRL
s+9y9jqJhsF7oXQAOYRe//Tq6lVWwE8yNPtYIiCfIzgiDEOt55BA2u2RDJxttQ7AADiPQkOynSVR
/sdtEi0pR+ygbW339rTpF2h7WZL2VgShvFwOTjEOuownqbIuVRZJnJ6Slx9TnlV62KXNQWonGMfm
jZ5TZqf2Hz+nzE9RTp5T2hA5KBzvnsQNaSkk6iVxBH+npCY+aqtBikqE8EnCQ8iGJrwvrAe8HKDi
BhZm8NkAD5BpEMI31Wn8vTP4e9fFH5C3+HO1aS5KMlsXVVUoZdTtzH4No94zp/3RuC6PknyUxYd3
/K53EkTeNcA0zuJ0dHjOMHkk51GaZWmSTobuHZzh8bjOoyzJBnky9m92hslDHDYajNJhyzNOzzB5
rANTkozj3D/Dc+p52OfRIE1G+ST17zn1fAYYP3T8ncXndvLJAI6IJ6P08JwxqU0LCFOS5eNB++Tn
uHyCwFb5JJu0KibJOa4DJPI07mw1eMkFCD5g3A184jQZoyoh9LpTEICqKR3lzYIpk1VqLZ5uyIrw
8lfSLXFu5TNqCkPTHBnqOdK/oarpGTrz90R+cf6OSGzaIltgOvRvN4sFI/f0764o0LBVzVWgpmi4
mvHCIlyg3S9NzU2yNBtmeWJbkxcLwzgbN6XtqPzCIXNpK/5JQQoj4FgZbwlJwRTbRjq9Kspv0a6R
2yEsbTNwZDPa3YmmdVw4ayr0p5APFD/eQjF2tL4AQ/2l/PSiBiaIYCuQk51+EE6q6QDVZdMZWJ94
0+FENWuk0cJ0Lr8T2bCZ0ZGv2YJdshV3c1hLJx1mPyyXivhiHjcR5eJ2wzS92TLQq2M3BLT1MCDg
i64+6Nfx4HdyNeu4+mdJSxN7Zdu6toNzDdF/2Y1uKCsDTSvyfVtPSP/rSgeHOgb3AVfe4D4nNpB2
N5Q/ktL0WNbk/wtwhyQ8Azi79JboJ0IakC3cwOgKsGnQAl9HXbQ9q0wuMvvVpoDH51f6dsdl+I3U
z1R94Kw59xonlVTVb+FO8agum0RZodr5zxx/V4Bv9QGuBJD3z3DuO/paUq7vidZwathDdk0QdObX
cBoTaQNRw40Ekn5FuQoWcPWMRnkYmDtoNAoDuOHa/9ovOHYzGoQQbSPFDVpZsNmmdm57trnJv/YO
P/sHAAD//wMAUEsDBBQABgAIAAAAIQCLINQYzAgAAAYkAAAUAAAAeGwvY2hhcnRzL2NoYXJ0My54
bWzsWltv3DYWfl9g/4N2EKDtg2dEiqKkQezCcZB0sfbGiNM+7EvBkThjrXWZpTiO3V+/H0ndZhKN
g27aYgs7iD2izjnkufB8PDzz8vuHsvDupWryujqdkbk/82SV1llebU5nP354cxLPvEaLKhNFXcnT
2aNsZt+f/fUvL9NleiuUvtmKVHoQUjXL9HR2q/V2uVg06a0sRTOvt7LCu3WtSqHxqDaLTImPEF4W
C+r7fGGFzFoB4lcIKEVedfzqS/jr9TpP5es63ZWy0m4VShZCwwLNbb5tZmdQLhNaksRn3r0oTmf+
bGEGC1Ft3ICsTn68cYOq3lWZzC5qVcGMI/oyXZ4XWqoKoi7qSmO2Vs/yiyxVCnW3256kdbnF4lZ5
ketHu1wsELIvbmvo4b2X/9nlSjans5SwzhD4+IkpyjxVdVOv9RwSF84KnTeM2GgRL2jrDyhL2LLR
j4V0ChGfGm0X/bx2CW9EUaxEemdsMyLuSYf3hvHQGIbLut980LkupP3wYH6rPL09eymWqzp7vFaY
WSyLRt+YBdmHrRnZXivzJ5Pr95Zm0Q/ZcXWtPOOx05nzltf8ggiPfYT4yrjU8Mr1Wqb6stFGObEE
ixnVZzf5L9LT5dbLcuVZD6i8qSvPEGlHatmr7Foogen3Z5qSL3t6K8NpYQT9hqp8XNQHq/4i63gr
0cgiN3v+uKk8z1Plzx9rdWeMdTDVoPCvNdCiCwZ80DY2CvFY74zD0mWNzIXH0aYzVF0oiZ2uP5iH
17KQWmYjsnS5LWp9rqQwYkYSjcYXJrGZ8Q329hbJyjG6NKgyt+3vhXq8qIt6b8tjG0hYN13m2cPe
bLXKpNobcbrcu0ir132wfdsa8zvvB/oS2twjUjrNTUZw8pvHclUjcZvkVCEx282ZLgeCVFgNGq3e
y7VZ0frsGzLn3g91oz0kN/HN3168fsGW+EW4mcESgfxCIHcbhq2+QGbTbg4SOK232oNq2EbYPWZt
ZB7+fEXm67wSxbDarZ27o6WfoT1hhJ5spBBhtg6mGIMx4yQVG1OxuUpHZttfSLhPeXTRfEwbQiqZ
WmV0SMmmKONDynCKMjmktC5yobCvEzGb03giq5U4If4c/6akks5rm4CKTIh0knBwGTfu/UR7xMsQ
Ku7Bhhk+toGHyDTrqnbldPxdvaB8+eLqRRCbhdgABH0fgO7UcFFn8uytBLa6CBuNPhWknWmmDdLa
js05J8wPeMh9P4zDZNKFnWHAEQcJD6Io5AGLwDhlyy6IwZEEASbxSUgCHpFkiqMLaDaPDWkSRX7o
RzGhk+HSBTabR2HIIuYnfhhxcmSOLrwNR5DQhAQxiYMwCaKpVXVhDo4oTDjnjNE4Iv60rbpwNxwk
IYRTUAfRpBZd0NsZAhpiHsI4i9mkN/rgtyw0SfwIBxnzM7lb+z0Af1D4moaxn7ifKc3JyOl+QHkQ
h8xx2LgddiWCeIhf99DtinY7NGVd69sRDoCqRYxD4CAu4Y6Aox3ZA47uiDJCjZHqjnQAhWfUAKo5
AOs2mQWwZ9T4v0INnFquxqeWYdMBRWyp+fuABjIUjZFoOUdO59PpeZw/GAkiRn0eMprwSQgYgQZw
KWKRH/nBEQDoohl5EGQ0isESHgWyATIARZxxQmL88Y9oMUAGR2JGIo95m9GnEucAGTzhcRgALnkS
HtNjgAyApc8Aq0lMGSXxJCwNoMETEkWcPgnII9AAC4A/Dtp0PjnJCDSgBWdRBN/Zn0nYH4FGyEhE
ScACx3Lg9K8KGrbyRlk0VBvtyGdB47nAGB+znwuMttb88xQYl7bAuPzjCwyK06aP8zihyM8oA8KD
JGCqbXcu6bACHDj7I8cGJERi+wKsMBxxzGJkWOoAYyovd2hBw3lgyp2YEyCSj8phiqNDC8wRxxGN
SBwT4gehuzoYTsCDHh1aWA7CoEWUhHFy5DDfoQU4Es5CnLIBlMj8k/VCBxaGIYwCVD5JQoFN0cGx
fFhUBxaWgyIno4IJwmNq9GBhWQI/ClFcTVmphwlK5wYmKEM96ZL+JEvvb7DAQJSxwJUwo2O82ZBf
FSbay5wRTLQjn4eJ0VKeK4pnmPgTwgQqiss/vqJAjqGEJYQywkJ75TOVNvqswebIrchiHEk8Qakw
eR7tKgozB6cB7j38CDhBn76GMpkP8BBA+hNzjFAi9IF0BsCSIEEun9JjhBLmUgzF0VNJf4QSqLyi
iIUJ6pdj+DiCiZDHNIhMYXEEVkYgEaLqYriwM5hypPoag0SIoihBkyl+Iu93V7GACj+JaOL7Af4f
vbnqnU7nhJqiBYrsG/Z/AonsclU05s62ua0/XsoNWjf/kOPWinvzk2jbDm1P1FBfCP1PUbatwtH4
jVSfHb+WKjXdUNu+GNG/2q1WhbS9t+EVlOqX5q6y2paEuyD75EotXYqHv7e9HoLaGSebuJ3j4AWu
SHnbONlr++AK+9x2mg7oB0FNKsCxMdaqVQ5VbPfYravMqyvx0ModEWa2CbWns3i4rtuO8cppU4p/
1+pDnt5dodXjaLv2Dro7eTX9UoMJHuwFVvJBf6idVNP4bc7bjpS1Sac67uvNO9muwnTM/iVVy2ae
9mxdrIrzYlO5sVQrJx2j79brRnatIjRYbXOuqq92hc4v7wusa6Q3HNpbGG7+rKmH9Y0s+JVMXYxM
/VblmfF9Y1fcdw7dMee3aEJjHtNBzvLmzmtMk/nbt6++22uami62Pe+56WEtt5pRk/J42xPXYW9K
7Q03Yaeztn+Cr3LUO2y9y7y6k5np4lm1f6+gG/bPkaCzr15J/VHKNtBW7sGsFcZoIwaf9jq4Nl+Z
/VjYT/026GL0iZ6x4zL8RupPefOuKtrc1xoJHtu+wtcJ7przdrNsxNbZz6TA14jx5h3a0dj7B7He
dZO3Kq/0jdQamcMm2lsp0BV+g5aAVNYRW7GR2PibvGrsVxTQnJl55usn82jm4cst9q+2f/HCsZun
YAZvGynuoZeFyXZbZ7aDyc0e7L++c/ZfAAAA//8DAFBLAwQUAAYACAAAACEApy7zIcAGAAANFwAA
FAAAAHhsL2NoYXJ0cy9jaGFydDQueG1s7Bhdb9s28H3A/oNmBOj2EFnUt4QmReIu7bBkDZq0D3sZ
aIm2NUukRtJp0l+/IynKshOrxboPDKgixCJ1d7zv093zF/dN7dwRLipGTybI9SYOoQUrK7o8mby7
vThOJ46QmJa4ZpScTB6ImLw4/fab50VerDCXNy0uiANEqMiLk8lKyjafTkWxIg0WLmsJhXcLxhss
YcmX05LjD0C8qae+58VTTWTSEcB/gUCDK2rx+efgs8WiKshLVmwaQqXhgpMaS9CAWFWtmJyCcCWW
BGVe6Nzh+mTiTaZqs8Z0aTYIPX53YzY529CSlDPGKahxAN8U+VktCadAasaohNM6OZvP0lSD+XrT
HhesaYG5eVVX8kGzCwwC7dmKgRzOW/LHpuJEnEwKFFpFwOMjVTRVwZlgC+kCxanRgrWGIptM06nf
2QOERWEu5ENNjEDI85W00/5czcIFrus5LtZKNwPgHnT7XiHuK0NhafOrB1nJmuiHe/WfV8Xq9DnO
56x8uOZwMs5rIW8UQ3rRqp32mqufkizeaphpv6X3+TV3lMVOJsZajvgIHp564OJzZVKFSxYLUshL
IZVwOAcUtStP55Wc4zUIX3G5wbWzBjOSWoFIA6iRaXmNOYbDd885RJ308JoGyDC1ksKD1ILX+IFt
FDdFziAsYTnwKAVl9YQ3kt2qxUtSE0nKAViRtzWTZ5xgRWZAsa4omamoVftLcNwWItEgmhjnpfHp
O8wfZqxmO/4MNiagniKvynuDpA0NjPKS8J3zjSx3+2qcGjU6jDqvfSX8nVaBgVbubuiLh2bOICup
yKOQdbTnFfkWoMBaAiH5W7JQHC1OnyE3dl4zIR2IXPzsu6OXR2EO/1CsztFAAD7DkJgUQitnELbS
nIECI3UrHRANfARcQ/GG3Oi3K+QuKorB9JbbVp9tYf0nYI9D5B8vCcZRuQgOIQZDxINQ4RAqdHkx
UNsuI9Eu5CjT8RA2AqroEJfJPmR4CDLdh4wOQWb7kNpExhV2ZUIqSJXeS8bxMfJc+DtEFVmrLQMf
lxgXBwG3JouVeR9JD5beuopZaDeDx87xwDMVX3TTHPa/iyM/zo8ujoJUMaIdEOB7BzQlccZKcto0
uRBGsMHup5wUstgWGpJ9rsl0+jqspQ4gcTMfRX7SX8GPxwed0CosdVGQRiGKuyvxR5Csf8NJSZwE
MTKXl6UjSNbdUzf1/TiNUH+PIFnPT90k8ZEXhynq7hEkGwKZC1U+8jI/6u5wBMlGQ+Z6URYPThrB
sXEBImWZl4T9nY0g2RBJ3Sj2vSCxdzzGXR8tqRvEXpZFFg+hkaP6uEngrABl4fYaw7I+kbh+guIw
6E31mENw/63nm4WNpy6QRMOYXA0qCEB1tWa/5HSpelBykEnen1FyBlnua8k5GO02BnX1+1py/lcl
Bz55LoafPNu4gxKkm7D/rOKkbhb5abZNFCPZxSaXDBJZkgWZTejRWCKzBSeDjJR4adBfjzOS+v4z
n3rW2TM3ClMv8Pv0PJadbcHJ3ARBPxH11xh724KTeoO6m8TxiCK2BSfz/bBP6F44Vnltxclc6HWC
MPHtNaYIW3EyN05R6qe25IRj7PUVR6svi3qlj2PZLzWoU6CLramiEU0g6xNQEvtjtIkfS/VFBae8
nNdCfd2JFftwSZbQtP1Mhk2YefMemkLdoHSjAQU9w/IX3HQd82D/hvAn968JL9RQYJ/O+WY+r8lN
9XFICoTqWTOdUNe8mPL3qIQWOb7/qesKUeh7YRqHHU+7LyIvDEzHDr3isEGEj90z3ZPuwg8IiQID
xlJpi/EKRNFDFMNXU9ErfN+1bgPAUrerOzLj+2vWDU7mRpoG/874bVWsr6ApNLC2EYQ+sKKHX0pA
Agv2BCm5l7fMUFXzD3HW9a5KJ73o8GWv3pGOC9Vb/0p4h6ZWO7qu5/VZvaRmr5DcUIfdN4uFILap
hDmDbuMpu9rUsrq8q4Gvgdxg0F7D4AFPqXrA30CDf5Oq64GqX/GqVLYXmuN+xmC+kv6JWQyco0Yp
ZSXWjlCO/v2r8x92xitqmPNFAxKofReNfLJJcgTbQOhdVnRNStXva7H/JacbxM+I0+lX50R+IKRz
tLlZKF7BdTqPgaedWY/OVyoea/3Uh4H10U9MlwyWwldU31fiDa273NcpCSzWnsNUbS3OumBZ4tbo
T6XAl+Dj4g0MriD293zdzp1aXlF5Q6SEzKET7YpgmB9dQAtAuDZEi5cEAn9ZUaEndW4STRw1hXWT
iQMzXv0r9S+8MOhqFaiWWFExi54WHLZpjdr2Dlcx2E+xT/8EAAD//wMAUEsDBBQABgAIAAAAIQBC
NUHuzgMAAH0hAAAYAAAAeGwvZHJhd2luZ3MvZHJhd2luZzIueG1s7Jpfb5swEMDfJ+07IL+v/DUE
VFJNjTpNmro+bB/AIqRBAxwZ2qTffsbYGJO4SqJE4YGXCGy4M/b9fOe73D/sitx4T0mV4TIG9p0F
jLRM8DIrX2Pw98/TtxkwqhqVS5TjMo3BR1qBh/nXL/e7JYm21YIYVEBZRfQ2Buu63kSmWSXrtEDV
Hd6kJe1dYVKgmt6SV3NJ0JaKLnLTsSzfrDYkRctqnab1ou0BXB46Q1qBshLM2cjqLX5M8/x7mawx
aZtWBBftVYLzuX1vNl/QXLIX6MXv1WoOQwt6YdfXNLFugrdzB7btzbVobB5wZ7ZldV3sFSZbKqxx
p2RucylDzb5lWYHsUzSLER2rWeh7JWizzpIngorUKFBCcAz4BJXvP3qdL3yOkuf3F2Jkyxi4wCjp
WzF4XCNSGw4w+Sc8772Ior6eXzj5V9GH2+ndf5q1H9a+WxG6QijCq5WxiwE1xY/mlwpDUbqrjaRt
TEQrEyVe4mNonuWXC1Qj441kZ1hS0nw0nakkYlfcJpOzJXEBRyFCvz5L0gVO3oq0rFtOSJqjmhJa
rbNNBQwSNUtEfi7tZnJM5Yv793wV+svDVzHPqOxmgsRKHQDmQJM0acZQ0IHS2Xdjt3ZoCYvlWAlc
BHZDQz4eH0fCqegMocBzqNLhqA910lHCQ3ovAI+nwuNO8FTR+OBhe9ro4HGoO3E7rhQ3ICx8aMmu
FUL/aAekI+gTxd6sk95CR0fAQIch9KRXZINlm/IFGIIqQ97E0BgZYlvbzRhyOk6O9AVyv1ft2Pbc
U0I4DtswhOPSj3ZAlheIiI8D1X7PBejxVXrgRM8Y6WGb2s3ocaW9Kvj0AqOhKZ8YSslwUZh0g4yn
OXs5ge8IFzdU7HDUh64voORK53RRBxSoCPkTQmNEiO1s40OIMiSdxFFBnOPbIY/7FGdwKkMzX6fZ
kzGi6v1cGLiS7ItCRLNH/TRCMEE0RojY3nYziDxNGOfSE8mJeQSaBfC6o4o05MMMQY0f+iwTp/ND
MrCUWoXP66dfTszChSo+swmfMeLDdrXb4aMx409T2ZIS1RV4ziyQfdKWNQRpyHVmUEgZBnJaJ6Q7
gl2AIptmkvteKJwwGiNGbHe7GUZQJt2U05A+sSz3fJUhnSUfZsiXNR9F7zleyL5iRsG2VYgoVLR2
wGpo+0WeriLBSk9TSUgperbFpWuVhNjmNjqKfN/XeQRx5B8e7bXGrOFInrcUjmBgizLPni+SqWuV
YBp49kYlveAlfJEzwIiV8CaMTv/vwHUxare3a3DECiTNPyfm/wEAAP//AwBQSwMEFAAGAAgAAAAh
AA88stSkBQAAHxAAABQAAAB4bC9jaGFydHMvY2hhcnQ2LnhtbLxXX2/bNhB/H7DvoAkF+mRZkiVb
EmIXqbOsw5I1aNI+7GWgJNrmTJEqSbv2Pv2OpCTLTuwWQzdFcETq/t/veKerN7uKOlssJOFs6gae
7zqYFbwkbDl1Pz7dDhLXkQqxElHO8NTdY+m+mf34w1WRFSsk1GONCuyAECazYuqulKqz4VAWK1wh
6fEaM3i34KJCCpZiOSwF+gLCKzoMfX88NELcRgD6FwIqRFjLL76Fny8WpMA3vNhUmClrhcAUKYiA
XJFaujNwrkQKB6kfOVtEp67vDvUmRWxpNzAbfHy0m4JvWInLORcMwtijr4rsmiosGIiac6ZAW+Nn
9U2RqpBYb+pBwasajMsJJWpvzAUDQfZ8xcEP5wP+vCECy6lbBFEbCHh8FoqKFIJLvlAeSBzaKLTZ
0GInw2QYNvkAZ4Mok2pPsXUo8EPt7bDTa0y4RZTmqFjr2PSIO9LDe814GgzNZdKvHxRRFJuHnf4V
pFjNrlCW83L/IEAzyqhUj9ogs6j1Tv0g9L8SLz4YmmG3ZfbFg3B0xqZuly2UqVlOVI7W4BcRaoPo
cA0ZwtThzHkXXIEIBW6iDCRocfDbGgMPythG0Z5vlAEEh8qBZS/pmqp1BW0Uf9KLG0yxwmWPrMhq
ytW1wEh725NICcNzXVh6fwnYqqFYLKMtQ1Fa2G2R2M855UeQgzRgsLzISLk70sZFicXRjvVlO9NO
F9nWOGr3NO6sFLmvcg7Hgy4BBuVvIFBkB4ICGTulEh/wQutdzF4H3th5x6VyoITQ659e3byKMvgJ
xlqPIQLyOYITQjPUag71o6yOYGR9q5UDDsBx5GqS7Szw4j/vA29BGKIHa2uju6UNX6AdREE4WGKE
4nIxOsc46jOepYr6VJEnivCcvPiY8qLR4z5tDFJ7yTh2b3JKGZ3Tn5xSxuco01NKkyILhWPtgd+Q
llygQeB78HdOatBmbTkKUYlQcZbwkLKxTu8z7wEvB6jYhYEZPDbAA2RqhLBNdR5/txp/t338AXmH
P9ua5rzEs6rKpLR+9Xa/hlFomAdqOHQzI6YJ1/kgNQSJl8Zhko7iILH3z4OzEGzDlXqj8SQdpUkQ
mTsOLjC16E69cDLxk1F3RReYWrCnXhwl/iiM/Im90wtMLe5TbxIEiR931yXz2gJIvcQHA7trPL6g
qa2F1EvDMIpHE9/eUXiBqS0LrckfRZOwvS4Foq2Q1BsnQRImnaZL5nXFYsKXxl3Qo4tcbdkk3ghi
cUhVfMGpoMVE4h3UmBQ/9wqq5gB8u2irqSkjWXGuVr0uoWvOdoLyLqdSl5pc8S93eIlZ+Rvu9z37
5hNqukUzMGnqOVK/o6qZI3r7j1i8uP+ARaFHJdN1evRvN3lO8SP5uy8KLOxMs22p6SS2kTzzqMjQ
7temEQdRCLgZJ4mlPXkB8IiafnfUk+HkuTZjwAn9QZAsEHAsdbS4IOCKGS2tXRVh92jXyO0RlmZC
OPIZ7R54M07m1sIK/cXFEynW99ChLW3blaEpE3b+pQImyGAnkOGdeuJWqp4K5XUzLpiYtK7DMavf
4cYKPc78gUXDpldHsaY5vaZLZvcKJax02H2/WEjcdni/ySjj9xuqyN2Wgl09vyGhXYQBAS+G+mBf
L4LfKdS0F+pfBCl17qWZ9bqxzk5J/+WEuiG0dBSp8PedR6H8byv1YrtyJN9A2d0RtsalHryMy/8X
4A61cwFw5tVbrL5g3IAstwttK8CmQQs8HY3W5qzStUjNU1cCLT6/MsxbLs2vpX4i8j2jzbnXBKkk
sn4L3xlred0UyhLVNn76+LsBfMv38J0AdX+C83bMrwVh6hErBaeGOWRXGMG4fgunMRYmETVaYij6
JWHSyeFz1JvErqO/S72J68BXr/mv2heWXa9GejjRUuyikwXKNrUN24lyXX/dd/3sHwAAAP//AwBQ
SwMEFAAGAAgAAAAhAJEyiCmoBQAARxAAABQAAAB4bC9jaGFydHMvY2hhcnQ1LnhtbLxXW2/bNhR+
H7D/oAkF+mRZV9sRYhep06zDkjVo0j7sZaAk2uZCkSpJu/Z+/Q5JUZad2u2uiqGI5LnzOzyHl6+2
NfU2WEjC2dSPgtD3MCt5Rdhy6n94vBlMfE8qxCpEOcNTf4el/2r2/XeXZV6ukFAPDSqxB0KYzMup
v1KqyYdDWa5wjWTAG8xgbcFFjRQMxXJYCfQZhNd0GIfhaGiE+K0A9DcE1Igwxy++hZ8vFqTE17xc
15gpa4XAFCmIgFyRRvozcK5CCkcXYeptEJ36oT/UkxSxpZ3AbPDhwU4KvmYVruZcMAhjj74u8yuq
sGAgas6ZAm2tn/U3RapG4mndDEpeN2BcQShRO2MuGAiy5ysOfnjv8ac1EVhO/TJKXSDg81koalIK
LvlCBSBxaKPgdkOLHQ8nw7jdD3A2SnOpdhRbh6Iw1t4OO73GhBtEaYHKJx2bHnFHul/XjMfB0Fxm
+/WHIopi87HVb0HK1ewS5QWvdvcCNKOcSvWgDTKDRs8090L/q/DivaEZdlNmXtwLT+/Y1O92C+Vq
VhBVoCfslVzgAanREg8kUtzjzHsbX4IMBX6iHERoefB21sCHMsZRtONrZRDBIXVg2Nt1TeV8QWvF
H/XgGlOscNUjK/OGcnUlMNLu9iRSwvBcZ5aeXwK4GsgWy2jzUFQWdxskdnNO+QHmYB8wWF7mpNoe
aOOiwuJgxvqymWmny3xjHLVzGnhWitzVBYfzQecAg/w3GCjzPUGJjJ1Sifd4ofUuZi+jYOS95VJ5
kEPo5Q8vrl/EoxzeyUQrMlRAP0dwRmiORs0hg5RVEiXWuUZ54AEcSL4m2cyiIPvtLgoWhCG6N7cx
yh1t/AXaQRrFgyVGKKsWySnGpM94kirtU6WBKHtxOzQkO6Q8a/SoT5uB1OiUleNjyvQU5eSYMjtF
eXFMOTpFGYUtacUFGkRhAH8nad2uLZMYVQiVJwn3WzbS2/vMe8DLHip2YHAGny3yAJoaIWxdnwbg
GwPAN30AAn0HQFud5rzCs1Ve17mU2t7e7NdA6kJzOiBt7LIgnVxkk6R7ojeDkyhyscmCLBtPxmHi
fuMzTA7KWTDOknQcd09yhskhG5j6epLxOfMcyLNgNB6HPZ/OaXJoB01xNrpI3ZOc88kB/y9pcjmg
NUXhKJ1E7S8+EwiXDlkwieOLaNQ92RmmLjNgo5JJtHcqPacqcjkCBoZhnDjzJtHknK49KNJ0NM4u
Yvd7biFgeI9yO3C50yaNrDlXq15RAKq2fFS3BZU6seSKf77FS8yqn3G/zNmVj6gtDm2DpKnnSP2C
6rZv6M0/YPHF+XssSt0amSLTo3+9LgqKH8gffVFgYWearUJt3bBl45lHZY62P7V1N0rjJEuTMLW0
RwvZJDXKQcNBCYZz5spU/SP6vSBZIuBY6mhxQcAV00pau2rC7tC2LZs9wso0BAc+o+09b9vHwlpY
o9+5eCTl0x0UZEvrijDUYMJOLypggh3sBDK8VY/cStVdoLxquwMTE+c6HKp6DbdW6O7lVyxaNj06
iDUt6BVdMjtXKmGlw+y7xUJiV8/DdkcZv1tTRW43FOzq+Q3h7iIMCPhiqPf29SL4L4Wa9kL9oyCV
3ntpWruui7NN0X/Zka4JrQ46T9N+wuuog/UKJLG2sL2R6F7VU6TGB8z/uG2FY+OmVt6+AsJdwhZG
uAvyNaTrLWFPuNLtmQnV/wXUfc6dAapZeo3VZ4xbcBZ2oG0FuLUog6+DDtyccTqHqfnqUsfh+is9
v+XS/FrqRyLfMdqel22QKiKb13AfeZJXbYItUWPjp4/Na8gL+Q6uE3BeHOWHuw00gjD1gJWC08Yc
ziuMoKu/gVMcC7MRDdxm4LBYEia9AkACXYDv6ftrMPY9uB2b/8otWHY9SnzYbS3FDjpZoGzd2LAd
Kdd5293/Z38CAAD//wMAUEsDBBQABgAIAAAAIQASySiCVAEAAH0CAAARAAgBZG9jUHJvcHMvY29y
ZS54bWwgogQBKKAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACEklFLwzAUhd8F/0PJs22a
zY0Z2g6dzBcHghXFt5DcbcUmDUlmt39v2m61MkXIS3LP/e45lyTzvSyDTzC2qFSKSBSjABSvRKE2
KXrJl+EMBdYxJVhZKUjRASyaZ5cXCdeUVwaeTKXBuAJs4EnKUq5TtHVOU4wt34JkNvIK5Yvrykjm
/NVssGb8g20Aj+J4iiU4JphjuAGGuieiI1LwHql3pmwBgmMoQYJyFpOI4G+tAyPtrw1tZaCUhTto
n+lod8gWvCv26r0temFd11E9bm14/wS/rR6f26hhoZpdcUBZIjjlBpirTPYAPjJYvrsKbkvY+2Wa
XbBI8EDSrLNk1q385tcFiLvDn13nSj+rjdYNBBF4s7SLdqq8jhf3+RJlo5iMw3gaklke31BC6GTy
3hj50d+Y7x7k0c5/RDIKSZyTa9qcmwHxBMgSfPZhsi8AAAD//wMAUEsDBBQABgAIAAAAIQCqSnvf
ngYAABAfAAAnAAAAeGwvcHJpbnRlclNldHRpbmdzL3ByaW50ZXJTZXR0aW5nczEuYmlu7FZ5bBRV
GH9tlVbUFAVRCh5g4k1toVQIitndme3uurszzMxSxGOcnX3tjs7OG2feQIsRNfFAIh5AxFBRg6hI
PapRAf2j8foDtJFQCYfEeotiYwRPtOr3ZtsKVMFo/Mt5m8573/e+6/2+I40hEZ2BMshCBpqLMHKQ
izRkAk+EswF86n+bfU4EJWGvR3+skqPQsF2o7rTIbzeXl6AS9OVwUpGDvRLNLi1FpfAtA+EkWKbw
Y/b//SrpN8H2Uvg7FQ6/wTrUMhdPZyagERXJ4btHvrCncuqh9wfS3IEExD8caBb/0B8THIjgIKW/
Qfy1Xvnf0A5E/lsEDszOiAqE5JSSYB5HIFTxT/skbtkeDRsWigpSShYyUoRHEi9zySTKWIaDXXaK
iRzRM3E5E0eK42HEy6IUV2TPtolDca7IjGoulbCLarO2jeBATI8axEL1NTU520CiY1h0pqeZBm1t
cIhnI3Gmv6uTwH6EmMSRC5pDUcijpKBRQz+IrfoSgs1Muiqfa8YRYlGHmChNIoXcYWRjmtlEiYX/
TFDBLVRNY486mtngaK3uXwod0YrUEPZD/DMLYNrOG7p7RFeDgodzNyh0OJdinlByRH9FqcM5K0oc
4klwDGxRyBGkVxQkRQrFFchAkS0RuMG1U2tQVDNdjDjPNnELmsVLSjwSYsXkl4JghQnNy0YOuynN
growW/sVRM3GjmzMxyjJKwov+bm1XK+AnYjnQnH4AsWiS+GcoSmtNkahjCIgyIAJzpEQjYJWOuNi
zmhqihqOS0UNSiZPDB0jRcrwLAzg8C06LtZU1DAx8yTytXU1Q27jFsVOkwbKcp7MO1hziHCSzOMt
VpIHyxXZs7Az5AbinouduOVix8cUoPRosS8PhDoaivCc0JhGomfpecNqhlqDupapZpuDVEwcoAVo
Txe6s5gGXicWKZAc7qdZ6YfcsKnp1/VzQia80QL4kpjCKYa1AV2wyVoz5mVR3MJUleOcOql+shqG
fUptnRrz6SloMGq/ieGZMDZEh9hsGniOjjmNaihv63kTMK7WtSyIJG1DxibW/Yf770mIfANvaVnI
B5sFIMNrbmuxuQQLyFQMhlJaK7B8ReP9+VK5eFimBtXzqgKTRsEuRZzhMjMsFYOFojgYzzXwPJHY
MIP8cdY/flIMnIiQFCQ1JXA8Kybi+MxJdWymKQrgZdCCZrsyIMQQVxR2D88G/Fk0Ipf0ixF2VYwk
6xkrkeQtneSYeEaJTgVWgmRDuk48y7cBtBAORSKK6u9pRW2QhIyYDqVYkYaJYwkWAMfMhwUOvn5c
oqn5HiNi0WC4FawKUEUOdBRKhBNCkQ+OGokI873/pbNTSVbp0Bk5lgkPElFf3VIwQdrPcbFbZYjW
xKx8weqAKrsydIgEeAz9QW9yY7QR9Is5k0KNsk2IX5C+z0NmR0KCwe3CwIUkuQioGBf1TBNOMQ46
gMIggNAYJTQ1+Xua0KEXAAZkuMEkros43KR5JkWiHDKNZqsAs2mgm5My6+b/wdo9EqF4RoyNh//9
Wh7s3dFVXTbzlGEfzEtwXDh77pI5HS9cM+HXcHT6gnB22epjL0iUp2oWr7rq+RHXl42uvqVt95aj
ty8qdJ/fIfWM6aaJ9tHn7J+xdKm7v+udacbZPQ9O6/JKtO4Ve267fdXNy85alse96CNr9cZL0vvu
Vm9dfOYOc9yqquN/qn/ipHN+XLPvirUPfdO6s+3lFc1fyFtDT32I7h41dqy6+dK+ib/03Vm1vPrN
vTvfbI7Wt01s76t79o2e3mkr125tfLFZemz9oqteLBvWpGWPOWHd1U9uPbpv+kinctxbd216dUZW
Orvjto3zKxctED9oe6Y9k2/cxF+74P3x3j3runuqW/blb9rV2SOQGydyHHf6uTMastvvW+eW32Gt
XPtDx8KFVffP+VnsvuGySU5p+d501bIHrn14/Z5fQ18lXkpv+KZwESmvvTVkbjrhvNERqX7Cqs7U
011rptyrOBf2rr7ju5Lpevv678s+7Z1/2dPfLd/ySNvMcXqFPrvh3a6Pr9+41dj43h5pyfalL+2/
+LhTy5Zsm9zR+cnYR3vuJJcvTvV1jnryhzMW7l7+wLq7xKknHv/s21Xt419f8fVpnSs3bHY/29H3
cWzb3h9fe2XkidsqP+8TPsPqgm8fn+w2X97t3j7mufOuXLGwuNY8fvKYKWb1/6CGgycGCAQIBAgE
CAQIBAgECAQIBAgECAQIBAgECAQIBAgECCD0OwAAAP//AwBQSwMEFAAGAAgAAAAhACeIwiCdAQAA
UQMAABAACAFkb2NQcm9wcy9hcHAueG1sIKIEASigAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAnJNBb9swDIXvA/YfBN1jOU0RDIGsYmi35bBiAZJ2Z06mY6GOZIiskezXT46Rxt562o3ie3j6
JEr67nhoRIeRXPCFnGe5FOhtKJ3fF/Jp93X2SQpi8CU0wWMhT0jyznz8oDcxtBjZIYkU4amQNXO7
UopsjQegLMk+KVWIB+C0jHsVqspZfAj29YCe1U2eLxUeGX2J5ax9C5RD4qrj/w0tg+356Hl3ahOw
0Z/btnEWOJ3SPDobA4WKxZejxUarsagT3Rbta3R8MrlW46XeWmjwPgWbChpCra4NvUboL20DLpLR
Ha86tByiIPc7XduNFL+AsMcpZAfRgeeE1duGxbluWuJofob4QjUik1bJMDTP5dg7rt2tWZwNqZga
+4ABJAlTxJ3jBulHtYHI7xAvxsRnhoF3wJlnS7EOxKIEhjHmG/A8W8x616NLu3B6O+JbhLaenGlk
Xr4jT+D/wv3u/As9tbvwAIyXcUybeltDxDJN8KJfG3qdJhGbPuS+Br/H8uL5V+gfz/PwQ8z8NssX
eXoXo55W179g/gAAAP//AwBQSwECLQAUAAYACAAAACEA+3fPHuYBAADRDQAAEwAAAAAAAAAAAAAA
AAAAAAAAW0NvbnRlbnRfVHlwZXNdLnhtbFBLAQItABQABgAIAAAAIQC1VTAj9QAAAEwCAAALAAAA
AAAAAAAAAAAAAB8EAABfcmVscy8ucmVsc1BLAQItABQABgAIAAAAIQDeCf0oAgEAANQDAAAaAAAA
AAAAAAAAAAAAAEUHAAB4bC9fcmVscy93b3JrYm9vay54bWwucmVsc1BLAQItABQABgAIAAAAIQAi
fw0mfgEAAJ0CAAAPAAAAAAAAAAAAAAAAAIcJAAB4bC93b3JrYm9vay54bWxQSwECLQAUAAYACAAA
ACEA+2KlbZQGAACnGwAAEwAAAAAAAAAAAAAAAAAyCwAAeGwvdGhlbWUvdGhlbWUxLnhtbFBLAQIt
ABQABgAIAAAAIQAWE3USlwUAAFMPAAAVAAAAAAAAAAAAAAAAAPcRAAB4bC9jaGFydHMvY2hhcnQx
NC54bWxQSwECLQAUAAYACAAAACEA7lJiy5kFAABSDwAAFQAAAAAAAAAAAAAAAADBFwAAeGwvY2hh
cnRzL2NoYXJ0MTMueG1sUEsBAi0AFAAGAAgAAAAhAJyBRfDCBgAACxYAABUAAAAAAAAAAAAAAAAA
jR0AAHhsL2NoYXJ0cy9jaGFydDEyLnhtbFBLAQItABQABgAIAAAAIQCPba+f9gYAAHYWAAAVAAAA
AAAAAAAAAAAAAIIkAAB4bC9jaGFydHMvY2hhcnQxMS54bWxQSwECLQAUAAYACAAAACEAs4V7AKAF
AAAZEAAAFQAAAAAAAAAAAAAAAACrKwAAeGwvY2hhcnRzL2NoYXJ0MTAueG1sUEsBAi0AFAAGAAgA
AAAhALMX0fm8AQAAFwMAABgAAAAAAAAAAAAAAAAAfjEAAHhsL3dvcmtzaGVldHMvc2hlZXQzLnht
bFBLAQItABQABgAIAAAAIQA15KwAdwUAAFcaAAAYAAAAAAAAAAAAAAAAAHAzAAB4bC93b3Jrc2hl
ZXRzL3NoZWV0Mi54bWxQSwECLQAUAAYACAAAACEAO20yS8EAAABCAQAAIwAAAAAAAAAAAAAAAAAd
OQAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDEueG1sLnJlbHNQSwECLQAUAAYACAAAACEAKqgj
F/wAAADzBQAAIwAAAAAAAAAAAAAAAAAfOgAAeGwvZHJhd2luZ3MvX3JlbHMvZHJhd2luZzIueG1s
LnJlbHNQSwECLQAUAAYACAAAACEAHaUdpdMAAAC9AgAAIwAAAAAAAAAAAAAAAABcOwAAeGwvZHJh
d2luZ3MvX3JlbHMvZHJhd2luZzEueG1sLnJlbHNQSwECLQAUAAYACAAAACEAPQa0ZL0AAAArAQAA
IwAAAAAAAAAAAAAAAABwPAAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDMueG1sLnJlbHNQSwEC
LQAUAAYACAAAACEAFa+qPL0AAAArAQAAIwAAAAAAAAAAAAAAAABuPQAAeGwvd29ya3NoZWV0cy9f
cmVscy9zaGVldDIueG1sLnJlbHNQSwECLQAUAAYACAAAACEAy1J2cfoTAAAGWQAAGAAAAAAAAAAA
AAAAAABsPgAAeGwvd29ya3NoZWV0cy9zaGVldDEueG1sUEsBAi0AFAAGAAgAAAAhAEaNSUOuBQAA
FxAAABQAAAAAAAAAAAAAAAAAnFIAAHhsL2NoYXJ0cy9jaGFydDkueG1sUEsBAi0AFAAGAAgAAAAh
AJ1CzaWkBQAAIhAAABQAAAAAAAAAAAAAAAAAfFgAAHhsL2NoYXJ0cy9jaGFydDcueG1sUEsBAi0A
FAAGAAgAAAAhANi3wkLyBgAAfRcAABQAAAAAAAAAAAAAAAAAUl4AAHhsL2NoYXJ0cy9jaGFydDIu
eG1sUEsBAi0AFAAGAAgAAAAhAIgdtTuqBgAADhcAABQAAAAAAAAAAAAAAAAAdmUAAHhsL2NoYXJ0
cy9jaGFydDEueG1sUEsBAi0AFAAGAAgAAAAhAH+gC1G1AgAATA4AABgAAAAAAAAAAAAAAAAAUmwA
AHhsL2RyYXdpbmdzL2RyYXdpbmcxLnhtbFBLAQItABQABgAIAAAAIQAJmYphkgQAAIULAAAUAAAA
AAAAAAAAAAAAAD1vAAB4bC9zaGFyZWRTdHJpbmdzLnhtbFBLAQItABQABgAIAAAAIQAkvLzOxAQA
ABwbAAANAAAAAAAAAAAAAAAAAAF0AAB4bC9zdHlsZXMueG1sUEsBAi0AFAAGAAgAAAAhAKwKDlWY
BQAACxAAABQAAAAAAAAAAAAAAAAA8HgAAHhsL2NoYXJ0cy9jaGFydDgueG1sUEsBAi0AFAAGAAgA
AAAhAIsg1BjMCAAABiQAABQAAAAAAAAAAAAAAAAAun4AAHhsL2NoYXJ0cy9jaGFydDMueG1sUEsB
Ai0AFAAGAAgAAAAhAKcu8yHABgAADRcAABQAAAAAAAAAAAAAAAAAuIcAAHhsL2NoYXJ0cy9jaGFy
dDQueG1sUEsBAi0AFAAGAAgAAAAhAEI1Qe7OAwAAfSEAABgAAAAAAAAAAAAAAAAAqo4AAHhsL2Ry
YXdpbmdzL2RyYXdpbmcyLnhtbFBLAQItABQABgAIAAAAIQAPPLLUpAUAAB8QAAAUAAAAAAAAAAAA
AAAAAK6SAAB4bC9jaGFydHMvY2hhcnQ2LnhtbFBLAQItABQABgAIAAAAIQCRMogpqAUAAEcQAAAU
AAAAAAAAAAAAAAAAAISYAAB4bC9jaGFydHMvY2hhcnQ1LnhtbFBLAQItABQABgAIAAAAIQASySiC
VAEAAH0CAAARAAAAAAAAAAAAAAAAAF6eAABkb2NQcm9wcy9jb3JlLnhtbFBLAQItABQABgAIAAAA
IQCqSnvfngYAABAfAAAnAAAAAAAAAAAAAAAAAOmgAAB4bC9wcmludGVyU2V0dGluZ3MvcHJpbnRl
clNldHRpbmdzMS5iaW5QSwECLQAUAAYACAAAACEAJ4jCIJ0BAABRAwAAEAAAAAAAAAAAAAAAAADM
pwAAZG9jUHJvcHMvYXBwLnhtbFBLBQYAAAAAIgAiACMJAACfqgAAAAA=

--_009_1FFB62CE8AEB0D4298B51122D8903E9619FAC26EIRSMSX104gercor_--
