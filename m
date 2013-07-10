Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0BBAE013CB
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 01:28:34 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Jul 2013 01:28:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1034,1363158000"; 
	d="xml'?bin'?scan'208,72,48,147,150,217?rels'208,72,48,147,150,217?xlsx'208,72,48,147,150,217,72,48?gif'208,72,48,147,150,217,72,48,147?png'208,72,48,147,150,217,72,48,147,150";
	a="266296344"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Jul 2013 01:28:25 -0700
Received: from irsmsx105.ger.corp.intel.com (163.33.3.28) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 10 Jul 2013 09:28:21 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.127]) by
	IRSMSX105.ger.corp.intel.com ([169.254.7.52]) with mapi id
	14.03.0123.003; Wed, 10 Jul 2013 09:28:20 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Full Pass Report  for 1.5_M2.rc1 - 2013-07-03-3 build
Thread-Index: Ac59Rvkm3t+F4BcATka0uZdZrIXbAA==
Date: Wed, 10 Jul 2013 08:28:19 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F10997@IRSMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Yocto Full Pass Report for 1.5_M2.rc1 - 2013-07-03-3 build
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
X-List-Received-Date: Wed, 10 Jul 2013 08:28:47 -0000
X-Groupsio-MsgNum: 14900
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_008_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_"

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_
Content-Type: multipart/related;
	boundary="_007_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_";
	type="multipart/alternative"

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,
Here is the Full pass report for the 1.5_m2.rc1 - 2013-07-03-3 build.

Issue summary:

ADT
*         4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783> - =
ARM: target arch change from armv5te to armv7a-vfp-neon in environment sett=
ing script.

BSPs

  *   4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812> - sudo=
ku-savant fails at 'make': 'cstdlib: No such file or directory'
  *   4816<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4816> - beag=
leboard could not startup with 20130703-3 image ( upgrade to gcc 4.8)
  *   4815<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4815> - rebo=
ot/shutdown compromises installation for lsb-sdk images - cannot reboot

  *   4817<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4817> - [p10=
22ds] ltp fail to build with 1.5 M2.rc1

OE-core

  *   4360<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4630> -  arc=
hiver.bbclass fails to filter package licenses - reopened - found on master

Runtime

  *   4814<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4814> -  rpm=
 is broken on 1.5 M2 RC1 lsb images - change the assignee (Bogdan Marinescu=
)

Eclipse plugin

  *   Cannot compile autotools project using i586 toolchain - 4813<https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D4813>

  *   Cannot use powertop and systemtap within eclipse - 4830<https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D4830>, 4831<https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D4831>

Hob

  *   Many tests were blocked by 4793<https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D4793> (save issue) which was fixed recently

Build Appliance

  *   4829<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4829> - Buil=
d core-image-minimal with build-appliance-image


All the bugs found in the test run can be found in the summary below or by =
accessing the detailed report: https://wiki.yoctoproject.org/wiki/WW27_-_20=
13-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1


Testing data

 Test type:

 Branch: master

 Milestone: M2

 Build name: Fullpass

 poky commit: eaa5df34af42b6a37f6506847d0f3ef6ba0d298a

 poky commit date: Fri Jun 28 18:49:53 2013 +0000

 meta-intel commit: e0d6134ed2e2687ff9f2ee77701666447842bf33

 Eclipse Plugin commit: e35dfd79e3970f88a8273125890a54f75f108b97

 Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/nig=
htly/20130703-3/



 Distributions tested:  Fedora 18 32bit, Fedora 18 64bit, Ubuntu 13.04, Ubu=
ntu 12.04, OpenSUSE 12.3 64bit, CentOS 6.4 x86_64

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

855<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D855> 861<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D861>

ADT: master branch

Fedora 18 i686

94.8%

none

5.2%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783>

0.0%

none

100.0%

854<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D854> 858<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D858>

ADT: master branch

Ubuntu 13.04 x86_64

94.8%

none

5.2%

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783>

0.0%

none

100.0%

849<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D849>

BSP/QEMU: master branch

Atom PC

97.2%

none

2.8%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812> 4005<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

0.0%

none

100.0%

846<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D846> 847<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D847>

BSP/QEMU: master branch

Beagleboard

0.0%

none

2.9%

4816<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4816>

97.1%

4816<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4816>

100.0%

843<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D843> 845<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D845>

BSP/QEMU: master branch

Crownbay-noemgd

98.7%

none

1.3%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

831<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D831> 832<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D832>

BSP/QEMU: master branch

Emenlow

98.7%

none

1.3%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

842<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D842> 844<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D844>

BSP/QEMU: master branch

Fish River Island 2 (FRI2)

95.1%

none

2.4%

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646> 2415<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415>

2.4%

2415<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415>

100.0%

828<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D828> 826<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D826> 828<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D828>

BSP/QEMU: master branch

Jasperforest

72.5%

none

5.9%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812> 4815<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4815>

21.6%

4814<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4814> 4815<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4815>

100.0%

856<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D856> 860<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D860>

BSP/QEMU: master branch

MPC8315e-rdb

94.1%

none

5.9%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

836<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D836>

BSP/QEMU: master branch

NUC(Next Unit of Computing)

100.0%

none

0.0%

none

0.0%

none

100.0%

869<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D869> 870<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D870>

BSP/QEMU: master branch

P1022ds

0.0%

none

2.1%

4817<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4817>

97.9%

4817<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4817>

100.0%

837<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D837> 850<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D850>

BSP/QEMU: master branch

qemu-x86

96.2%

none

3.8%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812> 4834<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4834>

0.0%

none

100.0%

839<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D839> 862<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D862> 872<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D872>

BSP/QEMU: master branch

qemuarm

96.5%

none

3.5%

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024> 4812<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

864<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D864> 865<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D865> 867<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D867>

BSP/QEMU: master branch

qemumips

98.8%

none

1.2%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

863<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D863> 866<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D866> 868<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D868>

BSP/QEMU: master branch

qemuppc

98.8%

none

1.2%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

838<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D838> 873<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D873>

BSP/QEMU: master branch

qemux86-64

98.1%

none

1.9%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

857<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D857> 859<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D859>

BSP/QEMU: master branch

Routerstationpro

2.0%

none

0.0%

none

98.0%

4566<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4566>

100.0%

820<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D820> 825<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D825>

BSP/QEMU: master branch

Sugarbay

98.7%

none

1.3%

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

0.0%

none

100.0%

830<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D830>

Eclipse Plugin: master branch

Fedora 18 x86_64

100.0%

none

0.0%

none

0.0%

none

100.0%

833<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D833>

Eclipse Plugin: master branch

Ubuntu 12.10 x86_64

88.9%

none

11.1%

4830<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4830> 4831<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4831>

0.0%

none

100.0%

848<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D848>

Meta-yocto: master branch

Ubuntu 13.04 x86-64

90.9%

none

9.1%

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

0.0%

none

100.0%

851<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D851> 852<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D852>

Hob: master branch

Ubuntu 12.04 x86_64

81.3%

none

0.0%

none

18.8%

4793<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4793>

100.0%

819<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D819> 822<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D822>

OE-Core: master branch

Multiple environments

95.2%

none

4.8%

4630<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4630> 4529<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>

0.0%

none

100.0%

834<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D834> 835<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D835>

BitBake: master branch

Multiple Environments

100.0%

none

0.0%

none

0.0%

