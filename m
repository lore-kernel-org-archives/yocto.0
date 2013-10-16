Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D62FE0161B
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 07:06:41 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 16 Oct 2013 07:03:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,507,1378882800"; 
	d="xml'?xlsx'72,48?scan'72,48,208,72,48,147,150,217?rels'72,48,208,72,48,147,150,217?gif'72,48,208,72,48,147,150,217,147?bin'72,48,208,72,48,147,150,217,147?png'72,48,208,72,48,147,150,217,147,150";
	a="411943079"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 16 Oct 2013 07:06:34 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 16 Oct 2013 15:05:05 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.69]) by
	IRSMSX152.ger.corp.intel.com ([163.33.192.66]) with mapi id
	14.03.0123.003; Wed, 16 Oct 2013 15:05:04 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Full Pass QA report WW41 - 1.5_M5.rc8 build
Thread-Index: Ac7KeDBAIJufH61VTgeKNA3mtYED6w==
Date: Wed, 16 Oct 2013 14:05:04 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F80F0A@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Full Pass QA report WW41 - 1.5_M5.rc8 build
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
X-List-Received-Date: Wed, 16 Oct 2013 14:06:43 -0000
X-Groupsio-MsgNum: 16543
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_"

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_007_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_";
	type="multipart/alternative"

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here is the full pass QA report summary for the 1.5_M5.rc8 release. The ful=
l detailed report is available at: https://wiki.yoctoproject.org/wiki/WW41_=
-_2013-10-08_-_Full_Pass_Release_1.5_M5.rc8

Highlights:

-          5354<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5354> -=
 compile issue for ppc on x86 machines using ADT

-          5330<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5330> -=
 yocto-bsp error on 3.10 kernel - fixed on master

-          5183<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5183>, =
5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182> - Beagleboar=
d issues regarding 3.10 kernel

-          5133<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5133> -=
 sudoku-savant project compile in sdk image. gcc garbage collector had some=
 issues



Testing data

 Test type: Full Pass Release

 Branch: Dora

 Milestone: M5

 Build name: 1.5_M5.rc8

 poky commit: faf8f8660fae26a14578738b642fdeb08bcb9d54

 Eclipse Plugin commit Kepler:  ad74249895f882a8f00bdeef7a0f7c18998cc43e

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/rel=
eases/dora-10.0.0.final/

 Distributions tested: Ubuntu 12.04 64bit, Ubuntu 13.10 64bit beta, Fedora =
19 64bit, Fedora 19 32bit, Fedora 18 64bit, OpenSuse 12.3 64bit, OpenSuse 1=
2.2 64bit, CentOS 6.4 64bit, CentOS 6.4 32bit, Debian 7 64bit




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

1483<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1483> 1482<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1482>

ADT: master branch

Fedora 19 i686

94.8%

none

0.9%

5354<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5354>

4.3%

5354<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5354>

100.0%

1480<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1480> 1481<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1481>

ADT: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1484<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1484> 1485<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1485>

BSP/QEMU: master branch

Beagleboard

50.7%

none

14.5%

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182> 3936<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936> 5211<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5211> 5183<https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5183>

34.8%

5183<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5183> 5182<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

100.0%

1423<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1423> 1426<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1426> 1463<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1463> 1464<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1464>

BSP/QEMU: master branch

generic-x86 on AtomPC

99.3%

5332<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5332>

0.7%

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005> 5351<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5351>

0.0%

none

100.0%

1424<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1424> 1427<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1427> 1458<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1458> 1459<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1459>

BSP/QEMU: master branch

genericx86-64 on Sugarbay

100.0%

5235<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5235> 5351<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D5351> 5332<https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D5332>

0.0%

none

0.0%

none

100.0%

1476<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1476> 1477<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1477>

BSP/QEMU: master branch

MPC8315e-rdb

100.0%

none

0.0%

none

0.0%

none

100.0%

1478<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1478> 1479<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1479>

BSP/QEMU: master branch

P1022ds

100.0%

none

0.0%

none

0.0%

none

100.0%

1465<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1465> 1466<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1466>

BSP/QEMU: master branch

qemu-x86

100.0%

none

0.0%

none

0.0%

none

100.0%

1491<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1491> 1492<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1492>

BSP/QEMU: master branch

qemuarm

94.2%

none

5.8%

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024> 684<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D684>

0.0%

none

100.0%

1486<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1486> 1487<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1487>

BSP/QEMU: master branch

qemumips

98.1%

none

1.9%

5133<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5133>

0.0%

none

100.0%

1489<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1489> 1490<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1490>

BSP/QEMU: master branch

qemuppc

98.1%

none

1.9%

5133<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5133>

0.0%

none

100.0%

1472<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1472> 1473<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1473>

BSP/QEMU: master branch

qemux86-64

98.1%

none

1.9%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

0.0%

none

100.0%

1474<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1474> 1475<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1475>

BSP/QEMU: master branch

Routerstationpro

100.0%

none

0.0%

none

0.0%

none

100.0%

1439<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1439> 1440<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1440> 1441<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1441>

Eclipse Plugin: master branch

Fedora 19 x86_64

92.6%

none

7.4%

5330<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5330>

0.0%

none

100.0%

1417<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1417> 1429<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1429> 1460<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1460>

Eclipse Plugin: master branch

Ubuntu 13.04 x86_64

92.9%

none

7.1%

5330<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5330>

0.0%

none

100.0%

1467<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1467> 1468<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1468>

Meta-yocto: master branch

Ubuntu 13.04 x86-64

100.0%

none

0.0%

none

0.0%

none

100.0%

1461<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1461> 1462<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1462>

Hob: master branch

Ubuntu 13.04 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1416<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1416> 1420<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1420>

OE-Core: master branch

Multiple environments

97.2%

none

2.8%

5146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146>

0.0%

none

100.0%

1433<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1433> 1434<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1434>

BitBake: master branch

Fedora 19 X86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

1422<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1422>

Runtime: master branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

1450<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1450>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

100.0%

none

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

29

FAILED

23

PASSED

1137

Total: 1189


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:29,23,1137&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(29)+2%25|FAILED(23)+2=
%25|PASSED(1137)+96%25]



Bug Status Report


ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW41_-_2013-10-08_-_Ful=
l_Pass_Release_1.5_M5.rc8>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW41_-_2013-10-08=
_-_Full_Pass_Release_1.5_M5.rc8>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW41_-_2013-10-08_-=
_Full_Pass_Release_1.5_M5.rc8>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW41_-_2013-10-=
08_-_Full_Pass_Release_1.5_M5.rc8>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW41_-_2013-10-0=
8_-_Full_Pass_Release_1.5_M5.rc8>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW41_-_2013-10=
-08_-_Full_Pass_Release_1.5_M5.rc8>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW41_-_2013-10-08_=
-_Full_Pass_Release_1.5_M5.rc8>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW41_-_20=
13-10-08_-_Full_Pass_Release_1.5_M5.rc8>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW41_-_2013-10-=
08_-_Full_Pass_Release_1.5_M5.rc8>

684<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D684>

Medium

ACCEPTED

1492<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1492>

On qemuarm, the command 'poweroff/shutdown' can't close the qemu completely=
 and exit to host console with Laverne build 20110121

1.3

1.6

984

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

Medium

ACCEPTED

1472<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1472>

Windows switching failure

1.2

1.5

473

3936<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3936>

Medium

NEEDINFO

1484<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1484>

[beagleobard xM] Some error message with usbhs_omap in dmesg

1.4

1.5

224

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

1463<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1463>

dmesg log errors in Atom-PC

1.3.1

1.5

211

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

Undecided

REOPENED

1491<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1491>

start qemuarm with "core-image-sato", use "dmesg | grep -i error" shows 2 e=
rrors

1.4

---

207

5133<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5133>

Medium+

RESOLVED

FIXED

1487<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1487> 1490<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1490>

[Test Case 207] sudoku-savant project compile in sdk image

1.5

1.5 M5

32

5146<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5146>

Medium

WaitForUpstream

1416<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1416>

btrfs image build fails at do_rootfs

1.5

1.5 M5

29

5182<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182>

Medium+

NEW

1485<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1485> 1484<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1484>

[Beagleboard xM]X can not startup with 3.10 kernel

1.5

1.5.1

25

5183<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5183>

Medium+

NEW

1484<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1484> 1485<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1485>

[Beagleboard xM] Network interface doesn't work with 3.10 kernel

1.5

1.5.1

25

5211<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5211>

Medium

NEW

1485<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1485>

[Beagleboard xM] USB doesn't work with 3.10 kernel

1.5

1.5.1

21

5235<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5235>

Medium

RESOLVED

FIXED

1424<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1424>

generic-x86_64 dmesg errors on Sugarbay

1.5

1.5

19

5330<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5330>

Medium

RESOLVED

FIXED

1440<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1440> 1429<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1429> 1439<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1439> 1417<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1417>

yocto-bsp error on 3.10 kernel

1.5

1.5.1

NEW

5332<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5332>

Medium

NEW

1459<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1459> 1464<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1464> 1426<https=
://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1426>

CPU Overloaded after USB Stick Unmount using File Manager

1.5

1.5.1

NEW

5351<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5351>

Undecided

NEW

1463<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1463> 1458<=
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1458>

genericx86 auth.err getty[615]: tcgetattr: Input/output

1.5

---

NEW

5354<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5354>

Undecided

NEW

1482<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1482>

Incorrect path set for ppc adt in x86 machines

1.5

---

NEW

Total: 15




Here is the performance chart for the 1.5 release. The data used to generat=
e them is available on the wiki: https://wiki.yoctoproject.org/wiki/Perform=
ance_Test.
Also, the spreadsheet is attached with more charts.

[cid:image001.png@01CECA8F.C7539200]

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
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
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1649476650;
	mso-list-type:hybrid;
	mso-list-template-ids:1092899374 1643157208 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:5354;
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
<p class=3D"MsoNormal">Here is the full pass QA report summary for the 1.5_=
M5.rc8 release. The full detailed report is available at:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW41_-_2013-10-08_-_Full_Pass=
_Release_1.5_M5.rc8">
https://wiki.yoctoproject.org/wiki/WW41_-_2013-10-08_-_Full_Pass_Release_1.=
5_M5.rc8</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Highlights: <o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5354"><b>5354</b></a> &#8211; compile issue for ppc on x86 mach=
ines using ADT<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5330"><b>5330</b></a> - yocto-bsp error on 3.10 kernel &#8211; =
fixed on master<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5183"><b>5183</b></a>,
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5182"><b>518=
2</b></a> - Beagleboard issues regarding 3.10 kernel<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D5133"><b>5133</b></a> - sudoku-savant project compile in sdk im=
age.
<span style=3D"font-family:Consolas">gcc garbage collector had some issues<=
/span><o:p></o:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in">
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testi=
ng data</span></span><span style=3D"font-size:18.0pt;font-family:&quot;Aria=
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
"><span style=3D"color:black"> Branch: Dora<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: M5<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: 1.5_M5.rc8<o:p></o:p></span></pr=
e>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: faf8f8660fae26a14578738b642fdeb=
08bcb9d54<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit Kepler:&nbsp; ad742498=
95f882a8f00bdeef7a0f7c18998cc43e<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/releases/dora-10.0.0.final/<o:p></o:p></span></p=
re>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested: Ubuntu 12.04 64bit, Ub=
untu 13.10 64bit beta, Fedora 19 64bit, Fedora 19 32bit, Fedora 18 64bit, O=
penSuse 12.3 64bit, OpenSuse 12.2 64bit, CentOS 6.4 64bit, CentOS 6.4 32bit=
, Debian 7 64bit<o:p></o:p></span></pre>
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
<span class=3D"mw-headline"><span style=3D"font-size:18.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p>=
&nbsp;</o:p></span></span></h1>
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in">
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
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
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
rg/tr_show_run.cgi?run_id=3D1483"><span style=3D"color:#5A3696">1483</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1482"><span style=3D"colo=
r:#5A3696">1482</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">94.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">0.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5354"><span style=3D"color:#5A3696">5354</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">4.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5354"><span style=3D"color:#5A3696">5354</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1480"><span style=3D"color:#5A3696">1480</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1481"><span style=3D"colo=
r:#5A3696">1481</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1484"><span style=3D"color:#5A3696">1484</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1485"><span style=3D"colo=
r:#5A3696">1485</span></a><o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">50.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">14.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">393=
6</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5211"><span style=3D"col=
or:#5A3696">5211</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5183"><sp=
an style=3D"color:#5A3696">5183</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">34.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5183"><span style=3D"color:#5A3696">5183</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">518=
2</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1423"><span style=3D"color:#5A3696">1423</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1426"><span style=3D"colo=
r:#5A3696">1426</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D146=
3"><span style=3D"color:#5A3696">1463</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D1464"><span style=3D"color:#5A3696">1464</span></a><o:p>=
</o:p></span></p>
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
<span style=3D"font-size:10.0pt">99.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5332"><span style=3D"color:#5A3696">5332</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">0.7%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">4005</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5351"><span style=3D"color:#5A3696">535=
1</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1424"><span style=3D"color:#5A3696">1424</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1427"><span style=3D"colo=
r:#5A3696">1427</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D145=
8"><span style=3D"color:#5A3696">1458</span></a><span class=3D"apple-conver=
ted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sho=
w_run.cgi?run_id=3D1459"><span style=3D"color:#5A3696">1459</span></a><o:p>=
</o:p></span></p>
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
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5235"><span style=3D"color:#5A3696">5235</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D5351"><span style=3D"color:#5A3696">535=
1</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5332"><span style=3D"col=
or:#5A3696">5332</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1476"><span style=3D"color:#5A3696">1476</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1477"><span style=3D"colo=
r:#5A3696">1477</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1478"><span style=3D"color:#5A3696">1478</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1479"><span style=3D"colo=
r:#5A3696">1479</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1465"><span style=3D"color:#5A3696">1465</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1466"><span style=3D"colo=
r:#5A3696">1466</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1491"><span style=3D"color:#5A3696">1491</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1492"><span style=3D"colo=
r:#5A3696">1492</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">94.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">5.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D684"><span style=3D"color:#5A3696">684<=
/span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1486"><span style=3D"color:#5A3696">1486</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1487"><span style=3D"colo=
r:#5A3696">1487</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">98.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5133"><span style=3D"color:#5A3696">5133</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1489"><span style=3D"color:#5A3696">1489</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1490"><span style=3D"colo=
r:#5A3696">1490</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">98.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5133"><span style=3D"color:#5A3696">5133</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1472"><span style=3D"color:#5A3696">1472</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1473"><span style=3D"colo=
r:#5A3696">1473</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">98.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1474"><span style=3D"color:#5A3696">1474</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1475"><span style=3D"colo=
r:#5A3696">1475</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1439"><span style=3D"color:#5A3696">1439</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1440"><span style=3D"colo=
r:#5A3696">1440</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D144=
1"><span style=3D"color:#5A3696">1441</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Eclipse Plugin: master branch<o:p></o:p></=
span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Fedora 19 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">92.6%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">7.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5330"><span style=3D"color:#5A3696">5330</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1417"><span style=3D"color:#5A3696">1417</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1429"><span style=3D"colo=
r:#5A3696">1429</span></a><span class=3D"apple-converted-space">&nbsp;</spa=
n><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D146=
0"><span style=3D"color:#5A3696">1460</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Eclipse Plugin: master branch<o:p></o:p></=
span></p>
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
<span style=3D"font-size:10.0pt">92.9%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">7.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5330"><span style=3D"color:#5A3696">5330</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1467"><span style=3D"color:#5A3696">1467</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1468"><span style=3D"colo=
r:#5A3696">1468</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1461"><span style=3D"color:#5A3696">1461</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1462"><span style=3D"colo=
r:#5A3696">1462</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1416"><span style=3D"color:#5A3696">1416</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1420"><span style=3D"colo=
r:#5A3696">1420</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">97.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">2.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D5146"><span style=3D"color:#5A3696">5146</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D1433"><span style=3D"color:#5A3696">1433</span>=
</a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://b=
ugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1434"><span style=3D"colo=
r:#5A3696">1434</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Fedora 19 X86_64<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D1422"><span style=3D"color:#5A3696">1422</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Runtime: master branch<o:p></o:p></span></=
p>
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
rg/tr_show_run.cgi?run_id=3D1450"><span style=3D"color:#5A3696">1450</span>=
</a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Build Appliance: master branch<o:p></o:p><=
/span></p>
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
<b><span style=3D"font-size:10.0pt">Total: 21</span></b><span style=3D"font=
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
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"background:#EEEEEE;border-collapse:collapse;border:none;bac=
kground-position:initial initial;background-repeat:initial initial">
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
<span style=3D"font-size:10.0pt">29<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">23<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1137<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 1189</span></b><span style=3D"fo=
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
idth=3D"432" height=3D"120" id=3D"Picture_x0020_11" src=3D"cid:image002.png=
@01CECA90.D87DAF60" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;=
chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:29,23,1137&amp;chco=3DFFFF66|FF9933|=
00FF00&amp;chl=3DBLOCKED(29)&#43;2%25|FAILED(23)&#43;2%25|PASSED(1137)&#43;=
96%25"></span><span style=3D"font-size:10.0pt"><o:p></o:p></span></p>
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
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:7.5pt;background:#EEEEEE;border-collapse:collap=
se;border:none;background-position:initial initial;background-repeat:initia=
l initial" id=3D"sortable_table_id_0">
<tbody>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;background:#BBBBBB;padding:2.4pt 2.=
4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">ID</span></b><a href=3D"https://wiki.yoctoproj=
ect.org/wiki/WW41_-_2013-10-08_-_Full_Pass_Release_1.5_M5.rc8"><b><span sty=
le=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0=
" width=3D"12" height=3D"14" id=3D"Picture_x0020_10" src=3D"cid:image003.gi=
f@01CECA90.D87DAF60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"=
font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW41_-_2013-10-08_-_Full_Pass_Release_1.5_M5.rc8"><b><sp=
an style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:image0=
03.gif@01CECA90.D87DAF60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span styl=
e=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW41_-_2013-10-08_-_Full_Pass_Release_1.5_M5.rc8"><b><span=
 style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:image00=
3.gif@01CECA90.D87DAF60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW41_-_2013-10-08_-_Full_Pass_Release_1.5_M5.rc8"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"cid:imag=
e003.gif@01CECA90.D87DAF60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span st=
yle=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW41_-_2013-10-08_-_Full_Pass_Release_1.5_M5.rc8"><b><s=
pan style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"cid:image=
003.gif@01CECA90.D87DAF60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span sty=
le=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description</span></b><a href=3D"https://wiki.=
yoctoproject.org/wiki/WW41_-_2013-10-08_-_Full_Pass_Release_1.5_M5.rc8"><b>=
<span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bo=
rder=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D"cid:ima=
ge003.gif@01CECA90.D87DAF60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span s=
tyle=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW41_-_2013-10-08_-_Full_Pass_Release_1.5_M5.rc8"><b><spa=
n style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=3D"cid:image00=
3.gif@01CECA90.D87DAF60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone</span></b><a href=3D"https://=
wiki.yoctoproject.org/wiki/WW41_-_2013-10-08_-_Full_Pass_Release_1.5_M5.rc8=
"><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><i=
mg border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"ci=
d:image003.gif@01CECA90.D87DAF60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><s=
pan style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW41_-_2013-10-08_-_Full_Pass_Release_1.5_M5.rc8"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2" src=3D"cid:imag=
e003.gif@01CECA90.D87DAF60" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span st=
yle=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D684"><span style=3D"color:#5A3696">684</span></a><o:p></o:p><=
/span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Medium<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1492"><span style=3D"col=
or:#5A3696">1492</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">On qemuarm, the com=
mand 'poweroff/shutdown' can't close the qemu completely and exit to host c=
onsole with Laverne build 20110121<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.3<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.6<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">984<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1472"><span style=3D"col=
or:#5A3696">1472</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Windows switching f=
ailure<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.2<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">473<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D3936"><span style=3D"color:#5A3696">3936</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">NEEDINFO<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1484"><span style=3D"col=
or:#5A3696">1484</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[beagleobard xM] So=
me error message with usbhs_omap in dmesg<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">224<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1463"><span style=3D"col=
or:#5A3696">1463</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">211<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1491"><span style=3D"col=
or:#5A3696">1491</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">start qemuarm with =
&quot;core-image-sato&quot;, use &quot;dmesg | grep -i error&quot; shows 2 =
errors<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">207<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5133"><span style=3D"color:#5A3696">5133</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1487"><span style=3D"col=
or:#5A3696">1487</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D14=
90"><span style=3D"color:#5A3696">1490</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Test Case 207] sud=
oku-savant project compile in sdk image<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">32<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5146"><span style=3D"color:#5A3696">5146</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">WaitForUpstream<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1416"><span style=3D"col=
or:#5A3696">1416</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">btrfs image build f=
ails at do_rootfs<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5 M5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">29<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5182"><span style=3D"color:#5A3696">5182</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1485"><span style=3D"col=
or:#5A3696">1485</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D14=
84"><span style=3D"color:#5A3696">1484</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Beagleboard xM]X c=
an not startup with 3.10 kernel<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">25<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5183"><span style=3D"color:#5A3696">5183</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1484"><span style=3D"col=
or:#5A3696">1484</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D14=
85"><span style=3D"color:#5A3696">1485</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Beagleboard xM] Ne=
twork interface doesn't work with 3.10 kernel<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">25<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5211"><span style=3D"color:#5A3696">5211</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1485"><span style=3D"col=
or:#5A3696">1485</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Beagleboard xM] US=
B doesn't work with 3.10 kernel<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.5.1<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">21<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5235"><span style=3D"color:#5A3696">5235</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">RESOLVED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">FIXED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1424"><span style=3D"col=
or:#5A3696">1424</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">generic-x86_64 dmes=
g errors on Sugarbay<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">19<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5330"><span style=3D"color:#5A3696">5330</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1440"><span style=3D"col=
or:#5A3696">1440</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D14=
29"><span style=3D"color:#5A3696">1429</span></a><span class=3D"apple-conve=
rted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D1439"><span style=3D"color:#5A3696">1439</span></a><spa=
n class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.=
yoctoproject.org/tr_show_run.cgi?run_id=3D1417"><span style=3D"color:#5A369=
6">1417</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">yocto-bsp error on =
3.10 kernel<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.5.1<o:p></o:p></span></p>
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
_bug.cgi?id=3D5332"><span style=3D"color:#5A3696">5332</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">NEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1459"><span style=3D"col=
or:#5A3696">1459</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D14=
64"><span style=3D"color:#5A3696">1464</span></a><span class=3D"apple-conve=
rted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_sh=
ow_run.cgi?run_id=3D1426"><span style=3D"color:#5A3696">1426</span></a><o:p=
></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">CPU Overloaded afte=
r USB Stick Unmount using File Manager<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5.1<o:p></o:p></span></p>
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
_bug.cgi?id=3D5351"><span style=3D"color:#5A3696">5351</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1463"><span style=3D"col=
or:#5A3696">1463</span></a><span class=3D"apple-converted-space">&nbsp;</sp=
an><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D14=
58"><span style=3D"color:#5A3696">1458</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">genericx86 auth.err=
 getty[615]: tcgetattr: Input/output<o:p></o:p></span></p>
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
_bug.cgi?id=3D5354"><span style=3D"color:#5A3696">5354</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D1482"><span style=3D"col=
or:#5A3696">1482</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Incorrect path set =
for ppc adt in x86 machines<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 15</span>=
</b><span style=3D"font-size:10.0pt"><o:p></o:p></span></p>
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
<p class=3D"MsoNormal">Here is the performance chart for the 1.5 release. T=
he data used to generate them is available on the wiki:
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test">https://wik=
i.yoctoproject.org/wiki/Performance_Test</a>.<o:p></o:p></p>
<p class=3D"MsoNormal">Also, the spreadsheet is attached with more charts.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"951" height=3D"549" id=3D=
"Picture_x0020_1" src=3D"cid:image001.png@01CECA8F.C7539200"><o:p></o:p></p=
>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_--

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=107803;
	creation-date="Wed, 16 Oct 2013 14:05:02 GMT";
	modification-date="Wed, 16 Oct 2013 14:05:02 GMT"
Content-ID: <image001.png@01CECA8F.C7539200>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAA7cAAAIlCAIAAACB35ioAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAO
xAAADsQBlSsOGwAA/7VJREFUeF7snQV8FEcbxvf8cpdc3N2QENzdpRSX0hYppUgpFC0tVopTrMXd
3aG4u0OQQAhxdz/J+d33bI5SGugHSS4++0vT47I78p/ZmWfeeWeGodfrKXIRAoQAIUAIEAKEACFA
CBAChMA7BBj5VDIRzaR6EAKEACHwXwQYDEah4SQmJsbExCCEogRS6NjJg4QAIUAIEALvE9DpdFZW
VlWrVv0gnH9UcnBwcEhICI/HIy04qUaEACFACLxPQK1W29jYNG3atHBwzp8/b21tbW5uTtrYwgEk
TxEChAAhYHQCUMkvX77s1q0bBPD7gf+jkq9du+bu7u7q6mr0FJAACQFCgBCoAARyc3Nv3779+eef
Fy4vly9fbtKkiampaeEeJ08RAoQAIUAIFAeBixcvtmjRQiAQ/D+VfPPmTW9vb2dn5+JIAQmTECAE
CIHyTkChUNy4caNz586FywhUcr169TC1V7jHyVOEACFACBACxUHgwoULrVq1MjExeT9w5rtfEafk
4qBPwiQECIGKQYC0kBWjHEkuCAFCgBD4RAL/Usmf+Ay5jRAgBAgBQoAQIAQIAUKAEKjYBIhKrtjl
S3JHCBAChAAhQAgQAoQAIVAYAkQlF4YaeYYQIAQIAUKAECAECAFCoGITICq5YpcvyR0hQAgQAoQA
IUAIEAKEQGEIEJVcGGol9Yxeo1ap1JpPOR1Rr9OqVCqt7lPuLankl+d49FqVXKEqUznQaTX5ilir
VipUZSuRZYoYSQwh8FECeh39WinzLtU7ba1WrVKrde8//uzshkmT5j1JVHw0ZEoSs2b2pAWbzud+
/NZivUOPbkSjJV1DwSBLIq/PmTD626FzApLlBXuS3F2xCBCVXJLlqQ59cv30qZPHjhw5euz47ddJ
hrjFicFnTp9+HpGePymSsO87VWv6xYK0T0hj+LnFvr5Vl54K/oR7i/GWxNd3T5++GJP5CV1IMaai
qEGr4u70aOg1YOGZMtWxPNo7xde33o57iW+zl3x7s793tVmHg4qaYfI8IVBZCQSdWFjd18fVyd7G
xtaldqs/TwZh3KlNudunqmv1dlPiKEqRGnb29OlncdkGQi8ubfvzz6XPkz+hiZPGbvr9z+U7rnzC
rcVIP/bmxlqurj0n7VIWYySFDDo7Nuj06TOvkqSFfN54j6kliddOn74V/KZ11Ukjfvm6x+xV+wNf
ByVnlUFyxss5CeljBIhK/hghY/5dum3WwO49en4xaNBXffu0a9V+/v5HCP7pvt+6de/+0+a7+Hxp
+ZQvh818mZFnw9AqE6KiImJTtZ+QBqUkLTY2Ok1cuu+zav/PX3Tv3nnb7dhPSHIJ35J7dM7YL8cs
ipZ8PN6HJzeefpraoEmtwh9G/PFICnyHPCspNjYsK1fz9knH+m1qaqO3bNqZVabkfIFzRh4gBEqN
gCI7MTI2rvFX01atWtZA82BS/0G3knUMDosrEJo7WdlQlCzw6Ofduy+78caowRWaU5SlwOQDpw/k
zwOTY2FNWZkLSy1veREzKBZPKLSwMy9TrZmBSfKNLd27d9v2TFy6iBA7O/vxoO7dR++ie2RczMzg
sw8kNX7cEHD/0OfVLUo9eSQBpUiANXv2bEP0MTExlpaWIpGoFFNT0aNWXNm/4XZW4zvRj37/psnZ
VWtORTGHf9vNisfUCpz6DviiurPZ6TnDlx+N7D9prCfO51KkHdq+KdW81cRhnfgfQ5MefHXd4fut
+o7qUMvhY/cW39+ZbDZT6NK8f59OTiJu8UVTqJA1+ycPWX9N8t1P39r//6Tp0tb8PP4Ru8PKBaPt
eGWoZ4l5fHLHuciuQ0Y38XrTajN4drz0i1uPvmz15VBfK06hsJCHCkBAo9GgnfTx8SnAM+/cGhkZ
6ejo+MGN6wsXIHmq6ASSA89uOvHyhxVHvu/R1DTlyoHrD+r3mtzEW8Ti8uu07+lOha7fsPvW03AO
j6sRK71qVo2/uefg3dyuPRsFnz9683GI0M3PzpRFJyM7fMvWXTfv3g94Gu/g52eORkYWv33jVold
67GD2nLSg7ZtPxgmNfH3tM8Kubxl78l7D5+oTT3d7f6ltoOvHz7w16V7gTH23n6WfLrxeXxhz+HT
V+8/fJzNcfJxpHvn+GcXjgYk2VJpO3cfSue7VHEQ6TND9uzYe+3OgwSJyM/bNh8TNofDFdi06PxZ
dXvd+cO7wph2nJBbO45fCI5R1/J3i7t3cMexayFJYp/q3oZ2MfD6kf0nLiLGFJmomieGCYYvjx44
cfFRwLPA5wEBz9M96/qYUPLLBzeevHz32WtJ1TreHzjYV5VybM+OC9fvRqSw/ao5wSCnTnm5Ycu+
u/cfPHme5t2gam7wpdWbD94NiuNxOSqJxtPPx4RJKRKebt156Pa9+0/Cc3xr+fxXx6dJD9m/ff/V
u/cSKHs/F8u8NKoeXTp6P5XBi3+w6+gNgbufvRlHFvt4667Dd+49eBIpqVrzn0Q+vbTv0KkryGMm
097X2UKZ/HLLxi2Xbz7XcrlsuUZoRp3fs+7Y9ZemVuZ6tqCmvzc7LWjr9v037z7IYTj6uLxpfote
90gIZYdAREQEDp/mcD7UjWKffMOFM6Xi4uLe/pN8KAYCmb987kw59k6ig37d3oXi1R+YoNEn3t7e
v+9Xh++F75/3mYMZj2KauPtWH/H7ab0qtl8NvlOTQb9NGeRXo1bb3uPuxOXgSXlW3Obfvq3h5+fn
X7vH4LmvM3PxZdChKbAaTDscir9vmda7SdvPL4dr5GmhM4c0xY11Gn55+FGk9p8s6eIen/imfX38
qfm3c2Ol+Is27Py2bi1q0zc37rn5fBB9syp5wYQvRizdtmJUN7/GX9xO0ukV2dtnDahJx9xq4a6r
ue+EaAj71vbpfb8YF5ChT3+wuXOP3msP7h7dqm7t+k0mLDoUFHhpaEc/fB639GiuTq/XqRIe7u/R
io6xboOOyw8+VOBLvT4z8ESfdvUQQ+PmrVs1bfjjsvO49fHe+S1q1wCEb37emCJV5y8ajfTipl/q
1/b382s4fdN1/Dk3I3zZ5AEI2a9m3a/GrE7JyV41tomtgENxTL2q+k1cfZHGmBa+fGLvmuDoX/ur
n9elvg026XptM6ragHkyOhrFnvnf9pu5avuMb2vUbHcoIP7kov7dflq8b8W0BnQKBx+6++rcxkm1
a/g3adfzOLL9wSsndMqAtp8PX5JI40qYM6RjlxGLUvFZHf5Ll9bdpm3DR3FswIyhHZCBGrXq/fD7
AbGSDuj2tikdf/jtwMoZ/n7+886EBu4YTlGiVbcy9ZrsJT+0a97566fJ+hC63KmRm+4VQ3UlQeYn
gBOqz59HhSzkdenSpYyM/6gkhQySPFZUAgE7xjAo7tjV51++vDW4prNX++9DpDpdxt2mJpRjv7WP
zyz0yTMG880sPOsPDJbrz87vTrEEHt7VfR1pPerUqNedFK0+9d7gho5CGwcHBzt8Wavr5HCVXp9+
v6UjVbX3H7Lc+HGtRBTba93NmMjLqxrZC0xsHOxEXFPramsvRfydAc2ZVWNsWRTXwtbawrzr9D0q
lWTdqF6mPMrc1tYWWtrUZ96++2gjz8/rSpnZ1PNwN7Ox+37nE3ni1a9r2JkILR0czDlM2x9Wn9H8
G0n81T+gNbsuuqHXhX/mRlE2zjW9fa1pFS9s0LxJzSqutuh0KM6Unffx3KUV3zjYWNHZMENr6brw
cACa3zvbp1iZ8pAMg2Z1rPVjpDpu+aAO5nwO7mRTJm2+nR0t/1esmpzo2V/5m1qYOzk4WFjWXncv
XRt3qWcNO6EtnrBGV9V+1KqTO39yE9FHnZmILP1aj0b/FHV1bWt3U4qNqHA+Jav5FzNfS95r7fV6
acSF3rXBmQMwIr+W517nNdX67J+7OVEOvvUdbKxdGux/JYm+srq5i5DiWNjaQkazW381OxyJ1Kav
+6EvcizCwyhYgee8g08zgg43cxdhrMMWiByq9Nh9bF+PmmaQ9TyhuWP3X14+vz60hb3A0t7B3tq6
Wu9rUdKi1jnyfNkjgIYdzfsH00W9/Zao5OIvuKyZfbzxWg6dNHFk72Y82zorr4Qj0idbR6GlmLj7
ye3DC9t4WVNchz7Dflx//LFeHjWwsRna5xa9R44f2x/GZYemoxLV+vtrv6lSo820WbNmTRiIP9cf
+gca5LCjUEu8hcdfHF/SDy/710tPKdNfD6npZFW1PW78sok3y7ragcBMQx4loScaWLGFHg3HjR/f
s339ZZeio87PcaIotyY9x48f36mOI8VxWX4lVq9LGtrCjGJw6jXpPv7XleHirPXDGzFNq4ydNWvi
wLboWibsfpYP2vaRNdFxHIvWx5+fkTcocxv444RejWnzNsPMbuD343s3dqUouy0BYr0qfHBDh67f
TUHy+jbzoNiue4Jk+uxHXTxNrOp/Pn78SG+0n471tp99ef/QBDuK233E1FnTh+PhxiPXGRrFt9eD
reMBp/2Qn2fNHN2o6w9BCv2F+b2q1O+KkGeN7oNkdJ28+cyO2c1czChT969Gjt9+9oU6I3R4PWdK
6DJw7Pjx337Opqia/RamgaNen/Vwox2D6j71WJ5oz13wFQyHrGrVWo2ZMu9uROqyAfTxwm61Pp8w
fphHnhnIvUHnCT9+58ClHNpNSMhTt/kvXeqEVnjK91wiRPLpqnS/4H0iQqsI3QOjRJtpf+WmPP7c
1ZyyrT5yPMq5Jf7cceJudA6nZnfBZwfH2kPHT4b16PGWYUC39Wb4lknNIZd/3HBVhd75/ib0OU1m
HC7+2kti0BOVXPEqQcCuCXj9/764HUYsj4GWyrjf3o5y7bUE+Y34az4U5eCtDwx5P/wrzic3G7Hk
Iga3Z5d8iQeHr3uol4bvWrcljJZP2l0T21GU+cZnCr00oJUbx7/dyDGDW3Kca+9+GI9wv6uGt/+L
SKVem3a3uTVl025qep6tQZVyv60FZdp8eEyuXpvy7PT1O89OLEWzVu/7dRL8OeVxew+KcvkKdqw7
a4Yg0vbfb8igWyjFlm9rUQyXg4GIO/uXlraUeZt7qf/SyQk310DO911+W6+L6l+dMrFueiAgRZN6
oxlaZYHbtgcp+qx7jQSU9eczYbwIPLfrwPmnCFcXf7Emi3LouxTdxThfrqjJaLRIEbtGUgKvQ+Gy
mL9mwNA9bC0trM/P6YVO6vdzb+U+nR1Z2DG01e7dF2bp9eFPb10Pydakvdi+YVccnTT5isG1Kcrj
TLImYj+6Lfako8H0M5r40bXZlKjWyRDkWH1kbjdk8+e9z9+rcpqjk9tSlMXC0yH408PL+x7FGGSr
eO4AX0jun7Y8yDPxRH9XHa4xDc9HQvoo9v/aCW4UCy7Gptxfg06z5rCVtMEp7dlneMK+bxjuCDuK
hr7+LwcM0WU+2eVCUZ/NOYHPrw5NQ0r6Lryk1avu3rj2LJGo5IrXDOiJSi4jhZo1q18Vim3qUbWa
X82q5lb2nw/9PVmlDz4wkUExJ+9/jVRu+6I2Zd7sEd0uQq+96FmdbV17aHTev5Z86YWW5UCwWCXN
efnoLqa+nj883tmJS9UdkqLXR52YxqdMWrVpzWMwh/5J20pDjszAu91uwobnz5+fWj4CnwcsOpcX
ku7SQjTupvMvJdD/UqVn5MROb2FHmdY/H5v3RfABbxbVcNgunT5ndAszpn3D64hAr1dGnkSzY9dh
3H3EfHqNF5/y+nxOQnrs1ct515V7qbmaAxBw7KqnYvWJl2fB8PDlb7ThLePSfMTedtJOfE65tAhd
zsCNaF416RFBdx89QfL2zh2EG8YeCdFH7IdYH36ETtjiXg7MJtN0+uyJMO3aNdp77cnzp9e/rmNO
mbe9F5/x6LYh2ishiZJH28bj8d7Tdr2IiEgVKxRavUKc+vzhXRB6fmdPEzOK32EGAlzVyZNy6x6Z
J36Dj/wKy0GnOScNNWPxQLCtfS5Wgc+R5+aic/p6/qW8v8iXDPajWE47nxpMJeq5fawpXrNzCXQ7
PLuPO8V12/2MbvgXdvKgbFrcyTMXv3/dWDGYorhzzwYHHZ1jQbEZbGrKiYjALcMpruPBUEnAppF0
X7v1Ud6DOd+3MqMsu0Vq9FeW9IVAn3rglSHA62u+YVEWbds1Z1H8n/Y8MXyZ/fpYdTZVc8TGfAak
DyaDfFlEAkQlFxFgGXzcYEseveJkYGDg4aXfQTH3mndOmRvYyf6NSo46tRBN1pDtjw2JPzi9PUV5
/RVFv3AZ99fBI6Hdj3vUavnTg4vq+7g6OjrZW5pRPJflt7P1sqcdqwqs4ZtMUTX6/k4/nHi2oYDJ
Elm7OTs6OTugCeJ79w/Os5amPtiEoHr9ce0tojNzesPwMdvQKOv123+sQzHrYCbp7pqvoBE3PczK
+zp6dCNXimPm5OLi6OhsRvtM1Dpz7+6QDtXs8q5xG28lPN3t+EYlR/bwoJxbzKfbMllQJ18Gu9F3
yXQgYQPtmOw2k8RQxGlBv37bxsXJ0cnF0YxF2fSehzZwZe8aJr6dj127tm5sK4rleS4m8+y8/hCd
1o7O8CCys6S9LWZtv7xxej9DpE37z8nSybdN7WtFsa3dvccu/4u2CKtzrm6Z4edBp9MO5nmzGkei
FbGHpkIl/3QCU6B6XcL5+izKrPs8Q1OmCNwB00KvX2mdmnxttYshaMfmJwNfz+3sRbl1eZlfrObM
6u1BWbYOyDOiqKNP16Ao6/70OIfO7pNNEMcjV1+4tA42Kfb001GG7/dObkhRfhfTMII4AZXcYNob
c0P2sz1QyV3zVLIm48XkAQ1MYMip1nj58Rd5thRyVTQC/0clk9V7/5gRiv+TXqWQUTZtzgYHBwW+
Wjeq6pkdM3bcjGeZCDAuZ1D0CiypEmuztOKsvBVaDIZOo+dZOhm8rqr4wCKQkSNVRD74a8yQ7nVq
1a3b4qubKRo2n0uv9WMwEEJWeopSzzJsDpaRmoHSvbNpYr26dfvM2Gtr7+hgavC50ccnJFEMqxqe
aDwxbWVtJdLEJospO0+fPCc0joOPgxWVk5Gipxh6LZNv7e9JzyJS4rQU7IiTeWdL63p1m/aenG3m
UMvTPvbhsc875l2fjbiTnGvC4yAnhliw6NDR3R6f5BraWGNlT0cn0zCRKj2bRSkT9/8xqUMTpK7u
dwuPYPpPp9FQDrUbVRUdnNb3iy+6r7qQ3Kqpn1KdniTnUlmBwzs3qlu/w8kYjq+fDysxYMKQbnmx
dll9KqjBtwtPrv3x2dKhNavWHTV/r1infXV1z3dfdqlVu269dsOf5VJ8LktDKWT0vk7qnEw6cenJ
yUieb9U3DqY1qnoDWHreWmadLm87vTfr4fT4JyX0qephmGzU0cXEsnCwQyZkOiZaTlMbdCaUkstE
B8XAvR+8Gnft48tVXT93/tz1+zaNB/Rp63Pt7MEzV56ZOtRq6mOaHI2V9KKqvu55z4r8fVwoWWo6
vX0U0mhfo6qzIUwmA5FqM1KwmpOtVr9Z0slgMFlMSqf5lBWeH04b+ZYQqNwE8L4zq9RrVbNmzX4j
v6sjpB5cu5+l4rD/XpKA7TjRHLO59BwQ3TCgoaXUYrGabs2y09Ek2jraRt3d2GzANH3jIQsXzv+i
uTelUTOYuE2vkKmcGw/+dUL3oKNL556JoKwdBXod26n+T3MWLpj/+9atG9fO+84xz6uZwuidolKT
kw2x6LRq+HjA1zY1PTvvC2lwSDLFFYn49PQvkqNVGXbOMDFlayme3aDxvyHqtZu2rd04w9/Drc83
437Ju7o2cKOUirfNEtKuU8tleE6jphsrjSKXbvPUaj2dQRNt1rw+recdSRv968J5M4a5cBAXmhwN
y8JKE393RP/+v52QLtq/r5ObJUOLh1lN+45ZuHDh0pWbN65Z371p1QYdBhgiHdG/FUvH+XbRkce3
T03rWX3N5J4/rr8YcHRZh+EL7Lv8sHDhnO51nCgVAOrUarqvYvPoWTmGwMLchFKlJxmW8sVFhOCD
mQjiljL1bPyTIegpw6vam6j1Gio3J5PORl5O6MTkXcgeg6POW8HOFJpDvavSkg3bZ8SGheB2gYWl
pQUC1KSmZeV9LX+NnabY5vD7QEpQygzWmzUr2rwwId3pUM1rLDtw+8bx3X2qZk/u3Xz52Yg30ZH/
VQ4CRCWXbDmj0WEwOXT7y3Q0x1IMbd4+lv8sEcMenZRKw+DmzQHq9RweUxLzPCQH/8i6cSeK4vnV
cdEcWfzzjUjXC5FSSeSlVtZsjVJDP6/XKSjGlzPWLxrmv2/asK0BKR6+UH5U28m7MqXSnKyUI1uX
9W6H0TX91lvbWVP6lJuPAvEPacLTkERWbT8nKubp3VB6A4jX1449T6Pcq/sxKS29ySb2E80T7ab2
zkixZetxEVlSSU7W7b82fdO3Sf12wyMT866Ya13cTGVy1d/6ks4V9unMSxrd1mD/0befeXy+Juzy
hLUXav90QCqVHJ3Th6JyWUxmbvSz13G6aq42Gg134NxD5/8YxOeI7EyUlKjOXy9SpFJx9KOz837q
7V2r1V/3I/JijZ0/sFZUYFjDQasiJbK1Q52OLxlz+emrXXNnPpY1fJQqzQg+XIvHUNKaEpuGqiHY
mXly18WnCgzGD27fo/+hjT547B5l6uvrRHeE5pY2+J9C+c72Tdg8+V+7Ehv+SZs/6IaehqOHDZke
qPzHYj+eb+v+bZ3vHt+988z1FkMHDW7dMnbv+lVXQqq37uHCoBw9UVLiO3cD6MRk3j9yIZhy94N7
Xt7u13ps5mqoozBqQLCPXbb9p8/NV47/5sCTDHypEGekqSiBvZWhqyUXIUAIFIiAjtZDiisH1+/a
tWvh1PmPZeweA7vZcuTSXEqhwhtHCS1oYfXwyJb9x65kaygOLX/jZo36fueuHZNn/iljuHbv1UAo
y4ZcdnRytbM1T0+NRbuup19enVKmyWE7TluwZnB12W+De5wOsezW3VcZFa8ysbGzs82NeXArKl2Y
12hYVW3Wtgr/7tqpv63ftf33H0f9vrNal6/qCPSb501et2vXupmjllxMrj1koL8JpVCgaZL/LQ3t
2nZtQkmjs9VcWFqFyriLT58zrZ17Dho9Ke/qXM9NT2cFvQqyAjMNWjZIYrpRVir0GqUqzxqA73XI
LN2JyNHYWjg725nKM6Nws46FnfAuX3/pXKvj5J9++mn8t1UdhWhM/dq3sWeqUzLkiNTGnHHz7q0E
nUW9tv0MkX7bv40qYH+/TkNup6tdnB2QPyaTrdMqkQJHZ3c7W35ySiyFRlnLNrM051CaG/vWHzp5
S2ZRZ8AXfsp763+YvgY5/v7nJRpBg37d6iN9QveG4w1BTxxaxc6tTaeWVPq9qZOmochGffvFsUCD
rkYLjxTLDZqZaVOvTx9vyfXVo2dt2LVr9eipy/Wipp+3qV+3Vbs6Amrb/Mmrd+3aMGvkwjPxfoO+
rgsHZY6ZBZ+KvHRw+96/YiQUh6UHZbi0IaiA3XN6fzUrgWPm7ABDlYYNEw+5KhWBt3Zz4pdc/FMI
GZM6YvaN6deoadOm9S2EgvpdJsXK9S930hPuo3fQPr4XFmGWjXL1q//Tmqt6ZUS3qhhoC2vWbdG0
Dm1obDdxm0avPvZrD3xbt1Xbzm0aQephoRn8XcMP/YiPkw6FqzPvtoLp16TlmacPJ3WpLTBzaNEW
V0tf/6ab7+S5WGD1w+tTzXzMYBNt0rSpj4/XimvxqbdX+5pQLCsvpMzOlGFXpefFRDkcxfrDi86+
12vDCgp19vqxXbls09ot6RBrVfcdveFqPmhbaV8w26PwSz43CekZuuIObog5PpNO/PRj+Bx6/Fd8
7rXxsS7tbkcXpqmLf9t2Hev60M6+3+1+qY44Wp3H8WvSrmvXrt179p629i+5Gkv3prtx2W41myLS
ZvWrNR25JN9U219zBtu6+LVu29bXQSCqMfiVWLxrfBssgmzctm3HFvVo+3mzcQq99gQ9VUp51Wr8
2457utzEXz7zxz9rNG7auKodxbQdsuzNqhdt7MVqAqrW4CW0+4U+d1YPmMNrXMlbcYlpwGkd8FCT
O3QKxJM6wvZuf4R2iMj9rYk1xax1Le7DHhe449qqb/IaFue9wWrZ862G+YEZJ6PwJ1X6g6/rYn6P
V79p09puIorvM/UAPb17dHor+GmsvZPn76LXX17aC4/8cTc7N+yEH3Jl1/VpliL25Cx0QgNXXS/+
2ktiIH7JFbAOvDg628PVxcZSJBQKzRz9p66/kK3T6zIDvqzj2mj4Oto5ITdp0Vet7K0tXOsMj9Ho
Ly392rvLwLmTvnERCi1tav267ToaCp00ad3Yz20RiH2VAQMH+Nepu+GBRJ/7om8D1+aD/sBqhfT7
2+u42zQfuyEzM3LukFYiU8QmdG/W969ANN5vrpigs4MaVjXDnxz8FpwIQqgvzm3sUNUKX5iKbAbN
2BaTSc/239z4vatrzV0P3zQLennKnlnfupqb0en3rLfo5Mt8zlfJD3bUdnUduemRXhf7XTPX+t2X
0MtTJEFftXD1+OzHWHopRdjo2m4+X9KeGAkP9nTxt0caqrf94qsu/rW/+0Ovla0eUhebyWG1m62t
OcUUDP3zDPzvnhz7s5m7OZ0NM9tB8w+lSPNc2f6+1NmRU/s1RsrNLKzbjlgana3RSeMXDWlrY2Fm
6lZn4MDeVRq0OPRSqc+Nnvp5Q1sr86qtJgGEIiVsztD2ljQdU+/WX/11J/LDFU6SuHHmUNe8Iqs9
aE5cjiHHkmUjmrn6DwjIevOQOOH1zEGtLPJC820/+PR9g+uiKuji1s5+1nlUrb6auik6I6+lV+fu
nd7H0dZKaNv+appeHXaykavr4D9pj8HsqGvdGnogLnNrz29/P55hWGZOropF4P94XDCQU8Oo4ObN
m15eXi4u6K3JVUwE5Od3rjgfEC/OkWj0DMsGPeaP7YuVtAmPji/de7PtkCk96znpZeHr5658kiqu
2/OnMb1cNi37g6rX3SP43J5Hsc5VO06Z9iUtJzVp+/74/XJQmqh6q1YO6XezXGZNHKR5cXru1ivt
Bk/pUd8p+ta+pXvuNBo69ZsmvC1zfrsVKYOds/WQacM6VHtr68yJvrty8Y5wmcK8Xo9F4/qZMqno
u0dX7TiTrtAI3OtNmjChCvS8Jmv/6sVP5P6/TB1k82bWQX1h84IDt7EcmfJs9dW07z7L263onyvg
2Irdt3NHzJrumnp2zrqLzb6Y2LeZe/arS7M3nanZdcR3nWpkvLq8aNPpWl9MHNLMPf7hsT+2nElX
81p1bp8Zctel68+tOVd7d/uW3/Crmk6C1KBrR25E/rz/8eIv/UOv71mx67JUo+O71fvl5/Heon/F
qssJW/L7H68SZFxL728mTG6JXfTkcVuXLr4VLrav06GBWVSAptbc0b3ZOUErZq8PypK3+PKnb7tU
x55DO5YtvhGarWXx2g+e/E07DAjyLk38qMbV9mh6vni414unubJ7yamXwh9njvemp/60F7f9ejbY
beKC7925yrPbl118xRg+Zbq/nfrKhiWn4kQTpv3oQQ9cPnClB19btfGE2Lr6hInfewiSNs1b9irL
8ttpv9S2p2W8Ov3V+mWrAhJzGRxRn9HTezSAezb18uKmLWfjv5z4SxN3epV9xK09q4++7DVmehtf
UeCZjRtOvfxs3Cz2kUFdf3u+7fHLb+u/2bOpmOouCRYE5HI52snOnbF+qzAX/Ojr1atnZUW/xOQq
IwT0ONISE3qGfpDJgXcW/UGvw9STjsnmclhvZuqUKswC8rgsHHipxf/xzmIFBMXm8/9Z+0dbefNC
UKsVDBafzdSrlCqKyeLkuW9oVAqpUmthhndZr1DQbgEsPj//vlNatQITX2+TQTcNdDSYAOTz32y2
BmcMtUbH5nBZtFX7zaVS0G4VDDaXx84/P0wfy6rWMLEhHIuByT0dxcJ2Z/Acy/vM5HIxtalXK1U6
eBvQ39NuGAqYzPl8FoWvKeXLfX4Nh9aYcODC8gH61OvN7Nve9/su4eUWJ/oxhZJOG5PP/+Dmmm+y
iZnDvxOa9w322OMwVSoFk8Vjg65Oq1CpaUgG1G/h8Ph5k67/eRmyzOXz32YYvjEwJHO43HfAvEnD
v8rp7zy+S9UQjVKh0DPYfB4bs4M4iZHJYnMMluM3Wf2vnJaRukySUXgCFy5caNWq1Qe36SQqufBY
yZNGJ7B/Ys2vVyQuO321bw3zgD3T+v16YNiGO1tHNTN6RP8/wPOLenw2/e7a2y9/aF7AzacVmUEv
I/OdZ8oV2ler7los20erQ3v7Vrtu/e2zO5vd/+ksSphWJYqOqORKVNgkq3kEckPO9u476EYk18PV
XC/PiM0Wjlu+Y96ItsXSoBHmhEApEfg/Kpn4JZdSmZBoP0Sg2cD5/VvY/9y9jqenZ785177+ZfPs
QSUtkZGuFr1G1LbJPHb6TkGPtEsPOf9Vw/xXjyErPuWM8ULUiKQ7524mcvuN+I5I5ELQI48QAoTA
RwkIqnY9cfHqkmnf9+vfv/83Y3eevbKYSOSPUiM3VCACxJZcgQqzYmQlNzMyKe/EZZbA2yNvF47S
uDISo8SUuadTwSbHtUppYnzKv1b60Su4LZxdrN/Zk9Vo+VHkpMZnyh3d3IVkPYnRoP6/gIgtuUQw
k0gIAUKAEChRAsSWXKK4SWRFIiCw8vLOu0pPIiP91k6eBZXItLDnmboaEv/O5V48EhnR8c3tfDyJ
RC5SdSMPEwKEACFACBAC/0WAeFyQukEIEAKEACFACBAChAAhQAjkJ0BUMqkThAAhQAgQAoQAIUAI
EAKEAFHJpA4QAoQAIUAIEAKEACFACBACHyNAbMkfI0T+TggQAoQAIUAIEAKEACFQ+QgQlVz5ypzk
mBAgBMotgayUpFTJO8enU/LkxGRJ3jHp0qy0hPj4zH/9lT5gPjeXPsMCV0ZSQlJaNn0QBLkIAUKA
ECAEPoGAMVWyLOX1lesPcc6b4dJLk87s3bbrzJ28bzSPT+7ftu1QRMbf22SpxTeOb9t5+HxaXgOu
yYq4cuW+mG7ryUUIEAKEACHwPgFd+Lk9P035acSYuc/jDGfXSE8uXTBx1qQpcw5kyML/GDt5+coV
Zx9Hv/vk5ZU//PDnaT2lDb64btasPzYdvComaAkBQoAQIAQ+jYDRVLIqO/LkujUrtkP16tWytPi4
hLCwwLiM3ID9u0/eiX59f/+lp8nW1uY44DMtLjpTokmJffE6QRp+4cj2fQFQ1I+Prlm+93BY1qel
mtxFCBAChEBlI5Abd+p+2LdLt/zew/pqwIPbxw5cPH4iQO2zefOWVsLXpx9GW7g0/Pb7cQPaVsuJ
uL5/15lcisp8efNZrrBKFXtpRtiOw886DB/5w6AelpWNG8kvIUAIEAKFJcCaPXu24dmYmBhLS0uR
SFS4oJgcoZefU0K0tFbzeqzkgJv3U/zbtm/ZtIlZRliGghP64OIrucjG3NmvrsurS2fFpr7enu6N
mjRzZSYHJgkauCtuReZWr1vN2bW6A065JxchQAgQAmWPgEajQTvp4+NTuKRFRkY6OjqamJgU7nFK
mng3PKJmk7b2ihd30iz7dG4lkoU+04k61q4ZF3c317y2eeK9E2f+epVs2bBVA29PN6Eqaf/x+01a
N8zKZVczydl66Z464fXxs3d8m7ayE3zgHBq9vqBnTRYyH+QxQoAQqKgEGAxGecxaRESEu7s7h8N5
P/FGPXtPHbpo0bUBE0Z5/a20FXF3NhwJG/Jdl3Wrlwt9OvCeHcppPGpar0Zv0iEJWb/xQpvBA26u
mSV3bCTNjHBpN3ZoM6d8qdRqtcnJyWq1ujyiJ2kmBAiBfASgxjAgt7CwKHdkSvnsPWnEshV7O/00
y/r6iq3pDWYNaqENOz7zhHLRlC8PLfuZ+mzhFzXYlOz59J+2fLtmtS+LkoddGDdzI5PHfJEmGP51
q9di1yVjOu9ePJLz2Yovawnywb93715qaiqPxyt3hUISTAgQAmWBgGGYXbduXQcHh7KQngKl4f+c
vWc8lazXSBMfzF5y4+tfxtey46hVOknM3RUb99b5ckr3+tYb5m/0HTDG/sXSq8yeEz6vweAKtSkB
f65Ya9P+h0FtvK/s2fw8Mf3h45f+AxctHFAnX95gvEEL7uzsXE7HKAUqKnIzIVDhCeh0OozacZW7
nJaySqbUtzct2/QgmsOxHzNlgiboArdqs8ebF9zX6q1Ebb//2ufAnlNpiREOrccOb8++fU/arl87
oVqliLm26rZyVM8GxxYvfaxVsgRVfpkywdU0P/szZ840btzY3Ny83BUKSTAhQAiUHQIsFovJNJor
b4nlqyRUsl4RtXHm4mtxYr/OXw1pYR/0LEvECfl9511fD7tqXUb1t0+at3Z/hm2tpTOHhZ7YL2g6
xD3twDfzTnp5uznW7TpzaCeK0t57cMepRiv395rv0NBQsVjcoEGDEuNFIiIECAFC4H0Cpa2Sscw5
OzAghHLwqeVunRzxmmVXzUIX9eRVqkutxs765AfPI3Q8Ub0GNbnS5MgklZuvGz19qFPm5GrNTQXq
nNiAV4n21ep7Wn5gVhGdRLNmzczMzEi5EwKEACFQ2QiUhEouPqZhYWEZGRlNmjQpvihIyIQAIUAI
fJRA6avkjyaxsDegk2jatGmh16UUNlryHCFACBACpU/g/6jk8mcYL32cJAWEACFACBAChAAhQAgQ
AhWdAFHJFb2ESf4IAUKAECAECAFCgBAgBApOgKjkgjMjTxAChAAhQAgQAoQAIUAIVHQCRCVX9BIm
+SMECAFCgBAgBAgBQoAQKDgBopILzow8QQgQAoQAIUAIEAKEACFQ0QkQlVzRS5jkjxAgBAgBQoAQ
IAQIAUKg4ASISi44M/IEIUAIEAKEACFACBAChEBFJ0BUckUvYZI/QoAQIAQIAUKAECAECIGCEyAq
ueDMyBOEACFACBAChAAhQAgQAhWdAFHJFb2ESf4IAUKAECAECAFCgBAgBApOgKjkgjMjTxAChAAh
QAgQAoQAIUAIVHQCRCVX9BIm+SMECAFCgBAgBAgBQoAQKDgBopILzow8QQgQAoQAIUAIEAKEACFQ
0QkQlVxhS1iq0EjlapVGp9XpK2wmScYKQkCj1cnyakVBHiL3EgKlQ0CZmRm1b09GwGOtQlE6KSCx
EgKEQKUnwNDr30iomzdvenl5ubi4lDUmYWFhGRkZTZo0KWsJK5vpCU0QB8dlv4rNiUgSo2wtTLkm
XLaFKUfAY1sIuXwOC98I+WwzE44pn21qwjEXcllMRtnMC0lV4QjIlJocmSpHpsbvTKkSv8UydbZM
lSWlf9QaXRVnUV0f67peVnYW/MJFUTmfksvlaCc7d+5cuOxfvny5Xr16VlZWhXv8zVM6rZ7JeveN
1Wl0TLbB3qHXqDUMFvvdN1qv1TJYrLy/6jRaBvtfj/6TkAsXLjRt2lQkEhUpbUZ9OO3O7ee//cq1
sODb2du3bmPTpKnQ3d2oMZDACAFCgBCgCaABbNWqlYmJyfs4iEquCFUkJUsekya7+yr1RXSWXKVF
D+rpYFbP20ok4GRIlNlSKCRIJXWaWAGFxGTgoiCgmUz6NzpUmBjtLExMTdi25nyIaTtzvtCEg89c
FsOEx+aymTwOi8dhou+tCLAKmwelWqfW6sAW0HKVGt3fw0tDePgXEAEZPmDcKcDQo9jGHjqdXqHW
ypVauUqD4s4UK1GyqdmKdLEyAz8SBRLAoP+jU4WZBBS3g6WJlRnP2oznaCVQqbX3Q9Iik6UsBsPF
VtC2lkNND0sXG2FhwVSi50pdJafcPzVnw8FUgf/ieVO8raF9NTe3Ltt454WD/6B5P9ZYM/q3aL6w
Uc8xQztWzysVTdBfOxYev8F16bB6Wq/rexefuBNTreukCQPqs98rtDKoksM2bxS/fl31h7EpN6+n
3r6lzZWb+Xg7du5iWasOpyyp+Ur0ApCsEgIVlABRyRWwYOFKAZtxYFRWSHxOZBLcK7Re9qbV3Sxq
uJr7e1rBTvxfeYZlEXdnS1UQWPgskavFuepcFSbiNRJ8UGrwjVypgdEROg8mZxMeC9ZoIX7z2AiW
y2ZZiXg8NtNMwMFfIbIN9kjYpE35HAiysmmZfut2An2ZnqPAQAEiFuZV5B3DBsyoZEqUCpWWyWSq
NFrITShRZAo35yo0kJsQx2K5BvoSGdTpKHGuKp8bC0QzlLGQz0FQeBJkeFDMOj0YYqxCR0FRJlyW
tYiXJ6n1IiFXxOfiKSTDWsTnc5lIIdjamPNwM+6h5ThFpxAJww/KK0uqRMJQQOJcjUyhRjEZystc
yMNcgRmfY2nGowuFz4YgxoyBpSnXQsizNKMnEN6vDKnZ8sdhGag/zyIz1Fp9VWdRTU+rJtVsPO3N
KuDbYqQslbJKViSsXbTRfcBwszu7Xzi2bcxMk7M0V2+nDBnf9dKq7RadW6eeCe08ppe7s4Mq+t7V
p5q2be1X/364y7gh4Ts2Kpr0buTm4EAF/zbj9rg9s304+YmUQZX85KeJZlWq+Y4chbTqlMr0B/fT
7t7JeBLAFZlbN2ho36aNqJphMEAuQoAQIASKRICo5CLhKzsPQ1RFp0gjkyUBYRnPozI1Wj20qYe9
adNqtjXcLa3MuBCtRUkt9B3MpdDfsC4r1VqVWpeao4Aba3qOEsI6U6rI02oqRIF7YFqGmIbchPEU
+pLNZOQqtUiAnSUfOg8SjZbUHJaNiAfdbGnKE/BYHDYLFmv8FS4fuJPDZuIeaML/slIjGXnZYUAU
QrDiQUhJqENIWMSL2KER8xJApWXLIfphv4V5FSI4z5DKyBPBtNbHU0mZ8jzhSz8I6zgtVSla0L+J
Wk+x2QykDAQM6aGD1euh+yFbDbrWyowP7ZunaxkOlnxk7a23Em7AE9kygFLkPcpIy5HDA5iOWqtP
zpbDhE/Laz1lyBEUMIQp/mQoLHxJW6Zh+tVRKtxAW6P1sN/jn3gKlDBLTv9m0h8wJrER8WEVxm+k
DYLYYOmHwv6vyfT/XyUgvoPjcq49Tw5PEmPMAKtzcz+7Ol5Wvk4iRFqU6lTxni1llZz1atnuE11H
THcI3LQuymtkM5/s8BsHEsxnDe51bv+iFMe2qhM7HmXL6nadPLirY0aazlEfsuRCyITRo8JOLrrB
HzCxk1dqwPGt17RjJvUTvVew/6eTKJ1yVCpvDx1cdeQo27bt302ALisbpmX8KFNSuXZ29p06Wdap
a+LgWDqJLBuxqrKylGmpDA6HZ2PLMSOj3LJRKiQV5YoAUcnlqrjeSyx0alBszqPQtLBESVqOAgq1
mos5HCq8ncyquVhAIZVw9qAOIYghPSGaEbVEQdue8U84dUDuQZvCLxa6ELP/9Je5KmhZpYo20EJ1
wTINDQi/DjyIf8JFAR+EPDZkIqQzxDSegtI1aE0IYsQF7QuJrFDSdlzoToSGyPB3/EYyoDSheiEZ
MUCADIXshhmVdnvQUxg2wLhr0LUQl7SRW09HCgVP62VYf+GZnWf9RRpEAi4Sg/RDa0J3FhNSJD5P
JTOkCjVktMH1BdoUBmxkDdAgtd+I7zyXGDMBV2TCgTUaRmJ8KD4vDrocUc1isp9GZt4PTkPyIJf9
3S1a1rD3cYLVu7iAFBPnYgq2lFWyOHTpukPdpsy0vbV6TVzt2YNb6UKPzLxALfyx3/HVUxWt535V
i0tlPp4xc8+3a1f4YCgWd33WvuCpv4wO2jvngfOIH2pkbjl4pfOI8e70uC//derUKa1WKxSWCccb
TMGwExP0p05qu3ajXF0ZmL7Juxh4ATCcZbG0ublZLwIZIa+tMjKEIjOOh6fY1U3l4Mg1N9frdDA8
06/0v32iiqlKFG+wtHMcss1ArpkcDrKPhYyGH444x0Qi5ufkMHNy1BKxWiwGFo7InGMuUpuJFCKR
3NxCKzRl8flsEwGTy8GgXKfR6DUauuGrGHCKFz0JvcAEULNQVWvVqmVvb1/gh0v7AaKSS7sECh4/
BFNIgjg0PgeuxkGx2QjA0dLE20nUqIqNn5sFZFPBgyydJyCUIT0hVWH5xm84D8DoC7EIb1qI2jxX
aXg1aNNylCwWvbRIQ2/KAS3LgGM0fuMe+HvAdGoQlBC4yLvB4osbaIMrRYtgw3olg3m4bLp8lA79
QsWKaQTUvdtBKRDNiRm5GHU0qWZby8OqpocFlnsWKsgK8lApq2S9/PyKxScSVLxcfa/vx9tkPGE7
e19Y9WeSk4U+2+Ob75rduXgjLTpQ6dFjTH+PoMDcFh2890+f98jElJ1hMXL852snfhXv1L1ziwbd
e/Zyfc/geO7cuRo1apSR1Xt4kZNPn8q6dqXa3AUMofADi4uZTBaPj8kfllyefu9O8vXrqc+fU2Zm
Dm3aWjdubF69Bj0zg8kadTnczgUjAfqHRYvjvJxrlUp5YoIsLk6RkiKNipTFxMhiY9hcrqmdvcDW
1tTJ2dTLy8zHV6tUSCMjJRHhsqSk3MwMaXIyVnmauruZenkLnJxNnJ1N8NvBkcXjvhHJaI/ppllH
+5CRixAoMgHD+MvU1JTDKX/dBFHJRS7/EgkAghIGV/gZ3wtOxVYVUJNo6/3dLOr7Wvs4itzthJV8
/VyJFAKJ5B8CkMtY5PckPP1ucBpWiMKeXcXZvHVN+2qu5lamHzJIVnR4payS4Z4rjbtw4QHDvV6X
Bl4RAXfYHs0sZQ8vPoir2rJ7DW78X5cDNFxR+x5dzHPCn4Yqajf216W+PHPjtX3dds09WDdv3M2W
yFUci5Zt2tm/ZzJGJ9GiRYsyYktGPQpdvVIaG1tv6fJPrFOyqMj0e3dTrl3FrJPQw8O5y2eWtesw
TU0/8fEydZteqVSLc3ITEqTh4TnBrxSpKTqVyrAdnqmHp6m3D2SxiaMj18qaY2n5gZTr9arMTGV6
miI5WRIZgRWQ8uQkKG8WlwevDKGLs6m3r6hKFYGzM9vUlMH/wKL+MkWDJIYQKAECRCWXAOTCRwGn
3sDorJcxWWEwHieIIYWxDq+Ki3kdL0uYjYtv9r/wKSZPVj4C4Ynix+EZzyIyUUWxDNHfw7Kut1UD
X2v4ulQeGKWukosPdZlavadTq5/NmGbm6+s7gl669+kX1GT6wwdpt25lPn/K4pvYNG1q17yFhX/N
Tw+hVO5EfmVRUbkJ8bKY6NzERKhbWXwc1m2YODrxHRxN7B0gi/EjcHSC60UhUghHCyks0DHRMELL
ExOVaWm5iQlYfWLi6CBwdoGBWeDqCv0N3cz60E5YhYiRPEIIlC8CRCWXWnlhBgIiGF65MAzDd1cm
18DDAN4FcDWmfyvUKdnyZCws0+vhV+DnbtG4ig3cQOFEa9jogFyEQJkigIqKdZBPwjNuvkxJzMyF
F42Xg2lrf3ssHnW1LRMurcWKi6jkYsX7NnBFamrApAm+o763a9mqcDHCOQEbYiRfvaxIS+Pb2zt2
7IxtMUywyUfZuGDoVWZmyZMSxSGvJeHh8iTYerE9EIvF5Qrd3M18fMyr+/FsbDjm5myB8V8reHWr
crKBSBIVJX4dnBsbC6cOPRwwNBpsTY3BiZmXN5LBtbRAGrD9dtlgRlJBCBQjgZJQyXqtKvL+mRPP
lN98/6VN3lIfjVx27ciOWIvG33Wvl/z8/JpdVzjV2//0XVeDl5lemXFo3eJ7McIBk2Y0tYxdsWRV
JKPqpEmjPSzygyjLp4pANMBNAv5vOLsBi7GwFwQ8btPFCvqzWAnfYvwTKhkSGWvusOGuWK6GHQ6e
teYCLn3MB4784LGcrAQ45QEL8op1bVYx1i8SdKUkkJwlfxqe+Swq82l4BlyDPOzMujZ0blOrrAiR
4igTopKLg+r7YWa/ePFs5rTG6zeZODkVMcasZ8/S7t1JvXMbi+Asa9bC/nHWDRqUnPKjN4aklxJr
ZFI4kEjDwqRRUYqMNGVqmjIjncnjmXl6wV1Y6OYqcHWD5bi0dLwyPV0WFwvHDCjm3Pg4WWysOieH
a20NlYx9M+DWLKpa1dTDg2MmKuZzXPUoGmah7OVFrCfGfZz29i7BC+40JRhbxYyqJFSyKjvyzJat
RyIsFv75k2120NNQjbO55NiO/VH2n6+a2v75w4dyLXVm7dFGUyb7yiK4nk3kj3YefG3W1DUtMNHS
TZCTIvJyTLqf6Nht4sAm+YyoZUQlw3IWlSylD3GQ0JZg/IbkxX7D2BkNmhibAGBrMzhLYL8FLEHD
DrV6BoXjObDaCVuhYSMFW3Me9hHDdrmG2wzbexGDccV84SpZrrDVCVyGrjxLquYi+qqNVwXOPVHJ
JVO4sUePJF2+WH/5CrZAYJQY1RIJvJaTr13F6jecSOLQtr1N48ZY1lawwGETUSohebGhhE6rwaI3
VXY2QsCWGggfH+i9JnKyKSZLlZGhyc2FdVaVnq7DLutqFWQoPEA4ZqZsUzOITnM/PzNvH56tDVto
+vfJiAVLS/HdDYUHY7MS6/+io2FplkVHqSVStVSqk8t1alXxqmSdjmtpZeJgz7d3yPux41pY4vBF
joUFj/bALovzq/AXRzVAudO+4JmZWGcpT0nBXAGWqxd/evPWdzKYGMwweVwMMPh2dviKZSLg2Vhj
MTtqF8uE9ojD8AYu6RDTXAtzPICdT4qv/pTTkEtCJdNoNOG/L7w84KdR9mJaJTdqVUf86uz6c9rp
k7vnjXSkm35d6fv1tw5ZIVDJEZcWJ9eeMcT31dI1BzI1Zr1+mN445eCvN9m/jeibb4InNDRUIpHU
r1+/dOn/sj0gKE5qZyGA3jUc7GyJgyEEHOy6AKswFjbBSIx9xwQ8hkkZn6GCcQMjXewHnLdlkoEq
5tp0mjfrwdHEo5VE240vlampevQHTJZOnosWP387pddxbe2YcGXT4RRcNg+vKJ7S6VgCIdf6zTG8
TDbnjS8dDvLgculRL/aLwW/iUlK6FZrEXnACRCUXnFlhnni5YB5akhpTpxfm4f/7jCQ8LP3BA3hi
oIkTenk7duhoWbN23lblOnjrYpsIzAzC/4HuzWQyVQbd4qnEYlVWJtoreoM5nRbNl0Er0+0ovaKO
gZYT/tAQzdiIjYvjx7VaWGFZefqeb2PL5GN/HqbAxZVvZwtrcXk8NRAZhx8zfFe0MlnxttsMCooT
btnylGRFcooiLRV2ZUg6Jp9Pb2kiFMKR2sTRGSsXMckA9YwvYY8vGUsqfMfBAUWvSEmG7zithhMS
MZZAncGCUZ1SoZHL2XwT7CUCDx8Te3v4rtB7eRbnBWmukUhRexUYjKFyarV0f01PXMgwU4GSQodr
MMz/TQn6GLUROpqNP+FOrqUlNk9EZUaa6d6ZzaF1NosFP588na3H0A5LPIszE2Ul7JJSyVTU0oXX
vpw4zPXvVbOZr89vusyaOrYjSAScXPWS1WLI5/UM48EzW2dlNJg1pErQkpUHsnSi3mOnNUo8MPMm
Z/bI/Co5Ojr6wYMH7u7ub/bFKXGqaEIlKta66zltfVl1XXk4ng2uEYYdx+jtO+FPlnceG91o0j/4
TP9+98iJDyeZPv8NobBoW8KbEfq/B+r//OsDO3+y1GrW37qWrVQxdVp6r0K01HktOP2GaDRsFUQw
zRsrpvHm0C8tOoPMDJg36K03VSp1ZiaSjHthKlBJxIaiUePwDobh9dYrmcy8oy30GBfj+3yDY0TD
1evoQ5nzouHR00x0GEy8fjgSI+/CKJZjakrHwmRiRTbWWaNDwgvJQ3eSlx68hLjHEJ2Gy9NhP9R/
Z1fHYmm49O5F716Ikr4Z9P5mlxcAhcffv9nwoGHn0beB0AVEn+bx9++S312Vbq6YlOHEcNSEd4cN
79aevCNS3lx5s7dstZqp/ZehArezVSrs9pwPEf0l7nzv0jGZoAdQ9A+P3q0iL4Z/yjcPC12j86o1
/fv9QAr3TZ660Lu6urq4uBQuhFJ8iqjkEoCPzv7BqBH2bdt6DhxcTNFh/J/+6GHK9es5r4JUmRl0
LGidsOUcLSkYHJEZ3X5yOJBl9F94fIPtjWdpxTYV0scSWcN0x0O7DaunwTLHs7ah3x5mXmOet69z
MaW88gRLb/Cs1ijTU+XJyXChxtAF9ni1JAddlUYiUeXkoFHCukbaJ8TWlm9tQ/uHWFtj3w9+nj93
EUEpMzIgNBEj7UGekYERwpvP6enoztgiEU5vwbQATN1wkoHNGysgsc4SfVnpuou88fSA/Qu2LXTZ
2VkaqRRttzItPW8EqMHYA3Ub/j+wfON7GMLpkR6DgekReltArYbWCWj7sYO/TIYhAVa+1luylMnJ
3/8WEW8ZfLxEVLJGHHj18MJND/tP+blDFWF6hsrGinNt/9p9D1kLF4yNubB06bnkYcOGN2pUk5uR
yLCvlnln27bbkloeimx9VQ9m7BOZhZ00jF2j38g+b2T0W46RkZFBQUFVq1YtLZUM8fUsSnrymeSH
jo4OIgZU41sJXDDxQKtMWhnjRUJzjEqJqonKink6g0DRSGX0EUp5dlYF5uzwfZ6ORBuBkSLaX4xW
MbymD8+gz4fDUXZvrNYcNk61o3cORvC8vIkVpBDx4DN9q06LtgMjb7Q7CBmDRSxkhlEEVR9DXtiJ
aalqZsazss7bcZgWmjp8SX9maDlsiGj6GDoGU/u+uxgGpRp13p7/9G7FbDXeTPophk7Lwvb1ecJL
lZ2pzjFkRCtPS8M7SR8KoFDQo16dDp/R3gECTQaiHOP1v6W2oQLgWxwiovp7PPCmVtCGcOyFqtIi
Xf964bDdMg40oc+U/ucCAiaT7+AAXU63pza2+I3WDRDQvdE/+GBigkLJayYwxNHmDXTyBPTbAi5Y
Sf8duUH4/n0yAD0iAoc3+6EyYZzQyuVvjgnAB1jrs7IUaJrT0tAoa9Bs6fUY0qC1+qfTxc7QJgI2
co1Evr2QQR6Xi8DzOcOhAuBr+iS/fzNiUMilSo1BkjrvR4PeBV0L18aG7nXyOhuYEDBVR5OBRAAc
emyD/a7prVUNe6y+aY4NWAoCx6CSbWxsrK1R38rZRVRyCRQYnGKf/zrDd+T3ts2bF3d02PABdji6
9cWbBZXMwlGgDLYZjGd5Ktng70FmvYq7GAoSvloqgQEVLi6wpOYmJUI9K7A/dEI81sgzcbIU3cPS
zSzGLdiyg+/kSHt72zuwhQLMcNJF/M4ABh0iWlf8IEw6kKRE/JbFx9NuM2jV6OYOEwca+HsInFz4
jo6CPEs2rY/NzKCVMVIqSMLL6r15x77CqYZu4XGwkAyeQnpaJefm0iqCw8WmgWXNKag4UJaEStYr
Ew6t3hWm0Nr7t/istnVIuKyqt8nxvSdzGFTTLv15ifeuBqZwGFSTfgPMI58y/brVcc09sm7FS5nT
0DEjPTQh69fsz7Cr++OwnubvuSvA40IsFjdo0KA40HximEfvJpx7FLN5fDMjOEbJZPD0wvbvWC2B
jTAxa0ML37wzM6BIsKzYIM4wTsUrbXCNoKeWMD8CEyx267awMKhW/JUtoudKkAV8CbVHPwjHIytr
uDzTN/P4RR9SfyIfY92G5okeD7yxZOeFCsO2HA7gdLP1z0Uf96xTZ2XRE53v9GFoAWFmQAP67wEV
LcvyRiP4kxjqE2IUo2SuuQW6Q3DGHCgaPo6pGW2KgFi0tIQPHAtjhjyzkNEulUpDO65lwHalysrG
B6RHI5XkmUakWCsDez/KC4lBE4y0QccjVQZr7t/GZLp8YdCCh9m/Ziro2mKKp/J9iduQl3dmKv7O
CkYx0MZZ2bA0ACxtbxDTMwl5n5EMMfqMN/YSkBGaIkksoZCfN7TgWlnCcZADgcutED1EAUuXqOQC
AivM7am3boVt3lBv0RJMXhfmefJMpSSAbgL96RujL0y/hsY2KxOWYHQKmK5E38qxtELbDscYEEIv
oMrGD/yJM9S5uTy4PsOWZGWFH7Sx8ECAOYlna4d2rzJoxEpZZf6V6ZJQycVHuSys3lt65EVOrnr+
kHoFzSZtNM3MwHyHNDJCGh0lCQlRZmfR9ksul2NugS0wLWr4Yw/8POsvBQNz3tQebf2DGRDDOFr3
wF77nr9BQZNB7gcBeoispB3IUCiwymOZOcYndOmkpirS09RiCb1ZiVaT9xuTfWqMSTCPRjeaMD9b
0e0mbUXAegiBAEMUfH6XKu6np6hyZRiCIyhIXtoknJEOJ2+64aYdHCkESJu1caIgbVRmGWzbdEOM
ScO85eS0Bx6PB8MtqzSsFIaTCzB+ACJlegaYYGaDnmfMSKftbbRZheaDaVD6nFsmPSlh6FfggQcL
PYYc2HsVlCpwZSMquQQKN3L3rtQb15ps3kaMuCVAuwJHgQafnqyT56Jlxnxs3kbUSbnx8dDHtLnB
ytIEe0U7OgldXNAIs/NmFMl20RW4Pvz/rBGVXKSixwlk03YE1PW2Htzu42uiITVgjcMaERx6hI3i
5amptPEyOwtiAtu2C/Hj6oqVB/iNhahFShZ52NgEaIGL1cqwqorh95Zt8Ieh7Q1ZmaqMTEheKEXM
3NFLSbBcXShEkwq5rMO0nVSK5hjKW6egPShgHobpglaQsFtYmMN6gem/PAuxOf0bRmKRiFbM5erS
KVV5ZHJUtL2ZNjnnkcmChqZ/A1Rmpmuv3r6jRperbBUssUQlF4xXwe+Gsnm5cD7WfPhPnVHwp8kT
hAAhQAgUhgBRyYWh9vaZtBzFD2vv/dTXv3FV2/cDoo9NiqV3mpQnxMOPQhIRAd1Az+YLhVDG2B8e
20ya+VaFYCLbrxSpGErvYdoNFw7TsBZjgyTasAojK4zE6TAS6/LWR2IKjzYG28IkbGOwEBsOgy13
UrgwjGknNrUOe6SolNjPpGIviCYquTA1pCDPYOuJR+PHOn/ezbVXn4I8R+4lBAgBQqDwBIhKLjw7
PIlTeefuf7Z+Ult7Qd5+EXAnlYhx4CfWR0sjwmFa08hz0bjDw1XkW4U+ShQbxdvbw8PVWJt9Fin1
5GFCgBAwEgGiko0E8j+DwYT4o7E/1F6wEK5oxR0XCZ8QIAQIAQOB/6OSyYY1H68kYYliZzuRLvxV
7O4dL+bPDZg0/sGokSFrVuFwUY6FlW2LllVHj2m4Zn3TLdtqTJ3m/sUA64YNBW5uRCJ/nCy5gxAg
BAiBdwiIQ0OwhpVva0eoEAKEACFQFggQlfzxUghNkjqac5O2rIs9eRIb/br07F339yX1l/1RZ/6i
Gj//4vn1QOtGjbESlqw1+ThKcgchQAgQAv9NAKYHnBlBb6ZOLkKAECAEygABopI/UghwSU3MVppL
Utm54uq/TKvx81SXbt3Na9TA2lgo5jJQgiQJhAAhQAhUEAKS8HAc0/DmtM4KkieSDUKAECjHBIhK
/kjhpWTLVRTTSppKcbjYmKIcFzVJOiFACBACZZgANq/F1rZY8VyG00iSRggQApWLAFHJHynv+Ixc
jY6yl6fquHz6ZHZyEQKEACFQSgQkr29NGzvqu5kbk6RvUvD8xMaRP4ycvf0GfTq5PnX74pmHHyT9
nTqdOO7Jst/mXn6djdPfL27/bfSYUdvOhfzrHPNSysgHo8U2QTg718zXtywliqSFECAEKjUBopI/
ppIzFbpcmZUik+/mTjyPK/W7QjJPCJQuAVXqoQOXqvX5tpNZ3Ok7AS9uXnl859xfd8VDfhjKfX7+
SZoi8va1J1ERSUpKkRJ4+fw9GaWJevY6LiknKU2tijp/ItZh0qTvUi/ueJ5Vutn4z9hlcXE4eV7o
7lVG00eSRQgQApWPAFHJHynzmHS5A1ejSUk09yM7E1W+94PkmBAoOwRy0zMt+A2bN+nUxi01O0No
YcnMSWT4V2nh36xeI7PA+49fp5p9PexLJ1M2j29qZW3Oori1u3/dpZkPDjRXqnVaHOmeosjShyel
q97PEw5159MHf5bmJYuKtPDxZvEr4+HnpcmdxE0IEAL/TYBBn4Gcd928edPLy8vFxaWs4SrFE6rV
Wt2UXS+qUxm1zq7yX7TUzIdMBZa12kHSQwiUHIFS3i855/XSzUd7TJxhd2/diqgacwa31r0+POs6
e/73vS8fWHT0VmiW2MRdmB7Ia75lyXjnv6XmxT1bpZ7d+jS3f3xm541nEQGvk6es2VjXnN76/d3r
1KlTHA4OlBSWHM13Y2IwmOiK9u1R2dmzO3Vm6MqsV0jp4CGxEgJlnwDeYAy2q1evbmNjU/ZTmy+F
5FSRQhZZllQ5csOTQSZR7oGX/Bb/gbOFCxkQeYwQIATKP4FSVsla8ZHfFwfwHE0S42r1G13bJIVh
ytv353ZBY+/UZ7Kuw/sLxClBd4/c43ee27dKXLyqVoNqCU+vrVi9Ndet42/je+WEBYYHvnzOdh/3
TVez/CKZOnv2rLu7u5mZWWmVkkYijZ7xi8uw4by69WC8Ka1kkHgJAUKgcAQMKhkSWSAQFC6EUnyK
qORCwn8akbn0dPiQ5AseJqqqM2czmKxCBkQeIwQIgfJPoJRVMkUpkgJ3H7hM+bQc0b1h4OVTHL+u
5smnD1yPqNH+6861HQBYnR0Tz3BxUQZdD5C3/axx2OWjl4ITKb7F5906RVw+/DLdqt+or90+1IX9
n06iZMpN+ioocNH8OnMWCrw8SyZGEgshQAgQAgYC5Oy9QtaEsCSJrSmHlx7Pc3IhErmQEMljhAAh
YCQCfMdaIyZOgkRGeLU6dK/uxHKq13PSpEkGiYyLY+Huac7i2NXq+FljNkVV79B33I8/jhsx2NvR
vtPgsZMmflgiG55Vq9VGSmZhgsl4+YJtJuLa2RbmYfIMIUAIEALFQ4Cs3vt/XCNScwXSDAuWhu/q
Xjz8SaiEACFACBACFM4T4VnbsE1NCQtCgBD4KAGdXi+Rq/EjlatVGp1Wp8cJaB99itxQCAJk9d5/
QtNo9b/se2kbF9Q1+pznz7+Sve4LUb3II4RARSJQ6h4XxQcTE45NmzYViUTFF8X/CVmrVD6b+rNF
rdre3w4rlQQUU6RY2ZKUKc+UKLEQHC6b78diZcbjspj51A0EkLmAa8pn48O7j+BfAj7LhItJAnJV
UgKoSK9is4Njc15EZyVm5tJVisGwEHL5HCaTybA24+E3j8OyMOVSesrUhGNmQtcWCyGPm3eDjRkP
1ZDPZQl4pBb9qwoRv+TCvFFJWfK5x8KaJ931i7pTZ8M2JodTmFDIM4QAIVBRCBCVXEwlmRsf/3T6
L1VGj7Ft2qyYoijWYDVanVShkco12TJlbKosISM3JlWWkiWHzM27oFj+84LQ+eBfoWk+8Aytm/Pr
bUTAZbMcrEzwxPtB2ZrzBVz2+0LclM+xFfHyfY9/spgMewsTDjt/7IiZx2HiKSGfDZlVrDxJ4PlG
R0mZuZHJknuv015GZ2PIxWUza7hb+LtbcthMrU6Xmq1QYKtHrS4lR4Edx1EV03IUhkEZ8++xmaGa
4V+oPYZldviNQRoUNmqpvaUJj81is+iiRwUQ8Nk2Ih6M0yIB19HKpDIUB1HJhSnlp1FZvx959b30
hj2V6zdnfmGCIM8QAoRABSJAVHIxFWZmQMCL+XMbb9zMt7MrpiiMGCzkRZZUhWNZoYPj03LTJQpY
i/ENfmNfagdLvrWIb2/OtzHn21vyHS0F1iIoEHqnu3fTYFAtUDO0mZn6lyRlMimElqvUvJU4hgch
giHEs2SqfN/jT5DpiD1fHiGJECeCwox8Ps0LkYTwMV///iNarT5TqsQMfr5UQUsJeWwYKaGrDL+h
v6Gu7Mz5EFL45v1UGZF5JQxKrdEFx2UHhGe+js+JSpaAfzUX82qu5n5utD6GUP4oExSxTKHBbRkS
pQoyWqdPFytQE2RKTY5Mjeonk6txA+pJhkQFkY35cwzz8L1cqc3JVeERaPFlwxt+SlwfTUwZv4Go
5MIU0KnHiQcuBo+JP+LSopnb14MLEwR5hhAgBCoQAaKSi6kwow8eSL1xvcHK1WVtyo5Wn1JVjkwF
34nEDHlCei6muePTZdCdfC4b6oHDYsAg52ZnCqXoZiu0s+BDSuJPMMsVE6uCBgtthJ/8ahiLNbU6
5OL973GvQqXNp+np2xhUtlQFM3lyphwQUmC/VGnUWr1KrUU4kMjONgI7cxNwcLISWJpxzYVckYBj
SdRzAQssJlUanih5HJ7xMjpTrdHDa8LXyay5nx30MRwqPui3U8AYPnA79LFh3gNFnzfowjlEWlQa
TGjYW/Arw/iHqOTC1KKVZ8LSImM7XVtVc/pMywb0onJyEQKEQGUmQFRyMZV+4JzfsG7Pb/KUd8OH
Nj37OEGSq6Jnhym9yIQLyQUNh+7cjM+xMefBUIrPJjyWrYhvuAfd+Vu7F0yhmI/+kDPwhzOB+WWl
Roe1UHHpssSMXDhOJGfLYWyTKrQyhTpXqcUcNCSgo5UAKhDmYVhSoVrwoZiYlP1gIY6zJErYKTMl
KvxOy5Zjxj8tWwH3AMgsUxM2ZvHhniHgsTCPD26wsjtbC0EMZQQXkU8vmrKPoogphHE3LEF8/3Va
SLw4NVsuV2lhMK7jbVnFyRz2Y7gUFzF88vhHCRCV/FFEH7hhzJan/uLQRi9OVp+7SODqVpggyDOE
ACFQgQgQlVwchanXaO59N9SlZy+3Pv3eDf/q86RFh17U9LCk7bIwcKq1sG8ZvHIxF6xQa2iXAAaF
iWlMEONBqGQOiwnxCo8FCGgWkwkVC1cHKGn4KtiI+FAbBq8HKzPuW89aWMugjGEkTs1RQBxjJlok
xJonDkQenDJdbATOVkInaxMXGyEeqQxTz0UsYuhjlAgm7rFsMTkLVmd5SrZcmquWYKShgI+HBuZ5
eysTOxHf1oL2S4F3CnSzlSkPhQK7aRFjL1+Pw9U4NEH8PDITJzOotDpna4G3g1l9H+taXpZYvlm+
8lLeU0tUcoFLMFum+n7zs65J1xoxU3xnLWCZVAoH9gJjIg8QApWJAFHJxVHa0pjo5zOmVxs/0brh
v6bslhx+IZZrZg+sA9ULCQwDm1xFK2OoZChmSC76U55ihq3XkDBYN1OyFPiAv0CrYVWTRkdvLgFx
nJyZq9bRjgEQzenZSjoogzGTQUETw1kCdmJIYUdL2sUW3gLwuy2OzFbaMCW5arFcDW/XHKkqGfZm
eG5kyePSUHRaLocFoz/GM1w2A87cmCiwNudhfAOnZ4xMIKCFfJbhHvyGiwumCAowR1DGiMNNPCpZ
+jA0DZtUYLYENdbbUdS4qk11N3MPO1NsT1HG0ltZklNiKlkjl2tNTP6ZgVLTbRHFN+Fp1Rj569lc
TLWw386zaJS5GiaPb6gWeo0sV8nlm8AYkK9YwsLCMjIymjRpUpLFFRCRuf5SzOcB2/197X1/nlGS
UZO4CAFCoGwSICq5OMol+crlqL276y5awre3fxs+1MOwP2/3bOrWv4VHcUT6dimdwU+jOKIgYX4K
Acjk5CwFxjNYyAirMzw3NPB7UWjgIIupA6wtk6u1UNgYtEBBwsCPLczgwiHkc/hcesMNfEnvpsdm
whsHn/EbGhrG6bJWphGJkufRWViNh03csGjS094Ufsb+7haYKsGQ7FNAkXuKlUBJqGRtbvrO32dd
jcqs22XKpIH10epE3TmweM1Fjqv/qDFfRV/ecOZxujgprtno5WM6+yK30sRn61euf5XE6TtpUacq
mbvmL3sqYfccNb2Tf/6zl0pFJR++F3ftbvigsAOu7du59h9QrMVDAicECIFyQYCo5OIopvCtWzKf
PG60Zj1tAf77CorJnrf/+fQva9XysCyOSEmYZZkA5gEMiwsxUYDP9NSBUoNNPCCaM8RKhUYL72ds
J5KclYu5AMNee4a9pfHJsFJRo9M7WPD5PJaNGf+NQdqEnWeWprexM+Gy3l3PaNhKDw7ueDDfgAm3
4eb3TbyI7aNjK3gYx6XnBoSlPw7LyJapYSl3tzNtWt0WyhiO2mQ3vTJVA0tCJYdf3rgzyH3cAKvN
G2617tFYnKBiUxkhUYK+g1s7WpriWBiKytq6aL1734HCoFusmr19RYnRqfqYm+ey3dpV0106G+r4
3aDP3Jys3ndTLxWV/OfZiLA7j0Ykn3EfO8Gqbv0yVZwkMYQAIVAqBIhKNjp2dA2Bc2ZzRaLqk396
N/C91yLhl7xmdBODdiEXIfBfBCCdYXWGkyRUNXwYoJ7FuSq4qhu2upMptPgnvoSzh1ypyZKosKYQ
duh8KhlntcDxBtL83/v10XGKBGwOm5V/nxA99n+gfXX+a9MJOLtjt4qcXNpsjP3Uqrla1HS3IGbj
MluNS0IlP/1ryVWT3pM7mK7asL1mu5HVRTpV6tOV604kU6YjfpzapqZ1zsuzG8/Ejfx5uDYhnmHu
bMWX7Fwy52qk1Y9jvgq5sW7/U52LOqf+8MnD29fMN5iDSs7KymrUqFGJ8YWin3nwtemLO51jLtbb
uJ0hEJRY1CQiQoAQKLMEiEo2etGoc3ICJk907d3H+fNubwPHdhNz9j3Hor1fv6pt9BhJgJWNgOH0
Zihgw8rCPOf1XNiC3+WQZ4TWw/GD3lv6PXtyukSZ5wf/L3I4fQPSPEOsov3m/33BKggBXd/XuoGv
NZaQwgmksjEvd/ktCZX84uSyM9ruU3ubL5m3vv2Pc+pbvKEUdWzR1uiq8yf1ubB+QZLnoKFd3A1/
UCrkPL5J7sNdK05HUQ6OdXqN7CrZOvEMe9mkb/KZDmJiYq5du+bo6FhMOwXmK06spharWEeDOe3j
r3hLolRfDtIzmPTqD3IRAoRAkQnQvZFO5+vr6+PjU+TASjoAopKNTlwaFfV4wo/1l/1p5kt74hku
zKqP3/hgUDvvLvWdjR4jCZAQIAQIgXwESkIlS6IfzP11NcNJZOncc3h/+6AXClOTtOsPXse+Dm36
7bSvqqePnXJq7Np51fiKx+fOm9T+zDrlr9UnYlnyeL+2X/rqInacf85lZdf6fOI3HavnS314eHhC
QkK9evVKrFxDEqVzDrz6PuFY1brV7AcNLbF4SUSEQGUgAKHMy7vKXWaJSjZ6kSVduhi1Z3eDFau4
lv/4HweEZczd92z92KZO1mQez+jISYCEACGQn0BJqGTEGRN4+UUs1ahLBxtpdHCMiscVB4UmmLtW
b1OvCiVNeZXBqO5uh317wp8+47nXcxVm37x4R2Lu0r5VfT4le3ztWjLDrWObWu/3nPC4yMzMbNy4
cYkV7LmnyYcuvvry/pp6Y7637dCpxOIlEREChEBZJkBUstFLJ2T1CkVKaq058xisfyYRN50LeRWb
s2RYA3KegtGBkwAJAULgfQL/RyUb013GvVaHbt062LEppoVHjdpVfKo36NmzJy2RcZna+9ESGRfX
p24jVys2xbNp1b3n57RExiVs0LZbtw9JZENmPnBaZnGW8+sEqbsu20Jkwncm833FCZqETQgQAgUh
oE4MXP7b9Gmrj+a82SCYirp9ZNqM6evPvqQo7aXdC36dOfdmSObfQeoi7x+eOfPXzacD4DEmT3i4
ZPqvizefzi5IjMV9rzgs3MTZ5V2JDPfQp5GZ2CeLSOTihk/CJwQIgY8SMKZK/mhk5eWGiLRck7RY
M0scSOpUXtJM0kkIEAIVnIAm6+j2Y5RvXdv4+6fuvIp4FhASePvAsaDaLWvHnTly7WUoy6V1C3fm
iX03crIiAx68xK5ZiSq7bh3rPD1yPjg1+uieE85t+vbs0MC0zGBSZWaopVIzL693UxSfjgPwVDhk
ocwkkySEECAEKi8BopLzlz12Nc9Vac2yElhmIq4F2aqz8r4bJOeEQNkiIE2OM+F0HdB/WG/f2NQ4
uUScFhGsrlXnyy4DWjRipMgt+ak3/nooa9qlPksrF+fIdGxbD2Hq6TOXnFu0sdXEn7gRGHD98JmL
T+TaD6xFxtpoPj9vYq8EL2ViIkOntalR4904QxLELBa7fhWHEkwIiYoQIAQIgQ8ToHfkNvzl5s2b
Xl5eLi4uZQ1VCe+XHBCZvfHUi14vD/g18vcYMbqs0SDpIQQIgdIiUMp+ydnBS7cf7z52uv3j9SvC
q88Z3Ebz6tCcu5x5w3uf3j4r239iX195VMDtQ7eiR8z+2eArplVkJyZF/7XruFPtKudDFb/1b759
wxL/b9b08su/Ku706dMikcjUtOQMzXocFv3gvuTKJbPJP7O4b44fw2ZbJ1+oopJyJnSyNRwPQS5C
gBAoFwQgJjHY9vT0tHxnJW65SDkSWUKr94oJRwmr5FNPUg4duzc64ZjP0G/tWrctpkyRYAkBQqDc
EShllayhzyhNr9pI8PqhsOU3nX2YOm3G+j9P1uzd4PXZ180GtJRls+00QefvSL+Z8rU+U+Nup7l6
O1joaHVv77Hqnds+PPekaZ/a905fbDd6aUtXdj74Z86csbGxKWGVnLV/H0+RKxw2gqKPnaIvuUq7
9ExS65p2bXw4+Xa0LXe1hSSYEKhUBAwq2dXVFePtcpdxopILUGQbLsc8PXt1aOyJOivXYllJAZ4k
txIChECFJlDKKpmickJurNx6hlGl3dThXZ6c2Mut288kZOe2q+F1u/7wVQvu9nlrQpW8L378zU/3
4Oyd3G79WgYc3nLieUzN9t8MbF8t9PLOrVdeVWk3+LuO/u+X0sWLF1u3bl3C2/M9nTzBok5dz8Hf
vE1PQpZ6zJrbi4bWr+5a/jraCl33SeYIgYpMgKjkTy1dnM3z26FXNk8utZUH11y6gmVi8qlPkvsI
AUKgohModZVcfIDRSTRt2rQkjUCqzMx7I76r8fNUm3d2+Tx8K/rS08RlwxuKBJziyywJmRAgBAiB
dwmU0E5wFQC6VKGJSZHYZceZuruzSnwtSwUASLJACBAChMCnEJBERrB4XBPHf63SexKR4WFvRiTy
pwAk9xAChEAJECB7XPwLcmqOQiFTcFLjhB6eVP7T3EugOEgUhAAhQAhUCgLi16/5tnY8G9u3ucXB
1MmZ8upuxNeiUlQAkklCoFwQICr5X8UUkiRz1OXYCJg8F9dyUX4kkYQAIUAIlEcC4tBQno0NW/DP
bhuRyRKJXF3X27o8ZoekmRAgBCokAaKS/1WsoSm5gqwkK3OBibtnhSxvkilCgBAgBEqdgFYuV2Wk
m3p5v5uSV3HZlmZcd9uS242u1DmQBBAChEAZJ0BU8j8FhJ2jk7KV3PQELo/Ld3As4yVHkkcIEAIV
koBOGTW9f5t+E5bfvHJ526mnFXLXYHlykloqMfP1fVuCaH6fRWbV97Yhnm4VslaTTBEC5ZRAgVVy
atCFX6f+dv9lyOXr91MUFaoBT5eqFGKpN0vCc/NgMAtMppzWAJJsQoAQKFMEgs+cC4zSMpkJ0c+D
7t0JKVNpM1Zi5ImJmtxckW+VtwGm5ShiUqQ1PCyMFQUJhxAgBAiBohMomBbUa1L3LVm19+DWVzHR
l7cef5GpLHoKyk4IydlKWVa2oyZbUKVa2UkVSQkhQAhUKgLmzk5CdfqN3RvGL9zp06omoyJmXhoV
xbd34Fr8o4kDozJNTdg+jmTpXkUsb5InQqDcEiiYSqb0arXO1MnBdP2sXy6mqB3MK9SWlklZSmla
Bicn3dTnHwtHuS1ZknBCgBAolwRcGvf6afZP4yf8OnvR/FGf1SiXefhYosUhr0VVqry7j9DTyEwb
Ed/egv+xR8nfCQFCgBAoOQIFU8kMjvPQ6UPqezbwqdJo2oJJ/kJWyaW0+GOKSZd5aNJNrS15dv9s
TlT80ZIYCAFCgBD4h0B24MnZvy/ZsWPb6kVjf/3jSsVDo1OrJBHhZj7/OCXLVZqYVKm/uwWTWSFN
5xWvDEmOCIHKQqBgKpmiNMGPnsXm5kilifv/2B6qqDiYdHp9RIrMJTfJ3N2VY25ZcTJGckIIEALl
ikB6QijXofa3o0Z9/8PYrs29ylXaPymxstg4vU4vdHF5e3d8em5ihry+D9kD7pMAkpsIAUKgxAgU
UCXrEs8fOCLlOjo6Orm42vEL+HSJ5aoQEclVurgUMS8lRuDgxGCzCxECeYQQIAQIgaITsLB1THl1
fd1qXGsvP4opeoBlLQRJWChHZMZ3dH6bsLAEMZ/L8nU2L2tJJekhBAiBSk6ggDqXYelZxTExIghX
cEi8XFdx6MVmKHjSLHuulu/hUXFyRXJCCBAC5Y1AUnSopW/7cRNxje/cuAI2R5LwcI6ZiGfzj+X4
YWh6DTcLAa9CufCVt3pH0ksIEAIfIFBAlazPiouV+DdsiatZ42qmFahNC0vNNZOkOwgZPM9/bXRP
ag0hQAgQAiVJwFRoHvPs5uo/cK04/yC6JKMugbj0Wm1uQpzQzY3x98bIuUpNSHyOvwfxcysB/CQK
QoAQKBiBAqpkpj4zJvbelTO4Llx5ItYWLLKyfHdUaq4mNdGEwxSSU/fKcjmRtBECFZiATvby6eN0
y/rjJ08aR19jOzZ0r2DZVWVnK9PTzf3+2bvjVWw2RTGqOJM94CpYUZPsEAIVgUABVLJGkSuW8nuP
nznmu69x9e/VwrKi2JK1eiotXeysTDNxcmHxyVZEFaFmkzwQAuWPgDpl17oVe05d3Ll8+YIFCxYv
X3ntSVz5y8X/TbEiLVWRlmb2znkiQbHZQj7b29GsguWUZIcQIAQqAIECqOSXB5cO+WXp6SOHVq1c
sWLFqq27L2dUFFtylkydkyXx1GYIq5LzRCpArSZZIATKJwGux5yVWxaOH7zg6InUtLSnZ/a2qe3w
r5yIY/auX73myM23x56mB9/AKr/jj2Jx26Ozm9es3fwy5e1hT7rQm6fXrlm95fgdFUWF3j6wes26
exGZpYtGGhnJtbTk277ZbVOr07+Oy6nqYs5lF6AzKt0skNgJAUKg8hAoQMPk1f7reT+NGzJx3JYD
p86c3P/bpF6WjH+dUC1Oen3/fkDqu8dWa6TRkbF0m52b8vje/VfxGe+SVUlSouNT6SBUOYEP7j2J
SCwt7hkSVXpKpjAnVej9zxaepZUYEi8hQAhUUgIMpgkndmb3rt27d2vWtGmrDj22XAj9B4VOcnrz
nldSbczlo2ceRCVHRSRGPd+16bzSRHVt656Hoa+jM1jctKBtq09lSFIjw+K1VO7tS0+Y5h4+rraU
LDosw8SFn7H1jyNZpQpX/Pq1qbsH28TEkIpMiTIyWdq4CtkDrlRLhUROCBAC/0GgACpZ5OJrmRyw
YOmi/X9dvHT+6KrVh2Pe2eRCnvRqzfw/du76c8Wqs1KtWqVUI8aYi+vHzVocnCELDrh+6cKZhTP+
fJoiUysVGq1eHB+8ZeYv01ae0lPayGdXjx46umzG4kuv/iWjS6zU4rIUJhmJ5pamfEenEouUREQI
EAKEQH4Cer6nXxUPb+/ajRp3/278uMHN/7lBkvBKqxs8acKMITVC40LiXge9evRAWqPxT8Mnd64v
f51p2X/wsCFffybU5uZmJ7wKDFdTJlyGPCYiOEvN4gpdXUyzQqM09dvWE34IOtbS8Xi8EigObANn
iVP3mG+6nvAkiU5P+XvblUDUJApCgBAgBApKgKHXv7EH37x508vLy+Wdnd7fD+vm+ik9Jy6jLD1s
RSZuHX84tnqs6O+TkoJO/3Fc3H7m1zYrluzxa9YgJ47RrVPV/ft2Z4kcWnYa6KkMehER8fi+tMeo
rskXjrPrfdnQSRH57Ma+O/pfpvfTSWQiM7NLS2a/dO45cWDdfPGGhYVlZmY2bty4oHn79PvXX41L
2bu9n0V6jQVLGMQv+dPBkTsJgcpEQC6Xo53s3Llz4TJ9+fLlevXqWVlZfexxVbZMYyEU5L8t+9Wy
nSc+/366/dMNq8KrzR7URvXy4PxH3Lnf9j69c1ZWremD6yr2/rHWqdvotlUMUeiz4yOCY8Mu7Dnf
etLiurzgpw9f3nud2mfc5Grv+QCfPXvWwcHBzKwYnYP1OJBaKk5c8rvw8+6iJk3R9zAp/ZEn0uik
nHGdHdnsirLM5WOlS/5OCFRIAgYx6eTkZGpqWu4yeOHChVatWpn8Pcf1bvoLppLxZOiza1yvth7v
LUd++teSq4Jek9uZrtywvUGv6c2c5CfWLc+xrstSRZo1Gt7DKmTd7lMpWaZdvxnaxMeCopjYBUib
fGfe5sgJvw7Gv7Vpz9duvdlm2He17PL3DeHh4QkJCehdiok7jCizT8TYHV3do46V8+Tp1N/DhmKK
jgRLCFRyAmhMYbYsGculcVGXlEr+j1SrUjbNX2XSvrdZwMkk3/5DWjqpM14uXXu3x8j2d7efrTds
aPje36Jden7/RUdrPlOp0JuJTGRSsVaVtmnen169hrjbOnqIUtYvPtB13p8N3hPqp0+fRg9RrN2b
nsFQBr3UXbpgOnCI1tYWfY9Wq1t7Q1LbXdTWm9JR5Gxq49ZWEhohUKIEDCq5SpUqn2AIKNGEfUpk
xlTJ/xVfyPk1++PqTv3acvnCoz2n/upvlrt74U+34zWx4aGuXScu+KadraXZ5d9Hvqj248ReNQ2B
aJJuz9sSN+3Xr7RJr/bu3e3ScWzX2v+cxvQ2opiYmGvXruG4v7f7a35Knj/xHgalz9UyjwaoOz45
6FnXQ9q0JVNXgc5K+UQK5DZCoKQIoCXV6XS+vr4+Pj4lFafR4illlUxRyQ9OLNx8muHdbv7kAc+P
bec1/Ep3f8WmW1H1u0z8vrF01JRlHBsPK5/6A9u6Bb+Uf9aj/sE18x9H53i3HDm6h+eBJUsepWa3
HjCzb2u39822Fy9ebNu2LYfDMRqsDwWU/Nfx6FMnm2zZbvhjQrZ66pYH43r6NfT9qH29WNNFAicE
CIFKTaAkVLI6O3rplInBSmGr3tMH1E87c0PRb3BnDiW7cO6CS6PO2WfXbH0Qb2lZY8KP30Rc2iNo
Nri+WcjvPy+6GisfOOEX95S/ft7+vEXj6rW7DB/W8Z99NA2FBo+LrKysRo0aFVMZvkpVrVt3ukfQ
gcZTfzav36CYYiHBEgKEQHknUPwqWbZv7uTNN6P5bL1coWTzTHsMnzuuf3FNo71bHOgkmjZtKhIV
76bFQUsWayXiWvMWGKI+/TB+z9WITeOaiQTFq87Le8Uj6ScECIFiJWAclSyLf7Z77yU5j6tTKzR6
lsiqRr+hn9my/0m5Ojc9PUdv72jLVEmzZHpzSzMs0NBqNQwWm1JIk9OzhXbO5lyGNCuDKbQyYWLT
TDGby6Q4AgGXJc+V5sqVJiJrK7P82xVDJWdkZDRp0qSYGJ0JzDy18eDQ9Ev11m3iWtsUUywkWEKA
ECjvBIpfJeeeXPP72t17w6TWbZvUjA96ZPn5wgO/disBbiWgkrUKxdNfptg0aerx1dfIEaZnlx59
mS1TLfymJIYBJcCQREEIEALllMD/UckF2ONClvRi25+Lp06Z8OeWfft2rp0+d0uU/F9AOAIbR0hk
fMc1tcyTyLhYLHobTCbf1MkFW2LSnmemltYCLoPBNrFztLeytrUSCfl8vqWVjbOz8/sSuQSIJ6SK
BRkJps5OHAuLEoiOREEIEAKEwH8QEPQYO/fCwRV1rLgwDciZAh+PirPrjionWxYXK6pe3ZB3hUob
GJXZ0JcYJsjbQAgQAmWXQAFUsl3DwQ+Toxd82aHtZ716dWtfs7aHyb/3Sy67ufzvlGl1VGK6xEuV
LPT2oW3e5CIECAFCoNQIyC/tWDZ22dHAgDt//fXXrXuPOJyKcxSoLDqayeUKHBwNdCOTJVK5poY7
sU2UWm0jERMChMBHCRRAJSuz425evK7hMfesnDt3ydZMytyeX+5XJYsVmrTUHCtpmik5T+SjlYXc
QAgQAsVLQJ8ZH/H0aUS1Lv2+wNWvvzklK94ISzB0cXCwwNkFB+8Z4nwclu5kZeJs/d6GdyWYJBIV
IUAIEAL/n0ABVLIk4sa4/oP+OB+MbZVxMdNTU+mTQ8r3lSHT5MbFWgrZJs4u5TsnJPWEACFQ3gmo
xWq7mt+P+76agIftJjg8nolJSZz0UTLYxCGvTRwcmH+fXRIUm+1ubyrkkxm8ksFPYiEECIHCECiA
SsaZUFN37l4/Z/qIvGvowA425b99i0pXWOYk2dha8Jw+sAldYYiSZwgBQoAQKCQBvVwmkcgUas2b
S1tRNqbEgYCKjAxTTy8DmJRseWq2vLYn2QCukBWFPEYIEAIlQ6AAKjkp8M7ZB0+fXr2wJ+86cPRm
prZkElmMsUQkS81ykkQ2Fhwr62KMhgRNCBAChMBHCXAcR0z8pY+fICWHvnIVKmZFOWsjNyFep1Ka
ensbGIQnSrJl6tpeRCV/tE6QGwgBQqA0CRRAJdcc8NP2+WMaNmrUHVfPXn16NLcq/7bkhLg0c3mm
wM0Dh6eWZjmQuAkBQoAQyCOg45l75Hm16dIjbwYlVAwqsrg4rVJp6vVGJb+KyXaxFjpYmlSM3JFc
EAKEQEUlUACVzGAyWSx1+ON7N3BdOPbn2kNx/94JrtwxEiv18vR0F73YxLdquUs8STAhQAhUSALy
zMRnjx8HBASEJGRZWllUjDxigwu+jS3X3BzZwfmLTyIy6vtYEdNExShckgtCoAITKIBKzqPAdqpS
vRYuPx8bBwsORR/bXX6v2EyFMiPdhqEQ+FQpv7kgKScECIGKRMDCza9j184dOnQYNGbqpIFNK0LW
dDpJRLj53zslJ2bI03IUfmQPuIpQtCQPhEAFJ1BQlaxOj8+7spjdvuzuZ1a+vRQSM3KphBgzOxse
OXKvgtdzkj1CoNwQMLfgv3p0+dixY6fP3AxPyCg36f7vhOLUPWlUpJmPr+GWp5GZQhOOp4NZBcga
yQIhQAhUbAIFVckOHfp0EAlNTEyE1bw9WeWcTXy6zCY7ztzLkykge3aW87IkyScEKgIBvSwn88ml
E6lM+2+++aaOZfL+M08qQLZk8fE6tVro7m7Iy4voLHsLE1vzinNgSgUoI5IFQoAQ+CCBgqpk2akd
GxPVAgEzY8WS9UHSckxVp6cSUsT2smRTd3e4XJfjnJCkEwKEQAUhIF77w+dNB847f+n8smXLDp6/
p5ZrKkDOsFMy5uv4tvbIi0SujkmR1vGyLN8TkRWgVEgWCAFC4BMIFEAdpj891NGv4fJLgcnx0dGx
CQnRKYry7JYsVVPZsfFWPMrE3eMTQJFbCAFCgBAobgLCL6auPH/p8vnTp/ft23fs1Olfv2lS3FGW
QPhQyThyz3DqHvzckrLkDarYlEC8JApCgBAgBIpIoAAqmWvh0rJTl2++G9+tRd26jTv/OLKva3me
MUuVajQJMXZmXL7rm3nAIqIkjxMChAAhUDQCbI+ajTp2aI+rY0f8v20193K/o7Beo5EnJgrd3Axb
P8PdwtKU60IOpi5aRSFPEwKEQMkQKIBKFnk2m7XizyWLFy37Y8WKP5f9Nu1LR07JJLJYYolKlQmy
U6zMTfgubsUSAQmUECAECIFKT0CZnq7KyRZVebPb5qPQ9JoelgJe+d9sv9KXLAFACFQGAgVQyRUM
R1xippkkVejpxWCV91WIFaxkSHYIAULgwwTkkQ/nTB43duGu9L/3qn99Yee4ieOWHnqs06lObZw+
afyU8y/S/35Yn5vyav2SZTfCs/HN81Mbceeav56XMFx5SooqO8ugkrOlqtg0WTUXetdkchEChAAh
UPYJVFKVDIfq5IR0a1makJwnUvYrKUkhIUAIgIA6/fCeM/ZtutdVB5+68zz4/u3Ah1eOXEroOuBz
+Z2Tl1+Ei6p369XI/tzmk/EpoXeuB+RS6pC7jwJfxUYnKDVp9w5fzerWv1Py5aOP0z68IpDNLhb7
riwmmm9uIXB2Rg6C43LYLGYtb+KUTCo0IUAIlA8CDByDZEjpzZs3cSaqi4tLWUt4WFhYRkZGkybG
XMWSrdQvXnux8bk/2i1fLKpVp6xlmaSHECAEyiABuVyOdrJz586FS9vly5fr1atnZVVYV+Ps4KXb
j3UbM8PhyaZ1se79PEU5SUEXsmx//abnmZ2/ZVQfP6SRVcrDo5uvsb4f5h8RIq3Vog4OgD67Y4PY
u29X84t/Prf7bXDHg5tnMRv93L+2ab4snDt3ztfX18zMmHsYo2uBK3Ly1i0KqcR9/ESYZA7dT30Y
krZ4cHUm2VaocHWIPEUIlFUCBjFpYWHB55e/JWsXLlxo1aoVNjl+n24lVcmvUxRbl+zqnnSt8Z9/
8uwdymqtI+kiBAiBMkSg9FXy1uPdx0+3f7huRYTfnMFttMGHfrvFmT+y96ktM8UNZw30jt20+WSb
78ZXEf3jRXZh92Z59a87mZxY8th+9jcd9q+fyWk+rV8tYT6sp06dYjAYQmH+74tCn1bJer1243pu
/fqaRk10Wt3+ALWzNb+9t1anJxvBFQUteZYQKHMEDCrZ39/fzs6uzCXuYwkiKjk/oauvsy/OWjjQ
U+s/bxGDy/0YQPJ3QoAQIASoUlbJ2uz9C5eE2VYRRL926zqima1Uz9Hs+GO/U3u/2DsZvb/vtGvG
GFWDYQO6NPdzNk1PUfnU8Ex9dX/16s1y7+5TB3qsnbPHs4Nv+O3sr+dMqWGe39fu4sWLrVu35vF4
xi1mfU7O3dEj/SZOtmzYKFuu/+6PG798UauRb2Gt6cZNHAmNECAEyjwBZU5CwOPXWh5fq1Q5V6tt
pk9lmvvYmX3EPUySlqIVWFoIudIcMWauYkPuJ6ptmjSpI/iP4fn/UcmV1C85Lk1qLU4SuTgRiVzm
3xGSQELgkwgkPj8/f/r0adOmTf9t1cPgyEf3LyblfvRB1bOrl8Iz1RSlehXwKjzwwToE8efeZMVH
HyyNG1gWPYb0MkuPY9f9vH8r79SosGx+rcED6yUGJzQYNKSOLde5fhc3RsaToIic7LTYqEQdRaVH
R5i6+tgyEySCOoO+8It/ndrq26HvS2RkBnYgpVJp9FylvQhk8PiG+bonIck8NtPLjhx0anTMJEBC
oMISUEvTAu+c+33hr3vOP4lLE6ckRqTJtJRem5OViQUWSmmOVKlF5rVKaXp6uhytXt51Z9+WW2ES
fAi5e/2vQycu37hxbPWK7cdeFeKQD9bs2bMNgcbExFhaWopEorIGOzMzEyYcIzpMA+PV26+tX96q
0amVsEr1spZfkh5CgBAoBAEmm2uhT738MqZ1t/61vSxzstKZAvuckPtXbj3WcXmBty7G6mw8bIXP
rp25HfBCb+VpZ4qdLGXnt+xk1u3sIWLe++tUpEzv6Vcj+9aFEJVL4xr0QXH5Lo1Gg3bSx8enEMnD
I5GRkY6Ojh90ffvEALkWzk1btW7i7w6DiKOvn72IZeFWs3Wr1lUdTSkT22YtWjVv3rxJTV9LKwfv
Km7wurD3rdUSV9NGVnzK2rMu7vRxyO+RbIg6IiLC1dXV6LbklOvXFCkp7l8MwPmmB25GC3isro1c
mQzibvGJBU5uIwQqOwGuyKFB68YquaTX2J+aulmEPH2QrFHfWr1i39kz507euH//9MGL4VU87C5v
33j86o37QWk1a1cXcJiRD05ffBqVkRhx83agU6PPvh3Y39808/ojSau2fh/c1AwNoLu7O4fzge2N
K6MtGaONrJhYO77OxMu3sldAkn9CoKwSUKq1OTKVOFf90R/chpuFNm4NWjbxr1WrReta9ubqp4FP
Ht49vXnVoYjwx7MnTbsb+urIhp1Hdu3YvvPU7dtnli/4M4reTI3PUMWsmjlm/Pgxm66H+LXt3q5N
6xrVXIT88rwVfFkqUFlMjImjA4PNRgFFJUmquliwmEQil6USImkhBEqWwJVnSdN2BPy6++msj/1M
3RGw4WyICnZNeU5urkKcjYSq0pKjElKSFPzqC5bOteVktZ+48Es73bY/lx28EabTap9fPPgggbYX
Myi9XCYRi8XSXJWptStFZVwJTOswsH0hWnZjquTgGwdXr17/IFpsYK7LiT28afW6Q5ekFKVJeb59
zep1+69kvbsHkTL5/F+nY2AUl8Uc3rxm7ZaTCbK/zeXFWWyJ2VptcpI1j8F38yjOeEjYhAAhUEgC
aOeWHwvqt/D6wCU3P/qD25YceUnHpFCoVSo55K9Wz9Dr1JRJ3S6jfpk+1L95s7E/z+1iprpw+Wqm
0N7Nrbqbk0BPNzYattCtzzdjxo0b3bmOF59ipL88ESGo+kV3MsVUyIJ79zGNTKpITTX388eXEUkS
iUING78RwiVBEAKEQLkloFBpWEwmh8XEppD//4fLZqrUkL7Iql6jVmsN3hJ6vYbBt3PxNeerratW
c7C1NMGGOUxOnfa9Ro8du27Xto5etBLW6ESfDx4zevTogd2a6mOfHdmyQuvfpm1Vi0JgM5rHRcar
K+t33hNaS+/fTPGrY5eRmJGWGhqZpAy/ek1qZh1+/3qawCPnwcFEMz8HbUYuy8KUzwy5uH3p3rNO
jbuIbx16lG0riD//ONOmec38J+HB40KhUBjR4yIwKiv50vk67ub2n3UrBDLyCCFACJQAAVtzfgs/
+7a1HdrU+shPu1qOdbyscD+VE33hSWTtRi2sGdl37z/Qm7qYqM1quEsvP0uu16TqqzP39Y42vt71
27Zu0LBxay8bbFekeHLxplOHLxp4Wie9Do8LPLNs55mqzVtaC82tRR9wny11j4viw14cHhfy5KTY
I4fd+vXn29nffZUaFJM9oksVFsuYppniA0JCJgQIgeIgUMXZvF1tx9Y1HT7607aWY+Nqthx4SKhl
ETHxTlUaOpnqEqJDGVYuIg3Xt5pVWFism18tWUicZ8vGuogbJ6/fefZKUad1TSGDSgl/pbHx8nUU
pSYmxj+/sObobaU440WKvlFd3w+u+/s/HhdG2wnu+V9LzjN7/9Ldcs2qLd71W+nTVC16tBYxGTc3
LguzaVvb9PX+q6HmQou+I76QPLrNrtnTXxR/5ORdth3XqfYA97jjq489MhGYdBzwbSs/2Mb/dWG/
5NTU1EaNGhmrwPbfiM76c273Xs1chw43VpgkHEKAEPhEAlgoxsq7PvH+Atwmjrv+Mq5Ww2ZWjJzH
T58zTR35GjM/X+31p4kNGtcMvRDo3Mjh1r69z1Nz7bzbDx/axoRSBV6/JazVytuKingWHBly7/Lz
BAzgPVr0G9yOtoDmu0p5j4sCgCjwrVji3bRpU+OuS0m9fSt0zaomGzexzS3n7nuOSdBZX9UucMrI
A4QAIVDpCaDXwFaVNAbDp7zN2N98xL6STIZeI8+WKBhMrpm5kO5asC3d3+sfdBqNSqNRKuQMjomZ
kP9Bl6+S2Anu6V9Lrpr0mdzJ9M+Vm5p+NatJ3n550sirW07GfjlmUNb19fP23TUTOQ+aNLelO22k
ObZk9C1ZNTdedJbv0BFeIXM2/6XTmfUcP6dHDft8ecBymatXrzo4OLxhVITqgpC1DMa1V+pGF7da
f9ZKUa0GU1cSPh5FSDJ5lBCoUATQrul0uipVquAMi3KXMaKSC1Rk4Vs3i0Ne11u0OFfHGrb85pAO
3l0blLlTqwqUI3IzIUAIVEgCJaGSY2/tXntZM6CH1ckjkQN/GWlH6aQxNxev3d/sm18+q8pYuGJH
p2EzeLcWXuJ89vNntSmBKPTaweuvk4JgV67Tz0cb6NxpeuOkDWsiPZb++FU+ExNsydjgw1hn72Uq
9OtXHq3/4ECrJYsEPuWvn66QFZRkqhISKPqgt+ShEZVcIOYBkyeaenlVHfNjQETm74cCFw+t7+Vo
zLP9CpQYcjMhQAgQAv9FoCT2S3Zr2rMm++76jRcbD/jGVfLk+oX70bHxSVLOo2PbDj/VDGxf/+Sy
WbuDXQd3r/3k/PHnUYq6XQZNnDDl15lTx48c/G23Vk83zVp2Ud23W+cPzsKiQzXWlZGrU8VEWtlb
8/OM0+QiBAiBUiFA2uuKTUAjkykzMkzdPZDNgNB0BwsTZxuyU3LFLnOSO0KgAhIwml9y8bGBLTkj
I8NYtuTrYeJbU375sq6l728Liy/NJGRCgBCoeASILfnTyzQ7KOjV0t9rTvnFtIb/pM2PXKwFk/vU
+PTHyZ2EACFACJQYgZKwJZdYZooYUWpCqrVGIvD0LmI45HFCgBAgBAiB/yIgi4nSa3Vm3l5J2crU
bHk9H2vCihAgBAiBckeg0m3KkxqdYKPPFfhWLXdFRRJMCBAChEB5IYDzRHg2NhRfEJGQk6vQ1HS3
KC8pJ+kkBAgBQuAtgcqlknFoSWZcgjVLZeJBbMnkLSAECAFCoFgI6DUaqGSL6vThLE8jMnycRNYi
7E5NLkKAECAECkZAp1GKs3NkuXJJTrZcqVEpc1Vvzhf5v+FgJ7i8C7sqGT5gt/uCRfz33ZVLJSdn
KXnJseZOjlxrMv1XuApDniIECAFC4CME1DKpLCb6rUqu42X599alBB0hQAgQAgUgII17vGLGhC+/
6DNy4rzzjyOCnlwITf243r29Z+OlwBR6lH7t0o3rT46vmDZ2/r7cAkT7z62VSyXHpUp4KdGiKr5M
LrdQuMhDhAAhUEYJJDw5NWPCuB/GjBk/Zcndl+H375xN/HijqHhw6kRwupqiVAE37kfHJ53f/ueG
Ew/LaA7LT7LkCQlapcrcyzM6WyVVaKq5WpSftJOUEgKEQBkiIPJsPmvp7I7tGo+eu7x3cx+9jpcj
jrm8bf2MKRNWrNm9ZuGUaSsOSRWKG/s2zJ8/b+vpR1odbTyWpMUFvQrGiXqvXkekpMvsPbxMGWxV
obJVuVRyUnKOSVq8uZdXoViRhwgBQqDsErDxafJt78ZaHq/rwC/8XM1ZbL44O/vl9dNbN22//+T5
8Z0bTz2KxrTb/dMHd+zY+ThGnJcTdfD9u/ESfNBFvQ4JvBsQERYbEppWdjNZTlKW8/q1iaMjx9bu
aWi6GZ/t40S2SS4nJUeSSQiURQIMNofDpA+c04a9fBAYEvjocWKXfr1Crx4xadzVJTF41fxFm/be
xsEaR/6cdymSFsMclvTqsZ2rVq06dumpsFqjZl0bmVGaN74XBcxgJVLJWgwvYmOtBCwTF7cCUiK3
EwKEQEkTUEvE8sQEeVLSx38SE9ViMU9k6+Nf3cvbu0ZNDwuB4vHThw/vnd2786pSHr905vxwWc7V
XXt3rd+w88Dlp0+v/zF3cZgMOeIzVDFrfh37ww8/br380qdzt8FDO1uzqcI1piUNqAzHJ34dLLCz
pbj8l5EZjtYCcwGZuyvDpUWSRgiUIIGEs6cfjvn+8YQfH08Y9/9/cNur5Ut0ai3FxCnJujwbMcXh
cBlsU98GnVs2rl6zfcsW7drWd7BITUow92/So2evX+b+UseeR6tphv2wX35fuXLlpMEdeJJcisvl
mZiaFiqblUglZ6up3KhIWxsR342o5EJVFvIQIVBSBLDk4vWKP+8MHnh/+Lcf/bkz+OvgP5bmmYax
QgPLO2AapthMSscyb/DZ8B9+7F+nXZvhP/zcQaS7df+hytazevWGDRt482jLhIpj5vXNhJlz5szo
27iqPpdislhoTem/lMlLlx6yfvH8BdvOSTHoz7sSAs7MXzB/59UQLFPJCL27+8CZzH989vRxT04t
WLBw77VXdFZTX6xZsHDlrgs5xZw1LN3LTUwUeXrm6qmopJz6ZA+4YgZOgicEyhEBFo9v5u1t6uVj
it//98fMx5dnZaPX6ZA7vV5nsF7gA340aiWlUqpVKqVCkaNk1Grawoeb/So4ODJaI8ibuNLrNQo5
bQhR6ylZUsDOuavOn9u769LTvxvOAgCrRKeKhGfrDk6Y1cMyq+YfayiylqQAlYTcSgiUOAG9XhYb
q1XIP+lV1elZfL7Qw4OKvz1jz+2hP071ZcWs3rSV49TIUuE8oJty5qZHYyYNuTRlVbIdly/waNjI
zczau0YVOwYl2TF9nvOI+R09tQfXHHSsWy8tYN++h6zfFkyq5f6BBb6lfKqINufo0pWvLV11wS98
+37fzEalZeQe2njKqpl7yNXE/j8NTj22fvsrs8WrZ7ip40JjVVVqWNy5fFcsy7hwOHLEsuERh7dI
vT6vU8WpRnX390272FS/efPmpoW0tvyreigSE57+OqPmyJHxXg1+WX979egmbrbk1L0Sf4NIhIRA
hSGgVaZlZJlYOJhy9dkZKRqOgKViWFrz0tKyTG1slckZAgfrzIhnzyPTOAKnxi1qChmUOC1Za2Jl
acqVicWK3OzwV+FqDsvE1qtuNdcP2ob/z6kilUgl3w9JfzBtes82VT3GTa4wlYdkhBAgBP4hIE16
GJZctWZdc4bkxavXLKEdVyP0cdc+fJVao3aV6NuhTvXs7x85+DxZZuPZctCA5nxKHfLgsUm1hm7m
VFRotCI7/vq1hzIm5d/+yy71PjDjVMoqOef1ks1HekyY6fBo07o4t67WjOzsmJs59rOG9TyzbVZG
7SmD66ctnXex1/iRzpJnt57IWnZvIaRgFk9d/vPulv1qrpi/1rVBQy+vlkMGtn7fWn7+/PnatWuL
RKKiVyfxsyfhq1bWXbLkeBTz1vO4RUNq87msogdLQiAECIGyT4DH47HZ7LKfznwpJCqZBvLXlVfi
P2d3HjvUrkvXcleEJMGEACFQ6gRKWSVnBy/bcfzzH6Y7BKxfEVF9zqA26qCD8x5w5w7rfXrHrEz/
qUMaZC6df6bX2FG+Fv+gunfojwjbnl/7RA3eEvRrn2b7dm1oOGJ192r5jbunTp1Sq9VCobCIkPVM
FvPhfW7wS82Qb3Y/YzuYMTt4Yc6TQVy9iwiWPE4IlHECcJNjMBh16tSxt7cv40l9P3lEJdNMNm2/
4rh/abt1a4Q+PuWuCEmCCQFCoNQJlLJKVqdvm/+HskF70xfXVPW+7lNbpM2NWbnyUouBzZ8cvNXi
p6mekhvzf7/Sa9Kk1t7CnBy1vYPVufU/7XvNGzliZG3ThIWr7/f+runV/YeaDl/e1iO/sQedRIsW
LYquklFGr35fxGYzbH74edz6u0PbeXeo61jqBUcSQAgQAoTA/yHwf1RyZVm9J9NSiphIcztrLg5N
JRchQAgQAuWOAMemZ9/WMRdPvDJrMLBj9eA7l2OY9fq3szi9/6R9p4EtnXKvHrjBESqfP3mSmhR5
/1agXq9OlzHMWbqz+3eFMOsO72Sxb8tBUeMhrd+TyAYSWm0hVrbkh6jXanNCQ2xrVA9KkOi0Oj/4
spCLECAECIFyS6Cy+CWHpasuT53VwpFVc/ZcikWc5MpthSUJJwRKj0Ap25KLM+MwpTRt2rTofsnY
3SJg3JgGs3/bk27zPDhhzejGxZlqEjYhQAgQAkYgQGzJVEqGlJEYY+7hRiSyESoUCYIQIAQIgQ8R
kIaH8a0slWbWLyPT6npZEkiEACFACJRrApXF4yInPoGvkZt6eJbr0iKJJwQIAUKgLBPICXnNNxdJ
BVbRidn1fYl7W1kuK5I2QoAQ+DiBSqGS1RQljoqxM+OYeJKzqT9eJ8gdhAAhQAgUjgB2uRY6OQel
qS1MOK62Rd0xo3BpIE8RAoQAIWAsApVCJct0VHZUtLUpj+9KTt0zVs0h4RAChAAh8C8C6pwcVUa6
ebWqj0NSPR1Mrc3oo2LJRQgQAoRA+SVQOVSyRKWKjxF5uDM47585VX7LjqScECAECIEyRECemqLN
ylDYu8cki6s6G+GAkjKUN5IUQoAQqJQEKoVKTknKsshJMqvuVymLmGSaECAECIGSIJAbH89lM1O4
VhKZsq7PB474LolEkDgIAUKAEDAegUqhkhPi00ylGUIfX+NxIyERAoQAIUAI/IuAJDRE6OmNbTe5
LIa3oxmhQwgQAoRAeSdQKVSyNCJCYCbkO5IjoMp7dSXpJwQIgbJLQBLymu3m+SJZUdvDgsOqFJ1L
2S0MkjJCgBAwBoGK35CJtZQ2OszS2Z5nRbYlMkaVIWEQAoQAIfAeAY1Eok5LVVs7hqXKa3qQI/dI
FSEECIGKQMB4KlmnOLvht9E//LDnWpQBjEqSfXLDkjVH7hn+mXBrx+yVh3L+PgNVlRm+7rexYybO
exynxF+lQadn/74xLtf4TFOy1erYSEs3J6aJifFDJyESAoQAIUAIUJQkMpxrwouhRFxKV8WZqGRS
JwgBQqAiEDCaSo67d+xWotuQQW1CLp1+Hvrs1pXHiVFBsdGJ4eFpNCdZ0tmLV2KlsDaoAq+cCYrN
zZbKancb1dlJeWzPDfz5/LnzkTlpSeIPM2UV4UxpeUamLifLqkrVilBcJA+EACFACJRJAtKIKC6f
G6wQWgtYTlaCMplGkihCgBAgBApGgKHX6w1P3Lx508vLy8XFpWAB/H33078WX+H3+amzaPW6bdWa
9LXVaWs2qC4OPrvmrO7XyV2enj6VbibMVDDbtO8gfnqH5Vbfy56PR+/uW/2S27yLtzgwRallqbzq
da/53sLoiIiIsLAwf3//QiRMz2C+fBiSu3VVrbEjTGrWpv7ObCGCIo8QAoSAUQigzTE3NxeJyt9O
YXK5HO1k586dC8fh8uXL9erVs7KyKtzjxfrUhQsXmjZtWpRCCV35hzg+4WCtoR6WnDHdqhVrakng
hAAhQAgYkQAawFatWpl8yOPAaCr5+V9LLnL6TukqWr5kbcvhsxvldQTZIRe33jSbPMx6zFfjTFyr
R8YldPh+8Q/t3hwTnfX63P7bsu+Gd1k+4os4Ez9JWqRXn1lz+9fJl/Po6Ojbt2+7uroyGIyCQlEx
WcGXn/oHXuZ+/4PGxAS5LWgI5H5CgBAwIgFIZJ1O5+np6eHhYcRgSyYoopL/i7NOpQqZOzPR1HkL
r8m4z7yaVrMtmRIhsRAChAAhUHQCJaGS01+cW7D6SrX6lkkp7iNGN89K0TnZcy7sWHXoKXvmnNEi
aWJiwou9l8N7j55cTR7DcasniDn09cQ1TQeOa9ewtiNbmpQScfTMbf8+04e3cMqX4dDQUIlEUr9+
/cKB2PnLshqK6AYr1xTucfIUIUAIEAIGAkQl/1dNUKSmBE2ZENm8/2GJ0+bR9c0FHFJnCAFCgBAo
LwT+j0o2ml+yTc3OAz5zk0jMv/hhoJ02OzU1S5ErlrGcWzeyS5eyfOs2bd1tyJSJ4ztWtclOSZIo
dGwzt449BljKkiISJT7+DVu2HzBxwqS+jfJLZCCGCVmtVheOdapYxUoIN69SpXCPk6cIAUKAECAE
PkpAkZysVChfKoR+riKRCZHIHwVGbiAECIHyQcBoKpmimE16j/vpp7F+NgyOQ9127Ro4ufsPnzRx
woRJnesafJ35vu7ObIpVt3PP6k5ckU+LyZPGj5swcWjXRnl/Zbi7eVka+wDphIQMk4wkU1+ikstH
dSSpJAQIgf9HIDfpxO7tO88/ems2yIl6uH379gsvkvBUzJNz27fvehIvfTeE1JCHNx6G4ZuoRye3
79j1LP4/lkgXjTt2SmbZ2Idn62u4igruGVe0uMnThAAhQAgUGwEjquRiS2MRAs6MiKIYFN/RuQhh
kEcJAUKAECgDBHSyC1t23o5MeHR497lHcRmJ8WkJwTtXH43Niftrw95HAfd277ialBa4d+2RRHF6
YlwKveumIuvU5jnrLgXKxAkvYnK54pC1iw9n/UdWCrHw421IuWEhyWwLtsiiipNpGSBFkkAIEAKE
gHEIVGSVrMOezTHhljYWpq5EJRunupBQCAFCoNQISOOf56q/mzlz/rc1gqKDwgIePLl9K6tak98m
zOrVWHfizGmLzsOm/zzLxyHpaWDI4/uBKooKvXObU79Hp/qObDMHDxsqUyKs29xf+B8ZwKpKrK0s
xKVVqTTJCcEKAd9U4G0vLEQI5BFCgBCoGARKrXkstoiNtsdFsaWQwjZwGRkZTZo0KWgUWRrq+tTf
PBmSOkv/KOiz5H5CgBAgBPIRKOXVe1mvlu0+0XXkdIdnG1ZFVJs9sI3ixYFFAbw5Q3tfOrL80vNU
7/bDRrWxXbN6Te0+s1o6U5rYmxPmH23ZosrtMNmIHyc45Ty8cyfoVaqm35gxvu8p5ZMnT2L5h1D4
XxL6P+uCnsFgZWQIzp44YdNW5lOtr69SQ3YSIm8OIVD5CBi2Fa5bt66Dg0O5y31J7HFRfFAKrZLj
U6VXxk1s0qp21R/GFl/ySMiEACFQSQiUskpWJq1fsNa2xyDRg4Mhzj1HdvJRJT9YtP7ZwHGf3dxy
nOdtl5BkOqCP44EtD/pNneDB1VGSsD27/kpNjbwSwR43fpinq081y5SlMzZ0mr+m8Xvb0p8/f75h
w4aF2y85+97tgJVrD/sP7turcUf/94KuJJWDZJMQIAQoCmfAMZnlz0mhkqrk8FfRAT9Pbjd5tG3b
DqT2EgKEACFQRAKlrJIpKu7mwflbzjI92yycOvjl8W28Rl8pri/dcj+6Vpsx4wfU3Tf/+2tx1Off
zuvuFXX0UnaPod3MkGFt9Nknqq71RBt/XfwkPbtF3xlfdvZ5fxMKdBLNmjUzM6OfKOiVfHj/1d3H
jzYZs/L7xi5W9HFR5CIECAFCoBwRqKQq+c7ZO9K1C1tu2CBwdS1HpUWSSggQAmWTQKmr5OLDUviz
9/T60CULLr3MiO4wdP7Amjx2+TMjFR9VEjIhQAiUCwIlsV9yGQSRGhzCtbJmW5bF82DLIC6SJEKA
ECAECkpAp1TIoiKDGbZVXC2IRC4oPXI/IUAIlHECFXbcj12Q9DFhlr5eHKGgjJcBSR4hQAgQAuWU
gDItXZKarrB28nG2KKdZIMkmBAgBQuC/CFRYlZycIWcnxVh4eRVlE1BSbwgBQoAQIAT+D4HcyLBU
vQnfzs7PucD7YxCwhAAhQAiUcQIVViWnRUYrZXKui3sZLwCSPEKAECAEyi8BRVhIoppn5eJgb8ou
v7kgKScECAFC4IMEKqxK1iTEmphwRJ6epOAJAUKAECAEiomALCY6g2tRrSo5uamYAJNgCQFCoDQJ
VEyVrKYoeXSUlYWQnLpXmpWLxE0IEAIVmoAmOys7NUNq6eTnIqrQGSWZIwQIgUpKoGKq5FyFJjUs
kna3YLIqacGSbBMChAAhUMwElMlJaUnpQt8qbmSb5GJGTYInBAiBUiFQMVWyTirVpSRa1axZKkxJ
pIQAIUAIVAYC8oSEtBylrY+XFZ9RGfJL8kgIEAKVjUDFVMlZyWlCWYZ1tSqVrThJfgkBQoAQKDEC
krAQsYWjj6dticVIIiIECAFCoCQJVEyVnPDitd7ElGljV5IoSVyEACFACFQqApLQULmtq6+7TaXK
NcksIUAIVB4CFVMlKyNCzFydeRYWlacgSU4JAUKAEChJAhpxTk58gsDDy9GGV5LxkrgIAUKAECgx
AhVQJSu1FCM+ysbTncsnbXeJVSQSESFACFQuArlRkWlyvWs1T3K6aeUqeJJbQqAyEaiAKjktPkWc
lslycqtM5UjySggQAoRAiRKQhYdladjOVT3Jwr0S5U4iIwQIgRIkUAFVsjIxjlIpzXx9SxAjiYoQ
IAQIgcpFQBIZxbextnV1rFzZJrklBAiBykSgAqpkdXKiuQnLtqpPZSpHkldCgBAgBEqOgFahSIuJ
F/hUcbEgB1OXHHYSEyFACJQwgYqmktV6Kunla6adI1tAnOVKuC6R6AgBQqCYCeglj25cvREY/TYa
VVbU1ctXXyRJ8E1W7PMrV67HSjT/JEKRfOPKlQcRqfhGnh6KO1+n5RoliblpaVmx8WZVqhGNbBSe
JBBCgBAomwSMqJK1tw/8OXXqjFMBSW+yKonbtuTnn+esj5ZRVNKzRdOn/rz6qBiHRxsudc7xdbN+
mbr4caKOyo1dP/+XnxduixcXlZJOpZFFRAirVCtqQOR5QoAQIATKFgHl/R3bth45sWHJn1eD0hUy
qUIcv3vxuiNXjq5YtCssPHjL0o0nz+5c9cfxbDX+KNdR4hMrNuw+d3LVgo2vw0P3LN1w/NKhPxbs
TFYZIVfKlGRKrfSuX8MIYZEgCAFCgBAoqwSMppKTHp88HaBv0sT57pETIXGhzx88P3/4eKKwTm1R
6tkjx3fvuWhWt4lD3P1T94JDH92NTlW8unjocZZbwyqMK4cOHN57UuJYv5o+9OjZR/qikVJLJZzM
ZOdafmRBSdFAkqcJAUKgjBGQxN1MyB6zfNXKYVUfBT95dO7U1bPn45wbrVu0tm9Nyd5DB7htR61c
vtxTGH73wf3zp++IE8Of6az+XLZy8mdm+w/vy/DtvHrxhlYu8Q8iP2BO1ul0HA7n0zMc//iZ2tzG
mTglfzoycichQAiUQwIMvf6NLr1586aXl5eLi0vhcvHsr8WXuH2mfGaxZu3WKk0+NxdnPH11x6v3
jE6My/O2XFYInUZMHGd6Z8PmZO/udhTXp0XM5cVJtWYMqfpq6aoDmVqzXmOmN04++OtN9m8j+uab
wgsNDZVIJPXr1/+UhIXfevhqycK2q1aZeZI9Lj4FGLmHECAEPpWAXC5HO9m5c+dPfeDf912+fLle
vXpWVlaFe5zKerV8z19dvpvmELhxTWSV375uK36y/4+X/NlDel86+sfFZym+7YeNbG2zdv06/26/
tnajdBGX5l+MmjB6ZPTl9XtvRDrW/3xCrzYHt81m1Pvpizqm+dJw4cIFpVJpYmLyKWnTMxj6sxdl
FIvfpQOHqaOKaNv4lCjJPYQAIVC2CUBMMhiMWrVq2dvbl+2UfiB1aABbtWr1wQbQmCr5Mq/fT13M
/li+rsWw2Y0sqT1rZtj0WdCFujx3y2WVqfOIiT8Kbq9eF1fvt6+bI41nts3KqD9riG/QklUHsvSi
3mOmNUo8MPMmZ/bI/Co5MjLy4cOHPj4fX42nZzLST1+UPHlqO+YHM8v83UC5KzaSYEKgQhKA2dI5
7yp3uStllSyPW/n75prfTbS4teEKp8OULxoqIs7N3hn70/R+Z1eszzYXyhn+o750Wrf46Oc/z6pt
SekzHs9ZduWr6aPCd64PYwlkErvRP7bZt2B11eG/dfTIv5e8SqXKzf1Ul2WoYgGLRbFYcrWa+tvO
Uu5KkySYECAEjEjAYHI1NTUt0KyUERNQlKBKQiUnPz6+ZFdQ89ZWgc84wyZ002Zrw68euC2x92bF
qG392dEvsjz9WC8e23Ue3tpZzbTzTb2xZdcjbQNPWWKumysz4bXe0VEcpPTpNbpfg3zOEmi+Y2Ji
NJp3lqT8BwwMZEQqNZfJzORw9DptUZCRZwkBQqCYCEAl29nZ2draFlP4xRdsKatkSv/65OYF+68z
HRrO/3V09Pld3AZ9U0/M2/s6pWrdYT8Nbbhj5qj7Way2/WZ9VT/9xKXsvkM7P960YMWdMGevz+dO
6n522eRTsTn+jb+f9H1bfvExIiETAoQAIVDeCJSESqYo1cVtC65HsHqN+qUO6+mFAEbrFi4H1q6J
Etb4acIgk6gby7de4FbrOGVIm4cn9nPr9KvnItm3ctnLXOdh48f6qINWrNiTYV9v4sj+VtzyRpek
lxAgBCoHgdJWyTTlXLGYEpgJ2AxlrpTBM+Wy1OJsucBCRDuqaXNzpDpzc1NKq8xV6EyEJgxKK8mR
ckXmPNr2oBRnK00tREZbjFI5Cp3kkhAgBCo8gZJRyRUeI8kgIUAIVGoCZUElV+oCIJknBAgBQqAY
CPwflUzMCsXAmwRJCBAChAAhQAgQAoQAIVDOCRCVXM4LkCSfECAECAFCgBAgBAgBQqAYCBCVXAxQ
SZCEACFACBAChSVw7NixkJCQwj79Sc8lJiYGBgZ+0q1l+yYsbccC92JN44EDB6Kiooo1irc70hZf
LFlZWSj04gvfEPKTJ0/U2PilOC9EgY2/ijMGKjk5+eLFizk5OcUaS3kJnKjkj5RUWFjYo0ePiqM4
UQUzMzOLI+TiC1OhUBRH4E+fPn3x4kVxhFxMYWKXBjEWURXDBc/X+Pj4YgiYQsOKDrU4QsaO5nFx
ccURMgmzchJwcnJatmwZ2t5iyj5esbVr1y5cuBDOiMUUBfb4X7169axZs/ChmKJAK3TkyJGff/75
zz//lMlwwm1xXQ4ODr///nt0dHQxRYCMjBs37syZM8UUviFY7Cfbv3//Z8+eFVMs2IZr27ZtiKVY
90ELDg7GtusikQg9RTFlBMOJnTt33rp1a+rUqUFBQcUUSzkKljV79mxDctGDWlpagn45Sn0JJBXj
wq1bt2KvbBy5YsToYmNj0e6cOHECp6WYm5sbMeS7d+9u3rzZ1dW18IcXfCg1OHFgy5YtaI55PF7V
qlWNmGAElZKSsnLlSjc3N0dHRyOGHB4ejmCbNm3KZuc7qaaokWDgNGnSJFQJ4276m52dvWHDBmtr
a+MGi9yivu3du7dJkyZCobComf/389euXUP3dunSJey26+fnZ9zAy1po6AjRTn7K3u0fTDkGKqjh
n3hyR1nLe0mmB4dboTVAa4OmxsbGxohRoz2PyLsaNWqE6rp+/fqEhISaNWtyuUbeXAlSBgUNiYwG
GdkxbmtsAAI7CwKfMmUKfqPjLvSJYB/F6+HhgVKA6AcoCwuLj95f0BtgLYJ4vXHjBp/Pr1KlSkEf
/8T7gQttFCYQMjIy0MAa/TWE3WTNmjXt2rU7derU4cOHUXWLgxVONQIl5GX58uUYGqEOM5lGtnXi
7Xj58uWcOXNQqaD78aYYvdf4xCIryduQa3d39w+OcIhK/khBYIvsOnXq7N69m8VieXp6Fr3Y0EzD
koERIdQbmmaoIryuxmoa0OIfPXoUTQDaaF9fXyO+pc+fP0fgo0aNOnjwYPPmzaGVi47ibQiwVVSr
Vs0glPHZWCHjVUdqYemEOjRuL4jmCRIcTGAFQf8nEAiMkma0rQizTZs2QIEBvRFFJ3ogVDMM9las
WIEBjxHHObDJffPNN5999hnGZmhiCq0gjQKwuAMhKrm4CeOFOnfuHAwT6LFwFBZqV40aNYzYjsEg
ioras2dPNDV41z7//PPXr1/jjTBWCww+aByOHz+OFwEvMobTsPmhNca7DCOUcenhdQMctD9wJMDb
jTEYfpuZmRkxFjhCoDj27NmDvg9qad26dThZzbhmHaQWr1WHDh1gMELRpKWlYcYSVh4j5sIQBXpw
DFoAbf78+egRIP2NGwW6GMyBwDuldevWKIUrV660bdvWuFEgNBQxRo/4MGPGDFh8/f39jfh2GFKL
8oXVAwXRrVs3GAXwdlTsVt2Qa6KSC1lXYeOEARXjNuiA7du3Y9BWdIvy48ePT58+jWYaWhZuBlCc
58+fx0i96OZDjJLRQLdv3x5iCPM+mDGBeit6gg3s0BZjtIDDINAWw9iJdhmnQhhlFPvq1Sv0hWhf
cPAv3n8jCmWMgAcPHgw5C2Mnxt+G97+QVeHfj2HsBB8DNOsTJ05Egw4Ti1GCRWHBLAT/ExTiX3/9
Bbtj0WuFIWGoCbA9wKb+xRdf7Nixo0GDBsbqTeETefLkSbSn6HjwjnTp0sUoKMpmIEQlF3e5wM6H
tgvv1KpVq2rXrt29e3cYtIw1CkXIqPZwuIRsRQsMiQkFAK0MWYM2zVhZw4zQ999/n56e3rhxY4gY
CHG81LBZGPfYXqR848aNiKV69eoQ+pgpQmuM3sS45gBYeQENbTJG12jlunbtiibUWMVhAI7mDi0S
Ohe0dWixIcTRhqA7MFZxIBx42aL1g9RDXCgduMHAymPceUsUB2osJOzYsWMx4oLrMPoIdBBGzAWC
gtEH3RnM1QEBAeiC0Smj1TV0bUa80E3UrVsXJpv79+8jX4jO6ELciKk1VlBEJReSJMaFMG0eOnQI
dWXAgAEwAxdlVkur1WJJChqCXbt2QX+jaUYbihYHbRza0yI207DBwHkGhmQ0ymgov/76a4h7tA4N
GzYsZObfeQxDcMy84FWBSsb7CdGJVgaJL7pKhuyA3QWCG3NVMFcYNJZRzMkYe2AQUq9ePZhA8Blp
RuBFf9uRYLTpSGRSUhLa3CFDhqDgjDIUwQwDFi2hmsEuCzsHOif04kbpLTBewlAEmgOCANUPQyn0
psbq6tAlYGIEzTf0DQQNanLR61uZDYGo5GItGnjv4LXCEPHevXsQf1gx1qNHD2NVVKQchmTM3bVo
0QJtI5p0zF/hLcN7YaxRrgEOXjHM7KPNvH37Nl40tMkQZJAaMF4Yix66EigYNMU//vgjwsQLCBPp
+PHjjetFAIMi+ilYxDHLD1s4zIq9evUyYnEg5QC1adMmwEH4aEAgYTHeRqNtLFAIB5ZpeDaif0Rd
gjkfExQYsRhXIqM4Hjx4ACvVDz/8AIl5/fp15OWrr74y7ogFxl10PZjORXVFj4ko+vbtayx/JBh9
Fi9ejHkD9MLo0VDKGLcgX8BVGQzJqCdEJRf4pcMYHfUeMyZotTH3hyYJ3T8mmwoc0DsPoJWEVoMt
GQM1CBfUdYjO/fv3oyKipS5KyHgWgaPFQSuDuXXIQXQw6ADwohrF0fzs2bMAAusLuhbMIaKtGTly
ZNElMhIJ3QYTMj5Ay+IVxeoK0C4iCjyOcTYmbQcOHAjLB5gg2ZCzRtGyaAHhQoeQYfmAxatjx45G
CRZphoskrE2oDChKWIbQWmEWsug9K1q6RYsWwYQMcQDzBlZjfPnll0U0UaPXxNwoJKO3tzdSjlcD
/QH6IUh843YMRa8Jxg2BqGTj8nwbGmopGi7UK0gNDBehbNCaQXMYV/Zh3gNmXcyGQVBicI6Xq1On
TkYZiCIjCBwTjwgcllckG2oJ7QPG53jd4FxX9Bf5LSvDKjG8y3CBg4qF2RKaZvjw4UZcfYHiQFmA
FZoLmJPRhCJ3Y8aMMa7ZEoHDYAl9DNM+YsRKSvRcxnWEQEeAATzCxLgLHRbGLZDIxnV9ge0M5Y4i
wNoPFAeGLnBTgZXKiC0h4GBqEWM8ZAGmmdS8C/PbqAPGeh8NE4yAY5jDQeLhMdK7d29jqXBjpbP4
wiEquWBs0S7Aioz3CvUerRveYchN1KGChfLe3QgKlQ8zShicffvtt6iOEBkwHBbFPo1I7ty5A+WN
Nx+mR7ylmOXBSwtDLyYrMeIsYpphdEErA+sIpCGkFdYltGzZEnK5iMHicbgLY4E2VDLGIbBuYkyC
acqiN5FoUDCjimkp2HLQ1yL9gIOOquirZ+BfiFqBFhB2WYDFb4y5jWKTQG8HpwX0rLAJQSjjMzrv
Zs2aFbFnRW+Kfg6E8QFezgCCiDC8KSIKJBLjGSh4FB/wYrCHf6K9Rg9nxI6h6BWsOEIgKtm4VCGF
0f2jmcWMhGFOH4tiMXeHEd3QoUONJZHRJuC1hcLAbBv2UkDzizEebHJ4f4s4g/cuDYwSsb4NvQYU
DIb9sCZ89913aIfRvBfxRc7HHG8xWKFNgwkWyhIvHUy8Rnn1UBxo4RE+ECEvsLXDowzDCUx7wnXN
uBIZmUIpoMPCiEUqlcKmgwbEMOo24gVzOFonLHBE5wVWqGAwxxTdvvNuCmGFhTsHNCtsalCWMOr3
6dPHKMXxNhZYebAfC4x0iAX9DgoIFnej2L/eRgHxjT4CZg68EejmUBZ4JVFvjVt1jViyRg+KqORP
QooZJRhN8SJh4g8X5CwGuxiMTps2DY3dJwXxf2/CGliM2OAUBb8LaESY9zD6L/pYDXYFuCtAA+F1
hZaFMRJ9DCyRRvHBBQesXPztt9+QVBg4YejFfGhRWhmDfQKtMCba0DhilgeNF1T4hAkTii6RgR8N
/cyZM0EAZml0wNhMCqMFoxgP0I6AMzbHQYO7b98+tIYwJBtl0x/UCiw0RDVD84deCq2hUfwWIOvR
tgL1sGHDULFRNyBti+4ciTEkChFhIjQIGowTkGAEa9yOoeivW3GEQFSycaniDUWri8qDGoXZHlQn
KGOIS9h3jbU+GK0i5uugjZByWOPQ9mIqGRZraBqjNDhvgWBxGGQrxucwIWN+Ca0cvN1gnDO6zsCI
FC8dTCFoJdC4wXxjrFcPjQ/0PUbRsLlilAJDL5p6GHQw52ms4gAujFgMTKDCMUmLQQXEGdAVcYIr
34jFEAVaPwhx2E3QHaDnQoxF6bw+GAU83WE0QRsO7xrYvIxYHG9BGZZpoiOGLyL8RtC7GVciI1+o
sShuqB0M6vBKomphUGT0qmvc1sO4oRGV/HGecPqBLMbafxgDYMaDgwE+QApAFxbx7YUgxhATtRwN
DYa2mJrBi4TuAQYAzM19PGUfuwOhQbgYXiQ0Omgx8a4aa9yP5hi2Xgz0MYUEj2d0MEVpZWCGhJce
BqmYXYUtBFZwjF8BGd2kUXyRgQrZh/MxHNGABRNGaHyNIpERMjoPzDzC4wLDG6xiQb9rFImMkFHH
0C3BoI4pCwzi0ZR/rMw/6e9AgTTD1xm1GuYN2KeLLpERMcZ1BocWuA/irUFTjjGksfrpT8pY6d1E
VLJx2UPwLViwAE0iDLHQl1BmGMthwtdYVmTYDn755RcM5zB4hhEOmhK/4e0Gm5yxHKXeBYJWF1N5
UBtoiidPngyznLF0Bib0MNtmcNhFCwwjCEQ5lp0YcWsOhAzsGFdD9iFwjNvRMqM4MAY2li8yukLA
QSeC8BEdjCMoa/RZaPGMVeJoReG6hvGPYXUyIoJ/I6Q/rDzG6mLQ4mHTD0xUGiaBURzQ4vC7gNw3
YnHAPgUybz3mIcShFlAcaGwN9Ip+of5A81y9ehUdEMalGDfCXQTVDB1cEee3i562kg+BqOSPM0dd
hycWagleMAypR4wYAQ8zmGNhDPj4w/99B6yDS5Ysgb7EpAm0LKwLkInwAcA0k7EqIgQKFBssslDh
6HLQQBdFvaG7wpgVIRi8NRA4VtHidUWLVvRWBn0G9CtGIAgZS+vgS4ehCF77IoYMEQ/LzdvZOrRZ
aEdg+i36EmMUlkFrIsFgAhRopzCBW0TnacwqoNtD32BwJYRWQP+HEsQ3RXQ1g5EMZjmsfDJUSaQT
gwR8gzFDETtsTFxihhR1DGEaFnbAyR4mDch6Y/VwRXnRSuZZopKNyxkNLF4rNAWwJkIlI/B+/foV
ZRyeL3morvByhixG4HgL0LgNGjQII+eiu6IZIsJ0DQaK724Xg3cBdji09rAvFPGNezcvEJcY7qIt
QvOOYOHsBEEGa45xiwP2BbScKA4sC4MNHsoPgslYmgwmBszywXJhGLGgGcFgG+YS9AJGNFvCqQZW
LVCC3QEfDB69sL9CYhqrODCRiO4GdgcIBhQ9ekYUDXox9A7GKg4MUaD1MWhERBjpobqi9mIAgEiN
VRxIqmF3Z3QQ2GMKfSVEM8QPLDVGMaYYC0WJhUNU8sdRo7FG/cNiCyzpxRuFORp4sKECFbHJRrsM
DQetDGUMVQEZhP4ANbKIEhmzSGiO36YNrScWiKDRgY2hiJIFqzQg65F96CqoQzSUcJPFy4mxZtHf
T9gk0KlAc2N2FSZq+CPCFxlKsSiQIVvhc4LG13BkHdosNCjQmjCdFnE5C3ajxJsDQxSaKpiFkH2I
ZnhZYOBUlJBBeN68eTBlwSgLAmgBMXxCbwHLDfgUBTLGdXBYhMEMAaKfRguO3ggdOZzYkOD/sXcW
gFEdXRte37i7Eiy4O8HdikuhLQWKlpa2QGlpoVhbCi0UKP4VK+7uEAguwZOQEHe33azL995dCGmK
hOwmRM79+/Ntdu+dO/PMvWfeOXNmxpBGAuPUWL4QHnQMXiNBPMYQ+vgTT11lWHA+33yQSn67JX3H
M+BNRP8WHTD4d9G/NdB8Fbq5fkVz2C7MPMMbB+WE0WpDXoSC6ev3AMI7W6jPjHcN74iB0f/6G8H8
wvjARAALur6Im0LYG6Y7o4WCRTLKAA48oxjQy8eODjCGnhAOh+4EhLixxiShuSHy9Ot+wOjBRGNK
A5oYVA0MiFFqBKVAqADgwxuKQUuYPrS8qG7cQu8df8cH8xWnw3QjWTQuaHQwaRIuanTA0Jrrq8MQ
51TBmyHzeGghlOHyQCsJ7wlieGByEfdi3LcDPkEEPaJHBJ2Dfpc+Ytsoz63hqEs/BVLJRWKOjhSe
GAQYoQ8KDxkMhOHPPaQbXlEYO0yDgD1F7xMq3BBhgc4xvHoYJUEUVMFSwWuijx4rtoCDroLlQm5h
C0AAi3HCnCHKGRCg5wyJS0Px840UnKaQVhBzkG548/FOGiKR4ZaG5YU1QQ8BQ1QIh4AXAY0KSmFI
oAVQIFmkibBmvDxonCAT9aFaSNyQ8Ue0rHClYO0/PBjw2aAHguKj/QNe9OANMeUY70PbrJ8NiaYI
DwlaO337iuozsB3Cg6GfjYSnDq4UNDzop2E00JAMF+mdLGMnkUo2vEKgMxCukz85Fe8aqEIwwSoa
y8WrzyRuhDcXY0q4BV4uzEJDB9Io02316SN8DgYHfUX45PDS6b28eAcx7w3S0ygb9+Atw3I6sHIY
jcR7BwuPW6AvgX6FUSQySgG3BfxBkLD6dZaQf8QSwETDyhk+Zyb/acFUdTQokydPhlnGREB4c9AU
wgFhSFNY6FGEYMXUZMQfoyLQbKGuMSaMKAK9g9zw5xYpwNuKzgOsH+avo2sEXw/GQvHQokYMlwr5
/SJMfYEER78OchwmF60wagda3FgSGcYc+/6icuHxwbgxni74fVAQo8xxNwrn95IIqeTXYoe/EKPG
+YoKXSv9aDKWpzH81UKPEwFM6DdDW8C6wUzD5WlgdAHc0phLh7EYJAunLCyCPp8IfYYDGDFYxbae
MFt4M1F8AIHYgqHH+4PZzTAKxVbeeu4zZsxAgujW5xsC4EU+DWxIoObBAZWFUVqoT8yOhzMVBgVh
LQZumYH2FRYQLRNc/ugwwMuLDj08K4Y3TlgqG656dJmw2iUC0xHzh5TRWhiuD7ByKoaVkVW0rJgK
CYMO3YzWzsAlopE9hI+jsUGHAXOf0ceDzwZ1B1e9gcr7vZhCA29KKtlAgLgcVhFjMugl4j2F7cIL
C8uDLqhRZhsXzB4En34WIO6FXi6GrYy7hAKMA5KFVobagESDzYHyQKAnNAeG+A0HhRSQeehvdKrh
toTQhyLHC47WykCDXDBvcFsiXBgWD3YDsgyvNsa1EDxg3Plh8AWgFLgLhlIxDIWph3BIGbHHghJB
p4ISXLAwqqgCdF3Q9TLuStj66oB3A/xRxRhYw31RKYZLhfwaQVJodmG9MdMUdY0mHiWCbDBidcBX
DTcKhDi8M4iogWzAC4iW1EBlYpQH/j0mQir51fD1/X48MehG68UEFn3DC2CUnTiQGqyz3p8HCQtt
gQ6o4S8tXlS4ZvF+wmiiXnEL6FpIGYwuoSdtSEujj+WFIYPHFLnFHkKQcaBRbNmdD12/qwWsMEam
4KJAG4mesYGhvUgclhdDbHjbIdcQ3IZbwN8Jg2KgREbKSBBs0b3GkwCBiO4NvkQIl+GNExzJkJvg
jMpCI4GBC4xzGdhb0HOGywFdEfgJEPKOrhQeOTxvBg6foaeENwKDvHg2QBhPBdoePGPw0xj+VLxH
g1jsW5NKLjY6XAgbhZA2aEpIJbT9UGMwNVBmerlsSMqFrsWNoMMgkSFk0S9FrAV6vEafrqePc8PK
mHAlQvpjZAyWByVCAQ0si35dZ73B1E8RgRcAt8MbDdNkuBXSZw9BgPC1owhwLsAKYTkz6DO82mik
DBnfK1h2BFog/gFVDLcImirIVriloMYwkmDg5gP5d4HFg8jTr92Oz6gF/ImRQDQx6NIbWBH6y1Ed
+gX+UB3oVCD/CGlDW4NbwFlgrKAUPELorsBi40FFRaA48EpAyMKHYtzuBPz3kPiI4kCPDnICfnc4
4I17C6NgL+VESCUXBo4xOEwjw9sLu4OHHiYVog2OZLzG+NNwJxleKpgDvKV4b9EYIE0Ek8FSGF7x
MJEIWsDLg5gQ/dwR5Bmqq9jDJRhfg7rCaA4yCRkExYb3H/1j9Bzw/hsihmBWEFGArMLQY3IDhlmh
5uFCQMrQyoZAhtMUdgSeG2QbmUS3AWIOw5EwKIYEfMMtjeANZAw9ELi4UF+IbEEp0Nyi8TBkwAtg
4UqBEwi2DxIWHRts5gwLBf80xLchTwXcJ3A8AAXMHKoSt8CDjSA5eO4NnHiKXEElIwwJrnpIDbTT
aEqhNpBhQ8JvDCnse7+WVLIhVQCriCUU8IjiQcKBOU+wjeiFGt6tLZgrWAOsKIc3a9myZXhzoQLx
2ViaDDdCtBgMhX55Ioh7mAVYOTQlsPD4bJRli2DYMf4GLzWCvlAcmHf8CbsEE20siYzMY4xo6dKl
0EwYLsPIOwIhYJ3QDhoreAC3QNwXxs3QCELxoxsPEw0DAiFouGnKr3EYQERBQILDDKIFR7uAlbD1
eywb8qwWvBbVgdE5PKsw3freBVxI+knzRmSFxxXh4DCzaNMhl6G/UR0Q/UZc0ltfKFhvQEMV4OlF
6AWe28o5Xa/Q40EqufD7gvcWwVjoQ2PRNL0n74cffoAq0q+kbeDbhbESxKvBkmJWmX4rNXSdDVxx
GQ0M+pr5Tkd4FzDug7tgygvaGCRebA0H1yZWxISGg4mBzEIvHGniXTXc14t5JzDuEIhwtyxfvhwS
Fk0IOspw2xsCGUoFMSdQmUgZSUHiY5U66DmgNtCgwM7CxYtBLrgKwBNmHUud4C5wDhnSW8DjBLWN
5w1GFg8eCEPUIrewVvplXA05EL+BmD/UFxJBVaIRQoONfghcBYYkq78W1YRGFI0EumRgjigRvC/G
dfsZnsnSTIFUsiG0IZLw8KPbCWsDEaM3NYZ0a/+bGX2nEe4JvMWwihjF0q++bEi2C14LzYrxHxhe
ZBuvGIw8hvVg2YyywHn+jWBt4KeEVIKXGjYZpUC/GmF7RpTIuBcaEQQ/wNZBi2PAHbIMmsyIsg+3
QP7hlkaNo5cCcQmtDFttYAxYoaqELUWUM4YmMCKB2ofrGqs0GKWvUrA68CyhOhDfCEsLN7++m2es
h0qfDpxfeHTRh0S9oHcB5Qr9alx/BPjrA5CwZAryj/YIHhADlYlxIbzH1EglF4YPXyb0CkZPYO/w
AuMD3mcMQxii3vT3gJKAqoDahgHC447RH2z8Y3hfDa8NdCF64foVGbFcBoqApScMD1eCstQrQhh9
KG9kWD+72fDnFSkDMjjAckG9IQQK0tDwDOuXC0VEIDIMCQv/NFpBfXCIgXlGfwOHvp8Nswtpi6EG
w5eTQ67g6IVzGiMYYII2DyoBDg+jNN7odSDDeNKQOGarQCJjVMGQ+YX5DBEcgiYTTx1yDuB4R9CU
GiVlA6vpPV5OKrkY8OEKxRJg6MfiKUI7jT4z/AhQGzBfhkSI/TcneGcRQgDPLhp+GDRYMyxabMQp
aLgjZDGmakCzomuKdwHGDZ4Lo7zIhYoDQ4EmCauYYRQLXXcj7uuBlQ2wsxVuB9MBwQRfO0qBETnj
Bm3riwObjP6DfkoxVinFZ7Q1hjeyBVkhNVQBei8w15iaog/hNe4tcDu04GhuUB0YC0XsGarDuN0J
3AKPE54rPMAoDrxLaIKNK5H149ughJSxwQrcH3gADFcmxTAIZfMSUsnP6wVKAv5daBQMXUFYoPnX
T59Cpw1iyPBXC9JtxYoVeBxhDhADAD2HCDzcyMCUIVBg67EoBPwWiJFCsrA+8PUaZaQSecPLCY8C
YnynTJmC9wcZNkRxIikEPOFfaE10GPQCC22ksaK9UZfIId5wxDhCfMM5gc/GmiuN8QQYXLSvULHw
m+JGBnqR9U8e7B3GExAuCRWLKZL6SXUGPhX6lOF7QJ7xDMN/Bs8cvB0GrriMNPGMYUI9TCrcxojn
gdsPH+DqKPZ4Rdk0i8XIFankYkCDKcD6BvgXhhcDYvBczpkzB82zsQI687OEXiK8cXCSQcTA7GAA
xCgjKgWLrA+x0DcfkOAYtDHiosXwKRRkApsPnyhwIVDYiIIJFYGZBrgXqgOTOtBjQXXgXsaqDvSu
Ye3zR5xg5dAvggRBXwKVbhSjBxONo2AjBbuHVgZfGmU0WF/j6DwUxI5Kx6GvDmNJZCiQgmt06oUy
nNbo5hnXHwH+qG5Qwr+ItMFDaxTxUAxrUGYvIZX8vGrgCYCAw2AcQn+gaPXhvLB0kBpGGUfGQAYM
NMK8YA7wREKCYwzLcLuAFCCqkElIefTI0S+HX9bAp7zg6mygg5cT3hcYBdAwRCLrjQsyCbx47DB7
A7T1VtiQpdmQbKEMgzOaQIziIa7RQImMvlPBIkN0oiFB/AlkvYESuWCe0bdB+w23OjoP6OEY8lTg
MQaQ/BQAFmmCs1FCPPUDLCg+vFnoUuJ5QGgyMm9IhsusZXzXjJFKfldiOB+vKtZMwGwHyFYEKuCl
QPCAsTSZPj8YAcNDi2ThR4CyxERevBHG3YC6UMER/wrzjgHrYgD57yVgghWjMQ5ZaN9NoNOP9Rnl
LvpEkCYsG7or8A3p990wYnUg6Au9aziJCjUiKJdRVlZF/hGogznE0NyF4uvggsUtjCIu8ZojUBvV
USh+GkOCcFQb7obQVwTcunhu4YYoWLlIHJWi373BWJUOXz4Gn+FDwUIF+vncmCxk4MRuY+Wt7KTz
BpXMKTu5LIWcQAVipAyKECoWihOCAG8CDLfhXUPYaKwqgCceE0fgZsDqKjBGGDIzbqEg2uDrhTPS
kAyj1DBkMGeF8obZG/l7thmSbbCFxYesh4nRL50GvwVcO4akCTWMHkihFNCnRwga/BaGpIz6QoNR
KAU0fgYGGqLIgACDXjBlGHH9iqGGZBh+bkiBQpPQwRnrqurVsyEHYKJ5wL94zBBNiDFxeJsMSZCu
JQIgAEGJhdiw3yRirhCBZlwmcI8hIA0qHFoTThBIHITYGsWUvSGf6D0aSyLjLhgWg2bCEBPePiin
/PvCUGOYyLi4kBo8ONBMWGsIEdXffvutsdKH/fn1118x9AQXCSbEIxxOnzJGKTFNEE2tUW6EKkaP
HWoSW7rgRvo04ZTFnxA6RrkFxoERF4cmALOWMTKcnyZMOlblN8ot4MLHXD0MAEK/oiLy08StUekY
zTPKXfSJoPWEGUeTAX0CRBjfNroyMWJuy2BSXOzomP8oo/02PGy0DBayYJagVPCsQHKhd4voH2hZ
w1e9gXBBgngQ8fzBeuJPPP0lEeal90ca6EXGq67fLgTeR/0Gm+ADA4c1KCCPjDJGiV4+Rr70i2Ji
9oyBuyuhFfz9998RLQ2bCFObv6wj7BdsCiIBiu3mhNxElB7i0TEhAw6bfLCwU5C5htQg5rqBJHwP
SD9/wWmIZph49MqK3Y/HgPKCBQuwcA8CCnHA66B/tuEtwNIWePYMdH4jWhTTWNH8w4xCeaBXiUmH
xcZbxk1BMbJHvuQiQoM3F8aqoGMPbwFkB54o43pGkR+8CBizwhAQFAAmJOn3fShiPot9muGtRsFb
w/IgqBquFjRP8LDopzgj6gniD8Ux3K0IE6qPFcm/KUwTLCfMhXGd+nDBIC4c+hiWCkO1aGWwHhHm
NiBc2CjrXSL/KAUcUnjA0FphGRA8VHgrIWfhlMHtil2hr6wOeMRRHWgIUEGYtYlz4IwwStWjOkAJ
a4zijYByQJiKPnBOv6KrsWQYpAiaNozhYPAcQdVoOPDZ8LX5jQK5rCVSqSMuMHaMEIWC82phF/Bq
wfEAvWWUJx5KCNYBPlSYBtgdhEOU0OqDeLUMlyzQangtoavwWKDHjMFQQIB0xuuKV6h4FhkhChiC
LDgXB68ifL3Aot8vypBXAgoey2Ugz1iTBE4XcIbQhMTHZ6A2ZMY0Yi1glSC+ccBC4alA9WEjGDRO
Bk4HxCwliHi0EHg2YNCxLhtcs/B2QMiik1ZsIOCJrMJthhl7aCGQW7QNIANrC2lr4LLwaNUwRgGH
1tq1a5EsgpEAxCgviCG1X6auJZVclOqAvw1dLBgWGJOC9gTvL944o0ynw/sFC4COKNLHZ6zShdFk
hFhALiPiq6QdyUWB8E7nQIRhhBPiGKM3sHUwcbClsB5YfciQYUN9HuCcRsQ23uVC1QFWaAQNHNoq
WEyYNZCH5cd0EShLmFb4qmEGMWwLRf5OQN5wMrpASBxBI4gYwS1gUWFaAdDAJTUL3hGOaox+4HFC
dcB6w67C0YOIZDjgjWUP0dqixuHmQP8BLwWeYfyJeDyocANrBDYK+hsdVPS7oIwhfhCIDIcgPCBo
Kw1pLo1Vg2UzncqrkvFkoMnHI14oRg3Pun5BrmLrFTg14cPQh0ZBIEKxYVwJVhtiC1GnZXnqKFAg
27AC8FKgPYO5gTnGe4UVDIonkdE3WL16NWIqCpUaqaG7b/hrCZsFO4tBKEwuhH6FtcKIIeYCw2bl
O1OL9+LB4KLKkG04vOGfgLcDTwXaciwAZ2DjBLwoPhoJdN/h58BEdTTkEPew7MV+5FBG2FaIbNhB
TC6E7YZchhYBCvjsi+f5xvRKfUnhVkd7Bm8WptqgtQYE/Y67xQNbUa8ilfzWmkWfFls1YbQEahXd
Qjyx+u08oNVgGzFtyPCwTjT8mCSNcWTIIwx6IFm8Dnjd9EunwaFo3KUz3lrkYp8APyUspH5kCVhg
jiBrYIL0WyNB/xmuydCvRi3AxGFwDE0hEtSPtsPFCBcJjInhgbxoB2E883smsHJYvQ4DiVh0H9YV
g4qGu/bh6sJYGZoYvbGCEIeUxOAnHi0MruJPo8SgoxFH4vrqgGaAqwveB0hYDDbCuWuUFdMg6xFr
kb/YNtovrNCPpgFz0PHQosYNH2mBScfQK0qBAQSkiT1ZIZfxMuKhMrwtLvajXvYvrLwqGQ4GNPzo
2sKqwoYiZApmAkoLf8IPV+z1zuDJQwoYWsKziMcaXj10+uEDQJMAG4Feu4HzyYz+SKF1Bwq8nHrd
g0xCY2EICf/CdwgrY0hfH7F0cEuALXZvgnMCbkjcBdIZIeD6HZ6LVxy82zCO+o41IMMKw2mKthax
yMAO41i85hbNEtKBvdAbXLQf6NVgcBODa1gXGX8WO4QDXTKEOOev/4rWCEYK2ygg/Ab6G38Wey19
dGMgCPROODy3CBZCWDk2ZQAKdHjQhSi2+wEhK7DR8PqDwKJFi9Ce4QP6S5DIxau1in0VqeS31i8M
LB5IqD3oPHQOIW6gjDHyCyGFoHyMLL01hbeeAJ2BdwHTM+CxhgcOS7PB3mLAGoYdEtm4a+W+NTPF
PgHmAs4FfcwYzBGUJdoRmAiISwO76AWzpF/CCNWBtgnjY/v378e4ln6hg08++cTABeb1N0IvBUOR
8GLoN/LAkBQqCMOShWYiFhsULoRn5LvvvkOziz48DDX+1Pfn4SNAAY3SmYefCL07eBz05hTiGNUB
o42CGDidPb/g+lkfCLqDptdP1IEuhz3Ha2KIw64QWCQIM4XAOWhuNBN49SCRDd9MwJDqKxfXVl6V
DIkGeYGgYSx8ixgD+BtgF/CYQgRgYbViVx5GRmCU0cXEfBR00dAjx1MOYwQPHJ54Awe+i52rN1yI
7j4mzWBYB5oYNgVRSvDEwN8JQ4M/DfRYoEMPIDCOGJ/CRAS8nPq5FDD3xZ4DB7WNfghSgxrWe4Zg
1qGVYbMM9NPDEYXlQqE7gQLPA1wsyDxULFI2cLklKHiEIyNNEECG9YEckAh6CIaYcjiB4JvBQ6t/
tOAHQmowfIbv/AJ/Cfo26OSgYcAQNrolEBxo7QzJbUk8wGUkTVLJr6sIKID8ZwaPEFZRhFWEPUQL
jVcY/i0swGK4JsN4HRozWFqMnOBFgwiA5xXuCfyJlxcvSDnyliEUFfoYxhOzuOACgCGCHUYRijeg
V6heClYHvMUYwsKYIaoD0hx2D7eGVjYWK2QY4V6Q+xDH6GZjlBXNrnE3i4FmxYzM/M1cUemobuPG
1YAJnljoVzh34DXAE4tREfiPjSWRUUGoFNhbOE1gzwEf9YKGEv0iY1WE/hnApCM4UBAvh2YCiOAF
x5BmsR2CZcTwlkI2Kq9K1u/njOcSTz86VRBDeGjwdGIKf/G4Y3YInmzICCQIXybShOmH1xNdQ/yJ
18xYcffFy97rroIJhscFog2KEG0M+uL6UhhFDIEnbC4g423HqD3WFYKYwFibIbsTwTMBtxMsCLwU
UPOoRzgSUH2GN7RotvFIwJRjuBP6FdEyCKpGxRnYVQB55BneaIQAwprDj4I2A916ozhl9dvpwfME
WQzIkPhoXA0fx0Sejx8/jkcXbad+2jiqEg4nA3sLxn10y1RqpJJfVx14PbEXMfxw+j4tBAGMDPpd
cE9g5Ee/mbzhVYmBDnTq9Ft4IjV4RvG6wVtRXvzHBQkACLqmaEfwAdthoERolQy3QvpbwPhg3i0s
vH6UCXEXcJTAOMOng+qAFTXiO47KRasHdwBm6cGvjBgz40pk5B+mCXeBuYZzBzuEo8dllM2eClYH
TB/I6Ltb06ZNwweIS2NVh/5GsLEgjy4E6gW+Xgy3wp1veMRLodcKTRvGbRBogZYOris8WoY3moa/
uWU/hUqnkrGeIrqG+lglPOiYroeRFPyL/ihMUrGXcYDphx8a+63jLdU3BrDaEMrQhQY6OEv6GUJu
kUPkE/5OiC30lSFqDbkpOvfYG1mfLNLBECEOBODCkEGFQ8kZqOGQGlKASoaVRyQA3ny4Kwxc3ENf
Xhh0eGThWYELCu5qtK+whoagyL8WgStIGYOAGFbDECcGKzDgYJSU4YGA1YZERvwG5AjW7DNK5CWe
Z+QTgh4R3ngqMAxi9D1RjVL8spMIqeTX1QUeSzTJiN6B+w3vLF4uTHtCRJBxvQZwW8JwISAVpgBv
Low8oumKPWBVRp4r9FFBDBORjeJF1hcKHWn9ohkwQRBJaKRQHZgZZtzqKAgQnld4B2D0StRtCXcP
Gi90J4zi33nlAwAvMtovVIcRvciFbgRNggAPzAsyrhdZfxc8S/p91BHDgwk2RmkpysibUqLZqFwq
GS49RAxjXhpUC4QFpAC0LIanIV8MpIyHD6lBr2ArKcgsPH9oG2AXoAsNTLl0LtfHWuAVxXCMgSYA
jxQ6rPpJG+CMbjG8kvAiGHcUDFj0DnvYLKP3Q/CcoH1CQ27g6mmF6g7dMHjR8JDAeW/caoVJDQkJ
gefMWK4aPA+oO7wdmFOij+80oofJuGUvI6mRSn5dRcAYwk+JJwo70YAS3HJQM0bxH+OOCLTAU4ox
JTg4cGBc5bfffsMcAKyZZXjQ0Xt/tPRjcUaUyHqphOrA64yxOMg+jMuBnrGq45XE4K7GuJmB6+K/
tS70Gx2UnERGBkBJH/381swU+wSoCAy0GmWxl1fmAY4PDE1gyLTYDsFiF638Xli5VDJsNAQxVKx+
dTP0PiHd4I0z5NUCQcxFhfSBfxrmBk0C1plGmC9mkBR7dlrpP094OeFXgPfFcBMAm46wY7h74baH
fwKKEz6kkhjZgYmH58BAz/QrUePZgPfUuBIZN4JPBbYJbnuj1y8gw7YWby2L12UGlhrPMx4MiO/i
zYY0ejHLcoKkkl9XOxj8gYFFTBSmf2DaEzrMRlyWFaFimEuAyChYddwIo4IIsYUKNFZ38f0+csZd
sVhfFv38P0w+Q78a44eojpIwzgW5oUUwui39b72UBKtCdykFT4F+6LVEnzp0U0tu3KBEc/6+Eq9c
KhkSEO8SjAKG5DAxFkNOGJIzRCKj2mD34b2AM0/vK0UDgHUSMN+rfHky9LGnRnkK0eHGe47iI/Ri
8eLFCGY1rnrLzyRuVELG11goCvGEq76EUgaHkvAGYfAa4qakrbZRnrr3ngip5DdXAbpbmFk1duxY
4y4Yj2TRncObBSOsn8OKiQTly/a+l0cXPXbYZ1RHybkt30u56KZEwOgEKukO1Wj4sbADBJzhQDF6
iH31oIwxJQJzSGF6vv/+e0wWNjzl8p4CWixE9xplLcnyjoLyTwQqOQH0wxGBZpSRH9jY/B3XMTiD
2cbQ3+goYv4xDLtRpihU+MrSL9le0l7kCo+RCljJCXAqcPkxjQBD6kYpIJxtMNMwN9jHARNT0DUv
g8u9GaWk75oIIurg13nXq+h8IkAEiMAbCCC4H3NVEWWBczAvECEWGMHDmp7YQIe4EQEiQARKjUBF
VskGzofAlCasaKGvCSzWC0cyYjmwEiH8yqVWPWX/RgZCLvsFpBwSASJQ+gQwDwxL3GB9G8wMxrrI
33777aRJk2CBKXig9OuC7kgEKjOBiqySDaxXzPrHAmRYYxwTyLCMDkLisAYh4u0qxpQRA+HQ5USA
CBCBkiOA9X0xPxjrrvz666/4txxNki45JpQyESACpU+AVPJrmWOZMDgwsCQnNq7EBAij7BRf+hVM
dyQCRIAIlC8CCGzD5p1Tp07FgladO3c+dOgQJvCVryJQbokAEagYBEglv7oesU0RnMcLFy7EMB8M
NAItKkZ9UymIABEgAmWcABY9xCxATI/G+jlwT2BRc1LJZbzKKHtEoKISIJX86ppFMBw26sPcEayL
jG0ksSlJRX0CqFxEgAgQgTJCIDAwcNasWVjxEPsfIdQN675h3QysT2/cvYLLSGEpG0SACJR9AqSS
C9cRQpARi4wllrGHJFbJwNq3+t2Sy35dUg6JABEgAuWRADY3Rraxx97evXuxTTp22sO2pvgGW4dg
15vyWCLKMxEgAhWDAKnk5/WITc/xCfFwR44cwZJDf/75J5Z+g+0eNWoUzaquGM86lYIIEIEySACb
2x8+fDghIQFhFZgwjaUtsM49fBPY2dToO96XweJTlogAESjLBEgls7Cf1pkzZ7CdNWQxQiyePHmC
MDj4MHJzc7FgJ5npsvz4Ut6IABEo1wQQVoF1NuGJ+Pvvv7Ha5k8//QQPBXwWkydPLoW9gss1Oso8
ESACpUCAVDILa1kcPXoUqyBjup5+pgiWtmjYsCG22SuFCqBbEAEiQAQqLQGEIMN5PHfuXOxP9PTp
U0ybHj9+vEajqbRAqOBEgAiUKQKkklm2trbwZMCH0alTp9WrV2M1ewTGYfYe7ZdRpp5UygwRIAIV
ksCIESOWLl2KuAsskIxJe9iPGka4QpaUCkUEiEC5I0AqmQU1/Omnn2K/e8RawF77+/tjhU6s01nu
6pIyTASIABEoFwSwDn1+Ps3MzHr16jVgwADYXsQim5ubl4siUCaJABGoDAQqr0ouuAAnXBdz5sxR
q9WJiYn6BZIrQ91TGYkAESACpU8ABnbGjBnwH+ff+tatWzY2NrC9pZ8ZuiMRIAJE4A0EKqlKxqr1
cFpgOYt8NA8fPhw8eDBi43g8Hq3NSe8MESACRKAkCMD2yuVyrO+GFYTyhTIW3BQIBIhRLok7UppE
gAgQgWITqKQqOSUlxdnZGWtznjp1Ss8Oc/hgu11cXIqNki4kAkSACBCBNxBQKpVTpkzZs2cP3MYL
FiyA1cUeIjDC2D2kVq1ahI4IEAEiUNYIVDqVjPU4p0+fHh4ejul6P//88759+9atW4fxvg4dOlSv
Xr2sVQ/lhwgQASJQYQhgmM7S0vLEiRO7du2C5/ijjz66f/++lZVVhSkgFYQIEIEKRqDSqWSExMXG
xi5btgxboWLdN5hpCGUy0xXssabiEAEiUKYIYLqeWCzGVOlBgwa1a9fu2bNnO3bsgGjGRqdt27Yt
U1mlzBABIkAE8glUIpWsn5OHRd+GDh3avXt3WOfr16/jzw0bNtDWIfRKEAEiQARKjgC20/vkk0/g
QsYSFohtw+ecnBwPDw8KtCg55pQyESAChhOoLCoZ++rBbYyJ1VDGiKzAZJGvvvrq0qVL0MfVqlUz
nCOlQASIABEgAq8jgLnRcCQnJSVduHDhwIEDkZGRCFCmRd/ogSECRKCME6gsKlm/w1NwcDBUMibt
waUBoYyJI1jRoozXEGWPCBABIlDeCWAR+qlTp2KpTSyNvHjxYmwdUt5LRPknAkSgMhCoLCoZAXCY
rgdLLZVKP/744+HDh7PZbPg28G9lqGYqIxEgAkTg/RLADOlu3bqdP38eH+CzeL+ZobsTASJABIpC
oLKoZLCAIEbEBbYOuXv37rhx42hFi6I8H3QOESACRKAYBLCO0OHDhwtd2KNHj/Hjx9O2TcXgSZcQ
ASLwXghUZJWM+IqrV68Wwjpv3rz+/fu/F9Z0UyJABIhAZSAQFRW1fPlyTPnAB8Qi5xc5LCxs9+7d
cFVUBghURiJABCoAgQqrkh8/fozl3rDraXp6Opayz68qeDiwOrJGo6kAlUdFIAJEgAiUQQIwsFj3
zd/fH6vRz58/PygoCJl88uTJP//806ZNG5oNUgarjLJEBIjAKwlUWJWclpaGEORHjx79+uuvMNOZ
mZkoPyTy1q1bsese7UFN7wMRIAJEoIQIwIv8zTffwGeMsbumTZvCMSGTyc6ePTtq1ChadrOEmFOy
RIAIlASBCquSMVEPU/Qgi3/44QehUIg9RLKysnbu3Pnhhx82atSoJFBSmkSACBCBykwAA3dYc1NP
oGHDhl9//XVCQkJ8fDz8x3BMYDYIrY5cmR8PKjsRKI8EKppKFolE+dXwwQcfzJ07F+IYERd16tQR
CARjx47Fh/JYT5RnIkAEiEBZJoAoCwzcff/99/lGGFHIMTExWCkZ4hjm19rauiznn/JGBIgAEfgv
gQqlkjHAB8/x0qVL9eXEn3BjwEzDqezu7o4V7LHVEz0ERIAIEAEiYHQCcEbAZ9y4cWNEuGE/aqSP
ySEtWrRo0KCB0e9FCRIBIkAESodAhVLJcBu3bt0aEcmrV68GPlhqrHEBM123bt3SoUl3IQJEgAhU
TgIIbIPbeMyYMc2bN//yyy8xAwSjeZaWlpWTBpWaCBCBikGgQqlkrGiBsGOM+kEuI9bi8uXLAwcO
pE1QK8aTSqUgAkSgXBDAnBCM42FBej6fXy4yTJkkAkSACLyOQIVSyfoFhrCj3pAhQzDY5+3tDfcG
7a5HTz8RIAJEoNQIqFSqBQsWtG3bttTuSDciAkSACJQQgQqlkvMZQRn/+eef9evXLyFqlCwRIAJE
gAi8koCrq6unpyfBIQJEgAhUAAIVUyX7+vrCkVwBqoeKQASIABEgAkSACBABIvBeCFRMlfxeUNJN
iQARIAJEgAgQASJABCoMAVLJFaYqqSBEgAgQASJABIgAESACRiNAKtloKCkhIkAEiAARIAJEgAgQ
gQpDgFRyhalKKggRIAJlmgDWR6Mld8p0DVHmiAARqJQEsHWoVqt9ZdHZ+T9gdWHs3uzo6FgpEVGh
iQARIAJvJ3DmzJkePXq8/bxXnXHlypX09HQzM7PiXU5XEQEiQASIgNEJwH+BrUP79u2LdYT/m/hL
lRwQEJCTk2Nvb2/0HFCCRIAIEIEKQEAmk4lEov79+xevLHBJIIXXeSyKlyZdRQSIABEgAgYSEAgE
+g033qSS8/LyUlJSDLwTXU4EiAARqKgEIHBtbW3t7OwqagGpXESACBABIlCQwEtfMnEhAkSACBAB
IkAEiAARIAJEQE+AZu/Rk0AEiAARIAJEgAgQASJABAoTIJVMzwQRIAJEgAgQASJABIgAESCVTM8A
ESACRIAIEAEiQASIABF4GwHyJb+NEP1OBIgAESACRIAIEAEiUPkIkEqufHVOJSYCRIAIEAEiQASI
ABF4GwFSyW8jRL8TASJABIgAESACRIAIVD4CpJIrX51TiYkAESACRIAIEAEiQATeRoBU8tsI0e9E
gAgQASJABIgAESAClY8AqeTKV+dUYiJABIgAESACRIAIEIG3ESCV/DZC9DsRIAJEgAgQASJABIhA
5SNAKrny1TmVmAgQASJABIgAESACROBtBEglv40Q/U4EiAARIAJEgAgQASJQ+QiQSq58dU4lJgJE
gAgQASJABIgAEXgbAVLJbyNEvxMBIkAEiAARIAJEgAhUPgKkkitfnVOJiQARIAJEgAgQASJABN5G
gFTy2wjR70SACBABIkAEiAARIAKVjwCp5MpX51RiIkAEiAARIAJEgAgQgbcRIJX8NkL0OxEgAkSA
CBABIkAEiEDlI8DWarWVr9RUYiJABIhAaRPQaDQSiYRMbmlzp/sRASJABIpAgMPhmJmZsdnsguc+
V8kqlSoiIkIqlRb6uQjJ0ilEgAgQgcpCgMvlVq1aFZa0GAW+fv16WlqaiYkJmdli0KNLiAARIAIl
RwD+C7FYXKtWrbp1675CJSckJNy4caN69epkvkuuDihlIkAEyjuBuLg4Dw+PRo0aFaMgZ8+ebdmy
pbW1dTGupUuIABEgAkSgRAlERUUlJia2bdv2FSo5Ojo6KSmpdevWJZoDSpwIEAEiUK4JPHv2LCcn
p1mzZsUoxfnz55s0aWJnZ1eMa+kSIkAEiAARKFECCKlITU0tpISfz96DC1mtVpfo7SlxIkAEiEB5
J6BUKmnArbxXIuWfCBABIlBEArTGRRFB0WlEgAgQASJABIgAESAClYgAqeRKVNlUVCJABIgAESAC
RIAIEIEiEiCVXERQdBoRIAJEgAgQASJABIhAJSJAKrkSVTYVlQgQASJABIgAESACRKCIBEglFxEU
nUYEiAARIAJEoOITEGcmJablaCp+QamERODtBEglv50RnWFsAsprRzcevhFu7GQpPSJABIhAmScg
T/jnl3lz585dsOlYLrOylCZg38q1x+6UnXwfXTxiyPfroZJT7h1esn5HirTsZO0/OZGl7d6w5ODt
uDKcRcpa+SZAKrl819+rcq+6d3BZGx8vHM1G/RgDM6xK+Gpo00nrr79bUdWSsOCg+MySMJDyw6tn
rTj2EPk5uXhYmzGLssvwLumqyPO9u7Rccznl3ejR2USACBCB/xDQSqN+HN3vq982/PPPP0unfzxv
+y0Wix18/cSZO+/qNchZ9vXoGZtulgRjjUqhUKq4LFZW5O1DZwOy5CVxEyOlqcy+cu7QzWcZRkqO
kiEChQmQSq5oz0Tq7U2jv/jFo8/Yzz77zC3hzJ6rsSyeTe8Rk/s183y3onLjp308ct219He7qkhn
C80tba1NBTi3Rrvh4wd1EBbpqvdzEsfG5+MxE1tUMX8/t6e7EgEiUIEIJN48vPt85qanidjlK/TS
vt61scUMe9LyM4cXfIhSqlUKue5QKBRqTb7zQK37quCGBlq1Mvfpw7sPnyXiVLWWpVEr9ZBwovJF
qASTVv5FWo1SpftBzXz9GqJK/IS7mpmZcjlsGYtVa8gvNw6sr2UDf7danyzOKJAx5huNLsuqAp4O
FZNMwVtrVSpdPrSqArdmTsrPhkb1PNdMYvkF0P+s1N1A+eIGTEGY1JAY88Gyxup9N5aMaqQ/V8Pc
gSlC/qEHqsj/SqtRqXUl0TwvbAV6uKgoJUKAVHKJYH2PiT65fDHXstXqv5gRvaNnz09s78piCWs3
bN3Ax5nFkt27eGT//v0HDx05dsY/IUelz2f47WP48sCpmy/9xsqcW0ePJmXlPPE/sP+kf6ZUk/j0
VnBcZmLobZx48X40rsqNYj6fvRv13JRlRF6/90Qmzbl0GF8fe5b5PPECKNT3Lx3Eje5HJJqYmcFK
4SeX6o1b1athymZJk0NuPnqWFhuCE4ISRPlXaXOiTh5gcnctKPn5l6IYJpX9+4/eDH3+jST11t3A
HFHu5VMHDhw8Es1crQ08u//AweORWfpsaKIf3whKzMmMfIALD118+LLB0WZdZtLff/Ty4+df5iXf
unsvNTXp9MH9V54kcGy9mjVvVcUBGWax8hJOHcK5h58kPUclTw3WXX3g7KN4fWbUWbE3Ah9JFXlX
jyEDR5+W6dHK9/ic0q2JQGUkwDW35qnTLp28Dmvj1rBb1xY1YJ12zh8xbvk54Fg9rrWDg4OLu3fV
6g3+PBeDb2Rpz2YNbIAvHZzrfLvmMpSr7shcNLzbliuhl5Z95OBRd/e93KijC3uOnPLdhEE4sUrz
3odu3dz63Qg3BwfXhn0PPUplrki8Pm7UgIXLlnWqia+dOo1ZEp+tKFgBWeFXPu5QBZc36fHRycci
EwEfzovkc7/3HjsrEedFHB81ctj3M6Z4OjiM+OXwiwuVNzf/1MDdEVfV6PjZ4yxIUcWtbd9Vd9fn
t8Pao8GM/VXFfT/+g2mz53Vr4uPg5DLw+9U3rpwd1bKKg6Nzj8/XpEqYhuDmtlkDJnz7y4wxTOa8
m/+2+55O9UsDz63p6IPvHJyrtV55Joz5Thb1/cRBX8z6sZmPQ/0R8xQK6cLJfRafjMYv4edWN6/h
jJNbjF2cAlKa7GN/THBlcufg0rz/gavMOazMB58N7/3D4t961fVEBtp//Gt8zvMORmV8HKnMRSGg
1R3YofrKlSv6z3SUawKp1zfVcTZr8Onip8k5LwqSNKVX9c82BWm1SZ+3cRAKTc34eDSctj2UaLWa
i1u+83bgmZiY8E3s+3+xIUOjuyj74UcNzDlsNpfHF1ZvfytBsf/7ro7evr7VPIRCLtel+rRvv+pa
C58FLLNaK04F44rca6ure3u06tzV3Vwo4LA96o26GisuQFK256cPbXgsoVBYo24jHzfbj34/g1/P
/Nyv7oj5aq024fhP7t4+TZrUwwnTttzRXyhJvDa2RRUBF9/xLBv0fZCpVcVcGNmqKluAb4QsU5fx
8/dKcV7ixRY1bOvUa2xvI8QoYd0PPvni02FV7IUopXfnb0IZDOo1U9q6123VomFt5kK+3ei5u/Pw
ddaTL4f5OQhQehOWmev0jQFM6aNOtq7tVr95G2uhsP0327Rp9zu3qLX2jlKriFs8oZOthZmJUFBz
0Mx4pTY9cFfXWm5M7nArqypzN1zE1coH26o4Wzds0crdUshjsRyajrufLCvXTxRlviCBoKCgu3fv
Fo/JuXPnMjIyinctXVVBCGjEJ5aPtzJ3bNp+yP8uhOkKpf5rcquu3+/Fp8f+B7f8s2vFjAEWPOfN
93O1msz5I5vWGfzdMRxbf29Sq/6Ky3G6S6SBZzd2a1i18cCvNm3b/SxN/mDLVNh03+4TN23aNKyl
k9DUplXPCfg8rk3Vmh2+SYNdS/Zv7cXjV+20eB2+/r2VI6/nTwdeIpXFTe7g7d58NH5b+9MEey67
9cQV+DX2wMxaXT6Kxqdn+32sOO7tPlq7adPJW/psa2MvLXW3tBk7bw2umvppv22308KOzrUTesxc
thHf/PhxOza35t5wWL/4j9vYwxZOXLhh0+9fOpuybKxrTpq/dtOGOdU59t/tfYykrv41ls0TtBg5
Cxf++kVfc2vfvc9wYdTUwUN/+N9elH7V9AE+9fs/gtVWhg9vZs3xaDlv5aZdp2/IpQnje9Wavi9a
q4gY1Njr4/n/O3po39fTJp2LEF3761Nzi/q4J44ve9QR2He8BhDiQL8qbBa/+rfLN21a/b03x2Li
WlI+FeTdMrwY4eHh169fL5QOS/83qWTD+ZadFB6f3tjbrx7f0nvCz3tTlMhX6teDGk7Z/ACaWCoW
y+U5G7/qVKvj5Ei5Ni/iZMsq3t8dDcP+5KKwY20a1l/lH88URKOSJAd0bdzg6y23c0RilUbzz6zu
LPsayw7fy8mJ/6arl9Ck2pJ9t3NyMhf3qdtw4DzIbWXg364Ojt2/3Zyak5Mde7NfDZteC0/mM8l9
vMvX3nnW1ls5OTnB59bXdjMb8dtp/Hrh9+EtxiyGSk45+6u5vfu0DRdwQp5MobtQs3d6e8f6gx8k
4LvUQ7vXBCUm/T68gZff9GfZ+Cbn3G8fC83qHngm1ebebFLFzLvD5w+ScxJurHVlcWp0mHInKSft
yYHGNvYLzyUirf991cnKp8WGc8G48Nb/Jlu5NDweIdNmh6xcvj1CitKrzy8eWr3l8EgVNPf5xlVs
/CavjM3KEUlk2qQrPTs22xqk1YTvqeXkvPp6ikqZef7ssbjEZ1P9vBoPW8bkLidt+9TOJm5d72Rr
tREHnGzM6w9bEJ6dk/r4UBMHq292Mc0AHRWDAKnkilGP77cUWU/9p43o5GTuMGXlVeRk45cdes/Z
9yJLWV8OazV0wT6YIlnMiZamdoNmLN2GY9O6vk08+v2YL22lswa1Gbo0QH/V1VWjLVp/Esn4DLQP
t35T3aHnXVwPIXvoe9/mXe/BQCedbd64zuKzSfrzL/7xUZW20/J7bBn3tzXzqrc/4nkWNn3Rqvmn
v0Jaxx2e3bD32Bh8Hby9ev2m2x/KC3DT7JnxQaPu37/wAaiUytRvu9Ue8tORF+fEftKk5sjFl2Dd
R3Sq2ffns7rvsz+v59v/6536c+YP8Ok7jzn/8vKR7t2nJj+/MmJIk7pTNtxm/lJm+u/ZgdL/9cNo
7+p1jiArqtCB7X3H/+/e83NVMRP6NZx1IFqrSvi+d512H83edvoOGhStOnxUI58v/g58fproTnef
6rP2PtMq77dqXH3q1uc2ecUndTp8uVHvGqKDCLxSJVPERVEc7uXsnHo9Pjvhf/HYqgln5n4y9ecz
LJY5j83WlYFtYm4ee27N/ADekjVLfQSshJAHCdEZR+Z92LRp0/Yf/vjkcWxErG6aGptram3N5/FM
LW2sLMy5bK1Upqg1aPrX/RtbWbl3aduuccvhU4c0t7KybdOttlqdhvgDjSJPWK3xwm8/dbSysvZs
OWpg17Q7D/PjzkJu3TD37Pr5Jy2srKxqd50wppOHRPb8R33O1LI82zrtvvi4M04wY7zAOHLuPVR0
HzKuoRu+cxwwfHId86izD9k/LP+hujW+ser67aKh3uprd2JYXC3bvvo3v/zc0NnKrVWnTt6+H8+Y
3szFyqFmi8ZNBCkpuUhLrlD6DvhyfNfauLDF6M9amfOCwlNY1r6DOpt+3xalb/rVxqtSjlyGMUO1
jO1Ybdz4iZ4ouqk+ZFqrlCnZHl2/Gt5295xPuk74y7t5J2dZcGCK+8/LvmZyZ+UwavGv7VgJ157m
4lyzKg1/XTynmrWVY70unVtbp6Rml7MHiLJLBIhASRKw8e34566L66c1P7pmOeadCbl6K8gYvZUf
DbvEG/i/OUMwLCYTi5RK2d39f32LY/b8CJVHI1/3F2dm58mVavVzK6rRaBzsHa1NmB8FVtY2DmYC
XZII0eUKdKlrNGyBqbMjwqCZw8HVnZ+dK36Rlkycy2Y5uLk8/9vRzpSt/feUaq2WKxCY8vPzyVjF
9DS5tbXHi1klXB5PkpDKr1632otUPWq6WInSUD42n8v3cEfIHw6OvZulhbWF7rMUJefoktRo1AIr
BzicdYeNi6m5TKpkKaN+mjBg3BfTUfpf/z6RpRYIdYKFzeGZPrfMyAXTtqmVMhbX7ZejV7/rLFz5
1dhug6aeC4zIU9nXqef1PEmLalVtBFkZuSw221Ro6unmoP+eK+Rz9Dmggwi8hgCp5Ar6aPAce4ye
/fvUFkHXL8Jscl/Uc/KjXRO+PDVn/c5+tZnpaDwez8TNrXWnnh988EG/Pv2/mfPjgBYvJvmplCqV
lsPVC1bGNJlyXkTz8tlsjkxvYWUyFYfDY8wMm61VKfNe6GKRSMQyNcl/vExMhCq1WPI8KaVYpmI/
F+75yeNyhTivYHWoFCKpOOfFRczMDI1GLE5LZ1Sv7t4Z6XkqU3MhS6NlGgKF7t4KLc+cBZc581ku
U6rYPF3hcTeV7EVSeSKxWmNlb5sb+Hev3tNMO6P0H7St58k0AUzTwMZUFUlefgvCpIS8aYV2E1ce
OLlhbneniP7NB2+/m8pXy9IzX6SZmZqlZJmb8DA6gzZPKdfFuqkk+F99BuggAkSACDz1P37qqn45
C0Uu5taZWWEWs06RMkb08upJa+5Y7Vj/rZXuDHPnGp6N3HrM3ZfEHIlbF3/esaH3C4YmVipNVngc
An/hAoQ51aifz5HDyBhEs1o/X46ZAqhTgQgzzozZs3sPM2tDlbhj/QGrVs0wZ0V/OLjXYGsf7D74
BJ8zQ85tOhbC5pkUFo/wz+oTfX6wq1W1un9139UkJr75yZX9d6L5fo25O35dES5iQo2jL63dfDWx
bY+WMMRqWFClPvwXGXuROWRcA8vM3IcvNEsLPL73FrOgW+yVvWdCU5q1q6sKD9ixI2rB1WgU/uSS
cdbyvBeT8LTPi/ciKzyBQJHw4NDxsN5j5t4JPmh77dDe8+l1a4lXzVuXqsvyo51LjsSw2rerzpLJ
4WlWPs+MVqNh0BUoFH0kAoUJUPtdwZ4J6fY5X8787Z8LOE5t/fPIY5/GfjDHCqVSy+aztNmLJ45N
9GlcQ/n0woWAiJQ8z4adajgppU5NBuMY1EUrjVFw9L18zHN2roJFdvZtP3/1TrZMy2Wp4bnQ/6KG
jVFiXrXe5kFNM9/zTa0kQVe/+nLmufMXjm9btGjzza4jeuZL7OrNWiriz8+du/nChfOrZw1bfiLa
BPHBMOKMZddNWMYcaqjyf9WGbbdeHqe2Ldp4CIU5MWvmpBui2qP62fz86eQd55jyzf3w00CrRsM7
e7HEEoVSAQmtz5ECGX0+PRxzq59/hkx/tGXOtysP4sIFn30TaubdraFlelRottS1xzCUvb87Vy7O
lGgZoazBVS/nl2OIT6UyMTeJO/XXuEk/303i9OzbQZASmWddr0sT0fSRUw4zeTk5eeiUrMY9e9c1
08BJDjovMsDgeZlWBXvYqDhEgAi8G4Gc2CsjezRyZg63Gbtjv5wzyxJ2WZQtZubliXf+sSf02fGe
vq74ddzy8zz7xl+OG3R6dnc35nAdNG15zIsp13C4dute78r/xrp4NzwSIjNnyzJz8/QWUC2XZGfl
6qctq+V5WTm5jGGFM4OjfbRvUSMfF2eX6queuvzwxZB8+yzwbjPlw26bP2uCbLUfOv1pmkyqYBSp
RiGBx5lJVi3Pys6GwCxQWnbXCdN6eoR1q4bcOrf+eEGc2Hrc/N/qZ+9p4MkUr+ngn2pNnvdVN3eW
QpqbkwXPiO5arSQnWyTRTxzUSkRZubrPXIFQmxm1cGxPXFiz63Sn3lNHNrbm2NTxa6yc6ufj5l7t
o1/3ZcrVuvurmdTk+bPDNeLcbKmKy1Wm/z6xm62zi6t720BMWvygzzc/zDG7+TOKi6PTl1t6/fDL
iLpWLBHunyVRPF8HRCrORoTfu1UhnV3ZCOgjUSguuaJE5Kif7P/ZxRoRFjis+n7+W2QuSpb23ag2
M/eEa5UPB7pYm1uYcplfHWfvZmKznp7b3qWWqe58dueJvz3L0IWzMYfm+v++tMNQWfUOjzPUB+f2
bT11vf6HU4vHder1fZru84VlI1qN+DYLvfO7G6vWqvvhsA+Ym3Os+n33T4Y+uvj5IbuycU5NK9yE
12PE5HGD2n78OxOXfGnF6I6TlqFzn3RyYc3OIx/9e2qTOidiwfD2Al3eag+fEy/VajJCvu1bW5/b
6u2GHH+ii2SL9+/YvtVfl1OYz/KnnzVp+tM+XdiZOGJ8jxqz9oXj48Zvuvv69evbthYu5Fdv/8+V
SHwpSwn+fkg9HmYpWnr17dezbf/RIchz/Gk/vzYbrmc+z3jy9QG92u14ohFH+3ev68TcmGc5aO4/
GWptXszt0X6u+sw07vv5jWiGtfzB9oZ+XY4+1QXwKVNmDPCdsP5mQRD0uVwToLjkcl19ZSDzOaf2
bPiDOf688EAfiKsJunr01B2E3Mqv7tu+5q9Vul+XHb3xPEw4LGC77ps/TgUyEcIvD2nC/vUr/1i5
ITJbmxlyafvJaxJdgG1m5J39u0+nM8G52uzIW3sOn0jH7JS4My1bt1hz/O6uDcv/+GP5hdAX9q1A
cpd2/4W7HLsamvTs+pFL95GYOOrWvpOXREyiYbv3H4p42To8v0yRErQJ6f3xx9YLT/RfiWOur1nG
fLPlaIAuC3Az5Jw/vudySKruDzlWVDp/J0r3WXn37K7TgczkwIvLRvoOmX3vznmGy9ZjsK76Izvi
ymqktmx9wN3758+eiMDED032maN7roa+aCrUooBT+25EMHO0n14/rLvzsosh+tZJm/rklC53f+y5
+PB5inlJRw7uDYxlyoTj8aV9x66HPP+J/qfSE3hlXDKij5jeWUxMTFxcnJ8f/I50lHsCWekpuuUr
ec4uDvqgL1F2FsvExtJEm52aKccgE/Ml29zGztKE8SaoxKnpOn+Bg4sLlmUocGjSk1PVPKGjg61C
lJWnFdpbMQuiyfNy8hQcG1tLjEQo8rJFSq6tjWXetVWNZpzctv+kLy9Fpc2/9b+SE6Un56l0d1GJ
s2Q8WwsThSRHrOLZWZlr5OKMPJWtjQ2v8PCGIiU5Exm2cHCx0GdOK05OYcIhzO1dLPXOELUiM0dk
YmFrJuBgZC8nMwfLLVkwwQ/qnOxMjimKqV09tfMOwfhriwemZIrZ5nbOlsxqzbprRclpeSyuqbOD
hUgkNrW05mvkGTn4YGvG12VFo4QzRmhhj4VBFHlZmSLEdXCdXRyfj9IpspIzmUgPa2cXrGfH5E4l
zciRWlrbCpk4FI0oK1MrtLbSrSpCRwUgEBwcLJVKEchejLKcP3++SZMmdnbPY0OLkQJdQgSKSSD6
VKN+X41ec/vrdtbFTKEkLzu/ZMjI854RZ5dbluRdKG0i8GYCERERqamprVu3LngaRVxUwMfG1sHZ
hTn0EhkHx9LG3tIEs0F4Nk5O+t9cXJz1EhkHz8JJ/9W/JTJzIRSts4MtnhITS1u9RMYhNLe200lk
HAJzG3sb5jMmuKWnpuTI2bqb59/6X3gtkZz+LjwLSGTmcjNrSGTmTkILR7v/SmTmFH2Gn0tkfMG2
0Of2uUTGN1yBnZ09I5GZX3nW9vaMRGY+c61tHXUFxzyY7KS0TLaAufalRGautWTScrTGqneYdsiE
JnOF9khNL5GZnPFtbRmJrCusre7OLyQy85X+m+cSWXd/Uwd7O51EZi62tHUgifyvh4D+IAJEoPQJ
8M09vb2t+f9dxr70s/KKO5rZulZ1d9Bve0IHEShTBEgll6nqKMeZEXq3mj55bDXrsrnZNKdl38+m
9GtejvlS1okAESACxSbg5oddlka3KKPjGK3GLru8YZYN6ZFi1y9dWGIE6KksMbSVLGGhT7u5M6b6
2pfN+cIcvyFfzhzWppLVCRWXCBABIqAjwOYIBFjsqGzaZxYWUxLynw/AUYURgTJFgFRymaoOygwR
IAJEgAgQASJABIhAmSBAKrlMVANlgggQASJABIgAESACRKBMESCVXKaqo6xnRibJzBbnb6hX1nNL
+SMCRIAIVB4CFzbM/nXH5bI5NaQotSCX5Obmb0z1mgtkeTlY4bj8lrEoHOicMkWAVHKZqo6ynRlF
9PS+HRefCCvbuXxD7pT3A45dCUl9U/6xnOf5fQFByeW2jJRxIkAEKiUBWfCyJdsTZPoVKcvlcXTp
mI9+2f/mrO+a88HIBbugkpMentl88GyOfkc/OohAiREglVxiaCtcwhmBJ8/FOXVrXbPclkyyc9n0
FSdC3qiSRZsWfLbsOHPO4V9H9pu5nvZlKrfVTRknApWIQGLAyWS3dhOGleOVfOR52dlv2wlPJsrK
FkkhXOJu7ft984FMUsmV6Bl/P0Ullfx+uJfHu549cqFa72EdvJidpcvpYWqh223kDQeHb25poz/H
vW7bDo2r0xtSTuuask0EKgYB/c5frznyf5PuPnTStU3fBpbvw5X8phyytPptrIpwYKULPveFxdWo
lP/aEPv59WZmplwuW81itZjwv6Bj632eL+JfhNTpFCJQLAKkAYqFrUJdpIkNvf8oLlNfprTI0JDI
5zEJ6ZEPH4bG6hd616bf2XYp2K9X73yNGRV0+zKOgFtpb16oXil6+vRpdq7o/rXLgaEJ2H3kWWiw
SK4Kf3gDF8fkMInHP7mOz9FZr3ULaHISbj98kqvQ5USe+SQwOEvBWF6tLOtJ4O1k3caB2EPw/s0A
Jku3g54npFVEhQWlZOc9u3/56v1QNYvPRQuit9jylGunryRJ8lex14YGMtfGpObBCms1zPd12w0e
2b059uiTpEUGR6fkpkbjhLgsXSboIAJEgAiUCoF7u+f2GLM4XWerLvw1veewJdm6+97cNPOjL5fq
LChLnXT75IXoLv266XMkS3swc1QHN+bwGj53W5oYqvI1hzb9928/+fbnZf2au9XsOy1Hod08b/T0
RSsmDWzt5ubZ9+vlwUGPfxreys3Nvdv4ZUni19h6UdDEEYNXX4hj7pF1c4Rf/03XE5nPOcFfDe29
/V4WPqYFHezvVwsZcvdpMvt/VyWMHdbsXzpp4o9Lx/dt6Nawx6MMjaUQm6cym0A9O/Fn7zYfXgzX
F5Qlir4+vld1XNv1o69vx6lMBcwOrdGnln44fSnOUD7Z98mEKb/Nn+7t5jZl3eVSqRO6SSUiQCq5
ElX264p6Y9u8EZ/9KWJ+zv554oDBUzbpVKZ84+wx87dd16vK0IBjUTnVPujgoU/k1NrJHdq374ij
Q+sOXafdTZa+lqModNa4vt0/GNylU8ePF+7QyjIWTOrTuWPXTl274OLuH36y6MeZfbp2xud2vb98
kPzqAAet+NHngz7afjMFd0m8sbF184FnwnIZy3tv9+gx08PlWpY6dd20Hn4dOjBZat2m//jVOiOd
veq7D7v1Hti1S6feExekSwSmPGyNZ87SJnzfq8/3a06Jn6tp2aFFo9u2Yq7t1XvogTvpluaMv/z0
H6MH/rAFH+Ivru3bp2efvn1xwtrzEfTEEAEiQARKjUCV6j5p5w/eTWPk4uWQKzeunA9lPovPn7uu
cqhlo8tH8MVDkdbtBzRzwGetKPzzAR/sj/SYhmPKgLsLPx3z+5HX7mrHVsc99F+6eI1rl2mTh3Xh
siQJoXeWzfk6yrbztCkDg7Z9075D7/umHadN+yRx68K5m668utRWVTwkMefPXGVscujtc4/9HwQ8
wOfUR+evRPPr1rRVRp/v3f1TcdU+yNG4vj5/ju+3+FQktibNigva8OuiDM/+08Z/aMPTKtRsC3uz
Z/57Px270W/6rC41bZnbyeKmf/zhyZRGuNbPMnrToXtsnhDuDklqxL2QCJhwrjrv7D/rVp+LnzRt
Wuf6rqVWL3SjSkKAVHIlqeg3FJPTqXt3y8TLTyB000PS7EzNxU8eZsMNcO9WvHmfD7ozXXuW+tyJ
i269R9Y3Zf5IvvzX+JmHPl11Pj4+PjzwkO2D//2w+tRrrTCHK8tNS7eofzYk/uKKiWyWWCYVBycI
/jz5NP7eDt7F7Su3P/rxyNP4sNPVQndvPB30yoxy3Tv1qaW+efshfn0SE+dakxN8lbHCd/yv2LYc
3taee3Xtd7N2irZdfYYs3dw36+7m71cfj2GxTdhKSaLYbN352KfHV9oLJTKWgKOMWDn+64cOff85
/EsNa+b5Fz3cN+P3M2PXX8K1a7/qmpsr0ncMODyBgMeUni8wSUpMajx6CU6Y2asqPTFEgAgQgVIj
YF+nXV2fjLMBUaycMDWrft+u9v5341iSsLuJ3H4Du+iyIT966K7fsBE+umi48Mu7rqZU3XZsxywc
P67cumLso917Ql+3NJFGo+Rb9ZmxfMPiWV9/8oGFQCnWCOp99tfJTT/j2gktm1Rr+dneLYtnzfp1
+mifJ08evWa8z6JHn/rB96/AaRx0P3n48P6JUbfhdrlz+YpL2w+aWLHPblolrTV237Y/kKMFq/b8
8knd4/87oBsN5NQb+ePBtQtmTf3Uy5qr4ZmEX9gwetq6T/ednj20mX6XkdQHJ2/H2q4+tB/Xzlt7
aMHH9aVSxpnC4QnNTBi5rFXKBdVaLN+48/tZs4a0Lb/TZkrtgaIbvRsBUsnvxqtCnu3UqJWDecal
G4nZIU993Pq3amJy46lIFBIosq3dpSmzo6k288aJe6pPR/XSF//K2YtVen8xb6Sfu7t7tSb9f543
IvHk6aTXoVErVZbe46fNalbN3cXemqVRyASOoxevGtzcy71x7+516w+YNntoyyruNTp26GKTlMg4
SV51mLTrUvem/1UZKzcs0GTCmMEhTwNlLPntR/FtevVgsxQnTjwYOOuXwc2rI0stB82eNaj+nWOX
WCyeimPWfeL3vZp4uDnZ87hsAZ9zZtm3fwZqVu2d5/3i2b936bJt7f4zxnbAtR0++mF0B3exhAmr
YOsOfFDJRPaN+3w/pTdOsLUox2HZFfLppUIRgQpOwLxql5YNQm4ERD95mmfVeXRP32f3AqPu3VU7
tuhcxxxlzws9dvKZrE/fTnoOqQkp5q4NGjBuZeao1bKpTU5y6hsW8OTwLG1f7lzNYXO8farpnCMs
R3cHOydHvcnjmAs4CIh4DesGXQbYZEU+igy//ZTXZ+QnduKEu9FxgUGiDt26ogEJj8nzqatrS5iD
17hBTU1iHBwrMK+mNvb5SXIYg4uYvsSEpPT8L3MzM3l896pez7/wcjbXav/lk9Fq1TwzMxszfZbp
IAJGJkAq2chAy2Vy1g0/aOYTdi3gUmiSRZu+g+paxd+5dPpyqFeLPlV0Ycg3d2xJtK7Tqb5u/Atd
d6lSJpbnOxXkEpmaq3O6vuZgszQyad7zH7UsPoctZGZf4NAILDkquT5aQ6pQsnivT6ZFt4FuotAb
N248Zrn1H9LNKin81u3Lz0QePdvVwOCjTKyUS/PbAbVUqmDx+fo7KmWSF/nSKlXaFkMndLIKmj/n
cH6EHZfL1eCX5ydhyogGAvlfRWGztWpl3osSlMsqpkwTASJQXglwu/dsz4u5vvdasGOrRh1bNhDG
Xtx+PNirQy9Xndm9evhIlnWbrrWfd+Cr1KiRcW///87qooRZuZt/W69o2FYnp193aNWqf/mI1crn
sy/UarVGrdLbRo1aq/cavPIwqdqud232se0HY8yFDf3atvZWX9mzK4xTo3Nbb4jhenWdrh/a6B/P
mHpt9pN1m097dEZ0BwvNANLPT1AuzavW9bOtK2buHjdytX+8/ntXz6pyaeDJi8zqnKLIK/sDYnh8
zBYpeKCF0ahUrx3OLK/VTvkuGwRIJZeNenjPueD16N0m5e6B0/eT67ds7Ne6SeK1LfufSDv2asvk
S5t54Mydqu0Gez6Xnez2H3RJuLh8+qoj9+/fv3lqw9eLj3eaONr5DSYYpvblJGgtLK9KrVfJWpVS
pXkxA1qjUed//m9ilnXb+1UT/W/9flsvlxrV2jT0ylm/aptJiy5NHHGubd9B9Y8vnrH+5HVk6chf
Xy+/lDbi075Q3sp/p6mQSuxq91mx8Y9Hf0yZue22/i61WzZNDT6ydMMpXLt53qd/+yeamzBFxRw+
5Jv5oNUwJXjPdUS3JwJEoJIScGvVx0V1YdVfgS3q1xBUa6UOO/7zvqtdu7dhcGjSTwfcaTpseL5L
1r39p9+M8p07oHZNHNV8f39gPf/Xrx1f68bQiHKyciX5Klmbl5uVk/dcJUtF2Tmi53NOZGJmCbbX
mkGOXa/uNbctX6pSernxzJo1cl825ztx7VaNbZg8dpz4/aAqkf0bVkOOqjbofNWh16/ffoCsi0VZ
WS/Sx2myvKz42IwancYt+67+9KF9DzxkhhbNa3X5qLPvIl1xOg+aeCM8S6Zz0aiRoVzdxG2VNDMr
W/H6CYqV9KGhYhuJAKlkI4Es58lU8etvK7oRcIfX0JPDr9FcFeR/LUnVQTdoJ4u8EZgq+HBk5/wi
enScvOW3UQe/HdCkSZPWA2fWm/n3ok9bvn79ITYPLuKXTgg2t8CfzGdm4Qnm4MIh/eLzK3ByXHt2
9D528LynTyOECjer6Xxw774qLdqZMKeyu0xa+vMoh2l92iJLHy46M+l/O8c2s4LXu1CauIM8V2xR
s/eG1UO2zR2770k2LrZvPmLFjIE7p/Ru0qTFzkfCts1qQxQziTIXMy8IW5/lcl7FlH0iQATKKwHz
mpMmzRo/ZUwjHwGL7Tp+2uwfP5/cugozTUQUfOpuZrUJQ1q9LBrPetqGozv+/GogjmETDl86O7wx
40t49cG2HvX53And8sN5TQeO//HLfg30J7cf/c20MZ31ArvtiO+/HdX5DQFnTXp+9u3X0/oN6QSj
WbvTh/Nnzx3bu4P+Wq51/Y1Hzy/+ZjRyNOrznwJO/V3fhjGoHT+c+cOo9ukEJ2AAAKT/SURBVPkZ
aznwq2+GtMCfvX9Yv3n+B8/H7/gOs7Yc2Lzoc1w7fenui6f3fd6fWRPapeXwOZOGWyAUpErHn3+Y
UdeRLHR5fbrLeL7Z+rUYY2Ji4uLi/Pz8ynh2KXslRyA9LjxdZV3TxxGxZxlxEdkaSx9vZ9i7s0uG
zb/b4OzeHwsN2SVHhWbLtWy+qW81jKm9/lDL4hNTTO3c7M11vmiNIjExiW/t6miJUTN1enyC2sze
2Q5pa9ITY5Smzq62r10AUyvNfBqd7uxTzc6Eq5FlR0QnO3jXtDXN7+lJI0NjsECcwMqxqpvesaJK
TUxQmzq+SFOTkRyvMnF0tkHrookPf8Ky8/Wwe272E8Of5qq4XjVqcPNSMlWWrnZm4ozEbLWZh5ON
UpQWl6P2dHPhU6ey5J6/cpJycHCwVCpt2rRpMfJ7/vx59OLs7F7GgBYjEbqECBQgIF83pv0mSf9L
e2aXzsLBoqRntx6EF5rDZ+dRr3l9T7KO9GSWdwIRERGpqamtW7cuWBBSyeW9Wks4/5r4qZ0HmY9d
/dsnpbSl0+1df/y6O+DfIWb8rp/8+MXgRiVcVEqeCLydAKnktzOiM0qPgPT60bMqnxbtS2sFtEd7
53Ufuejl3DpdSTt+uu7k/z4rFCxcegzoTkTASAReqZKp+2ckuhU1Gbbjwv3nFo4qJYkMiphIopAX
PlSYUUcHESACRIAI/IuAaZsP+peaRMad6/T/Nii58HFg+UfPJ61Q7RCBCkeAfMkVrkqpQESACJQY
AfIllxhaSpgIEAEi8D4JkC/5fdKnexMBIkAEiAARIAJEgAiUIwIUcVGOKouySgSIABEgAkSACBAB
IlBKBEgllxJoug0RIAJEgAgQASJABIhAOSJAKrkcVRZllQgQASJABIgAESACRKCUCJBKLiXQdBsi
QASIABEgAkSACBCBckSAVHI5qizKKhEgApWZgOr28f/9ueJ/j5JkLyio7p47EhCUgi3YTu9e++ef
K1ev+/tebF4+o9Abp0/fDMP2OtePb/nzzxWrV68JCEmtzASp7ESACBCBdyJgJJWsld05vmbSxPHf
/XlUopRf2fTLJ+M+mrPuouqd8kInEwEiQASIwGsIxFw7vO9CPFcRsf+fU8nJMZGRyRFXzuzatPt4
wDPsAWzv7O5dxfHxmbOhqRmxT4PT8zTJj6/u/3v7/rOPNSy2tb2LVxWPqKsXA8PTCDARIAJEgAgU
kYCR1ktWZ95/FGvBy9iy9dmA4a7HjyaNmuR3ZPnOll/Pa+9OO/IUsS7oNCJABMo6gfe4XrL/P/NC
fL6a0jpl6bpTzRs2lOVZde1U/2nA/lORbjMndGTAZd9due3JhxP7Bh+94NhucC0HTfKTc3+fV303
oz+z6YMmdsOqg+0+mlzb/vmu7AVZq1QqtVrNZrPLegVQ/ohA5SCg1WpRUB6Px+VyK0eJ338pS3aH
6uTAnT9vPOHUbNKQWhEH49x++LD73r/nsZrOGNbIolDRMzMzsVM2meP3/0RQDsotARhQc3NzT0/P
cluC8prx96iSL26f/6z6tImNE39Ze3zopG9rmDAMQy/vPvbMY8Znfti28uq2P0NM240f2iwfbtbT
M6tPKH6Y3g/i9+npv09Fun85ped/m9zo6Og7d+5YWlqW11qhfBOBikhAo9HUq1fPy8urIhauLJap
JFWyRqHmCLgs7bZ532Q7eUgtG836uMvOFbNNuv4wqK55IRgnTpwwMzNDG18WIVGeiEB5IADraW1t
Xbt27fKQ2QqVx/eokh8fXb0rxLF/S9mpK6qJXw42ZfFMeOqA/etORrrPmzXcTPxg3vyDQ37+pYmN
Kjs9S2jjKFSLHl3Yuf6ccv6C8U7ClF+/Wd7kmyU9qr5iL+H79++jkho3blyhqooKQwSIABF4FwIl
qZLFMbt3HE3l8TKeifuO6Hxx3UZpDQdJosuUhZ9XMSs8hHf27NmOHTsKBBSJ8S61R+cSASJQBgi8
R5WsFSeu/+WHeznOY2fO9xVfCIh3qOOQvW7jvmw1d9CXizpZPtt8TT7po45cVtqJTUd9Bozzzrny
25Lt8Qptp0++/ai+cs2h8FHj+tm8iuHDhw/xdcOGDcsAYMoCESACROD9EChJlcxiRd48fyU0wdev
X6tqdomPz56/n1K/86DGHq9wGEMlt2rVysrK6v1goLsSASJABIpL4D2q5OJm+e3XkUp+OyM6gwgQ
gYpO4JUq2UhrXLBYVVt1HT16NCQyMLrV7/7JJx+/UiJXdMhUPiJABIgAESACRIAIEIGKQMBoKrki
wKAyEAEiQASIABEgAkSACBABHQFSyfQgEAEiQASIABEgAkSACBCBwgRIJdMzQQSIABEgAkSACBAB
IkAESCXTM0AEiAARIAJEgAgQASJABN5GgHzJbyNEvxMBIkAEiAARIAJEgAhUPgKkkitfnVOJiQAR
IAJEgAgQASJABN5GgFTy2wjR70SACBABIkAEiAARIAKVjwCp5MpX51RiIkAEiAARIAJEgAgQgbcR
IJX8NkL0OxEgAkSACBABIkAEiEDlI0AqufLVOZWYCBABIkAEiAARIAJE4G0ESCW/jRD9TgSIABEo
GwRyUyKCgiPytC9zI8lOzRDJ9H8r8rJT03Je/qZVxDx9HBKToj9dIxenJGdqykZBKBdEgAgQgXJB
wGgqOfHR6d9//2P/9QgWS3l1z99//P77rguPCxjzckGDMkkEiAARKKMEcqMD//hpwe+L567ddlvF
0mo02sRHV+Z9/sWyvXf1MvjCX198sfKoRKP7TatJDL60af2GBd/OOxaYhp8f7JgzYdHGpOeKuoyW
kbJFBIgAEShTBIykklVpwXFiD1ezc6u2ByaG372RUK1Jq9peDuwyVdYKmhm1RiFXicTydLE8TaLI
UqolKo28gpaVikUEKi+BR1dPWfVZsHn1dFX67ev+Jw4evCa0cunYvb2VhnEQp90PeMrxbN7QQ6nO
OrFp44MElbl7k7nLV33TtcqTu1GK1JDrmeZtWlaVvsY2sNlkrSvvo0UlJwJE4HUE2Fot4/CNiYmJ
i4vz8/MrLimNlsVhszL++Gp9+xkDry9anent2a7PmK4NnP6b4Llz59q3by8UCot7r8p4nZalkSqy
ZMocuVokVebIlLkyRY5cKZHKRXJlnlyRJ5HnsLRaHs/EVGjJ5fDNhFYcDhef0fiZCe15HIGQb8nn
mPC5ZiY8Kx7XxIRvw2aVy3ZRy6roQxRaFkmWMvuSBwcHS6XSpk2bFiOH58+fb9KkiZ2dXTGuxSUX
dyx4Vn3qxPpJizef7jfsixrWHIGA9yxg96Ew75kfua/6Y1+Tdr63wsVDhw52Eag5fBMefCDyhP+t
2le/f/+oMwdtfetFJia27PFRExd+oQw8evRILpfXr1+/eBmjqyoVAQ6aet3B5sBQPf/88kvmq1e2
LM+/fKX5LnDBK36HzdcLFfy/FlpDd+AD8yUbv738suJVBJ/P53K5Fa9cZbNEERERqamprVu3Lpg9
Y6lkJs3bB/4MEnYc07dRRkxYZNS9I/sfj/j553rWhWmcPHnS0dHRwsKi1DDxuAIIR7xh+e8f3kno
Tua9K/g6M+9c4bA9DFwWIZ8vjcWLk3WWoqB7Rid98FVBG6D/hsVVsblqDleNf9lcDZunVmmkefL0
PEWmTJErVWYyslghluexFBKtUq5RyNRKhVKpVPHVdlyFPVthqZbxFSIucs8TsPkWCqTDMhVrWHKN
IEOhzRUIhBweh3nX+Gwen8M35fB4bIG5lsflmwnsOGyeudCBEdYCOz5XaMq3FfLNtWqORmOkcQb0
n3hqNudftk+ukqCAHHb+LdgarVokSylIG2zy5JlwjbNfnMZmceQqcZ4sM/+bfHNZqI4Y81nI2CLp
wl8VoWLfxykardLJvF4Vs35vuLlGo8Eb5O3t/T4yWKnv+R5V8rWdv9w0H/F1h/T5fwaMmz3DS8BU
RMTVfSdifb/sq5r59e9ilfJBnHzCorVj2rjjJ0VOwom9G9UNPhnS0vTnqV/FSPlPIxO6f7Xqx/71
ClUhCnXnzh1nZ+dKXbXls/B6nar/R/d/L5ugwlqVaZH+8x2jdHXy8+WF+qbq5cG0kzh04lir1kol
ckT04Au5VKGQqfC9Rq2RShSwsPhShi/lSiYBDVut5DAaFh+VHK2Kw2ROw9Io/tOywLIL1EwZtFoO
X8vmMaoYf3EEGr0INjUT8AVMA8flckzMBboTWSb6LzUsLo9jai7QI2A0dL6eZuQzQwXn5LcHzAdd
YXWi+4Xgfv637qsCKP7TipT2IwI7X69ePS8vr9K+cWW9X0mqZK3q7N9zdwWxx0+YWtfNXCHPkyXc
X7Xx3IiflzexLcz7xIkT5ubmpaaSYRkSs4Jj0+/h5ShgQzTmQnsB5OALEYwPAp65hYl9QVclh8Wx
NHPmsNGTe4P/kg0llyfPyNfEjCnQavIUaWqN6uUdYT6U2QpVXr79gRFQqCVSZTbefA7uBNPBwSuu
1rLkXK0ZR2HHkpmrZQK5iC0Rq6QiFVtlyVaZctSmHI2QoxVyOAILS1NzK6GltZmZpdDMQsj0s9Wa
3GypWqXOy5XJpUpkSypWaDlKjVbF/MtSsDgqDVfC/MsTQVJb2Ai5XLaJNZSsimem0HBkbKFEyclk
abkclq4RNsaB+2pZqvweCboiHLU59P3LLgODjK0RWxbstbDZWrmIq5LDiudnAqYTtHgv/2Zpwc7W
wQKGMt+6wbRZ2ZrBsL5wOjBhmibwrtuaGaM0JZ8GW8tlmahF9m+4E6yntbW1r69vyeeG7vAvAu9R
JYsjb8+f83MK36H7h7N7uD+7mWBf2zFn2W8rw0RmX/28om9jZ1banTWXskYOaHFr92GfXqPVAXOH
/+LfoXObOu2GTe7XjCV9tvnYA78eQ2v8x3Px8OFD2KUGDRpQZZd3Amo1JCFTCHzQqBmtqT9gFZUK
dU5mXsECwmaKcySyPMVLVcxmqVSanIw8jVonW3UH/MTiHKk4V4bTIEPlMiUjiDksSGSFQgUDDXOE
5obRw5DOMqVSocKl8IDC5MJBg1bJzMrUzFwAbc3jcSzxJZqXAi4rNFi5WRLklrlRrlQmUUJ5q5TM
l0yEPYttYsLj8RmVzOGyhSZ8vUqGR4fL4yIdpIbP+kJa25ubmOJGGh6fh89IEFm1sDY1tRTiA860
c7RkvmQENxt508toNCrlvd4p/0YhUJIqWZ254Zc5d5JNbOwcenRr8+TiwchUqd/IuUP8PP779CHi
okOHDgKB0UTYW+n4hy5JF4c7WdeAw1J/MsSrQiWFdsy/Ft+oNUqlWl6wFw3pjNPeKJGRFhSggKUw
K+gmxkuokvCY/nC+wmOz5GKNSsF0jp/ngcNWwEWcKxVoHDgKa63MUiXlKfLY4mwlhKCZmYWZmTni
UpjDFO5gnqWtCf4ztzKxsBZaWJtY2Jjg3YY65MFS/GeAC+5omBfGUCJIWarMQ1yGnDE6aqU2N0uq
VsIOSmENVYxPWg2rppDjk0IqlanUSrFIhP66hZWJUXrScEDkZEmRB70rgjFlGq1QIDQzhyZ+2fdg
IkPMLdBfKHhToYkQ402F6rewI1mr1RnoAknBi6ZQq5Ww8i9Qs9kqlRo2/a2PSlk4AW1MnWZegye3
KAuZoTwUIvAeVTJykpsalSoWVq3qphGnZ8kF5nxVSnoul6sxtXN3tBSytCqZkmUiYGUkpZrau/GU
2WlZIolEYmLr6uloxaxyoVDx+YIXL+LLkkEl44+GDRtSdZdNAph6AnsuEcmgHfFZJlHAwuflogmD
PZdA/uIb/a+MstS5S0U5equrN7kstCCw6irF8xZQJym1AhMegnYYYf3iwKU4ky/g6dTpy28hOnkC
RpJyeWwbewtoVviPza1M0UzgTLRENjpXBb6EJDWzNGEaWTZL1zYxnmooZgjcorDVtVzIDzPKjeLo
LxFlS6R5CqSglKsYBQ+9y2HnZDH6Hl8CiP5L3AoaXd83QKF0Bp9RwTgBQhxNDM5Bm8vggX/aQsi0
cYzcZ1vbmUO+A6bQRGBpa6qXzpY2ZkCBbGAYFiXV58TUHG0XAwdubHNdMXE81+hFKR6dU7YJlKRK
fpeSnz17tlWrVlZWsNqlcYiUCbv3rst+4mUhdNG+UMl4deVKsepfmpiDPzGgX8DfjBdVgwhgnb/5
tW84PKN8DoJ94TMvKNTYfLZVgYgC+LG18AHDbuSLacZ/qob9YjOS11qIlxOOYZgYvLFCM76JKQ8j
SgL8a8qHSSo5UrBKTO9fjigOFcyKSqWVSxS66UBGCv+FsS3ULCN+WsBF6fJvwTghOGwzCwFz5ovb
wjzBrAt0A21vOHCaRCyHdS6oidFmwDK+dNuzWSgd7GzJYTRiyiiRqZnQp7aLEdOkpIxF4P2qZGOV
olA6pJJLCOwbkkW/HSoQDgv4KTQqtUyqFGVLEUen8+Nq4PSVy2Cy5BCIUJiMNeMggEENc40PEIv4
FyIYMhftBQwd/KZ6MQe7CtFmaWPKxEjofK7MoWVB+JqYw+NQYGAO+g9fmv3bDYEzoadhnP8deFCi
bZBx4YOqnhUMPmwpEwQiUcD+o9GHZxoOI300syRXnieS6cNFstPFjIzmcGQSuShLii9xTnZGHjgj
b/gz3xXFDPxyGVc0kkX4oi6EUguXtt5pDX+WrQMGqJmugRXacVM+vFSAaW1voR/KtkE16ZQ3eEKF
5wdzG5cApVZsApVUJUel3tr86wUXk+YevlYFpS7jkvx3kJYuaquw77ug0n0leqabbsqFzC0g5tA9
5VjZwdfLvE76Ay8GvL+QvC+/YV4qmDMz3RyIYlcrXUgEiEDpESCVXHqsy/mdYPPFOTIoXagx/CsR
K/JyJPDESERy/Ml8kyeXS5To5MtlCgsrU4gtoQnjx4WE0kfQwVupcx9g5E0IdWWlaywQxoBz4FMw
MRcyTcd/hwbKObcykn3Gm65rrTEyia4LIw3goc+WwKmEyA0FZgtlSRivjpYF/73OKcNCh0cqlutF
Nj7kd2lQ0Uxcyosv4SyHT3r8D72dPf8TkFpGCl9Zs1FJVfKlm3vPbkwe8+XQGg1dK2vVU7mJABEw
DgFSycbhaNRUMI0MjkP8hwC2jJTczFRRVpoY3kRGr2i0mLZhYW2GIUFmDoOTJdyB+JIJXbMyhQ6C
fIG3T6dsWAg/4At18a8c5ss35JGJfJAhUk2FUTjcHZ5geH8hjHKzJQjhxbQQeCLhuXw+4+3lqjUY
0+fD+2tubWphaQK9i+AE+BdxGr6H9sI4PiQycigwKRxpZlRglFiJE8DjgagP9GL0j4p+biIUthoz
j3ReMyc3GwrVKPFqeMcbVEaVjJlwm7etTLrp+fWSgeiRvyMxOp0IEAEi8C8CpJLf4wMB/Yoh7Ows
cXaaOCs9LytNlJuZlyfGHGUZRtIhTyFFECALnyszRUwnfPENZjBjWQZ9WGpuFsQr8yXce4hqxcg7
TjOzYFy2UC5YLxPChRmm132JGdWMdDbhIxRVH4kHVa1fgQgj+JhkBtEDAQRnMNQtNDcchAgSgwMY
Chsxrxh/hxbH8gvwBEMN48vy3AbpYnX1Ebt0EIEKSqAyquTMvMh1S3Z727QZ9XXHClqtVCwiQARK
jwCp5NJhDQGK6WiIVcjLkWFoG4IY/8FJjLHv5z5XXWQCYtjsnKzsnS3hJLZ3toJC1c9IY1ZRKHBA
2uo0nhYj43rpDA8fpi/jOzj8kCyjjFlsUY4E4RDQzfgpMzVXlwAbg+zQwfqoOGayhCkfQcC4EeaQ
IF4Ojmr9bDYIZYRMYBJYoVuXDi4j3kWhkkgVzHr8EkW2SJoukiTnSJJkSpF+Hh6HxTM3sedyBZhc
BxKmAmss6ITp5hamDgjfRS8CwSACnilAIVgRi/TjX/36UfgSZzJ0mDWj6CACZZFAZVTJjyJPb1/4
cPDIgS271SyLdUJ5IgJEoFwRIJVs9OrCHCnI0MwXOjgjOReLjmHNXUwmhlaGyxYxuHZOlljw0drB
ApLUEuEKzIxn/MvMUTN6fipJglj/SKVRKFXSXGlqTl5irjQFalgiz8ZMQqyZge/xn5nQzsrMycrM
Rch7Pv8MK0Fh2VPMN4TYlSqyoZ7xAV+KZRlYeU63nAX6KEywCnodCLTGFB1mshoHWxYw07WZSW9c
E92kNyzGamciwMaRamxoYGHiAAGNz1iMFdoaeePxhBYmjjqRjTQxUY5ZjxWufyYdnVObqr6SPKil
WcxKqJLVR0//c/eAbNLs4W4+FCZfmg8b3YsIVEwCpJKNW68Igfhn2YXUhGzEJDAz0swEWOkcazXA
PWzjYGnraAF9jEAIZj0BEsQGoMdmTBJFpkSWJZKlY7cmMZzEsjSxNBVLa2AbKYhgId9CyDM3E9pY
m7lamjLK2MrMWaduXxshzex5p8EKa4yLHbpWH40BD7RMIYLkxdqbjHTGDlVsjkSOjWMZPY2FpPAl
s3uXloWpbiqNEooZ12LrAN0qEBx4sqG5dQuzwt0v1S3xqTET2sJFjZtAIuMzZizis+5LOK01PI7Q
zMRWv9yEqcAK7m0TPvMvyvLf6fgGIKRLKz6BSqeSZdrUDcu3cTJ8J87tjTkZFb+GqYREgAiUMAFS
ycYFfP100MXDDwdP8MN2D1jCFpG75WjRMUNQiKRpKTmhsen31Wo5FhvLT4qJT+CaQqcW3N9KF7SA
foRjoS8hcOGFLbRUJrP3h1aTK0nOgoeYiZdIRAQFo2OxtxQ2C9Gq4MS1Nne1MnW1NnOxMHU04SNO
xRL/vkEQG1LSN1wLDQ1ljIzJVXn6VdsUyjx4uKFuNWrmS30ktFiWDvUMkQ33tl5k44T8L/ETvtQF
jcPBjHgZrv5f/AcnNOS+hRB7jdgDlKWpIzoDfC72IxEyfu7/LGlVQsWkZMsLgUqnkuPSH61fdKhl
w779xjQtL5VE+SQCRKAsEyCVbNzaWb/gBLzFQye1N26yZTM16LjU7GcJmY+TskJSskPhZHW0rqH3
kuZnGNINDlepIqeg7xxSUqmRyRS5+FDgTGz7ig2h//WlLqoBGpFjIrA2F9qaCmzgUmUCJ0yd9DIR
srgCRwbDaa37L1uiyIL7HBiZGGsldtUSwcONLxE8DSBwNus6BlboG+BPaGh4ps0FtvBJozrK5sND
uSoFApVOJV8NPHRidfzoqYNqNXEvBb50CyJABCo8AVLJRqzi1Pisjb+c6vNRy0Ztqhkx2bKWFLye
WeL4mLTA2PRAhVLC55k6WlWt6tzK2cYXyvWVHk04TQsu5/9ia1hZgU2vmN3tmP1iVczG0QWLrHfK
6ifMkeYDGUR0YFddxFvrOhUikTQFvmexPCNPmobpiYyLXRczonO3qzksDmYioi8Bzz1qh4mTFlhi
migc7ag4/AqwTDeE1vooa6+ZMfJT2VSy+p/dq2Mu23+9eLC59fOdJI2BkdIgAkSg8hIglWzEur92
Oijg+ONpiyvgMp1MzIM0JTbtXkLmkwxRNJyadpZe7nb1XG3ruNrUht4yIkZKyhACiJ9G7ciUjNdZ
KseHXF0Md7aUcUjn5DEBHlqoZERo4F90PxC9jf4JIjcQ4AGHtJnQmsNGZLcdh8PDv8zOMAJLU74V
49HnIM4TiwpStKch9VOq11YulZwti173614Pm2ajpnWi3YlK9UGjmxGBikuAVLKx6hbOu02/ncGK
wiM+72isNN97OgqVNC03HAEVsal3s/LiMYfMyszVy6Gxt2NTuCdLP/D3vQMpvxmAXxmuerUaiwfm
YTQA8xTxL77Byh4YEJCrJWJpGuI34J9Gj4g5U6NEuAvWa2HCY/AvhwtXNJfNRbgL1v1AaIepgIn8
NhfaQ2ojwMPFphYkdfnlUyFzXrIqWZWb+CQy3cGnpoe1iVqSHPQszaF6bTdz3n9Rnj17tlWrVlZW
ViVKOTjGf/P8mwOHDmrTy7dEb0SJEwEiUHkIlIJKVuYmJmWrgNTa1cu6wAIDGlnaP78vCIjU9v5s
9uA2bjghLz1u9/r1qkbDJ/apnx17b926A/WGf9m3obO+OkRxd//6c1OU1mva919X4SRtXbXBvP2n
ozu/Yk3Mhw8f4vyGDRuWZj2mJ+f89ePRYZPa12nmXZr3LYl7SeSZSVlPo1Nvp+aGIwoWS0Z42Df0
dGiEyApIpZK4I6VZRgggnAPrQCtUzKRDuKXlKjECN/AMQDojQhqRM9DNeDzUWnUepDb+lWdhhiK8
zj0af2tn4VVGSkHZ0BN4pUrmzps3D7/l5OTk5uZ6eb2lznLCA9av334h4Mq1oFifug2s8i24OvvC
kR17D584fTmlZUu3o0uX7rp6/sr13LadGyOQp9CBfHh4eAiFJdqL0ty9czs5hN35g+ZWdhSMT68A
ESACxiGQlpamUqnc3BiR+q5HZGSkq6urqelrR9u10pTDO1Z//dmwL2Yv+fPPP4/ejDCzdqxV04uv
Czx9dGLzNUmT0X2cAy4/tbfMCwrOEorj798PTuf6dGrmFXHj+s1HMULXBk1q8K8ePimzq6aRZrjU
acWLfJxk4u4kjb19J0RsVr1do1dM0khJSUH6Li4u71oiQ84PvPwsNSGry8DGhu/TC38epmdhxDxb
kiiWpaXmhKeLIjPFMbnSZLlSDF0CZx9EDDa/MO7wN24UnnzlXsSBm2Hb49LvwzUIt3Hz6iNa1hhV
xam5rbk7hQUb8oSUi2v1kRUIoUEMBoYOEM2M9UlsLTzsLDydbWq62tXxdGiIGPRqLm1qe3Sp7dGt
gVfvRj79a3t2w9xKWtywrFVxVlZWXl6ep6dnwYxhyRhmGZmYmJi4uDg/P7/XZlqetXfNT3+fDYkO
CZOx2Fxze29X+4HTlk/uV5eRyhpJai7HyUaxbNKf7p1dQlOc5n7Rd+uvc+0Hz+lbs3CTAF9ymzZt
LCwsSg6QipW9fuXf6oSaU3/th11G6SACRIAIGIVAifqSg08sW+Iv+fzj/gI220TIz428tuLvkx8u
/F+f2jbI/MXt859V/3Jio+Qlm093aN/Hkm1Sp45X5LW9+x47zprUCSec37E+zqbzmD6eoYFPrGs0
cWHHLF/0x2NRlSlfjW1W0+7xuX/OJ1b/enTr/3J48OAB3Ba1a9c2CqIiJrJx0UkHZ5uB49sUOh9O
OGYUm6WFHw6f4Z/TDWqrMN0Krjgp/HPY9kIjwQesCIb11LSYccXBxhbY54Kn0SrZbK5uJhZ2uMDu
01hmmYOhcCypC5WM3SvUaiW0rLmJHXa3MBfYcdlQN7YCrhnzJYbCWRzIHegerBSGwXGcgw+FsofF
hrPzEuIy7ydmPVKpsSc2x8m6elXn1o5W1U24dkUsO51GBIhAGSRgWMSFKGbn4XM1O4xq5vVc9Yac
33It02vUsM75Kjjl3qFd98x7+CYfTHT5YXj3vZvnsRrPGNaosBo+c+ZMo0aNSjTiIl0c+fdvh+tX
79Dn06a6XgAdRKBCEdDtR8Ut4QGZCkXMWIUpUZWs1mjCL27b+1jtV9vk3KWgPlPmtvUSqjUsLP2K
/Pv/M/9p1a8mt0pa+PvhUd98V1U3lBd98+DRZ15fftwMny/t2ZTi1H14Jw99YdVqNR6SJ7t/3Zda
c/6Xg0P9d/tn1Js0pN5/UQQFBSHowt29tNYCYmtludpbx+J9mlhVqWvLNk/TCjFHisXs96aWqjVY
jIDZHZoZttatTiBTiVgqvkbNxWYUULmYNYV/IYOxoYRGAU8eB6oXEhlrEWClYehduPSeL0HAZmH9
L8SVYm01pAklLZFlMjsq89VYpZfD1XL4KqxVwBWo4KzHarxcPsuEb83M0OJbQCVjDwuEkwI9tohj
drJQcxWaXIQd5+alycUClcjCwaKmu11d/AoXNWQ95HjBNd2M9chROpWTAIw8Dl9f3+KNXFVOaAaW
2jCVjJun3erddbCqfh/W/cMx7qP8zy4rOOiYEuy//dTNfpO+r5Fw4PtD6kWz+m6ev8D9o3m9qxVe
X+L48eMKhcLc3NzA8rz+cna6OCjkpEl9Py8bdy6zoQ8dRKBiEYAAcnBwaN68OY3ZlXLFlqhKZsli
vvh0ZECoVCzKMeWzbDpMP71uSr6bIfbqvqXbblSpZqIy7/DpB25JuRZuFtJ/1iy7mui46PdZVsmP
/lixNseh3fzZI/NCg6zrN8+7f+BkBIcdecem8bDetVlr16x5JK4yf+HMOm6Fbe/jx4/T09PRHpcS
TDbr7oVnT24kjJndLSXvScDTFc72VbBsGYaqdc5dG2yWga0fsIot1CeW+GUmvWk4LC2H8XjgA3ZZ
Y/7E8l0c3Z9wHTPrDTMuZOZb/Pt8+WGcj6W79EutwceMf+FaZrY2ZmuYndrYWmxewexGwfyLxQjU
+AbSXCqHnsZ6BynQKNiNGdodX2K5AyRswjfzdmrmYd+IozHTKgWIvcGZuruTM6aUnp3Kcxv9OL+N
jU1JiqXKg7NIJTVUJftv/WFjkJVLon+yW3v3lGf2A2d9N6DW8zurMxeOH3g23btV3WpDxowN2zTv
bIa0Ss0RM6d/YPWfgIeSj7jQ7tm38dklk69+HmphQwvuFOnhoJOIABEoCoGSVcnxV2bsfPBx26pL
Dj6aN85v2dyTE7f/2uiln0F29dDmR2m2Az4dYZVw+3G6tZe1+Kx/oJqjbdxrsG1c4LnHsWy+Wee+
PUWPAu1adHeRBO3af0nrUe/j/h0yHl06euMZVGCTHh829bYsVFI4kuF1rlfvFW7mojApxjkbFp50
dLUe+FnbgKd/iSRZfZrMKUYidAkRIAJEwIgEDFXJZzd8szfGzTTuYo53pyrh97Rdv1o4ruXz/GlV
2VnZkrw8iVLr5FHFUpsenSB2rFLF4lUxwSW9xoVYmbDm532ulg0++qbzv1dbNyJMSooIEIHKSKBk
VXLWo+E9OhwIzFFrtHw+177q2KshG6qV/GBYKa9xkRKftW7+8ZFTu1Wpb7YrYHrz6kNre3SvjA8T
lZkIEIGyROCVKvkdprY5WJqc+nvJ/guPL2xcuuFKKBaBfFk6Ns/GzsHN07t61SpWAhZb6OBT9dUS
uRSAJCXHZybCk+1KErkUaNMtiAARMBoBq+pzVx88fuLUuXPnjh8/uXfrdPeSl8hGy3yRE3pyO9rC
yrRKTZeo1DuIVfBxfsWEwiInRicSASJABEqQwDuo5CYf/pKQnJqUEId/k+PvTelWNvcU1UaHJ/BZ
dj51nUoQGyVNBIgAETA6Aa5Z3eadevbs0bVr1+7du7dr6Vvxdg1FKG9kcKJ3TVe+KSs07oqXQxPM
kDM6SEqQCBABImAUAu+gktMTwiKTs8RpkdevXbseGCzCRjNl79CwpFGhcbbWTq5etmUvd5QjIkAE
iMBrCeQ+PTXrx6XhkY8m9Kjh4VWl94wt8gpHKz0xJzEms1GbGiJFQkrOs5pu7StcEalARIAIVBwC
RVfJmZvmzrgQLPLfMLWtn1/79h/8fSm6DGLIEqUkR8hr1HPn8opetDJYDsoSESAClY5AQsjVxHgT
N0dLdvUOX4zqmXLlRjizB1+FOsIeJ5iaC6vWcgqKPWdj7upk84q9ACtUgakwRIAIlGcCRZeS8txk
kUbOqd5lwrl7gQs+qBOfnFEGCx4dFyZOEVar41oG80ZZIgJEgAi8gYBH43aZgdvm/n2+cYsuVhyx
VXUPT15FA/boZlStRt5svjwm9b6PUwseR1DRSkjlIQJEoAIRKLpKdh3+cZc/vuj+5U8bln/35fZY
7gddm5Y9DtrokFQrSysXbwq3KHuVQzkiAkTgjQQ4VrW+mD0kcOPi3xf8sOWR8PflX2sTo9PKZnBb
saoyKTojJ11cp1HVlLynEllWDdcOxUqGLiICRIAIlBKBIqtkcVw41+PzSZ94eri6eDVc8fdW98gD
248EyEopn0W6jUSdEhWc5e7laetYgttfFykrdBIRIAJE4B0JxN85uvHY487DPx710cd929S68fe8
IaOn3kuSvGMyZff0pw/jBUK+l69DcJS/q01tKzPnsptXyhkRIAJEgNmZqIgHzzQv8tb5m/eiQkNC
gu5/N6bPZz+uTFL9d8+QIiZXIqelpaZmJYl9fF1oDbgS4UuJEgEiUJIEfHt8/ss3HyXfO7Bly5aN
a1aejLX9dc3/etS0Lsl7ll7aapXm2eP4anU9WcKc2LQH1d3ald696U5EgAgQgWIRKLJKNnH4aNba
v+eN69K+HY4eAz/aeOjyzMGNylRMWUxkHEduV6MhBSUX61mgi4gAEXjPBLi+zXquPvw4JiYmNi7u
5NofmtVwec85Mt7tUxOzE6MymvrVCk++KuCZedo3NF7alBIRIAJEoEQIFFkl6+7uVK/Hj7/8huOX
bydWtymRDBmQqCo8ONrW1sHJvYK4XgxAQZcSASJABMoWgaA7MbYO1o5eJpHJtz3sGwlpmeSyVT+U
GyJABF5B4N1UMhKQi7LFEplMLpertWWKaLYkKTFMWa2uB19Q4aaFlynQlBkiQARKksCDo8s/HPH5
1fuP9hy6kFFRVoJDuEXIvdgadT2VvKSUrMha7p1LEiGlTQSIABEwDoF3U8mZwYc61qk67tdtp3bu
3nQqxDhZMFIqsbGRuamaKr4VZ4DSSGAoGSJABMoNAWXu011rjzyNuh2fGHd517nYf23epLl/bvva
ddtD0hTPyyNNPrxl3fp9/lIWSxp3e+O6dVuO38mfUa0VJx7ZsnbjvnO52AY6I2Tn+nUb9lzKfk+y
OzEmIzczr1Zjz7CkADsLTwcrn3JTJZRRIkAEKjGBd1LJqptH7jrVb+3MjQy8ci82VVSAmyYz/MaC
md+fCsphsbK3zv5m8tSpy/beKEVvsyb6aZqlpY1nNftKXJtUdCJABMo3ATaba25ppsyNnfnZlIdC
e3fhy+LE3Ty681iwOP3Bri2nU9MT46PjLvyz+2Z8TtSlo6cvXt2z57zCyj7kyKrTjxMTI8KzJKrY
mGdKM8fY80eP+z84dfx0Issu7dqmfZfC3gugZ48ThKYmztWEz+KvV3Nuw2Fz30s26KZEgAgQgXci
8E4qmdugZ1NW5OP1C3773+20D3rULXAnVcKzBLFMm5YshkpOlXt+9s3sz/q3YL9TXgw4Wa7OjgpN
dnVxt3O2NCAZupQIEAEi8D4J8CxrfDb780F9xg4fNWHpoolOBSx0eNgDn6EzZ34/3tI0KiQsLPje
3fsS+dCvZy0c3yQsMd3J0TE+PMyuepu6zuqwu3cSc1iurh7KrASNY916Hk6uDvZpsWGYWdK46qvX
kufxSjZQ7en9uCata6fJngCurxetbvE+nzG6NxEgAkUnwNZqGYcvplTHxcX5+fm9+UqVJP7iqSuO
9VsIJWqnKp4ONqYFzz+1dW2GW5+Pulms/3pOoERcy2/SlI9am/xHKZ87d659+/ZCYQEnSdHz+5oz
UzOjVs3d16t3/za9fQ1OjBIgAkSACLyaQHBwsFQqbdq0OHsqnT9/vkmTJnZ2dm+EK1/3Tc/7ThOX
Tu5wfJN/y8kjq5k8P/3i9vnPqk+b2Cjxl/Unhk2ZWZ2f9tfKNS1G/9Qo9p8lDxzaW4Su2h/g4NHo
829n17PXSV6N5MG1m4FXr/Hqdm9pF7pg/RETK68xsxa28yq8nPzjx/A/J1avXr2Eal2cpdz3183u
H9aXup5LT81s7TNFy1KX0L0oWSJQYQhAnjk6Olpb04IEpVSlERERqamprVu3Lni/d1PJz47M7T55
XbuRc1pbZEh9+nwzunnBtM7t2CTy7j3ITxcZrIz65cvFnRaub+1QuHjHjx/HV+bm5sYqN1ZHTs+O
vn9E2bS7h62rKasU4zyMVQRKhwi8EwGNRgOx1ahRIzatDf5O4Aw+ueRVsnjxl30vBEsz07Umtu03
nfvd94WT9+HhVfsivYa2kh48J5o0/UMLTd7BVWs0rQZ4x116nKGNlkrHTZgauWd2aNUJU/y8eRbm
qc/u5znVlZz5yz+Kk86RdBn2lc3NxYeUXX4e3bUQhiDd4enpaTCeVyTA5rDu+8fnpXEa9zMNk26u
6zCCr3RnsclMlwRsSrNCEYCdr1atmosLzbYqpWo1gkqOPPf7qss5Zqm3du2O/vR/B+YOq/8i75rw
G2eW/bVZVqXbD591Cbt/PTk66GGy05fzvq5qVrh4p0+fRsVbWhotNILN0R7at18c6Th8Wju+gMLd
Sul5otu8RwLwMWA05m1eyfeYwQp76xJVySlhDyMzMw9v+NO8Zb/E/cv2Pmx0K3VnjXwjmxu3euHs
+7nOY2YuqCu9eDHao61P7u/LNos8Wv8y86Pw8xs3n3vGc2rw/YwPnuw97tl/rFP80YVrz7Fdas78
6jPxwwOrd92WW3h+PmNqQ5fCHooHDx7gcapdu3YJVdvGhafdvF1q9UsJDDk5tM0fbFbJRneUUCko
WSJABCo2AcNUctrj3zYdV6U+2XYipE4tyxNHbk7bfnvpqPxl4TVPL5+6HpXGMbVu3bReyM2LqVKu
X//RdZz4/2V69uxZhHaYmf1HPhcXv1STumL2/lrVGw34rE1x06DriAARIAJvJ1CiKvnc8pkb43hm
AccOhsXyhSYe9cYe81/s9fZMGXrGw4cPkUTDhiWyzUdcZNqW384P+9wvRLnKyaJOG99PDc0uXU8E
iAARKAECr1TJRZ69x+GZmpp5NezWvUUdoXmV8V/O6FLHqUAmObU69Bn76aefDh/oW73GgI8mThj/
2Sslsv4SlcqYyxFFRURmpUk8axbMTwnwoySJABEgAiVJoNPnC7f+uuB/NwKTU1JTU5IfXPy1FCRy
SRaISTv0fpy1tRXfITVXnFbTtUNJ347SJwJEgAgYkUCRVbJ97S+/nPbxqKGrtm3f/c+GRQt/7Nm4
jGwErY19lm4msPOp5WxELpQUESACRKCUCfAEJqbK6P1bd8cnP53Qvu2sTVeN6U4o5cLobqfVaJ/c
jqnT3DNV+sDK1I2WSX4flUD3JAJEoPgEiqySdRbv9Mpfth4+O3doQ3evZvsfpBb/tsa7UqkRRwTH
Oju72DkZLdDZeLmjlIgAESAC70BAJs6KuBe0Ze3y2xpO0PZj4QrNO1xc9k6NeZaal6Nwq2Eam37X
161T2csg5YgIEAEi8CYC76SSWY6O9v5bVwTatJ8+ulf4vaiygDYrOzMlWlGzkXtZyAzlgQgQASJg
CAGhY8N6teUPYrx37lo37OM2VqxSW3TekFy/9lrsSm1rb6OyilAq1Z4OjUvkHpQoESACRKDECLyT
SmY36t3Hr3OfuTMXTfx6bO9utUosV++QcHRUhCJXWLU2LZXyDtDoVCJABMomATZX2P+LFSf3LKjv
XX/02AFugnKskhVyVWRwsrevXYrsnotVHQsT2hi1bD50lCsiQAReS+CdVDKLa+f72RdTWtZy8qhS
p4FnWVjpWhv+ONHe2drRvSxkhp4zIkAEiIBBBDSypKsXrstZLHns/SP7ruQalNh7vjglPisrRepS
R5OaFU7hFu+5Muj2RIAIFIvAu6nkK5sW/rTyZFzcrS97DN9wPrxYdzTmRWJFSlxork91T3OLF/tT
GTN5SosIEAEiUKoEOCbSAwu+7tWnf/cBo35ZfSKrVG9u5JsF343BdBG5WYSQZ+1qV8fIqVNyRIAI
EIGSJ/BuKtnJ3fvK+k9q1Gh7m2XnZme0BY+LXczk+NScDFkVX1rdotgI6UIi8C8C2eEBy5cu2XTi
DvZGC3948VlGkVZZyI64snrVrohsRbFo5j6+EhIUFPAgotCE4Ny7Nx+kS4y1SZvi8cW7yVImNVV2
zPVbYfotkuVZ8ffvPpKyWGp5atCDWK1WemHn0iW/rwtOUxarLAZdlB565Y+fd5pUd/A/eTQgXNV1
iJ+VQem9z4vVKnXo/QTPWtbJkjtVHdtyOa9YO/995o/uTQSIABEoAoEiq2R17OxBfgNmLHsSkSGX
q8PDQ9NyMSr4fg9tTGQyX2tbra7b+80H3Z0IVBAC8phl6w4ovZvZ5ybGi8Vsueim/6lLV66Gx2Wj
gIlPAy9e9A9LlbworOTepfPnrgSmZSb+b8kPx4IzBQJO8oOTC2b/dPJptFgkjXgQEHAzJC058pL/
1TQFS6tSZsVHXbl47u5LNSx/ePPCieMHD/3PP4fNUigl6Wnx92/fS5UwClYSdtX/7mM1V5WaEvPw
7v2EbGnSs/v+l24mp6fcuuQflibOZy7LScrIEbFUkpjkbK1WmZ6YAGkvSws/f+7cg8hkJUsd8eRB
UMT9Czv9E7PSw0KiIJUfXdoXLGISyIsPPn/mGnbs5PIzr529n5wRlcl2t88N3bLmZOkbuKyowE3r
Nuy5EtGwceMm1Uwun7zzspDl7QmLDU+TiTWmbmkKldjbsXl5yz7llwgQASLAEODOmzcP/5OTk5Ob
m+vl9YY17NWibIlDlVrtuvbq+0H/Dk3r1G3YyNux8E6nRYGK3U08PDywIWpRTn7DOVqW8syRS+Z8
x/Z9GhiYFF1OBCoqAY0GS9aytEX4j81is1mauEfXgtLkvQd9WNXONMR/++5rcSGntt3h12vOS1iz
fMvj6NDLAUG+rdvamyiub12/60JwctyDB9fCQqLDndsMGdKmetLdY+t3+ts1biG5uGPXmYdPAo4d
vx4UFXQjJNWphl3Ioukb07iiS4euODdo6W4rfHp008pd15PjQuOlrnV8ZWExKZe3bn+QKajVsJ69
KffJ2UvpvFodmmoXTlsUx7Pmpt//Z8OJyMjAvXvPJ6Y/vXAxrWW3Zha6br4k7OTvZ2PraOLnrNlT
rZnPhW2XXGuZ7f11w+PMjKfXbgTevHn45H3naj7axOTYZ0/uRMqad2ohibwdKvJoXNWGJUs+sGXD
hUch/qfOxrG8B/Tu2KB+A3fTnPvh6nYd6/53J+W0tDRsiuTmVpyeeWRkpKurq6mp6eseNvvqrT7/
5utpX0ydNHHixEmTx47qVDrzLVJSUpAlFxdjzoG+4x+WnSGxbxbO45o2rNK/or5fVC4iQAQqDIGs
rKy8vDxPT8+CJSqySmab1mrWtmPrus06dG1bzcXMrXqLOh7FQ2MslZwtSr2w90nTNg19aIGL4tUE
XVXRCZy8E//dlnsHr8UceNt/uy9HX36c0rJutTad2nhpk7atXinybm8tiXRo3LWRh/eAUb0iDq/Z
EyTzreosFWXUaNvTg/N08dGwb5f+2L9z1QfXLtrWqjto6BgvC5a1nbVabjPlow8i7j+oN/iHQQ1S
wyy7/DKm9b0zEY5Vuamp1X6YO8k7+9g1We2W1TnrDl7q/fUvE4b6hvkn2vgoMkVsVZ7tmNmfVTWH
b1d17/ZtqWPTxtXyAq5Lp303TpgconAfMmN81ZvRgnkLpyUfvOHQo40zn1kCQuhoF3rscqyUZW+q
TEhKkDg38BYHnmS3X/rVyDrqiyv33vUbOe/jng0uLZ+3I8l+ye9THLjsuJDgRKlNi3qu8vToh89y
Og4eWNfTPDPVxK99Ha40cueB613Hfeph8V+RzCpRlYyyaLIfbVixh2Ml+qhp2zPi6r071CqFSAWj
q2SlQnVh3yPHqmyp3fX6nv3sLb0r+qtG5SMCRKDcE3ilSi5yxAVTfO3x5Ut37jny1cd+LZr12HYt
7v0iiQgPk+exvGs6vt9s0N2JQJklUM3Vcky36kX5b3zPGgNae5nmRV68cJ1fza95HXNxTpZQkbBi
wW+hXDdTkYRj7enXovOHoz76fs78Fs5sFte2hjbb/9zDwBPX8njVTTQpKZkI7mWplYrUhGd3UzJU
XGuBViKWK02sTCS5IrWaLTDRxkfdu//04eXHPE93WxZL4KJSPb517/6Fq5E5Io1aKVco1ByOShc6
zGJxzNgcbV4e1gtmvkRohMZEyGWrRbl8G0ulTCzHuflrCXNcGzg82fkgrlq9utc2na7f0tfewYUX
eudJWGjAfZVTlaocjQwDZuYubbu0VezYdUquhn9dweYx+lMpk5vYerVt2bKdX2N7nkCa8einadOT
HerassQqY0VEv8vzwRGYqnIz924/4NB/oNWTxzHycrmrSGJ0Rmaq2LpqJpvN9qJlkt/lAaBziQAR
KFMEiuxLZnLN5opidmzdIWs89PN+rXKVji3rF2eTaiP5krXXL96X5/I692/CF5aCt6VM1RplhggU
iYCDlYmvh3UNd6sabm/7z92qupulwMw87ubZfw6dTrH3+2JgG3VWwpPoTFV2fIrWcWD/bun3jx48
fzUoQtmgbR0znlV9F+3OHXseJvI+nDLFx0Rk5d7AxZLLNbfOirl9JZnTvEYVB1dXSxMly9y9qoOZ
kmNhZ668fTLgQUKYef3+H3ery2ULarkLzx3c+Uhk261zm2o+tpZWLs52jlWqe5nz4CFmC3PCbsRm
Nm5URyXjVK9VhauUCywcXB0FEo1lzSouKgnLu2E1fcQFTjY3ZefJ7Xt0aigzNWnTurWzaxVB8rXd
Jy6Z1uk7rFczKyv7Km7meRJ+96GdFUFR1lU8w+9ddGrdt4Y9X6tWKtkmnjV8OAqZkm1lJ0w9FhDO
kmY9TVU0blzb5D9uhBL1Jcfev3otWvRw74IlO+L79KodkynoPbiT7cs8qO+e2nrgzANz7zpOej+3
JHHf1i3+T8UN6ldNuHl6x+FT92NltWpXebnIcm7UsdO3rb2qW/AV1/duPXzxvqVPbUfzwj5yo/uS
rxwPUipVnOrXPRwb+Di1LtLDSicRASJABN4rgVf6ktlaRCyyWDExMXFxcX5+fq/NYcq9H1but1Qn
fv/bVgvHatY89id/HvplWL0X56vTQ2+sXHe05bhZfepZB2xa+vf1kCotx84d3xFDp4WOs2fPtmrV
ysrKoNnbEkX62kX73Z1qjZja8b1SpZsTASJQJAJx18/4Pzb/ZOLrjUyhZCRP12y903vUx1VeZSpU
WY+W/LA2Tufurdlq5Fej2xV9+w1latC2wyGDJwyxKVLG/3VScHCwVCpt2rTpu1/KOn/+fJMmTezs
7F537cXVP25LFJjfPHsuNlEiUXg0GLf/1Pz8yLaY6wf/2vvA3UWeyWn9+afNZGJ12NmDl7I07ISE
RiNHKa9ezHSsUaeub6vmPmlh0eaetezN1IE7F84/lTjzj7WuwZv3X5c3b1m/dvPWblaF3QoPHz6E
07dBA+NM8FDIlf9bcN7MI9O0aUD7Gl+62tYtBiu6hAgQASJQygTgw01NTW3d+l8d+yKr5OzIvRfu
25ibPH30JEcqUWutuo8c3aamw4syKJ6cOb795N16g78aVv3RTytDP5nid2zFntbT57dzK2yRz507
1759ewNn78XFR6xfeGzoJ/0btvUpZY50OyJABIpHAF1yzBB8hwNTD9lszqsu0aoVotw8/WpuPIGZ
pfk7zAbWalRqFo/3TuFmLzJdoir5zWT8/5kX4vPVlNYpS9eebtG0kTIl60FMaKfPZjV8tmNZON8t
LOyxjN+824Ah7Rwv7D7t2nmkp/zBoYsPuY7WTVt0vbPyyzNZXs196w8aM8CTCfv+1wGVjCmJxlLJ
0U9TDqy7XbVXNM85sW/Dn1GB71DjdCoRIAIvCMCJyYOh4tAbVErPhGEqmaVKCg9NEqlMTQWI6eNw
BE4eXnYWgoJ5P7VlbU61IX2sTi974vTTqB57//6J1XTmsEYWhcp36tQpZ2dnS0vL4pebrQ0PDb26
N3ng5BbW9u9/2ebiF4SuJALFIqDRaMzNzbFWTLGupouKT6BEVfKz038OGP+nytJcI5eq2TyfBqO3
HfzB/UVmL26f/6z6tImNEn9Zd2LY1JnVeemrVq5u9elPDaO2/frI/uuudYKiws7uONF6ysLudbE2
hmjjD1/EWjQzUUa7NuidHu5v7tvb9tG2Z9U//Gl4+0LlR6Fu375tlDUuIIkj74qzUiSOPS/a8upZ
qBqw2OUytLr4jwhdSQSMQQASGUe9evXeuPiYMe5EabwgYJhKVkdMaNtp4604vomFpZlAIhLO2nlu
3pB/DaWd37FJWntkD7ODC6/YLRzfc+eK2cKuPwyuW3i1uBMnTpiYmFhYFFbPRa8pNlcbcPIWX+Ha
+oMq+ogROohApSIAlWxjY1OrVi0MlFeqgr/3wpaoSk4Pu7Z9x/Zd+y7U/eBDT2nY4ccuB88tr/bC
8/voyF97wlwHtpQduySb9PVQM7XkyJq1iqZ9PCLPhFh1Ht+vjkqV+fe8nz1G/9rLh8e3NL13fMft
qNS7t25X7zfRK/6JafthnpHrbwj6fzusVSGM8CXDkDZs2NBwvCqles2cU5Y+acIGN/o1WmhpSls+
GQ6VUqjUBMjIl1r1G6aSWaqstPRTK77Y/NSue8vqN85eqD/pj/mD81WyJuzqyT9Wb5FX6bbgq87b
5/6hruUsjneYtHCqj1nhVhwRFx07duTziz/lTqHJXvL13lbtm3cd3LjU8NGNiAARIAIlqpJ1eDMX
9uv21/10E7XIpf33x3bPdHphQTWihHU/z76X4zx25oJaeRf8oz3aVhMtW7ZFXKXd/Il9z+1Ycj08
q0rLT6Z+2Pjitp3uPcY2dGf0dfCjG6Y1W3vEXvrxz13pDvXnz5jkYVV49h5UMs40ikqOfpq8e9V1
2/bXfBu6d6z1DT0wRIAIEIHyQsBAlcwUM+vxkRHDv7ibkmddre2m3ds7Vs2fVgOVfPZWdAabL+zQ
d4gw+syJ20kNugxpigVU/3MYPnvvwcNbe1feHP3lQN+Gb9gGpbzUC+WTCBCBckOg5FUyKzf+yamA
R2o2p3673vU9DJrlXESsRlTJJ/4JfPzwkVvvW371Pq7q1LaIGaDTiAARIALvncArVfK7RYXb1u9/
6kEYVsMIvn6ogERG0Tg1/Xp+/NGoj4YP8TRnOdXtMWbMp6+UyMagoIkNzbK2cvCs5mSM1CgNIkAE
iEAZImDlUW/4yJEjPxxROhLZiCWXS5UJ4VkC5xQzK76XfTMjpkxJEQEiQATeC4F3U8mMHBaYmJmZ
mfD+u8JbKeVfphBFPI1x83Q0szAppVvSbYgAESACROBtBLCZSFJ8ipl3krd9Cx73HVYdeVvC9DsR
IAJGI6BRStISs/STarWy7MiocMXztJUZCemy/8y2VUpy05Jz3joDTJIRG5nA7HVfhEOTk5mSq2DJ
wwO2HjmdlJaVLZIX4ap/nZKXk5ohfvtV0pyMzJw8XCmTiMQieULo9UtXbma+KHBRbvrOKrkoiZbo
OdlZoow4pW/jf220XaJ3pMSJQOUhkPL41Pw5c1buvazWakPvng7N0C+2ZoRDlRx+IyAiTxQVcP16
wUSV2ZHn/R8qjXCH50kkP7h7604s/siKfnT1bvSLhJWPL18MT4dVVQbffZiYnn37+D87Tt833m0p
JVZIYALPWiywy6niUHiCINEhAkSgjBCQpj7etmhPVG6WSK5iayRRkaHP7t+64H9HLM849Ou2wJiU
bBGzkao0Nxu7bEiVmvSggG1/XVCxNFIZdkFlqRV5+F6hU80azXNbrtVoJJmxEYmpapVcIpVL0qMu
njwbmycroK21sjwRLhRJIFHVp/etCYgRPX0YojE1f7R7//nrsVoVNl9l0pTkZGXliHWsNBKxmGka
NPLs7Bz9neR5OVnZOVDyj89s2H4tSo9U96XoBV51bnY2NljV/xlyctfRgKf4kPIs8Mg/B05dPH9y
86o/1/m/XV+/SO6d9t4zThUbuPfewweB4fdye41oRb5k49QHpUIE8gnIoxYt+cepw/AG/DyBuzMr
9dmFq4FxsTEyjq2rvXlk4KXLtx9ITV1cbUyUObFrvv/uZLSqqo9HXtTDS1dvq/imYbf8Y9Vm9kJB
QsidcwE3ldZeLlY6h6I47vCxMxcvBkQ85bbq5BEdE5eZmRMZkWTv4YZd4iIvbb+W49zc1ybs8YNn
sckcvmlU4NlbwTkmnEx//1smHtVshS8680pJfHyEmbVDfEyUXGitTY+TcHmJj6+fu3JbbevjbMmO
DHsSFBwRdvNuXLaZg3leVETEneDHPo2b6rbok5/9e7O2fjcfG97ts+fjYpIe3/C/n2nfp33td1ol
pET33ntfT6JR9t5TylVndjzSuD2o0ci5vscHtEzy+6pNui8ReDMBrSL59Nb9F8OuHD5839u7elZu
+IV/Nq3dccKyQUvew4Cjt8+fPnJWZuYUdWrbrtMXbganWluZy1KynwZdfSC2q2Em3r58xRF//8BI
WZP6Vc/u+T3NtSXr9sGzEbyGnvLN/2w/uvdyNt9CE3ni69kr0tx9edduRWqcvG0Sd644GZUUuGf/
sbP+Dxyq1pKlPNKYeaQ8e1Cz1xDBk0c50qxTxwJMajfiPz3/56otFy5dS5dkn9mz+9rTGFl24pYl
yw6dOxEsc6nGS/t7+eozl87EyZ1t2fGp/Fotqtun3zu54KflJ88ezxI09LaOXfr1/EMXTl8Iymne
vL4Zj50eeu3E5Uei3NQbV25rXBqPHvdJjwaWJw4Gt+7X0vQ/mF659175U8kXj94U8s3bdq/H5b63
qA96CYlAuSCgVavVUqlGodAo3/afQgFnAIcvyIm4dT04umX3wb4uVkHntxwPksRf3vvAvGEjRdjK
FbsjU2P8z9+p0aaTvTb92JbtKXa16jum/P3b7lxW1p6Nu3KEqsBLT+LCbhw7+YRvmeN/7LGvXxtb
Qc7hZSsuJijSwx7I3Vv2aW+y9pc5/xyOq9Kges0aVUzY8ks7r7i27eqWd232nL1u9avHnN958lZK
QuDxw9fD89JC7gbx/PxqPF+UQZ21/Z9NYmGN6+vnhHnUlty5fuPGrWsBwWq+5ObZJ06erA2L1qp8
fJy08qgHwfdjM2u1aZIWGqR1qF/FHiu7s4PO/7PlmP/Ny6fO3k/vP/nzbg1NgsPVfm1832lAjVTy
6578iCfJ928+taof1rhuJydL33LxglAmiUB5J6DRqgMj992POhyZciM8+dqb/wtNvKTlaO20XP+A
zGmrlnZg3T917V4qx7pxvZa+dduM+aDF5UMB7b9d8kUb/unT193r1I6IiQ19/MzE3uzmlj3y9qO+
GdTozo7la89HOTmZPrp2tWavwbaJoY+eZKSLwk1qd6utvrX0r0PurSfMGNPR2dZSrbCdPHlk5NHT
Yrc6dT3zLu2PadKnRlBgaEZMcAbbw9NelJQpz8k079OpcUzAniXrbvb5cWaX6poVM+aH8CzNFCmB
t66mslvMXTBRc+3wI2Xb5b+Pebr74Mmzpx5msmxMlY8eRti6OXDtazfxVizbcLTD5F+mjajnv3eT
TGDz7An757Xzs0+fF7vVruZslvb05pVHyRZWwpSEJPva3VrWsj21Z59jlwHNvF+xB+orVfI7NRDv
/3ESSVMTIkRVfb34gn9taPL+c0Y5IAJlj0DCieMBwwZfHTn86qgP3/zfleGDb0+ZKMtUD/5i4bwP
Wx//Y+ree+kmdp6du3foNWTi3E/ahN4++1Rh5uHh7eEiVKg5AvsaXXr2+GzsyJqOFlXafTL7x8kN
2jSd9N3Cnk4mSVGy1gMmf/XF3Lauj4LSWaycpycUHsvnz1j8xQhHqHa1Gords3HvT/p2tGbMT1Yi
28TG2lIlU/k07zukWycrS/dBE+fNmNTBt+uHi76daJuYLMsHK3Bq6uh969x5O29f9rPbwRkpoRki
zxEzv/hiZgfP4Nshyc4120/o37u6de7e3ScdBgxuXLMaS8KSiCW6BFRcU9e+I8ZOmvRZ94ZVOQoW
l8fh8gTU1TbWYxv+KEXGjbN1Z3nbUbiFsaBSOkTgLQSgkjFZS6NVFeU/tUaJk7VajVqlgetBLmNx
zYUcNnYjVanUTDyyCsadw9Gq+BkxN3afy530+cRWNW1yxWw3H2+R+nGiWKURmDTtNGDK51+u3by2
qQO/XjPf4Bsb/EOs2tY2VUoUGhNLB2dHjM4hEkOlVCHowdRCq+WyxEmpCRmBf/99o/PHk/q181Wp
VSy28umtO1YNm2K0Ualy8KptFp7wVMpS8xy8eg8a8+XsRct+nubtaIbtNpRq+2renlyuUJiTJxba
dO036vNpPy7/48cq3CwxE/ahRb65XB5LplTxBRyOmZdrVXOuQChRK+RM9LFMym07aPQXX3wxeUxf
W3Hi5SPLQ8zrDWxfregPVjlTybERSRKx1KtW/s7YRS8pnUkEKh0B20aN6s/+sR7++272W/778aca
EyfzlEknDx2M1rr6+tpzFHk8SeRvP/7yME+YG59u5lyjTYPmPXv1GTf+i0bOjBlUiFMuX70ak63m
YwvpvAwVn69USyRSNU8gvn356HX/Qw9SalRzgZm088yI3xtw8+CpK0kaFQyyWJInU+bHIZvbKJUy
iUzNZslVzJdyjYClFOfmyTgCjjgrW6HUFIyIaNDE8dGN7Sl1emacOJNn5t23TZWw43tu3z5zN867
ZlULiVyJaLOcHOv+H/eMPb/uYXgCx4TDe740u0YhZ7tXr+vrW8/N1kyUGHnnemDQk8BnyTmV7rEo
gQLLJMqIkEQzj3Rvl3pmglc4aUrgnpQkESACLB5H4Ff7s37N5vVu8sNb//ug+fyGXn3Zlrb29pm/
fjlhaYCqe89BLhYmVX2rRT04sv5SUNWGjkd+/mz8kiPtxvzRv17c2pV/BcstqltbNx829sMq2pOH
7zXvPcQp/eqqlSs3bLksZrME3k09LSzsqtS3h8IWWHt5ethYMCN/fAdvofLxws2XW/RtErD9xym/
HnFo0qZbR8djm9bsC5P4ujjbcDNDk3jN6vvgZIGd59hpk9zDrt56yvvow7b3965b+eeqkzdSnL3t
oIJNbKwsmDTVAtdao0Z2Tb+yc+XKPw+cCjZ1c3NAzATbeULH6lt/+mz8Vxu9O01q6skXWmNdB62l
q4OlKbMph6m1rQmHCadWcszYqdeXrN137+rFOX9sTXnpfXnLU8TW710XExOD9d38/PxK4aEzYL1k
zanD/vfOJ32zZKipGU2gLoW6oltUNgLqOwc3H7gbaVrT78dPeyfd3rdszx0zU2GVVv0/693g5N8r
rkZlWTq3nDitP3RQ+qOTf56L7tOzs6XCol5dnv/tiMZtWiRcunnnys3AqHALF+tWg77u38IVBJPv
Hlt+4LprtWbtWjRvXEd4/OAxubXf0B619HDv/PPbDetu41pZ3AhRd+1Q++nde2aedS3y7j2WebV0
Uty6mdm0ez2eRjcVg80x4ece2rTHq/tY9dODud59u/pqd/218nGitO3gr/s01Jzzj+/YrVlK4J0s
c3czcWh0VFZQVlKfUZ9XYzYAVT686G9av0NNR+7TByFycfK5ExfTtdqmfccN9atR9GouhfWSi54Z
Y51p+HrJkUHJm38/6dTz2oDukzxtmxsrY5QOESACJUJAq8nNymSZ21gJeRq1hsPlyCS5CrbQylQo
zc2QsEzsrcxZqry0LKm5tZ0Zn6VhceAMUUoVfFOBWi7KzJVxeKY2thbMWJyG+ZHJJFzUGi0mJDCn
MpP8JDkytp2VaV5OhoxjZm8JSavKSM/imlnbmAoy75/eHywfOaq/BZulVWvYXA7SUahYAgEnLztd
omQJTbFBswnSRSigFqYfv6tZHC5bJsoSyVTYBNrK0oSNH3S7z4pxC7XQwc5CdzZOhjdGg4vwIxzn
zOW6T/Bvy5UqhTRPzWUGMLn/mZJihF1FjFJbxVbJKrVszeLtVkLXT2f0MUpOKBEiQASMTuDh/gOp
rm26tWX0cVEOcezVbf6yz0Z3fU0QlfLoH4tOPmMWGOKY1P5q0bSaRd7bPjUo4FKEYMgHrYw4ZEYq
+ZV1enxL4M17p5uMyPug1Rwe57+zYoryINA5RIAIVBYCslyRXMOxtmEcGGXnMMKuIu+3MNnZ2WnR
yjpNq77fbNDdiQAReAOBhkMGF10iIx0LL78pr5XI+J3XZ9qPK3XHn0s/r/EuRtWxbvthRpXIVO+v
JCCTKiJDUoQuqVW9GpBEpoeECBCBtxIwsbIsaxL5dXk2opPlrVgMPSE0JAxx2h7VKCjZUJJ0PREo
PwTYXB4m6+oOPk83vFbU413OLWqadN5/CcSFZaRnJDhUU/k4tiY+RIAIEIGKRKA8qeSox5ku7o4O
LlYVqQKoLESACBCBIhIQp8eEhsUwK/4/PzSJkWHhCRnMX5L0p09DkwtsRqVViGMjwoKfRuRiSqNK
HP70aVymfq1+Ix/hT5JlnPhqvt5WQtrsychsKTkiQATeL4GSUMl51/dvXfHnn3v9g4xYtty8tPiI
NI+qLgIBzdszIldKiggQgfJBQBR7//cf5/yyYPaaf+7qtqHSRpzaPX/RolkzF90Ii7ntv/+vFb9/
N3tDgoSZ0I0j/OaRX39YvnvPyagcaejtU1v/t/H7GUsfpujXxTPaIZcqQx/EWVfL9nFrymaVRINi
tKxSQkSACBCBdyVgfKOmUScE+Ed41GlU1c3mdbnRT0t8pyMlPluULavRECtL0UEEiAARqHQEHl05
adlr/tbVXytTbt4IOH1k58Fjj2NH/bpl7fhaFy7f9247+q+1yxuI45/Expze/L+gNDU2k/Gs3Xb4
mOENnUwsXGr1HdqzURUX+QsNXRAfVjpCPEvxgMaFZ6amxVepb1nDqW3xUqCriAARIAJlloDxV4LT
aqJ+m/C70rdauz6jO9bBInqFjzNnzjRt2tTK6p0CJ7SXzly/cTz2q98Glc014JilTwpsWM5is7j/
6QmwmS7Jv7sHzF//7TAU5Zt/3e21vZHXPncF86o/CStzv3PXpbiPNe6OexWnmMwa4sW9a/m6Dhrn
DRmGrMFyO/znKwGXr5KV79y+xzUuLu5Y8Kza1IkNkhZvPt3vw6nVePEb/9nVcuSPDWK3/nLfccGn
vbOfnt5wIn30pOE2HCVXaJYXe+t/m0+GJKb1/vTbQTUylqzZk670GD72k6bVbArVQVBQ0OPHj93d
3d+1bjhcVmiAJCbtTo2u8iqWvbDU0rumQOcTASLwOgIajaZmzZqurkVdL6g4JDVquVIpFGKNYRz6
prmYh0bFrG4vFDCrFBfxUGeEBUTktWre2LT4ty3irV6ehgXr2LBcrzpKbSU4TWp4SHjUvRNHw0b+
vLDuf8TwsWPHFAqFufk7TFbHXjAPAqL4HIs6bZ106zu/w4Gl83gmJmw+X3fhO15ctPtgixmJXFVQ
FeNeIqmyYFbxax52TVC93CIB3yhUmjwZLnz5gEBrmygRdvgvxS1Qy3gabGPz/DR84GtUApUMKxO+
IYNYSlDJ5eO/gufgWjnPBOsJ5t/ixWnF9CQVjVDhs1AcgUquLVBuLG9oosIy3y8LjqziGy4K/rKY
bK5GKWQuLMVXqnglNOAqLB7JsrazrVblDYXEDnaOjo7NmzcvxrDMm7Omzoo4E/DI1KdJpwbeSZEP
1Xa1PWyM82yoxJmp2VwHB0VEbGb1mr75z2V2YpzC3MHJ2jQ7PZVl4mihjj578aFZjcYd63kbQLGk
Ln2PKvnajl9uWY36pn3aT8svfTZnhic3e83Py+p+Nr/2k7UbEut83tl+595j7UbNbuD0r7InnVy2
6p75tOnjnE15V5ZNvuE1/tshTQrRgUROTU2tUeMd1o3WpyARyQ+tC+R43xs4sq+JqkpJQad0iUCl
JABviL29PdYNNm7pJSkP9/wd+eHsgYw0zo06dSOoScv2PC3P3la5Z+HhZjNGV/v3Wo5pDy8ev6Qe
M63bm7ORGnLxodi5W/O6zGlaZWZqjp3z69ZaUJzau9Gs9WfeT7YfzXWor1LJvJr3auf1TsW8f3p9
sGX3UW2ZfUnecISc2hXMrz24a6Ooh9fCEoVWeVc2XlHN+22Gl8krGthSUslahTRTlKdMvrd89Ylh
P69oals4/8VYLzkzK3XFrMO9hrdt1UVXAe9ywEcaeeGy9OYVrCv9Lte9w7lypTpXoszXK7iNWqvN
wmqA+cIWHTQ2K0eCFa2xxdjzA+fLFOociYJZ71p3QCFysGeMVl4wo1ga24Kl4CPJlyqZJWSpzVjY
qOyNKpnFkrK4MhazEY7+wNlILY/FR08Kgwj5X8rYPCmLV1J0/gMSNxZo9fl/fjCLfrM0liwF8pAv
k/EBBRewXlLMv7BE+jrvUOEle6pGLufUbdJ+2RKufqn20jyUyasW/x5jUtNTIBw8bnDek/PRrOr1
fZysLW3NzfjS3LS0bJmNi6cVakWZd+3IEVmV5m0a1jDViJPTc+1dXCTpyWxrBxsTgUqSnZgutvfw
MH9eAnVSQmLkLf87jx3Gzah9KzCmUZNmLKnCxsEOj93ZFYvEbccPauZ858QhkWltW5PHZy5Ai+ZN
WvxjG+93GnEqDVLvUSWLwm/Om7s4w8S+85BZvbwjr8e6eikerNhzQWXlM/vbyedXfLL7mWP7JnX6
fDJc++C2S8fh6kdb/j4dkpml+GTqZE7Y6e13Esy5juM+n1zPqzBV7CrC4/Hq1n1n6xoVnL7+t11N
RuYN6zEd+22VRgXQPYgAETCMgDTl7pJJW6TNhCpu/emje0dG3Li1f+/hB6LJS+apNu9/4qRUyGxG
jBuZfnbvgxylk69fKxfZDX9x3ZbceEH9oX7uF7Zvup2QXaXVgJGda928sNfB70PH8OuPZK4tvET/
nL2tSM6zr9eiuuLaN4sOtZ/981BTLqtq/fqe0iung/KUsffCkrjmVT4eO+DmniWCZmNZ9/Za9BjH
O7Q/y7OmPDO5Wp/BjbkRG9fvT+dYde7XNSv4VnQ2u0HzJnGXjt6Jy2g6eNqIpmZ7122KFCta9Z9k
Ebbxmungb3rX0qYHr/zjf7Fybv9J81u7Zx3dsu9uVKx9075fjOgsZLPu7Vx2Ot3towFtQm5ejMt1
beCdset85uTvJtW0fSmN8nGWkkpWJN5bunJzUrak7Ydzh3fw/m87D5XcunVrS0vLolf0rWs3j225
O+G7gV7V3m1MMDs5LWTjxtSAS461fM0szQ0YTHhTZqF3C8ZX6ActuBDlBUUfFDDkcKGAi+cXFlB9
HI7AyYXD4+n3RGQOjYZv78BBbxJ7yegObCrDNTPHl28GiJupcnOUOdkF7srWqtWq9FQN9gd+kRX4
2pnTsrJKrhdRKJ/YCodrrst/fhm1WjaXy3dyxqJf+ToZxcQ5PHNsA/8SBQcFt3tFGE/Rn6VycSYq
hW9t/R6yqkxaMndRXp1+04f1NBdqHhxc+vvxaE76M4cPflrYy+2fVRuiVAqhS9NpU0ZaZj/4YuCn
cY1G/jSpzbWNuyJVCq0G40MimXXTbvWsAwPuZbFzzFx6fz9ziK1A+WD7ysXnw5VZqbVbT1k0q/of
i34JfGrapEObT8cNc+CyLv713d4Yi6Y1nUMfRfoNHd+9VRUzAeefb2fz+00d0c7tPUB44y3fo0pG
vrKTniWLhDVqemlFqekSExdns7iwcIW1WzVnq8zUpByRSCLXunh5sHKyhA7u2tzY2FSxmb2bj4ut
KjftWVyqpXtVD5tXbPlR7L33jm7GPt/HR0xv3MhnQFmrKcoPEagMBNA8Rj1Nzk4TYf+8N5eXiVfU
aFy9HR3NQr4dt63rws8VF/Ylau3zrLnOKk5UinrcF8MOTf+RO2hsU/nti89M2tY3O3juZmyKtlu3
ppH7Aky79f3k017iM5sWbbvp4Wsb+jRtwT/bso7/mejcyy37bIrn6JGuF7uP+d2r6aQFsweaZQT+
8df5QXNmJvz1t6zjh0NaZvwx81b3L2vs2XgsNjaxyYCptc3vZQjrS4LChn47OXjFgg2nktt+9vGI
fvX3f/P1RZnQVp2eLhJrzFvMWPCp6vL2vwP4n3/e+NzxIKE0/kZUtqu9JEXi2aurh9y19/jOTpsX
L1NU7draPf7E2YQOPatv/e3C6J9GBey84Ddhsl8N6+DDf/y4/rp7dbeMhAy/Mb9O6We6ZN6+D76c
WMvu/anktz6X7+5L1u7ZeDo5Wjxl3oCiB2IiPi7i9IXwjeugsWpMnFy1R5dXIHlrXukEIlCeCUSl
3HoQfZgZyXhbjIpao7I0dWxXb6pJdtTe/ftuhcoGTpvDvr06xrmLxRN/u0Hj+Mf/mHsgpnEDx4iw
hCkrdnT24pxetZjfa0pzzvW1O6XffFNv9qzVoxcvCFm6+l5qhlvzEV+MabZ5zjjXcX/3dHj41a/n
Zi6YoTq7act9jznfenw1emKi9aQ9a0bpQ8Murp59MN6meS3npw/CWgycPLC9R9qjI9suyz4eP8TJ
5NXRY++xTt6vSi6hghdPJStkqpWzjnGr3R8/eZIFv8z1Z0qIFSVLBMoUAaVc9c/y8zFhqXzBW6wl
VDJObt6lXs/uysU/3J29cWrelfXrr8dx3GrVsbDIlNuNGtHmr89+7rjup3riwHk/zEszGdCvp/vl
o2dsa9cK33LYZMbXK4d1P7fmhz2RrsN71OIIhQ1btRM8PfHn9jNKG98xMz/3fraj37e7Oo9aOuPD
2sqk+39vvTPpuwmnFi7R9p7cu07M4i92qX3s3OvUlT84meTau5V7xJ2gbLsaPT4f3Mx/6bz5Bx6N
27zm49rcOWO+t+7Uv5GbKU8Zc+a25S8/DXuw9e972ubjPq2xc9rPF8Qp7g26tKvraGJtLw49G+k2
/PNO7OkLdoz59vt6pmmrFy9ybzgw5Y544ty+B75dajL84z5NXe7tXv3ApNnYAS1Db5x4GF9j2FDH
P389PGz6GLdXBRKW1733xJLsmIh4dx/7okvknJSMWwt+Dl78s3WDRq1Xra5JErlMvdaUmVIjwGZZ
mjpZm7lam7m8+T8bczcTvqU2KyIogz984tzuVTMeP4s350sPbd6c5dOpnYt1ntasVacBn0+dtubv
de094LTQyCV5Obm5Upa5o6s7nyW1rVHNxkzAY3MxeUMmE8tESVkKS90cXbVWrslTKDMysiQKFQYQ
FFqOqa1tvkVXKk07Dfpk9OjRA7s0NtOo45+cX7X3apve3cugRC61eisXN4oMTs0UJdSo72nBp6WH
ykWNUSYrIAGegPvJN93mrB/13aoRb/7v+1Uj5m74qNfwRloBLz35ytxFC3/YHte4WVeBRmxlaxl4
adehwBCeaeLaWd99/+NWuwajfGwTY6PD0rRanljbevj4FqprGw8+rN+6S1VWRmR0VHIa31TAsqrT
JDP+QazMpyqfJVdqVCqlQo7l2VlsM9vs2Eu/HLtXt43r6e0LZ/6wMYHPNbXSpMbFhIiUVsi0Kv7m
3aymTXxxslzrNuGrEYn7/roeze/btYk48llUVKxcZcYXyDFXSa1RK+SYrCUWsW06dWhumhoTHRUp
kpiZWahVmOPO9hhRhf/n9Nnzv1mi/n979wFmVXXtARypQ5EiTZEOdgRFURBb9KnRWGPX2BJjib0b
NcauQWPsvUVjS2I31tgRsYGADQuiSBOVIl2E9/OdvHnzRoW5+1ymsebz4xvwnnXX/u991v6vstfu
tFefDvO/mfX9Aaf53/2nutVZvXlzv28x72jhgjmfPHzj5f968v5b73lqZoULN+udddZZnp8+3X43
o3Pnwqqn01Yctt6xY8dGjSra9njy+K9efuy9LXZat91KS061CyF/8sKQEeecPWfihFWPOW7tgw9s
2rzIle9po46nAoHKR6BV047d2w/o1n7Dbu2W8F/39v27tF2/Qb1GQ+65ZtBf//lBgzWP2mOrBZ8N
ue2hN2dNGTt2bsudtt1kzHN3P/jc4LdGf9t307WaqCma/s51jwxdqWuPFvWa9+hW8tFn01dba/VZ
n3w+c/bsYUMe/veLz6yw4WG/3LBDvYat205586Jrbv9kepN1N1qvV4/l33/3w+U7rL95v/9Ym68/
/fi71l16dmgx8fMJrVq1GvHMtQ+8+vWU91+b2brXmh2rouxksfM0ZcqUBQsWdOiQEjodM2aM4+qN
G/9IzUPlr42y3zh58mR/XXHFwsjukMdGj/vyrZ/vtlGrZpWxcVQtRPHtgUD1RECeUK1FQf8t16jt
+hv1a1XSYM0tfv6zAet0XalTz9VW7dihVbM2nbbYeuuubeqvsGb/vXbdpk/X5afObrDx1jttM6B3
j3VW77fOhm1KSjqttXaXFRvOXVi/Rau2nbu2b1B3+fX7Dtxs097NmzSo27xj/4Gb9e/TfXm/l7Ts
0qNj4yZt191og9Yly6241sb77LnLxut3mztj7qoDtt5xo96t5k35fFGbX2yzYZO6ddp0W3m1vuv1
W23VJk1artG/d+MFs+o2btauy9qbb7Zuq6YlLTt17rn6yur5Oq2++oDNNmxV8u139Ruv0K5Dr74b
rNmxbdOShiv37rVC4zqtu/fdZZcB7Zq37r521+VbNOmwRo8unduUNKzXokPXnj26NG3SqHnrlbp0
aakysN9m/bt37NCpQ7sfHsaaOnXqrFmzOnX6f7cjFb8T3BJXUqEVF8889sLghz864eK9miksXuzP
tC+nvX/zzZOefLztppuvcchvV+jQfonKxAcCgUDg/yOwaO6cufVKGjf43zOlYgOL6tZv1EDJ0oI5
c5xSrd+o5D//89tv59cVFfj/1fYvXH3DZ2377rZj78Yl/5fTmj93DpkVqZ/43sP/bsHc+d/Wb9io
wZIq7Sp/7qLiIsNcd4trz3q4Sfdxvzn8wIZ1V6j8iYhvDAQCgZqLwMzxn0+as6hHz06V1jagIljV
1IqLD0dM7Lxq68ZNF9eOyrm2j59/eehRR341+MXVjjm+/1lnBEWuyJqIzwQCP0BguZLGpRTZ/1yu
YaOS/6HIfuqLg5b8L0X29wZK4X5g5Dbcb69dtu9TliL7ZMOKUeTvv89/9b7/ompIkWO1lCLw+Ziv
Jk+etOb6nYMix6oIBAKBQhFotnLHntWMIv/UECq91VSBWE6d+sXkz2b2XKNrvbo/2WZICPn1QZe+
ffYfmnbt1v+qq9fYabuKhKwKVCQ+HggEAhVCoKR582ZNoilYhbCquR8aOWRs0xVnr7n6OjV3CKF5
IBAIBAJLRKC6s+Qxo8fPXzCnQ/eWPzWST19989Vjjpoy+MXVjz9pwIXntu7ScYljjg8EAoFAIBAI
JCMwe+a8D98Z122t1m1ahL1NRjEeDAQCgRqAQDVnyYvGfTh1hZbtlIH/EMtZ38x+/bKrhv/+1KZd
u/e/5trVdtg2er3VgBUXKgYCgUANR+DjUROnzRzfq2/P5epkF9vGTyAQCAQCtROBas2S58yb9dF7
n3RcpYV7ocrBP/aVN14+4neTn3qi5xFH9T//7DYdl+ZF57Vz6mNUgUAgEAikIDB65OfN2zR0Lj7l
4XgmEAgEAoGag0C1ZsnTv5o1bdJ3vdbvURbPb6Z988blV4847eSGbdtvcNXVvXbdMULINWe9haaB
QCBQsxGYNWPO6JGfrLpe2+YlKe3wavbgQ/tAIBBYxhCo1iz53bc+qN9oYYcubUsn5fNhI18+6qiJ
Tz7e83dHDfjThe26d1nG5iuGGwgEAoFAVSLwyehJM2fOWLdf76pUIr47EAgEAoFKQaBas+Qxb3/Z
sVv75q2+b5M8e+bsN6+58c1TTm7cvn2/y69aa/ddGtWv1spXyvTFlwQCRUZg7qSRd952y0ND3if3
s/eHfjJ1frG+YMG0yR9/8OXc2ROHjxr1bRmhU8a4nGKmf5iig+YXLklaOGLwMyM/m1qs7w05xUVg
xJCP23Ru2LHzysUVG9ICgUAgEKiGCCwVorlwzhfvvP3upNkuwkv/+frrLyZ8NqVnry56wH32xogh
xxw34eEHuhxwUP8LL1xxla7pcuPJQCAQ+CkE5o+/4qrb3p/b9KtRw8fNnDlv+uQRw958b/SHU6Z+
f8PntIljRo16e9LMBX7/bu7Uf91w5b3/Hj5t7ndzp01+/513p82aM+7Ddz+fNnPRojqzvho/cuTb
U+bqY579zHn/nVFPP/LQg3e+uqDO/K+nfjl5imtGx8//nztC33zw3tc+meWXT4a9OnL0+I8HP3rV
n69/+KUxMUvlEFg498s7Ljz64IOPfmDoxP/A+tErfzjq4AOPv3Tc7IVfvvbgYYf+9vAL7571v3b3
2ykfXnrqQb8+7MxhExfM+/jlkw8/+MDfXzOh4hez/tgETJ8645MPxq3Rp0dJw+VjggKBQCAQqPUI
LIUbqud+cft5F9350pODh34z8GfrNP4BD6/gDdUfvzd+1Btj19u8+5Qnn3j30ksatV+xzx/OXGXL
zer/8BqDWj9LMcBAoHIQWDRn2OAXvm7Saf/99u7QrOFHL//j5odfe/n+m4YuXHVAy29u+vN1g0e+
+fKbn6253nolMz684oyzX56x/Jorz73j3CteGPHaQ3//16jRrz7zythvxo+657aHho8e8uKQqX03
6tO0/rxXbrj0kgcGD3vzzUZdB263ecu7r//zzX99dU6jhqv3XsP1pOPefOzep4d+/N5bz778bpf1
N11vndVXaDxvxsL2G6xdHcteq/CG6lGP3frSjD6/+nmbl178oE2LeYqDBz//UsvNdutf96Oh740d
/vrYgfvtufzI5z5t2mH2qNfmt+g86pFbJnTaacdVZr782rtvDx/dbfvd1/z69TdmtNtgtfKXkk6a
NKlBgwbt2rVb4ip7b9jYUa9/vMP+A5ZvXu0uD1+i8vGBQCAQCAQWg0Al3VA9ddidg55pdOFJO912
wR/b7P6H7VdpXE4nN1RvvvnmDRsu7i49j/zrH4Nff+Ktjeu9XeeLyV32PWCV3XeO2Q0EAoGCEBgx
ZMwzDwyvW3c5P4t/cMGC71q1abb7EVstX2/C04/c//jgMT8/+vxmo276tO1mzUYP7bjbAbPvPe/s
Ryb169P+07GTDrno5k071X36mosb/eLIvoteuv4f351w/BqnnXrdQRed/c75f3l10tfdNtn/kL17
/e3sg1rtf+svWg878uIXzzn32AXP3XXDK21OO7njcQcePrnNkfdctnum0rNXn/Hk9I4brbXS26+P
7LX1gTtt2umNR24dOrP3kXuvV9BgK+fDVXhD9bN/O/uDnkcftu6kQbc8sdnPftF81uQnhw7eeL/f
rzPxvnPuebVeu9WPOfzXEx778xOLNt6xQ/3lu63y/N8HNd76vB2bPH/+jU/MKVlxv6OObTfs+is+
XvWP+/6sHFZvvfUWorz66qsvDkMraNGix/722ldfTNv/hK0XLapWN8tWzuTHtwQClYrAokWL2rRp
s/zykbepJNh/9Ibq5UyD7//000/HjRu38cYb59dl4uCbbvys05n7bPP3W8+qs+6Je6zTrJzMxx57
zJ7dtOn31cY/9bNw0XdvPD2u0fj328z6qM7PturUt3ed775buOD7VG/8BAKBwHfffbfCCiv07t17
8fT3o7cnfDhqfL16db+/93mxP4sWLqrfoF7/DZu9O2nGqmuvOfjGE8aveXy/qbefetfnu+536AHb
rjfkzstfmtL9oH36lTRt2bpVs7p1Fj78pzO+GXjQZu0nPPl8yW/2KTnvhucPOOaQ18++YsS0yfU7
b3HYXj1v+svNW55x8QYNR55w+iP7nHrYrAeve3jiuoNO73z4fofN7HbqnRdun2n05KVnT9/o4D36
r/zKQ/d+WdJ3281XfurOq1+fvc4ph25Z0mCplITlWT9VyJKfu+Ps97sfe3j/iede8tCvTj6l23LT
rrzkLwMOP3vdT/9x9j+G1W25ygnH/PrTBy54ouGuJ/5itTp1Zt155QXNdzx/h8bPnXfdU3NL2h94
0rGtX77m8rFrnvWrzcsh8PXXX7/99tt16y4W7e9Zcp3vZpTUb7JwuYbzF5ZW0+RBM54NBAKBxRCh
hQtXWWWVlVaKRreVtEoqiSVPHX73oKfrn3fy9reec3aHfc7armf5tvMzZ86cNm3akga9XKN6TRrV
XbCgfr35dRZ9N3duxubjJxAIBCDgdSgpKWnb9v/avxQHlgUzH7/pL/ePnNiwS98Ljz3oixeu+N1f
XurSpcNaW+59+Dar3nXpoDe+nNNipU1OOH3P1nXqjH325nOenrzvL7dqOKPFJgMb3vPYW1vstO1H
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
PxoMHQAAAABJRU5ErkJggg==

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=10406;
	creation-date="Wed, 16 Oct 2013 14:05:02 GMT";
	modification-date="Wed, 16 Oct 2013 14:05:02 GMT"
Content-ID: <image002.png@01CECA90.D87DAF60>
Content-Transfer-Encoding: base64

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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=462;
	creation-date="Wed, 16 Oct 2013 14:05:03 GMT";
	modification-date="Wed, 16 Oct 2013 14:05:03 GMT"
Content-ID: <image003.gif@01CECA90.D87DAF60>
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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Performance Comparison.xlsx"
Content-Description: Performance Comparison.xlsx
Content-Disposition: attachment; filename="Performance Comparison.xlsx";
	size=45368; creation-date="Tue, 18 Jun 2013 12:04:20 GMT";
	modification-date="Wed, 16 Oct 2013 13:49:46 GMT"
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
AaOOX54NS4xWzMfOFky2bUyuDibH7bZ7wJz/CQAA//8DAFBLAwQUAAYACAAAACEACnYuqVMTAADl
VQAAGAAAAHhsL3dvcmtzaGVldHMvc2hlZXQxLnhtbLRcWXMbNxJ+36r9Dyo+7T6YGhxzqSxvxeJN
MUnt+UxLlMWKJGpJ2k721+8HDHoGDUAklVgslUlj+sAAH7objZ55/7dfHx/Ovq62u/Xm6bIn+lnv
bPV0s7ldP32+7P3rn6N3Ve9st18+3S4fNk+ry95vq13vbx/+/Kf33zbbX3b3q9X+DBKedpe9+/3+
+eL8fHdzv3pc7vqb59UTrtxtto/LPf67/Xy+e96ulreW6fHhXGZZcf64XD/1GgkX21NkbO7u1jer
webmy+Pqad8I2a4elnv0f3e/ft6RtMebU8Q9Lre/fHl+d7N5fIaIT+uH9f43K7R39nhzMf38tNku
Pz3gvn8VenlDsu1/IvGP65vtZre52/ch7rzpaHzP9Xl9Dkkf3t+ucQdm2M+2q7vL3kd18bPWvfMP
7+0A/Xu9+rbzfp/tN8/Xq7v91erh4bL3g+yd/W+zefzHzfJh9aMZYjSKDJNnpuXTZvOL4Z/eXvYy
aNqtHlY3ZoDOlvj6umpkTDXId/+1ys1vaD5vVfu/qRsjO5U/b89uV3fLLw/7v2++TVbrz/d7qJb9
MsfomEG6uP1tsNrdYHagvS+N3JvNA4Tg37PHtUEZBnf5q/3+tr7d31/26r6scpEXEkJ2+9/MgAN3
N192+83jfxoS4QQ1InD/VgS+nQiR9YXOAgmfVrv9aG06eFCactLw7aRpC3vqyIlitBODbydGyn6V
57qozOh0N3aiPPDYm8Q3yRO//yYLJw3fNGTV75dWOmn4dtIUJjsxiSfeK8bb3iu+6V6rfimyWv2u
oaudOHxT98QfmQqBtdJg1qyxBpGy+P3DJ9o1gB9OXv0HxNF6EN2CkHk/LzMlTl5TgpaB+UH3KPta
5mUVSDlxUgWtCJl3qHv9Ws8JbKJQVbe4EuNlbFhjbKwlGyz3yw/vt5tvZ/AtuKnd89J4Knlh7jBp
rGClDO1HQwyrAfjAeOxgQ79+yN6ffzXiHclVgkRwkkGCRHKSYYJEcZJRgkRzknGCJOckkwRJwUmm
CZKSk8wSJBUnmSdIak5ynSARwfAuUjTd+J5jUtuZBSTYzFqPpPowm/v79c0vHzeNA0hNeI6pbWbc
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
bHMvZHJhd2luZzIueG1sLnJlbHO81M1qAyEUBeB9oe8gd18dJ8kkKXGyKYVsS/oAF+fOD51RUVua
t68QCg0Eu3MlKp7zbbyH4/cysy/yYbJGgeQVMDLadpMZFLyfX592wEJE0+FsDSm4UIBj+/hweKMZ
Y3oUxskFllJMUDDG6J6FCHqkBQO3jky66a1fMKatH4RD/YEDibqqGuH/ZkB7k8lOnQJ/6lL/+eJS
8//Ztu8nTS9Wfy5k4p0KoUf0MQWiHygq4Px6Eq6LrHnSgrgPWZWDbHOObTmHlDlIXQ7S5ByynGOT
czTlHLLKQTblIPucQ6ZhUuzvrnOSdTnILufYl3PI1S9E3Izq9gcAAP//AwBQSwMEFAAGAAgAAAAh
AB2lHaXTAAAAvQIAACMAAAB4bC9kcmF3aW5ncy9fcmVscy9kcmF3aW5nMS54bWwucmVsc7ySzaoC
MQxG94LvULK3nRlFRKbjRi64vegDhE7mB2fa0vSKvv0tiKAguptVSELOdxYpd9dxEBcK3DurIZcZ
CLLG1b1tNZyOP4sNCI5oaxycJQ03YthV81n5SwPGdMRd71kkimUNXYx+qxSbjkZk6TzZtGlcGDGm
NrTKozljS6rIsrUKzwyoXpjiUGsIh3oJ4njzKfk72zVNb2jvzN9INr6JUKbDEBMQQ0tRg5T3Cd/L
UiZZUO89iuk8ik8e+XQe+SeP1XQeq4eHenm66h8AAP//AwBQSwMEFAAGAAgAAAAhAD0GtGS9AAAA
KwEAACMAAAB4bC93b3Jrc2hlZXRzL19yZWxzL3NoZWV0My54bWwucmVsc4SPzQrCMBCE74LvEPZu
UnsQkaa9iOBV6gMsyfYH2yRk49/bm4ugIHjb2WW/mamaxzyJG0UevdOwlgUIcsbb0fUazu1htQXB
CZ3FyTvS8CSGpl4uqhNNmPITD2NgkSmONQwphZ1SbAaakaUP5PKl83HGlGXsVUBzwZ5UWRQbFT8Z
UH8xxdFqiEe7BtE+Q3b+z/ZdNxrae3OdyaUfFspGvOdmGYmxp6RByveO30Mpc2RQdaW+KtYvAAAA
//8DAFBLAwQUAAYACAAAACEAFa+qPL0AAAArAQAAIwAAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hl
ZXQyLnhtbC5yZWxzhI/NCsIwEITvgu8Q9m7SehCRpl5E8Cr1AZZk+4NtErLxp29vLoKC4G1nl/1m
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
AAAAAAAAAAAAEUYAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQxLnhtbC5yZWxzUEsBAi0AFAAG
AAgAAAAhACqoIxf8AAAA8wUAACMAAAAAAAAAAAAAAAAAE0cAAHhsL2RyYXdpbmdzL19yZWxzL2Ry
YXdpbmcyLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAB2lHaXTAAAAvQIAACMAAAAAAAAAAAAAAAAA
UEgAAHhsL2RyYXdpbmdzL19yZWxzL2RyYXdpbmcxLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAD0G
tGS9AAAAKwEAACMAAAAAAAAAAAAAAAAAZEkAAHhsL3dvcmtzaGVldHMvX3JlbHMvc2hlZXQzLnht
bC5yZWxzUEsBAi0AFAAGAAgAAAAhABWvqjy9AAAAKwEAACMAAAAAAAAAAAAAAAAAYkoAAHhsL3dv
cmtzaGVldHMvX3JlbHMvc2hlZXQyLnhtbC5yZWxzUEsBAi0AFAAGAAgAAAAhAG+0W+l8BQAANg8A
ABQAAAAAAAAAAAAAAAAAYEsAAHhsL2NoYXJ0cy9jaGFydDkueG1sUEsBAi0AFAAGAAgAAAAhACF5
IS11BQAAOA8AABUAAAAAAAAAAAAAAAAADlEAAHhsL2NoYXJ0cy9jaGFydDEwLnhtbFBLAQItABQA
BgAIAAAAIQBt8falfQUAAEEPAAAUAAAAAAAAAAAAAAAAALZWAAB4bC9jaGFydHMvY2hhcnQ3Lnht
bFBLAQItABQABgAIAAAAIQCLpNd2rAYAAP4VAAAUAAAAAAAAAAAAAAAAAGVcAAB4bC9jaGFydHMv
Y2hhcnQyLnhtbFBLAQItABQABgAIAAAAIQCUpcpvZAYAAI4VAAAUAAAAAAAAAAAAAAAAAENjAAB4
bC9jaGFydHMvY2hhcnQxLnhtbFBLAQItABQABgAIAAAAIQB/oAtRtQIAAEwOAAAYAAAAAAAAAAAA
AAAAANlpAAB4bC9kcmF3aW5ncy9kcmF3aW5nMS54bWxQSwECLQAUAAYACAAAACEA5/0DvFoEAADw
CgAAFAAAAAAAAAAAAAAAAADEbAAAeGwvc2hhcmVkU3RyaW5ncy54bWxQSwECLQAUAAYACAAAACEA
JLy8zsQEAAAcGwAADQAAAAAAAAAAAAAAAABQcQAAeGwvc3R5bGVzLnhtbFBLAQItABQABgAIAAAA
IQCYRmvkPQgAACQhAAAUAAAAAAAAAAAAAAAAAD92AAB4bC9jaGFydHMvY2hhcnQzLnhtbFBLAQIt
ABQABgAIAAAAIQAoLGr/bwUAACoPAAAUAAAAAAAAAAAAAAAAAK5+AAB4bC9jaGFydHMvY2hhcnQ4
LnhtbFBLAQItABQABgAIAAAAIQBDdFm9egUAAD8PAAAUAAAAAAAAAAAAAAAAAE+EAAB4bC9jaGFy
dHMvY2hhcnQ2LnhtbFBLAQItABQABgAIAAAAIQDliwG8vQYAALEWAAAUAAAAAAAAAAAAAAAAAPuJ
AAB4bC9jaGFydHMvY2hhcnQ0LnhtbFBLAQItABQABgAIAAAAIQBCNUHuzgMAAH0hAAAYAAAAAAAA
AAAAAAAAAOqQAAB4bC9kcmF3aW5ncy9kcmF3aW5nMi54bWxQSwECLQAUAAYACAAAACEAKXImcH0F
AABmDwAAFAAAAAAAAAAAAAAAAADulAAAeGwvY2hhcnRzL2NoYXJ0NS54bWxQSwECLQAUAAYACAAA
ACEArpLPmlMBAAB9AgAAEQAAAAAAAAAAAAAAAACdmgAAZG9jUHJvcHMvY29yZS54bWxQSwECLQAU
AAYACAAAACEAsvdoLKMBAABVAwAAEAAAAAAAAAAAAAAAAAAnnQAAZG9jUHJvcHMvYXBwLnhtbFBL
AQItABQABgAIAAAAIQB+yNn2sAAAADoBAAAQAAAAAAAAAAAAAAAAAACgAAB4bC9jYWxjQ2hhaW4u
eG1sUEsBAi0AFAAGAAgAAAAhAKpKe9+eBgAAEB8AACcAAAAAAAAAAAAAAAAA3qAAAHhsL3ByaW50
ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3MxLmJpblBLBQYAAAAAIwAjAGEJAADBpwAAAAA=

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F80F0AIRSMSX104gercor_--