none

100.0%

823<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D823> 824<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D824>

Runtime: master branch

Multiple Environments

55.6%

none

0.0%

none

44.4%

4816<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4816> 4814<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D4814>

100.0%

853<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D853>

Build Appliance: master branch

qemu-kvm on Ubuntu 12.04 libvirt

50.0%

none

50.0%

4829<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4829>

0.0%

none

100.0%

Total: 26



Test Case Status Report

Status

Count

BLOCKED

183

FAILED

43

PASSED

1200

Total: 1426


[http://chart.apis.google.com/chart?cht=3Dp3&chs=3D432x120&chd=3Dt:&chd=3Dt=
:183,43,1200&chco=3DFFFF66|FF9933|00FF00&chl=3DBLOCKED(183)+13%25|FAILED(43=
)+3%25|PASSED(1200)+84%25]



Bug Status Report


ID[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-03-3_-_F=
ullpass_Yocto_1.5_M2.RC1>

Priority[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-03=
-3_-_Fullpass_Yocto_1.5_M2.RC1>

Status[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-03-3=
_-_Fullpass_Yocto_1.5_M2.RC1>

Resolution[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-=
03-3_-_Fullpass_Yocto_1.5_M2.RC1>

Test Runs[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-0=
3-3_-_Fullpass_Yocto_1.5_M2.RC1>

Description[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW27_-_2013-07=
-03-3_-_Fullpass_Yocto_1.5_M2.RC1>

Version[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-03-=
3_-_Fullpass_Yocto_1.5_M2.RC1>

Target Milestone[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW27_-_20=
13-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1>

Age (days)[=1B$B"-=1B(B]<https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-=
03-3_-_Fullpass_Yocto_1.5_M2.RC1>

2415<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2415>

Medium

NEW

844<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D844>

connman doesn't provide a 3g configuration utility

1.2

Future

425

2646<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2646>

Medium

ACCEPTED

844<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D844>

Windows switching failure

1.2

1.5

376

3908<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3908>

Medium+

IN PROGRESS REVIEW

848<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D848>

Kernel panic on qemux86-64 when using runqemu kvm and cpu host

1.4

1.5 M2

134

4005<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4005>

Low

NEW

849<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D849>

dmesg log errors in Atom-PC

1.3.1

1.5

114

4024<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4024>

Undecided

RESOLVED

FIXED

862<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D862> 839<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D839>

start qemuarm with "core-image-sato", use "dmesg | grep -i error" shows 2 e=
rrors

1.4

---

110

4529<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4529>

Medium

NEW

822<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D822>

x32 build fails with gmp_5.1.1 do_configure

1.5

1.5

42

4566<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4566>

Medium+

ACCEPTED

857<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D857> 859<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D859>

routerstation pro cannot bootup with NFS in yocto 1.5 20130521-1 build

1.5

1.5 M2

36

4630<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4630>

Medium

REOPENED

819<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D819>

archiver.bbclass fails to filter package licenses

1.5

1.5

23

4783<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4783>

Medium+

NEW

854<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D854> 855<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D855>

[adt-installer] ARM: target arch change from armv5te to armv7a-vfp-neon in =
environment setting script.

1.5

1.5 M2

6 (Recent)

4793<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4793>

Undecided

RESOLVED

FIXED

852<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D852> 851<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D851>

Clicking "Save" button from "Settings" and "Advanced Configuration" fails

1.5

---

2 (Recent)

4812<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812>

Medium+

NEW

832<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D832> 850<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D850> 849<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D849> 856<https://bugzilla.=
yoctoproject.org/tr_show_run.cgi?run_id=3D856> 826<https://bugzilla.yoctopr=
oject.org/tr_show_run.cgi?run_id=3D826> 825<https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D825> 873<https://bugzilla.yoctoproject.org/tr_s=
how_run.cgi?run_id=3D873> 867<https://bugzilla.yoctoproject.org/tr_show_run=
.cgi?run_id=3D867> 860<https://bugzilla.yoctoproject.org/tr_show_run.cgi?ru=
n_id=3D860> 843<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D=
843> 872<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D872> 86=
8<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D868>

sudoku-savant fails at 'make': 'cstdlib: No such file or directory'

1.5

1.5

NEW

4814<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4814>

Medium+

NEW

828<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D828> 824<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D824>

rpm is broken on 1.5 M2 RC1 lsb images

1.5

1.5 M3

NEW

4815<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4815>

Medium+

NEW

826<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D826>

reboot/shutdown compromises installation for lsb-sdk images

1.5

1.5 M2

NEW

4816<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4816>

High

ACCEPTED

846<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D846> 847<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D847> 824<https://bu=
gzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D824>

beagleboard could not startup with 20130703-3 image

1.5

1.5 M3

NEW

4817<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4817>

Medium

ACCEPTED

870<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D870> 869<htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D869>

[p1022ds] ltp fail to build with 1.5 M2.rc1

1.5

1.5

NEW

4829<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4829>

Medium+

RESOLVED

DUPLICATE

853<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D853>

[Test Case 340] Build core-image-minimal with build-appliance-image

1.5

1.5 M3

NEW

4830<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4830>

Medium

NEW

833<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D833>

cannot use powertop within eclipse

1.5

1.5 M2

NEW

4831<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4831>

Medium

IN PROGRESS REVIEW

833<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D833>

error when running systemtap within eclipse

1.5

1.5 M2

NEW

4834<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4834>

Undecided

RESOLVED

DUPLICATE

850<https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D850>

[Test Case 225] ethernet static ip set in connman

1.5

---

NEW

Total: 19




Here is the build performance comparison charts for the last milestones inc=
uding 1.5_M2.rc2. I attached also the detailed report spreadsheet. As you c=
an see, there is no big difference between the last milestones. The perform=
ance test data was compiled by using the data available on Performance Test=
 wiki: https://wiki.yoctoproject.org/wiki/Performance_Test

[cid:image001.png@01CE7CB2.00F03C10]

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania


--_000_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_
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
	font-family:"Times New Roman","serif";
	font-weight:bold;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
span.EmailStyle18
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
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:431246531;
	mso-list-template-ids:919077612;}
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
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
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
	{mso-list-id:616789383;
	mso-list-template-ids:378590976;}
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
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
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
	{mso-list-id:745878800;
	mso-list-template-ids:-952080868;}
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
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
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
@list l3
	{mso-list-id:761338989;
	mso-list-template-ids:1458235368;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4
	{mso-list-id:1190606541;
	mso-list-template-ids:198747018;}
@list l4:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5
	{mso-list-id:1261987321;
	mso-list-template-ids:-1876293032;}
@list l5:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6
	{mso-list-id:1341618081;
	mso-list-template-ids:1721550868;}
@list l6:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l7
	{mso-list-id:1610622495;
	mso-list-template-ids:1873190110;}
@list l7:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l7:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l7:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l7:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l7:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l7:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l7:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l7:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l7:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l8
	{mso-list-id:1658878679;
	mso-list-template-ids:-1315543090;}
@list l8:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l8:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l8:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l8:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l8:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l8:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l8:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l8:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l8:level9
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
<p class=3D"MsoNormal">Here is the Full pass report for the 1.5_m2.rc1 &#82=
11; 2013-07-03-3 build.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Issue summary:<o:p></o:p></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:9.0pt;margin-bottom:.0001pt">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">ADT<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:-.25in;mso-lis=
t:l8 level1 lfo1;vertical-align:middle">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol"><s=
pan style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times=
 New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org=
/show_bug.cgi?id=3D4783">4783</a> - ARM: target arch change from armv5te to=
 armv7a-vfp-neon in environment setting script.<span style=3D"font-size:12.=
0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p><=
/span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:9.0pt;margin-bottom:.0001pt">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">BSPs<o:p></o:p></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-list:l6 level1 lfo2;vertical-align:mid=
dle"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812">4=
812</a> - sudoku-savant fails at 'make': 'cstdlib: No such file or director=
y'
<span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&qu=
ot;serif&quot;"><o:p></o:p></span></li><li class=3D"MsoNormal" style=3D"mso=
-list:l6 level1 lfo2;vertical-align:middle"><a href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D4816">4816</a> - beagleboard could not star=
tup with 20130703-3 image ( upgrade to gcc 4.8)<o:p></o:p></li><li class=3D=
"MsoNormal" style=3D"mso-list:l6 level1 lfo2;vertical-align:middle"><a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4815">4815</a> - re=
boot/shutdown compromises installation for lsb-sdk images - cannot reboot<o=
:p></o:p></li></ul>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-list:l2 level1 lfo3;vertical-align:mid=
dle"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4817">4=
817</a> - [p1022ds] ltp fail to build with 1.5 M2.rc1<o:p></o:p></li></ul>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:9.0pt;margin-bottom:.0001pt">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">OE-core<o:p></o:p></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-list:l7 level1 lfo4;vertical-align:mid=
dle"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4630">4=
360</a> -&nbsp; archiver.bbclass fails to filter package licenses - reopene=
d - found on master<span style=3D"font-size:12.0pt;font-family:&quot;Times =
New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></li></ul>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:9.0pt;margin-bottom:.0001pt">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">Runtime<o:p></o:p></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-list:l3 level1 lfo5;vertical-align:mid=
dle"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4814">4=
814</a> -&nbsp; rpm is broken on 1.5 M2 RC1 lsb images - change the assigne=
e (Bogdan Marinescu)<span style=3D"font-size:12.0pt;font-family:&quot;Times=
 New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></li></ul>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:9.0pt;margin-bottom:.0001pt">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">Eclipse plugin<o:p></o:p></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-list:l0 level1 lfo6;vertical-align:mid=
dle">Cannot compile autotools project using i586 toolchain -
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4813">4813</=
a><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&=
quot;serif&quot;"><o:p></o:p></span></li></ul>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-list:l4 level1 lfo7;vertical-align:mid=
dle">Cannot use powertop and systemtap within eclipse -
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4830">4830</=
a>, <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4831">
4831</a><o:p></o:p></li></ul>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:9.0pt;margin-bottom:.0001pt">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">Hob<o:p></o:p></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-list:l5 level1 lfo8;vertical-align:mid=
dle">Many tests were blocked by
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4793">4793</=
a> (save issue) which was fixed recently<span style=3D"font-size:12.0pt;fon=
t-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span><=
/li></ul>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:9.0pt;margin-bottom:.0001pt">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">Build Appliance<o:p></o:p></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-list:l1 level1 lfo9;vertical-align:mid=
dle"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4829">4=
829</a> - Build core-image-minimal with build-appliance-image<span style=3D=
"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;=
"><o:p></o:p></span></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">All the bugs found in the test run can be found in t=
he summary below or by accessing the detailed report:
<a href=3D"https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpas=
s_Yocto_1.5_M2.RC1">
https://wiki.yoctoproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5=
_M2.RC1</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
;word-spacing:0px"><span style=3D"color:black"> Test type: <o:p></o:p></spa=
n></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black">&nbsp;Branch: master<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Milestone: M2<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Build name: Fullpass<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit: eaa5df34af42b6a37f6506847d0f3ef=
6ba0d298a<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> poky commit date: Fri Jun 28 18:49:53 2013 &=
#43;0000<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> meta-intel commit: e0d6134ed2e2687ff9f2ee777=
01666447842bf33<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Eclipse Plugin commit: e35dfd79e3970f88a8273=
125890a54f75f108b97<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Autobuilder images repository: http://autobu=
ilder.yoctoproject.org/pub/nightly/20130703-3/<o:p></o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"><o:p>&nbsp;</o:p></span></pre>
<pre style=3D"line-height:13.2pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"color:black"> Distributions tested:&nbsp; Fedora 18 32bit,=
 Fedora 18 64bit, Ubuntu 13.04, Ubuntu 12.04, OpenSUSE 12.3 64bit, CentOS 6=
.4 x86_64 <o:p></o:p></span></pre>
</div>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid #=
AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
<h1 style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;mar=
gin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;paddin=
g:0in;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width=
: 0px;background-position:initial initial;background-repeat:initial initial=
;overflow:hidden;word-spacing:0px">
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
rg/tr_show_run.cgi?run_id=3D855"><span style=3D"color:#5A3696">855</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D861"><span style=3D"color:#=
5A3696">861</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Fedora 18 i686<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">5.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4783"><span style=3D"color:#5A3696">4783</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D854"><span style=3D"color:#5A3696">854</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D858"><span style=3D"color:#=
5A3696">858</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">94.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">5.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4783"><span style=3D"color:#5A3696">4783</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D849"><span style=3D"color:#5A3696">849</span></=
a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Atom PC<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">97.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">2.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D4005"><span style=3D"color:#5A3696">400=
5</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D846"><span style=3D"color:#5A3696">846</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D847"><span style=3D"color:#=
5A3696">847</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Beagleboard<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
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
<span style=3D"font-size:10.0pt">2.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4816"><span style=3D"color:#5A3696">4816</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">97.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4816"><span style=3D"color:#5A3696">4816</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D843"><span style=3D"color:#5A3696">843</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D845"><span style=3D"color:#=
5A3696">845</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Crownbay-noemgd<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">98.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D831"><span style=3D"color:#5A3696">831</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D832"><span style=3D"color:#=
5A3696">832</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Emenlow<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">98.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D842"><span style=3D"color:#5A3696">842</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D844"><span style=3D"color:#=
5A3696">844</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Fish River Island 2 (FRI2)<o:p></o:p></spa=
n></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">95.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D2646"><span style=3D"color:#5A3696">2646</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D2415"><span style=3D"color:#5A3696">241=
5</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">2.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D2415"><span style=3D"color:#5A3696">2415</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D828"><span style=3D"color:#5A3696">828</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D826"><span style=3D"color:#=
5A3696">826</span></a><span class=3D"apple-converted-space">&nbsp;</span><a=
 href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D828"><s=
pan style=3D"color:#5A3696">828</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Jasperforest<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">72.5%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">5.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D4815"><span style=3D"color:#5A3696">481=
5</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">21.6%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4814"><span style=3D"color:#5A3696">4814</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D4815"><span style=3D"color:#5A3696">481=
5</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D856"><span style=3D"color:#5A3696">856</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D860"><span style=3D"color:#=
5A3696">860</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">MPC8315e-rdb<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">94.1%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">5.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D836"><span style=3D"color:#5A3696">836</span></=
a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">NUC(Next Unit of Computing)<o:p></o:p></sp=
an></p>
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
rg/tr_show_run.cgi?run_id=3D869"><span style=3D"color:#5A3696">869</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D870"><span style=3D"color:#=
5A3696">870</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">2.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4817"><span style=3D"color:#5A3696">4817</span></a><o:=
p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">97.9%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4817"><span style=3D"color:#5A3696">4817</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D837"><span style=3D"color:#5A3696">837</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D850"><span style=3D"color:#=
5A3696">850</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">96.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">3.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D4834"><span style=3D"color:#5A3696">483=
4</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D839"><span style=3D"color:#5A3696">839</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D862"><span style=3D"color:#=
5A3696">862</span></a><span class=3D"apple-converted-space">&nbsp;</span><a=
 href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D872"><s=
pan style=3D"color:#5A3696">872</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">96.5%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">3.5%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4024"><span style=3D"color:#5A3696">4024</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">481=
2</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D864"><span style=3D"color:#5A3696">864</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D865"><span style=3D"color:#=
5A3696">865</span></a><span class=3D"apple-converted-space">&nbsp;</span><a=
 href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D867"><s=
pan style=3D"color:#5A3696">867</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">98.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D863"><span style=3D"color:#5A3696">863</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D866"><span style=3D"color:#=
5A3696">866</span></a><span class=3D"apple-converted-space">&nbsp;</span><a=
 href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D868"><s=
pan style=3D"color:#5A3696">868</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">98.8%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.2%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D838"><span style=3D"color:#5A3696">838</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D873"><span style=3D"color:#=
5A3696">873</span></a><o:p></o:p></span></p>
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
rg/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D857"><span style=3D"color:#5A3696">857</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D859"><span style=3D"color:#=
5A3696">859</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">2.0%<o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:red;padding:2.4pt 2.4pt 2.=
4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">98.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4566"><span style=3D"color:#5A3696">4566</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D820"><span style=3D"color:#5A3696">820</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D825"><span style=3D"color:#=
5A3696">825</span></a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Sugarbay<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">98.7%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1.3%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D830"><span style=3D"color:#5A3696">830</span></=
a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Fedora 18 x86_64<o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D833"><span style=3D"color:#5A3696">833</span></=
a><o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">Ubuntu 12.10 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">88.9%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">11.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4830"><span style=3D"color:#5A3696">4830</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D4831"><span style=3D"color:#5A3696">483=
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
rg/tr_show_run.cgi?run_id=3D848"><span style=3D"color:#5A3696">848</span></=
a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Meta-yocto: master branch<o:p></o:p></span=
></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 13.04 x86-64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:lime;padding:2.4pt 2.4pt 2=
.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt">90.9%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">9.1%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D3908"><span style=3D"color:#5A3696">3908</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D851"><span style=3D"color:#5A3696">851</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D852"><span style=3D"color:#=
5A3696">852</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Hob: master branch<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Ubuntu 12.04 x86_64<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">81.3%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">18.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4793"><span style=3D"color:#5A3696">4793</span></a><o:=
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
rg/tr_show_run.cgi?run_id=3D819"><span style=3D"color:#5A3696">819</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D822"><span style=3D"color:#=
5A3696">822</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">OE-Core: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
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
<span style=3D"font-size:10.0pt">95.2%<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">4.8%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4630"><span style=3D"color:#5A3696">4630</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D4529"><span style=3D"color:#5A3696">452=
9</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D834"><span style=3D"color:#5A3696">834</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D835"><span style=3D"color:#=
5A3696">835</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">BitBake: master branch<o:p></o:p></span></=
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
rg/tr_show_run.cgi?run_id=3D823"><span style=3D"color:#5A3696">823</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D824"><span style=3D"color:#=
5A3696">824</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Runtime: master branch<o:p></o:p></span></=
p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Multiple Environments<o:p></o:p></span></p=
>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">55.6%<o:p></o:p></span></p>
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
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">44.4%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4816"><span style=3D"color:#5A3696">4816</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D4814"><span style=3D"color:#5A3696">481=
4</span></a><o:p></o:p></span></p>
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
rg/tr_show_run.cgi?run_id=3D853"><span style=3D"color:#5A3696">853</span></=
a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">Build Appliance: master branch<o:p></o:p><=
/span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">qemu-kvm on Ubuntu 12.04 libvirt<o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">50.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt">none<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDD00;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:7.5pt;m=
argin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center">
<span style=3D"font-size:10.0pt;color:black">50.0%<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D4829"><span style=3D"color:#5A3696">4829</span></a><o:=
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
<td colspan=3D"10" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;back=
ground:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 26</span></b><span style=3D"font=
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
<span style=3D"font-size:10.0pt">183<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">43<o:p></o:p></span></p>
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
<span style=3D"font-size:10.0pt">1200<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border:solid #AAAAAA 1.0pt;border-top:none;backg=
round:#BBBBBB;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<b><span style=3D"font-size:10.0pt">Total: 1426</span></b><span style=3D"fo=
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
idth=3D"432" height=3D"120" id=3D"Picture_x0020_10" src=3D"cid:image001.png=
@01CE7D5F.F4114260" alt=3D"http://chart.apis.google.com/chart?cht=3Dp3&amp;=
chs=3D432x120&amp;chd=3Dt:&amp;chd=3Dt:183,43,1200&amp;chco=3DFFFF66|FF9933=
|00FF00&amp;chl=3DBLOCKED(183)&#43;13%25|FAILED(43)&#43;3%25|PASSED(1200)&#=
43;84%25"></span><span style=3D"font-size:10.0pt"><o:p></o:p></span></p>
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
ect.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1"><b><span styl=
e=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=3D"0"=
 width=3D"12" height=3D"14" id=3D"Picture_x0020_9" src=3D"cid:image002.gif@=
01CE7D5F.F4114260" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=3D"fo=
nt-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Priority</span></b><a href=3D"https://wiki.yoc=
toproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1"><b><spa=
n style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_8" src=3D"cid:image00=
2.gif@01CE7D5F.F4114260" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Status</span></b><a href=3D"https://wiki.yocto=
project.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1"><b><span =
style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_7" src=3D"cid:image00=
2.gif@01CE7D5F.F4114260" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Resolution</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1"><b><s=
pan style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_6" src=3D"cid:image=
002.gif@01CE7D5F.F4114260" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span sty=
le=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Test Runs</span></b><a href=3D"https://wiki.yo=
ctoproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1"><b><sp=
an style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img borde=
r=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_5" src=3D"cid:image0=
02.gif@01CE7D5F.F4114260" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span styl=
e=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Description</span></b><a href=3D"https://wiki.=
yoctoproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1"><b><=
span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bor=
der=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_4" src=3D"cid:imag=
e002.gif@01CE7D5F.F4114260" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span st=
yle=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Version</span></b><a href=3D"https://wiki.yoct=
oproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1"><b><span=
 style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img border=
=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_3" src=3D"cid:image00=
2.gif@01CE7D5F.F4114260" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span style=
=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Target Milestone</span></b><a href=3D"https://=
wiki.yoctoproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1"=
><b><span style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><im=
g border=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_2" src=3D"cid=
:image002.gif@01CE7D5F.F4114260" alt=3D"=1B$B"-=1B(B"></span></b></a><b><sp=
an style=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
<td style=3D"border:solid #AAAAAA 1.0pt;border-left:none;background:#BBBBBB=
;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt">Age (days)</span></b><a href=3D"https://wiki.y=
octoproject.org/wiki/WW27_-_2013-07-03-3_-_Fullpass_Yocto_1.5_M2.RC1"><b><s=
pan style=3D"font-size:10.0pt;color:#5A3696;text-decoration:none"><img bord=
er=3D"0" width=3D"12" height=3D"14" id=3D"Picture_x0020_1" src=3D"cid:image=
002.gif@01CE7D5F.F4114260" alt=3D"=1B$B"-=1B(B"></span></b></a><b><span sty=
le=3D"font-size:10.0pt"><o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D2415"><span style=3D"color:#5A3696">2415</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D844"><span style=3D"colo=
r:#5A3696">844</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">connman doesn't pro=
vide a 3g configuration utility<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">Future<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">425<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D844"><span style=3D"colo=
r:#5A3696">844</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">376<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D848"><span style=3D"colo=
r:#5A3696">848</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">134<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D849"><span style=3D"colo=
r:#5A3696">849</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">114<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D862"><span style=3D"colo=
r:#5A3696">862</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D839"=
><span style=3D"color:#5A3696">839</span></a><o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">110<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4529"><span style=3D"color:#5A3696">4529</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D822"><span style=3D"colo=
r:#5A3696">822</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">x32 build fails wit=
h gmp_5.1.1 do_configure<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">42<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4566"><span style=3D"color:#5A3696">4566</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D857"><span style=3D"colo=
r:#5A3696">857</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D859"=
><span style=3D"color:#5A3696">859</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">routerstation pro c=
annot bootup with NFS in yocto 1.5 20130521-1 build<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">36<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4630"><span style=3D"color:#5A3696">4630</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">REOPENED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D819"><span style=3D"colo=
r:#5A3696">819</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">archiver.bbclass fa=
ils to filter package licenses<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">23<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4783"><span style=3D"color:#5A3696">4783</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D854"><span style=3D"colo=
r:#5A3696">854</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D855"=
><span style=3D"color:#5A3696">855</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[adt-installer] ARM=
: target arch change from armv5te to armv7a-vfp-neon in environment setting=
 script.<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5 M2<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">6<span class=3D"apple-converted-space"><span styl=
e=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Rece=
nt)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4793"><span style=3D"color:#5A3696">4793</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D852"><span style=3D"colo=
r:#5A3696">852</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D851"=
><span style=3D"color:#5A3696">851</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Clicking &quot;Save=
&quot; button from &quot;Settings&quot; and &quot;Advanced Configuration&qu=
ot; fails<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">2<span class=3D"apple-converted-space"><span styl=
e=3D"color:#236EDE">&nbsp;</span></span><span style=3D"color:#236EDE">(Rece=
nt)</span><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;padding:2.4pt 2.4pt=
 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4812"><span style=3D"color:#5A3696">4812</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D832"><span style=3D"colo=
r:#5A3696">832</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D850"=
><span style=3D"color:#5A3696">850</span></a><span class=3D"apple-converted=
-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D849"><span style=3D"color:#5A3696">849</span></a><span clas=
s=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctop=
roject.org/tr_show_run.cgi?run_id=3D856"><span style=3D"color:#5A3696">856<=
/span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"htt=
ps://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D826"><span style=3D=
"color:#5A3696">826</span></a><span class=3D"apple-converted-space">&nbsp;<=
/span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=
=3D825"><span style=3D"color:#5A3696">825</span></a><span class=3D"apple-co=
nverted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr=
_show_run.cgi?run_id=3D873"><span style=3D"color:#5A3696">873</span></a><sp=
an class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bugzilla=
.yoctoproject.org/tr_show_run.cgi?run_id=3D867"><span style=3D"color:#5A369=
6">867</span></a><span class=3D"apple-converted-space">&nbsp;</span><a href=
=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D860"><span s=
tyle=3D"color:#5A3696">860</span></a><span class=3D"apple-converted-space">=
&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?r=
un_id=3D843"><span style=3D"color:#5A3696">843</span></a><span class=3D"app=
le-converted-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.o=
rg/tr_show_run.cgi?run_id=3D872"><span style=3D"color:#5A3696">872</span></=
a><span class=3D"apple-converted-space">&nbsp;</span><a href=3D"https://bug=
zilla.yoctoproject.org/tr_show_run.cgi?run_id=3D868"><span style=3D"color:#=
5A3696">868</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">sudoku-savant fails=
 at 'make': 'cstdlib: No such file or directory'<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4814"><span style=3D"color:#5A3696">4814</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D828"><span style=3D"colo=
r:#5A3696">828</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D824"=
><span style=3D"color:#5A3696">824</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">rpm is broken on 1.=
5 M2 RC1 lsb images<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.5 M3<o:p></o:p></span></p>
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
_bug.cgi?id=3D4815"><span style=3D"color:#5A3696">4815</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D826"><span style=3D"colo=
r:#5A3696">826</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">reboot/shutdown com=
promises installation for lsb-sdk images<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5 M2<o:p></o:p></span></p>
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
_bug.cgi?id=3D4816"><span style=3D"color:#5A3696">4816</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">High<o:p></o:p></span></p>
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D846"><span style=3D"colo=
r:#5A3696">846</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D847"=
><span style=3D"color:#5A3696">847</span></a><span class=3D"apple-converted=
-space">&nbsp;</span><a href=3D"https://bugzilla.yoctoproject.org/tr_show_r=
un.cgi?run_id=3D824"><span style=3D"color:#5A3696">824</span></a><o:p></o:p=
></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">beagleboard could n=
ot startup with 20130703-3 image<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.5 M3<o:p></o:p></span></p>
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
_bug.cgi?id=3D4817"><span style=3D"color:#5A3696">4817</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">ACCEPTED<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D870"><span style=3D"colo=
r:#5A3696">870</span></a><span class=3D"apple-converted-space">&nbsp;</span=
><a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D869"=
><span style=3D"color:#5A3696">869</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[p1022ds] ltp fail =
to build with 1.5 M2.rc1<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt;color:#FF4000">NEW</span><span style=3D"font-size:=
10.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"border:solid #AAAAAA 1.0pt;border-top:none;background:#DDDDDD;=
padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4829"><span style=3D"color:#5A3696">4829</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">DUPLICATE<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D853"><span style=3D"colo=
r:#5A3696">853</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Test Case 340] Bui=
ld core-image-minimal with build-appliance-image<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.5 M3<o:p></o:p></span></p>
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
_bug.cgi?id=3D4830"><span style=3D"color:#5A3696">4830</span></a><o:p></o:p=
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
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D833"><span style=3D"colo=
r:#5A3696">833</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">cannot use powertop=
 within eclipse<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt">1.5 M2<o:p></o:p></span></p>
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
_bug.cgi?id=3D4831"><span style=3D"color:#5A3696">4831</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">IN PROGRESS REVIEW<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D833"><span style=3D"colo=
r:#5A3696">833</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;background:#DDDDDD;padding:2.4pt 2.4p=
t 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">error when running =
systemtap within eclipse<o:p></o:p></span></p>
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
tyle=3D"font-size:10.0pt">1.5 M2<o:p></o:p></span></p>
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
_bug.cgi?id=3D4834"><span style=3D"color:#5A3696">4834</span></a><o:p></o:p=
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
tyle=3D"font-size:10.0pt">DUPLICATE<o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"https://=
bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D850"><span style=3D"colo=
r:#5A3696">850</span></a><o:p></o:p></span></p>
</td>
<td style=3D"border-top:none;border-left:none;border-bottom:solid #AAAAAA 1=
.0pt;border-right:solid #AAAAAA 1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">[Test Case 225] eth=
ernet static ip set in connman<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Total: 19</span>=
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Here is the build perf=
ormance comparison charts for the last milestones incuding 1.5_M2.rc2. I at=
tached also the detailed report spreadsheet. As you can see, there is no bi=
g difference between the last milestones.
 The performance test data was compiled by using the data available on Perf=
ormance Test wiki:
<a href=3D"https://wiki.yoctoproject.org/wiki/Performance_Test">https://wik=
i.yoctoproject.org/wiki/Performance_Test</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"1390" height=3D"813" id=
=3D"Picture_x0020_11" src=3D"cid:image003.png@01CE7D5F.F4114260" alt=3D"cid=
:image001.png@01CE7CB2.00F03C10"><o:p></o:p></p>
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

--_000_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_--

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=10716;
	creation-date="Wed, 10 Jul 2013 08:28:17 GMT";
	modification-date="Wed, 10 Jul 2013 08:28:17 GMT"
Content-ID: <image001.png@01CE7D5F.F4114260>
Content-Transfer-Encoding: base64

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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=462;
	creation-date="Wed, 10 Jul 2013 08:28:18 GMT";
	modification-date="Wed, 10 Jul 2013 08:28:18 GMT"
Content-ID: <image002.gif@01CE7D5F.F4114260>
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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=115799;
	creation-date="Wed, 10 Jul 2013 08:28:18 GMT";
	modification-date="Wed, 10 Jul 2013 08:28:18 GMT"
Content-ID: <image003.png@01CE7D5F.F4114260>
Content-Transfer-Encoding: base64

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
MAETGFMC8cDa+1gJTU0mUwGZdqyW22JlR2QtphI7K3ctXVxzZKy/k22VkyGceGhi950KF+2PCZiA
CZiACZhAXwhUT2zAW3DXukWTMRGIa7Rl9aWTuxXiWAnTb55Yu3XVtkXVUxpWTlSDJlR+r0RMWrj2
qqXI00+7N26dcYdDX4ruRE3ABEzABExgDAj03pRQr1vEysR05Cs276ipDJXwi5tXNL3TusUYtFUX
0QRMwARMYIgITJn9wykM1eCKIe7Bis1TpzMUb576t+6fepKnJj8zh0oYIlzOqgmYgAmYgAkMGYHe
mxLqdYtYmajiW7E5qAdBZaheaXGndYsha3nOrgmYgAmYgAmYgAmYgAmYgAmYwJAS6L0pYUhBOdsm
YAImYAImYAImYAImYAImYAImYAIVAjYluB2YgAmYgAmYgAmYgAmYgAmYgAmYgAl0QMCmhA5g+VYT
MAETMAETMAETMAETMAETMAETMAGbEtwGTMAETMAETMAETMAETMAETMAETMAEOiBgU0IHsHyrCZiA
CZiACZiACZiACZiACZiACZiATQluAyZgAiZgAiZgAiZgAiZgAiZgAiZgAh0QsCmhA1i+1QRMwARM
wARMwARMwARMwARMwARMwKYEtwETMAETMAETMAETMAETMAETMAETMIEOCNiU0AEs32oCJmACJmAC
JmACJmACJmACJmACJmBTgtuACZiACZiACZiACZiACZiACZiACZhABwRsSugAlm81ARMwARMwARMw
ARMwARMwARMwAROwKcFtwARMwARMwARMwARMwARMwARMwARMoAMCNiV0AMu3moAJmIAJmIAJmIAJ
mIAJmIAJmIAJ2JTgNmACJmACJmACJmACJmACJmACJmACJtABAZsSOoDlW03ABEzABEzABEzABEzA
BEzABEzABGxKcBswARMwARMwARMwARMwARMwARMwARPogIBNCR3A8q0mYAImYAImYAImMFwEnn/m
mQe++He7//RPbt/453wfrsw7tyZgAiZgAgNLwKaEga0aZ8wETMAETMAETMAEuifwyC3/iPngK+94
G38fvnkXBoV7/vpT3YvzkyZgAiZgAiYQEbApwc3BBEzABEzABEzABEaHwJP33bvvui03/fplt/7R
H2A+wBPhmNNOX/C2VZTw+5/b9pPbbx+dorokJmACJmAC/SNgU0L/2DtlEzABEzABEzABE0hE4ND+
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
BEzABEzABExgCAn03JRQf9D0FLWKkWH7ko3LpnHk4tVLNq4uXGt0NnWjO4ewSpxlEzABEzABEzAB
EzABEzABEzABExhkAr02JTQ4aHrqZOmq/+LFBaPB5ZVtk4t1cXJfZaMTp/dtiu8cZObOmwmYgAmY
gAmYgAmYgAmYgAmYgAkMMYFeHwbZ4qDpGsXCmVE6S2r6kdSB95S0cOpUkzsLVeSDpoe4zTrrJmAC
o0vABzjX122+4wzzSR6cFjoOZRwc2s6JCZiACZjAyBOIB9ZemxKaHTQ9BT0yJVTOjF63K/y0bGP1
JOnJT8Hm0OLOXmpmI996XEATMAETMIFeEsg3Gc4nuZd8Wqc1DmUcHNrOiQmYgAmYwMgTiAfWXm9w
aHjQdDPiUxGdd6wu2BEKZ1O3uHPkq9MFNAETMAETMAETMAETMAETMAETMIFeEui1KYETnooHTU/F
Sqie7YB3QeXU6eIpDlUok7ESimdT95KY0zIBEzABEzABEzABEzABEzABEzCBsSbQc1NCdLD05G6F
cLJ0dK50OGtatbNic/XmyTvrT5wOlVi7c6wr1YU3ARMwARMwARMwARMwARMwARMwgXwE+mBKyFcY
SzYBEzABEzABEzABEzABEzABEzABE8hNwKaE3IQt3wRMwARMwARMwARMwARMwARMwARGioBNCSNV
nS6MCZiACZiACZiACZiACZiACZiACeQmYFNCbsKWbwImYAImYAImYAImYAImYAImYAIjRcCmhJGq
ThfGBEzABEzABEzABEzABEzABEzABHITsCkhN2HLNwETMAETMAETMAETMAETMAETMIGRImBTwkhV
pwtjAiZgAiZgAiZgAiZgAiZgAiZgArkJ2JSQm7Dlm4AJmIAJmIAJmIAJmIAJmIAJmMBIEbApYaSq
04UxARMwARMwARMwARMwARMwARMwgdwEbErITdjyTcAETMAETMAETMAETMAETMAETGCkCNiUMFLV
6cKYgAmYgAmYgAmYgAmYgAmYgAmYQG4CNiXkJmz5JmACJmACJmACJmACJmACJmACJjBSBGxKGKnq
dGFMwARMwARMwARMwARMwARMwARMIDcBmxJyE7Z8EzABEzABEzABEzABEzABEzABExgpAjYljFR1
ujAmYAImYAImYAImYAImYAImYAImkJuATQm5CVu+CZiACZiACZiACZiACZiACZiACYwUAZsSRqo6
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
33JMwARMwARMwARMAAIsYLA38IorrsBtc0iDPrgeTWBMCNiUMCYV7WKaQCkC+CDs3LmTSE6c14Ag
nCdtRygF1A+bgAmYgAmYgAk0IYBvAm6bF110EYpHOOHStEzABAaNgE0Jg1Yjzo8JDCgBrAkEc7rj
jjvOPPPMeLPDgGbX2TIBEzABEzABExhmAqxbsIwx+J6bw8zYeTeBUgRsSiiFzw+bwFgRYDhnXwPj
upcIxqreXVgTMAETMAETMAETMAETKBCwKcFNwgRMoDMCnF7JqZCdPeO7TcAETMAETMAETMAETMAE
RoiATQkjVJkuigmYgAmYgAmYgAmYgAmYgAmYgAnkJ2BTQn7GTsEETMAETMAETMAETMAETMAETMAE
RoiATQkjVJkuigmYgAmYgAmYgAmYgAmYgAmYgAnkJ2BTQn7GTsEETMAETMAETMAETMAETMAETMAE
RoiATQkjVJkuigmYgAmYgAmYgAmYgAmYgAmYgAnkJ2BTQn7GTsEETMAETMAETMAETMAETMAETMAE
RojArMOHDxeKs2HDhvXr149QGV0UEzABEzABExhWAvkG5WuvvfbQoUPDysX5NgETMAETMAET6DmB
o48++oorrlCyNiX0HL8TNAETMAETMIG2CeQzJbSdBd9oAiZgAiZgAiZgAkUCDUwJXqZwMzEBEzAB
EzCBASEQm/8HJEvOhgmYgAmYgAmYgAk0MCUYigmYgAmYgAmYgAmYgAmYgAmYgAmYgAk0I+Cwi24b
JmACJmACJmACJmACJmACJmACJmACHRCwKaEDWL7VBEzABEzABEzABEzABEzABEzABEzApgS3ARMw
ARMwARMwARMwARMwARMwARMwgQ4I2JTQASzfagImYAImYAImYAImYAImYAImYAImYFOC24AJmIAJ
mIAJmIAJmIAJmIAJmIAJmEAHBGxK6ACWbzUBEzABEzABEzABEzABEzABEzABE7ApwW3ABEzABEzA
BEzABEzABEzABEzABEygAwI2JXQAy7eagAmYgAmYgAmYgAmYgAmYgAmYgAnYlOA2YAImYAImYAIm
YAImYAImYAImYAIm0AEBmxI6gOVbTcAETMAETMAETMAETMAETMAETMAEbEpwGzABEzABEzABEzAB
EzABEzABEzABE+iAgE0JHcDyrSZgAiZgAiZgAiZgAiZgAiZgAiZgAjYluA2YgAmYgAmYgAmYgAmY
gAmYgAmYgAl0QMCmhA5g+VYTMAETMAETMAETMAETMAETMAETMAGbEtwGTMAETMAETMAETMAETMAE
TMAETMAEOiBgU0IHsHyrCZiACZiACZiACZiACZiACZiACZiATQluAyZgAiZgAiZgAiZgAiZgAiZg
AiZgAh0QsCmhA1i+1QRMwARMwARMwARMwARMwARMwARMwKYEtwETMAETMAETMAETMAETMAETMAET
MIEOCNiU0AEs32oCJmACJmACJmACJmACJmACJmACJmBTgtuACZiACZiACZiACZiACZiACZiACZhA
BwRsSugAlm81ARMwARMwARMwARMwARMwARMwAROwKcFtwARMwARMwARMwARMwARMwARMwARMoAMC
NiV0AMu3moAJmIAJmIAJmIAJmIAJmIAJmIAJ2JTgNmACJmACJmACJmACJmACJmACJmACJtABAZsS
OoDlW03ABEzABEzABEzABEzABEzABEzABGxKcBswARMwARMwARMwARMwARMwARMwARPogIBNCR3A
8q0mYAImYAImYAImYAImYAImYAImYAKzDh8+bAomYAImYAImYAJjS+BjH/vY/v37x7b4LrgJmIAJ
mIAJmMCMBObPn//ud787vs2mhBmh+QYTMAETMAETGGUCGzZsWL9+/SiX0GUzARMwARMwARMoR6Be
W/AGh3JE/bQJmIAJmIAJmIAJmIAJmIAJmIAJjBmBoleCvRzHrAG4uCZgAiZgAgNNoN6fMHl27ZWQ
HKkFmoAJmIAJmMCIEajXFoqmBOsTI1blLo4JmIAJmMBQE+jBuNyDJIa6Cpx5EzABEzABEzABb3Bw
GzABEzABEzABEzABEzABEzABEzABEyhFwLESSuHzwyZgAiZgAiZgAiZgAiZgAiZgAiYwbgRsShi3
Gnd5TcAETMAETMAETMAETMAETMAETKAUAZsSSuHzwyZgAiZgAiZgAiZgAiZgAiZgAiYwbgRsShi3
Gnd5TcAETMAETMAETMAETMAETMAETKAUAZsSSuHzwyZgAiZgAiZgAiZgAiZgAiZgAiYwbgRsShi3
Gnd5TcAETMAETMAETMAETMAETMAETKAUAZsSSuHzwyZgAiZgAiZgAiZgAiZgAiZgAiYwbgRsShi3
Gnd5TcAETMAETMAETMAETMAETMAETKAUAZsSSuHzwyZgAiZgAiZgAiZgAiZgAmUI7Fwzq/JZs7OM
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

--_007_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_--

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_
Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;
	name="Performance Comparison.xlsx"
Content-Description: Performance Comparison.xlsx
Content-Disposition: attachment; filename="Performance Comparison.xlsx";
	size=58533; creation-date="Tue, 18 Jun 2013 12:04:20 GMT";
	modification-date="Wed, 10 Jul 2013 08:23:50 GMT"
Content-Transfer-Encoding: base64

UEsDBBQABgAIAAAAIQA65cwN7gEAAOEOAAATAAgCW0NvbnRlbnRfVHlwZXNdLnhtbCCiBAIooAAC
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADM
l91O4zAQhe+ReIfIt6hxw/K3qCkX7O7lLhLwACaeNlYT27IHaN+eiRsqhAqVm2jTmyRt7POdcZwT
zeRmWVfJCzivjM5Zlo5ZArowUul5zh4f/oyuWOJRaCkqoyFnK/DsZnp8NHlYWfAJzdY+ZyWivebc
FyXUwqfGgqY7M+NqgfTTzbkVxULMgZ+Oxxe8MBpB4wgbDTad/IKZeK4w+b2kv9dOnpRmye16XIPK
mbC2UoVAMspftPwEGZnZTBUgTfFck3TqrQMhfQmAdZVap4jo7gGRCvOMb2U6qHwctK0qpZnBmC+V
9SdU+heE5s7XVbXz/tHjcEpCcicc/hU11c6XFX81bvFkzCL9XiR2acISpbVQ+t33N/ww2PNwyno2
0tQXhCN9nB6Ijx8H4uPsQHycD+QDKYOAh2P3LRpkdmxIj6sKfM/VrkV3kUvhQN4jpdu8dwMftXf4
kE68NhZ4e9F93VuhHdyCPKLn4dQbkz4XQTCC3T2C2nr3YHePnf3Z3aMmjt2O3uyz3tY94ll3j7W4
mj/u8YvOIbM/+3JA9tWA7J8DsrPxkPAhEzXr7dXeI1KzITM1+6+hSv3SnTOWvqHGQfxme+9/mtkj
S0LgUMGmA9rWSWyI1M/FAz91edA0jBLkFjYPDer0DQAA//8DAFBLAwQUAAYACAAAACEAtVUwI/UA
AABMAgAACwAIAl9yZWxzLy5yZWxzIKIEAiigAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIySz07DMAzG70i8Q+T76m5ICKGlu0xIuyFUHsAk
7h+1jaMkQPf2hAOCSmPb0fbnzz9b3u7maVQfHGIvTsO6KEGxM2J712p4rZ9WD6BiImdpFMcajhxh
V93ebF94pJSbYtf7qLKLixq6lPwjYjQdTxQL8exypZEwUcphaNGTGahl3JTlPYa/HlAtPNXBaggH
eweqPvo8+bK3NE1veC/mfWKXToxAnhM7y3blQ2YLqc/bqJpCy0mDFfOc0xHJ+yJjA54m2lxP9P+2
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
GVBZBgAAmxMAABQAAAAAAAAAAAAAAAAAQ0EAAHhsL2NoYXJ0cy9jaGFydDkueG1sUEsBAi0AFAAG
AAgAAAAhAMdlHwmbBQAAKxsAABgAAAAAAAAAAAAAAAAAzkcAAHhsL3dvcmtzaGVldHMvc2hlZXQz
LnhtbFBLAQItABQABgAIAAAAIQDlUx+Ftg0AAHo6AAAYAAAAAAAAAAAAAAAAAJ9NAAB4bC93b3Jr
c2hlZXRzL3NoZWV0Mi54bWxQSwECLQAUAAYACAAAACEAO20yS8EAAABCAQAAIwAAAAAAAAAAAAAA
AACLWwAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDIueG1sLnJlbHNQSwECLQAUAAYACAAAACEA
KqgjF/wAAADzBQAAIwAAAAAAAAAAAAAAAACNXAAAeGwvZHJhd2luZ3MvX3JlbHMvZHJhd2luZzIu
eG1sLnJlbHNQSwECLQAUAAYACAAAACEAHaUdpdMAAAC9AgAAIwAAAAAAAAAAAAAAAADKXQAAeGwv
ZHJhd2luZ3MvX3JlbHMvZHJhd2luZzEueG1sLnJlbHNQSwECLQAUAAYACAAAACEAPQa0ZL0AAAAr
AQAAIwAAAAAAAAAAAAAAAADeXgAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDUueG1sLnJlbHNQ
SwECLQAUAAYACAAAACEAE8QsE8IAAABCAQAAIwAAAAAAAAAAAAAAAADcXwAAeGwvd29ya3NoZWV0
cy9fcmVscy9zaGVldDQueG1sLnJlbHNQSwECLQAUAAYACAAAACEAFa+qPL0AAAArAQAAIwAAAAAA
AAAAAAAAAADfYAAAeGwvd29ya3NoZWV0cy9fcmVscy9zaGVldDMueG1sLnJlbHNQSwECLQAUAAYA
CAAAACEAjgHsyfQLAADlMQAAGAAAAAAAAAAAAAAAAADdYQAAeGwvd29ya3NoZWV0cy9zaGVldDEu
eG1sUEsBAi0AFAAGAAgAAAAhACr9a/QzBgAAchMAABQAAAAAAAAAAAAAAAAAB24AAHhsL2NoYXJ0
cy9jaGFydDgueG1sUEsBAi0AFAAGAAgAAAAhADk/h8BqBgAAjxMAABQAAAAAAAAAAAAAAAAAbHQA
AHhsL2NoYXJ0cy9jaGFydDYueG1sUEsBAi0AFAAGAAgAAAAhAFloLRG1BwAABxsAABQAAAAAAAAA
AAAAAAAACHsAAHhsL2NoYXJ0cy9jaGFydDEueG1sUEsBAi0AFAAGAAgAAAAhAFKspoG8AgAATA4A
ABgAAAAAAAAAAAAAAAAA74IAAHhsL2RyYXdpbmdzL2RyYXdpbmcxLnhtbFBLAQItABQABgAIAAAA
IQCG+RtFKgcAAAkXAAAUAAAAAAAAAAAAAAAAAOGFAAB4bC9zaGFyZWRTdHJpbmdzLnhtbFBLAQIt
ABQABgAIAAAAIQBpDJSM+AYAAABAAAANAAAAAAAAAAAAAAAAAD2NAAB4bC9zdHlsZXMueG1sUEsB
Ai0AFAAGAAgAAAAhAPtipW2UBgAApxsAABMAAAAAAAAAAAAAAAAAYJQAAHhsL3RoZW1lL3RoZW1l
MS54bWxQSwECLQAUAAYACAAAACEA3zkMJI4BAADCAgAAGAAAAAAAAAAAAAAAAAAlmwAAeGwvd29y
a3NoZWV0cy9zaGVldDUueG1sUEsBAi0AFAAGAAgAAAAhAJQZE9kgBgAAxRIAABQAAAAAAAAAAAAA
AAAA6ZwAAHhsL2NoYXJ0cy9jaGFydDcueG1sUEsBAi0AFAAGAAgAAAAhAJGj8vPjBwAArxsAABQA
AAAAAAAAAAAAAAAAO6MAAHhsL2NoYXJ0cy9jaGFydDIueG1sUEsBAi0AFAAGAAgAAAAhAH5vGBDp
BwAA1ycAABQAAAAAAAAAAAAAAAAAUKsAAHhsL2NoYXJ0cy9jaGFydDMueG1sUEsBAi0AFAAGAAgA
AAAhAN6Nl+sLBgAA5BIAABQAAAAAAAAAAAAAAAAAa7MAAHhsL2NoYXJ0cy9jaGFydDUueG1sUEsB
Ai0AFAAGAAgAAAAhAFaUTk6pCAAAOh0AABQAAAAAAAAAAAAAAAAAqLkAAHhsL2NoYXJ0cy9jaGFy
dDQueG1sUEsBAi0AFAAGAAgAAAAhAH8Xh5G1AwAAbyEAABgAAAAAAAAAAAAAAAAAg8IAAHhsL2Ry
YXdpbmdzL2RyYXdpbmcyLnhtbFBLAQItABQABgAIAAAAIQBuRUGmUwEAAH0CAAARAAAAAAAAAAAA
AAAAAG7GAABkb2NQcm9wcy9jb3JlLnhtbFBLAQItABQABgAIAAAAIQDB51HasAEAAKcDAAAQAAAA
AAAAAAAAAAAAAPjIAABkb2NQcm9wcy9hcHAueG1sUEsBAi0AFAAGAAgAAAAhACU/VPg0BwAAMB8A
ACcAAAAAAAAAAAAAAAAA3ssAAHhsL3ByaW50ZXJTZXR0aW5ncy9wcmludGVyU2V0dGluZ3MxLmJp
blBLAQItABQABgAIAAAAIQCqSnvfngYAABAfAAAnAAAAAAAAAAAAAAAAAFfTAAB4bC9wcmludGVy
U2V0dGluZ3MvcHJpbnRlclNldHRpbmdzMi5iaW5QSwUGAAAAACYAJgBVCgAAOtoAAAAA

--_008_1FFB62CE8AEB0D4298B51122D8903E9619F10997IRSMSX104gercor_--
